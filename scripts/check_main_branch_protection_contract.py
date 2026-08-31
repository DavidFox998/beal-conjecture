#!/usr/bin/env python3
"""Validate the declared merge protection and, optionally, a live API response."""

from __future__ import annotations

import argparse
import json
from pathlib import Path
import sys
from typing import Any


CONTRACT_PATH = Path(__file__).resolve().parents[1] / ".github" / "branch-protection.json"
EXPECTED_CONTEXT = "Clean lake build — Siegel.SiegelZeroFreeElementary"


def load_json(path: Path, label: str) -> dict[str, Any] | None:
    try:
        value = json.loads(path.read_text(encoding="utf-8"))
    except (OSError, json.JSONDecodeError) as error:
        print(f"FAIL: cannot read {label}: {error}", file=sys.stderr)
        return None
    if not isinstance(value, dict):
        print(f"FAIL: {label} must contain a JSON object", file=sys.stderr)
        return None
    return value


def main() -> int:
    parser = argparse.ArgumentParser()
    parser.add_argument(
        "--live-json",
        type=Path,
        help="GitHub branch-protection API response to compare with the contract",
    )
    args = parser.parse_args()

    contract = load_json(CONTRACT_PATH, "branch-protection contract")
    if contract is None:
        return 1

    errors: list[str] = []
    if contract.get("repository") != "DavidFox998/brothers-desert-proof":
        errors.append("repository must be DavidFox998/brothers-desert-proof")
    if contract.get("branch") != "main":
        errors.append("branch must be main")

    protection = contract.get("protection")
    if not isinstance(protection, dict):
        errors.append("protection must be an object")
        protection = {}

    if protection.get("enforce_admins") is not True:
        errors.append("enforce_admins must be true")

    checks = protection.get("required_status_checks")
    if not isinstance(checks, dict):
        errors.append("required_status_checks must be an object")
    else:
        if checks.get("strict") is not True:
            errors.append("required_status_checks.strict must be true")
        if checks.get("contexts") != [EXPECTED_CONTEXT]:
            errors.append(
                "required_status_checks.contexts must contain only "
                f"{EXPECTED_CONTEXT!r}"
            )

    if protection.get("required_pull_request_reviews") is not None:
        errors.append("required_pull_request_reviews must remain null")
    if protection.get("restrictions") is not None:
        errors.append("restrictions must remain null")

    if args.live_json is not None:
        live = load_json(args.live_json, "live branch-protection response")
        if live is None:
            return 1

        live_checks = live.get("required_status_checks")
        live_contexts = (
            live_checks.get("contexts") if isinstance(live_checks, dict) else None
        )
        live_strict = (
            live_checks.get("strict") if isinstance(live_checks, dict) else None
        )
        live_admins = live.get("enforce_admins")
        live_admins_enabled = (
            live_admins.get("enabled") if isinstance(live_admins, dict) else live_admins
        )

        if live_contexts != [EXPECTED_CONTEXT]:
            errors.append("live required contexts do not match the exact Lean job")
        if live_strict is not True:
            errors.append("live strict status checks must be enabled")
        if live_admins_enabled is not True:
            errors.append("live admin enforcement must be enabled")
        if live.get("required_pull_request_reviews") is not None:
            errors.append("live pull-request reviews unexpectedly block merges")
        if live.get("restrictions") is not None:
            errors.append("live push restrictions unexpectedly block merges")

    if errors:
        print("FAIL: main branch protection contract is invalid:", file=sys.stderr)
        for error in errors:
            print(f"  - {error}", file=sys.stderr)
        return 1

    scope = "live main" if args.live_json is not None else "main contract"
    print(f"PASS: {scope} requires only {EXPECTED_CONTEXT}.")
    print("PASS: advisory workflows are not merge blockers.")
    return 0


if __name__ == "__main__":
    raise SystemExit(main())