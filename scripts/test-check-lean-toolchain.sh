#!/usr/bin/env bash
# test-check-lean-toolchain.sh — fixture tests for check-lean-toolchain.sh

set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
CHECKER="$SCRIPT_DIR/check-lean-toolchain.sh"
FIXTURE_DIR="$(mktemp -d /tmp/lean-toolchain-check-XXXXXX)"
trap 'rm -rf "$FIXTURE_DIR"' EXIT

write_manifest() {
  local tag="$1"
  cat > "$FIXTURE_DIR/lake-manifest.json" <<JSON
{"packages":[{"name":"mathlib","inputRev":"$tag"}]}
JSON
}

write_lakefile() {
  local revision="$1"
  cat > "$FIXTURE_DIR/lakefile.lean" <<LAKE
import Lake
open Lake DSL

require mathlib from git
  "https://github.com/leanprover-community/mathlib4.git" @ "$revision"
LAKE
}

write_manifest "v4.15.0"
write_lakefile "v4.15.0"
printf '%s\n' 'leanprover/lean4:v4.15.0' > "$FIXTURE_DIR/lean-toolchain"
bash "$CHECKER" "$FIXTURE_DIR/lean-toolchain" "$FIXTURE_DIR/lake-manifest.json" \
  "$FIXTURE_DIR/lakefile.lean" >/dev/null
echo "PASS: matching Lean and Mathlib tags"

write_manifest "v4.14.0"
set +e
output="$(
  bash "$CHECKER" "$FIXTURE_DIR/lean-toolchain" "$FIXTURE_DIR/lake-manifest.json" \
    "$FIXTURE_DIR/lakefile.lean" \
    2>&1
)"
status=$?
set -e
if [[ $status -eq 0 ]]; then
  echo "FAIL: mismatching tags unexpectedly passed" >&2
  exit 1
fi
if [[ "$output" != *"lean-toolchain says v4.15.0 but lake-manifest pins v4.14.0"* ]]; then
  echo "FAIL: mismatch error did not identify both tags" >&2
  echo "$output" >&2
  exit 1
fi
echo "PASS: mismatching Lean and Mathlib tags fail clearly"

write_manifest "v4.15.0"
write_lakefile "v4.14.0"
set +e
output="$(
  bash "$CHECKER" "$FIXTURE_DIR/lean-toolchain" "$FIXTURE_DIR/lake-manifest.json" \
    "$FIXTURE_DIR/lakefile.lean" \
    2>&1
)"
status=$?
set -e
if [[ $status -eq 0 ]]; then
  echo "FAIL: mismatching lakefile and manifest revisions unexpectedly passed" >&2
  exit 1
fi
if [[ "$output" != *"lakefile declares Mathlib revision v4.14.0 but lake-manifest pins v4.15.0"* ]]; then
  echo "FAIL: declaration mismatch error did not identify both revisions" >&2
  echo "$output" >&2
  exit 1
fi
echo "PASS: mismatching lakefile and Mathlib manifest revisions fail clearly"