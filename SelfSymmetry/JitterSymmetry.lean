-- SelfSymmetry/JitterSymmetry.lean
-- π/10 jitter stays Nodup for all 1419 time steps
import Family.Brothers1419
import Family.DirichletJitterTime
import Family.IrrationalVsRational

namespace SelfSymmetry

open Eutheos

/-! ## Jitter self-symmetry -/

-- alpha0 = π/10 is irrational
theorem jitter_alpha0_irrational : Irrational alpha0 := alpha0_irrational

-- dist(n·alpha0) > 0 for all n ≠ 0
theorem jitter_dist_pos (n : ℕ) (hn : n ≠ 0) : dist_real (n * alpha0) > 0 :=
  alpha0_dist_pos n hn

-- 35 jitter values stay distinct across all 1420 time steps
theorem jitter_Nodup_1419 : all_jitters_Nodup_upto 1419 = true := by native_decide

-- EMI reduction: spreading 35 brothers gives > 30 dB attenuation
theorem jitter_emi_reduction :
    (20 : ℝ) * Real.log (1 / 35) / Real.log 10 < -30 := emi_reduction_db

/-! ## Jitter certificate -/
theorem jitter_clean :
    all_jitters_Nodup_upto 1419 = true ∧
    Irrational alpha0 :=
  ⟨by native_decide, alpha0_irrational⟩

end SelfSymmetry
