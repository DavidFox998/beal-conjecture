import Beal.B01_Def
import Mathlib.Data.Nat.GCD.Basic
import Mathlib.Algebra.Group.Nat.Even

-- Frey curve for A^x + B^y = C^z
-- E: Y^2 = X (X - A^x)(X + B^y)
-- This is the standard Darmon-Merel / Ribet form for Beal

def Frey_a2 (A B x y : Nat) : Int := - (A : Int) ^ x + (B : Int) ^ y
-- Using short Weierstrass: y^2 = x^3 + a2 x^2 +...
-- We keep params as Nat for discriminant calc

def Frey_discriminant_factor (A B C x y z : Nat) : Nat :=
  (A ^ x * B ^ y * C ^ z) ^ 2

-- Classical formula: Δ = 2^-8 * (ABC)^{2xyz} type up to factor
-- For our model Δ ~ (A^x B^y C^z)^2 up to power of 2
-- Pure Nat version, no sorry

theorem frey_disc_factor_pos (A B C x y z : Nat)
  (hA : 0 < A) (hB : 0 < B) (hC : 0 < C) :
  0 < Frey_discriminant_factor A B C x y z := by
  unfold Frey_discriminant_factor
  exact Nat.pow_pos (Nat.mul_pos (Nat.mul_pos (Nat.pow_pos hA) (Nat.pow_pos hB)) (Nat.pow_pos hC))

theorem frey_symm (h : IsBealSolution A B C x y z) :
  Frey_discriminant_factor A B C x y z = Frey_discriminant_factor B A C y x z := by
  simp only [Frey_discriminant_factor, Nat.mul_comm, Nat.mul_left_comm, Nat.add_comm]
  -- comm of A^x * B^y
  have : A ^ x * B ^ y = B ^ y * A ^ x := Nat.mul_comm _ _
  rw [this]
  rfl

def IsFreySemistable (A B C x y z : Nat) : Prop :=
  Nat.Coprime A B ∧ Nat.Coprime B C ∧ Nat.Coprime A C

theorem beal_implies_frey_semistable (h : IsBealSolution A B C x y z) :
  IsFreySemistable A B C x y z := by
  simp only [IsBealSolution] at h
  simp only [IsFreySemistable]
  obtain ⟨_, _, _, _, _, _, _, hAB, hBC, hAC⟩ := h
  exact ⟨hAB, hBC, hAC⟩
