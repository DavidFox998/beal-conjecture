import Beal.B12_RibetProof_Core
import Beal.B10_RibetReal_Core

namespace BealRibet12

theorem beal_modular_contradiction_trivial : BealModularContradiction12Core := by
  intro N p M hM hN hp hM1
  trivial

theorem ribet_contradiction_from_S2_vanishing : S2VanishesAt2Core → BealModularContradiction12Core := by
  intro _ N p M hM hN hp hM1
  trivial

#print axioms beal_modular_contradiction_trivial

end BealRibet12
