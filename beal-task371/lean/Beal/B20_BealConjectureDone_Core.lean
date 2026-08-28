-- B20_BealConjectureDone_Core — The Beal conjecture, stated precisely.
-- No imports. All types defined locally.
--
-- Beal's conjecture (Andrew Beal, 1993):
-- If A^x + B^y = C^z where A, B, C, x, y, z are positive integers with
-- x, y, z ≥ 3, then A, B, and C have a common prime factor.
--
-- Here we state it with x, y, z > 2 (equivalent for positive integers).
-- The surrounding scaffold studies the conditional Frey–Wiles–Ribet route:
-- the Frey curve → modularity → Ribet level-lowering → S₂(Γ₀(2)) = 0 → ↯.

def Dvd20Core (d n : Nat) : Prop := ∃ k : Nat, n = d * k

-- Beal's conjecture, stated without claiming that it is proved here.
def BealConjectureDoneStatement20Core : Prop :=
  ∀ A B C x y z : Nat,
    0 < A → 0 < B → 0 < C → 2 < x → 2 < y → 2 < z →
    A ^ x + B ^ y = C ^ z →
    ∃ p : Nat, 1 < p ∧
      Dvd20Core p A ∧ Dvd20Core p B ∧ Dvd20Core p C

-- The corresponding statement-level milestone.
def TwentyBricksStatement20Core : Prop :=
  BealConjectureDoneStatement20Core

#print axioms BealConjectureDoneStatement20Core
#print axioms TwentyBricksStatement20Core
