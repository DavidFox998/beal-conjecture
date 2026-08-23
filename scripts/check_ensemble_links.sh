#!/usr/bin/env bash
# =============================================================================
# Opera Numerorum — Ensemble Link Auditor
#
# Parses REPOS.md for every GitHub repo in the DavidFox998 ensemble, then
# fetches each repo's README from GitHub and checks that it contains a
# navigable back-link to rh-p5-bridge-14 (the keystone / ensemble entry point).
#
# Usage:
#   bash scripts/check_ensemble_links.sh [REPOS_MD_PATH]
#
# Environment:
#   GITHUB_TOKEN    Set to avoid the 60 req/hr unauthenticated rate limit.
#
# Exit codes:
#   0  all repos contain the canonical ensemble back-link
#   1  one or more repos are missing the link, or a README could not be fetched
# =============================================================================

set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
REPOS_MD="${1:-${SCRIPT_DIR}/../REPOS.md}"
REPOS_MD="$(realpath "$REPOS_MD")"

ENSEMBLE_KEYSTONE="rh-p5-bridge-14"
ENSEMBLE_OWNER="DavidFox998"
# Canonical URL that must appear in each sibling repo's README.
# Both HTTPS forms are accepted (with and without trailing slash).
CANONICAL_URL="https://github.com/${ENSEMBLE_OWNER}/${ENSEMBLE_KEYSTONE}"

FETCH_RETRIES=3          # number of attempts before hard-failing
FETCH_RETRY_DELAY=5      # seconds between retries

# Colour helpers
if [[ -t 1 && "${NO_COLOR:-}" == "" ]]; then
  RED='\033[0;31m'; GREEN='\033[0;32m'; YELLOW='\033[1;33m'; BOLD='\033[1m'; RESET='\033[0m'
else
  RED=''; GREEN=''; YELLOW=''; BOLD=''; RESET=''
fi

echo -e "${BOLD}Opera Numerorum — Ensemble Link Audit${RESET}"
echo "Keystone repo : ${ENSEMBLE_OWNER}/${ENSEMBLE_KEYSTONE}"
echo "Canonical URL : ${CANONICAL_URL}"
echo "REPOS.md      : ${REPOS_MD}"
echo ""

# ---------------------------------------------------------------------------
# 1. Extract repo slugs from REPOS.md
# ---------------------------------------------------------------------------
if [[ ! -f "$REPOS_MD" ]]; then
  echo -e "${RED}ERROR: REPOS.md not found at ${REPOS_MD}${RESET}"
  exit 1
fi

mapfile -t REPOS < <(
  grep -oP "https://github\.com/${ENSEMBLE_OWNER}/\K[a-zA-Z0-9_-]+" "$REPOS_MD" \
    | sort -u
)

if [[ ${#REPOS[@]} -eq 0 ]]; then
  echo -e "${RED}ERROR: No repos found in REPOS.md — check the file format.${RESET}"
  exit 1
fi

echo "Repos found in REPOS.md (${#REPOS[@]}):"
for r in "${REPOS[@]}"; do echo "  - ${r}"; done
echo ""

# ---------------------------------------------------------------------------
# 2. Auth header
# ---------------------------------------------------------------------------
CURL_AUTH=()
if [[ -n "${GITHUB_TOKEN:-}" ]]; then
  CURL_AUTH=(-H "Authorization: Bearer ${GITHUB_TOKEN}")
fi

# ---------------------------------------------------------------------------
# 3. Fetch helper — retries, then hard-fails on persistent error
#    Prints the README text to stdout; exits non-zero on unrecoverable failure.
# ---------------------------------------------------------------------------
fetch_readme() {
  local repo="$1"
  local api_url="https://api.github.com/repos/${ENSEMBLE_OWNER}/${repo}/readme"
  local attempt response http_code

  for attempt in $(seq 1 "$FETCH_RETRIES"); do
    # Use -w to capture HTTP status separately from body
    response=$(curl -s -w "\n%{http_code}" "${CURL_AUTH[@]}" \
      -H "Accept: application/vnd.github.raw" \
      "$api_url" 2>/dev/null) || true

    http_code=$(echo "$response" | tail -n1)
    body=$(echo "$response" | head -n -1)

    if [[ "$http_code" == "200" ]]; then
      echo "$body"
      return 0
    fi

    echo -e "  ${YELLOW}WARN${RESET}  ${repo}  HTTP ${http_code} on attempt ${attempt}/${FETCH_RETRIES}" >&2
    if [[ $attempt -lt $FETCH_RETRIES ]]; then
      sleep "$FETCH_RETRY_DELAY"
    fi
  done

  # All retries exhausted — hard fail
  echo -e "  ${RED}FAIL${RESET}  ${repo}  README not reachable after ${FETCH_RETRIES} attempts (HTTP ${http_code})" >&2
  return 1
}

# ---------------------------------------------------------------------------
# 4. Audit every repo
# ---------------------------------------------------------------------------
PASS=0
FAIL=0
MISSING=()
UNREACHABLE=()

for REPO in "${REPOS[@]}"; do
  if [[ "$REPO" == "$ENSEMBLE_KEYSTONE" ]]; then
    echo -e "  ${YELLOW}SKIP${RESET}  ${REPO}  (keystone — self-reference not required)"
    continue
  fi

  if ! README=$(fetch_readme "$REPO" 2>&1); then
    # fetch_readme already printed the failure line; record and continue
    FAIL=$((FAIL + 1))
    UNREACHABLE+=("$REPO")
    continue
  fi

  # Check for the canonical GitHub URL (both forms accepted)
  if echo "$README" | grep -qE "https://github\.com/${ENSEMBLE_OWNER}/${ENSEMBLE_KEYSTONE}(/|[^a-zA-Z0-9_-]|$)"; then
    echo -e "  ${GREEN}PASS${RESET}  ${REPO}"
    PASS=$((PASS + 1))
  else
    echo -e "  ${RED}FAIL${RESET}  ${REPO}  — README has no link to ${CANONICAL_URL}"
    FAIL=$((FAIL + 1))
    MISSING+=("$REPO")
  fi
done

# ---------------------------------------------------------------------------
# 5. Summary
# ---------------------------------------------------------------------------
echo ""
echo -e "${BOLD}Results: ${GREEN}${PASS} passed${RESET}${BOLD}, ${RED}${FAIL} failed${RESET}"

if [[ ${#UNREACHABLE[@]} -gt 0 ]]; then
  echo ""
  echo -e "${RED}Repos whose README could not be fetched:${RESET}"
  for u in "${UNREACHABLE[@]}"; do
    echo "  - https://github.com/${ENSEMBLE_OWNER}/${u}"
  done
fi

if [[ ${#MISSING[@]} -gt 0 ]]; then
  echo ""
  echo -e "${RED}Repos missing the canonical ensemble back-link:${RESET}"
  for m in "${MISSING[@]}"; do
    echo "  - https://github.com/${ENSEMBLE_OWNER}/${m}"
  done
  echo ""
  echo "Each repo's README must contain a navigable link to:"
  echo "  ${CANONICAL_URL}"
  echo ""
  echo "Minimal fix — add this line to the failing README(s):"
  echo ""
  echo "  **Ensemble entry point:** [rh-p5-bridge-14](${CANONICAL_URL})"
fi

if [[ $FAIL -gt 0 ]]; then
  exit 1
fi

echo -e "${GREEN}All audited repos contain the canonical ensemble back-link. ✓${RESET}"
exit 0
