import Mathlib.Data.Real.Basic
import Mathlib.Tactic

-- BQF bound for Selberg trace — geometric side for S₄={2,3,19,191}
-- Standalone — used for short geodesics = primes in S₄

noncomputable def BQF_bound : ℝ := 3.0911
noncomputable def log22_approx : ℝ := 3.0910

lemma log22_lt_BQF : log22_approx < BQF_bound := by
  unfold BQF_bound log22_approx; norm_num

theorem bqf_pos : 0 < BQF_bound := by unfold BQF_bound; norm_num
theorem bqf_gt_log : log22_approx + 0.0001 = BQF_bound := by
  unfold BQF_bound log22_approx; norm_num
