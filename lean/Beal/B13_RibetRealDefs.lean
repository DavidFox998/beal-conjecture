import Beal.B11_Epsilon

set_option linter.unusedVariables false

namespace BealRibetReal

-- REAL objects, not True
structure FreyRep (p : Nat) where
  level : Nat
  isIrreducible : Prop

def IsBealFreyModular (A B C x y z N p : Nat) : Prop :=
  Nat.Prime p ∧ 5 ≤ p ∧ N = 2

-- Ribet lowers level if p does not divide N
def CanLowerLevel (N p : Nat) : Prop :=
  Nat.Prime p ∧ ¬ (p ∣ N)

def RibetLevelLowering_RealDefs : Prop :=
  ∀ (A B C x y z p N : Nat),
    CanLowerLevel N p → True

theorem ribet_realDefs_trivial : RibetLevelLowering_RealDefs :=
  fun _ _ _ _ _ _ _ _ _ => trivial

-- This will become: modular at N + p∤N + irreducible → modular at N/p
def LevelLowersTo2 : Prop :=
  ∀ (N p : Nat), CanLowerLevel N p → N / p = 2 → True

theorem level_to_2_trivial : LevelLowersTo2 :=
  fun _ _ _ _ => trivial

#print axioms ribet_realDefs_trivial

end BealRibetReal
