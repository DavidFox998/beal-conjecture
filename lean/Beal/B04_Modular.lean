import Beal.B03_Conductor

def IsFreyModular (A B C : Nat) : Prop :=
  ∃ N, N = Frey_conductor_divisor A B C ∧ 2 ≤ N

theorem frey_modular_of_pos (A B C : Nat) (hA : 0 < A) :
  Frey_conductor_divisor A B C ≤ A → IsFreyModular A B C := by
  intro _
  exact ⟨Frey_conductor_divisor A B C, rfl, by
    have : 1 ≤ Frey_conductor_divisor A B C := by
      unfold Frey_conductor_divisor
      exact Nat.one_le_iff_ne_zero.mpr (by sorry) -- replace with Nat.gcd_pos
    sorry⟩
