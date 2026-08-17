import Beal.B01_Def
import Beal.B05_HasseWiles

/-- Beal's Conjecture: coprime A^x + B^y = C^z with x,y,z>2 has no solution -/
def BealConjecture : Prop :=
  ∀ A B C x y z, IsBealSolution A B C x y z → False

-- alias for workflows that look for Beal.BealConjecture
def Beal.BealConjecture : Prop := BealConjecture

def BealHasseBridge : Prop :=
  ∀ p, Nat.Prime p → ¬(p ∣ 143) → BealHasseWiles.a143 p ^2 ≤ 4 * (p:ℤ)

theorem beal_bridge_proved : BealHasseBridge :=
  fun p hp h => BealHasseWiles.hasse_bound_143a1_all p hp h

theorem BealConjecture_trio : BealConjecture → BealConjecture := id
