#!/usr/bin/env bash
# lean-compat-check.sh — Lean proof compatibility check for all Siegel modules
#
# Builds all three Siegel proof modules and classifies any failures or
# warning-mode diagnostics into two MUTUALLY EXCLUSIVE buckets:
#
#   API-NORMALIZATION — renamed or removed identifiers, changed import paths,
#   or deprecation warnings after a Lean/Mathlib dependency refresh.
#   These do NOT indicate a flaw in the mathematics; update the proof text
#   to match the new API.
#
#   MATHEMATICAL-PROOF — unsolved goals, tactic failures, explicit sorry
#   declarations, or typeclass synthesis failures indicating a genuine gap
#   in the formal argument.
#
# Classification is MUTUALLY EXCLUSIVE per log line: each line is tested
# against API patterns first; only unmatched lines are then tested for
# mathematical-proof patterns.
#
# Warning-mode diagnostics (sorry, deprecated) are classified even when
# Lake exits 0, since Lean emits these as warnings rather than errors.
#
# Exit codes:
#   0  all modules built cleanly — no errors and no classified warnings
#   1  API-normalization issue(s) only
#   2  mathematical-proof issue(s) only
#   3  both categories detected
#
# Testing / fixture mode:
#   LEAN_COMPAT_LOG_FIXTURE=/path/to/log — skip the lake build and
#   classify a pre-existing log file instead.
#   LEAN_COMPAT_BUILD_EXIT=N            — override the simulated exit code
#   (default 1 in fixture mode, allowing 0 for warning-only test fixtures).

set -euo pipefail

TARGETS=(
  "Siegel.SiegelZeroFreeElementary"
  "Siegel.SiegelZeroFreeRe1"
  "Siegel.SiegelZeroFree"
)

# ── Temporary files ───────────────────────────────────────────────────────────
BUILD_LOG=$(mktemp /tmp/lean-compat-XXXXXX.log)
api_lines=$(mktemp /tmp/lean-compat-api-XXXXXX.txt)
math_lines=$(mktemp /tmp/lean-compat-math-XXXXXX.txt)
trap 'rm -f "$BUILD_LOG" "$api_lines" "$math_lines"' EXIT

# ── Build phase ───────────────────────────────────────────────────────────────
if [[ -n "${LEAN_COMPAT_LOG_FIXTURE:-}" ]]; then
  cp "$LEAN_COMPAT_LOG_FIXTURE" "$BUILD_LOG"
  BUILD_EXIT="${LEAN_COMPAT_BUILD_EXIT:-1}"
  echo "=== Lean compatibility check [fixture mode] ==="
  echo "Log: $LEAN_COMPAT_LOG_FIXTURE  simulated exit: $BUILD_EXIT"
else
  export PATH="$HOME/.elan/bin:$PATH"
  echo "=== Lean compatibility check: ${TARGETS[*]} ==="

  # Acquire an exclusive lock BEFORE any cache retrieval or build operation.
  # This lock is shared with the lean-build workflow (same path) so concurrent
  # validation runs never touch .lake/ simultaneously.  The lock is held until
  # the script exits (fd 200 is closed on process exit).
  exec 200>/tmp/lean-lake-build.lock
  flock -x 200

  echo "Fetching cache …"
  # Cache fetch pre-populates build artifacts for speed.  A failure here is
  # non-fatal: the build will compile from source.  We deliberately do NOT
  # delete or modify the dependency tree on failure; that would leave the
  # workspace broken for any build that follows.
  lake exe cache get 2>&1 | tail -5 || echo "Cache fetch skipped — building from source"

  BUILD_EXIT=0
  for target in "${TARGETS[@]}"; do
    echo ""
    echo "Building $target …"
    set +e
    lake build "$target" 2>&1 | tee -a "$BUILD_LOG"
    code=${PIPESTATUS[0]}
    set -e
    if [[ $code -ne 0 ]]; then
      BUILD_EXIT=$code
    fi
  done
