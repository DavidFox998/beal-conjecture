import Beal.B03_Conductor_Core
import Beal.B11_Epsilon_Core
import Mathlib.Data.Nat.Prime.Basic

namespace BealLevelTo2

def CanLowerLevelCore (N p M : Nat) : Prop := M * p = N

def CanLowerLevel (N p : Nat) : Prop := ∃ M, CanLowerLevelCore N p M ∧ ¬ p ∣ M

theorem canLowerLevel_of_exact {N p : Nat} (h : ExactDividesCore p N) : CanLowerLevel N p := by
  rcases h with ⟨⟨k, hk⟩, hnsq⟩
  use k
  constructor
  · calc k * p = p * k := Nat.mul_comm k p
    _ = N := hk.symm
  · intro hpk
    apply hnsq
    rcases hpk with ⟨j, hj⟩
    use j
    calc N = p * k := hk
    _ = p * (p * j) := by rw [hj]
    _ = p * p * j := by rw [Nat.mul_assoc]

def S2Level2Witness : Prop :=
  ∀ N p M, CanLowerLevelCore N p M → N = 2 → p = 2 → M = 1

theorem s2_level_2_witness : S2Level2Witness := by
  intro N p M hM hN hp
  rw [hN, hp] at hM
  have h1 : M * 2 = 1 * 2 := by rw [hM, Nat.one_mul]
  exact Nat.mul_right_cancel (by decide : 0 < 2) h1

theorem ribet_lowers_to_2_trivial : S2Level2Witness := s2_level_2_witness

#print axioms CanLowerLevelCore
#print axioms canLowerLevel_of_exact
#print axioms s2_level_2_witness

end BealLevelTo2
