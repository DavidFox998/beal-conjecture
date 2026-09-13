import BealLevel26Foundations.Real.FreyWeierstrass
import Mathlib.Tactic

namespace BealLevel26Foundations.GaloisRep.FreyDeltaSeparated

open BealLevel26Foundations.Real.FreyWeierstrass

/-!
# v6.2.0 Frey Δ separated

`Nat.pow` / `Int.pow` of
`Δ = 16*(A¹³)²*(B¹³)²*(A¹³+B¹³)²` lives on
`frey_Delta13_formula` / `frey_Delta13_formula_int`.
That formula is **off** the none Galois inhabitant
in `FreyGaloisRepReal`, so
`rho_bar_Frey_13_real_algorithm_inhabited` stays
**none** (stronger than propext-only).

`frey_Delta13_ne_0_of_pos_real` is the real
positivity argument: `0 < A`, `0 < B`, and
`A¹³ + B¹³ ≠ 0` imply the formula is nonzero.
Not a conductor.  Not Mathlib Tate.

Does **not** import Forall, Mazur, PathLock,
`BealForallInKernel`, `BealForall`, or
`FreyGaloisRepReal` (cycle).  No new computational
assumption.  No `False.elim`.
-/

/-- Displayed Δ formula on Nat bases.  `Nat.pow` lives
here, not on the **none** Galois token. -/
def frey_Delta13_formula_nat (A B : Nat) : Nat :=
  16 * (A ^ 13) ^ 2 * (B ^ 13) ^ 2 * (A ^ 13 + B ^ 13) ^ 2

/-- Displayed Δ formula on Int bases.  `Int.pow` lives
here, not on the **none** Galois token. -/
def frey_Delta13_formula (A B : Int) : Int :=
  16 * (A ^ 13) ^ 2 * (B ^ 13) ^ 2 * (A ^ 13 + B ^ 13) ^ 2

theorem frey_Delta13_formula_eq (A B : Int) :
    frey_Delta13_formula A B =
      16 * (A ^ 13) ^ 2 * (B ^ 13) ^ 2 * (A ^ 13 + B ^ 13) ^ 2 :=
  rfl

theorem frey_Delta13_formula_nat_eq (A B : Nat) :
    frey_Delta13_formula_nat A B =
      16 * (A ^ 13) ^ 2 * (B ^ 13) ^ 2 * (A ^ 13 + B ^ 13) ^ 2 :=
  rfl

/-- The formula is the Weierstrass Δ of
`Y² = X(X − A¹³)(X + B¹³)`. -/
theorem frey_Delta13_formula_eq_curve (A B : Int) :
    frey_Delta13_formula A B = (freyCurve A B 13 13).Δ :=
  (freyCurve_discriminant A B 13 13).symm

/-- Type token for a positive-base Frey model.
Fields are display data.  The computed `Nat.pow`
formula is **not** a field, so closed tokens stay
**none**. -/
structure FreyCurveSeparated : Type where
  A : Int
  B : Int
  exponent : Nat
  delta_leading : Nat
  delta_display : String

/-- Positive-base constructor.  `hA` / `hB` are
parameters, not structure fields.  **none**. -/
def FreyCurveSeparated.of_pos
    (A B : Int) (_hA : (0 : Int) < A) (_hB : (0 : Int) < B) :
    FreyCurveSeparated where
  A := A
  B := B
  exponent := 13
  delta_leading := 16
  delta_display := "16*(A^13)^2*(B^13)^2*(A^13+B^13)^2"

/-- Path 1 displayed bases `⟨13, 2⟩`.  **none**. -/
def FreyCurveSeparated.token : FreyCurveSeparated :=
  FreyCurveSeparated.of_pos 13 2 (by decide) (by decide)

theorem FreyCurveSeparated.token_display :
    FreyCurveSeparated.token.delta_display =
      "16*(A^13)^2*(B^13)^2*(A^13+B^13)^2" :=
  rfl

