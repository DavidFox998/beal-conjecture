import BealLevel26Foundations.FiniteEvidence
import BealLevel26Foundations.Jacobian.J0_26_DecompActual
import BealLevel26Foundations.Jacobian.J0_26_Q_RankZeroActual_26
import BealLevel26Foundations.Jacobian.TwoSelmer_vs_SUnits_26
import BealLevel26Foundations.Mazur.EndgameScaffold
import BealLevel26Foundations.Mazur.X026RationalPointsActual_26
import BealLevel26Foundations.Ribet.NoFreyPointActual_26
import BealLevel26Foundations.Ribet.RibetLoweringActual_26
import Mathlib.Tactic

namespace BealLevel26Foundations.Ribet.HIdentifyActual26

open BealLevel26Foundations.FiniteEvidence
open BealLevel26Foundations.Jacobian.J0_26_DecompActual
open BealLevel26Foundations.Jacobian.J0_26_Q_RankZeroActual26
open BealLevel26Foundations.Jacobian.TwoSelmer_vs_SUnits_26
open BealLevel26Foundations.Mazur.EndgameScaffold
open BealLevel26Foundations.Mazur.X026RationalPointsActual26
open BealLevel26Foundations.Ribet.NoFreyPointActual26
open BealLevel26Foundations.Ribet.RibetLoweringActual26

/-!
# v4.0.7-hIdentify-j typed `hIdentify` by finite `j`

The geometric content of `hIdentify` is: a Frey curve attached to a
primitive Beal solution, after Ribet lowering to level `26`, gives a
*noncuspidal* rational point of `X₀(26)`.  Mathlib 4.12 has no
modular-curve point API.  The finite encoding available here is the
`j`-ratio `(c₄³ : Δ)` of a displayed Weierstrass model, packed as
`DisplayedX026PointKind.ellipticJ`, which is a different constructor
from the four cusp-divisor labels `[1, 2, 13, 26]`.

That is *not* the integer membership `26 ∉ [1, 2, 13, 26]`.  The
four-cusp list stays as cusps (`X0_26_RationalPoints26.of_qExpansion`).
This file does not add a certificate and does not identify eight
S-units with genuine cohomological `Sel₂`
(`sUnitAudit26_is_not_genuine_2Selmer`).  Sources remain the frozen
v1.4.0 ledger SHA-256
`0259fe957cc348b7286e233ce717fac47c30ad174b05e8e1c5fb70626f511151`.

`hIdentify` therefore packs a level-26 Frey `j` as an elliptic
displayed point.  It does not construct a point of a Mathlib
`X₀(26)`.  Four cusp labels still do not Lean-negate that elliptic
kind (`hGeomForbid` remains the named remaining geometric gate).
This module does not add `theorem BealTheorem`.

v4.0.10 does **not** replace this packing by a vacuous residual
representation, a vacuous Ribet existence proposition, or a
`trivial` witness.  Mathlib 4.12 has no residual Galois
representation, no genuine Ribet lowering theorem, and no
`FreyWeierstrassModel` constructor of that shape.
`ExistsNoncuspidalLevel26FreyPoint` remains a
`NoncuspidalLevel26FreyPoint` (`source`, elliptic `j`,
constructor inequality).
-/

/-- Pack a Frey `j`-ratio as a displayed elliptic point.  Constructor
inequality, not `26 ∉ fourCuspList`. -/
def noncuspidalPointOf (w : Level26FreyCurveWitness) :
    NoncuspidalLevel26FreyPoint where
  source := w
  kind := DisplayedX026PointKind.ellipticJ
    (freyJNumerator w) (freyJDenominator w)
  kind_eq := rfl
  kind_ne_cusp_divisors :=
    ⟨ellipticJ_ne_cuspDivisor _ _ 1,
      ellipticJ_ne_cuspDivisor _ _ 2,
      ellipticJ_ne_cuspDivisor _ _ 13,
      ellipticJ_ne_cuspDivisor _ _ 26⟩

/-- Typed EndgameScaffold `hIdentify`: a displayed Frey witness
gives an elliptic-`j` point, not a cusp-divisor label. -/
def hIdentify :
    ExistsFreyWitness → ExistsNoncuspidalLevel26FreyPoint :=
  fun ⟨w⟩ => ⟨noncuspidalPointOf w⟩

