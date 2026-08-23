import Mathlib.Analysis.SpecialFunctions.Trigonometric.Basic
import Mathlib.Data.Complex.Basic
import Mathlib.NumberTheory.LSeries.RiemannZeta

namespace SiegelRe1

-- Batch57 gem — proved, no sorry
theorem poussin_cos_combo_nonneg (θ : ℝ) : 0 ≤ 3 + 4 * Real.cos θ + Real.cos (2 * θ) := by
  have h : 3 + 4 * Real.cos θ + Real.cos (2 * θ) = 2 * (1 + Real.cos θ)^2 := by
    have h2 : Real.cos (2 * θ) = 2 * Real.cos θ ^ 2 - 1 := Real.cos_two_mul θ
    nlinarith [Real.cos_sq_add_sin_sq θ, sq_nonneg (Real.cos θ)]
  rw [h]; positivity

-- Definition only — no sorry, no claim
def SiegelZeroFreeRe1 : Prop := ∀ t : ℝ, t ≠ 0 → riemannZeta (1 + t * Complex.I) ≠ 0

end SiegelRe1
