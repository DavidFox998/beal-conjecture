import Beal.Foundations.FormalImmersionM3
import BealLevel26Foundations.Descent.Selmer_26
import BealLevel26Foundations.Descent.TwoDescent_26a1_26
import BealLevel26Foundations.Mazur.Genus_26_Real
import BealLevel26Foundations.Real.FreyWeierstrass
import BealLevel26Foundations.Ribet.LevelLowering_26
import Mathlib.Data.Nat.GCD.Basic
import Mathlib.Data.ZMod.Basic
import Mathlib.LinearAlgebra.Matrix.Determinant.Basic
import Mathlib.Tactic

namespace BealLevel26Foundations.Mazur.EndgameScaffold

open Beal.Foundations.FormalImmersionM3
open BealLevel26Foundations.Descent.Selmer26
open BealLevel26Foundations.Descent.TwoDescent26
open BealLevel26Foundations.Mazur.Genus26Real
open BealLevel26Foundations.Real.FreyWeierstrass
open BealLevel26Foundations.Ribet.LevelLowering26

/-!
# v4.0.0 Mazur endgame scaffold (v4.0.7-j chain types)

This module packages the README Mazur chain as typed structures:

`J₀(26)(ℚ)` rank 0
  + formal immersion at 2
  ⇒ `X₀(26)(ℚ)` = four cusps
  ⇒ no *noncuspidal* level-26 Frey point
  ⇒ `BealTheorem`

Mathlib 4.12 has no Jacobian of `X₀(26)`, no Mordell--Weil group, no
formal-immersion API, and no modular-curve rational-point theorem.
Nothing below is discharged by `decide` except the already-checked v1.4
matrix `M₃ = [[1, 1], [0, 2]]` and `det = 2`.

v4.0.7-hIdentify-j re-encodes the Frey witness as a Weierstrass
model with `Δ ≠ 0` and lowering target `26`.  A noncuspidal
*displayed point* is an elliptic `j`-ratio `(c₄³ : Δ)`, a different
constructor from the four cusp-divisor labels `[1, 2, 13, 26]`.
That is not `26 ∉ [1, 2, 13, 26]` as integer membership.

v4.0.9 re-encodes four cusps as the forall
`fourCuspsForallCuspPoints` over cusp-labeled points.  A forall
over all `DisplayedX026PointKind` is false (`ellipticJ` is a
counterexample).  Typed `hGeomForbid` remains uninhabitable:
the inhabited forall does not range over elliptic `j`, so it
does not Lean-negate `ExistsNoncuspidal`.  This is not an
unconditional `BealTheorem`.

v4.1.2 records a *computational* `hGeomForbid` boundary:
`rankZero_unconditional` is
`RankZero_26a1_from_Selmer ∧ RankZero_26b1_from_Selmer`, i.e.
`SelmerBound = 1` twice (`1 = 1`), from PARI `ellrank` +
`ell2cover` + `elltors` archived in `Certs/Descent_26.json`
(SHA-256
`d9d907f6cf29e9a90731184f082d430d33128f0f857e6a8124a1eef0b8e39260`).
That is not a Lean Mordell--Weil theorem.  Mathlib 4.12 has no
`SelmerGroup`.  The named `Chabauty0ForcesCusp` conjunction is
rank-zero plus `det ≠ 0`; this file cannot import
`ColemanNonVanishing_26` (it depends on
`J0_26_Q_RankZeroActual_26`, which imports this scaffold).
The computational `hGeomForbid` is `Option.some` of
`rankZero_unconditional ∧ det certifiedM3 ≠ 0`.  It is not
`fourCusps → ¬ ExistsNoncuspidal`.  Typed `hGeomForbid` in
`BealTheoremFromMazurChain26` stays uninhabitable.
The four-cusp *audit* remains
`Mazur/X026RationalPointsActual_26` and is not edited here.
-/

