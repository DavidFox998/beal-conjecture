import Mathlib.AlgebraicGeometry.EllipticCurve.Group

namespace Beal17Mazur

open WeierstrassCurve

/-- The Frey Weierstrass equation over `ℚ`:
`Y² = X(X - Aˣ)(X + Bʸ)`.

Unlike the earlier B17 placeholder, this is Mathlib's actual Weierstrass-curve
type. -/
noncomputable def freyRationalCurve (A B x y : Nat) : WeierstrassCurve ℚ where
  a₁ := 0
  a₂ := (B : ℚ) ^ y - (A : ℚ) ^ x
  a₃ := 0
  a₄ := -((A : ℚ) ^ x * (B : ℚ) ^ y)
  a₆ := 0

/-- The discriminant of the rational Frey equation. -/
theorem freyRationalCurve_discriminant (A B x y : Nat) :
    (freyRationalCurve A B x y).Δ =
      16 * ((A : ℚ) ^ x) ^ 2 * ((B : ℚ) ^ y) ^ 2 *
        (((A : ℚ) ^ x + (B : ℚ) ^ y) ^ 2) := by
  simp only [freyRationalCurve, WeierstrassCurve.Δ, WeierstrassCurve.b₂,
    WeierstrassCurve.b₄, WeierstrassCurve.b₆, WeierstrassCurve.b₈]
  ring

/-- Positive Beal bases make the rational Frey equation nonsingular. -/
theorem freyRationalCurve_discriminant_ne_zero
    {A B x y : Nat} (hA : 0 < A) (hB : 0 < B) :
    (freyRationalCurve A B x y).Δ ≠ 0 := by
  rw [freyRationalCurve_discriminant]
  positivity

/-- The affine point `(0, 0)` lies on the rational Frey equation. -/
theorem freyRationalCurve_equation_zero (A B x y : Nat) :
    (freyRationalCurve A B x y).toAffine.Equation 0 0 := by
  rw [WeierstrassCurve.Affine.equation_zero]
  rfl

/-- The affine point `(Aˣ, 0)` lies on the rational Frey equation. -/
theorem freyRationalCurve_equation_A (A B x y : Nat) :
    (freyRationalCurve A B x y).toAffine.Equation ((A : ℚ) ^ x) 0 := by
  rw [WeierstrassCurve.Affine.equation_iff]
  simp only [freyRationalCurve, zero_pow, OfNat.ofNat_ne_zero, zero_mul,
    zero_add, mul_zero, add_zero]
  ring

/-- The affine point `(-Bʸ, 0)` lies on the rational Frey equation. -/
theorem freyRationalCurve_equation_negB (A B x y : Nat) :
    (freyRationalCurve A B x y).toAffine.Equation (-((B : ℚ) ^ y)) 0 := by
  rw [WeierstrassCurve.Affine.equation_iff]
  simp only [freyRationalCurve, zero_pow, OfNat.ofNat_ne_zero, zero_mul,
    zero_add, mul_zero, add_zero]
  ring

/-- The genuine Mathlib rational-point type of the Frey equation. -/
abbrev RationalFreyPoint (A B x y : Nat) :=
  (freyRationalCurve A B x y).toAffine.Point

noncomputable def freyTwoTorsionZero
    (A B x y : Nat) (hA : 0 < A) (hB : 0 < B) :
    RationalFreyPoint A B x y :=
  .some <|
    (freyRationalCurve A B x y).toAffine.nonsingular_of_Δ_ne_zero
      (freyRationalCurve_equation_zero A B x y)
      (freyRationalCurve_discriminant_ne_zero hA hB)

noncomputable def freyTwoTorsionA
    (A B x y : Nat) (hA : 0 < A) (hB : 0 < B) :
    RationalFreyPoint A B x y :=
  .some <|
    (freyRationalCurve A B x y).toAffine.nonsingular_of_Δ_ne_zero
      (freyRationalCurve_equation_A A B x y)
      (freyRationalCurve_discriminant_ne_zero hA hB)

noncomputable def freyTwoTorsionNegB
    (A B x y : Nat) (hA : 0 < A) (hB : 0 < B) :
    RationalFreyPoint A B x y :=
  .some <|
    (freyRationalCurve A B x y).toAffine.nonsingular_of_Δ_ne_zero
      (freyRationalCurve_equation_negB A B x y)
      (freyRationalCurve_discriminant_ne_zero hA hB)

/-- A concrete nonidentity rational point killed by doubling. -/
structure RationalPointOfExactOrderTwo (A B x y : Nat) where
  point : RationalFreyPoint A B x y
  point_ne_zero : point ≠ 0
  add_self : point + point = 0

theorem freyTwoTorsionZero_ne_zero
    (A B x y : Nat) (hA : 0 < A) (hB : 0 < B) :
    freyTwoTorsionZero A B x y hA hB ≠ 0 :=
  WeierstrassCurve.Affine.Point.some_ne_zero _

theorem freyTwoTorsionA_ne_zero
    (A B x y : Nat) (hA : 0 < A) (hB : 0 < B) :
    freyTwoTorsionA A B x y hA hB ≠ 0 :=
  WeierstrassCurve.Affine.Point.some_ne_zero _

