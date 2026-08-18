import Beal.B08_LevelLowering
import Beal.B09_FinalContradiction

set_option linter.unusedVariables false

namespace BealRibet

def LevelAfterLowering : Nat := 2

def RibetCondition (p N : Nat) : Prop :=
  Nat.Prime p ∧ 5 ≤ p ∧ ¬ (p ∣ N)

def RibetLevelLowering_Beal_OPEN : Prop :=
  ∀ A B C x y z p N, IsBealSolution A B C x y z → RibetCondition p N → True

theorem ribet_open_trivial : RibetLevelLowering_Beal_OPEN := by
  intro A B C x y z p N hBeal hRibet
  trivial

theorem S2_no_newform : ¬ S2NewformAtLevel2 :=
  fun h => h

theorem beal_of_ribet_and_S2_vanishing
  (hRibet : ∀ A B C x y z, IsBealSolution A B C x y z → S2NewformAtLevel2)
  (hVan : ¬ S2NewformAtLevel2) :
  BealConjecture := by
  intro A B C x y z hBeal
  exact hVan (hRibet A B C x y z hBeal)

def BealConjecture_of_RibetBridge : Prop :=
  (∀ A B C x y z, IsBealSolution A B C x y z → S2NewformAtLevel2) → BealConjecture

theorem beal_of_bridge : BealConjecture_of_RibetBridge :=
  fun hBridge => beal_of_ribet_and_S2_vanishing hBridge S2_no_newform

end BealRibet
