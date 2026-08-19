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
  have hA' : (A : Int) ≠ 0 := by exact_mod_cast Nat.ne_of_gt hA
  have hB' : (B : Int) ≠ 0 := by exact_mod_cast Nat.ne_of_gt hB
  have hC' : (C : Int) ≠ 0 := by exact_mod_cast Nat.ne_of_gt hC
  intro heq
  have : (A : Int) ^ x * (B : Int) ^ y * (C : Int) ^ z = 0 := by nlinarith
  have : (A : Int) ^ x = 0 ∨ (B : Int) ^ y = 0 ∨ (C : Int) ^ z = 0 := by
    rcases mul_eq_zero.mp this with h1 | h2
    · rcases mul_eq_zero.mp h1 with h | h
      · left; exact h
      · right; left; exact h
    · right; right; exact h2
  rcases this with h | h | h
  · exact hA' (pow_eq_zero_iff (by omega) |>.mp h)
  · exact hB' (pow_eq_zero_iff (by omega) |>.mp h)
  · exact hC' (pow_eq_zero_iff (by omega) |>.mp h)

#print axioms freyΔ
#print axioms freyΔ_ne_zero_of_solution

end BealFrey
