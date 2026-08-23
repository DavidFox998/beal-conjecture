#!/usr/bin/env bash
# test-lean-compat-check.sh — Fixture-based tests for lean-compat-check.sh
#
# Creates synthetic build-log fixtures and asserts the classifier exits with
# the correct code in each case.  No Lean/Lake installation required.
#
# Exit codes:
#   0  all tests passed
#   1  one or more tests failed

set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
CHECKER="$SCRIPT_DIR/lean-compat-check.sh"

pass=0
fail=0

# Run with BUILD_EXIT=1 (default fixture mode — simulates a failed build)
run_test() {
  local name="$1"
  local log_content="$2"
  local expected_exit="$3"
  local build_exit="${4:-1}"   # optional 4th arg: simulated lake exit code

  local fixture
  fixture=$(mktemp /tmp/lean-compat-fixture-XXXXXX.log)
  printf '%s\n' "$log_content" > "$fixture"

  set +e
  LEAN_COMPAT_LOG_FIXTURE="$fixture" \
  LEAN_COMPAT_BUILD_EXIT="$build_exit" \
  bash "$CHECKER" > /dev/null 2>&1
  actual_exit=$?
  set -e

  rm -f "$fixture"

  if [[ $actual_exit -eq $expected_exit ]]; then
    echo "  PASS  [$name]  expected exit $expected_exit, got $actual_exit"
    pass=$((pass + 1))
  else
    echo "  FAIL  [$name]  expected exit $expected_exit, got $actual_exit"
    fail=$((fail + 1))
  fi
}

echo "=== lean-compat-check.sh classifier tests ==="
echo ""

# ── API-normalization failures (build exit 1) → exit 1 ───────────────────────
run_test "api-only: unknown identifier" \
  "error: unknown identifier 'Real.rpow_le_rpow_of_exponent_le'" \
  1

run_test "api-only: deprecated use" \
  "warning: deprecated: use 'Real.rpow_natCast' instead of 'Real.rpow_nat_cast'" \
  1

run_test "api-only: declaration not found" \
  "error: declaration 'Antitone.tendsto_alternating_series_of_tendsto_zero' not found" \
  1

run_test "api-only: import failed" \
  "error: import Mathlib.Analysis.SpecificLimits.Normed failed" \
  1

# ── Mathematical-proof failures (build exit 1) → exit 2 ──────────────────────
run_test "math-only: unsolved goals" \
  "error: unsolved goals
  ⊢ 0 < ∑' k, eta_pair σ k" \
  2

run_test "math-only: tactic failed" \
  "error: tactic 'exact' failed, the type doesn't match
  ⊢ 0 ≤ eta_pair σ k" \
  2

run_test "math-only: type mismatch" \
  "error: type mismatch
  term has type ℕ
  expected type ℝ" \
  2

# ── application type mismatch is math-only (no overlap with API bucket) ───────
run_test "math-only: application type mismatch is math-only" \
  "error: application type mismatch
  function has type α → β
  argument has type γ" \
  2

# ── Both categories (build exit 1) → exit 3 ──────────────────────────────────
run_test "both: unknown identifier + unsolved goals" \
  "error: unknown identifier 'Real.rpow_le_rpow_of_exponent_le'
error: unsolved goals
  ⊢ 0 < ∑' k, eta_pair σ k" \
  3

# ── API line wins over math when both tokens on same line ─────────────────────
run_test "api-wins: line with both api and math tokens" \
  "error: unknown identifier 'X'; type mismatch on same line" \
  1

# ── Unclassified error → exit 1 ───────────────────────────────────────────────
run_test "unclassified: generic error" \
  "error: something completely unrecognized happened" \
  1

# ── 11-line cascades — exercises the head-before-loop SIGPIPE fix ─────────────
run_test "api-only: 11-line cascade stays exit 1" \
  "$(for i in $(seq 1 11); do echo "error: unknown identifier 'Lemma$i'"; done)" \
  1

run_test "math-only: 11-line cascade stays exit 2" \
  "$(for i in $(seq 1 11); do echo "error: unsolved goals goal$i"; done)" \
  2

run_test "both: 22-line cascade stays exit 3" \
  "$(for i in $(seq 1 11); do echo "error: unknown identifier 'Lemma$i'"; done
   for i in $(seq 1 11); do echo "error: unsolved goals goal$i"; done)" \
  3

# ── Warning-mode diagnostics on exit-0 builds ────────────────────────────────
# Lean emits sorry as a warning (exit 0), not an error; the checker must still
# catch it and exit 2.
run_test "math-only: sorry warning on exit-0 build" \
  "warning: declaration uses 'sorry'" \
  2 0   # build_exit=0

# Deprecation warnings appear on otherwise-successful builds; exit 1.
run_test "api-only: deprecated warning on exit-0 build" \
  "warning: deprecated: use 'Real.rpow_natCast' instead of 'Real.rpow_nat_cast'" \
  1 0   # build_exit=0

# Both sorry and deprecated in one exit-0 build → exit 3.
run_test "both: sorry + deprecated on exit-0 build" \
  "warning: declaration uses 'sorry'
warning: deprecated: use 'Real.rpow_natCast' instead" \
  3 0   # build_exit=0

# Clean exit-0 build with no classified diagnostics → exit 0.
run_test "clean: exit-0 build with no diagnostics" \
  "Build complete. No issues found." \
  0 0   # build_exit=0

echo ""
echo "Results: $pass passed, $fail failed"
if [[ $fail -gt 0 ]]; then
  exit 1
fi
exit 0
