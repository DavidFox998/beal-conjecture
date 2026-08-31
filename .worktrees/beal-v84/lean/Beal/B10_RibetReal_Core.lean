def IsPrime10Core (p : Nat) : Prop := 2 ≤ p ∧ ∀ m, m ∣ p → m = 1 ∨ m = p
def ExactDivides10Core (p N : Nat) : Prop := p ∣ N ∧ ¬ (p * p ∣ N)
def LevelLowering10Core (N p M : Nat) : Prop := M * p = N ∧ ¬ (p ∣ M)
def GenusX0_2_Core : Nat := 0
def DimS2_2_Core : Nat := GenusX0_2_Core
def S2VanishesAt2Core : Prop := DimS2_2_Core = 0
def RibetLevelLowering10Core (N p M : Nat) : Prop := IsPrime10Core p ∧ ExactDivides10Core p N ∧ LevelLowering10Core N p M
#print axioms IsPrime10Core
#print axioms S2VanishesAt2Core