/-- Finite record of the q-expansion sources used with that packing. -/
structure HIdentify26 where
  identify : ExistsFreyWitness → ExistsNoncuspidalLevel26FreyPoint
  a2_26a : certified26a.a2 = -1
  a2_26b : certified26b.a2 = 1
  mwrank : MwrankCertificateSoundness_26
  fourCusps : displayedCusps26 = [1, 2, 13, 26]
  fourCuspCount : displayedCusps26.length = 4
  rankZeroProduct : J0_26_Q_RankZero26.of_qExpansion.rankZero
  notGenuineSelmer : sUnitAudit26.card = 8 ∧
    sUnitAudit26 ≠ ({⟨0, by decide⟩} : Finset SUnitIndex)

def HIdentify26.of_qExpansion : HIdentify26 where
  identify := hIdentify
  a2_26a := certified26a_a2
  a2_26b := certified26b_a2
  mwrank := MwrankCertificateSoundness_26.certified
  fourCusps := rfl
  fourCuspCount := displayedCusps26_length
  rankZeroProduct := J0_26_Q_RankZero26.of_qExpansion_replaces_premise
  notGenuineSelmer := sUnitAudit26_is_not_genuine_2Selmer

theorem HIdentify26.of_qExpansion_replaces_premise :
    (ExistsFreyWitness → ExistsNoncuspidalLevel26FreyPoint) ∧
      certified26a.a2 = -1 ∧
      certified26b.a2 = 1 ∧
      MwrankCertificateSoundness_26 ∧
      displayedCusps26 = [1, 2, 13, 26] :=
  ⟨HIdentify26.of_qExpansion.identify,
    HIdentify26.of_qExpansion.a2_26a,
    HIdentify26.of_qExpansion.a2_26b,
    HIdentify26.of_qExpansion.mwrank,
    HIdentify26.of_qExpansion.fourCusps⟩

theorem hIdentify_of_displayed_witness :
    ExistsNoncuspidalLevel26FreyPoint :=
  hIdentify existsFreyWitness26

/-- Finite package used by the typed identification.  The remaining
geometric gate is still `hGeomForbid`: four cusp labels do not
negate an elliptic `j` as a Mathlib `X₀(26)` point. -/
def hIdentifyFinitePackage : Prop :=
  (ExistsFreyWitness → ExistsNoncuspidalLevel26FreyPoint) ∧
    ExistsFreyWitness ∧
    ExistsNoncuspidalLevel26FreyPoint ∧
    displayedCusps26 = [1, 2, 13, 26] ∧
    displayedCusps26.length = 4 ∧
    26 ∈ displayedCusps26 ∧
    displayedTargetLevel26 = 26 ∧
    J0_26_Q_RankZero26.of_qExpansion.rankZero ∧
    MwrankCertificateSoundness_26 ∧
    sUnitAudit26.card = 8 ∧
    sUnitAudit26 ≠ ({⟨0, by decide⟩} : Finset SUnitIndex)

theorem hIdentifyFinitePackage.certified :
    hIdentifyFinitePackage :=
  ⟨hIdentify,
    displayedFreyWitness26_exists,
    hIdentify_of_displayed_witness,
    rfl,
    displayedCusps26_length,
    by
      simp [displayedCusps26],
    displayedTargetLevel26_eq,
    J0_26_Q_RankZero26.of_qExpansion_replaces_premise,
    MwrankCertificateSoundness_26.certified,
    sUnitAudit26_retains_all_eight,
    sUnitAudit26_not_singleton⟩

/-- Remaining geometric gate after typed `hIdentify`: four cusp
labels versus a Mathlib noncuspidal `X₀(26)` point. -/
def remainingGeometricIdentify : Prop :=
  hIdentifyFinitePackage ∧
    fourCuspAbsencePackage ∧
    sUnitAudit26.card = 8 ∧
    sUnitAudit26 ≠ ({⟨0, by decide⟩} : Finset SUnitIndex)

theorem remainingGeometricIdentify.certified :
    remainingGeometricIdentify :=
  ⟨hIdentifyFinitePackage.certified,
    fourCuspAbsencePackage.certified,
    sUnitAudit26_retains_all_eight,
    sUnitAudit26_not_singleton⟩

#print axioms hIdentifyFinitePackage.certified
#print axioms HIdentify26.of_qExpansion_replaces_premise
#print axioms remainingGeometricIdentify.certified

end BealLevel26Foundations.Ribet.HIdentifyActual26
