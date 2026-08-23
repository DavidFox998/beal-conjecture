#!/usr/bin/env bash
# =============================================================================
# Opera Numerorum — Uniform Referee Verification Pipeline
# V1–V5 audit harness for Lean 4 formal proof repositories
#
# Usage:
#   bash audit.sh <repo-directory>
#
# Steps:
#   V1  lake build          — confirms the proof compiles with zero errors
#   V2  sorry audit         — comment-aware check: no real sorry in source
#   V3  noncomputable audit — lists all noncomputable declarations
#   V4  import audit        — lists all external imports
#   V5  source certificate  — SHA-256 of all .lean files (reproducible)
#
# Exit codes:
#   0  all checks pass
#   1  one or more checks failed (see output for details)
#
# Reproducibility:
#   Run in a clean checkout (git clone + lake update) without network after
#   lake update completes. V5 SHA is deterministic for the same source tree.
# =============================================================================

set -euo pipefail

REPO_DIR="${1:-.}"
FAIL=0
BOLD='\033[1m'
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
CYAN='\033[0;36m'
RESET='\033[0m'

header() { echo -e "\n${BOLD}${CYAN}━━━ $* ━━━${RESET}"; }
pass()   { echo -e "${GREEN}✓ PASS${RESET}  $*"; }
fail()   { echo -e "${RED}✗ FAIL${RESET}  $*"; FAIL=1; }
info()   { echo -e "${YELLOW}  →${RESET} $*"; }

cd "$REPO_DIR"
REPO_NAME=$(basename "$(pwd)")

echo -e "${BOLD}Opera Numerorum Audit — ${REPO_NAME}${RESET}"
echo "Directory : $(pwd)"
echo "Date      : $(date -u '+%Y-%m-%dT%H:%M:%SZ')"
echo "Git HEAD  : $(git rev-parse HEAD 2>/dev/null || echo 'not a git repo')"

# ─────────────────────────────────────────────────────────────────────────────
header "V1 — lake build"
# ─────────────────────────────────────────────────────────────────────────────

if [ ! -f "lakefile.lean" ] && [ ! -f "lakefile.toml" ]; then
  info "No lakefile found — skipping lake build (non-Lean repo or infrastructure)"
else
  export PATH="$HOME/.elan/bin:$PATH"
  if lake build 2>&1; then
    pass "lake build succeeded"
  else
    fail "lake build failed — proof does not compile"
  fi
fi

# ─────────────────────────────────────────────────────────────────────────────
header "V2 — sorry audit (comment-aware)"
# ─────────────────────────────────────────────────────────────────────────────
# Strategy: strip comments and string literals from each .lean file, then grep.
# Stripping order:
#   1. Block comments  /- ... -/  (non-nested; sufficient for audit purposes)
#   2. Line comments   -- ...
#   3. String literals "..." and doc-strings /-! ... -/

LEAN_FILES=$(find . -name "*.lean" \
  ! -path "./.lake/*" \
  ! -path "./lake-packages/*" \
  ! -path "./.git/*" \
  2>/dev/null | sort)

LEAN_COUNT=$(echo "$LEAN_FILES" | grep -c '.lean' || echo 0)
info "Scanning $LEAN_COUNT .lean files"

SORRY_HITS=""
while IFS= read -r file; do
  [ -z "$file" ] && continue
  # Remove block comments /- ... -/ then line comments -- then search for sorry
  stripped=$(python3 - "$file" << 'PYEOF'
import sys, re

with open(sys.argv[1], 'r', encoding='utf-8', errors='replace') as f:
    src = f.read()

# Remove doc-string block comments /-! ... -/
src = re.sub(r'/-!.*?-/', ' ', src, flags=re.DOTALL)
# Remove block comments /- ... -/
src = re.sub(r'/-.*?-/', ' ', src, flags=re.DOTALL)
# Remove line comments -- to end of line
src = re.sub(r'--[^\n]*', ' ', src)
# Remove double-quoted strings (single-line)
src = re.sub(r'"(?:[^"\\]|\\.)*"', '""', src)

print(src)
PYEOF
)
  # sorry must appear as a standalone token (word boundary)
  matches=$(echo "$stripped" | grep -n '\bsorry\b' 2>/dev/null || true)
  if [ -n "$matches" ]; then
    SORRY_HITS="${SORRY_HITS}${file}:\n${matches}\n"
  fi
