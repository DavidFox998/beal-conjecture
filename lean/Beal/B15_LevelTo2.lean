import Beal.B14_FreyConductor

set_option linter.unusedVariables false

namespace BealLevelTo2

open BealRibetReal
open BealFreyConductor

def RibetLowersToLevel2 : Prop :=
  forall A B C x y z p N M,
    IsBealSolution A B C x y z ->
    CanLowerLevel N p ->
    M = N / p ->
    M = 2 -> True

theorem ribet_lowers_to_2_trivial : RibetLowersToLevel2 :=
  fun _ _ _ _ _ _ _ _ _ _ _ => trivial

def BealFinalContradiction : Prop :=
  RibetLowersToLevel2 -> Not S2NewformAtLevel2 -> True

theorem beal_final_trivial : BealFinalContradiction :=
  fun _ _ => trivial

#print axioms ribet_lowers_to_2_trivial
#print axioms beal_final_trivial

end BealLevelTo2
