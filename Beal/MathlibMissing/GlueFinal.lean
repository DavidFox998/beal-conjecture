import Beal.MathlibMissing.ChartXtFixed

/-!
Glue of `chartOfModelTrueX_fixed` and the `D₊(Yt)` cusp presentation.

The overlap is `D₊(Yt)` with `S = Xt/Yt` inverted. `V = S⁻¹` is a unit,
and `Y = X·V`, `X = Y·S`. `Y` is the common axis. There is no ring map
from `D₊(Xt)` into the overlap. The fixed Xt chart is used on `D₊(Xt)`:
`chartOfModelTrueX_fixed` is the surjection from `chartTrueIdeal`, and
`X²·(X + V²)·z = 0` for every class there. `X + V²` stays outside the
cusp ideal and its image is nonzero. That bound does not set `B = 0`.

On the overlap the factor annihilators agree,
`ann(1 + Y·S³) = ann(X + V²)`, and the unit `V` keeps the power
annihilators equal, `ann(X²) = ann(Y²)`. These are not the same
annihilator. `glue_factor_annihilator_ne_power_annihilator` is cited
before the conjunction. `chartOfModelTrue_injective` and
`chart_Dplus_Xt_true_presentation` are not restated.
-/

namespace Beal.MathlibMissing

open Beal.General

set_option synthInstance.maxHeartbeats 400000
set_option maxHeartbeats 8000000

/-- `Y` is the common axis on the overlap: `V = S⁻¹`, `Y = X·V`, and
`X = Y·S`. This does not cancel `Y`. -/
theorem glue_final_Y_axis :
    overlapS * overlapV = 1 ∧
      overlapY = overlapX * overlapV ∧
      overlapX = overlapY * overlapS :=
  ⟨chartOverlap_S_mul_V, chartOverlap_Y_eq_X_mul_V, chartOverlap_X_eq⟩

/-- The two charts meet on that axis. `ann(1 + Y·S³) = ann(X + V²)` and
`ann(X²) = ann(Y²)`. The `Yt` cusp presentation and the fixed `Xt` chart
both keep their annihilator bounds. `X + V²` stays nonzero. The factor
annihilator is not the power annihilator. -/
theorem glue_final :
    (overlapS * overlapV = 1 ∧
      overlapY = overlapX * overlapV ∧
      overlapX = overlapY * overlapS) ∧
    ((Ideal.span
          ({1 + overlapY * overlapS ^ 3} : Set chartOverlapRing)).annihilator =
        (Ideal.span
          ({overlapX + overlapV ^ 2} : Set chartOverlapRing)).annihilator ∧
      (Ideal.span ({overlapX ^ 2} : Set chartOverlapRing)).annihilator =
        (Ideal.span ({overlapY ^ 2} : Set chartOverlapRing)).annihilator) ∧
    (Function.Surjective chartOfCuspY ∧
      (∀ F : chartYtCuspPoly,
        (1 + chartYt_Y valuationOneCurve 0 0 *
            chartYt_X_over_Y valuationOneCurve 0 0 ^ 3) *
          chartOfCuspY
            (Ideal.Quotient.mk chartYtCuspIdeal
              ((MvPolynomial.X (0 : Fin 2)) ^ 3 * F)) = 0) ∧
      chartYt_Y valuationOneCurve 0 0 ^ 3 ≠ 0 ∧
      (MvPolynomial.X (0 : Fin 2)) ^ 3 ∉ chartYtCuspIdeal) ∧
    (∀ F : chartYtCuspPoly,
      (1 + overlapY * overlapS ^ 3) *
        algebraMap (chart_Dplus_Yt_ring valuationOneCurve 0 0) chartOverlapRing
          (chartOfCuspY
            (Ideal.Quotient.mk chartYtCuspIdeal
              ((MvPolynomial.X (0 : Fin 2)) ^ 3 * F))) = 0) ∧
    (Function.Surjective chartOfModelTrueX_fixed ∧
      (∀ z : chart_Dplus_Xt_ring valuationOneCurve 0 0,
        chart_X valuationOneCurve 0 0 ^ 2 *
          ((chart_X valuationOneCurve 0 0 +
              chart_Y_over_X valuationOneCurve 0 0 ^ 2) * z) = 0) ∧
      (MvPolynomial.X (0 : Fin 2) + (MvPolynomial.X (1 : Fin 2)) ^ 2 ∉
          chartNormalIdeal ∧
        chartOfModelTrueX_fixed
            (Ideal.Quotient.mk chartTrueIdeal
              (normalPolyToModel
                (MvPolynomial.X (0 : Fin 2) +
                  (MvPolynomial.X (1 : Fin 2)) ^ 2))) ≠ 0)) ∧
    overlapX * (overlapX + overlapV ^ 2) ≠ 0 := by
  have h_factor_vs_power := glue_factor_annihilator_ne_power_annihilator
  exact (fun _ =>
      ⟨glue_final_Y_axis,
        ⟨chartOverlap_same_annihilator, glue_power_annihilator⟩,
        chart_Dplus_Yt_torsion_presentation,
        glue_Yt_high_piece,
        ⟨chartOfModelTrueX_fixed_surjective, chartOfModelTrueX_fixed_annihilator,
          chartOfModelTrueX_fixed_B_one_outside⟩,
        chartOverlap_nilpotent_ne_zero⟩)
    h_factor_vs_power

#print axioms Beal.MathlibMissing.glue_final_Y_axis
#print axioms Beal.MathlibMissing.glue_final

end Beal.MathlibMissing
