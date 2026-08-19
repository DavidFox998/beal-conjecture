-- B01_Def_Core — ZERO AXIOM definition
-- No Mathlib import, only core Init

def IsBealSolutionCore (A B C x y z : Nat) : Prop :=
  0 < A ∧ 0 < B ∧ 0 < C ∧
  2 < x ∧ 2 < y ∧ 2 < z ∧
  A ^ x + B ^ y = C ^ z ∧
  Nat.gcd A (Nat.gcd B C) = 1

def BealConjectureCore : Prop :=
  ∀ A B C x y z, IsBealSolutionCore A B C x y z → False

#print axioms IsBealSolutionCore
#print axioms BealConjectureCore
-- EXPECTED:
-- 'IsBealSolutionCore' has no axioms
-- 'BealConjectureCore' has no axioms
