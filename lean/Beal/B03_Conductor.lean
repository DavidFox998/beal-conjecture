import Beal.B02_Frey

def Frey_conductor_divisor (A B C : Nat) : Nat :=
  Nat.gcd A (Nat.gcd B C)

theorem conductor_dvd_A (A B C : Nat) : Frey_conductor_divisor A B C ∣ A := by
  unfold Frey_conductor_divisor
  exact Nat.dvd_trans (Nat.gcd_dvd_left _ _) (Nat.gcd_dvd_left _ _)

theorem conductor_dvd_B (A B C : Nat) : Frey_conductor_divisor A B C ∣ B := by
  unfold Frey_conductor_divisor
  exact Nat.dvd_trans (Nat.gcd_dvd_left _ _) (Nat.gcd_dvd_right _ _)

theorem conductor_dvd_C (A B C : Nat) : Frey_conductor_divisor A B C ∣ C := by
  unfold Frey_conductor_divisor
  exact Nat.gcd_dvd_right _ _

theorem beal_conductor_at_least_2 (A B C x y z : Nat) (h : IsBealSolution A B C x y z) :
  2 ≤ Frey_conductor_divisor A B C := by
  obtain ⟨_, _, _, _, _, _, hgcd, _⟩ := h
  exact hgcd

theorem conductor_le_A (A B C : Nat) : Frey_conductor_divisor A B C ≤ A := by
  unfold Frey_conductor_divisor
  exact Nat.le_of_dvd (Nat.zero_lt_of_ne_zero (by intro h; simp [h] at *)) (conductor_dvd_A A B C)
