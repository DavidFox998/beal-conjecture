#!/usr/bin/env bash
# check-lean-toolchain.sh — ensure Lean and Mathlib use the same release tag
#
# Usage:
#   bash scripts/check-lean-toolchain.sh [lean-toolchain] [lake-manifest.json] [lakefile.lean]
#
# The optional paths make the check straightforward to exercise with fixtures.

set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
REPO_ROOT="$(cd "$SCRIPT_DIR/.." && pwd)"
TOOLCHAIN_FILE="${1:-$REPO_ROOT/lean-toolchain}"
MANIFEST_FILE="${2:-$REPO_ROOT/lake-manifest.json}"
LAKEFILE_FILE="${3:-$REPO_ROOT/lakefile.lean}"

python3 - "$TOOLCHAIN_FILE" "$MANIFEST_FILE" "$LAKEFILE_FILE" <<'PY'
import json
import re
import sys
from pathlib import Path

toolchain_path = Path(sys.argv[1])
manifest_path = Path(sys.argv[2])
lakefile_path = Path(sys.argv[3])


def fail(message: str) -> "NoReturn":
    print(f"FAIL: {message}", file=sys.stderr)
    raise SystemExit(1)


if not toolchain_path.is_file():
    fail(f"missing Lean toolchain file: {toolchain_path}")
if not manifest_path.is_file():
    fail(f"missing Lake manifest: {manifest_path}")
if not lakefile_path.is_file():
    fail(f"missing Lake file: {lakefile_path}")

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

lakefile = lakefile_path.read_text(encoding="utf-8")
mathlib_revisions = re.findall(
    r"(?ms)^\s*require\s+mathlib\s+from\s+git\b.*?@\s*['\"]([^'\"]+)['\"]",
    lakefile,
)
if len(mathlib_revisions) != 1:
    fail(
        f"{lakefile_path} must contain exactly one Mathlib Git revision declaration "
        '(for example, require mathlib from git ... @ "v4.15.0")'
    )

declared_mathlib_revision = mathlib_revisions[0]
if declared_mathlib_revision != mathlib_tag:
    fail(
        f"lakefile declares Mathlib revision {declared_mathlib_revision} "
        f"but lake-manifest pins {mathlib_tag}"
    )

print(
    f"PASS: Lean toolchain, lakefile, and Mathlib manifest all pin {lean_tag}"
)
PY