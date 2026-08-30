#!/usr/bin/env python3
"""Validate Zenodo and citation metadata for the Opera Numerorum ensemble.

The audit intentionally reads the remote ``main`` branch rather than local
checkouts.  It is therefore safe to run from CI and catches metadata edits
that have already reached a public repository.

Usage:
    python3 scripts/check_opera_metadata.py [REPOS_MD_PATH]

The optional ``--raw-base-url`` and ``--expected-count`` arguments are useful
for deterministic local tests; normal runs should use their defaults.
"""

from __future__ import annotations

import argparse
import json
import re
import sys
import time
import urllib.error
import urllib.request
from dataclasses import dataclass
from typing import Any


OWNER = "DavidFox998"
BRANCH = "main"
EXPECTED_REPOSITORIES = 19
AFFILIATION = "Opera Numerorum"
RAW_BASE_URL = "https://raw.githubusercontent.com"
METADATA_FILES = (".zenodo.json", "CITATION.cff")

# Restrict extraction to markdown table rows.  REPOS.md also contains a
# documentation-only URL with the literal slug "<repo>" near its audit notes.
REPO_ROW_RE = re.compile(
    r"^\s*\|\s*\[[^\]]+\]\(https://github\.com/"
    r"(?P<owner>[A-Za-z0-9_.-]+)/(?P<repo>[A-Za-z0-9_.-]+)\)\s*\|"
)


@dataclass(frozen=True)
class Repository:
    owner: str
    name: str

    @property
    def url(self) -> str:
        return f"https://github.com/{self.owner}/{self.name}"


def parse_repositories(path: str, expected_count: int) -> tuple[list[Repository], list[str]]:
    """Extract repository rows and return structural errors separately."""

    errors: list[str] = []
    try:
        with open(path, encoding="utf-8") as repos_file:
            lines = repos_file
            repositories = []
            for line_number, line in enumerate(lines, start=1):
                match = REPO_ROW_RE.match(line)
                if not match:
                    continue
                row_owner = match.group("owner")
                row_repo = match.group("repo")
                if row_owner != OWNER:
                    errors.append(
                        f"{path}:{line_number}: unexpected repository owner "
                        f"{row_owner!r} (expected {OWNER!r})"
                    )
                    continue
                repositories.append(Repository(row_owner, row_repo))
    except OSError as exc:
        return [], [f"could not read {path}: {exc}"]

    if len(repositories) != expected_count:
        errors.append(
            f"{path}: found {len(repositories)} repository rows; "
            f"expected {expected_count}"
        )

    seen: set[str] = set()
    for repository in repositories:
        if repository.name in seen:
            errors.append(f"{path}: duplicate repository row for {repository.name}")
        seen.add(repository.name)

    return repositories, errors


def fetch_remote(
    repository: Repository,
    filename: str,
    *,
    branch: str,
    raw_base_url: str,
    retries: int = 3,
) -> tuple[str | None, str | None]:
    """Fetch one file from a repository's remote branch.

    Returns ``(body, None)`` on success and ``(None, human-readable error)``
    on failure.  404s are not retried because they are a useful metadata
    failure, not a transient network error.
    """

    url = (
        f"{raw_base_url.rstrip('/')}/{repository.owner}/{repository.name}/"
        f"{branch}/{filename}"
    )
    headers = {"Accept": "text/plain", "User-Agent": "opera-numerorum-metadata-audit"}
    request = urllib.request.Request(url, headers=headers)

    last_error = "unknown fetch error"
    for attempt in range(1, retries + 1):
        try:
            with urllib.request.urlopen(request, timeout=30) as response:
                return response.read().decode("utf-8"), None
        except urllib.error.HTTPError as exc:
            if exc.code == 404:
                return None, f"missing from remote {branch} branch (HTTP 404)"
            last_error = f"HTTP {exc.code}"
        except (urllib.error.URLError, TimeoutError) as exc:
            last_error = str(exc.reason if isinstance(exc, urllib.error.URLError) else exc)

        if attempt < retries:
            time.sleep(1)

    return None, f"could not fetch remote {branch} branch after {retries} attempts ({last_error})"


def is_nonempty_string(value: Any) -> bool:
    return isinstance(value, str) and bool(value.strip())


def normalized(value: str) -> str:
    return re.sub(r"[-_]+", " ", value.casefold()).strip()


def has_required_keywords(keywords: Any) -> list[str]:
    """Return missing keyword requirements, accepting common punctuation variants."""

    if not isinstance(keywords, list) or not all(isinstance(item, str) for item in keywords):
        return ["keywords must be a list of strings"]

    values = {normalized(item) for item in keywords}
    missing: list[str] = []
    if not any(value == "lean 4" or value.startswith("lean ") for value in values):
        missing.append("a Lean keyword (for example, 'Lean 4')")
    if "formal verification" not in values:
        missing.append("the 'formal verification' keyword")
    return missing


def has_zenodo_repository_link(document: dict[str, Any], expected_url: str) -> bool:
    related_identifiers = document.get("related_identifiers")
    if not isinstance(related_identifiers, list):
        return False
    return any(
        isinstance(item, dict)
        and isinstance(item.get("identifier"), str)
        and item["identifier"].rstrip("/") == expected_url
        for item in related_identifiers
    )


