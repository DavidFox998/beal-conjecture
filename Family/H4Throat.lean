-- Inlined from the canonical source: eutheos-property/Family/H4Throat.lean.
import Family.FibonacciChain
import Mathlib.Analysis.SpecialFunctions.Trigonometric.Basic

namespace Eutheos

/-!
# Family.H4Throat

The Fibonacci chain arises from the H4 Coxeter group (600-cell) cut-and-project.

H4 is the unique non-crystallographic Coxeter group in 4D.
Its 120 roots = vertices of the 600-cell; coordinates live in ℚ(φ).
Projecting H4 lattice → Coxeter plane → 1D line with slope 1/φ
gives the Fibonacci chain with intervals L = φ, S = 1.

The "throat" is where the Voronoi cell of H4 crosses the physical-space window.
For N = F₉ + 1 = 35, the 600-cell makes one full turn, giving exactly three
Voronoi boundaries → three gap sizes {13, 21, 34} = {F₇, F₈, F₉}.
-/

noncomputable def φ : ℝ := (1 + Real.sqrt 5) / 2
noncomputable def inv_φ : ℝ := φ - 1

theorem φ_sq : φ ^ 2 = φ + 1 := by
  unfold φ
  nlinarith [Real.sq_sqrt (show (0 : ℝ) ≤ 5 by norm_num), Real.sqrt_nonneg 5]

theorem inv_φ_eq : inv_φ = 1 / φ := by
  have hφ : φ ≠ 0 := by unfold φ; positivity
  field_simp [hφ]
  unfold inv_φ φ
  nlinarith [Real.sq_sqrt (show (0 : ℝ) ≤ 5 by norm_num), Real.sqrt_nonneg 5]

theorem convergent_error : |((610 : ℝ) / 987) - inv_φ| < 5e-7 := by
  unfold inv_φ φ
  have h1 : Real.sqrt 5 < 2.236068 := by
    nlinarith [Real.sq_sqrt (show (0 : ℝ) ≤ 5 by norm_num), Real.sqrt_nonneg 5]
  have h2 : Real.sqrt 5 > 2.2360679 := by
    nlinarith [Real.sq_sqrt (show (0 : ℝ) ≤ 5 by norm_num), Real.sqrt_nonneg 5]
  rw [abs_lt]
  constructor <;> nlinarith

noncomputable def phase_boundary : ℝ := 1 - inv_φ

theorem H4_throat_is_FibonacciChain :
    (weyl_gaps 35).eraseDups.mergeSort = [13, 21, 34] := by native_decide

theorem H4_three_boundaries :
    (weyl_gaps 35).eraseDups.length = 3 := by native_decide

theorem H4_no_overlap : Nat.Coprime 610 987 := by native_decide

end Eutheos