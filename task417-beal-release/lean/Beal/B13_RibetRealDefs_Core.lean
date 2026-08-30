-- B13_RibetRealDefs_Core — zero-import representation data.
def Divides13Core (d n : Nat) : Prop := ∃ q : Nat, n = d * q

def Prime13Core (p : Nat) : Prop :=
  1 < p ∧ ∀ a b : Nat, p = a * b → a = 1 ∨ b = 1

structure FreyRep13Core (p : Nat) where
  level : Nat
  irreducible : Prop

def CanLowerLevel13Core (N p : Nat) : Prop :=
  Prime13Core p ∧ ¬ Divides13Core p N

#print axioms Divides13Core
#print axioms Prime13Core
#print axioms FreyRep13Core
#print axioms CanLowerLevel13Core