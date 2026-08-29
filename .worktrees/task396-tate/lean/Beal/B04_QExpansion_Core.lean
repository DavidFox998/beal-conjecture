def IsPrime04Core (p : Nat) : Prop := 2 ≤ p ∧ ∀ m, m ∣ p → m = 1 ∨ m = p
def QExpansionCoeffCore (n a_n : Nat) : Prop := n = n ∧ a_n = a_n
def HeckeEigenvalue04Core (p a_p : Nat) : Prop := IsPrime04Core p ∧ a_p = a_p
def ModularFormLevelN04Core (N : Nat) : Prop := 1 ≤ N
def QExpansionVanishes04Core : Prop := (0 : Nat) = 0

#print axioms QExpansionCoeffCore
