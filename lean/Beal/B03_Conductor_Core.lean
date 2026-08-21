-- B03 Conductor Core — import-free, zero axioms
-- Real arithmetic: squarefree, exact divide p || N, M*p=N

-- Local primality predicate (no import needed)
def IsPrime03Core (p : Nat) : Prop :=
  2 ≤ p ∧ ∀ m, m ∣ p → m = 1 ∨ m = p

def SquarefreeCore (N : Nat) : Prop :=
  ∀ p, IsPrime03Core p → ¬ (p * p ∣ N)

def ExactDividesCore (p N : Nat) : Prop :=
  p ∣ N ∧ ¬ (p * p ∣ N)

def CanDivideOutCore (N p M : Nat) : Prop :=
  M * p = N

def ConductorCoprimeCore (N p M : Nat) : Prop :=
  CanDivideOutCore N p M ∧ ¬ (p ∣ M)

#print axioms IsPrime03Core
#print axioms SquarefreeCore
#print axioms ExactDividesCore
#print axioms CanDivideOutCore
#print axioms ConductorCoprimeCore
-- all must be: does not depend on any axioms
