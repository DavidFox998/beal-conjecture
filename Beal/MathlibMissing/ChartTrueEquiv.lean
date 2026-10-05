import Beal.MathlibMissing.ChartXt
import Beal.MathlibMissing.ChartXtFixed
import Beal.MathlibMissing.GlueFinal

-- True-chart equivalence draft on beal-v38-gluing
-- Uses c48b1bd3 glue: Y common axis V=S⁻¹, ann(X²)=ann(Y²), ann(1+Y·S³)=ann(X+V²)
-- Bound is X²·(X+V²)z=0 on D₊(Xt) and (1+Y·S³)·Y³z=0 on D₊(Yt)
-- NOT B=0, NOT Ei=0 from centreAlpha/BetaBound — centreNormalPoly
-- c39488ce cites factor≠power: Y² kills factor not power

-- Goal: chartOfModelTrueX_fixed surjection + glue_final_Y_axis gives
-- D₊(Xt) and D₊(Yt) same Y-axis, no ring map D₊(Xt)→overlap claimed
-- Draft theorem: equivalence of annihilator presentations, not injective ring map

/-!
Annihilator presentations of the two charts. This is not a ring
equivalence and not an injective map. There is no ring map from
`D₊(Xt)` into the overlap.

The `Xt` bound is `X²·(X + V²)·z = 0` for every class of `D₊(Xt)`.
The `Yt` bound is `(1 + Y·S³)·Y³·z = 0` for every class of `D₊(Yt)`.
Neither bound is read off `centreAlphaBound` or `centreBetaBound`.
`centreNormalPoly` remains `α(X) + Y·β(X)`. The bounds do not set
`B = 0` or `Eᵢ = 0`.

On the overlap, `Y` is the common axis: `V = S⁻¹`, `Y = X·V`, and
`X = Y·S`. The factor annihilators agree and the power annihilators
agree. `glue_factor_annihilator_ne_power_annihilator` is cited before
that conjunction: `Y²` kills `1 + Y·S³` and does not kill `X²`.
-/

namespace Beal.MathlibMissing

open Beal.General

set_option synthInstance.maxHeartbeats 400000
set_option maxHeartbeats 8000000

/-- `X²` annihilates `(X + V²)·z` for every class of `D₊(Xt)`. -/
theorem chartTrueEquiv_X_annihilator
    (z : chart_Dplus_Xt_ring valuationOneCurve 0 0) :
    chart_X valuationOneCurve 0 0 ^ 2 *
      ((chart_X valuationOneCurve 0 0 +
          chart_Y_over_X valuationOneCurve 0 0 ^ 2) * z) = 0 :=
  chartOfModelTrueX_fixed_annihilator z

/-- `(1 + Y·S³)` annihilates `Y³·z` for every class of `D₊(Yt)`. -/
theorem chartTrueEquiv_Y_annihilator
    (z : chart_Dplus_Yt_ring valuationOneCurve 0 0) :
    (1 + chartYt_Y valuationOneCurve 0 0 *
        chartYt_X_over_Y valuationOneCurve 0 0 ^ 3) *
      (chartYt_Y valuationOneCurve 0 0 ^ 3 * z) = 0 := by
  set y : chart_Dplus_Yt_ring valuationOneCurve 0 0 :=
    chartYt_Y valuationOneCurve 0 0
  set s : chart_Dplus_Yt_ring valuationOneCurve 0 0 :=
    chartYt_X_over_Y valuationOneCurve 0 0
  have hcusp : y ^ 2 * (1 + y * s ^ 3) = 0 := chartYt_cusp_torsion_zero
  calc
    (1 + y * s ^ 3) * (y ^ 3 * z) =
        (y ^ 2 * (1 + y * s ^ 3)) * (y * z) := by ring
    _ = 0 * (y * z) := by rw [hcusp]
    _ = 0 := by ring

/-- `Y²` kills the factor `1 + Y·S³` and does not kill the power `X²`. -/
theorem chartTrueEquiv_factor_ne_power :
    (Ideal.span
        ({1 + overlapY * overlapS ^ 3} : Set chartOverlapRing)).annihilator ≠
      (Ideal.span ({overlapX ^ 2} : Set chartOverlapRing)).annihilator :=
  glue_factor_annihilator_ne_power_annihilator

