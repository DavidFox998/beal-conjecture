import BealLevel26Foundations.FiniteEvidence
import BealLevel26Foundations.Jacobian.FormalImmersionActual_26
import BealLevel26Foundations.Jacobian.J0_26_DecompActual
import BealLevel26Foundations.Jacobian.J0_26_Q_RankZeroActual_26
import BealLevel26Foundations.Jacobian.TwoSelmer_vs_SUnits_26
import BealLevel26Foundations.Mazur.EndgameScaffold
import BealLevel26Foundations.Mazur.X026RationalPointsActual_26
import BealLevel26Foundations.Ribet.HIdentifyActual_26
import Mathlib.Tactic

namespace BealLevel26Foundations.Mazur.HGeomForbidActual26

open BealLevel26Foundations.FiniteEvidence
open BealLevel26Foundations.Jacobian.FormalImmersionActual26
open BealLevel26Foundations.Jacobian.J0_26_DecompActual
open BealLevel26Foundations.Jacobian.J0_26_Q_RankZeroActual26
open BealLevel26Foundations.Jacobian.TwoSelmer_vs_SUnits_26
open BealLevel26Foundations.Mazur.EndgameScaffold
open BealLevel26Foundations.Mazur.X026RationalPointsActual26
open BealLevel26Foundations.Ribet.HIdentifyActual26

/-!
# v4.0.9 typed `hGeomForbid` remains uninhabitable after the forall retype

The geometric content of `hGeomForbid` is: the four rational cusps of
`X₀(26)` exclude a Frey curve as a *noncuspidal* modular-curve point.
Mathlib 4.12 has no `X₀(26)` point API.  The finite encoding available
here is constructor inequality of displayed point *kinds*:

`DisplayedX026PointKind.ellipticJ (c₄³, Δ) ≠ cuspDivisor n`

for `n ∈ [1, 2, 13, 26]`.  That is not integer membership
`26 ∉ [1, 2, 13, 26]`.  The four-cusp list stays as cusps
(`X0_26_RationalPoints26.of_qExpansion`).  Formal immersion and
rank-zero inputs stay the already-inhabited
`FormalImmersionAtTwo26.of_qExpansion` and
`J0_26_Q_RankZero26.of_qExpansion`.

Constructor inequality is how v4.0.7-j *inhabits*
`ExistsNoncuspidalLevel26FreyPoint` (`HIdentify26.of_qExpansion`).
It does not Lean-negate that proposition.  The typed EndgameScaffold
hypothesis

`fourCusps → ¬ ExistsNoncuspidalLevel26FreyPoint`

is therefore `True → ¬True` and is uninhabitable.  v4.0.9 retypes
four cusps as `fourCuspsForallCuspPoints` over cusp-labeled points.
That forall is true and does not quantify over `ellipticJ`.  The
same-type forall `fourCuspsForallAllKinds` is false.  Closing
`∀ cusp-points → ¬ ExistsNoncuspidal` would still put `False` in
the kernel.  This file records that finite package and proves
`hGeomForbid_typed_is_uninhabitable`.  It does not inhabit typed
`hGeomForbid`, and it does not add `theorem BealTheorem`.

Sources remain the frozen v1.4.0 ledger SHA-256
`0259fe957cc348b7286e233ce717fac47c30ad174b05e8e1c5fb70626f511151`.
No new certificate.  Eight S-units remain not genuine `Sel₂`
(`sUnitAudit26_is_not_genuine_2Selmer`).
-/

/-- An elliptic `j` is a different displayed-point constructor from
each of the four cusp-divisor labels.  Not integer membership. -/
theorem ellipticJ_ne_four_cusp_labels (num den : Int) :
    DisplayedX026PointKind.ellipticJ num den ≠
      DisplayedX026PointKind.cuspDivisor 1 ∧
      DisplayedX026PointKind.ellipticJ num den ≠
        DisplayedX026PointKind.cuspDivisor 2 ∧
      DisplayedX026PointKind.ellipticJ num den ≠
        DisplayedX026PointKind.cuspDivisor 13 ∧
      DisplayedX026PointKind.ellipticJ num den ≠
        DisplayedX026PointKind.cuspDivisor 26 :=
  ⟨ellipticJ_ne_cuspDivisor num den 1,
    ellipticJ_ne_cuspDivisor num den 2,
    ellipticJ_ne_cuspDivisor num den 13,
    ellipticJ_ne_cuspDivisor num den 26⟩

/-- Finite record of constructor inequality plus the already-inhabited
q-expansion packages.  This is *not*
`fourCusps → ¬ ExistsNoncuspidal`. -/
structure HGeomForbid26 where
  ellipticJNeCusps :
    ∀ num den : Int,
      DisplayedX026PointKind.ellipticJ num den ≠
          DisplayedX026PointKind.cuspDivisor 1 ∧
        DisplayedX026PointKind.ellipticJ num den ≠
          DisplayedX026PointKind.cuspDivisor 2 ∧
        DisplayedX026PointKind.ellipticJ num den ≠
          DisplayedX026PointKind.cuspDivisor 13 ∧
        DisplayedX026PointKind.ellipticJ num den ≠
          DisplayedX026PointKind.cuspDivisor 26
  fourCusps : displayedCusps26 = [1, 2, 13, 26]
  fourCuspCount : displayedCusps26.length = 4
  fourCuspsForall : fourCuspsForallCuspPoints
  notAllKinds : ¬ fourCuspsForallAllKinds
  formalImmersion :
    FormalImmersionAtTwo26.of_qExpansion.input = !![1, 1; 0, 2]
  rankZeroProduct : J0_26_Q_RankZero26.of_qExpansion.rankZero
  a2_26a : certified26a.a2 = -1
  a2_26b : certified26b.a2 = 1
  mwrank : MwrankCertificateSoundness_26
  notGenuineSelmer : sUnitAudit26.card = 8 ∧
    sUnitAudit26 ≠ ({⟨0, by decide⟩} : Finset SUnitIndex)

