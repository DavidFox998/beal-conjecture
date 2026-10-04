import Beal.MathlibMissing.ChartYt

/-!
Torsion bound for the `D₊(Yt)` cusp, from `Y²·(1 + Y·S³) = 0`.

The centre `(2, X, Y)` is not used. Substituting the chart relation
`X = Y·S` into that centre collapses it to `(2, Y)` and drops the
`S`-degree, so it cannot see `1 + Y·S³`.

On `D₊(Yt)`, `T = Y·(1 + Y·S³)`, `Y·T = 0`, and `T² = 0`, while `T ≠ 0`.
Thus `Y²·(1 + Y·S³) = Y·T = 0`. In `𝔽₂[a,b][Y,S]` the same polynomial is
`chartYtCuspRel`. A monomial `Y^i S^j` differs from `Y^{i-1} S^{j-3}` by
an element of `(Y²·(1 + Y·S³))` only when `i ≥ 3` and `j ≥ 3`. After
those steps, `chartYtCusp_normalForm` leaves
`A(S) + Y·B(S) + Y²·C(S) + Y³·(E₀(Y) + S·E₁(Y) + S²·E₂(Y))`.
The `Eᵢ` summand has `S`-degree at most `2`, so the reduction does not
apply to it.

`Y³` is that summand with `E₀ = 1` and `E₁ = E₂ = 0`. It lies outside
the cusp ideal and stays nonzero in `D₊(Yt)`. `chartYtCusp_Ei_vanish`
is therefore not the claim that every `Eᵢ` is zero. Whether a class in
the kernel of `chartOfModelTrueY_fixed` has its `Eᵢ` summand inside
`(Y²·(1 + Y·S³))` is not decided here. Injectivity and
`chart_Dplus_Yt_true_presentation` are not stated.
-/

namespace Beal.MathlibMissing

open Beal.General

set_option synthInstance.maxHeartbeats 400000
set_option maxHeartbeats 8000000

private lemma chartYt_sub_eq_add (a b : chart_Dplus_Yt_ring valuationOneCurve 0 0) :
    a - b = a + b := by
  have h2 := chartYt_two_eq_zero
  have hneg : -b = b := by
    have h11 : (-1 : chart_Dplus_Yt_ring valuationOneCurve 0 0) = 1 := by
      calc
        (-1 : chart_Dplus_Yt_ring valuationOneCurve 0 0) = -(1 + 1) + 1 := by ring
        _ = -((2 : chart_Dplus_Yt_ring valuationOneCurve 0 0)) + 1 := by ring
        _ = -(0 : chart_Dplus_Yt_ring valuationOneCurve 0 0) + 1 := by rw [h2]
        _ = 1 := by ring
    calc
      -b = (-1 : chart_Dplus_Yt_ring valuationOneCurve 0 0) * b := by ring
      _ = (1 : chart_Dplus_Yt_ring valuationOneCurve 0 0) * b := by rw [h11]
      _ = b := by ring
  calc
    a - b = a + -b := by ring
    _ = a + b := by rw [hneg]

/-- `Y²·(1 + Y·S³) = 0` on `D₊(Yt)`. This is `chartYt_cusp_relation`
rewritten with `1 - Y·S³ = 1 + Y·S³`. -/
theorem chartYt_cusp_torsion_zero :
    chartYt_Y valuationOneCurve 0 0 ^ 2 *
        (1 + chartYt_Y valuationOneCurve 0 0 *
          chartYt_X_over_Y valuationOneCurve 0 0 ^ 3) = 0 := by
  rw [← chartYt_sub_eq_add]
  exact chartYt_cusp_relation

/-- The cusp torsion is `Y·T`. -/
theorem chartYt_cusp_torsion_eq_Y_mul_T :
    chartYt_Y valuationOneCurve 0 0 ^ 2 *
        (1 + chartYt_Y valuationOneCurve 0 0 *
          chartYt_X_over_Y valuationOneCurve 0 0 ^ 3) =
      chartYt_Y valuationOneCurve 0 0 * chartYt_two_over_Y valuationOneCurve 0 0 := by
  rw [chartYt_T_eq_Y_mul_one_add_Y_Scube]
  ring

/-- `T` is nilpotent and nonzero, and `Y·T = 0`. -/
theorem chartYt_T_nilpotent_ne_zero :
    chartYt_two_over_Y valuationOneCurve 0 0 ^ 2 = 0 ∧
      chartYt_Y valuationOneCurve 0 0 * chartYt_two_over_Y valuationOneCurve 0 0 = 0 ∧
      chartYt_two_over_Y valuationOneCurve 0 0 ≠ 0 :=
  ⟨chartYt_two_over_Y_sq_zero,
    chartYt_Y_mul_two_over_Y_eq_zero valuationOneCurve 0 0,
    chartYt_two_over_Y_ne_zero⟩

/-- For `i ≥ 3` and `j ≥ 3`, `Y^i S^j` and `Y^{i-1} S^{j-3}` differ by
an element of `(Y²·(1 + Y·S³))`. In characteristic 2 the sum is the
difference. The `S`-degree `≤ 2` summand `Y³·(E₀ + S·E₁ + S²·E₂)` does
not satisfy `j ≥ 3`, so this step does not apply to it. -/
theorem chartYtCusp_high_corner_torsion (i j : ℕ) (hi : 3 ≤ i) (hj : 3 ≤ j) :
    (MvPolynomial.X (0 : Fin 2)) ^ i * (MvPolynomial.X (1 : Fin 2)) ^ j +
        (MvPolynomial.X (0 : Fin 2)) ^ (i - 1) *
          (MvPolynomial.X (1 : Fin 2)) ^ (j - 3) ∈
      chartYtCuspIdeal :=
  chartYtCusp_reduction_step i j hi hj

/-- `Y³`, the normal-form class `E₀ = 1`, `E₁ = E₂ = 0`, is not in
`(Y²·(1 + Y·S³))`. -/
theorem chartYtCusp_Y_cube_not_mem :
    (MvPolynomial.X (0 : Fin 2)) ^ 3 ∉ chartYtCuspIdeal := by
  have hdeg : MvPolynomial.degreeOf (0 : Fin 2) (0 : chartYtCuspPoly) ≤ 2 := by
    simp [MvPolynomial.degreeOf_zero]
  simpa [sub_zero] using chartYtCusp_Y_cube_not_reduced (0 : chartYtCuspPoly) hdeg

/-- `Y³ ≠ 0` in `D₊(Yt)`. The cusp torsion does not kill `E₀ = 1`. -/
theorem chartYt_Y_cube_ne_zero :
    chartYt_Y valuationOneCurve 0 0 ^ 3 ≠ 0 := by
  simpa [pow_zero, one_mul] using chartYt_monomial_ne_zero 3 0

#print axioms Beal.MathlibMissing.chartYt_cusp_torsion_zero
#print axioms Beal.MathlibMissing.chartYt_cusp_torsion_eq_Y_mul_T
#print axioms Beal.MathlibMissing.chartYt_T_nilpotent_ne_zero
#print axioms Beal.MathlibMissing.chartYtCusp_high_corner_torsion
#print axioms Beal.MathlibMissing.chartYtCusp_Y_cube_not_mem
#print axioms Beal.MathlibMissing.chartYt_Y_cube_ne_zero

end Beal.MathlibMissing
