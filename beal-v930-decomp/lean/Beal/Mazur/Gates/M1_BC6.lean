import Mathlib.Analysis.SpecialFunctions.Log.Basic
import Mathlib.Data.Complex.ExponentialBounds
import Mathlib.Data.Real.Sqrt

namespace Beal17Mazur.Gates.M1

open Real

/-!
# Gate M1: the `C(S₄)` threshold

This is the small, self-contained logarithmic argument from
`DavidFox998/arakelov-rh-descent`, `lean/ArakelovRH_BC6_Final.lean`.
It proves the actual logarithmic constant exceeds `2√13`; no decimal
interval premise, axiom, `native_decide`, or `sorry` is used.
-/

noncomputable def C_S4 : ℝ :=
  2 * log 2 + 3 * log 3 / 2 + 19 * log 19 / 18 +
    191 * log 191 / 190

theorem C_S4_threshold_gap : 2 * sqrt 13 < 8 := by
  have h : sqrt 13 < sqrt 16 :=
    sqrt_lt_sqrt (by norm_num) (by norm_num)
  have hsqrt : sqrt 16 = 4 := by
    rw [show (16 : ℝ) = 4 ^ 2 from by norm_num]
    exact sqrt_sq (by norm_num)
  rw [hsqrt] at h
  linarith

theorem exp_one_lt : exp 1 < 2.7182818286 := by
  exact Real.exp_one_lt_d9

theorem exp_half_lt_two : exp (0.5 : ℝ) < 2 := by
  have hsq : exp (0.5 : ℝ) ^ 2 = exp 1 := by
    rw [pow_two, ← exp_add]
    norm_num
  have hlt : exp (0.5 : ℝ) ^ 2 < 4 := by
    calc
      exp (0.5 : ℝ) ^ 2 = exp 1 := hsq
      _ < 2.7182818286 := exp_one_lt
      _ < 4 := by norm_num
  nlinarith [sq_nonneg (exp (0.5 : ℝ) - 2)]

theorem log_two_gt_half : 0.5 < log 2 := by
  rw [lt_log_iff_exp_lt (by norm_num)]
  exact exp_half_lt_two

theorem log_three_gt_one : 1 < log 3 := by
  rw [lt_log_iff_exp_lt (by norm_num)]
  calc
    exp 1 < 2.7182818286 := exp_one_lt
    _ < 3 := by norm_num

theorem exp_two_lt_nineteen : exp 2 < 19 := by
  have h : exp 2 = exp 1 * exp 1 := by
    rw [← exp_add]
    norm_num
  calc
    exp 2 = exp 1 * exp 1 := h
    _ < 2.7182818286 * 2.7182818286 := by
      nlinarith [exp_one_lt, exp_pos 1]
    _ < 19 := by norm_num

theorem log_nineteen_gt_two : 2 < log 19 := by
  rw [lt_log_iff_exp_lt (by norm_num)]
  exact exp_two_lt_nineteen

theorem exp_five_lt_191 : exp 5 < 191 := by
  have h2 : exp 2 < 7.5 := by
    have h : exp 2 = exp 1 * exp 1 := by
      rw [← exp_add]
      norm_num
    calc
      exp 2 = exp 1 * exp 1 := h
      _ < 2.7182818286 * 2.7182818286 := by
        nlinarith [exp_one_lt, exp_pos 1]
      _ < 7.5 := by norm_num
  have h4 : exp 4 = exp 2 * exp 2 := by
    rw [← exp_add]
    norm_num
  have h4lt : exp 4 < 56.3 := by
    calc
      exp 4 = exp 2 * exp 2 := h4
      _ < 7.5 * 7.5 := by nlinarith [h2, exp_pos 2]
      _ < 56.3 := by norm_num
  have h5 : exp 5 = exp 4 * exp 1 := by
    rw [← exp_add]
    norm_num
  calc
    exp 5 = exp 4 * exp 1 := h5
    _ < 56.3 * 2.7182818286 := by
      nlinarith [h4lt, exp_one_lt, exp_pos 4, exp_pos 1]
    _ < 191 := by norm_num

theorem log_191_gt_five : 5 < log 191 := by
  rw [lt_log_iff_exp_lt (by norm_num)]
  exact exp_five_lt_191

theorem C_S4_gt_eight : 8 < C_S4 := by
  have h2 := log_two_gt_half
  have h3 := log_three_gt_one
  have h19 := log_nineteen_gt_two
  have h191 := log_191_gt_five
  unfold C_S4
  norm_num [div_eq_mul_inv] at h2 h3 h19 h191 ⊢
  linarith

theorem C_S4_gt_two_sqrt_13 : 2 * sqrt 13 < C_S4 := by
  linarith [C_S4_threshold_gap, C_S4_gt_eight]

#print axioms C_S4_gt_two_sqrt_13

end Beal17Mazur.Gates.M1