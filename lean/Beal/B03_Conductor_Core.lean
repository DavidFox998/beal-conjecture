-- B03_Conductor_Core — zero-import conductor predicates.
def Divides03Core (d n : Nat) : Prop := ∃ q : Nat, n = d * q

def CommonDivisor03Core (A B C d : Nat) : Prop :=
  Divides03Core d A ∧ Divides03Core d B ∧ Divides03Core d C

def PrimitiveConductor03Core (A B C : Nat) : Prop :=
  ∀ d : Nat, CommonDivisor03Core A B C d → d = 1

#print axioms Divides03Core
#print axioms CommonDivisor03Core
#print axioms PrimitiveConductor03Core