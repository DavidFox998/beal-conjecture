#!/usr/bin/env bash
set -euo pipefail

final=lean/Beal/Final/ConditionalBealTheorem.lean
selmer=lean/Beal/Mazur/Gates/Descent_26_SelmerCardinality.lean
geometry=lean/Beal/Modular/Level26_GeometryBridge.lean

for file in "$final" "$selmer" "$geometry" README.md CITATION.cff; do
  test -f "$file"
done

for premise in \
  J0DecompositionSoundness_26 \
  MwrankCertificateSoundness_26 \
  FormalImmersionSoundness_26 \
  FreyCurveExists \
  LevelLowering_26
do
  count=$(grep -c "(h_.*: $premise" "$final" || true)
  test "$count" -eq 1 || {
    echo "FAIL: expected exactly one final premise named $premise"
    exit 1
  }
done

test "$(grep -c '^    (h_' "$final")" -eq 5 || {
  echo "FAIL: ConditionalBealTheorem must expose exactly five theorem arguments"
  exit 1
}

grep -q 'QExpansionCotangentCompatibilityAtInfinity26' "$geometry"
grep -q 'qExpansionCotangentMatrix26_eq_M3' "$geometry"
grep -q 'BealLevel26Foundations.M3Explicit' \
  lean/Beal/Mazur/Gates/FormalImmersion_26_Cert.lean
grep -q 'abstractTwoSelmer_card_eq_one_of_ledger_equiv' "$selmer"
grep -qi 'conditionally complete' README.md
grep -q 'v11.0.0' CITATION.cff
grep -q '10.5281/zenodo.22272714' README.md
grep -q '10.5281/zenodo.22284436' README.md

if grep -RInE \
  --exclude-dir=.git --exclude-dir=.lake \
  '^[[:space:]]*(axiom|sorry|admit)([[:space:]]|$)|:[[:space:]]*True[[:space:]]*:=' \
  --include='*.lean' lean/Beal/Final lean/Beal/Modular/Level26_GeometryBridge.lean \
  "$selmer"; then
  echo "FAIL: placeholder or domain axiom found in the v11 endpoint"
  exit 1
fi

echo "OK: v11 exposes five named premises and the exact geometric boundary"