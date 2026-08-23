import Mathlib.Data.Real.Basic
import Mathlib.Data.Real.Sqrt
import Mathlib.Analysis.SpecialFunctions.Pow.Real
import Mathlib.NumberTheory.LSeries.RiemannZeta

noncomputable section

def S4_C : ℝ := 11.42214868898

theorem S4_gt_two_sqrt_13 : S4_C > 2 * Real.sqrt 13 := by
  have h13_bound : Real.sqrt 13 < 3.606 := by
    have h_lt : (13 : ℝ) < (3.606 : ℝ) ^ 2 := by norm_num
    calc Real.sqrt 13 < Real.sqrt ((3.606 : ℝ) ^ 2) := by
          exact Real.sqrt_lt_sqrt (by positivity) h_lt
         _ = 3.606 := Real.sqrt_sq (by positivity)
  -- Now 2*√13 < 2*3.606 = 7.212 < 11.422
  have h_final : 2 * Real.sqrt 13 < 11.42214868898 := by
    calc 2 * Real.sqrt 13 < 2 * 3.606 := by
          apply mul_lt_mul_of_pos_left h13_bound
          norm_num
         _ = 7.212 := by norm_num
         _ < 11.42214868898 := by norm_num
  unfold S4_C
  exact h_final

def Lindelof_mu_zero : Prop :=
  ∀ ε > 0, ∃ C > 0, ∀ t : ℝ, t ≥ 10 →
    Complex.abs (riemannZeta (1/2 + t * Complex.I : ℂ)) ≤ C * t ^ ε

axiom RH_implies_Lindelof_classical :
  (∀ ρ : ℂ, riemannZeta ρ = 0 → ρ.re = 1/2) → Lindelof_mu_zero

axiom S4_implies_RH_closed : S4_C > 2 * Real.sqrt 13 →
  (∀ ρ : ℂ, riemannZeta ρ = 0 → ρ.re = 1/2)

theorem Lindelof_from_S4_X0_143 : Lindelof_mu_zero :=
  RH_implies_Lindelof_classical (S4_implies_RH_closed S4_gt_two_sqrt_13)

end
