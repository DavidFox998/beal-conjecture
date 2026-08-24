#!/usr/bin/env python3
"""
scripts/test_trend_report.py
────────────────────────────
Parse the JUnit XML reports produced by the current CI run, compare them
with recent comparable runs (fetched via the GitHub Actions API), and append
a Markdown trend table plus an optional decline warning to GITHUB_STEP_SUMMARY.

The script is deliberately defensive:
  • Missing XML files (e.g. live smoke tests that were skipped or never ran)
    are shown as "—" rather than causing an error.
  • If the GitHub API is unreachable or returns no history, only the current
    run's row is emitted — the report still renders cleanly.
  • requests is not a hard dependency of the project; an ImportError exits 0.

Usage (called automatically by the workflow — see pytest-brain.yml):
    python scripts/test_trend_report.py

Environment variables (all set automatically by GitHub Actions):
    GITHUB_STEP_SUMMARY   path to the job summary file
    GITHUB_TOKEN          Actions token (needs actions:read + contents:read)
    GITHUB_REPOSITORY     "owner/repo"
    GITHUB_RUN_ID         numeric ID of this run (excluded from history)
    GITHUB_REF_NAME       branch name used to restrict the history query
"""

import io
import os
import sys
import zipfile
import xml.etree.ElementTree as ET

try:
    import requests
except ImportError:
    print("requests not available; skipping trend report.", file=sys.stderr)
    sys.exit(0)


# ── JUnit XML parsing ────────────────────────────────────────────────────────


def parse_junit_file(path: str):
    """Return (total, passed, failed, skipped) from a JUnit XML file, or None."""
    try:
        tree = ET.parse(path)
    except Exception:
        return None
    return _parse_root(tree.getroot())


def parse_junit_bytes(data: bytes):
    """Return (total, passed, failed, skipped) parsed from raw XML bytes."""
    try:
        root = ET.fromstring(data.decode("utf-8", errors="replace"))
    except Exception:
        return None
    return _parse_root(root)


def _parse_root(root):
    """Walk a <testsuite> or <testsuites> element and aggregate counters."""
    suites = root.findall("testsuite") if root.tag == "testsuites" else [root]
    total = failures = errors = skipped = 0
    for suite in suites:
        total += int(suite.get("tests", 0))
        failures += int(suite.get("failures", 0))
        errors += int(suite.get("errors", 0))
        skipped += int(suite.get("skipped", 0))
    passed = total - failures - errors - skipped
    return total, passed, failures + errors, skipped


def pass_rate(passed, total):
    """Return percentage as a float, or None when total is 0."""
    if total == 0:
        return None
    return 100.0 * passed / total


def fmt_row(stats):
    """Return (passed_str, failed_str, skipped_str, rate_str) for a table row."""
    if stats is None:
        return "—", "—", "—", "—"
    total, passed, failed, skipped = stats
    rate = pass_rate(passed, total)
    rate_str = f"{rate:.0f}%" if rate is not None else "—"
    return str(passed), str(failed), str(skipped), rate_str


# ── GitHub Actions API helpers ───────────────────────────────────────────────


def _gh_headers(token):
    return {
        "Authorization": f"Bearer {token}",
        "Accept": "application/vnd.github+json",
        "X-GitHub-Api-Version": "2022-11-28",
    }


def gh_get(token, url, params=None):
    try:
        resp = requests.get(
            url,
            headers=_gh_headers(token),
            params=params,
            timeout=30,
        )
        resp.raise_for_status()
        return resp.json()
    except Exception:
        return None


def get_recent_runs(token, repo, workflow_file, current_run_id, branch, limit=5):
    """Return up to *limit* recent completed runs, excluding the current one."""
    url = f"https://api.github.com/repos/{repo}/actions/workflows/{workflow_file}/runs"
    params = {"per_page": limit + 5, "status": "completed"}
    if branch:
        params["branch"] = branch
    data = gh_get(token, url, params)
    if not data:
        return []
    runs = [
        r
        for r in data.get("workflow_runs", [])
        if str(r.get("id")) != str(current_run_id)
    ]
    return runs[:limit]


def download_junit_artifact(token, repo, run_id):
    """
    Download the *junit-xml-reports* artifact for *run_id*.
    Returns (unit_stats, live_stats); either can be None when not found.
    """
    url = f"https://api.github.com/repos/{repo}/actions/runs/{run_id}/artifacts"
    data = gh_get(token, url)
    if not data:
        return None, None

    artifact = next(
        (a for a in data.get("artifacts", []) if a.get("name") == "junit-xml-reports"),
        None,
    )
    if not artifact:
        return None, None

    try:
        resp = requests.get(
            artifact["archive_download_url"],
            headers=_gh_headers(token),
            timeout=60,
            allow_redirects=True,
        )
        resp.raise_for_status()
        z = zipfile.ZipFile(io.BytesIO(resp.content))
    except Exception:
        return None, None

    unit_stats = live_stats = None
    for name in z.namelist():
        try:
            stats = parse_junit_bytes(z.read(name))
        except Exception:
            stats = None
        if stats is not None:
            lower = name.lower()
            if "unit" in lower and unit_stats is None:
                unit_stats = stats
            elif "live" in lower and live_stats is None:
                live_stats = stats

    return unit_stats, live_stats


# ── Report generation ────────────────────────────────────────────────────────