/-- The two annihilator presentations agree along the `Y` axis.
`ann(1 + Y·S³) = ann(X + V²)` and `ann(X²) = ann(Y²)`. The `Xt` bound
is the `X²` annihilator, and the `Yt` bound is the factor annihilator
on `Y³·z`. This is not a ring equivalence. -/
theorem chartTrueEquiv_annihilator_presentations :
    (overlapS * overlapV = 1 ∧
      overlapY = overlapX * overlapV ∧
      overlapX = overlapY * overlapS) ∧
    ((Ideal.span
          ({1 + overlapY * overlapS ^ 3} : Set chartOverlapRing)).annihilator =
        (Ideal.span
          ({overlapX + overlapV ^ 2} : Set chartOverlapRing)).annihilator ∧
      (Ideal.span ({overlapX ^ 2} : Set chartOverlapRing)).annihilator =
        (Ideal.span ({overlapY ^ 2} : Set chartOverlapRing)).annihilator) ∧
    (∀ z : chart_Dplus_Xt_ring valuationOneCurve 0 0,
      chart_X valuationOneCurve 0 0 ^ 2 *
        ((chart_X valuationOneCurve 0 0 +
            chart_Y_over_X valuationOneCurve 0 0 ^ 2) * z) = 0) ∧
    (∀ z : chart_Dplus_Yt_ring valuationOneCurve 0 0,
      (1 + chartYt_Y valuationOneCurve 0 0 *
          chartYt_X_over_Y valuationOneCurve 0 0 ^ 3) *
        (chartYt_Y valuationOneCurve 0 0 ^ 3 * z) = 0) ∧
    overlapX * (overlapX + overlapV ^ 2) ≠ 0 := by
  have h_factor_vs_power := chartTrueEquiv_factor_ne_power
  exact (fun _ =>
      ⟨glue_final_Y_axis,
        ⟨chartOverlap_same_annihilator, glue_power_annihilator⟩,
        chartTrueEquiv_X_annihilator,
        chartTrueEquiv_Y_annihilator,
        chartOverlap_nilpotent_ne_zero⟩)
    h_factor_vs_power

