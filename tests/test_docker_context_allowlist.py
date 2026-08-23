"""
Test that the Docker build-context top-level allowlist check (the embedded
Python snippet in .github/workflows/docker-context-size.yml) exits non-zero
and names the offending path when an unexpected directory appears in the build
context.

How the check works
-------------------
.dockerignore starts with ``*`` (deny everything), then re-includes specific
paths with ``!``-prefixed lines.  This means a *new* top-level directory only
reaches the Docker daemon if a developer explicitly adds a ``!dir/`` line.
The allowlist step then catches the case where the re-include was added to
.dockerignore but the ALLOWLIST set in the workflow was not updated.

The Python logic below is reproduced verbatim from docker-context-size.yml.
If that snippet ever changes, keep this copy in sync.
"""

import fnmatch
import os
import textwrap
from pathlib import Path

import pytest


# ---------------------------------------------------------------------------
# Allowlist logic extracted verbatim from docker-context-size.yml
# ---------------------------------------------------------------------------

ALLOWLIST = {
    "Dockerfile",
    ".dockerignore",
    "core",
    "routers",
    "requirements.txt",
    "zerobeacon_mf_1000_main.py",
}

ALWAYS_SENT = {"Dockerfile", ".dockerignore"}


def _parse_dockerignore(dockerignore_text: str):
    """Return (excludes, includes) lists parsed from .dockerignore content."""
    excludes = []
    includes = []
    for raw in dockerignore_text.splitlines():
        line = raw.strip()
        if not line or line.startswith("#"):
            continue
        if line.startswith("!"):
            includes.append(line[1:].rstrip("/"))
        else:
            excludes.append(line.rstrip("/"))
    return excludes, includes


def _in_build_context(name: str, excludes, includes) -> bool:
    """Return True if Docker would include this top-level entry."""
    if name in ALWAYS_SENT:
        return True
    excluded = any(fnmatch.fnmatch(name, pat) for pat in excludes)
    if excluded:
        return any(fnmatch.fnmatch(name, pat) for pat in includes)
    return True  # no exclude matched → in context


def run_allowlist_check(root: Path, dockerignore_text: str):
    """
    Run the allowlist check against *root* as if it were the repo root.

    Returns (exit_code, output_lines).
    """
    excludes, includes = _parse_dockerignore(dockerignore_text)

    top_level = sorted(e for e in os.listdir(root) if e not in (".", ".."))
    in_context = [n for n in top_level if _in_build_context(n, excludes, includes)]
    unexpected = [n for n in in_context if n not in ALLOWLIST]

    lines = []
    if unexpected:
        noun = "entry" if len(unexpected) == 1 else "entries"
        lines.append(
            f"FAIL: {len(unexpected)} unexpected top-level {noun} "
            f"would be sent to the Docker build context:"
        )
        for name in sorted(unexpected):
            lines.append(f"  {name}")
        return 1, lines
    else:
        lines.append("PASS: Docker build context top-level entries match the allowlist.")
        for name in sorted(in_context):
            lines.append(f"  {name}")
        return 0, lines


# ---------------------------------------------------------------------------
# Shared fixtures
# ---------------------------------------------------------------------------

# The real .dockerignore: deny everything, then re-include app source.
BASE_DOCKERIGNORE = textwrap.dedent("""\
    # Deny everything by default
    *

    # Application source re-included
    !core/
    !routers/
    !requirements.txt
    !zerobeacon_mf_1000_main.py
""")


def _make_allowlisted_tree(root: Path, dockerignore_text: str = BASE_DOCKERIGNORE):
    """Populate *root* with only the files/dirs that belong in the allowlist."""
    (root / "Dockerfile").write_text("FROM python:3.11\n")
    (root / ".dockerignore").write_text(dockerignore_text)
    (root / "core").mkdir()
    (root / "routers").mkdir()
    (root / "requirements.txt").write_text("fastapi\n")
    (root / "zerobeacon_mf_1000_main.py").write_text("# main\n")


# ---------------------------------------------------------------------------
# Tests: allowlist catches an unexpected re-included entry
# ---------------------------------------------------------------------------