/-- Primitive Beal counterexample in the exponent range of the level-26
route. -/
structure BealCounterexample26 where
  A : Nat
  B : Nat
  C : Nat
  x : Nat
  y : Nat
  z : Nat
  positiveA : 0 < A
  positiveB : 0 < B
  positiveC : 0 < C
  exponents : 3 ≤ x ∧ 3 ≤ y ∧ 3 ≤ z
  equation : A ^ x + B ^ y = C ^ z
  primitive : Nat.gcd A (Nat.gcd B C) = 1

def IsBealSolution26 (A B C x y z : Nat) : Prop :=
  0 < A ∧ 0 < B ∧ 0 < C ∧
    3 ≤ x ∧ 3 ≤ y ∧ 3 ≤ z ∧
    A ^ x + B ^ y = C ^ z ∧
    Nat.gcd A (Nat.gcd B C) = 1

/-- The Beal statement as a proposition.  This is not a theorem. -/
def BealTheorem : Prop :=
  ∀ A B C x y z : Nat, ¬ IsBealSolution26 A B C x y z

def ofSolution (A B C x y z : Nat)
    (h : IsBealSolution26 A B C x y z) :
    BealCounterexample26 :=
  { A := A
    B := B
    C := C
    x := x
    y := y
    z := z
    positiveA := h.1
    positiveB := h.2.1
    positiveC := h.2.2.1
    exponents := ⟨h.2.2.2.1, h.2.2.2.2.1, h.2.2.2.2.2.1⟩
    equation := h.2.2.2.2.2.2.1
    primitive := h.2.2.2.2.2.2.2 }

/-- Rank-zero *input* for `J₀(26)(ℚ)`.  Mathlib 4.12 has no Jacobian
and no Mordell--Weil rank.  v4.0.6 inhabits this structure from the
certified product `26a × 26b` together with Sage
`certified_mwrank = 0` on both factors
(`J0_26_Q_RankZero26.of_qExpansion`).  That inhabitant is a finite
product package, not a scheme-theoretic Mordell--Weil theorem, and
it does not identify eight S-units with genuine `Sel₂`. -/
structure J0_26_Q_RankZero26 where
  rankZero : Prop
  rankZero_witness : rankZero

/-- Formal-immersion-at-2 *input*.  Carries the v1.4 certificate
`M₃ = [[1, 1], [0, 2]]`, `det = 2`.  v4.0.3 constructs an inhabitant
from q-expansion cotangent injectivity
(`FormalImmersionAtTwo26.of_qExpansion`).  That inhabitant is finite
matrix injectivity, not a scheme-theoretic immersion of `X₀(26)` in
`J₀(26)`.  Identifying `X₀(26)(ℚ)` with four cusps remains supplied. -/
structure FormalImmersionAtTwo26 where
  input : Matrix (Fin 2) (Fin 2) (ZMod 3)
  input_eq : input = !![1, 1; 0, 2]
  input_det : Matrix.det input = 2
  actualFormalImmersionAtTwo : Prop
  actualFormalImmersionAtTwo_witness : actualFormalImmersionAtTwo

theorem FormalImmersionAtTwo26.input_certificate
    (h : FormalImmersionAtTwo26) :
    h.input = !![1, 1; 0, 2] ∧ Matrix.det h.input = 2 :=
  ⟨h.input_eq, h.input_det⟩

theorem FormalImmersionAtTwo26.input_eq_v1_4_M3
    (h : FormalImmersionAtTwo26) :
    h.input = certifiedM3 := by
  rw [h.input_eq, certifiedM3_eq]

theorem FormalImmersionAtTwo26.input_eq_ledgerM3
    (h : FormalImmersionAtTwo26) :
    h.input = BealLevel26Foundations.M3Explicit.ledgerM3 := by
  rw [h.input_eq_v1_4_M3, certifiedM3_eq_ledgerM3]

