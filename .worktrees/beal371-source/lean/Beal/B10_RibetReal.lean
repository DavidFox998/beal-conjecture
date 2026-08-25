import Beal.B10_RibetReal_Core
import Mathlib.Data.Nat.Prime.Basic

namespace BealRibet10

theorem dim_S2_2_eq_zero : DimS2_2_Core = 0 := by rfl

theorem s2_vanishes_at_2 : S2VanishesAt2Core := by
  unfold S2VanishesAt2Core DimS2_2_Core GenusX0_2_Core
  rfl

theorem level_lowering_of_exact {N p : Nat} (h : ExactDivides10Core p N) : ∃ M, LevelLowering10Core N p M := by
  rcases h with ⟨⟨k, hk⟩, hnsq⟩
  use k
  constructor
  · calc k * p = p * k := Nat.mul_comm k p
    _ = N := by rw [←hk]
  · intro hpk
    apply hnsq
    rcases hpk with ⟨j, hj⟩
    use j
    calc N = p * k := hk
    _ = p * (p * j) := by rw [hj]
    _ = p * p * j := by rw [Nat.mul_assoc]

theorem genus_X0_2_zero : GenusX0_2_Core = 0 := by rfl

#print axioms dim_S2_2_eq_zero
#print axioms s2_vanishes_at_2
#print axioms level_lowering_of_exact

end BealRibet10
