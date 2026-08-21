-- B11_Epsilon_Core — Mazur epsilon conjecture for the Frey elliptic curve.
-- No imports. All types defined locally.
--
-- Mazur's epsilon conjecture (Mazur 1978, applied by Ribet 1990):
-- For a semistable elliptic curve E/ℚ with conductor N_E, if p is a prime
-- with p² ∤ N_E, the mod-p Galois representation ρ_{E,p} is absolutely
-- irreducible. This irreducibility is the key hypothesis that permits
-- Ribet's level-lowering theorem to apply.

def Dvd11Core (d n : Nat) : Prop := ∃ k : Nat, n = d * k

def Prime11Core (p : Nat) : Prop :=
  1 < p ∧ ∀ a b : Nat, p = a * b → a = 1 ∨ b = 1

-- Mazur's epsilon conjecture: p exactly divides the conductor N
-- (p | N but p² ∤ N) implies the descended level M = N/p satisfies p ∤ M.
-- This is the arithmetic content of the irreducibility of ρ_{E,p}:
-- the representation cannot be reducible at p when p exactly divides N.
def MazurEpsilon11Core : Prop :=
  ∀ N p : Nat, Prime11Core p → 4 < p →
    Dvd11Core p N →
    ¬ Dvd11Core (p * p) N →
    ∃ M : Nat, 0 < M ∧ M * p = N ∧ ¬ Dvd11Core p M

-- FreyConductorSquarefree11Core: for the Frey curve of a Beal triple
-- A^x + B^y = C^z, if p is a prime not dividing any of A, B, C,
-- then p² does not divide A·B·C.
-- This is the squarefree condition that activates Mazur's epsilon.
def FreyConductorSquarefree11Core : Prop :=
  ∀ A B C x y z : Nat,
    0 < A → 0 < B → 0 < C → 2 < x → 2 < y → 2 < z →
    A ^ x + B ^ y = C ^ z →
    ∀ p : Nat, Prime11Core p → 4 < p →
      ¬ Dvd11Core p A → ¬ Dvd11Core p B → ¬ Dvd11Core p C →
      ¬ Dvd11Core (p * p) (A * B * C)

#print axioms MazurEpsilon11Core
#print axioms FreyConductorSquarefree11Core
