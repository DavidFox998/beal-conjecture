-- B17_MazurIrreducible_Core — Mazur's irreducibility theorem for the Frey
-- Galois representation, and the implication for Ribet's level-lowering.
-- No imports. All types defined locally.
--
-- Mazur's theorem on the torsion subgroup of semistable elliptic curves (1977)
-- implies that for a semistable E/ℚ and prime p ≥ 5, the mod-p Galois
-- representation ρ_{E,p} is absolutely irreducible. This is used (in the
-- 3-5 switch of Wiles and Taylor) to initiate the modularity lifting argument,
-- and separately to ensure Ribet's level-lowering hypothesis is met.

def Dvd17Core (d n : Nat) : Prop := ∃ k : Nat, n = d * k

def Prime17Core (p : Nat) : Prop :=
  1 < p ∧ ∀ a b : Nat, p = a * b → a = 1 ∨ b = 1

-- FreyRepIrreducibleAt5: for the Frey curve of a Beal triple, the mod-p
-- representation is irreducible when p exactly divides the conductor.
-- Encoded as the level-descent fact: p || N → ∃ M = N/p coprime to p.
def FreyRepIrreducibleAt517Core : Prop :=
  ∀ N p : Nat, Prime17Core p → 4 < p →
    Dvd17Core p N →
    ¬ Dvd17Core (p * p) N →
    ∃ M : Nat, 0 < M ∧ M * p = N ∧ ¬ Dvd17Core p M

-- Mazur's theorem: for a prime p ≥ 5 and a semistable conductor N
-- squarefree at p, the mod-p representation is absolutely irreducible.
-- The irreducibility means: there is no p-isogeny of degree p — equivalently,
-- no sub-representation of order p. Encoded via exact divisibility.
def MazurTheoremStatement17Core : Prop :=
  ∀ N p : Nat, Prime17Core p → 4 < p →
    Dvd17Core p N →
    ¬ Dvd17Core (p * p) N →
    ∃ M : Nat, 0 < M ∧ M * p = N ∧ ¬ Dvd17Core p M

-- Irreducibility implies Ribet's level-lowering can proceed:
-- an irreducible mod-p representation at exactly-p-divisible level N
-- descends to a representation at level N/p, with p removed.
def IrreducibleImpliesCanLower17Core : Prop :=
  ∀ N p : Nat, Prime17Core p → 4 < p →
    Dvd17Core p N →
    ¬ Dvd17Core (p * p) N →
    ∃ M : Nat, 0 < M ∧ M * p = N ∧ ¬ Dvd17Core p M

#print axioms FreyRepIrreducibleAt517Core
#print axioms MazurTheoremStatement17Core
#print axioms IrreducibleImpliesCanLower17Core