/-- Four displayed cusps, premise-bearing.  The arithmetic count `4` is
the v1 genus certificate.  v4.0.4 inhabits this structure from
q-expansion data (`X0_26_RationalPoints26.of_qExpansion`) as that
finite four-cusp package.  v4.0.9 adds the cusp-point forall
`fourCuspsForallCuspPoints`; that is not a Mathlib `X₀(26)(ℚ)`
theorem. -/
structure X0_26_RationalPoints26 where
  displayedCuspCount : Nat
  displayedCuspCount_eq_four : displayedCuspCount = 4
  rationalPointsAreFourCusps : Prop
  ofRankZeroAndImmersion :
    J0_26_Q_RankZero26 → FormalImmersionAtTwo26 →
      rationalPointsAreFourCusps

theorem X0_26_RationalPoints26.displayed_four
    (h : X0_26_RationalPoints26) :
    h.displayedCuspCount = 4 :=
  h.displayedCuspCount_eq_four

theorem displayedCuspCount_matches_genus_certificate :
    cuspCount26 = 4 :=
  cuspCount26_eq_four

theorem X0_26_RationalPoints26.fourCusps_of_rank_and_immersion
    (h : X0_26_RationalPoints26)
    (hRank : J0_26_Q_RankZero26)
    (hImm : FormalImmersionAtTwo26) :
    h.rationalPointsAreFourCusps :=
  h.ofRankZeroAndImmersion hRank hImm

/-- Cusp labels are the four divisors.  An elliptic `j` is a
different displayed-point constructor, not integer membership
`26 ∉ [1, 2, 13, 26]`. -/
inductive DisplayedX026PointKind where
  | cuspDivisor : Nat → DisplayedX026PointKind
  | ellipticJ : Int → Int → DisplayedX026PointKind
  deriving DecidableEq

/-- Displayed stand-in for a *cusp-labeled* rational point of
`X₀(26)`.  The label is a divisor in `[1, 2, 13, 26]`.  This is
not a Mathlib modular-curve point, and it does not include an
elliptic `j`. -/
structure DisplayedX026CuspPoint where
  label : Nat
  mem : label ∈ ([1, 2, 13, 26] : List Nat)

def DisplayedX026CuspPoint.kind (P : DisplayedX026CuspPoint) :
    DisplayedX026PointKind :=
  DisplayedX026PointKind.cuspDivisor P.label

/-- Forall encoding of the four-cusp list: every displayed
*cusp-labeled* point is one of `[1, 2, 13, 26]`.  The list is the
witness.  The domain is `DisplayedX026CuspPoint`, not
`DisplayedX026PointKind` and not Mathlib `X₀(26)(ℚ)`.  A forall
over all kinds would be false, because `ellipticJ` is a different
constructor. -/
def fourCuspsForallCuspPoints : Prop :=
  ∀ P : DisplayedX026CuspPoint,
    ∃ n ∈ ([1, 2, 13, 26] : List Nat),
      P.kind = DisplayedX026PointKind.cuspDivisor n

theorem fourCuspsForallCuspPoints.certified :
    fourCuspsForallCuspPoints :=
  fun P => ⟨P.label, P.mem, rfl⟩

/-- Same-type forall the geometric gate would need: every displayed
kind is a cusp label.  `ellipticJ` is a counterexample. -/
def fourCuspsForallAllKinds : Prop :=
  ∀ P : DisplayedX026PointKind,
    ∃ n ∈ ([1, 2, 13, 26] : List Nat),
      P = DisplayedX026PointKind.cuspDivisor n

/-- Displayed Frey curve over `ℤ` with residual target level `26`.
This is Weierstrass data plus a lowering index, not a Mathlib
mod-`ℓ` Galois representation. -/
structure Level26FreyCurveWitness where
  A : Int
  B : Int
  x : Nat
  y : Nat
  loweredLevel : Nat
  loweredLevel_eq_26 : loweredLevel = 26
  Δ_ne : (freyCurve A B x y).Δ ≠ 0

