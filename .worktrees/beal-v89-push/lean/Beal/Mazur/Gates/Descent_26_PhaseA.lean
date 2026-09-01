import Beal.Mazur.Jacobian.E26
import Mathlib.AlgebraicGeometry.EllipticCurve.Group
import Mathlib.AlgebraicGeometry.EllipticCurve.Weierstrass
import Mathlib.Data.ZMod.Basic
import Mathlib.Tactic

namespace Beal17Mazur.Gates

open Beal17Mazur.Jacobian
open WeierstrassCurve

/-!
# Honest Phase A data for the level-26 factors

This module deliberately stops at the finite certificate layer.  The ten
binary quartics in `E26.lean` are transcript rows; this file does not identify
them with all 2-coverings or with a complete Selmer group.

The phrase "free rank zero" below means that every rational point is torsion.
It does not assert finiteness: that additional implication requires a
Mordell--Weil finite-generation theorem.  In particular, no finite-field
search below is promoted to a rational or `p`-adic local obstruction.
-/

/-! ## The genuine rational-point groups and the target predicate -/

def MordellWeilGroup {K : Type*} [Field K] (E : WeierstrassCurve K) : Type _ :=
  E.toAffine.Point

noncomputable instance {K : Type*} [Field K] (E : WeierstrassCurve K) :
    AddCommGroup (MordellWeilGroup E) :=
  inferInstanceAs (AddCommGroup E.toAffine.Point)

/-- Every rational point is torsion, the free-rank-zero target used here. -/
def IsFreeRankZero {K : Type*} [Field K] (E : WeierstrassCurve K) : Prop :=
  ∀ P : MordellWeilGroup E, ∃ n : Nat, 0 < n ∧ n • P = 0

noncomputable abbrev E26a1W : WeierstrassCurve ℚ :=
  E26a1.toWeierstrassCurve

noncomputable abbrev E26b1W : WeierstrassCurve ℚ :=
  E26b1.toWeierstrassCurve

/-! ## Rechecked finite arithmetic from the genuine E26 module -/

theorem E26a1_discriminant_rechecked :
    E26a1W.Δ = (-1664 : ℚ) :=
  E26a1_discriminant

theorem E26b1_discriminant_rechecked :
    E26b1W.Δ = (-17576 : ℚ) :=
  E26b1_discriminant

theorem E26a1_c4_rechecked : E26a1.c₄ = (129 : ℚ) :=
  E26a1_c4

theorem E26b1_c4_rechecked : E26b1.c₄ = (217 : ℚ) :=
  E26b1_c4

theorem Q_S2_13_card_rechecked : Q_S2_13.length = 8 := by
  decide

theorem E26a1_quartics_count_rechecked :
    E26a1MwrankQuartics.length = 4 := by
  rfl

theorem E26b1_quartics_count_rechecked :
    E26b1MwrankQuartics.length = 6 := by
  rfl

/-! ## A genuine finite-field evaluator -/

namespace BinaryQuartic

def eval (q : BinaryQuartic) {p : Nat} [NeZero p]
    (x z : ZMod p) : ZMod p :=
  (q.a : ZMod p) * x ^ 4 +
    (q.b : ZMod p) * x ^ 3 * z +
    (q.c : ZMod p) * x ^ 2 * z ^ 2 +
    (q.d : ZMod p) * x * z ^ 3 +
    (q.e : ZMod p) * z ^ 4

/-- A point on the homogeneous quartic equation over `ZMod p`.

This is only a finite-field point predicate.  It is not a definition of
local solubility of a 2-covering over `ℚₚ`. -/
def HasFpPoint (q : BinaryQuartic) (p : Nat) [NeZero p] : Prop :=
  ∃ x ∈ List.range p, ∃ z ∈ List.range p,
    (x ≠ 0 ∨ z ≠ 0) ∧ ∃ y ∈ List.range p,
      (y : ZMod p) ^ 2 = eval q (x : ZMod p) (z : ZMod p)