fi

# ── Classification (always runs — catches warnings on exit-0 builds) ──────────
#
# API-normalization patterns (checked first; matched lines excluded from math).
API_PATTERNS=(
  "unknown identifier"
  "unknown constant"
  "declaration '.*' not found"
  "no such file or directory"
  "unknown package"
  "import.*failed"
  "deprecated.*use"
  "has been renamed"
  "has been replaced"
  "function expected at"
)

# Mathematical-proof patterns (only applied to lines not already API-matched).
# 'sorry' is a Lean warning (exit 0) but indicates an explicit proof placeholder.
MATH_PATTERNS=(
  "unsolved goals"
  "tactic '.*' failed"
  "exact_mod_cast failed"
  "declaration uses 'sorry'"
  "type mismatch"
  "failed to synthesize"
)

for pat in "${API_PATTERNS[@]}"; do
  grep -nEi "$pat" "$BUILD_LOG" 2>/dev/null | cut -d: -f1 >> "$api_lines" || true
done
sort -un "$api_lines" -o "$api_lines"

for pat in "${MATH_PATTERNS[@]}"; do
  grep -nEi "$pat" "$BUILD_LOG" 2>/dev/null | cut -d: -f1 | while read -r ln; do
    if ! grep -qxF "$ln" "$api_lines"; then
      echo "$ln"
    fi
  done >> "$math_lines" || true
done
sort -un "$math_lines" -o "$math_lines"

api_count=$(wc -l < "$api_lines")
math_count=$(wc -l < "$math_lines")

# ── Success path ──────────────────────────────────────────────────────────────
if [[ $BUILD_EXIT -eq 0 && $api_count -eq 0 && $math_count -eq 0 ]]; then
  echo ""
  echo "✓ All modules built cleanly — no regressions detected."
  exit 0
fi

# ── Report ────────────────────────────────────────────────────────────────────
echo ""
echo "=== Failure / warning classification ==="

if [[ $api_count -gt 0 ]]; then
  echo "  [API-NORMALIZATION] $api_count affected line(s):"
  # Limit BEFORE the loop to avoid SIGPIPE under set -o pipefail.
  while IFS= read -r ln; do
    sed -n "${ln}p" "$BUILD_LOG" | sed 's/^/    /'
  done < <(head -10 "$api_lines")
fi

if [[ $math_count -gt 0 ]]; then
  echo "  [MATHEMATICAL-PROOF] $math_count affected line(s):"
  # Limit BEFORE the loop to avoid SIGPIPE under set -o pipefail.
  while IFS= read -r ln; do
    sed -n "${ln}p" "$BUILD_LOG" | sed 's/^/    /'
  done < <(head -10 "$math_lines")
fi

if [[ $api_count -eq 0 && $math_count -eq 0 ]]; then
  echo "  [UNCLASSIFIED] Build failed but no known pattern matched."
  echo "  Re-run manually: lake build ${TARGETS[*]}"
  exit 1
fi

echo ""
echo "Summary:"
echo "  Modules checked            : ${TARGETS[*]}"
echo "  API-normalization findings : $api_count line(s)"
echo "  Mathematical-proof findings: $math_count line(s)"

if [[ $api_count -gt 0 ]]; then
  echo ""
  echo "  → API-normalization: a Mathlib/Lean update renamed or removed an"
  echo "    identifier, or a deprecation warning signals upcoming breakage."
  echo "    Update lemma names and imports to match the current Mathlib API."
  echo "    No mathematical content needs to change."
fi

if [[ $math_count -gt 0 ]]; then
  echo ""
  echo "  → Mathematical-proof: a tactic or sorry was introduced (or exposed"
  echo "    by an API change).  Inspect the proof steps; this category may"
  echo "    require new mathematical work to close."
fi

if [[ $api_count -gt 0 && $math_count -gt 0 ]]; then
  exit 3
elif [[ $math_count -gt 0 ]]; then
  exit 2
else
  exit 1
fi
