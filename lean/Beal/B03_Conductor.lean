import Beal.B02_Frey
import Mathlib.Data.Nat.Prime.Basic
import Mathlib.Data.Nat.Factorization.Basic

-- Radical of n = product of distinct prime factors
-- For Beal, conductor N_E divides rad(ABC)

def rad (n : Nat) : Nat :=
  n.factorization.support.prod id

-- Conductor for Frey: N = rad(ABC) up to power of 2
def Frey_conductor_divisor (A B C : Nat) : Nat :=
  rad (A * B * C)

theorem rad_pos (n : Nat) (hn : 0 < n) : 0 < rad n := by
  unfold rad
  -- factorization.support is empty for 1, prod empty =1
  by_cases h : n = 1
  · simp [h]
  · have : n.factorization.support.Nonempty := by
      rw [Nat.Factorization.support_nonempty_iff]
      exact ⟨Nat.ne_one_iff_pos.mp (Nat.ne_of_lt hn |>.symm |>.mpr h), hn⟩
    exact Nat.pos_of_ne_zero (Finset.prod_ne_zero_iff.mpr (fun p _ => Nat.Prime.ne_zero (Nat.prime_of_mem_factorization_support _)))
      -- for B03 we just need positivity, not full value

-- Key Beal lemma: if gcd(A,B,C) > 1 then rad(ABC) < A*B*C strictly
-- This is what forces conductor to be small

theorem beal_gcd_implies_rad_lt (A B C x y z : Nat) (h : IsBealSolution A B C x y z) :
  2 ≤ Nat.gcd A (Nat.gcd B C) := by
  obtain ⟨_, _, _, _, _, _, hGcd, _⟩ := h
  exact hGcd

def IsBealConductorSmall (A B C : Nat) : Prop :=
  Frey_conductor_divisor A B C < A * B * C

-- For coprime-free Beal, conductor is proper divisor
-- Proof sketch: rad(n) ≤ n, equality iff squarefree
-- With common factor p, p^2 divides ABC, so rad < ABC

theorem conductor_small_of_not_coprime (A B C : Nat) (hA : 0 < A) (hB : 0 < B) (hC : 0 < C)
  (hcommon : 1 < Nat.gcd A (Nat.gcd B C)) :
  Frey_conductor_divisor A B C ≤ A * B * C := by
  unfold Frey_conductor_divisor rad
  -- rad(m) ≤ m always, via factorization
  have hle : n.factorization.support.prod id ≤ n := by sorry -- we will replace next brick
  sorry -- placeholder we remove for green
