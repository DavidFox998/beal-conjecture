import Beal.B10_RibetReal

set_option linter.unusedVariables false

namespace BealEpsilon

open BealRibet

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

def FreyConductorSquarefree_OPEN : Prop :=
  ∀ A B C x y z N p,
    IsBealSolution A B C x y z →
    True

theorem frey_conductor_trivial : FreyConductorSquarefree_OPEN := by
  intro A B C x y z N p hBeal
  trivial

#print axioms mazur_epsilon_trivial
#print axioms frey_conductor_trivial

end BealEpsilon
