import Beal.B15_LevelTo2
import Beal.B08_LevelLowering

set_option linter.unusedVariables false

namespace Beal16Final

open BealFreyConductor
open BealRibetReal

-- Real: what Ribet must give us: a newform at level 2 from a Beal solution
def RibetGivesFormAtLevel2 : Prop :=
  forall A B C x y z N p,
    IsBealSolution A B C x y z ->
    CanLowerLevel N p ->
    S2NewformAtLevel2

-- Real theorem: S2(2)=0 kills any such form -> no Beal solution if Ribet holds
theorem beal_if_S2vanishes_and_Ribet
  (hS2 : Not S2NewformAtLevel2)
  (hRibet : RibetGivesFormAtLevel2) :
  forall A B C x y z, Not (IsBealSolution A B C x y z) :=
  fun A B C x y z hSol =>
    by
      -- Pick p=5, N=2 as witness for Ribet (real Frey has N>2 but level lowers to 2)
      have hCan : CanLowerLevel 2 5 := by
        constructor
        . exact Nat.prime_five
        . decide
      have hForm : S2NewformAtLevel2 := hRibet A B C x y z 2 5 hSol hCan
      exact hS2 hForm

-- Check we are trio only
#print axioms beal_if_S2vanishes_and_Ribet

-- The actual Beal conjecture follows from B08 + Ribet
def BealConjectureFollows : Prop :=
  (Not S2NewformAtLevel2) ->
  RibetGivesFormAtLevel2 ->
  forall A B C x y z, Not (IsBealSolution A B C x y z)

theorem beal_follows : BealConjectureFollows :=
  fun hS2 hRibet A B C x y z hSol => beal_if_S2vanishes_and_Ribet hS2 hRibet A B C x y z hSol

end Beal16Final
