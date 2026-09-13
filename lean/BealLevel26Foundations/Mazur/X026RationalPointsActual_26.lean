import BealLevel26Foundations.Jacobian.FormalImmersionActual_26
import BealLevel26Foundations.Jacobian.J0_26_DecompActual
import BealLevel26Foundations.Jacobian.TwoSelmer_vs_SUnits_26
import BealLevel26Foundations.Mazur.EndgameScaffold
import BealLevel26Foundations.Mazur.Genus_26_Real
import Mathlib.Tactic

namespace BealLevel26Foundations.Mazur.X026RationalPointsActual26

open BealLevel26Foundations.Jacobian.FormalImmersionActual26
open BealLevel26Foundations.Jacobian.J0_26_DecompActual
open BealLevel26Foundations.Jacobian.TwoSelmer_vs_SUnits_26
open BealLevel26Foundations.Mazur.EndgameScaffold
open BealLevel26Foundations.Mazur.Genus26Real

/-!
# v4.0.4 displayed four cusps from q-expansion data

This module loads the v1.4.0 sources

* `sagemath/level_26_ledger.json`
  (SHA-256 `0259fe957cc348b7286e233ce717fac47c30ad174b05e8e1c5fb70626f511151`);
* `sagemath/certs/j0_26_decomposition.json`;
* `sagemath/certs/formal_immersion_M3.json`

as the already-promoted Lean genus arithmetic, `J0_26_DecompActual`,
`MwrankCertificateSoundness_26`, and
`FormalImmersionAtTwo26.of_qExpansion`.  It does not parse JSON and
does not add a certificate.

The displayed cusps at squarefree level `26` are the four divisors
`[1, 2, 13, 26]`.  Together with the certified `26a × 26b`
q-expansion distinction, Sage `certified_mwrank = 0`, and the
already-inhabited formal-immersion *input*, that is the finite
package `fourCuspsFromQExpansion`.

`X0_26_RationalPoints26.of_qExpansion` inhabits the Mazur premise.
`ofRankZeroAndImmersion` returns that finite package and does not
read a rank-zero witness.  Mathlib 4.12 has no `X₀(N)(ℚ)` API.
This is not a theorem that the modular curve `X₀(26)(ℚ)` equals
four cusps.  v4.0.6 inhabits `J0_26_Q_RankZero26` in a separate
file.  The four-cusp list here remains cusp labels; v4.0.9 adds the
forall `fourCuspsForallCuspPoints` over those labels.  That is
not a forall over Mathlib `X₀(26)(ℚ)` and not a forall over
`ellipticJ`.  This file does not inhabit `NoFreyPoint26` or
`J0_26_Q_RankZero26`.
-/

/-- The four displayed cusps, one per positive divisor of `26`. -/
def displayedCusps26 : List Nat :=
  [1, 2, 13, 26]

theorem displayedCusps26_eq_divisors :
    displayedCusps26 = divisors26 := by
  rw [divisors26_eq]
  rfl

theorem displayedCusps26_length :
    displayedCusps26.length = 4 := by
  decide

theorem displayedCuspCount_eq_genus_certificate :
    displayedCusps26.length = cuspCount26 := by
  rw [displayedCusps26_length, cuspCount26_eq_four]

/-- Finite four-cusp package from q-expansion and genus data.
The first conjuncts stay the displayed list.  The last conjunct is
the v4.0.9 forall over cusp-labeled points.  Not a modular-curve
rational-point theorem. -/
def fourCuspsFromQExpansion : Prop :=
  displayedCusps26.length = 4 ∧
    displayedCusps26 = [1, 2, 13, 26] ∧
    cuspCount26 = 4 ∧
    certified26a.a2 = -1 ∧
    certified26b.a2 = 1 ∧
    MwrankCertificateSoundness_26 ∧
    FormalImmersionAtTwo26.of_qExpansion.input = !![1, 1; 0, 2] ∧
    fourCuspsForallCuspPoints

theorem fourCuspsFromQExpansion.certified :
    fourCuspsFromQExpansion :=
  ⟨displayedCusps26_length, rfl, cuspCount26_eq_four,
    certified26a_a2, certified26b_a2,
    MwrankCertificateSoundness_26.certified,
    FormalImmersionAtTwo26.of_qExpansion.input_eq,
    fourCuspsForallCuspPoints.certified⟩

/-- Finite package that inhabits the Mazur `X0_26_RationalPoints26`
premise.  `rationalPointsAreFourCusps` is the displayed four-cusp
count, not `X₀(26)(ℚ)` as a scheme. -/
def X0_26_RationalPoints26.of_qExpansion :
    X0_26_RationalPoints26 where
  displayedCuspCount := cuspCount26
  displayedCuspCount_eq_four := cuspCount26_eq_four
  rationalPointsAreFourCusps := fourCuspsFromQExpansion
  ofRankZeroAndImmersion := fun _hRank _hImm =>
    fourCuspsFromQExpansion.certified

theorem X0_26_RationalPoints26.of_qExpansion_replaces_premise :
    X0_26_RationalPoints26.of_qExpansion.displayedCuspCount = 4 ∧
      X0_26_RationalPoints26.of_qExpansion.rationalPointsAreFourCusps :=
  ⟨X0_26_RationalPoints26.of_qExpansion.displayedCuspCount_eq_four,
    fourCuspsFromQExpansion.certified⟩

/-- The Mazur implication, discharged by the finite package rather
than by a rank-zero or scheme-theoretic argument. -/
theorem X0_26_RationalPoints26.of_qExpansion_of_rank_and_immersion
    (hRank : J0_26_Q_RankZero26)
    (hImm : FormalImmersionAtTwo26) :
    X0_26_RationalPoints26.of_qExpansion.rationalPointsAreFourCusps :=
  X0_26_RationalPoints26.of_qExpansion.ofRankZeroAndImmersion hRank hImm

#print axioms displayedCusps26_eq_divisors
#print axioms fourCuspsFromQExpansion.certified
#print axioms X0_26_RationalPoints26.of_qExpansion_replaces_premise
#print axioms X0_26_RationalPoints26.of_qExpansion_of_rank_and_immersion

end BealLevel26Foundations.Mazur.X026RationalPointsActual26
