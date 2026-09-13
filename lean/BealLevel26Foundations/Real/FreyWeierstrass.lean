import Mathlib.AlgebraicGeometry.EllipticCurve.Weierstrass
import Mathlib.Tactic

namespace BealLevel26Foundations.Real.FreyWeierstrass

open WeierstrassCurve

/-!
# v2.0.0 Frey Weierstrass model

This is the integral Frey model used by
[`beal-conjecture`](https://github.com/DavidFox998/beal-conjecture)
`Beal.FreyTate.freyIntegralModel` and `Beal17Mazur.freyRationalCurve`:

`Y² = X (X - Aˣ) (X + Bʸ)`.

The `c₄`, `c₆`, and `Δ` identities are proved by `ring` from Mathlib 4.12
Weierstrass algebra.  The module returns the curve data itself.  It does
not import the parent conductor-data structure or the Tate step-2
external premise, and it does not classify Kodaira types.
-/

/-- The integral Frey model `Y² = X (X - Aˣ) (X + Bʸ)`. -/
def freyCurve (A B : Int) (x y : Nat) : WeierstrassCurve Int where
  a₁ := 0
  a₂ := B ^ y - A ^ x
  a₃ := 0
  a₄ := -(A ^ x * B ^ y)
  a₆ := 0

/-- Curve data attached to a displayed Beal equation `Aˣ + Bʸ = Cᶻ`. -/
def ofBealEquation (A B C : Int) (x y z : Nat)
    (_hEquation : A ^ x + B ^ y = C ^ z) :
    WeierstrassCurve Int :=
  freyCurve A B x y

theorem freyCurve_equation_coefficients (A B : Int) (x y : Nat) :
    (freyCurve A B x y).a₁ = 0 ∧
      (freyCurve A B x y).a₂ = B ^ y - A ^ x ∧
      (freyCurve A B x y).a₃ = 0 ∧
      (freyCurve A B x y).a₄ = -(A ^ x * B ^ y) ∧
      (freyCurve A B x y).a₆ = 0 :=
  ⟨rfl, rfl, rfl, rfl, rfl⟩

theorem freyCurve_c4 (A B : Int) (x y : Nat) :
    (freyCurve A B x y).c₄ =
      16 * ((A ^ x) ^ 2 + A ^ x * B ^ y + (B ^ y) ^ 2) := by
  simp only [freyCurve, WeierstrassCurve.c₄, WeierstrassCurve.b₂,
    WeierstrassCurve.b₄]
  ring

theorem freyCurve_c6 (A B : Int) (x y : Nat) :
    (freyCurve A B x y).c₆ =
      -32 * (B ^ y - A ^ x) *
        (2 * (B ^ y - A ^ x) ^ 2 + 9 * (A ^ x * B ^ y)) := by
  simp only [freyCurve, WeierstrassCurve.c₆, WeierstrassCurve.b₂,
    WeierstrassCurve.b₄, WeierstrassCurve.b₆]
  ring

theorem freyCurve_discriminant (A B : Int) (x y : Nat) :
    (freyCurve A B x y).Δ =
      16 * (A ^ x) ^ 2 * (B ^ y) ^ 2 * (A ^ x + B ^ y) ^ 2 := by
  simp only [freyCurve, WeierstrassCurve.Δ, WeierstrassCurve.b₂,
    WeierstrassCurve.b₄, WeierstrassCurve.b₆, WeierstrassCurve.b₈]
  ring

theorem freyCurve_discriminant_of_equation
    {A B C : Int} {x y z : Nat}
    (hEquation : A ^ x + B ^ y = C ^ z) :
    (ofBealEquation A B C x y z hEquation).Δ =
      16 * (A ^ x) ^ 2 * (B ^ y) ^ 2 * (C ^ z) ^ 2 := by
  simp only [ofBealEquation]
  rw [freyCurve_discriminant, hEquation]

theorem freyCurve_discriminant_ne_zero
    {A B : Int} {x y : Nat}
    (hA : A ≠ 0) (hB : B ≠ 0) (hSum : A ^ x + B ^ y ≠ 0) :
    (freyCurve A B x y).Δ ≠ 0 := by
  rw [freyCurve_discriminant]
  have hAx : A ^ x ≠ 0 := pow_ne_zero _ hA
  have hBy : B ^ y ≠ 0 := pow_ne_zero _ hB
  have h16 : (16 : Int) ≠ 0 := by decide
  exact mul_ne_zero
    (mul_ne_zero (mul_ne_zero h16 (pow_ne_zero 2 hAx)) (pow_ne_zero 2 hBy))
    (pow_ne_zero 2 hSum)

#print axioms freyCurve_c4
#print axioms freyCurve_c6
#print axioms freyCurve_discriminant
#print axioms freyCurve_discriminant_of_equation
#print axioms freyCurve_discriminant_ne_zero

end BealLevel26Foundations.Real.FreyWeierstrass
