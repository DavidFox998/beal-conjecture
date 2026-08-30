-- B02_Frey_Core — ZERO IMPORT, ZERO AXIOM
--
-- Keep the Frey discriminant expression and its positivity premise in the
-- Lean core layer. The nonzero proof belongs to the Mathlib wrapper.

def FreyDeltaCore (A B C x y z : Nat) : Int :=
  -16 * ((A : Int) ^ x * (B : Int) ^ y * (C : Int) ^ z) ^ 2

def FreyNonzeroCore (A B C : Nat) : Prop :=
  0 < A ∧ 0 < B ∧ 0 < C

#print axioms FreyDeltaCore
#print axioms FreyNonzeroCore
-- Expected: both declarations depend on no axioms.
