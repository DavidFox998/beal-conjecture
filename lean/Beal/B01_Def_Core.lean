-- B01_Def_Core — ZERO IMPORT, ZERO AXIOM
--
-- This is the mathematical statement only. Keep this file import-free so
-- `#print axioms` can audit the definition against Lean's core prelude alone.
-- Do NOT add `import Mathlib` (or any other import) here.

def IsBealSolutionCore (A B C x y z : Nat) : Prop :=
  0 < A ∧ 0 < B ∧ 0 < C ∧
  2 < x ∧ 2 < y ∧ 2 < z ∧
  A ^ x + B ^ y = C ^ z ∧
  Nat.gcd A (Nat.gcd B C) = 1

def BealConjectureCore : Prop :=
  ∀ A B C x y z, IsBealSolutionCore A B C x y z → False

#print axioms IsBealSolutionCore
#print axioms BealConjectureCore
-- Expected: both declarations depend on no axioms.