def validate_zenodo(body: str, expected_url: str) -> list[str]:
    try:
        document = json.loads(body)
    except json.JSONDecodeError as exc:
        return [f"invalid JSON ({exc.msg})"]

    if not isinstance(document, dict):
        return ["top-level value must be a JSON object"]

    errors: list[str] = []
    if not is_nonempty_string(document.get("title")):
        errors.append("title is empty or missing")
    if document.get("license") != "MIT":
        errors.append("license must be MIT")

    creators = document.get("creators")
    if not isinstance(creators, list) or not any(
        isinstance(creator, dict) and creator.get("affiliation") == AFFILIATION
        for creator in creators
    ):
        errors.append(f"no author has affiliation {AFFILIATION!r}")

    communities = document.get("communities")
    if not isinstance(communities, list) or not any(
        isinstance(community, dict)
        and str(community.get("identifier", "")).casefold() == "lean"
        for community in communities
    ):
        errors.append("Lean community is missing")

    if not has_zenodo_repository_link(document, expected_url):
        errors.append(f"repository link must point to {expected_url}")

    errors.extend(
        f"missing {keyword_error}" for keyword_error in has_required_keywords(document.get("keywords"))
    )
    return errors


def parse_cff_scalar(value: str) -> str:
    value = value.strip()
    if len(value) >= 2 and value[0] == value[-1] and value[0] in "\"'":
        return value[1:-1]
    return value


def cff_keywords(lines: list[str]) -> list[str] | None:
    for index, line in enumerate(lines):
        if re.match(r"^\s*keywords:\s*$", line):
            keywords: list[str] = []
            for following in lines[index + 1 :]:
                item = re.match(r"^\s*-\s*(.+?)\s*$", following)
                if item:
                    keywords.append(parse_cff_scalar(item.group(1)))
                    continue
                if following.strip() and not following.startswith((" ", "\t")):
                    break
            return keywords
    return None


def validate_citation(body: str, expected_url: str) -> list[str]:
    lines = body.splitlines()
    errors: list[str] = []

    title_match = next((re.match(r"^\s*title:\s*(.*)$", line) for line in lines if re.match(r"^\s*title:\s*", line)), None)
    title = parse_cff_scalar(title_match.group(1)) if title_match else ""
    if not is_nonempty_string(title):
        errors.append("title is empty or missing")

    license_match = next(
        (re.match(r"^\s*license:\s*(.*)$", line) for line in lines if re.match(r"^\s*license:\s*", line)),
        None,
    )
    license_value = parse_cff_scalar(license_match.group(1)) if license_match else ""
    if license_value != "MIT":
        errors.append("license must be MIT")

    if not any(
        re.match(r"^\s*affiliation:\s*(.*)$", line)
        and parse_cff_scalar(re.match(r"^\s*affiliation:\s*(.*)$", line).group(1)) == AFFILIATION
        for line in lines
    ):
        errors.append(f"no author has affiliation {AFFILIATION!r}")

    repository_match = next(
        (
            re.match(r"^\s*repository-code:\s*(.*)$", line)
            for line in lines
            if re.match(r"^\s*repository-code:\s*", line)
        ),
        None,
    )
    repository_url = parse_cff_scalar(repository_match.group(1)) if repository_match else ""
    if repository_url.rstrip("/") != expected_url:
        errors.append(f"repository-code must point to {expected_url}")

    errors.extend(
        f"missing {keyword_error}" for keyword_error in has_required_keywords(cff_keywords(lines))
    )
    return errors


def validate_repository(
    repository: Repository,
    *,
    branch: str,
    raw_base_url: str,
) -> list[str]:
    errors: list[str] = []
    validators = {
        ".zenodo.json": validate_zenodo,
        "CITATION.cff": validate_citation,
    }
    for filename in METADATA_FILES:
        body, fetch_error = fetch_remote(
            repository,
            filename,
            branch=branch,
            raw_base_url=raw_base_url,
        )
        if fetch_error:
            errors.append(f"{filename}: {fetch_error}")
            continue
        errors.extend(
            f"{filename}: {error}"
            for error in validators[filename](body or "", repository.url)
        )
    return errors


def main(argv: list[str] | None = None) -> int:
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("repos_md", nargs="?", default="REPOS.md", help="repository map to read")
    parser.add_argument("--branch", default=BRANCH, help=f"remote branch (default: {BRANCH})")
    parser.add_argument(
        "--raw-base-url",
        default=RAW_BASE_URL,
        help="raw content host (default: raw.githubusercontent.com)",
    )
    parser.add_argument(
        "--expected-count",
        type=int,
        default=EXPECTED_REPOSITORIES,
        help=f"expected repository rows (default: {EXPECTED_REPOSITORIES})",
    )
    args = parser.parse_args(argv)

    print("Opera Numerorum — Archive Metadata Audit")
    print(f"Repository map : {args.repos_md}")
    print(f"Remote branch  : {args.branch}")
    print(f"Required files : {', '.join(METADATA_FILES)}")
    print()

    repositories, structure_errors = parse_repositories(args.repos_md, args.expected_count)
    for error in structure_errors:
        print(f"FAIL map — {error}")
    if not repositories:
        print("FAIL: no repository rows found; cannot audit archive metadata")
        return 1

    print(f"Repositories found: {len(repositories)}")
    failures = 0
    for repository in repositories:
        errors = validate_repository(
            repository,
            branch=args.branch,
            raw_base_url=args.raw_base_url,
        )
        if errors:
            failures += 1
            print(f"FAIL {repository.name}")
            for error in errors:
                print(f"  - {error}")
        else:
            print(f"PASS {repository.name}")

    print()
    print(f"Results: {len(repositories) - failures} passed, {failures} failed")
    if structure_errors:
        print(f"Map validation: {len(structure_errors)} failure(s)")
    if failures or structure_errors:
        print("Archive metadata audit failed; no repositories were modified.")
        return 1
    print("All repository archive metadata checks passed.")
    return 0


if __name__ == "__main__":
    sys.exit(main())