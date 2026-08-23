#!/usr/bin/env bash
# =============================================================================
# Opera Numerorum — Chain Re-lock Script
#
# Fetches the current HEAD commit of every repo in the 19-repo ensemble,
# recomputes the SHA256 chain digest, and — when run inside GitHub Actions —
# opens a pull request if the digest has drifted from the value committed in
# CHAIN.md.
#
# Usage (local / manual):
#   export GITHUB_TOKEN=ghp_...
#   bash scripts/relock-chain.sh [--dry-run]
#
# Usage (CI — triggered automatically by relock-chain.yml):
#   The workflow sets GITHUB_TOKEN; just run the script.
#
# Options:
#   --dry-run   Print the new chain digest and updated table but do NOT
#               modify any file or create a PR.
#
# Exit codes:
#   0  chain is already current (no drift)  OR  PR opened for a drift
#   1  fatal error (missing token, API failure, etc.)
# =============================================================================

set -euo pipefail

# ── colours ──────────────────────────────────────────────────────────────────
BOLD='\033[1m'; RED='\033[0;31m'; GREEN='\033[0;32m'
YELLOW='\033[1;33m'; CYAN='\033[0;36m'; RESET='\033[0m'
header() { echo -e "\n${BOLD}${CYAN}━━━ $* ━━━${RESET}"; }
ok()     { echo -e "${GREEN}✓${RESET}  $*"; }
warn()   { echo -e "${YELLOW}⚠${RESET}  $*"; }
die()    { echo -e "${RED}✗ FATAL${RESET}  $*" >&2; exit 1; }

# ── flags ─────────────────────────────────────────────────────────────────────
DRY_RUN=false
for arg in "$@"; do
  [[ "$arg" == "--dry-run" ]] && DRY_RUN=true
done

# ── config ────────────────────────────────────────────────────────────────────
OWNER="DavidFox998"
BRIDGE_REPO="rh-p5-bridge-14"
GITHUB_API="https://api.github.com"

# Canonical alphabetical order — must match CHAIN.md
REPOS=(
  "arakelov-positivity-rh-core"
  "arakelov-rh-descent"
  "birch-swinnerton-dyer-143"
  "birch-swinnerton-dyer-143a1"
  "bost-connes"
  "brothers-desert-proof"
  "Certifications"
  "eutheos-property"
  "hodge-abelian-boundaries"
  "lindelof-hypothesis-143"
  "morningstar-project"
  "navier-stokes"
  "opera-sieve"
  "p-vs-np"
  "poincare-spectral"
  "rh-growth-contradiction"
  "rh-p5-bridge-14"
  "riemann-arakelov-positivity"
  "yang-mills-gap"
)

# Cluster labels for the CHAIN.md table (parallel to REPOS array)
CLUSTERS=(
  "RH" "RH" "BSD" "BSD" "BSD/RH" "RH" "META"
  "P≠NP" "Hodge" "RH" "META" "NS" "META" "P≠NP"
  "Poincaré" "RH" "META" "RH" "YM"
)

# ── require a token ───────────────────────────────────────────────────────────
[[ -z "${GITHUB_TOKEN:-}" ]] && die "GITHUB_TOKEN is not set."

# ── preflight: verify token is valid and has repo scope ───────────────────────
header "Verifying GITHUB_TOKEN"
_http_code=$(curl -sf -o /dev/null -w "%{http_code}" \
  -H "Authorization: token $GITHUB_TOKEN" \
  -H "Accept: application/vnd.github.v3+json" \
  "https://api.github.com/rate_limit") || true

if [[ "$_http_code" != "200" ]]; then
  die "GITHUB_TOKEN is invalid or missing repo scope (HTTP $_http_code from /rate_limit). Aborting before per-repo API calls."
fi

# For personal access tokens, X-OAuth-Scopes lists the granted scopes.
_scopes=$(curl -sI \
  -H "Authorization: token $GITHUB_TOKEN" \
  -H "Accept: application/vnd.github.v3+json" \
  "https://api.github.com/rate_limit" \
  | tr -d '\r' \
  | awk -F': ' 'tolower($1) == "x-oauth-scopes" {print $2}')

if [[ -n "$_scopes" ]]; then
  echo "  Token OAuth scopes : $_scopes"
  if ! echo "$_scopes" | grep -qE '(^|,\s*)repo($|,|\s)'; then
    die "GITHUB_TOKEN is missing the 'repo' scope (found: $_scopes). The relock script needs repo scope to read ensemble repos."
  fi
else
  echo "  Token scopes       : (built-in Actions token or fine-grained PAT — OAuth scope header absent)"
fi
ok "GITHUB_TOKEN is valid."

