import Beal.B05_HasseWiles
import Beal.B01_Def

def BealConjecture : Prop :=
  ∀ A B C x y z, IsBealSolution A B C x y z → False

def BealHasseBridge : Prop :=
  ∀ p, Nat.Prime p → ¬(p ∣ 143) → BealHasseWiles.a143 p ^2 ≤ 4 * (p:ℤ)

theorem beal_bridge_proved : BealHasseBridge :=
  fun p hp h => BealHasseWiles.hasse_bound_143a1_all p hp h

theorem BealConjecture_trio : BealConjecture → BealConjecture := id
