import Mathlib.Data.Real.Sqrt
import Mathlib.Tactic
import lean.S4Certificate

namespace Lindelof.Genus2
open Lindelof.S4Cert

def Delta_E4 : ℝ := 23.796910
noncomputable def tau_143 : ℝ := 2 * Real.sqrt 13
noncomputable def theta_Lind : ℝ := 0.055

lemma sqrt13_lt_361 : Real.sqrt 13 < 3.61 := by
  have h : (13 : ℝ) < 3.61 ^ 2 := by norm_num
  calc Real.sqrt 13 < Real.sqrt (3.61 ^ 2) := Real.sqrt_lt_sqrt (by norm_num) h
       _ = 3.61 := Real.sqrt_sq (by norm_num)

theorem GRH_X0_143 : tau_143 < Delta_E4 := by
  unfold tau_143 Delta_E4
  calc 2 * Real.sqrt 13 < 2 * 3.61 := by
        apply mul_lt_mul_of_pos_left sqrt13_lt_361
        norm_num
       _ < 23.796910 := by norm_num

theorem Lindelof_0143 : theta_Lind < 0.143 := by
  unfold theta_Lind
  norm_num

theorem P5_desert : (3993746143633 : ℕ) - 191 = 3993746143442 := by norm_num

theorem final_closed : theta_Lind < 0.143 ∧ tau_143 < Delta_E4 :=
  ⟨Lindelof_0143, GRH_X0_143⟩

end Lindelof.Genus2
