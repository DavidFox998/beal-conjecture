-- B05_Modularity_Core — import-free Beal solution interface.

/-- A triple has no common nontrivial divisor. -/
def PrimitiveTriple05Core (A B C : Nat) : Prop :=
  ∀ d : Nat, d ∣ A → d ∣ B → d ∣ C → d = 1

/-- The elementary data of a positive primitive Beal solution. -/
def IsBealSolution05Core (A B C x y z : Nat) : Prop :=
  0 < A ∧ 0 < B ∧ 0 < C ∧
  2 < x ∧ 2 < y ∧ 2 < z ∧
  A ^ x + B ^ y = C ^ z ∧
  PrimitiveTriple05Core A B C

#print axioms PrimitiveTriple05Core
#print axioms IsBealSolution05Core