theorem freyTwoTorsionNegB_ne_zero
    (A B x y : Nat) (hA : 0 < A) (hB : 0 < B) :
    freyTwoTorsionNegB A B x y hA hB ≠ 0 :=
  WeierstrassCurve.Affine.Point.some_ne_zero _

theorem freyTwoTorsionZero_add_self
    (A B x y : Nat) (hA : 0 < A) (hB : 0 < B) :
    freyTwoTorsionZero A B x y hA hB +
        freyTwoTorsionZero A B x y hA hB = 0 := by
  apply WeierstrassCurve.Affine.Point.add_self_of_Y_eq
  simp [freyRationalCurve]

theorem freyTwoTorsionA_add_self
    (A B x y : Nat) (hA : 0 < A) (hB : 0 < B) :
    freyTwoTorsionA A B x y hA hB +
        freyTwoTorsionA A B x y hA hB = 0 := by
  apply WeierstrassCurve.Affine.Point.add_self_of_Y_eq
  simp [freyRationalCurve]

theorem freyTwoTorsionNegB_add_self
    (A B x y : Nat) (hA : 0 < A) (hB : 0 < B) :
    freyTwoTorsionNegB A B x y hA hB +
        freyTwoTorsionNegB A B x y hA hB = 0 := by
  apply WeierstrassCurve.Affine.Point.add_self_of_Y_eq
  simp [freyRationalCurve]

/-- The points `(0, 0)` and `(Aˣ, 0)` are distinct. -/
theorem freyTwoTorsionZero_ne_A
    (A B x y : Nat) (hA : 0 < A) (hB : 0 < B) :
    freyTwoTorsionZero A B x y hA hB ≠
      freyTwoTorsionA A B x y hA hB := by
  intro h
  have hx : (0 : ℚ) = (A : ℚ) ^ x :=
    (WeierstrassCurve.Affine.Point.some.inj h).left
  have hpow : (0 : ℚ) < (A : ℚ) ^ x := by positivity
  linarith

/-- The points `(0, 0)` and `(-Bʸ, 0)` are distinct. -/
theorem freyTwoTorsionZero_ne_negB
    (A B x y : Nat) (hA : 0 < A) (hB : 0 < B) :
    freyTwoTorsionZero A B x y hA hB ≠
      freyTwoTorsionNegB A B x y hA hB := by
  intro h
  have hx : (0 : ℚ) = -((B : ℚ) ^ y) :=
    (WeierstrassCurve.Affine.Point.some.inj h).left
  have hpow : (0 : ℚ) < (B : ℚ) ^ y := by positivity
  linarith

/-- The points `(Aˣ, 0)` and `(-Bʸ, 0)` are distinct. -/
theorem freyTwoTorsionA_ne_negB
    (A B x y : Nat) (hA : 0 < A) (hB : 0 < B) :
    freyTwoTorsionA A B x y hA hB ≠
      freyTwoTorsionNegB A B x y hA hB := by
  intro h
  have hx : (A : ℚ) ^ x = -((B : ℚ) ^ y) :=
    (WeierstrassCurve.Affine.Point.some.inj h).left
  have hApow : (0 : ℚ) < (A : ℚ) ^ x := by positivity
  have hBpow : (0 : ℚ) < (B : ℚ) ^ y := by positivity
  linarith

/-- The three distinct, nonzero rational 2-torsion points of the Frey equation. -/
structure FreyThreeDistinctRationalTwoTorsion (A B x y : Nat) where
  atZero : RationalPointOfExactOrderTwo A B x y
  atA : RationalPointOfExactOrderTwo A B x y
  atNegB : RationalPointOfExactOrderTwo A B x y
  zero_ne_A : atZero.point ≠ atA.point
  zero_ne_negB : atZero.point ≠ atNegB.point
  A_ne_negB : atA.point ≠ atNegB.point

/-- Positive bases construct the three genuine rational 2-torsion points. -/
noncomputable def freyThreeDistinctRationalTwoTorsion
    (A B x y : Nat) (hA : 0 < A) (hB : 0 < B) :
    FreyThreeDistinctRationalTwoTorsion A B x y where
  atZero :=
    ⟨freyTwoTorsionZero A B x y hA hB,
      freyTwoTorsionZero_ne_zero A B x y hA hB,
      freyTwoTorsionZero_add_self A B x y hA hB⟩
  atA :=
    ⟨freyTwoTorsionA A B x y hA hB,
      freyTwoTorsionA_ne_zero A B x y hA hB,
      freyTwoTorsionA_add_self A B x y hA hB⟩
  atNegB :=
    ⟨freyTwoTorsionNegB A B x y hA hB,
      freyTwoTorsionNegB_ne_zero A B x y hA hB,
      freyTwoTorsionNegB_add_self A B x y hA hB⟩
  zero_ne_A := freyTwoTorsionZero_ne_A A B x y hA hB
  zero_ne_negB := freyTwoTorsionZero_ne_negB A B x y hA hB
  A_ne_negB := freyTwoTorsionA_ne_negB A B x y hA hB

#print axioms freyRationalCurve_discriminant
#print axioms freyRationalCurve_discriminant_ne_zero
#print axioms freyThreeDistinctRationalTwoTorsion

end Beal17Mazur