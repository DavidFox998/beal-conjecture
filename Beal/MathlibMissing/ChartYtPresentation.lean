import Beal.MathlibMissing.ChartOverlapTorsion

/-!
`D₊(Yt)` as the image of the cusp ring, with torsion bound `1 + Y·S³`.

`chartOfCuspY` is `chartOfModelTrueY_fixed` after the elimination
`𝔽₂[a,b][X,Y,S,T] / modelYtTrueIdeal_fixed ≃ 𝔽₂[a,b][Y,S] / (Y²·(1 − Y·S³))`.
It is a surjection onto `D₊(Yt)`. It is not claimed to be injective, and
it is not a ring equivalence. `chart_Dplus_Yt_true_presentation` stays
unstated. `1 + Y·S³` is not added to the cusp ideal.

`chartYtCusp_normalForm` writes every class as
`A(S) + Y·B(S) + Y²·C(S) + Y³·(E₀(Y) + S·E₁(Y) + S²·E₂(Y))`.
On `D₊(Yt)`, `Y²·(1 + Y·S³) = 0`, so `1 + Y·S³` annihilates every high
piece `Y³·F`. The `Eᵢ` occur only as the coefficients of such an `F`.
The same annihilation holds for `F = 1`, and `Y³` lies outside the cusp
ideal and stays nonzero in `D₊(Yt)`. The bound is not `Eᵢ = 0`.

`chartYtCusp_kernel_torsion_condition` is the special case of a kernel
class: the chart images of the high piece and of the low part agree, and
the high image is annihilated. Membership of that `Eᵢ` summand in the
cusp ideal is not claimed.

On the overlap `D₊(Yt)[S⁻¹]`, `1 + Y·S³` and `X + V²` have the same
annihilator, and `X·(X + V²) = V·T ≠ 0`. The bound persists there.
-/

namespace Beal.MathlibMissing

open Beal.General

set_option synthInstance.maxHeartbeats 400000
set_option maxHeartbeats 8000000

private lemma modelYtTrueIdeal_elim_eq :
    (modelYtTrueIdeal_elim : modelYtChart_fixed →+* chartYtCuspRing) = closedYtToCusp := by
  rw [modelYtTrueIdeal_elim]
  exact RingEquiv.coe_ringHom_ofRingHom _ _ _ _

private lemma modelYtTrueIdeal_elim_symm_eq :
    (modelYtTrueIdeal_elim.symm : chartYtCuspRing →+* modelYtChart_fixed) =
      cuspYtToClosed := by
  rw [modelYtTrueIdeal_elim, RingEquiv.ofRingHom_symm]
  exact RingEquiv.coe_ringHom_ofRingHom _ _ _ _

/-- The cusp ring surjects onto `D₊(Yt)` by eliminating `X` and `T` and
then applying `chartOfModelTrueY_fixed`. -/
noncomputable def chartOfCuspY :
    chartYtCuspRing →+* chart_Dplus_Yt_ring valuationOneCurve 0 0 :=
  chartOfModelTrueY_fixed.comp cuspYtToClosed

/-- Every class of `D₊(Yt)` is the image of a class of
`𝔽₂[a,b][Y,S] / (Y²·(1 − Y·S³))`. -/
theorem chartOfCuspY_surjective : Function.Surjective chartOfCuspY := by
  intro z
  obtain ⟨N, hN⟩ := chartOfModelTrueY_fixed_surjective z
  refine ⟨closedYtToCusp N, ?_⟩
  have happ_hom := RingHom.congr_fun modelYtTrueIdeal_elim_eq N
  have hsym_hom :=
    RingHom.congr_fun modelYtTrueIdeal_elim_symm_eq (closedYtToCusp N)
  have happ : modelYtTrueIdeal_elim N = closedYtToCusp N := by
    rw [← happ_hom]; rfl
  have hsym : modelYtTrueIdeal_elim.symm (closedYtToCusp N) =
      cuspYtToClosed (closedYtToCusp N) := by
    rw [← hsym_hom]; rfl
  have hback : cuspYtToClosed (closedYtToCusp N) = N := by
    calc
      cuspYtToClosed (closedYtToCusp N) =
          modelYtTrueIdeal_elim.symm (closedYtToCusp N) := hsym.symm
      _ = modelYtTrueIdeal_elim.symm (modelYtTrueIdeal_elim N) := by rw [happ]
      _ = N := modelYtTrueIdeal_elim.symm_apply_apply N
  rw [chartOfCuspY, RingHom.comp_apply, hback]
  exact hN