def ExistsFreyWitness : Prop :=
  Nonempty Level26FreyCurveWitness

def displayedFreyCurveWitness26 : Level26FreyCurveWitness where
  A := 1
  B := 1
  x := 3
  y := 3
  loweredLevel := 26
  loweredLevel_eq_26 := rfl
  Δ_ne := by
    have hA : (1 : Int) ≠ 0 := by decide
    have hB : (1 : Int) ≠ 0 := by decide
    have hSum : (1 : Int) ^ 3 + (1 : Int) ^ 3 ≠ 0 := by decide
    exact freyCurve_discriminant_ne_zero hA hB hSum

def existsFreyWitness26 : ExistsFreyWitness :=
  ⟨displayedFreyCurveWitness26⟩

/-- Finite `j`-ratio of a displayed Frey model: `(c₄³ : Δ)`. -/
def freyJNumerator (w : Level26FreyCurveWitness) : Int :=
  (freyCurve w.A w.B w.x w.y).c₄ ^ 3

def freyJDenominator (w : Level26FreyCurveWitness) : Int :=
  (freyCurve w.A w.B w.x w.y).Δ

/-- Displayed noncuspidal point: an elliptic `j`, not a cusp
divisor.  Mathlib 4.12 has no `X₀(26)` point type. -/
structure NoncuspidalLevel26FreyPoint where
  source : Level26FreyCurveWitness
  kind : DisplayedX026PointKind
  kind_eq :
    kind = DisplayedX026PointKind.ellipticJ
      (freyJNumerator source) (freyJDenominator source)
  kind_ne_cusp_divisors :
    kind ≠ DisplayedX026PointKind.cuspDivisor 1 ∧
      kind ≠ DisplayedX026PointKind.cuspDivisor 2 ∧
      kind ≠ DisplayedX026PointKind.cuspDivisor 13 ∧
      kind ≠ DisplayedX026PointKind.cuspDivisor 26

def ExistsNoncuspidalLevel26FreyPoint : Prop :=
  Nonempty NoncuspidalLevel26FreyPoint

/-- Four displayed cusps remain `[1, 2, 13, 26]`.  `noNoncuspidalFrey`
is that finite list package, not the Lean negation of an elliptic
`j` witness. -/
structure NoFreyPoint26 where
  displayedTargetLevel : Nat
  displayedTargetLevel_eq_26 : displayedTargetLevel = 26
  displayedCusps : List Nat
  displayedCusps_eq : displayedCusps = [1, 2, 13, 26]
  noNoncuspidalFrey : Prop
  ofFourCusps :
    ∀ (hPts : X0_26_RationalPoints26),
      hPts.rationalPointsAreFourCusps →
        noNoncuspidalFrey

theorem NoFreyPoint26.displayed_26
    (h : NoFreyPoint26) :
    h.displayedTargetLevel = 26 :=
  h.displayedTargetLevel_eq_26

theorem bealCounterexample_freyDiscriminant_ne_zero
    (cex : BealCounterexample26) :
    (freyCurve (cex.A : Int) (cex.B : Int) cex.x cex.y).Δ ≠ 0 := by
  have hA : (cex.A : Int) ≠ 0 := by
    exact_mod_cast (ne_of_gt cex.positiveA)
  have hB : (cex.B : Int) ≠ 0 := by
    exact_mod_cast (ne_of_gt cex.positiveB)
  have hSum : (cex.A : Int) ^ cex.x + (cex.B : Int) ^ cex.y ≠ 0 := by
    have hC : (cex.C : Int) ≠ 0 := by
      exact_mod_cast (ne_of_gt cex.positiveC)
    have hPow : (cex.C : Int) ^ cex.z ≠ 0 := pow_ne_zero _ hC
    have hEq : (cex.A : Int) ^ cex.x + (cex.B : Int) ^ cex.y =
        (cex.C : Int) ^ cex.z := by
      norm_cast
      exact cex.equation
    exact hEq.symm ▸ hPow
  exact freyCurve_discriminant_ne_zero hA hB hSum

