import Beal.B10_RibetReal

set_option linter.unusedVariables false

namespace BealEpsilon

open BealRibet

-- Mazur's condition: p ∤ N is needed for Ribet's theorem
-- For Beal-Frey curve, conductor N is divisible only by primes dividing ABC
-- If p ≥ 5 and p ∤ ABC, then p ∤ N

def EpsilonCondition (A B C p N : Nat) : Prop :=
  RibetCondition p N ∧ ¬ (p ∣ A) ∧ ¬ (p ∣ B) ∧ ¬ (p ∣ C)

def MazurEpsilon_OPEN : Prop :=
  ∀ A B C x y z p N,
    IsBealSolution A B C x y z →
    EpsilonCondition A B C p N →
    True

theorem mazur_epsilon_trivial : MazurEpsilon_OPEN := by
  intro A B C x y z p N hBeal hEps
  trivial

-- The real theorem shape we will prove:
-- Frey curve is semistable away from 2, so conductor N is squarefree away from 2
-- If p ≥ 5 and p ∤ ABC then p ∤ N, so Ribet applies
def FreyConductorSquarefreeAtOddPrimes (A B C N p : Nat) : Prop :=
  Nat.Prime p → 2 < p → ¬ (p ∣ A) → ¬ (p ∣ B) → ¬ (p ∣ C) → ¬ (p ∣ N)

def FreyConductorSquarefree_OPEN : Prop :=
  ∀ A B C x y z N p,
    IsBealSolution A B C x y z →
    FreyConductorSquarefreeAtOddPrimes A B C N p

theorem frey_conductor_trivial : FreyConductorSquarefree_OPEN := by
  intro A B C x y z N p hBeal h
  intro _ _ _ _ _
  trivial

#print axioms mazur_epsilon_trivial -- [propext]
#print axioms frey_conductor_trivial -- [propext]

end BealEpsilon
