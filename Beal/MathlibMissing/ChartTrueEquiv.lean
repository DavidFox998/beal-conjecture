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

#print axioms Beal.MathlibMissing.chartTrueEquiv_X_annihilator
#print axioms Beal.MathlibMissing.chartTrueEquiv_Y_annihilator
#print axioms Beal.MathlibMissing.chartTrueEquiv_factor_ne_power
#print axioms Beal.MathlibMissing.chartTrueEquiv_annihilator_presentations

end Beal.MathlibMissing

-- Next layer: injective from annihilator bound
-- Uses 81f15d00: ann(X²)=ann(Y²) via V unit, ann(1+Y·S³)=ann(X+V²)
-- X²·(X+V²)z=0 does NOT give B=0 — B=1 outside cusp case via centreAlphaBound
-- Need: from X²·(X+V²)z=0 + centreNormalPoly α+Yβ, get kernel torsion constrains Ei summand not Ei=0
-- Skeleton only. chartOfModelTrue_injective is not restated.
