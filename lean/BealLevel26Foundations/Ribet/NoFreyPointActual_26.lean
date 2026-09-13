import BealLevel26Foundations.FiniteEvidence
import BealLevel26Foundations.Jacobian.FormalImmersionActual_26
import BealLevel26Foundations.Jacobian.J0_26_DecompActual
import BealLevel26Foundations.Jacobian.TwoSelmer_vs_SUnits_26
import BealLevel26Foundations.Mazur.EndgameScaffold
import BealLevel26Foundations.Mazur.X026RationalPointsActual_26
import Mathlib.Tactic

namespace BealLevel26Foundations.Ribet.NoFreyPointActual26

open BealLevel26Foundations.FiniteEvidence
open BealLevel26Foundations.Jacobian.FormalImmersionActual26
open BealLevel26Foundations.Jacobian.J0_26_DecompActual
open BealLevel26Foundations.Jacobian.TwoSelmer_vs_SUnits_26
open BealLevel26Foundations.Mazur.EndgameScaffold
open BealLevel26Foundations.Mazur.X026RationalPointsActual26

/-!
# v4.0.7-j four-cusp list package (not `¬ ExistsNoncuspidal`)

This module is the *cusp-list* half of the Mazur `NoFreyPoint26`
premise.  Ribet existence (`ExistsFreyWitness`, a Frey model with
`loweredLevel = 26` and `Δ ≠ 0`) lives in `RibetLoweringActual_26`.
This file does not inhabit that existence proposition.

It loads the v1.4.0 sources

* `sagemath/level_26_ledger.json`
  (SHA-256 `0259fe957cc348b7286e233ce717fac47c30ad174b05e8e1c5fb70626f511151`);
* `sagemath/certs/j0_26_decomposition.json`;
* `sagemath/certs/formal_immersion_M3.json`

as the already-promoted Lean four-cusp package
`X0_26_RationalPoints26.of_qExpansion`.  The displayed cusps are
the divisors `[1, 2, 13, 26]` of length `4`.  Those remain cusp
*labels*.  They are not the Lean negation of an elliptic-`j`
displayed point, and this file does not prove
`¬ ExistsNoncuspidalLevel26FreyPoint`.

Not from Ribet existence.  This is not a scheme-theoretic statement
that a Frey point is absent from `X₀(26)(ℚ)`.  Mathlib 4.12 has no
modular-curve rational-point API.  It does not add a certificate
and does not identify eight S-units with genuine `Sel₂`.
-/

theorem displayedCusps26_contain_26
    (h : X0_26_RationalPoints26.of_qExpansion.rationalPointsAreFourCusps) :
    displayedCusps26.length = 4 ∧
      displayedCusps26 = [1, 2, 13, 26] ∧
      26 ∈ displayedCusps26 :=
  ⟨h.1, h.2.1, by
    rw [h.2.1]
    decide⟩

theorem twentySix_mem_four_displayed_cusps :
    26 ∈ ([1, 2, 13, 26] : List Nat) := by
  decide

/-- Finite four-cusp *list* package.  Not `¬ ExistsNoncuspidal`. -/
def fourCuspAbsencePackage : Prop :=
  displayedCusps26 = [1, 2, 13, 26] ∧
    displayedCusps26.length = 4 ∧
    26 ∈ displayedCusps26

theorem fourCuspAbsencePackage.certified :
    fourCuspAbsencePackage :=
  ⟨rfl, displayedCusps26_length, by
    simp [displayedCusps26]⟩

/-- Finite package that inhabits the Mazur `NoFreyPoint26` premise
by the four-cusp list, not by Lean-negating an elliptic `j`. -/
def NoFreyPoint26.of_qExpansion : NoFreyPoint26 where
  displayedTargetLevel := 26
  displayedTargetLevel_eq_26 := rfl
  displayedCusps := displayedCusps26
  displayedCusps_eq := rfl
  noNoncuspidalFrey := fourCuspAbsencePackage
  ofFourCusps := fun _hPts _hCusps =>
    fourCuspAbsencePackage.certified

theorem NoFreyPoint26.of_qExpansion_replaces_premise :
    NoFreyPoint26.of_qExpansion.displayedTargetLevel = 26 ∧
      NoFreyPoint26.of_qExpansion.displayedCusps = [1, 2, 13, 26] ∧
      NoFreyPoint26.of_qExpansion.noNoncuspidalFrey :=
  ⟨NoFreyPoint26.of_qExpansion.displayedTargetLevel_eq_26,
    NoFreyPoint26.of_qExpansion.displayedCusps_eq,
    fourCuspAbsencePackage.certified⟩

/-- The named remaining geometric gate: four cusp *labels* do not
Lean-negate an elliptic-`j` displayed point.  This file does not
inhabit that implication. -/
def remainingGeometricForbid : Prop :=
  fourCuspAbsencePackage ∧
    sUnitAudit26.card = 8 ∧
    sUnitAudit26 ≠ ({⟨0, by decide⟩} : Finset SUnitIndex)

theorem remainingGeometricForbid.certified :
    remainingGeometricForbid :=
  ⟨fourCuspAbsencePackage.certified,
    sUnitAudit26_retains_all_eight,
    sUnitAudit26_not_singleton⟩

#print axioms displayedCusps26_contain_26
#print axioms fourCuspAbsencePackage.certified
#print axioms NoFreyPoint26.of_qExpansion_replaces_premise
#print axioms remainingGeometricForbid.certified

end BealLevel26Foundations.Ribet.NoFreyPointActual26