theorem FreyCurveSeparated.token_leading :
    FreyCurveSeparated.token.delta_leading = 16 :=
  rfl

/-- v6.2.0: Δ ≠ 0 from real positivity
`0 < A`, `0 < B`, and `A¹³ + B¹³ ≠ 0`.
`16 ≠ 0`, squares of nonzero terms, product of
nonzeros.  Premises are the positivity data, not
a propext-only label. -/
theorem frey_Delta13_ne_0_of_pos_real
    {A B : Int} (hA : (0 : Int) < A) (hB : (0 : Int) < B)
    (hSum : A ^ 13 + B ^ 13 ≠ 0) :
    frey_Delta13_formula A B ≠ 0 := by
  have hA0 : A ≠ 0 := ne_of_gt hA
  have hB0 : B ≠ 0 := ne_of_gt hB
  have hA13 : A ^ 13 ≠ 0 := pow_ne_zero 13 hA0
  have hB13 : B ^ 13 ≠ 0 := pow_ne_zero 13 hB0
  have h16 : (16 : Int) ≠ 0 := by decide
  have hA2 : (A ^ 13) ^ 2 ≠ 0 := pow_ne_zero 2 hA13
  have hB2 : (B ^ 13) ^ 2 ≠ 0 := pow_ne_zero 2 hB13
  have hS2 : (A ^ 13 + B ^ 13) ^ 2 ≠ 0 := pow_ne_zero 2 hSum
  exact mul_ne_zero (mul_ne_zero (mul_ne_zero h16 hA2) hB2) hS2

/-- Nat-formula Δ ≠ 0 from `0 < A` and `0 < B`.
Sum `A¹³ + B¹³` is positive, so the extra `hSum`
premise is not needed on `Nat`. -/
theorem frey_Delta13_formula_nat_ne_0
    {A B : Nat} (hA : 0 < A) (hB : 0 < B) :
    frey_Delta13_formula_nat A B ≠ 0 := by
  have hA13 : 0 < A ^ 13 := Nat.pow_pos hA
  have hB13 : 0 < B ^ 13 := Nat.pow_pos hB
  have hA2 : 0 < (A ^ 13) ^ 2 := Nat.pow_pos hA13
  have hB2 : 0 < (B ^ 13) ^ 2 := Nat.pow_pos hB13
  have hSum : 0 < A ^ 13 + B ^ 13 := Nat.add_pos_left hA13 _
  have hS2 : 0 < (A ^ 13 + B ^ 13) ^ 2 := Nat.pow_pos hSum
  have h16 : 0 < 16 := Nat.succ_pos 15
  exact ne_of_gt (Nat.mul_pos (Nat.mul_pos (Nat.mul_pos h16 hA2) hB2) hS2)

/-- Separated inhabitant: positive-base Type token,
no `Nat.pow` in the term.  **none**.  Not the
Galois residual map; that stays
`rho_bar_Frey_13_real_algorithm_inhabited` **none**. -/
def FreyGaloisRep13_real_algorithm_inhabited_separated :
    Nonempty FreyCurveSeparated :=
  ⟨FreyCurveSeparated.token⟩

#check frey_Delta13_formula
#check frey_Delta13_formula_nat
#check frey_Delta13_formula_eq
#check frey_Delta13_ne_0_of_pos_real
#check frey_Delta13_formula_nat_ne_0
#check FreyCurveSeparated
#check FreyCurveSeparated.of_pos
#check FreyCurveSeparated.token
#check FreyGaloisRep13_real_algorithm_inhabited_separated
#print axioms frey_Delta13_formula
#print axioms frey_Delta13_formula_nat
#print axioms frey_Delta13_formula_eq
#print axioms FreyCurveSeparated.token
#print axioms FreyGaloisRep13_real_algorithm_inhabited_separated
#print axioms frey_Delta13_ne_0_of_pos_real
#print axioms frey_Delta13_formula_nat_ne_0

end BealLevel26Foundations.GaloisRep.FreyDeltaSeparated
