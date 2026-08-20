def CanLowerLevelCore (N p M : Nat) : Prop :=
  M * p = N

def CanLowerLevelExists (N p : Nat) : Prop :=
  ∃ M, M = N / p ∧ N % p = 0 ∧ CanLowerLevelCore N p M

#print axioms CanLowerLevelCore
#print axioms CanLowerLevelExists
