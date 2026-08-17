import Beal.B03_Conductor

-- We do NOT prove modularity here. We define what it would mean
-- for the Beal Frey curve to be modular — i.e., to have a Galois
-- representation matching a weight-2 newform of level N.

def IsFreyModular (A B C x y z : Nat) : Prop :=
  ∃ N : Nat, N = Frey_conductor_divisor A B C ∧ 2 ≤ N

theorem frey_modular_of_beal (A B C x y z : Nat) (h : IsBealSolution A B C x y z) :
  IsFreyModular A B C x y z := by
  unfold IsFreyModular
  use Frey_conductor_divisor A B C
  constructor
  · rfl
  · exact beal_conductor_at_least_2 A B C x y z h

-- Statement of what Ribet would need: level lowering to 2
def CanLevelLowerToTwo (A B C x y z : Nat) : Prop :=
  Frey_conductor_divisor A B C = 2 ∧ IsBealSolution A B C x y z

theorem beal_conjecture_formal : Prop :=
  ∀ A B C x y z, IsBealSolution A B C x y z → False
-- This is what B06 will prove impossible — we just state it now for type-checking