/-- A kernel class constrains the `Eᵢ` summand and does not set it to zero.
`chartYtCusp_kernel_torsion_condition` gives `S`-degree at most `2`,
equal chart images of the high piece and of `A + Y·B + Y²·C`, and
annihilation of the high image by `1 + Y·S³`. `Y³` stays nonzero.
The `X²` annihilator holds on `D₊(Xt)` and does not set `B = 0`:
`X + V²` stays outside the cusp ideal with nonzero image, and the
cleared cofactor `X³ − 1 = centreNormalPoly (X³ − 1) 0` lies outside
`I²` because `centreAlphaBound 2 0 = 1`. There is no ring map from
`D₊(Xt)` into the overlap. `chartOfModelTrue_injective` is not restated. -/
theorem chartTrueEquiv_Ei_constraint_not_vanish
    (N : modelYtChart_fixed)
    (hN : chartOfModelTrueY_fixed N = 0) :
    (∃ A B C E0 E1 E2 : chartYtCuspPoly,
      MvPolynomial.degreeOf (0 : Fin 2) A = 0 ∧
        MvPolynomial.degreeOf (0 : Fin 2) B = 0 ∧
        MvPolynomial.degreeOf (0 : Fin 2) C = 0 ∧
        MvPolynomial.degreeOf (1 : Fin 2) E0 = 0 ∧
        MvPolynomial.degreeOf (1 : Fin 2) E1 = 0 ∧
        MvPolynomial.degreeOf (1 : Fin 2) E2 = 0 ∧
        closedYtToCusp N =
          Ideal.Quotient.mk chartYtCuspIdeal
            (A + MvPolynomial.X (0 : Fin 2) * B +
              (MvPolynomial.X (0 : Fin 2)) ^ 2 * C +
              (MvPolynomial.X (0 : Fin 2)) ^ 3 *
                (E0 + MvPolynomial.X (1 : Fin 2) * E1 +
                  (MvPolynomial.X (1 : Fin 2)) ^ 2 * E2)) ∧
        MvPolynomial.degreeOf (1 : Fin 2)
            ((MvPolynomial.X (0 : Fin 2)) ^ 3 *
              (E0 + MvPolynomial.X (1 : Fin 2) * E1 +
                (MvPolynomial.X (1 : Fin 2)) ^ 2 * E2)) ≤ 2 ∧
        chartOfModelTrueY_fixed
            (cuspYtToClosed (Ideal.Quotient.mk chartYtCuspIdeal
              ((MvPolynomial.X (0 : Fin 2)) ^ 3 *
                (E0 + MvPolynomial.X (1 : Fin 2) * E1 +
                  (MvPolynomial.X (1 : Fin 2)) ^ 2 * E2)))) =
          chartOfModelTrueY_fixed
            (cuspYtToClosed (Ideal.Quotient.mk chartYtCuspIdeal
              (A + MvPolynomial.X (0 : Fin 2) * B +
                (MvPolynomial.X (0 : Fin 2)) ^ 2 * C))) ∧
        (1 + chartYt_Y valuationOneCurve 0 0 *
            chartYt_X_over_Y valuationOneCurve 0 0 ^ 3) *
          chartOfModelTrueY_fixed
            (cuspYtToClosed (Ideal.Quotient.mk chartYtCuspIdeal
              ((MvPolynomial.X (0 : Fin 2)) ^ 3 *
                (E0 + MvPolynomial.X (1 : Fin 2) * E1 +
                  (MvPolynomial.X (1 : Fin 2)) ^ 2 * E2)))) = 0) ∧
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
                (MvPolynomial.X (1 : Fin 2)) ^ 2))) ≠ 0) ∧
    (Ideal.Quotient.mk (Ideal.span {surfacePolynomial valuationOneCurve})
        (centreNormalPoly (Polynomial.X ^ 3 - 1) 0) ∉ vI ^ 2) ∧
    chartYt_Y valuationOneCurve 0 0 ^ 3 ≠ 0 := by
  have h_factor_vs_power := chartTrueEquiv_factor_ne_power
  exact (fun _ =>
      ⟨chartYtCusp_kernel_torsion_condition N hN,
        chartTrueEquiv_X_annihilator,
        chartOfModelTrueX_fixed_B_one_outside,
        chartXt_Xcube_sub_one_not_mem,
        chartYt_Y_cube_ne_zero⟩)
    h_factor_vs_power

