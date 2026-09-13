import BealLevel26Foundations.Jacobian.FormalImmersionActual_26
import BealLevel26Foundations.Jacobian.J0_26_DecompActual
import BealLevel26Foundations.Jacobian.TwoSelmer_vs_SUnits_26
import BealLevel26Foundations.Mazur.EndgameScaffold
import BealLevel26Foundations.Mazur.X026RationalPointsActual_26
import BealLevel26Foundations.Real.FreyWeierstrass
import BealLevel26Foundations.Ribet.LevelLowering_26
import Mathlib.Tactic

namespace BealLevel26Foundations.Ribet.RibetLoweringActual26

open BealLevel26Foundations.Jacobian.FormalImmersionActual26
open BealLevel26Foundations.Jacobian.J0_26_DecompActual
open BealLevel26Foundations.Jacobian.TwoSelmer_vs_SUnits_26
open BealLevel26Foundations.Mazur.EndgameScaffold
open BealLevel26Foundations.Mazur.X026RationalPointsActual26
open BealLevel26Foundations.Real.FreyWeierstrass
open BealLevel26Foundations.Ribet.LevelLowering26

/-!
# v4.0.6 displayed Ribet existence (`ExistsFreyWitness`)

This module is the existence half split out of the former
`NoFreyPointActual_26`.  It loads the v1.4.0 sources

* `sagemath/level_26_ledger.json`
  (SHA-256 `0259fe957cc348b7286e233ce717fac47c30ad174b05e8e1c5fb70626f511151`);
* `sagemath/certs/j0_26_decomposition.json`;
* `sagemath/certs/formal_immersion_M3.json`

as the already-promoted Lean `J0_26_DecompActual`,
`MwrankCertificateSoundness_26`,
`FormalImmersionAtTwo26.of_qExpansion`, and
`X0_26_RationalPoints26.of_qExpansion`.  It does not parse JSON and
does not add a certificate.

The displayed lowering target at squarefree level `26` is the fourth
index of `LevelLowering_26 ℓ N p 26`.  Together with the certified
`26a × 26b` q-expansion distinction, Sage `certified_mwrank = 0`,
the already-inhabited formal-immersion *input*, and the displayed
four-cusp package, that is the finite package
`ribetExistenceFromQExpansion`.

`ofBealFreyLowering` produces `ExistsFreyWitness`: a Frey
Weierstrass model with `Δ ≠ 0` and `loweredLevel = 26`.  That is
not a Mathlib modular-curve point.  v4.0.7-hIdentify-j packs the
finite `j`-ratio of such a model as
`ExistsNoncuspidalLevel26FreyPoint` in `HIdentifyActual_26`.
The four-cusp list `[1, 2, 13, 26]` stays as cusps in
`NoFreyPointActual_26`.  Mathlib 4.12 has no Ribet existence
theorem.  Not a Mathlib Ribet theorem.
-/

/-- Displayed target of a level-26 lowering certificate. -/
def displayedTargetLevel26 : Nat :=
  26

theorem displayedTargetLevel26_eq :
    displayedTargetLevel26 = 26 :=
  rfl

theorem lowering_to_26_target
    {ℓ N p : Nat} (c : LevelLowering_26 ℓ N p 26) :
    c.targetLevel = 26 :=
  rfl

/-- Finite Ribet-existence package from q-expansion and lowering data.
Not a Mathlib Ribet theorem. -/
def ribetExistenceFromQExpansion : Prop :=
  displayedTargetLevel26 = 26 ∧
    X0_26_RationalPoints26.of_qExpansion.displayedCuspCount = 4 ∧
    X0_26_RationalPoints26.of_qExpansion.rationalPointsAreFourCusps ∧
    FormalImmersionAtTwo26.of_qExpansion.input = !![1, 1; 0, 2] ∧
    certified26a.a2 = -1 ∧
    certified26b.a2 = 1 ∧
    MwrankCertificateSoundness_26 ∧
    ∀ {ℓ N p : Nat} (c : LevelLowering_26 ℓ N p 26), c.targetLevel = 26

theorem ribetExistenceFromQExpansion.certified :
    ribetExistenceFromQExpansion :=
  ⟨displayedTargetLevel26_eq,
    X0_26_RationalPoints26.of_qExpansion.displayedCuspCount_eq_four,
    fourCuspsFromQExpansion.certified,
    FormalImmersionAtTwo26.of_qExpansion.input_eq,
    certified26a_a2, certified26b_a2,
    MwrankCertificateSoundness_26.certified,
    fun c => lowering_to_26_target c⟩

theorem displayedFreyWitness26_exists :
    ExistsFreyWitness :=
  existsFreyWitness26

/-- The Mazur existence half: a Beal counterexample plus a typed
lowering certificate produces the displayed witness
`loweredLevel = 26` and `Δ ≠ 0`.  This is `ExistsFreyWitness`,
not a Mathlib modular-curve point. -/
def ofBealFreyLowering
    (cex : BealCounterexample26) {ℓ N p : Nat}
    (hLower : LevelLowering_26 ℓ N p 26)
    (hΔ : (freyCurve (cex.A : Int) (cex.B : Int) cex.x cex.y).Δ ≠ 0) :
    ExistsFreyWitness :=
  existsFreyWitness_of_beal_frey_lowering cex hLower hΔ

#print axioms displayedTargetLevel26_eq
#print axioms ribetExistenceFromQExpansion.certified
#print axioms displayedFreyWitness26_exists

end BealLevel26Foundations.Ribet.RibetLoweringActual26
