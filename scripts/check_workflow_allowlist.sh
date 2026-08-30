#!/usr/bin/env bash
# check_workflow_allowlist.sh — keep this Lean repository's CI boundary explicit
#
# Usage:
#   bash scripts/check_workflow_allowlist.sh [workflow-directory]
#
# The default directory is this repository's .github/workflows directory.  A
# directory argument makes the check easy to exercise against a fixture.

set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
WORKFLOW_DIR="${1:-${SCRIPT_DIR}/../.github/workflows}"

if [[ ! -d "$WORKFLOW_DIR" ]]; then
  echo "FAIL: GitHub Actions workflow directory does not exist: $WORKFLOW_DIR" >&2
  exit 1
fi

# These are the only workflows owned by rh-p5-bridge-14:
#   - the Lean proof build
#   - the ensemble back-link audit
#   - the notification that asks the bridge to re-lock the ensemble
#   - the Opera metadata audit and proof-health verification
readonly ALLOWED_WORKFLOWS=(
  "lean.yml"
  "ensemble-links.yml"
  "notify-bridge.yml"
  "opera-metadata.yml"
  "verify-opera-lean-health.yml"
)

mapfile -t workflow_files < <(
  find "$WORKFLOW_DIR" -maxdepth 1 -type f -printf '%f\n' | sort
)

unexpected=()
for workflow_file in "${workflow_files[@]}"; do
  allowed=false
  for allowed_workflow in "${ALLOWED_WORKFLOWS[@]}"; do
    if [[ "$workflow_file" == "$allowed_workflow" ]]; then
      allowed=true
      break
    fi
  done
  if [[ "$allowed" == false ]]; then
    unexpected+=("$workflow_file")
  fi
done

if [[ ${#unexpected[@]} -gt 0 ]]; then
  echo "FAIL: unexpected GitHub Actions workflow file(s) found in $WORKFLOW_DIR:"
  printf '  %s\n' "${unexpected[@]}"
  echo
  echo "This repository accepts only the approved Lean/ensemble proof workflows:"
  printf '  %s\n' "${ALLOWED_WORKFLOWS[@]}"
  echo
  echo "ZeroBeacon API checks belong in the separate API repository."
  echo "Remove the unrelated workflow, or update this allowlist deliberately"
  echo "if the workflow is part of the Lean/ensemble repository boundary."
  exit 1
fi

echo "PASS: GitHub Actions workflows match the Lean/ensemble allowlist."
printf '  %s\n' "${workflow_files[@]}"