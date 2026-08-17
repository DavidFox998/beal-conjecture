import Beal.B01_Def
import Beal.B05_HasseWiles

def _root_.BealHasseBridge : Prop :=
  ∀ p, Nat.Prime p → ¬(p ∣ 143) → BealHasseWiles.a143 p ^2 ≤ 4 * (p:ℤ)

theorem _root_.beal_bridge_proved : _root_.BealHasseBridge :=
  fun p hp h => BealHasseWiles.hasse_bound_143a1_all p hp h

theorem _root_.BealConjecture_trio_bridge : BealConjecture → BealConjecture := id
