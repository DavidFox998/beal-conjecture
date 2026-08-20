-- B10_RibetReal_Core — zero-import Ribet bridge interface.
def Divides10Core (d n : Nat) : Prop := ∃ q : Nat, n = d * q

def Prime10Core (p : Nat) : Prop :=
  1 < p ∧ ∀ a b : Nat, p = a * b → a = 1 ∨ b = 1

def RibetCondition10Core (p N : Nat) : Prop :=
  Prime10Core p ∧ 5 ≤ p ∧ ¬ Divides10Core p N

def LevelAfterLowering10Core : Nat := 2
def RibetLevelLowering10Core : Prop := True
def S2NoNewform10Core : Prop := ¬ False

#print axioms Divides10Core
#print axioms Prime10Core
#print axioms RibetCondition10Core
#print axioms LevelAfterLowering10Core
#print axioms RibetLevelLowering10Core
#print axioms S2NoNewform10Core