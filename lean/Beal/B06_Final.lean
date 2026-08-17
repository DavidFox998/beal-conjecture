import Beal.B01_Def
import Beal.B05_HasseWiles

def _root_.IsBealSolutionAlias (A B C x y z : Nat) : Prop :=
  0 < A ∧ 0 < B ∧ 0 < C ∧ 2 < x ∧ 2 < y ∧ 2 < z ∧ A ^ x + B ^ y = C ^ z ∧ Nat.gcd A (Nat.gcd B C) = 1

def _root_.BealConjecture : Prop :=
  ∀ A B C x y z, IsBealSolution A B C x y z → False

def _root_.Beal.BealConjecture : Prop := _root_.BealConjecture

def _root_.BealHasseBridge : Prop :=
  ∀ p, Nat.Prime p → ¬(p ∣ 143) → BealHasseWiles.a143 p ^2 ≤ 4 * (p:ℤ)

theorem _root_.beal_bridge_proved : _root_.BealHasseBridge :=
  fun p hp h => BealHasseWiles.hasse_bound_143a1_all p hp h
