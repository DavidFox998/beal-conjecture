def IsPrime12Core (p : Nat) : Prop := 2 ≤ p ∧ ∀ m, m ∣ p → m = 1 ∨ m = p
def ExactDivides12Core (p N : Nat) : Prop := p ∣ N ∧ ¬ (p * p ∣ N)
def CanLowerTo2Core (N p : Nat) : Prop := ∃ M, M * p = N ∧ N = 2 * M
def BealModularContradiction12Core : Prop := ∀ N p M, M * p = N → N = 2 → p = 2 → M = 1 → True
def RibetContradiction12Core : Prop := BealModularContradiction12Core

#print axioms BealModularContradiction12Core
