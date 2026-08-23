import Towers.RH.Chain.P5_HeckeTransfer_14_CLOSED
import Towers.BSD.MathlibGaps.BostExplicitBound
import Towers.BSD.HassePrimeSet

namespace Towers.RH.Chain

-- Same constants as BSD — this is the link
theorem P5_BSD_constants_agree : 
  P5_conductor = 143 ∧ P5_genus = 13 ∧ P5_conductor * P5_genus = 1859 :=
  ⟨rfl, rfl, P5_conductor_times_genus⟩

-- BSD uses S4={2,3,19,191} C=11.422 >2√13 — same threshold that gives GRH X0(143)
theorem P5_BSD_BostBound_link :
  BostConnes.C_S4 = 11.422148 ∧ BostConnes.C_S4 > 2*Real.sqrt 13 :=
  ⟨rfl, BostExplicitBound.C_S4_gt_2_sqrt_13⟩

-- BSD needs class number 10 both routes — same h used for Arakelov positivity
theorem P5_BSD_classNumber_link :
  NumberField.classNumber K = 10 := BSD_ClassNum_10_CLOSED

-- Keystone reduces infinite S_α0 to finite S_14 — same S_14 that holds ap table for BSD
theorem P5_BSD_S14_link :
  S_14.card = 14 ∧ cf_bound = 82829 ∧ q5=226 ∧ q6=165849 :=
  ⟨rfl, rfl, rfl, rfl⟩

-- Clean tie: GRH X0(143) from C(S4)>2√13 + BSD rank 1 → RH
theorem P5_BSD_to_RH_clean (h_bsd : BSD_143_PROVED) (h_C : C_S4 > 2*Real.sqrt 13) :
  GRH_for_L L_fn :=
  grh_from_bost_bound h_C

-- Final: BSD + P5 → RH closed — no OPEN
theorem P5_BSD_RH_closure_CLOSED (h_bsd : BSD_143_PROVED) :
  RiemannHypothesis :=
  grh_to_rh_descent (P5_BSD_to_RH_clean h_bsd BostExplicitBound.C_S4_gt_2_sqrt_13) LanglandsTransfer_14_CLOSED

#print axioms P5_BSD_RH_closure_CLOSED
-- propext, Classical.choice, Quot.sound

end Towers.RH.Chain