theorem ellipticJ_ne_cuspDivisor (num den : Int) (n : Nat) :
    DisplayedX026PointKind.ellipticJ num den ≠
      DisplayedX026PointKind.cuspDivisor n := by
  intro h
  cases h

theorem fourCuspsForallAllKinds_is_false :
    ¬ fourCuspsForallAllKinds := by
  intro h
  obtain ⟨n, _hn, heq⟩ :=
    h (DisplayedX026PointKind.ellipticJ 0 1)
  exact ellipticJ_ne_cuspDivisor 0 1 n heq

/-- Displayed Ribet existence from a typed lowering certificate.
This produces `ExistsFreyWitness` (`loweredLevel = 26` and `Δ ≠ 0`),
not a Mathlib modular-curve point. -/
def existsFreyWitness_of_beal_frey_lowering
    (cex : BealCounterexample26) {ℓ N p : Nat}
    (_hLower : LevelLowering_26 ℓ N p 26)
    (hΔ : (freyCurve (cex.A : Int) (cex.B : Int) cex.x cex.y).Δ ≠ 0) :
    ExistsFreyWitness :=
  ⟨{ A := (cex.A : Int)
     B := (cex.B : Int)
     x := cex.x
     y := cex.y
     loweredLevel := 26
     loweredLevel_eq_26 := rfl
     Δ_ne := hΔ }⟩

/-- Displayed PARI `|Sel₂| = 1` on both factors (`1 = 1` ∧ `1 = 1`).
Computational evidence from `Descent_26.json` (SHA-256
`d9d907f6cf29e9a90731184f082d430d33128f0f857e6a8124a1eef0b8e39260`):
PARI `ellrank` + `ell2cover` + `elltors`.  This is
not a Lean Mordell--Weil theorem.  Mathlib has no `SelmerGroup`.
The name `unconditional` is the v4.1.2 tag name; the Prop is
still two Nat equalities. -/
def rankZero_unconditional : Prop :=
  RankZero_26a1_from_Selmer ∧ RankZero_26b1_from_Selmer

theorem rankZero_unconditional.certified : rankZero_unconditional :=
  ⟨SelmerBound_26a1_certified, SelmerBound_26b1_certified⟩

/-- Same shape as `Chabauty0ForcesCusp`: displayed rank-zero names
plus `det M₃ ≠ 0`.  Not a Chabauty--Coleman theorem. -/
def Chabauty0ForcesCusp_computational : Prop :=
  rankZero_unconditional ∧ Matrix.det certifiedM3 ≠ 0

theorem Chabauty0ForcesCusp_computational.certified :
    Chabauty0ForcesCusp_computational :=
  ⟨rankZero_unconditional.certified, certifiedM3_det_nonzero⟩

/-- Computational `hGeomForbid` boundary:
`Option.some (rankZero_unconditional ∧ det ≠ 0)`.
Not `fourCusps → ¬ ExistsNoncuspidal`.  The four-cusp audit is
`X026RationalPointsActual_26`. -/
def hGeomForbid : Option Prop :=
  some (rankZero_unconditional ∧ Chabauty0ForcesCusp_computational)

theorem hGeomForbid_is_computational_some :
    hGeomForbid =
      some (rankZero_unconditional ∧ Chabauty0ForcesCusp_computational) :=
  rfl

theorem hGeomForbid_computational.certified :
    rankZero_unconditional ∧ Chabauty0ForcesCusp_computational :=
  ⟨rankZero_unconditional.certified,
    Chabauty0ForcesCusp_computational.certified⟩

/-- Conditional Mazur-chain conclusion.

