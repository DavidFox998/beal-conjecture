/-
Copyright (c) 2026 David Fox. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: David Fox
-/
/-
  Root module. Separate Lake target `BealMatveevBealV25B0Search`.
  Do **not** add `Beal/Matveev/BSD_MordellWeil.lean`:
  `.submodules Beal.Matveev` would pull it into the default glob.
  Do **not** import the TrueV25 module or MatveevThm14General.
  Namespace stays `BealMatveevBeal`, not an external tower.
-/
import BealMatveevBealV25B0Search
import LLLTargetB8_C1_lower_bound
import Mathlib.AlgebraicGeometry.EllipticCurve.Group

/-!
# Affine `Point` group law (not BSD, not Jacobian rank 0)

Mathlib 4.12 already proves that nonsingular rational points on
an affine Weierstrass curve form an `AddCommGroup`
(`WeierstrassCurve.Affine.Point.instAddCommGroup`, via the
coordinate-ring class group). This file **names** that type
`MordellWeilGroup` and re-exports commutativity. It does **not**
prove the Mordell–Weil finite-generation theorem, does **not**
prove BSD, and does **not** inhabit `J0_26_rank0`.

v31 rename: the former `IsRankZero := Subsingleton` is
renamed to `IsSubsingleton`. "Rank zero" conventionally
permits nontrivial finite torsion, while `Subsingleton`
(only the identity element) does not; the old name invited
exactly that confusion. `IsSubsingleton` states precisely
what it is, no more.

Cremona `26a1` has torsion `ℤ/3ℤ` (affine point `(4,4)`);
`26b1` has torsion `ℤ/7ℤ` (affine point `(1,0)`). Those points
are not `0`, so `¬ IsSubsingleton` on both models. Rank 0 would
be “`E(ℚ)` is finite”, not “`E(ℚ) = {0}`”.

`BSD_rank_statement` is a parameterized schema
(`analytic rank = algebraic rank`). Mathlib 4.12 has no
`EllipticLFunction`. No proof. No new axiom. No `sorry`.

Does **not** mint v25. `main` stays `6247c63`.
-/

namespace BealMatveevBeal.BSD_MordellWeil

open BealMatveevBeal.BealMatveevBealV25B0Search
open BealMatveevBeal.LLLTargetB8
open BealMatveevBeal.LLLTargetB8C1LowerBound
open WeierstrassCurve
open WeierstrassCurve.Affine
open WeierstrassCurve.Affine.Point

/-- Type of nonsingular rational points with Mathlib’s group law.
    Not the Mordell–Weil finite-generation theorem. -/
abbrev MordellWeilGroup {K : Type*} [Field K] (E : WeierstrassCurve K) : Type _ :=
  E.toAffine.Point

namespace MordellWeilGroup

noncomputable instance {K : Type*} [Field K] (E : WeierstrassCurve K) :
    AddCommGroup (MordellWeilGroup E) :=
  inferInstanceAs (AddCommGroup E.toAffine.Point)

/-- Trivial brick: the group law is commutative. Delegates to
    Mathlib `AddCommGroup`. Not BSD. -/
theorem add_comm {K : Type*} [Field K] {E : WeierstrassCurve K}
    (P Q : MordellWeilGroup E) : P + Q = Q + P :=
  _root_.add_comm P Q

/-- **Only the identity.** Not MW rank 0 (torsion may be larger).
    Renamed (v31) from `IsRankZero`, which conflated "rank
    zero" with "trivial" and is no longer used. -/
def IsSubsingleton {K : Type*} [Field K] (E : WeierstrassCurve K) : Prop :=
  Subsingleton (MordellWeilGroup E)

theorem eq_zero_of_isSubsingleton {K : Type*} [Field K]
    {E : WeierstrassCurve K}
    (h : IsSubsingleton E) (P : MordellWeilGroup E) : P = 0 :=
  @Subsingleton.elim _ h P 0

end MordellWeilGroup

/-! ## Cremona `26a1` / `26b1` over `ℚ` (points, not rank 0) -/

/-- Cremona `26a1` = LMFDB `26.a2` over `ℚ`. -/
def curve26a1_Q : WeierstrassCurve ℚ where
  a₁ := 1
  a₂ := 0
  a₃ := 1
  a₄ := -5
  a₆ := -8

theorem curve26a1_Q_Δ : curve26a1_Q.Δ = -17576 := by
  simp [curve26a1_Q, WeierstrassCurve.Δ, WeierstrassCurve.b₂,
    WeierstrassCurve.b₄, WeierstrassCurve.b₆, WeierstrassCurve.b₈]
  norm_num

theorem curve26a1_Q_equation_4_4 :
    curve26a1_Q.toAffine.Equation (4 : ℚ) 4 := by
  rw [equation_iff]
  simp [curve26a1_Q]
  norm_num

theorem curve26a1_Q_nonsingular_4_4 :
    curve26a1_Q.toAffine.Nonsingular (4 : ℚ) 4 :=
  curve26a1_Q.toAffine.nonsingular_of_Δ_ne_zero curve26a1_Q_equation_4_4 <| by
    rw [curve26a1_Q_Δ]; norm_num

