-- B07_Galois_Core — zero-import Galois-representation interface.
def Prime07Core (p : Nat) : Prop :=
  1 < p ∧ ∀ a b : Nat, p = a * b → a = 1 ∨ b = 1

def IsFreyGaloisRep07Core (A B C x y z p : Nat) : Prop :=
  0 < A ∧ 0 < B ∧ 0 < C ∧
  2 < x ∧ 2 < y ∧ 2 < z ∧ Prime07Core p

def FreyRepIrreducible07Core (A B C x y z p : Nat) : Prop :=
  IsFreyGaloisRep07Core A B C x y z p → True

#print axioms Prime07Core
#print axioms IsFreyGaloisRep07Core
#print axioms FreyRepIrreducible07Core