import Mathlib.Data.Nat.Prime.Basic
import Mathlib.Tactic
import Beal.B01_Def
import Beal.B02_Frey_Core

namespace BealFrey

def freyΔ (A B C x y z : Nat) : Int :=
  FreyDeltaCore A B C x y z

theorem freyΔ_ne_zero_of_solution {A B C x y z : Nat}
    (h : IsBealSolution A B C x y z) : freyΔ A B C x y z ≠ 0 := by
  rcases h with ⟨hA, hB, hC, _, _, _, _, _⟩
  unfold freyΔ FreyDeltaCore
  have hA0 : (A : Int) ≠ 0 := Int.ofNat_ne_zero.mpr (Nat.ne_of_gt hA)
  have hB0 : (B : Int) ≠ 0 := Int.ofNat_ne_zero.mpr (Nat.ne_of_gt hB)
  have hC0 : (C : Int) ≠ 0 := Int.ofNat_ne_zero.mpr (Nat.ne_of_gt hC)
  exact mul_ne_zero (by norm_num) <|
    pow_ne_zero 2 <|
      mul_ne_zero
        (mul_ne_zero (pow_ne_zero x hA0) (pow_ne_zero y hB0))
        (pow_ne_zero z hC0)

#print axioms freyΔ
#print axioms freyΔ_ne_zero_of_solution

end BealFrey
