import Beal.MathlibMissing.ChartXtTorsionBound

/-!
`D₊(Xt)` as the image of the cusp ring, with torsion bound `X²`.

`chartOfCuspX` is `chartOfModelTrue` after the elimination
`𝔽₂[a,b][X,Y,U,V] / chartTrueIdeal ≃ 𝔽₂[a,b][X,V] / (X²·(X + V²))`.
It is a surjection onto `D₊(Xt)`. `chartOfModelTrue_injective` and
`chart_Dplus_Xt_true_presentation` are already proved; they are not
restated. The relation is `X²·(X + V²)`, not `X²·(1 + X·T³)`.

`exists_chartNormalForm` writes every class as `A(V) + X·B(V) + X²·C(V)`.
For `i ≥ 3` and every `j`, the corner `X^i V^j` differs from
`X^{i-1} V^{j+2}` by a multiple of `X²·(X + V²)`. The `V`-degree rises
by `2`. What remains has `X`-degree at most `2`.

On `D₊(Xt)`, `X²·(X + V²) = 0`, so `X²` annihilates every piece
`(X + V²)·F`. This is the counterpart of `(1 + Y·S³)` annihilating
`Y³·F` on `D₊(Yt)`. The class `X + V²` is that piece with `F = 1`, the
normal form with `B = 1`. It lies outside the cusp ideal and stays
nonzero in `D₊(Xt)`. The bound does not set `A`, `B`, or `C` to zero.
-/

namespace Beal.MathlibMissing

open Beal.General

set_option synthInstance.maxHeartbeats 400000
set_option maxHeartbeats 8000000

private lemma chartTrueIdeal_elim_eq :
    (chartTrueIdeal_quotient_equiv_normal :
        modelXtChart →+* chartNormalRing) = chartToNormal := by
  rw [chartTrueIdeal_quotient_equiv_normal]
  exact RingEquiv.coe_ringHom_ofRingHom _ _ _ _

private lemma chartTrueIdeal_elim_symm_eq :
    (chartTrueIdeal_quotient_equiv_normal.symm :
        chartNormalRing →+* modelXtChart) = normalToChart := by
  rw [chartTrueIdeal_quotient_equiv_normal, RingEquiv.ofRingHom_symm]
  exact RingEquiv.coe_ringHom_ofRingHom _ _ _ _

/-- The cusp ring surjects onto `D₊(Xt)` by eliminating `Y` and `U` and
then applying `chartOfModelTrue`. -/
noncomputable def chartOfCuspX :
    chartNormalRing →+* chart_Dplus_Xt_ring valuationOneCurve 0 0 :=
  chartOfModelTrue.comp normalToChart

/-- Every class of `D₊(Xt)` is the image of a class of
`𝔽₂[a,b][X,V] / (X²·(X + V²))`. -/
theorem chartOfCuspX_surjective : Function.Surjective chartOfCuspX := by
  intro z
  obtain ⟨N, hN⟩ := chartOfModelTrue_surjective z
  refine ⟨chartToNormal N, ?_⟩
  have happ_hom := RingHom.congr_fun chartTrueIdeal_elim_eq N
  have hsym_hom :=
    RingHom.congr_fun chartTrueIdeal_elim_symm_eq (chartToNormal N)
  have happ : chartTrueIdeal_quotient_equiv_normal N = chartToNormal N := by
    rw [← happ_hom]; rfl
  have hsym : chartTrueIdeal_quotient_equiv_normal.symm (chartToNormal N) =
      normalToChart (chartToNormal N) := by
    rw [← hsym_hom]; rfl
  have hback : normalToChart (chartToNormal N) = N := by
    calc
      normalToChart (chartToNormal N) =
          chartTrueIdeal_quotient_equiv_normal.symm (chartToNormal N) := hsym.symm
      _ = chartTrueIdeal_quotient_equiv_normal.symm
            (chartTrueIdeal_quotient_equiv_normal N) := by rw [happ]
      _ = N := chartTrueIdeal_quotient_equiv_normal.symm_apply_apply N
  rw [chartOfCuspX, RingHom.comp_apply, hback]
  exact hN