def is_secrets_skip(stats):
    """Return True when all live tests were skipped due to missing secrets.

    When the ZEROBEACON_URL / ZEROBEACON_API_KEY secrets are absent every live
    test self-skips — yielding passed == 0 and failed == 0.  That is not a
    regression; exclude it from decline comparisons.
    """
    if stats is None:
        return False
    total, passed, failed, skipped = stats
    return total > 0 and passed == 0 and failed == 0


def build_report(cur_unit, cur_live, history):
    """
    Return a Markdown string containing the trend table and optional warning.

    Parameters
    ----------
    cur_unit, cur_live : (total, passed, failed, skipped) | None
        Stats from the current run's XML files.
    history : list of {"label": str, "unit": stats|None, "live": stats|None}
        Recent historical runs, newest first.
    """
    lines = []
    lines.append("")
    lines.append("## 📊 Test Pass-Rate Trend")
    lines.append("")

    # Table header
    lines.append("| Run | Suite | ✅ Passed | ❌ Failed | ⏭ Skipped | Pass rate |")
    lines.append("|-----|-------|----------:|----------:|----------:|----------:|")

    def row(label, suite, stats):
        p, f, s, r = fmt_row(stats)
        lines.append(f"| {label} | {suite} | {p} | {f} | {s} | {r} |")

    row("**This run**", "Unit", cur_unit)
    row("**This run**", "Live smoke", cur_live)

    for h in history:
        row(h["label"], "Unit", h["unit"])
        row(h["label"], "Live smoke", h["live"])

    # ── Unit test decline warning ────────────────────────────────────────────
    unit_decline = False
    prev_unit_rate = cur_unit_rate = None

    if cur_unit is not None and history:
        prev = next((h["unit"] for h in history if h["unit"] is not None), None)
        if prev is not None:
            cur_unit_rate = pass_rate(cur_unit[1], cur_unit[0])
            prev_unit_rate = pass_rate(prev[1], prev[0])
            if cur_unit_rate is not None and prev_unit_rate is not None:
                unit_decline = cur_unit_rate < prev_unit_rate

    # ── Live smoke-test decline warning ─────────────────────────────────────
    # Runs where all tests were skipped (secrets absent) are excluded from both
    # the current-run check and the historical baseline search so that a
    # secrets-missing run never masquerades as a regression.
    live_decline = False
    prev_live_rate = cur_live_rate = None

    if cur_live is not None and not is_secrets_skip(cur_live) and history:
        prev_live = next(
            (
                h["live"]
                for h in history
                if h["live"] is not None and not is_secrets_skip(h["live"])
            ),
            None,
        )
        if prev_live is not None:
            cur_live_rate = pass_rate(cur_live[1], cur_live[0])
            prev_live_rate = pass_rate(prev_live[1], prev_live[0])
            if cur_live_rate is not None and prev_live_rate is not None:
                live_decline = cur_live_rate < prev_live_rate

    # ── Compose the warning / status block ──────────────────────────────────
    lines.append("")

    if unit_decline:
        lines.append(
            f"> ⚠️ **Unit pass rate declined** — unit tests dropped from "
            f"{prev_unit_rate:.0f}% to {cur_unit_rate:.0f}% compared with the "
            "most recent recorded run. Please investigate before merging."
        )

    if live_decline:
        lines.append(
            f"> ⚠️ **Live smoke pass rate declined** — live smoke tests dropped "
            f"from {prev_live_rate:.0f}% to {cur_live_rate:.0f}% compared with "
            "the most recent recorded run. The deployed service may have regressed."
        )

    if not unit_decline and not live_decline:
        if cur_unit is not None:
            _, passed, failed, _ = cur_unit
            if failed == 0:
                lines.append(
                    "> ✅ Pass rate is stable — no unit test failures in this run."
                )
            else:
                lines.append(
                    f"> ℹ️ This run has {failed} unit test failure(s). "
                    "No prior run available for trend comparison."
                )

    lines.append("")
    return "\n".join(lines)


# ── Entry point ───────────────────────────────────────────────────────────────


def main():
    summary_path = os.environ.get("GITHUB_STEP_SUMMARY")
    token = os.environ.get("GITHUB_TOKEN", "")
    repo = os.environ.get("GITHUB_REPOSITORY", "")
    run_id = os.environ.get("GITHUB_RUN_ID", "")
    branch = os.environ.get("GITHUB_REF_NAME", "")

    # Parse current run's XML files (either may be absent — that is fine)
    cur_unit = parse_junit_file("test-results/unit.xml")
    cur_live = parse_junit_file("test-results/live.xml")

    # Fetch history via the GitHub API when credentials are available
    history = []
    if token and repo:
        recent = get_recent_runs(token, repo, "pytest-brain.yml", run_id, branch, limit=5)
        for run in recent:
            rid = run.get("id")
            created = run.get("created_at", "")[:10]  # YYYY-MM-DD
            u_stats, l_stats = download_junit_artifact(token, repo, rid)
            history.append({"label": created, "unit": u_stats, "live": l_stats})

    report = build_report(cur_unit, cur_live, history)

    if summary_path:
        with open(summary_path, "a", encoding="utf-8") as fh:
            fh.write(report)
    else:
        # Useful for local testing: just print to stdout
        print(report)


if __name__ == "__main__":
    main()
