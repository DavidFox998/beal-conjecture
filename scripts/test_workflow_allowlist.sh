#!/usr/bin/env bash
# Regression test for the GitHub Actions workflow boundary.
#
# The production check accepts the approved workflows and rejects an
# unrelated workflow. Keeping both cases here prevents a future edit from
# weakening either side of that contract.

set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
CHECK_SCRIPT="${SCRIPT_DIR}/check_workflow_allowlist.sh"
FIXTURE_DIR="$(mktemp -d)"
trap 'rm -rf "$FIXTURE_DIR"' EXIT

readonly ALLOWED_WORKFLOWS=(
  "lean.yml"
  "ensemble-links.yml"
  "notify-bridge.yml"
  "opera-metadata.yml"
  "verify-opera-lean-health.yml"
)

for workflow_file in "${ALLOWED_WORKFLOWS[@]}"; do
  : > "${FIXTURE_DIR}/${workflow_file}"
done

bash "$CHECK_SCRIPT" "$FIXTURE_DIR" >/dev/null

: > "${FIXTURE_DIR}/unrelated-api.yml"
failure_output="$(mktemp)"
trap 'rm -rf "$FIXTURE_DIR" "$failure_output"' EXIT

if bash "$CHECK_SCRIPT" "$FIXTURE_DIR" >"$failure_output" 2>&1; then
  echo "FAIL: workflow allowlist accepted an unauthorized workflow" >&2
  cat "$failure_output" >&2
  exit 1
fi

if ! grep -Fq "unrelated-api.yml" "$failure_output"; then
  echo "FAIL: workflow allowlist failure did not identify the unauthorized workflow" >&2
  cat "$failure_output" >&2
  exit 1
fi

echo "PASS: allowlisted workflows pass and unauthorized workflows fail."