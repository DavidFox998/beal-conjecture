-- B01_Def_Core — ZERO IMPORT, ZERO AXIOM
--
-- This is the mathematical statement only. Keep this file import-free so
-- `#print axioms` audits it against Lean's core prelude alone.
-- Do NOT add `import Mathlib` (or any other import) here.
--
-- Deliberately do not call `Nat.gcd` here: Lean 4.12's implementation of
-- Nat.gcd depends on `propext`, which would defeat this file's zero-axiom
-- invariant. The primitive condition below is the equivalent common-divisor
-- formulation for the positive bases required by IsBealSolutionCore.

/-- `d` divides `n`, expressed only with core natural-number arithmetic. -/
def DividesCore (d n : Nat) : Prop := ∃ q : Nat, n = d * q

/-- A, B, and C have no common divisor other than 1. -/
def PrimitiveTripleCore (A B C : Nat) : Prop :=
  ∀ d : Nat, DividesCore d A → DividesCore d B → DividesCore d C → d = 1

def IsBealSolutionCore (A B C x y z : Nat) : Prop :=
  0 < A ∧ 0 < B ∧ 0 < C ∧
  2 < x ∧ 2 < y ∧ 2 < z ∧
  A ^ x + B ^ y = C ^ z ∧
  PrimitiveTripleCore A B C

def BealConjectureCore : Prop :=
  ∀ A B C x y z, IsBealSolutionCore A B C x y z → False

#print axioms DividesCore
#print axioms PrimitiveTripleCore
#print axioms IsBealSolutionCore
#print axioms BealConjectureCore
-- Expected: all four declarations depend on no axioms.