/-- Executable exhaustive search for `HasFpPoint`. -/
def hasFpPoint (q : BinaryQuartic) (p : Nat) [NeZero p] : Bool :=
  (List.range p).any fun x =>
    (List.range p).any fun z =>
      (decide (x ≠ 0 ∨ z ≠ 0)) &&
        (List.range p).any fun y =>
          decide ((y : ZMod p) ^ 2 = eval q (x : ZMod p) (z : ZMod p))

theorem hasFpPoint_eq_true_iff (q : BinaryQuartic) (p : Nat) [NeZero p] :
    hasFpPoint q p = true ↔ HasFpPoint q p := by
  simp [hasFpPoint, HasFpPoint]

end BinaryQuartic

abbrev HasFpPoint := BinaryQuartic.HasFpPoint

def E26a1Fp2Results : List Bool :=
  E26a1MwrankQuartics.map fun q => BinaryQuartic.hasFpPoint q 2

def E26a1Fp13Results : List Bool :=
  E26a1MwrankQuartics.map fun q => BinaryQuartic.hasFpPoint q 13

def E26b1Fp2Results : List Bool :=
  E26b1MwrankQuartics.map fun q => BinaryQuartic.hasFpPoint q 2

def E26b1Fp13Results : List Bool :=
  E26b1MwrankQuartics.map fun q => BinaryQuartic.hasFpPoint q 13

theorem E26a1Fp2Results_checked :
    E26a1Fp2Results = [true, true, true, true] := by
  decide

theorem E26a1Fp13Results_checked :
    E26a1Fp13Results = [true, true, true, true] := by
  decide

theorem E26b1Fp2Results_checked :
    E26b1Fp2Results = [true, true, true, true, true, true] := by
  decide

theorem E26b1Fp13Results_checked :
    E26b1Fp13Results = [true, true, true, true, true, true] := by
  decide

/-! ## Exact finite search spaces -/

/-- Indices for the exact eight signed squarefree representatives in
`Q_S2_13`. -/
abbrev SUnits_26 := Fin Q_S2_13.length

/-- The Phase A S-unit search space has exactly eight representatives. -/
theorem sUnits_26_card_8_decide :
    Fintype.card SUnits_26 = 8 := by
  decide

/-- The combined Phase A quartic ledger contains the four `26a1` rows and the
six `26b1` rows. -/
def ledger : List BinaryQuartic :=
  E26a1MwrankQuartics ++ E26b1MwrankQuartics

theorem ledger_length : ledger.length = 10 := by
  decide

/-!
## The missing descent-to-rank bridge

The following structure is metadata for the missing theorem.  Its `statement`
field is a proposition, not a proof field, so constructing the record does not
assert that proposition.  The status string intentionally records that this is
an AXIOM boundary in the research plan, while this Lean file introduces no
axiom and derives no rank conclusion from it.
-/

structure SelmerToRankGate (E : WeierstrassCurve ℚ) where
  statement : Prop
  status : String

def SelmerToRankGate_26a1 : SelmerToRankGate E26a1W where
  statement := IsFreeRankZero E26a1W
  status := "AXIOM: complete 2-descent to free-rank bridge is not kernel-checked"

def SelmerToRankGate_26b1 : SelmerToRankGate E26b1W where
  statement := IsFreeRankZero E26b1W
  status := "AXIOM: complete 2-descent to free-rank bridge is not kernel-checked"

theorem no_unconditional_rank_claim_26a1 :
    SelmerToRankGate_26a1.statement = IsFreeRankZero E26a1W :=
  rfl

theorem no_unconditional_rank_claim_26b1 :
    SelmerToRankGate_26b1.statement = IsFreeRankZero E26b1W :=
  rfl

#print axioms sUnits_26_card_8_decide
#print axioms ledger_length

end Beal17Mazur.Gates