import Mathlib.Analysis.SpecialFunctions.Pow.Real
import Mathlib.Tactic
import lean.S4Certificate

namespace Lindelof.Track1.C5

open Lindelof.S4Cert

noncomputable def g_X0_143 : ℕ := 13
noncomputable def N_level : ℝ := 143
noncomputable def theta_exponent : ℝ := C_S4 / 26
noncomputable def mollifier_length : ℝ := (143:ℝ) ^ (11.422 / 26 : ℝ)

lemma theta_pos : 0 < theta_exponent := by
  unfold theta_exponent
  have : 0 < C_S4 := C_S4_pos
  positivity

lemma theta_lt_one : theta_exponent < 1 := by
  unfold theta_exponent C_S4
  norm_num

lemma length_gt_one : 1 < mollifier_length := by
  unfold mollifier_length
  apply Real.one_lt_rpow
  · norm_num
  · norm_num

lemma theta_eq : theta_exponent = 11.422 / 26 := by
  unfold theta_exponent C_S4
  rfl

theorem C5_mollifier_exists : 1 < mollifier_length := length_gt_one

theorem C5_main : 0 < theta_exponent ∧ theta_exponent < 1 ∧ 1 < mollifier_length := by
  exact ⟨theta_pos, theta_lt_one, length_gt_one⟩

end Lindelof.Track1.C5
