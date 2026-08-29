-- B18_FreyIsElliptic_Core — zero-import discriminant condition.
def FreyDiscriminantNonzero18Core (A B C x y z : Nat) : Prop :=
  0 < A ∧ 0 < B ∧ 0 < C ∧ 2 < x ∧ 2 < y ∧ 2 < z

#print axioms FreyDiscriminantNonzero18Core