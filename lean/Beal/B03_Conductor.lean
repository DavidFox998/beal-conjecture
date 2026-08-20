import Beal.B03_Conductor_Core
import Beal.B02_Frey

def Frey_conductor_divisor (A B C : Nat) : Nat :=
  Nat.gcd A (Nat.gcd B C)

theorem conductor_dvd_A (A B C : Nat) : Frey_conductor_divisor A B C ∣ A :=
  Nat.gcd_dvd_left A (Nat.gcd B C)

theorem conductor_dvd_B (A B C : Nat) : Frey_conductor_divisor A B C ∣ B :=
  Nat.dvd_trans (Nat.gcd_dvd_right A (Nat.gcd B C)) (Nat.gcd_dvd_left B C)

theorem conductor_dvd_C (A B C : Nat) : Frey_conductor_divisor A B C ∣ C :=
  Nat.dvd_trans (Nat.gcd_dvd_right A (Nat.gcd B C)) (Nat.gcd_dvd_right B C)

theorem conductor_le_A (A B C : Nat) (hA : 0 < A) : Frey_conductor_divisor A B C ≤ A :=
  Nat.le_of_dvd hA (conductor_dvd_A A B C)

theorem conductor_le_B (A B C : Nat) (hB : 0 < B) : Frey_conductor_divisor A B C ≤ B :=
  Nat.le_of_dvd hB (conductor_dvd_B A B C)

theorem conductor_le_C (A B C : Nat) (hC : 0 < C) : Frey_conductor_divisor A B C ≤ C :=
  Nat.le_of_dvd hC (conductor_dvd_C A B C)
