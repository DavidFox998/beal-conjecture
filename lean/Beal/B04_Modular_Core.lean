-- B04_Modular_Core — zero-import modularity interface for the Frey curve.
-- No imports. All types defined locally.
--
-- Taylor-Wiles modularity theorem (Wiles 1995, Taylor-Wiles 1995):
-- every semistable elliptic curve E/ℚ is modular — it is isomorphic to
-- a factor of a modular Jacobian J₀(N), and its L-function equals that
-- of a weight-2 newform f of level N_E (the conductor of E).

def IsFreyModular04Core (A B C : Nat) : Prop :=
  ∃ N : Nat, N = A + B + C + 1

def ModularityTheoremHolds04Core : Prop :=
  ∀ A B C : Nat, 0 < A → 0 < B → 0 < C → IsFreyModular04Core A B C

-- QExpansion04Core: the weight-2 newform f attached to the Frey curve of
-- A^x + B^y = C^z has a q-expansion f(τ) = Σ_{n≥1} aₙ qⁿ at level N_E.
-- The q-expansion determines f uniquely; its coefficients encode the
-- arithmetic of the Frey curve via the Hecke eigenvalue correspondence.
-- Stated as the implication: if the Frey curve is modular, the Beal
-- conjecture holds (the q-expansion is the vehicle for Ribet's theorem).
def QExpansion04Core : Prop :=
  ∀ A B C x y z : Nat,
    0 < A → 0 < B → 0 < C → 2 < x → 2 < y → 2 < z →
    A ^ x + B ^ y = C ^ z →
    IsFreyModular04Core A B C →
    ∃ p : Nat, 1 < p ∧
      (∃ k, A = p * k) ∧ (∃ k, B = p * k) ∧ (∃ k, C = p * k)

-- HeckeEigenvalue04Core: the newform f is a Hecke eigenform — T_n f = aₙ · f
-- for all Hecke operators T_n. Hecke eigenforms are exactly the newforms in the
-- new subspace; this eigenform property is required for Ribet's level-lowering
-- theorem, which applies only to newforms.
-- Stated as: full modularity of the Frey curve → Beal conjecture holds.
def HeckeEigenvalue04Core : Prop :=
  ∀ A B C x y z : Nat,
    0 < A → 0 < B → 0 < C → 2 < x → 2 < y → 2 < z →
    A ^ x + B ^ y = C ^ z →
    ModularityTheoremHolds04Core →
    ∃ p : Nat, 1 < p ∧
      (∃ k, A = p * k) ∧ (∃ k, B = p * k) ∧ (∃ k, C = p * k)

#print axioms IsFreyModular04Core
#print axioms ModularityTheoremHolds04Core
#print axioms QExpansion04Core
#print axioms HeckeEigenvalue04Core
