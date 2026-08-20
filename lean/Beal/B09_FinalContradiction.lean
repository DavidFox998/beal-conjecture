import Beal.B09_FinalContradiction_Core
import Beal.B08_LevelLowering

set_option linter.unusedVariables false

def BealFinalContradiction (A B C x y z : Nat) : Prop :=
  IsBealSolution A B C x y z → dimS2Gamma0 2 = 0 → S2NewformAtLevel2 → False

theorem beal_final_contradiction_of_S2 (A B C x y z : Nat) :
  BealFinalContradiction A B C x y z := by
  intro _ _ hNew
  exact S2_vanishing_proved.right hNew