# ── locate CHAIN.md ───────────────────────────────────────────────────────────
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
REPO_ROOT="$(cd "$SCRIPT_DIR/.." && pwd)"
CHAIN_FILE="$REPO_ROOT/CHAIN.md"
REPOS_FILE="$REPO_ROOT/REPOS.md"

[[ -f "$CHAIN_FILE" ]] || die "CHAIN.md not found at $CHAIN_FILE"

# ── read committed chain ───────────────────────────────────────────────────────
COMMITTED_SHA=$(grep -m1 '^\*\*Chain SHA256:\*\*' "$CHAIN_FILE" \
  | sed 's/.*`\([0-9a-f]*\)`.*/\1/')
[[ -z "$COMMITTED_SHA" ]] && die "Could not parse committed chain SHA from CHAIN.md"

header "Opera Numerorum — Chain Re-lock"
echo "  Date (UTC)     : $(date -u '+%Y-%m-%d %H:%M:%S')"
echo "  Committed SHA  : $COMMITTED_SHA"
echo "  Dry-run        : $DRY_RUN"
echo "  Repos          : ${#REPOS[@]}"

# ── fetch current HEADs ───────────────────────────────────────────────────────
header "Fetching HEAD commits from GitHub API"

declare -a SHAS
LINES=()   # repo:sha pairs for hashing

for i in "${!REPOS[@]}"; do
  repo="${REPOS[$i]}"
  url="$GITHUB_API/repos/$OWNER/$repo/commits/main"
  response=$(curl -sf \
    -H "Authorization: token $GITHUB_TOKEN" \
    -H "Accept: application/vnd.github.v3+json" \
    "$url") || die "API call failed for $repo (is the repo public or is the token valid?)"
  sha=$(echo "$response" | python3 -c "import sys,json; print(json.load(sys.stdin)['sha'])")
  SHAS[$i]="$sha"
  LINES+=("$repo:$sha")
  printf "  %-45s %s\n" "$repo" "${sha:0:12}"
done

# ── recompute chain SHA ────────────────────────────────────────────────────────
header "Recomputing chain SHA256"

INPUT_STRING=$(printf '%s\n' "${LINES[@]}")
NEW_SHA=$(printf '%s\n' "${LINES[@]}" | sha256sum | awk '{print $1}')

echo "  New SHA256 : $NEW_SHA"
echo "  Old SHA256 : $COMMITTED_SHA"

if [[ "$NEW_SHA" == "$COMMITTED_SHA" ]]; then
  ok "Chain is current — no drift detected."
  exit 0
fi

warn "Drift detected — chain SHA has changed."

if [[ "$DRY_RUN" == true ]]; then
  echo ""
  echo "Dry-run: would update CHAIN.md and REPOS.md with the table below."
  echo ""
  echo "New SHA256: $NEW_SHA"
  echo ""
  echo "Updated repo table:"
  for i in "${!REPOS[@]}"; do
    printf "  | %-55s | \`%s\` | %s |\n" \
      "[${REPOS[$i]}](https://github.com/$OWNER/${REPOS[$i]})" \
      "${SHAS[$i]}" "${CLUSTERS[$i]}"
  done
  exit 0
fi

# ── patch CHAIN.md ────────────────────────────────────────────────────────────
header "Patching CHAIN.md"

TODAY=$(date -u '+%Y-%m-%d')

# Build the new repo table block
NEW_TABLE=""
for i in "${!REPOS[@]}"; do
  NEW_TABLE+="| [${REPOS[$i]}](https://github.com/$OWNER/${REPOS[$i]}) | \`${SHAS[$i]}\` | ${CLUSTERS[$i]} |\n"
done

python3 - "$CHAIN_FILE" "$COMMITTED_SHA" "$NEW_SHA" "$TODAY" "$NEW_TABLE" << 'PYEOF'
import sys, re

chain_file, old_sha, new_sha, today, new_table_raw = sys.argv[1:]

with open(chain_file, 'r') as f:
    content = f.read()

# Update the header block
content = re.sub(
    r'\*\*Chain SHA256:\*\*[^\n]*',
    f'**Chain SHA256:** `{new_sha}`',
    content
)
content = re.sub(
    r'\*\*Locked:\*\*[^\n]*',
    f'**Locked:** {today}',
    content
)

# Add previous chain line if not already there
prev_line = f'**Previous chain (locked {today}):** `{old_sha}`'
if old_sha not in content:
    content = re.sub(
        r'(\*\*Repos in chain:\*\*[^\n]*\n)',
        r'\1' + f'**Previous chain (locked {today}):** `{old_sha}`\n',
        content
    )

