import Beal.B17_FreyRationalTwoTorsion

namespace Beal17Mazur

open WeierstrassCurve

/-- The rational 2-torsion set of the fixed Frey curve, including the point at
infinity. -/
def FullE2 (A B x y : Nat) : Set (RationalFreyPoint A B x y) :=
  {P | P + P = 0}

/-- An affine point of the Frey curve with `Y = 0` has one of the three
displayed roots of the cubic.

This is the explicit exhaustiveness bridge missing from the v8.1 three-point
certificate. -/
theorem Frey_E2_exhaustive
    (A B x y : Nat) {X Y : ℚ}
    (hPoint : (freyRationalCurve A B x y).toAffine.Nonsingular X Y)
    (hY : Y = 0) :
    X = 0 ∨ X = (A : ℚ) ^ x ∨ X = -((B : ℚ) ^ y) := by
  subst Y
  have hEquation := hPoint.1
  rw [WeierstrassCurve.Affine.equation_iff] at hEquation
  simp only [freyRationalCurve, zero_pow, OfNat.ofNat_ne_zero, zero_mul,
    zero_add, mul_zero, add_zero] at hEquation
  have hFactor :
      X * (X - (A : ℚ) ^ x) * (X + (B : ℚ) ^ y) = 0 := by
    calc
      X * (X - (A : ℚ) ^ x) * (X + (B : ℚ) ^ y) =
          X ^ 3 +
            ((B : ℚ) ^ y - (A : ℚ) ^ x) * X ^ 2 +
            -((A : ℚ) ^ x * (B : ℚ) ^ y) * X := by ring
      _ = 0 := hEquation.symm
  rcases mul_eq_zero.mp hFactor with hLeft | hNegB
  · rcases mul_eq_zero.mp hLeft with hZero | hA
    · exact Or.inl hZero
    · exact Or.inr <| Or.inl <| sub_eq_zero.mp hA
  · exact Or.inr <| Or.inr <| by linarith

/-- A nonidentity affine Frey point killed by doubling has zero
`Y`-coordinate. -/
theorem freyTwoTorsion_affine_y_eq_zero
    (A B x y : Nat) {X Y : ℚ}
    (hPoint : (freyRationalCurve A B x y).toAffine.Nonsingular X Y)
    (hDouble :
      (WeierstrassCurve.Affine.Point.some hPoint :
        RationalFreyPoint A B x y) +
      WeierstrassCurve.Affine.Point.some hPoint = 0) :
    Y = 0 := by
  have hNegY :
      Y = (freyRationalCurve A B x y).toAffine.negY X Y := by
    by_contra hNe
    have hSome :
        (WeierstrassCurve.Affine.Point.some
          ((freyRationalCurve A B x y).toAffine.nonsingular_add
            hPoint hPoint fun _ => hNe) :
          RationalFreyPoint A B x y) = 0 := by
      simpa only [WeierstrassCurve.Affine.Point.add_self_of_Y_ne hNe] using
        hDouble
    exact WeierstrassCurve.Affine.Point.some_ne_zero _ hSome
  simp only [WeierstrassCurve.Affine.negY, freyRationalCurve, zero_mul,
    zero_add, sub_zero] at hNegY
  linarith

/-- The complete rational `E[2]` classification for the Frey curve:
the point at infinity and the three affine points already constructed in
v8.1 are all the rational points killed by doubling. -/
theorem freyFullE2_exhaustive
    (A B x y : Nat) (hA : 0 < A) (hB : 0 < B)
    (P : RationalFreyPoint A B x y) :
    P + P = 0 ↔
      P = 0 ∨
      P = freyTwoTorsionZero A B x y hA hB ∨
      P = freyTwoTorsionA A B x y hA hB ∨
      P = freyTwoTorsionNegB A B x y hA hB := by
  constructor
  · intro hDouble
    cases P with
    | zero => exact Or.inl rfl
    | @some X Y hPoint =>
        have hY : Y = 0 :=
          freyTwoTorsion_affine_y_eq_zero A B x y hPoint hDouble
        rcases Frey_E2_exhaustive A B x y hPoint hY with hX | hX | hX
        · right
          left
          subst X
          subst Y
          rfl
        · right
          right
          left
          subst X
          subst Y
          rfl
        · right
          right
          right
          subst X
          subst Y
          rfl
  · rintro (rfl | rfl | rfl | rfl)
    · simp
    · exact freyTwoTorsionZero_add_self A B x y hA hB
    · exact freyTwoTorsionA_add_self A B x y hA hB
    · exact freyTwoTorsionNegB_add_self A B x y hA hB

/-- Set form of the full rational 2-torsion classification. -/
theorem freyFullE2_eq
    (A B x y : Nat) (hA : 0 < A) (hB : 0 < B) :
    FullE2 A B x y =
      {0,
        freyTwoTorsionZero A B x y hA hB,
        freyTwoTorsionA A B x y hA hB,
        freyTwoTorsionNegB A B x y hA hB} := by
  ext P
  simp only [FullE2, Set.mem_setOf_eq, Set.mem_insert_iff,
    Set.mem_singleton_iff]
  exact freyFullE2_exhaustive A B x y hA hB P

#print axioms Frey_E2_exhaustive
#print axioms freyTwoTorsion_affine_y_eq_zero
#print axioms freyFullE2_exhaustive
#print axioms freyFullE2_eq

end Beal17Mazur