import BealLevel26Foundations.Jacobian.FormalImmersionActual_26
import BealLevel26Foundations.Jacobian.J0_26_DecompActual
import BealLevel26Foundations.Jacobian.J0_26_Q_RankZeroActual_26
import BealLevel26Foundations.Jacobian.TwoSelmer_vs_SUnits_26
import BealLevel26Foundations.Mazur.EndgameScaffold
import BealLevel26Foundations.Ribet.HIdentifyActual_26
import Mathlib.Tactic

namespace BealLevel26Foundations.Mazur.Chabauty0Actual26

open BealLevel26Foundations.Jacobian.FormalImmersionActual26
open BealLevel26Foundations.Jacobian.J0_26_DecompActual
open BealLevel26Foundations.Jacobian.J0_26_Q_RankZeroActual26
open BealLevel26Foundations.Jacobian.TwoSelmer_vs_SUnits_26
open BealLevel26Foundations.Mazur.EndgameScaffold
open BealLevel26Foundations.Ribet.HIdentifyActual26

/-!
# v4.0.10 Chabauty-0 finite package (not Chabauty--Coleman)

This module packages already-inhabited finite data:

* `J0_26_Q_RankZero26.of_qExpansion.rankZero` — certified `26a × 26b`
  with Sage `certified_mwrank = 0` on both factors;
* formal-immersion *input* `M₃ = [[1, 1], [0, 2]]`;
* `fourCuspsForallCuspPoints` over cusp-labeled points;
* `¬ fourCuspsForallAllKinds` (`ellipticJ` is a counterexample);
* `sUnitAudit26.card = 8`.

It is not a Chabauty--Coleman theorem, not a theorem that
`X₀(26)(ℚ)` is finite, and not `fourCusps → ¬ ExistsNoncuspidal`.
The last implication stays uninhabitable
(`HGeomForbidActual_26.hGeomForbid_typed_is_uninhabitable`).

`remainingGeometricForbid` records that this package *coexists*
with `ExistsNoncuspidalLevel26FreyPoint` (the v4.0.7-j elliptic
`j`).  That is the remaining geometric gate: a Mathlib
noncuspidal point of `X₀(26)`.

Sources remain the frozen v1.4.0 ledger SHA-256
`0259fe957cc348b7286e233ce717fac47c30ad174b05e8e1c5fb70626f511151`.
No new certificate.  Eight S-units remain not genuine `Sel₂`
(`sUnitAudit26_is_not_genuine_2Selmer`).  This file does not add
`theorem BealTheorem`.
-/

/-- Finite Chabauty-0 *input* package.  Not Chabauty--Coleman. -/
def chabauty0Package : Prop :=
  J0_26_Q_RankZero26.of_qExpansion.rankZero ∧
    FormalImmersionAtTwo26.of_qExpansion.input = !![1, 1; 0, 2] ∧
    fourCuspsForallCuspPoints ∧
    ¬ fourCuspsForallAllKinds ∧
    sUnitAudit26.card = 8

theorem chabauty0Package.certified : chabauty0Package :=
  ⟨J0_26_Q_RankZero26.of_qExpansion_replaces_premise,
    FormalImmersionAtTwo26.of_qExpansion.input_eq,
    fourCuspsForallCuspPoints.certified,
    fourCuspsForallAllKinds_is_false,
    sUnitAudit26_retains_all_eight⟩

/-- The finite package does not Lean-negate an elliptic `j`. -/
def remainingGeometricForbid : Prop :=
  chabauty0Package ∧ ExistsNoncuspidalLevel26FreyPoint

theorem remainingGeometricForbid.certified :
    remainingGeometricForbid :=
  ⟨chabauty0Package.certified, hIdentify_of_displayed_witness⟩

#print axioms chabauty0Package.certified
#print axioms remainingGeometricForbid.certified

end BealLevel26Foundations.Mazur.Chabauty0Actual26
