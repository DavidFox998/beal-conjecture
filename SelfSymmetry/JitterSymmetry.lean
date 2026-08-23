-- SelfSymmetry/JitterSymmetry.lean
-- MINIMAL GREEN - no alpha0 type mismatch
import Family.Brothers1419
import Family.DirichletJitterTime

namespace SelfSymmetry

open Eutheos

/-! ## Jitter self-symmetry -/

-- 35 jitter values stay distinct across all 1420 time steps
theorem jitter_Nodup_1419 : all_jitters_Nodup_upto 1419 = true := by native_decide

theorem jitter_emi_reduction :
    (20 : ℝ) * Real.log (1 / 35) / Real.log 10 < -30 := emi_reduction_db

theorem jitter_alpha0_irrational : Irrational (299 + Real.pi / 10) :=
  alpha0_irrational

theorem jitter_clean :
    all_jitters_Nodup_upto 1419 = true ∧
    Irrational (299 + Real.pi / 10) :=
  ⟨by native_decide, alpha0_irrational⟩

end SelfSymmetry
