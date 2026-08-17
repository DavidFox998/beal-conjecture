import Mathlib.Data.Nat.Prime.Basic

def IsBealSolution (A B C x y z : Nat) : Prop :=
  0 < A ∧ 0 < B ∧ 0 < C ∧
  2 < x ∧ 2 < y ∧ 2 < z ∧
  A ^ x + B ^ y = C ^ z ∧
  Nat.gcd A (Nat.gcd B C) = 1

def _root_.BealConjecture : Prop :=
  ∀ A B C x y z, IsBealSolution A B C x y z → False

def _root_.Beal.BealConjecture : Prop := _root_.BealConjecture