# Replace the repo table rows (between the header row and the next ---)
new_table = new_table_raw.replace('\\n', '\n')
content = re.sub(
    r'(\| Repo \| HEAD at lock \| Cluster \|\n\|[-| ]+\|\n).*?(\n---)',
    lambda m: m.group(1) + new_table.rstrip('\n') + m.group(2),
    content,
    flags=re.DOTALL
)

# Update the verification section's expected SHA
content = re.sub(
    r'(print\("Expected: )[0-9a-f]+("\))',
    rf'\g<1>{new_sha}\g<2>',
    content
)

with open(chain_file, 'w') as f:
    f.write(content)

print(f"CHAIN.md updated: {old_sha[:12]} → {new_sha[:12]}")
PYEOF

ok "CHAIN.md patched."

# ── patch REPOS.md ────────────────────────────────────────────────────────────
header "Patching REPOS.md"

python3 - "$REPOS_FILE" "$NEW_SHA" "$TODAY" << 'PYEOF'
import sys, re

repos_file, new_sha, today = sys.argv[1:]

with open(repos_file, 'r') as f:
    content = f.read()

content = re.sub(
    r'\*\*Ensemble chain SHA256:\*\*[^\n]*',
    f'**Ensemble chain SHA256:** `{new_sha}`',
    content
)
content = re.sub(
    r'\*\*Chain locked:\*\*[^\n]*',
    f'**Chain locked:** {today} (19 repos — see [CHAIN.md](CHAIN.md))',
    content
)
content = re.sub(
    r'chain SHA256 = [0-9a-f]+',
    f'chain SHA256 = {new_sha}',
    content
)
content = re.sub(
    r'\*Last updated:[^\n]*',
    f'*Last updated: {today} — maintained in `rh-p5-bridge-14` and mirrored to `Certifications`.*',
    content
)

with open(repos_file, 'w') as f:
    f.write(content)

print("REPOS.md updated.")
PYEOF

ok "REPOS.md patched."

# ── create PR (CI only) ───────────────────────────────────────────────────────
# This block only runs when GITHUB_ACTIONS is set (i.e., inside a workflow).
# For local use, the patched files are left for the user to commit manually.

if [[ "${GITHUB_ACTIONS:-}" == "true" ]]; then
  header "Creating pull request"

  BRANCH="chain-relock/$(date -u '+%Y%m%d-%H%M%S')"
  git config user.name  "github-actions[bot]"
  git config user.email "41898282+github-actions[bot]@users.noreply.github.com"
  git checkout -b "$BRANCH"
  git add "$CHAIN_FILE" "$REPOS_FILE"
  git commit -m "chore: re-lock ensemble chain SHA ($(date -u '+%Y-%m-%d'))

Drift detected. New chain SHA256:
  $NEW_SHA

Previous chain SHA256:
  $COMMITTED_SHA

All 19 repo HEADs refetched and CHAIN.md / REPOS.md updated automatically
by the relock-chain workflow."

  git push origin "$BRANCH"

  PR_URL=$(gh pr create \
    --title "chore: re-lock ensemble chain ($(date -u '+%Y-%m-%d'))" \
    --body "## Chain re-lock

The periodic chain re-lock job detected that one or more ensemble repos have
received new commits since the last lock on **$(grep -m1 '\*\*Locked:\*\*' "$CHAIN_FILE" | sed 's/.*\*\* //')**.

| | SHA |
|---|---|
| **Previous** | \`$COMMITTED_SHA\` |
| **New** | \`$NEW_SHA\` |

All 19 HEAD commits have been refetched and CHAIN.md / REPOS.md updated.
Please review the diff, confirm the new SHAs look correct, and merge.

---
*Generated automatically by \`scripts/relock-chain.sh\`.*" \
    --base main \
    --head "$BRANCH" \
    --label "chain-relock" 2>/dev/null || \
  gh pr create \
    --title "chore: re-lock ensemble chain ($(date -u '+%Y-%m-%d'))" \
    --body "Chain drift detected. New SHA: \`$NEW_SHA\`. Previous: \`$COMMITTED_SHA\`." \
    --base main \
    --head "$BRANCH")

  ok "Pull request opened: $PR_URL"
else
  warn "Not running inside GitHub Actions — files updated locally."
  warn "Review the diff, then commit and push:"
  echo ""
  echo "  git diff rh-p5-bridge-14/CHAIN.md rh-p5-bridge-14/REPOS.md"
  echo "  git add rh-p5-bridge-14/CHAIN.md rh-p5-bridge-14/REPOS.md"
  echo "  git commit -m \"chore: re-lock ensemble chain ($TODAY)\""
  echo "  git push"
fi
