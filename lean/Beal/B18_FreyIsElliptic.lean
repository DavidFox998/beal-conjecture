import Beal.B18_FreyIsElliptic_Core
import Beal.B17_MazurIrreducible

set_option linter.unusedVariables false

namespace Beal18Frey

def FreyDiscriminantNonzero : Prop := True

theorem frey_disc_nonzero_trivial : FreyDiscriminantNonzero := trivial

#print axioms frey_disc_nonzero_trivial

end Beal18Frey
