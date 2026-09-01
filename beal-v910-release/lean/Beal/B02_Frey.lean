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
  have int_pow_ne_zero : ∀ (a : Int) (n : Nat), a ≠ 0 → a ^ n ≠ 0 := by
    intro a n ha
    induction n with
    | zero => simpa only [pow_zero] using (show (1 : Int) ≠ 0 by decide)
    | succ n ih =>
        rw [pow_succ]
        intro hzero
        exact (Int.mul_eq_zero.mp hzero).elim ih ha
  have hproduct : (A : Int) ^ x * (B : Int) ^ y * (C : Int) ^ z ≠ 0 := by
    intro hzero
    rcases Int.mul_eq_zero.mp hzero with hab | hc
    · rcases Int.mul_eq_zero.mp hab with ha | hb
      · exact (int_pow_ne_zero (A : Int) x hA0) ha
      · exact (int_pow_ne_zero (B : Int) y hB0) hb
    · exact (int_pow_ne_zero (C : Int) z hC0) hc
  intro hzero
  rcases Int.mul_eq_zero.mp hzero with h16 | hsq
  · exact (show (-16 : Int) ≠ 0 by decide) h16
  · exact (int_pow_ne_zero _ 2 hproduct) hsq

#print axioms freyΔ
#print axioms freyΔ_ne_zero_of_solution

end BealFrey
