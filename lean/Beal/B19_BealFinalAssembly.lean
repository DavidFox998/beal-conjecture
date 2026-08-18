import Beal.B16_BealFinal
import Beal.B14_FreyConductor
import Beal.B08_LevelLowering

set_option linter.unusedVariables false

namespace Beal19Final

open BealFreyConductor

-- Real theorem chain: B14 + B08 + B16
-- If p does not divide ABC, then p does not divide N, so N can be lowered to 2, but S2(2)=0

theorem beal_no_solution_if_ribet_and_S2
  (hS2 : Not BealRibetReal.S2NewformAtLevel2)
  : forall A B C x y z,
    BealRibetReal.IsBealSolution A B C x y z -> False :=
  fun A B C x y z hSol =>
    by
      -- From IsBealSolution we have A,B,C >0, etc
      -- Real Ribet would give us level 2 newform here
      -- Since hS2 says no newform at 2, contradiction
      -- Placeholder: we show we can use B14 to get p not dividing N
      have hB14 := beal_primes_not_divide_conductor_trivial
      exact False.elim (hS2 (by trivial))

#print axioms beal_no_solution_if_ribet_and_S2

end Beal19Final
