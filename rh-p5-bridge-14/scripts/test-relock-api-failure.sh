#!/usr/bin/env bash
# =============================================================================
# test-relock-api-failure.sh
#
# Verifies that relock-chain.sh exits non-zero (and does NOT silently succeed)
# when the GitHub API returns an error for one of the ensemble repos.
#
# Strategy
# --------
# A mock `curl` binary is injected at the front of PATH.  It returns a valid
# fake-SHA JSON body for the first N−1 calls, then exits 22 on the Nth call
# (the exit code curl uses for HTTP errors when the -f flag is given), simulating
# a rate-limit or transient API outage that strikes mid-run.
#
# The test asserts:
#   1. The script exits with a non-zero status code.
#   2. The output contains the expected FATAL error message.
#   3. The script does NOT print a computed chain SHA (i.e. it did not
#      silently continue with partial data).
#
# Usage:
#   bash scripts/test-relock-api-failure.sh
# =============================================================================

set -euo pipefail

BOLD='\033[1m'; RED='\033[0;31m'; GREEN='\033[0;32m'; RESET='\033[0m'
ok()     { echo -e "${GREEN}✓${RESET}  $*"; }
fail()   { echo -e "${RED}✗ FAIL${RESET}  $*" >&2; exit 1; }
section(){ echo -e "\n${BOLD}$*${RESET}"; }

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
RELOCK_SCRIPT="$SCRIPT_DIR/relock-chain.sh"

[[ -f "$RELOCK_SCRIPT" ]] || fail "relock-chain.sh not found at $RELOCK_SCRIPT"

section "Test: GitHub API failure causes non-zero exit (no silent partial hash)"

# ── set up a temporary workspace ──────────────────────────────────────────────
WORK_DIR="$(mktemp -d)"
trap 'rm -rf "$WORK_DIR"' EXIT

MOCK_BIN="$WORK_DIR/bin"
CALL_COUNT_FILE="$WORK_DIR/call_count"
mkdir -p "$MOCK_BIN"
echo 0 > "$CALL_COUNT_FILE"

# Fail on the 3rd API call — far enough in that a partial hash *could* be
# computed if the script continued, but early enough to test the guard reliably.
FAIL_ON_CALL=3

# ── create the mock curl ──────────────────────────────────────────────────────
# The heredoc uses a non-interpolating delimiter (MOCK) so that the inner
# $(...) syntax is written literally into the script, but the outer shell
# variables CALL_COUNT_FILE and FAIL_ON_CALL are expanded now.
cat > "$MOCK_BIN/curl" << MOCK
#!/usr/bin/env bash
# Mock curl: succeed for the first ${FAIL_ON_CALL-1} calls, fail on call #${FAIL_ON_CALL}.
count=\$(cat "$CALL_COUNT_FILE")
count=\$((count + 1))
printf '%s' "\$count" > "$CALL_COUNT_FILE"

if [[ "\$count" -eq $FAIL_ON_CALL ]]; then
  # Simulate a GitHub API failure: exit 22 is what curl returns with -f
  # when the server responds with an HTTP 4xx/5xx status.
  exit 22
fi

# Return a plausible fake commit JSON for every non-failing call.
printf '%s\n' '{"sha":"deadbeefdeadbeefdeadbeefdeadbeefdeadbeef"}'
MOCK
chmod +x "$MOCK_BIN/curl"

# ── run the script under test ─────────────────────────────────────────────────
echo "  Injecting mock curl that fails on API call #${FAIL_ON_CALL} of 19"
echo "  Running relock-chain.sh ..."

set +e
output=$(
  PATH="$MOCK_BIN:$PATH" \
  GITHUB_TOKEN="fake-token-for-test" \
  bash "$RELOCK_SCRIPT" 2>&1
)
EXIT_CODE=$?
set -e

echo ""
echo "--- script output (first 30 lines) ---"
echo "$output" | head -30
echo "--------------------------------------"
echo "Exit code: $EXIT_CODE"
echo ""

# ── assertions ────────────────────────────────────────────────────────────────

# 1. The script must exit non-zero.
if [[ "$EXIT_CODE" -eq 0 ]]; then
  fail "Expected non-zero exit when the GitHub API fails for repo #${FAIL_ON_CALL}," \
       "but got exit 0 — the script silently succeeded with partial data."
fi
ok "Script exited ${EXIT_CODE} (non-zero) — API failure is NOT silently ignored."

# 2. The output must contain a recognisable error indicator.
#    The bash version of the script uses "FATAL" / "API call failed".
#    The Python version raises urllib.error.HTTPError ("HTTP Error …") or
#    prints "ERROR: GITHUB_TOKEN …" when the token is invalid.
#    Any of these proves the script detected the failure rather than
#    silently swallowing it.
if echo "$output" | grep -qiE 'FATAL|API call failed|HTTP Error|HTTPError|urllib\.error|ERROR:'; then
  ok "Output contains expected failure indicator — error was not swallowed."
else
  fail "Expected FATAL, 'API call failed', 'HTTP Error', or 'ERROR:' in output," \
       "but none were found. The script may have exited for an unexpected reason."
fi

# 3. The script must NOT have printed a computed chain SHA256.
#    Both script versions print the new SHA before patching files.
#    "New chain SHA256:" (Python) and "New SHA256 :" (bash) both match.
if echo "$output" | grep -qiE 'new.*sha256|sha256.*:'; then
  fail "Script printed a computed SHA256 despite an API failure —" \
       "it continued with partial data and must not exit 0 in production."
fi
ok "No chain SHA256 was computed — script aborted before hashing partial data."

echo ""
echo -e "${GREEN}${BOLD}All assertions passed — relock-chain.sh correctly fails fast on API errors.${RESET}"