done <<< "$LEAN_FILES"

if [ -z "$SORRY_HITS" ]; then
  pass "No sorry found in source (comment-stripped)"
else
  fail "sorry found in source:"
  echo -e "$SORRY_HITS"
fi

# ─────────────────────────────────────────────────────────────────────────────
header "V3 — noncomputable audit"
# ─────────────────────────────────────────────────────────────────────────────

NC_COUNT=0
NC_LIST=""
while IFS= read -r file; do
  [ -z "$file" ] && continue
  hits=$(grep -n '\bnoncomputable\b' "$file" 2>/dev/null | grep -v '^\s*--' || true)
  if [ -n "$hits" ]; then
    NC_COUNT=$((NC_COUNT + $(echo "$hits" | wc -l)))
    NC_LIST="${NC_LIST}\n${file}:\n${hits}"
  fi
done <<< "$LEAN_FILES"

if [ "$NC_COUNT" -eq 0 ]; then
  pass "No noncomputable declarations"
else
  info "Found $NC_COUNT noncomputable declaration(s) — review for certificate gap:"
  echo -e "$NC_LIST"
  # noncomputable alone is not a failure — it's an annotation, not a sorry
  # Flag it as info so referees know where the computational gaps are
fi

# ─────────────────────────────────────────────────────────────────────────────
header "V4 — import audit"
# ─────────────────────────────────────────────────────────────────────────────

IMPORTS=$(while IFS= read -r file; do
  [ -z "$file" ] && continue
  grep -n '^\s*import ' "$file" 2>/dev/null || true
done <<< "$LEAN_FILES" | sort -u)

IMPORT_COUNT=$(echo "$IMPORTS" | grep -c 'import' || echo 0)
info "$IMPORT_COUNT unique import line(s) across all files"

MATHLIB_IMPORTS=$(echo "$IMPORTS" | grep 'Mathlib' || true)
STD_IMPORTS=$(echo "$IMPORTS" | grep -v 'Mathlib' | grep 'import' || true)

if [ -n "$MATHLIB_IMPORTS" ]; then
  info "Mathlib imports (noncomputable gap candidates):"
  echo "$MATHLIB_IMPORTS"
fi
if [ -n "$STD_IMPORTS" ]; then
  info "Std / local imports:"
  echo "$STD_IMPORTS"
fi
pass "Import audit complete (informational — see above)"

# ─────────────────────────────────────────────────────────────────────────────
header "V5 — source certificate (SHA-256)"
# ─────────────────────────────────────────────────────────────────────────────
# Deterministic: sorted file list, each file's SHA-256, then hash of hashes.

FILE_HASHES=$(while IFS= read -r file; do
  [ -z "$file" ] && continue
  sha256sum "$file" 2>/dev/null || shasum -a 256 "$file" 2>/dev/null || true
done <<< "$LEAN_FILES")

CERT_SHA=$(echo "$FILE_HASHES" | sha256sum 2>/dev/null \
  || echo "$FILE_HASHES" | shasum -a 256 2>/dev/null \
  || echo "sha256-unavailable")

CERT_SHA=$(echo "$CERT_SHA" | awk '{print $1}')

echo ""
echo "  Repository : $REPO_NAME"
echo "  Git HEAD   : $(git rev-parse HEAD 2>/dev/null || echo 'unknown')"
echo "  Lean files : $LEAN_COUNT"
echo "  Source SHA : $CERT_SHA"
echo ""
pass "Certificate SHA generated"

# ─────────────────────────────────────────────────────────────────────────────
header "Summary"
# ─────────────────────────────────────────────────────────────────────────────

echo ""
echo "  Repo             : $REPO_NAME"
echo "  Git HEAD         : $(git rev-parse HEAD 2>/dev/null || echo 'unknown')"
echo "  Lean files       : $LEAN_COUNT"
echo "  Noncomputable    : $NC_COUNT declaration(s)"
echo "  Source cert SHA  : $CERT_SHA"
echo ""

if [ "$FAIL" -eq 0 ]; then
  echo -e "${GREEN}${BOLD}ALL CHECKS PASSED${RESET}"
else
  echo -e "${RED}${BOLD}ONE OR MORE CHECKS FAILED — see details above${RESET}"
fi

exit $FAIL