noncomputable def point_26a1_4_4 : MordellWeilGroup curve26a1_Q :=
  Point.some curve26a1_Q_nonsingular_4_4

theorem point_26a1_4_4_ne_zero : point_26a1_4_4 ≠ 0 :=
  Point.some_ne_zero curve26a1_Q_nonsingular_4_4

/-- `(4,4) ≠ 0`, so the MW *type* is not a subsingleton.
    This **refutes** `IsSubsingleton` on `26a1`. -/
theorem not_IsSubsingleton_26a1 : ¬ MordellWeilGroup.IsSubsingleton curve26a1_Q := by
  intro h
  exact point_26a1_4_4_ne_zero (MordellWeilGroup.eq_zero_of_isSubsingleton h point_26a1_4_4)

/-- Cremona `26b1` = LMFDB `26.b2` over `ℚ`. -/
def curve26b1_Q : WeierstrassCurve ℚ where
  a₁ := 1
  a₂ := -1
  a₃ := 1
  a₄ := -3
  a₆ := 3

theorem curve26b1_Q_Δ : curve26b1_Q.Δ = -1664 := by
  simp [curve26b1_Q, WeierstrassCurve.Δ, WeierstrassCurve.b₂,
    WeierstrassCurve.b₄, WeierstrassCurve.b₆, WeierstrassCurve.b₈]
  norm_num

theorem curve26b1_Q_equation_1_0 :
    curve26b1_Q.toAffine.Equation (1 : ℚ) 0 := by
  rw [equation_iff]
  simp [curve26b1_Q]

theorem curve26b1_Q_nonsingular_1_0 :
    curve26b1_Q.toAffine.Nonsingular (1 : ℚ) 0 :=
  curve26b1_Q.toAffine.nonsingular_of_Δ_ne_zero curve26b1_Q_equation_1_0 <| by
    rw [curve26b1_Q_Δ]; norm_num

noncomputable def point_26b1_1_0 : MordellWeilGroup curve26b1_Q :=
  Point.some curve26b1_Q_nonsingular_1_0

theorem point_26b1_1_0_ne_zero : point_26b1_1_0 ≠ 0 :=
  Point.some_ne_zero curve26b1_Q_nonsingular_1_0

theorem not_IsSubsingleton_26b1 : ¬ MordellWeilGroup.IsSubsingleton curve26b1_Q := by
  intro h
  exact point_26b1_1_0_ne_zero (MordellWeilGroup.eq_zero_of_isSubsingleton h point_26b1_1_0)

/-- Algebraic MW rank 0: every rational point is torsion.
    Uninhabited (needs finite generation + a torsion proof for
    every point). Not `IsSubsingleton` (a strictly stronger
    condition than rank 0). **Not** `J0_26_rank0`. **Not** an
    axiom. -/
def MW_rank_zero {K : Type*} [Field K] (E : WeierstrassCurve K) : Prop :=
  ∀ P : MordellWeilGroup E, ∃ n : ℕ, n ≠ 0 ∧ n • P = 0

def MW_rank_zero_26a1 : Prop := MW_rank_zero curve26a1_Q

def MW_rank_zero_26b1 : Prop := MW_rank_zero curve26b1_Q

/-- Parameterized BSD rank conjecture. Schema only. No
    `EllipticLFunction` in Mathlib 4.12. Uninhabited. -/
def BSD_rank_statement
    (IsLFunctionOf : (ℂ → ℂ) → WeierstrassCurve ℚ → Prop)
    (orderOfVanishingAt : (ℂ → ℂ) → ℂ → ℕ)
    (MordellWeilRank : WeierstrassCurve ℚ → ℕ) : Prop :=
  ∀ (E : WeierstrassCurve ℚ) (L_E : ℂ → ℂ),
    IsLFunctionOf L_E E →
      MordellWeilRank E = orderOfVanishingAt L_E 1

theorem LLL_nogo_persists_after_BSD_MordellWeil :
    LLL_reduces_C1_to_lt_nine ↔
      ∀ {A B : ℕ}, B0_nat ≤ B → A ^ 4 + B ^ 4 ≠ (B + 3) ^ 13 :=
  LLL_reduces_C1_to_lt_nine_iff_no_sol_ge_B0

#check MordellWeilGroup.add_comm
#check MordellWeilGroup.eq_zero_of_isSubsingleton
#check curve26a1_Q_Δ
#check curve26b1_Q_Δ
#check point_26a1_4_4_ne_zero
#check not_IsSubsingleton_26a1
#check not_IsSubsingleton_26b1
#check MW_rank_zero_26a1
#check BSD_rank_statement
#check LLL_nogo_persists_after_BSD_MordellWeil
#print axioms MordellWeilGroup.add_comm
#print axioms not_IsSubsingleton_26a1
#print axioms LLL_nogo_persists_after_BSD_MordellWeil

end BealMatveevBeal.BSD_MordellWeil
