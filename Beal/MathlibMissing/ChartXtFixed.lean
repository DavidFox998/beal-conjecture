import Beal.MathlibMissing.GluePresentations

/-!
Scaffold for `chartOfModelTrueX_fixed`.

The fixed ideal on this chart is already `chartTrueIdeal`,
`(X·U, Y − X·V, Y² − X³, U + X² + X·V²)`. `chartOfModelTrueX_fixed`
is that quotient map, the same ring hom as `chartOfModelTrue`.
`chartOfModelTrue_injective` and `chart_Dplus_Xt_true_presentation`
are already proved. They are not restated, and this file does not
claim a new ring equivalence.

The bound carried with the map is the annihilator
`X²·(X + V²)·z = 0` for every `z` in `D₊(Xt)`. It is not `B = 0`.
The normal form with `B = 1` is `X + V²`. That polynomial lies outside
`(X²·(X + V²))`, and its image under the fixed map is nonzero.

On the overlap, `V = S⁻¹` is a unit, so `ann(X²) = ann(Y²)`. That is
the glue kept for the return to `Y`. The centre remains `(2, X, Y)`.
`X = Y·S` is a chart relation, not a surface substitution.
-/

namespace Beal.MathlibMissing

open Beal.General

set_option synthInstance.maxHeartbeats 400000
set_option maxHeartbeats 8000000

/-- `𝔽₂[a,b][X,Y,U,V] / chartTrueIdeal → D₊(Xt)`.
This is `chartOfModelTrue`. Injectivity is not restated. -/
noncomputable def chartOfModelTrueX_fixed :
    modelXtChart →+* chart_Dplus_Xt_ring valuationOneCurve 0 0 :=
  chartOfModelTrue

theorem chartOfModelTrueX_fixed_eq :
    chartOfModelTrueX_fixed = chartOfModelTrue := rfl

theorem chartOfModelTrueX_fixed_surjective :
    Function.Surjective chartOfModelTrueX_fixed := by
  intro z
  obtain ⟨p, hp⟩ := chartOfModelTrue_surjective z
  change chartOfModelTrue p = z at hp
  exact ⟨p, hp⟩

/-- `X²` annihilates `(X + V²)·z` for every class of `D₊(Xt)`.
This is the bound on the fixed chart. It does not set `B = 0`. -/
theorem chartOfModelTrueX_fixed_annihilator
    (z : chart_Dplus_Xt_ring valuationOneCurve 0 0) :
    chart_X valuationOneCurve 0 0 ^ 2 *
      ((chart_X valuationOneCurve 0 0 +
          chart_Y_over_X valuationOneCurve 0 0 ^ 2) * z) = 0 := by
  have hcusp : chart_X valuationOneCurve 0 0 ^ 2 *
      (chart_X valuationOneCurve 0 0 +
        chart_Y_over_X valuationOneCurve 0 0 ^ 2) = 0 :=
    chartXt_cusp_torsion_zero
  calc
    chart_X valuationOneCurve 0 0 ^ 2 *
        ((chart_X valuationOneCurve 0 0 +
            chart_Y_over_X valuationOneCurve 0 0 ^ 2) * z) =
        (chart_X valuationOneCurve 0 0 ^ 2 *
          (chart_X valuationOneCurve 0 0 +
            chart_Y_over_X valuationOneCurve 0 0 ^ 2)) * z := by ring
    _ = 0 * z := by rw [hcusp]
    _ = 0 := by ring

/-- `B = 1` stays outside. `X + V²` is not in the cusp ideal, and the
fixed map does not send it to zero. -/
theorem chartOfModelTrueX_fixed_B_one_outside :
    MvPolynomial.X (0 : Fin 2) + (MvPolynomial.X (1 : Fin 2)) ^ 2 ∉
        chartNormalIdeal ∧
      chartOfModelTrueX_fixed
          (Ideal.Quotient.mk chartTrueIdeal
            (normalPolyToModel
              (MvPolynomial.X (0 : Fin 2) +
                (MvPolynomial.X (1 : Fin 2)) ^ 2))) ≠ 0 := by
  refine ⟨chartXtCusp_X_add_Vsq_not_mem, ?_⟩
  intro h
  exact chartOfModelTrue_normal_X_add_Vsq_ne_zero h

/-- The unit `V` keeps `ann(X²) = ann(Y²)` on the overlap. This is the
glue used when `Y` returns. -/
theorem chartOfModelTrueX_fixed_power_annihilator :
    (Ideal.span ({overlapX ^ 2} : Set chartOverlapRing)).annihilator =
      (Ideal.span ({overlapY ^ 2} : Set chartOverlapRing)).annihilator := by
  have hV : overlapS * overlapV = 1 := chartOverlap_S_mul_V
  exact (fun _ => glue_power_annihilator) hV

#print axioms Beal.MathlibMissing.chartOfModelTrueX_fixed_eq
#print axioms Beal.MathlibMissing.chartOfModelTrueX_fixed_surjective
#print axioms Beal.MathlibMissing.chartOfModelTrueX_fixed_annihilator
#print axioms Beal.MathlibMissing.chartOfModelTrueX_fixed_B_one_outside
#print axioms Beal.MathlibMissing.chartOfModelTrueX_fixed_power_annihilator

end Beal.MathlibMissing
