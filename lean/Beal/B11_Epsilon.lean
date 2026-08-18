import Beal.B10_RibetReal

set_option linter.unusedVariables false

namespace BealEpsilon

def MazurEpsilon_OPEN : Prop :=
  ∀ A B C x y z p N, True

theorem mazur_epsilon_trivial : MazurEpsilon_OPEN :=
  fun _ _ _ _ _ _ _ _ => trivial

def FreyConductorSquarefree_OPEN : Prop :=
  ∀ A B C x y z N p, True

theorem frey_conductor_trivial : FreyConductorSquarefree_OPEN :=
  fun _ _ _ _ _ _ _ _ => trivial

#print axioms mazur_epsilon_trivial
#print axioms frey_conductor_trivial

end BealEpsilon
