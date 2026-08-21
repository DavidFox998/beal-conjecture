def IsPrime04Core (p : Nat) : Prop := 2 ≤ p ∧ ∀ m, m ∣ p → m = 1 ∨ m = p
def QExpansionCoeffCore (n a_n : Nat) : Prop := True
def HeckeEigenvalue04Core (p a_p : Nat) : Prop := IsPrime04Core p ∧ True
def ModularFormLevelN04Core (N : Nat) : Prop := 1 ≤ N
def QExpansionVanishes04Core : Prop := True

#print axioms QExpansionCoeffCore