class TestAllowlistCheckCatchesUnexpectedReinclude:
    """
    The real risk: a developer adds ``!newdir/`` to .dockerignore (so Docker
    sees it) but forgets to add ``newdir`` to the ALLOWLIST in the workflow.
    The check must exit 1 and name the offending path.
    """

    def _dockerignore_with_extra(self, extra: str) -> str:
        """Return a .dockerignore that re-includes *extra* in addition to the base set."""
        return BASE_DOCKERIGNORE + f"!{extra}/\n"

    def test_exits_nonzero_when_unexpected_dir_is_reincluded(self, tmp_path):
        dockerignore = self._dockerignore_with_extra("bloat_dir")
        _make_allowlisted_tree(tmp_path, dockerignore)
        (tmp_path / "bloat_dir").mkdir()

        exit_code, _ = run_allowlist_check(tmp_path, dockerignore)
        assert exit_code == 1, (
            "Expected non-zero exit when an unlisted directory is re-included in "
            ".dockerignore (i.e. will be sent to the Docker daemon)"
        )

    def test_output_names_offending_directory(self, tmp_path):
        dockerignore = self._dockerignore_with_extra("bloat_dir")
        _make_allowlisted_tree(tmp_path, dockerignore)
        (tmp_path / "bloat_dir").mkdir()

        _, lines = run_allowlist_check(tmp_path, dockerignore)
        combined = "\n".join(lines)
        assert "bloat_dir" in combined, (
            f"Expected offending directory name in output; got:\n{combined}"
        )

    def test_output_contains_fail_marker(self, tmp_path):
        dockerignore = self._dockerignore_with_extra("sneaky_module")
        _make_allowlisted_tree(tmp_path, dockerignore)
        (tmp_path / "sneaky_module").mkdir()

        _, lines = run_allowlist_check(tmp_path, dockerignore)
        assert any("FAIL" in line for line in lines), (
            "Expected 'FAIL' in output when unexpected entry is present"
        )

    def test_multiple_unexpected_dirs_all_named(self, tmp_path):
        dockerignore = (
            BASE_DOCKERIGNORE + "!alpha_bloat/\n" + "!beta_bloat/\n"
        )
        _make_allowlisted_tree(tmp_path, dockerignore)
        (tmp_path / "alpha_bloat").mkdir()
        (tmp_path / "beta_bloat").mkdir()

        exit_code, lines = run_allowlist_check(tmp_path, dockerignore)
        combined = "\n".join(lines)
        assert exit_code == 1
        assert "alpha_bloat" in combined
        assert "beta_bloat" in combined

    def test_unexpected_file_reincluded_also_caught(self, tmp_path):
        """A stray top-level file explicitly re-included in .dockerignore must
        also be flagged — not just directories."""
        dockerignore = BASE_DOCKERIGNORE + "!secret_config.env\n"
        _make_allowlisted_tree(tmp_path, dockerignore)
        (tmp_path / "secret_config.env").write_text("SECRET=oops\n")

        exit_code, lines = run_allowlist_check(tmp_path, dockerignore)
        combined = "\n".join(lines)
        assert exit_code == 1
        assert "secret_config.env" in combined


# ---------------------------------------------------------------------------
# Tests: entries excluded by * (not re-included) are NOT flagged
# ---------------------------------------------------------------------------


class TestAllowlistCheckDoesNotFlagExcludedEntries:
    """
    A new directory that is NOT re-included in .dockerignore never reaches the
    Docker daemon, so the allowlist should not raise an alarm for it.
    """

    def test_new_dir_without_reinclude_is_not_flagged(self, tmp_path):
        """bloat_dir exists on disk but .dockerignore does not re-include it,
        so Docker never sees it — the allowlist check must pass."""
        _make_allowlisted_tree(tmp_path)
        (tmp_path / "bloat_dir").mkdir()  # no !bloat_dir/ in .dockerignore

        exit_code, _ = run_allowlist_check(tmp_path, BASE_DOCKERIGNORE)
        assert exit_code == 0, (
            "A directory excluded by .dockerignore should not trigger an allowlist failure"
        )

    def test_dotgit_and_pycache_not_flagged(self, tmp_path):
        _make_allowlisted_tree(tmp_path)
        (tmp_path / ".git").mkdir()
        (tmp_path / "__pycache__").mkdir()

        exit_code, _ = run_allowlist_check(tmp_path, BASE_DOCKERIGNORE)
        assert exit_code == 0


# ---------------------------------------------------------------------------
# Tests: clean allowlisted tree passes
# ---------------------------------------------------------------------------


class TestAllowlistCheckPassesCleanTree:
    """The check must exit 0 when only allowlisted entries are present."""

    def test_exits_zero_with_only_allowlisted_entries(self, tmp_path):
        _make_allowlisted_tree(tmp_path)

        exit_code, lines = run_allowlist_check(tmp_path, BASE_DOCKERIGNORE)
        combined = "\n".join(lines)
        assert exit_code == 0, (
            f"Expected zero exit for clean tree; got output:\n{combined}"
        )

    def test_output_contains_pass_marker(self, tmp_path):
        _make_allowlisted_tree(tmp_path)

        _, lines = run_allowlist_check(tmp_path, BASE_DOCKERIGNORE)
        assert any("PASS" in line for line in lines)
