-- B11 Epsilon Core — real Mazur condition p || N — import-free, zero axioms

-- Local primality (no Mathlib import)
def IsPrime11Core (p : Nat) : Prop :=
  2 ≤ p ∧ ∀ m, m ∣ p → m = 1 ∨ m = p

def ExactDivides11Core (p N : Nat) : Prop :=
  p ∣ N ∧ ¬ (p * p ∣ N)

def MazurEpsilon11Core (p N M : Nat) : Prop :=
  ExactDivides11Core p N ∧ M * p = N ∧ ¬ (p ∣ M)

def MazurEpsilonCondition (p N : Nat) : Prop :=
  IsPrime11Core p ∧ 5 ≤ p ∧ ∃ M, MazurEpsilon11Core p N M

#print axioms IsPrime11Core
#print axioms ExactDivides11Core
#print axioms MazurEpsilon11Core
#print axioms MazurEpsilonCondition