The *typed* `hGeomForbid` hypothesis remains the four-cusp
*negation* `fourCusps → ¬ ExistsNoncuspidalLevel26FreyPoint`.
That implication stays uninhabitable.  The `Option` value
`hGeomForbid` above is a computational boundary
(`rankZero_unconditional` + `det ≠ 0`), not that implication.
A Beal counterexample plus v3 lowering produces
`ExistsFreyWitness`.  Those two propositions are different.
Typed `hIdentify` is inhabited by the finite `j`-packing.
This theorem does not decide a Mathlib Jacobian rank, does not
prove `X₀(26)(ℚ) = four cusps` as a scheme, does not prove
Ribet existence, and does not prove `R = T`.
There is no `theorem BealTheorem`. -/
theorem BealTheoremFromMazurChain26
    {ℓ N p : Nat}
    (hRank : J0_26_Q_RankZero26)
    (hImm : FormalImmersionAtTwo26)
    (hCusps : X0_26_RationalPoints26)
    (hNoFrey : NoFreyPoint26)
    (hLower : LevelLowering_26 ℓ N p 26)
    (hGeomForbid :
      hCusps.rationalPointsAreFourCusps →
        ¬ ExistsNoncuspidalLevel26FreyPoint)
    (hIdentify :
      ExistsFreyWitness → ExistsNoncuspidalLevel26FreyPoint) :
    BealTheorem := by
  intro A B C x y z hSol
  let cex := ofSolution A B C x y z hSol
  have hEqZ :
      (A : Int) ^ x + (B : Int) ^ y = (C : Int) ^ z := by
    norm_cast
    exact cex.equation
  let model := ofBealEquation (A : Int) (B : Int) (C : Int) x y z hEqZ
  have hΔ := bealCounterexample_freyDiscriminant_ne_zero cex
  have hΔmodel : model.Δ ≠ 0 := by
    simpa [model, ofBealEquation] using hΔ
  have hCuspId :
      hCusps.rationalPointsAreFourCusps :=
    hCusps.fourCusps_of_rank_and_immersion hRank hImm
  have hAbs :
      ¬ ExistsNoncuspidalLevel26FreyPoint :=
    hGeomForbid hCuspId
  have hPkg : hNoFrey.noNoncuspidalFrey :=
    hNoFrey.ofFourCusps hCusps hCuspId
  have hWitness : ExistsFreyWitness :=
    existsFreyWitness_of_beal_frey_lowering cex hLower hΔ
  have hNoncusp : ExistsNoncuspidalLevel26FreyPoint :=
    hIdentify hWitness
  have hPin :
      hImm.input = !![1, 1; 0, 2] ∧
        Matrix.det hImm.input = 2 ∧
        hImm.input = certifiedM3 ∧
        hLower.targetLevel = 26 ∧
        hLower.weight = 2 ∧
        hCusps.displayedCuspCount = 4 ∧
        hNoFrey.displayedTargetLevel = 26 ∧
        hNoFrey.displayedCusps = [1, 2, 13, 26] ∧
        hNoFrey.noNoncuspidalFrey ∧
        model.Δ ≠ 0 :=
    ⟨hImm.input_eq, hImm.input_det, hImm.input_eq_v1_4_M3, rfl,
      hLower.weight_eq_two, hCusps.displayed_four,
      hNoFrey.displayed_26, hNoFrey.displayedCusps_eq, hPkg,
      hΔmodel⟩
  let _displayed := hPin
  exact hAbs hNoncusp

#print axioms FormalImmersionAtTwo26.input_certificate
#print axioms FormalImmersionAtTwo26.input_eq_v1_4_M3
#print axioms bealCounterexample_freyDiscriminant_ne_zero
#print axioms fourCuspsForallCuspPoints.certified
#print axioms fourCuspsForallAllKinds_is_false
#print axioms rankZero_unconditional.certified
#print axioms hGeomForbid_computational.certified
#print axioms BealTheoremFromMazurChain26

end BealLevel26Foundations.Mazur.EndgameScaffold
