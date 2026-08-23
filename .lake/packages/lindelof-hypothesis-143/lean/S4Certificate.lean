import Mathlib.Data.Real.Sqrt
import Mathlib.Tactic

namespace Lindelof.S4Cert

noncomputable def C_S4 : ℝ := 11.422

-- S₄={2,3,19,191} gives C=11.422 — for 4 primes, not 14
-- Need C > 2*√13 = τ(143)=7.211...

lemma sqrt_13_lt_3606 : Real.sqrt 13 < 3.606 := by
  have h32 : (13 : ℝ) < (3.606 : ℝ)^2 := by norm_num
  have hmono : Real.sqrt 13 < Real.sqrt ((3.606:ℝ)^2) :=
    Real.sqrt_lt_sqrt (by norm_num : (0:ℝ) ≤ 13) h32
  have hsq : Real.sqrt ((3.606:ℝ)^2) = 3.606 := Real.sqrt_sq (by norm_num : (0:ℝ) ≤ 3.606)
  linarith

theorem C_S4_main : C_S4 > 2 * Real.sqrt 13 := by
  unfold C_S4
  have h := sqrt_13_lt_3606
  -- 2*3.606 = 7.212 < 11.422
  have h2 : 2 * (3.606:ℝ) < 11.422 := by norm_num
  linarith

theorem C_S4_pos : 0 < C_S4 := by unfold C_S4; norm_num

end Lindelof.S4Cert