def HGeomForbid26.of_qExpansion : HGeomForbid26 where
  ellipticJNeCusps := ellipticJ_ne_four_cusp_labels
  fourCusps := rfl
  fourCuspCount := displayedCusps26_length
  fourCuspsForall := fourCuspsForallCuspPoints.certified
  notAllKinds := fourCuspsForallAllKinds_is_false
  formalImmersion := FormalImmersionAtTwo26.of_qExpansion.input_eq
  rankZeroProduct := J0_26_Q_RankZero26.of_qExpansion_replaces_premise
  a2_26a := certified26a_a2
  a2_26b := certified26b_a2
  mwrank := MwrankCertificateSoundness_26.certified
  notGenuineSelmer := sUnitAudit26_is_not_genuine_2Selmer

theorem HGeomForbid26.of_qExpansion_replaces_premise :
    displayedCusps26 = [1, 2, 13, 26] ∧
      fourCuspsForallCuspPoints ∧
      ¬ fourCuspsForallAllKinds ∧
      FormalImmersionAtTwo26.of_qExpansion.input = !![1, 1; 0, 2] ∧
      J0_26_Q_RankZero26.of_qExpansion.rankZero ∧
      MwrankCertificateSoundness_26 ∧
      (∀ num den : Int,
        DisplayedX026PointKind.ellipticJ num den ≠
          DisplayedX026PointKind.cuspDivisor 26) :=
  ⟨HGeomForbid26.of_qExpansion.fourCusps,
    HGeomForbid26.of_qExpansion.fourCuspsForall,
    HGeomForbid26.of_qExpansion.notAllKinds,
    HGeomForbid26.of_qExpansion.formalImmersion,
    HGeomForbid26.of_qExpansion.rankZeroProduct,
    HGeomForbid26.of_qExpansion.mwrank,
    fun num den => (ellipticJ_ne_four_cusp_labels num den).2.2.2⟩

/-- Typed EndgameScaffold `hGeomForbid` cannot be supplied: an
elliptic `j` already inhabits `ExistsNoncuspidal`. -/
theorem hGeomForbid_typed_is_uninhabitable :
    ¬ (X0_26_RationalPoints26.of_qExpansion.rationalPointsAreFourCusps →
        ¬ ExistsNoncuspidalLevel26FreyPoint) := by
  intro hId
  exact hId fourCuspsFromQExpansion.certified
    hIdentify_of_displayed_witness

/-- Finite package used by the constructor-inequality record.  The
remaining geometric gate is still a Mathlib noncuspidal `X₀(26)`
point, not this typed implication. -/
def hGeomForbidFinitePackage : Prop :=
  (∀ num den : Int,
      DisplayedX026PointKind.ellipticJ num den ≠
        DisplayedX026PointKind.cuspDivisor 1 ∧
        DisplayedX026PointKind.ellipticJ num den ≠
          DisplayedX026PointKind.cuspDivisor 2 ∧
        DisplayedX026PointKind.ellipticJ num den ≠
          DisplayedX026PointKind.cuspDivisor 13 ∧
        DisplayedX026PointKind.ellipticJ num den ≠
          DisplayedX026PointKind.cuspDivisor 26) ∧
    displayedCusps26 = [1, 2, 13, 26] ∧
    displayedCusps26.length = 4 ∧
    fourCuspsForallCuspPoints ∧
    ¬ fourCuspsForallAllKinds ∧
    ExistsNoncuspidalLevel26FreyPoint ∧
    ¬ (X0_26_RationalPoints26.of_qExpansion.rationalPointsAreFourCusps →
        ¬ ExistsNoncuspidalLevel26FreyPoint) ∧
    FormalImmersionAtTwo26.of_qExpansion.input = !![1, 1; 0, 2] ∧
    J0_26_Q_RankZero26.of_qExpansion.rankZero ∧
    MwrankCertificateSoundness_26 ∧
    sUnitAudit26.card = 8 ∧
    sUnitAudit26 ≠ ({⟨0, by decide⟩} : Finset SUnitIndex)

theorem hGeomForbidFinitePackage.certified :
    hGeomForbidFinitePackage :=
  ⟨ellipticJ_ne_four_cusp_labels,
    rfl,
    displayedCusps26_length,
    fourCuspsForallCuspPoints.certified,
    fourCuspsForallAllKinds_is_false,
    hIdentify_of_displayed_witness,
    hGeomForbid_typed_is_uninhabitable,
    FormalImmersionAtTwo26.of_qExpansion.input_eq,
    J0_26_Q_RankZero26.of_qExpansion_replaces_premise,
    MwrankCertificateSoundness_26.certified,
    sUnitAudit26_retains_all_eight,
    sUnitAudit26_not_singleton⟩

def remainingGeometricForbid : Prop :=
  hGeomForbidFinitePackage ∧
    sUnitAudit26.card = 8 ∧
    sUnitAudit26 ≠ ({⟨0, by decide⟩} : Finset SUnitIndex)

theorem remainingGeometricForbid.certified :
    remainingGeometricForbid :=
  ⟨hGeomForbidFinitePackage.certified,
    sUnitAudit26_retains_all_eight,
    sUnitAudit26_not_singleton⟩

#print axioms ellipticJ_ne_four_cusp_labels
#print axioms HGeomForbid26.of_qExpansion_replaces_premise
#print axioms hGeomForbid_typed_is_uninhabitable
#print axioms remainingGeometricForbid.certified

end BealLevel26Foundations.Mazur.HGeomForbidActual26
