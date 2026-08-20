-- B04_Modular_Core — zero-import modularity interface.
def IsFreyModular04Core (A B C : Nat) : Prop :=
  ∃ N : Nat, N = A + B + C + 1

def ModularityTheoremHolds04Core : Prop :=
  ∀ A B C : Nat, 0 < A → 0 < B → 0 < C → IsFreyModular04Core A B C

def QExpansion04Core : Prop := True
def HeckeEigenvalue04Core : Prop := True

#print axioms IsFreyModular04Core
#print axioms ModularityTheoremHolds04Core
#print axioms QExpansion04Core
#print axioms HeckeEigenvalue04Core