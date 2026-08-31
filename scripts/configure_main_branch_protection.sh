#!/usr/bin/env bash
# Apply or verify the live GitHub main-branch protection from the checked-in
# contract. The GitHub token must have repository Administration permission.
#
# Usage:
#   GH_TOKEN=... bash scripts/configure_main_branch_protection.sh apply
#   GH_TOKEN=... bash scripts/configure_main_branch_protection.sh check

set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
REPO_ROOT="$(cd "${SCRIPT_DIR}/.." && pwd)"
CONTRACT="${REPO_ROOT}/.github/branch-protection.json"
VALIDATOR="${SCRIPT_DIR}/check_main_branch_protection_contract.py"
MODE="${1:-check}"

if [[ "$MODE" != "apply" && "$MODE" != "check" ]]; then
  echo "Usage: $0 [apply|check]" >&2
  exit 2
fi

if ! command -v gh >/dev/null 2>&1; then
  echo "FAIL: GitHub CLI (gh) is required" >&2
  exit 1
fi

if [[ -z "${GH_TOKEN:-}" ]]; then
  echo "FAIL: GH_TOKEN is required" >&2
  exit 1
fi

python3 "$VALIDATOR"

readarray -t contract_metadata < <(
  python3 - "$CONTRACT" <<'PY'
import json
from pathlib import Path
import sys

contract = json.loads(Path(sys.argv[1]).read_text(encoding="utf-8"))
print(contract["repository"])
print(contract["branch"])
PY
)
REPOSITORY="${contract_metadata[0]}"
BRANCH="${contract_metadata[1]}"

payload_file="$(mktemp)"
live_file="$(mktemp)"
trap 'rm -f "$payload_file" "$live_file"' EXIT

python3 - "$CONTRACT" "$payload_file" <<'PY'
import json
from pathlib import Path
import sys

contract = json.loads(Path(sys.argv[1]).read_text(encoding="utf-8"))
Path(sys.argv[2]).write_text(
    json.dumps(contract["protection"]),
    encoding="utf-8",
)
PY

api_path="repos/${REPOSITORY}/branches/${BRANCH}/protection"

if [[ "$MODE" == "apply" ]]; then
  gh api --method PUT "$api_path" --input "$payload_file" >/dev/null
  echo "PASS: applied branch protection to ${REPOSITORY}:${BRANCH}."
fi

gh api "$api_path" >"$live_file"
python3 "$VALIDATOR" --live-json "$live_file"