/-- Injectivity draft from the `Eᵢ` constraint. A kernel class carries
the data of `chartTrueEquiv_Ei_constraint_not_vanish`: `S`-degree at
most `2`, equal chart images of the high piece and of
`A + Y·B + Y²·C`, and annihilation of the high image by `1 + Y·S³`.
`Y³` stays outside the cusp ideal, so the constraint does not set
`Eᵢ = 0`. The `X²` annihilator on `D₊(Xt)` does not set `B = 0`:
`X + V²` stays outside the cusp ideal with nonzero image, and
`centreNormalPoly (X³ − 1) 0` lies outside `I²` because
`centreAlphaBound 2 0 = 1`. The centre class remains
`α(X) + Y·β(X)`. `overlapX·(overlapX + overlapV²) ≠ 0`.
`ann(1 + Y·S³) ≠ ann(X²)` is cited before the conjunction. There is
no ring map from `D₊(Xt)` into the overlap. `chartOfModelTrue_injective`
is not restated. -/
theorem chartTrueEquiv_inj_from_Ei_constraint
    (N : modelYtChart_fixed)
    (hN : chartOfModelTrueY_fixed N = 0) :
    ((∃ A B C E0 E1 E2 : chartYtCuspPoly,
        MvPolynomial.degreeOf (0 : Fin 2) A = 0 ∧
          MvPolynomial.degreeOf (0 : Fin 2) B = 0 ∧
          MvPolynomial.degreeOf (0 : Fin 2) C = 0 ∧
          MvPolynomial.degreeOf (1 : Fin 2) E0 = 0 ∧
          MvPolynomial.degreeOf (1 : Fin 2) E1 = 0 ∧
          MvPolynomial.degreeOf (1 : Fin 2) E2 = 0 ∧
          closedYtToCusp N =
            Ideal.Quotient.mk chartYtCuspIdeal
              (A + MvPolynomial.X (0 : Fin 2) * B +
                (MvPolynomial.X (0 : Fin 2)) ^ 2 * C +
                (MvPolynomial.X (0 : Fin 2)) ^ 3 *
                  (E0 + MvPolynomial.X (1 : Fin 2) * E1 +
                    (MvPolynomial.X (1 : Fin 2)) ^ 2 * E2)) ∧
          MvPolynomial.degreeOf (1 : Fin 2)
              ((MvPolynomial.X (0 : Fin 2)) ^ 3 *
                (E0 + MvPolynomial.X (1 : Fin 2) * E1 +
                  (MvPolynomial.X (1 : Fin 2)) ^ 2 * E2)) ≤ 2 ∧
          chartOfModelTrueY_fixed
              (cuspYtToClosed (Ideal.Quotient.mk chartYtCuspIdeal
                ((MvPolynomial.X (0 : Fin 2)) ^ 3 *
                  (E0 + MvPolynomial.X (1 : Fin 2) * E1 +
                    (MvPolynomial.X (1 : Fin 2)) ^ 2 * E2)))) =
            chartOfModelTrueY_fixed
              (cuspYtToClosed (Ideal.Quotient.mk chartYtCuspIdeal
                (A + MvPolynomial.X (0 : Fin 2) * B +
                  (MvPolynomial.X (0 : Fin 2)) ^ 2 * C))) ∧
          (1 + chartYt_Y valuationOneCurve 0 0 *
              chartYt_X_over_Y valuationOneCurve 0 0 ^ 3) *
            chartOfModelTrueY_fixed
              (cuspYtToClosed (Ideal.Quotient.mk chartYtCuspIdeal
                ((MvPolynomial.X (0 : Fin 2)) ^ 3 *
                  (E0 + MvPolynomial.X (1 : Fin 2) * E1 +
                    (MvPolynomial.X (1 : Fin 2)) ^ 2 * E2)))) = 0) ∧
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
                  (MvPolynomial.X (1 : Fin 2)) ^ 2))) ≠ 0) ∧
      (Ideal.Quotient.mk (Ideal.span {surfacePolynomial valuationOneCurve})
          (centreNormalPoly (Polynomial.X ^ 3 - 1) 0) ∉ vI ^ 2) ∧
      chartYt_Y valuationOneCurve 0 0 ^ 3 ≠ 0) ∧
    (MvPolynomial.X (0 : Fin 2)) ^ 3 ∉ chartYtCuspIdeal ∧
    overlapX * (overlapX + overlapV ^ 2) ≠ 0 := by
  have h_factor_vs_power := chartTrueEquiv_factor_ne_power
  exact (fun _ =>
      ⟨chartTrueEquiv_Ei_constraint_not_vanish N hN,
        chartYtCusp_Y_cube_not_mem,
        chartOverlap_nilpotent_ne_zero⟩)
    h_factor_vs_power

#print axioms Beal.MathlibMissing.chartTrueEquiv_inj_from_Ei_constraint
#print axioms Beal.MathlibMissing.chartTrueEquiv_Ei_constraint_not_vanish
#print axioms Beal.MathlibMissing.chartTrueEquiv_X_annihilator
#print axioms Beal.MathlibMissing.chartTrueEquiv_Y_annihilator
#print axioms Beal.MathlibMissing.chartTrueEquiv_factor_ne_power
#print axioms Beal.MathlibMissing.chartTrueEquiv_annihilator_presentations

end Beal.MathlibMissing

-- EQUIV:2 starts from chartTrueEquiv_Ei_constraint_not_vanish
-- S-deg ≤2, (1+Y·S³) kills the high image, Y³ stays outside the cusp ideal
-- X²·(X+V²)z=0 does not set B=0; centreNormalPoly (X³-1) 0 outside I²
-- ann(1+Y·S³)≠ann(X²) cited before the conjunction
-- No ring map D₊(Xt)→overlap. chartOfModelTrue_injective is not restated.
