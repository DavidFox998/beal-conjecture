import Mathlib.Data.Nat.GCD.Basic
import Mathlib.Data.Nat.Prime.Basic

def IsBealSolution (A B C x y z : Nat) : Prop :=
  x > 2 ∧ y > 2 ∧ z > 2 ∧ 0 < A ∧ 0 < B ∧ 0 < C ∧
  A ^ x + B ^ y = C ^ z ∧ Nat.Coprime A B ∧ Nat.Coprime B C ∧ Nat.Coprime A C

def BealConjecture : Prop :=
  ¬ ∃ A B C x y z, IsBealSolution A B C x y z

theorem beal_trivial_no_zero : ¬ IsBealSolution 0 B C x y z := by
  simp [IsBealSolution]

#print axioms IsBealSolution
-- should print only propext, Quot.sound