/-- The cusp coordinate `Y` is sent to the chart coordinate `Y`. -/
theorem chartOfCuspY_Y :
    chartOfCuspY
        (Ideal.Quotient.mk chartYtCuspIdeal (MvPolynomial.X (0 : Fin 2))) =
      chartYt_Y valuationOneCurve 0 0 := by
  rw [chartOfCuspY, RingHom.comp_apply]
  have hmon := chartOfModelTrueY_fixed_monomial 1 0
  rw [pow_one, pow_zero, mul_one] at hmon
  have hrhs :
      (chartYt_Y valuationOneCurve 0 0) ^ 1 *
        (chartYt_X_over_Y valuationOneCurve 0 0) ^ 0 =
      chartYt_Y valuationOneCurve 0 0 := by
    ring
  rw [hrhs] at hmon
  exact hmon

/-- `1 + Y·S³` annihilates the image of every high piece `Y³·F`.
The factor is divisible by `Y³` and `Y²·(1 + Y·S³) = 0` on `D₊(Yt)`.
This holds for every `F`, not only for a kernel class. -/
theorem chartYt_high_piece_annihilator (F : chartYtCuspPoly) :
    (1 + chartYt_Y valuationOneCurve 0 0 *
        chartYt_X_over_Y valuationOneCurve 0 0 ^ 3) *
      chartOfCuspY
        (Ideal.Quotient.mk chartYtCuspIdeal
          ((MvPolynomial.X (0 : Fin 2)) ^ 3 * F)) = 0 := by
  have hsplit :
      Ideal.Quotient.mk chartYtCuspIdeal
          ((MvPolynomial.X (0 : Fin 2)) ^ 3 * F) =
        (Ideal.Quotient.mk chartYtCuspIdeal (MvPolynomial.X (0 : Fin 2))) ^ 3 *
          Ideal.Quotient.mk chartYtCuspIdeal F := by
    rw [map_mul, map_pow]
  rw [hsplit, map_mul, map_pow, chartOfCuspY_Y]
  set y : chart_Dplus_Yt_ring valuationOneCurve 0 0 :=
    chartYt_Y valuationOneCurve 0 0
  set s : chart_Dplus_Yt_ring valuationOneCurve 0 0 :=
    chartYt_X_over_Y valuationOneCurve 0 0
  set z : chart_Dplus_Yt_ring valuationOneCurve 0 0 :=
    chartOfCuspY (Ideal.Quotient.mk chartYtCuspIdeal F)
  have hcusp : y ^ 2 * (1 + y * s ^ 3) = 0 := chartYt_cusp_torsion_zero
  calc
    (1 + y * s ^ 3) * (y ^ 3 * z) =
        (y ^ 2 * (1 + y * s ^ 3)) * (y * z) := by ring
    _ = 0 * (y * z) := by rw [hcusp]
    _ = 0 := by ring

/-- `D₊(Yt)` is the image of the cusp ring. `1 + Y·S³` annihilates every
`Y³·F`, and `Y³` itself is a nonzero class outside the cusp ideal.
The bound on `Eᵢ` is this annihilation. It is not `Eᵢ = 0`. -/
theorem chart_Dplus_Yt_torsion_presentation :
    Function.Surjective chartOfCuspY ∧
      (∀ F : chartYtCuspPoly,
        (1 + chartYt_Y valuationOneCurve 0 0 *
            chartYt_X_over_Y valuationOneCurve 0 0 ^ 3) *
          chartOfCuspY
            (Ideal.Quotient.mk chartYtCuspIdeal
              ((MvPolynomial.X (0 : Fin 2)) ^ 3 * F)) = 0) ∧
      chartYt_Y valuationOneCurve 0 0 ^ 3 ≠ 0 ∧
      (MvPolynomial.X (0 : Fin 2)) ^ 3 ∉ chartYtCuspIdeal :=
  ⟨chartOfCuspY_surjective, chartYt_high_piece_annihilator,
    chartYt_Y_cube_ne_zero, chartYtCusp_Y_cube_not_mem⟩

/-- After inverting `S`, the annihilator of `1 + Y·S³` is the annihilator
of `X + V²`, and the common nilpotent `X·(X + V²)` stays nonzero. -/
theorem chartYt_bound_persists_on_overlap :
    (Ideal.span ({1 + overlapY * overlapS ^ 3} : Set chartOverlapRing)).annihilator =
      (Ideal.span ({overlapX + overlapV ^ 2} : Set chartOverlapRing)).annihilator ∧
      overlapX * (overlapX + overlapV ^ 2) ≠ 0 :=
  ⟨chartOverlap_same_annihilator, chartOverlap_nilpotent_ne_zero⟩

#print axioms Beal.MathlibMissing.chartOfCuspY_surjective
#print axioms Beal.MathlibMissing.chartOfCuspY_Y
#print axioms Beal.MathlibMissing.chartYt_high_piece_annihilator
#print axioms Beal.MathlibMissing.chart_Dplus_Yt_torsion_presentation
#print axioms Beal.MathlibMissing.chartYt_bound_persists_on_overlap

end Beal.MathlibMissing
