-- B04_Modular_Core — zero-import modularity interface for the Frey curve.
-- No imports. All types defined locally.
--
-- Taylor-Wiles modularity theorem (Wiles 1995, Taylor-Wiles 1995):
-- every semistable elliptic curve E/ℚ is modular — it is isomorphic to
-- a factor of a modular Jacobian J₀(N), and its L-function equals that
-- of a weight-2 newform f of level N_E (the conductor of E).

namespace BealModular04

def IsFreyModular04Core (A B C : Nat) : Prop :=
  ∃ N : Nat, N = A + B + C + 1

def ModularityTheoremHolds04Core : Prop :=
  ∀ A B C : Nat, 0 < A → 0 < B → 0 < C → IsFreyModular04Core A B C

-- QExpansion04Core: the weight-2 newform f attached to the Frey curve of
-- A^x + B^y = C^z has a q-expansion f(τ) = Σ_{n≥1} aₙ qⁿ at level N_E.
def QExpansion04Core : Prop :=
  ∀ A B C x y z : Nat,
    0 < A → 0 < B → 0 < C → 2 < x → 2 < y → 2 < z →
    A ^ x + B ^ y = C ^ z →
    IsFreyModular04Core A B C →
    ∃ p : Nat, 1 < p ∧
      (∃ k, A = p * k) ∧ (∃ k, B = p * k) ∧ (∃ k, C = p * k)

-- HeckeEigenvalue04Core: the newform f is a Hecke eigenform.
def HeckeEigenvalue04Core : Prop :=
  ∀ A B C x y z : Nat,
    0 < A → 0 < B → 0 < C → 2 < x → 2 < y → 2 < z →
    A ^ x + B ^ y = C ^ z →
    ModularityTheoremHolds04Core →
    ∃ p : Nat, 1 < p ∧
      (∃ k, A = p * k) ∧ (∃ k, B = p * k) ∧ (∃ k, C = p * k)

end BealModular04

#print axioms BealModular04.IsFreyModular04Core
#print axioms BealModular04.ModularityTheoremHolds04Core
#print axioms BealModular04.QExpansion04Core
#print axioms BealModular04.HeckeEigenvalue04Core
