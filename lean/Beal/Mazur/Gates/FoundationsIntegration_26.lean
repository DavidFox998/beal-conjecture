import Beal.Mazur.Gates.Descent_26_PhaseA
import Beal.Modular.Level26_GeometryBridge

namespace Beal17Mazur.Gates.FoundationsIntegration26

open Beal17Mazur.Gates
open Beal17Mazur.Jacobian

theorem SUnits_26_card :
    Fintype.card SUnits_26 = 8 := by
  decide

theorem Quartics_26a1_count :
    E26a1MwrankQuartics.length = 4 := by
  decide

theorem Quartics_26b1_count :
    E26b1MwrankQuartics.length = 6 := by
  decide

theorem Quartics_26a1_HasFpPoint_at_2 :
    E26a1Fp2Results = [true, true, true, true] := by
  decide

theorem Quartics_26a1_HasFpPoint_at_13 :
    E26a1Fp13Results = [true, true, true, true] := by
  decide

theorem Quartics_26b1_HasFpPoint_at_2 :
    E26b1Fp2Results = [true, true, true, true, true, true] := by
  decide

theorem Quartics_26b1_HasFpPoint_at_13 :
    E26b1Fp13Results = [true, true, true, true, true, true] := by
  decide

#print axioms SUnits_26_card
#print axioms Quartics_26a1_count
#print axioms Quartics_26b1_count
#print axioms Quartics_26a1_HasFpPoint_at_2
#print axioms Quartics_26a1_HasFpPoint_at_13
#print axioms Quartics_26b1_HasFpPoint_at_2
#print axioms Quartics_26b1_HasFpPoint_at_13

end Beal17Mazur.Gates.FoundationsIntegration26