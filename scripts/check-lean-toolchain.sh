#!/usr/bin/env bash
# check-lean-toolchain.sh — ensure Lean and Mathlib use the same release tag
#
# Usage:
#   bash scripts/check-lean-toolchain.sh [lean-toolchain] [lake-manifest.json]
#
# The optional paths make the check straightforward to exercise with fixtures.

set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
REPO_ROOT="$(cd "$SCRIPT_DIR/.." && pwd)"
TOOLCHAIN_FILE="${1:-$REPO_ROOT/lean-toolchain}"
MANIFEST_FILE="${2:-$REPO_ROOT/lake-manifest.json}"

python3 - "$TOOLCHAIN_FILE" "$MANIFEST_FILE" <<'PY'
import json
import sys
from pathlib import Path

toolchain_path = Path(sys.argv[1])
manifest_path = Path(sys.argv[2])


def fail(message: str) -> "NoReturn":
    print(f"FAIL: {message}", file=sys.stderr)
    raise SystemExit(1)


if not toolchain_path.is_file():
    fail(f"missing Lean toolchain file: {toolchain_path}")
if not manifest_path.is_file():
    fail(f"missing Lake manifest: {manifest_path}")

toolchain = toolchain_path.read_text(encoding="utf-8").strip()
if not toolchain or ":" not in toolchain:
    fail(
        f"{toolchain_path} must contain a toolchain name and tag "
        "(for example, leanprover/lean4:v4.15.0)"
    )

lean_tag = toolchain.rsplit(":", 1)[1]
if not lean_tag:
    fail(f"{toolchain_path} has an empty toolchain tag")

try:
    manifest = json.loads(manifest_path.read_text(encoding="utf-8"))
except json.JSONDecodeError as error:
    fail(f"{manifest_path} is not valid JSON: {error}")

packages = manifest.get("packages")
if not isinstance(packages, list):
    fail(f"{manifest_path} has no packages list")

mathlib_packages = [
    package
    for package in packages
    if isinstance(package, dict) and package.get("name") == "mathlib"
]
if len(mathlib_packages) != 1:
    fail(f"{manifest_path} must contain exactly one mathlib package entry")

mathlib_tag = mathlib_packages[0].get("inputRev")
if not isinstance(mathlib_tag, str) or not mathlib_tag:
    fail(f"{manifest_path} mathlib entry has no inputRev tag")

if lean_tag != mathlib_tag:
    fail(f"lean-toolchain says {lean_tag} but lake-manifest pins {mathlib_tag}")

print(f"PASS: Lean toolchain and Mathlib both pin {lean_tag}")
PY