/-- The cusp coordinate `X` is sent to the chart coordinate `X`. -/
theorem chartOfCuspX_X :
    chartOfCuspX
        (Ideal.Quotient.mk chartNormalIdeal (MvPolynomial.X (0 : Fin 2))) =
      chart_X valuationOneCurve 0 0 := by
  rw [chartOfCuspX, RingHom.comp_apply, normalToChart, Ideal.Quotient.lift_mk,
    RingHom.comp_apply, chartOfModelTrue, Ideal.Quotient.lift_mk]
  rw [normalPolyToModel, MvPolynomial.eval₂Hom_X', if_pos (rfl : (0 : Fin 2) = 0)]
  rw [chartModelEval, MvPolynomial.eval₂Hom_X', if_pos (rfl : (0 : Fin 4) = 0)]

/-- The cusp coordinate `V` is sent to `Yt/Xt`. -/
theorem chartOfCuspX_V :
    chartOfCuspX
        (Ideal.Quotient.mk chartNormalIdeal (MvPolynomial.X (1 : Fin 2))) =
      chart_Y_over_X valuationOneCurve 0 0 := by
  rw [chartOfCuspX, RingHom.comp_apply, normalToChart, Ideal.Quotient.lift_mk,
    RingHom.comp_apply, chartOfModelTrue, Ideal.Quotient.lift_mk]
  rw [normalPolyToModel, MvPolynomial.eval₂Hom_X',
    if_neg (by decide : (1 : Fin 2) ≠ 0)]
  simp only [chartModelEval, MvPolynomial.eval₂Hom_X',
    if_neg (by decide : (3 : Fin 4) ≠ 0),
    if_neg (by decide : (3 : Fin 4) ≠ 1),
    if_neg (by decide : (3 : Fin 4) ≠ 2)]

/-- The cusp class `X + V²` is sent to `X + (Yt/Xt)²`. -/
theorem chartOfCuspX_X_add_Vsq :
    chartOfCuspX
        (Ideal.Quotient.mk chartNormalIdeal
          (MvPolynomial.X (0 : Fin 2) + (MvPolynomial.X (1 : Fin 2)) ^ 2)) =
      chart_X valuationOneCurve 0 0 +
        chart_Y_over_X valuationOneCurve 0 0 ^ 2 := by
  rw [chartOfCuspX, RingHom.comp_apply, normalToChart, Ideal.Quotient.lift_mk,
    RingHom.comp_apply, chartOfModelTrue, Ideal.Quotient.lift_mk]
  exact chartModelEval_normal_X_add_Vsq

/-- `X²` annihilates the image of every piece `(X + V²)·F`.
`(X + V²)·F` is divisible by `X + V²`, and `X²·(X + V²) = 0` on `D₊(Xt)`. -/
theorem chartXt_high_piece_annihilator (F : chartNormalPoly) :
    chart_X valuationOneCurve 0 0 ^ 2 *
      chartOfCuspX
        (Ideal.Quotient.mk chartNormalIdeal
          ((MvPolynomial.X (0 : Fin 2) + (MvPolynomial.X (1 : Fin 2)) ^ 2) * F)) = 0 := by
  have hsplit :
      Ideal.Quotient.mk chartNormalIdeal
          ((MvPolynomial.X (0 : Fin 2) + (MvPolynomial.X (1 : Fin 2)) ^ 2) * F) =
        Ideal.Quotient.mk chartNormalIdeal
            (MvPolynomial.X (0 : Fin 2) + (MvPolynomial.X (1 : Fin 2)) ^ 2) *
          Ideal.Quotient.mk chartNormalIdeal F := by
    rw [map_mul]
  rw [hsplit, map_mul, chartOfCuspX_X_add_Vsq]
  set x : chart_Dplus_Xt_ring valuationOneCurve 0 0 :=
    chart_X valuationOneCurve 0 0
  set v : chart_Dplus_Xt_ring valuationOneCurve 0 0 :=
    chart_Y_over_X valuationOneCurve 0 0
  set z : chart_Dplus_Xt_ring valuationOneCurve 0 0 :=
    chartOfCuspX (Ideal.Quotient.mk chartNormalIdeal F)
  have hcusp : x ^ 2 * (x + v ^ 2) = 0 := chartXt_cusp_torsion_zero
  calc
    x ^ 2 * ((x + v ^ 2) * z) = (x ^ 2 * (x + v ^ 2)) * z := by ring
    _ = 0 * z := by rw [hcusp]
    _ = 0 := by ring

/-- `D₊(Xt)` is the image of the cusp ring. `X²` annihilates every
`(X + V²)·F`, and `X + V²` itself is a nonzero class outside the cusp
ideal. The bound on `A`, `B`, `C` is this annihilation. -/
theorem chart_Dplus_Xt_torsion_presentation :
    Function.Surjective chartOfCuspX ∧
      (∀ F : chartNormalPoly,
        chart_X valuationOneCurve 0 0 ^ 2 *
          chartOfCuspX
            (Ideal.Quotient.mk chartNormalIdeal
              ((MvPolynomial.X (0 : Fin 2) +
                  (MvPolynomial.X (1 : Fin 2)) ^ 2) * F)) = 0) ∧
      chart_X valuationOneCurve 0 0 +
          chart_Y_over_X valuationOneCurve 0 0 ^ 2 ≠ 0 ∧
      MvPolynomial.X (0 : Fin 2) + (MvPolynomial.X (1 : Fin 2)) ^ 2 ∉
        chartNormalIdeal :=
  ⟨chartOfCuspX_surjective, chartXt_high_piece_annihilator,
    chart_X_add_V_sq_ne_zero, chartXtCusp_X_add_Vsq_not_mem⟩

#print axioms Beal.MathlibMissing.chartOfCuspX_surjective
#print axioms Beal.MathlibMissing.chartOfCuspX_X
#print axioms Beal.MathlibMissing.chartOfCuspX_V
#print axioms Beal.MathlibMissing.chartOfCuspX_X_add_Vsq
#print axioms Beal.MathlibMissing.chartXt_high_piece_annihilator
#print axioms Beal.MathlibMissing.chart_Dplus_Xt_torsion_presentation

end Beal.MathlibMissing
