def IsPrime20Core (p : Nat) : Prop := 2 ≤ p ∧ ∀ m, m ∣ p → m = 1 ∨ m = p
def IsBealSolution20Core (A B C x y z : Nat) : Prop :=
  2 < x ∧ 2 < y ∧ 2 < z ∧ A^x + B^y = C^z ∧ 1 < A ∧ 1 < B ∧ 1 < C
def BealConjecture20Core : Prop :=
  ∀ A B C x y z, IsBealSolution20Core A B C x y z → ∃ p, IsPrime20Core p ∧ p ∣ A ∧ p ∣ B ∧ p ∣ C

def BealAssembly20Core (S2Vanishes : Prop) (ModHyp : Prop) : Prop :=
  S2Vanishes → ModHyp → BealConjecture20Core

#print axioms BealConjecture20Core
#print axioms BealAssembly20Core
