-- B09_FinalContradiction_Core — zero-import contradiction predicate.
def BealFinalContradiction09Core (A B C x y z : Nat) : Prop :=
  0 < A ∧ 0 < B ∧ 0 < C ∧
  2 < x ∧ 2 < y ∧ 2 < z ∧
  A ^ x + B ^ y = C ^ z → False

#print axioms BealFinalContradiction09Core