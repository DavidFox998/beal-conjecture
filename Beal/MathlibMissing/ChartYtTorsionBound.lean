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
is therefore not the claim that every `Eᵢ` is zero.

If `N` lies in the kernel of `chartOfModelTrueY_fixed`, the same
reduction produces
`A(S) + Y·B(S) + Y²·C(S) + Y³·(E₀(Y) + S·E₁(Y) + S²·E₂(Y))`.
The high piece has `S`-degree at most `2`, so it is already
torsion-reduced. Its image in `D₊(Yt)` equals the image of the low
part, and `1 + Y·S³` annihilates that image, because the high piece is
divisible by `Y³` and `Y²·(1 + Y·S³) = 0`. That is a condition on
`Eᵢ`. It is not `Eᵢ = 0`: the same annihilation holds for `Y³`, which
stays outside the cusp ideal and stays nonzero.

Membership of a kernel class's `Eᵢ` summand in `(Y²·(1 + Y·S³))` is
not claimed. Injectivity and `chart_Dplus_Yt_true_presentation` are
not stated.
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

private lemma chartYt_add_self_eq_zero
    (a : chart_Dplus_Yt_ring valuationOneCurve 0 0) : a + a = 0 := by
  have h2 := chartYt_two_eq_zero
  calc
    a + a = (1 + 1) * a := by ring
    _ = (2 : chart_Dplus_Yt_ring valuationOneCurve 0 0) * a := by ring
    _ = (0 : chart_Dplus_Yt_ring valuationOneCurve 0 0) * a := by rw [h2]
    _ = 0 := by ring

private lemma chartYt_eq_of_add_eq_zero
    {a b : chart_Dplus_Yt_ring valuationOneCurve 0 0} (h : a + b = 0) : a = b := by
  have hb : b + b = 0 := chartYt_add_self_eq_zero b
  calc
    a = a + 0 := by ring
    _ = a + (b + b) := by rw [hb]
    _ = (a + b) + b := by ring
    _ = 0 + b := by rw [h]
    _ = b := by ring

private lemma modelYtTrueIdeal_elim_eq :
    (modelYtTrueIdeal_elim : modelYtChart_fixed →+* chartYtCuspRing) = closedYtToCusp := by
  rw [modelYtTrueIdeal_elim]
  exact RingEquiv.coe_ringHom_ofRingHom _ _ _ _

private lemma modelYtTrueIdeal_elim_symm_eq :
    (modelYtTrueIdeal_elim.symm : chartYtCuspRing →+* modelYtChart_fixed) =
      cuspYtToClosed := by
  rw [modelYtTrueIdeal_elim, RingEquiv.ofRingHom_symm]
  exact RingEquiv.coe_ringHom_ofRingHom _ _ _ _

section YtKernelTorsion

open MvPolynomial

private lemma chartYtCusp_degreeOf_var_pow (i : Fin 2) (n : ℕ) :
    degreeOf i ((X i : chartYtCuspPoly) ^ n) = n := by
  rw [degreeOf_eq_sup, support_X_pow, Finset.sup_singleton]
  exact Finsupp.single_eq_same

private lemma chartYtCusp_degreeOf_Y_pow_in_S (n : ℕ) :
    degreeOf (1 : Fin 2) ((X (0 : Fin 2) : chartYtCuspPoly) ^ n) = 0 := by
  rw [degreeOf_eq_sup, support_X_pow, Finset.sup_singleton]
  exact Finsupp.single_eq_of_ne (by decide : (0 : Fin 2) ≠ 1)

private lemma chartYtCusp_high_S_degree_le (E0 E1 E2 : chartYtCuspPoly)
    (h0 : degreeOf (1 : Fin 2) E0 = 0) (h1 : degreeOf (1 : Fin 2) E1 = 0)
    (h2 : degreeOf (1 : Fin 2) E2 = 0) :
    degreeOf (1 : Fin 2)
      (((X (0 : Fin 2) : chartYtCuspPoly) ^ 3) *
        (E0 + (X (1 : Fin 2)) * E1 + (X (1 : Fin 2)) ^ 2 * E2)) ≤ 2 := by
  let Yp : chartYtCuspPoly := X (0 : Fin 2)
  let Sp : chartYtCuspPoly := X (1 : Fin 2)
  have hY : degreeOf (1 : Fin 2) (Yp ^ 3) = 0 := chartYtCusp_degreeOf_Y_pow_in_S 3
  have hS : degreeOf (1 : Fin 2) Sp = 1 := by
    rw [degreeOf_X, if_pos rfl]
  have hS2 : degreeOf (1 : Fin 2) (Sp ^ 2) = 2 :=
    chartYtCusp_degreeOf_var_pow (1 : Fin 2) 2
  have hSE1 : degreeOf (1 : Fin 2) (Sp * E1) ≤ 1 := by
    calc
      degreeOf (1 : Fin 2) (Sp * E1) ≤
          degreeOf (1 : Fin 2) Sp + degreeOf (1 : Fin 2) E1 :=
        degreeOf_mul_le _ _ _
      _ = 1 + 0 := by rw [hS, h1]
      _ = 1 := Nat.add_zero 1
  have hS2E : degreeOf (1 : Fin 2) (Sp ^ 2 * E2) ≤ 2 := by
    calc
      degreeOf (1 : Fin 2) (Sp ^ 2 * E2) ≤
          degreeOf (1 : Fin 2) (Sp ^ 2) + degreeOf (1 : Fin 2) E2 :=
        degreeOf_mul_le _ _ _
      _ = 2 + 0 := by rw [hS2, h2]
      _ = 2 := Nat.add_zero 2
  have hlow : degreeOf (1 : Fin 2) (E0 + Sp * E1) ≤ 1 := by
    apply le_trans (degreeOf_add_le (1 : Fin 2) E0 (Sp * E1))
    rw [h0]
    exact max_le (Nat.zero_le _) hSE1
  have hpoly : degreeOf (1 : Fin 2) (E0 + Sp * E1 + Sp ^ 2 * E2) ≤ 2 := by
    apply le_trans (degreeOf_add_le (1 : Fin 2) (E0 + Sp * E1) (Sp ^ 2 * E2))
    exact max_le (le_trans hlow (Nat.le_succ 1)) hS2E
  calc
    degreeOf (1 : Fin 2) (Yp ^ 3 * (E0 + Sp * E1 + Sp ^ 2 * E2)) ≤
        degreeOf (1 : Fin 2) (Yp ^ 3) +
          degreeOf (1 : Fin 2) (E0 + Sp * E1 + Sp ^ 2 * E2) :=
      degreeOf_mul_le _ _ _
    _ ≤ 0 + 2 := Nat.add_le_add (le_of_eq hY) hpoly
    _ = 2 := Nat.zero_add 2

/-- A kernel class, reduced modulo `Y²·(1 + Y·S³)`, leaves
`Y³·(E₀ + S·E₁ + S²·E₂)` of `S`-degree at most `2`. The corner step
does not apply. The chart images of that high piece and of
`A(S) + Y·B(S) + Y²·C(S)` agree, and `1 + Y·S³` annihilates the high
image. This constrains `Eᵢ`. It does not set `Eᵢ` to zero, and it does
not put the high piece in the cusp ideal. -/
theorem chartYtCusp_kernel_torsion_condition (N : modelYtChart_fixed)
    (hN : chartOfModelTrueY_fixed N = 0) :
    ∃ A B C E0 E1 E2 : chartYtCuspPoly,
      degreeOf (0 : Fin 2) A = 0 ∧ degreeOf (0 : Fin 2) B = 0 ∧
        degreeOf (0 : Fin 2) C = 0 ∧ degreeOf (1 : Fin 2) E0 = 0 ∧
        degreeOf (1 : Fin 2) E1 = 0 ∧ degreeOf (1 : Fin 2) E2 = 0 ∧
        closedYtToCusp N =
          Ideal.Quotient.mk chartYtCuspIdeal
            (A + X 0 * B + (X 0) ^ 2 * C +
              (X 0) ^ 3 * (E0 + X 1 * E1 + (X 1) ^ 2 * E2)) ∧
        degreeOf (1 : Fin 2)
            ((X 0) ^ 3 * (E0 + X 1 * E1 + (X 1) ^ 2 * E2)) ≤ 2 ∧
        chartOfModelTrueY_fixed
            (cuspYtToClosed (Ideal.Quotient.mk chartYtCuspIdeal
              ((X 0) ^ 3 * (E0 + X 1 * E1 + (X 1) ^ 2 * E2)))) =
          chartOfModelTrueY_fixed
            (cuspYtToClosed (Ideal.Quotient.mk chartYtCuspIdeal
              (A + X 0 * B + (X 0) ^ 2 * C))) ∧
        (1 + chartYt_Y valuationOneCurve 0 0 *
            chartYt_X_over_Y valuationOneCurve 0 0 ^ 3) *
          chartOfModelTrueY_fixed
            (cuspYtToClosed (Ideal.Quotient.mk chartYtCuspIdeal
              ((X 0) ^ 3 * (E0 + X 1 * E1 + (X 1) ^ 2 * E2)))) = 0 := by
  obtain ⟨p, hp⟩ := Ideal.Quotient.mk_surjective (closedYtToCusp N)
  obtain ⟨A, B, C, E0, E1, E2, hA, hB, hC, hE0, hE1, hE2, hmem⟩ :=
    chartYtCusp_normalForm p
  let low : chartYtCuspPoly := A + X 0 * B + (X 0) ^ 2 * C
  let high : chartYtCuspPoly :=
    (X 0) ^ 3 * (E0 + X 1 * E1 + (X 1) ^ 2 * E2)
  let form : chartYtCuspPoly := low + high
  have hclass : closedYtToCusp N = Ideal.Quotient.mk chartYtCuspIdeal form := by
    rw [← hp, Ideal.Quotient.eq]
    simpa [form, low, high] using hmem
  have hback : cuspYtToClosed (closedYtToCusp N) = N := by
    have happ_hom := RingHom.congr_fun modelYtTrueIdeal_elim_eq N
    have hsym_hom :=
      RingHom.congr_fun modelYtTrueIdeal_elim_symm_eq (closedYtToCusp N)
    have happ : modelYtTrueIdeal_elim N = closedYtToCusp N := by
      rw [← happ_hom]; rfl
    have hsym : modelYtTrueIdeal_elim.symm (closedYtToCusp N) =
        cuspYtToClosed (closedYtToCusp N) := by
      rw [← hsym_hom]; rfl
    calc
      cuspYtToClosed (closedYtToCusp N) =
          modelYtTrueIdeal_elim.symm (closedYtToCusp N) := hsym.symm
      _ = modelYtTrueIdeal_elim.symm (modelYtTrueIdeal_elim N) := by rw [happ]
      _ = N := modelYtTrueIdeal_elim.symm_apply_apply N
  have hform0 : chartOfModelTrueY_fixed
      (cuspYtToClosed (Ideal.Quotient.mk chartYtCuspIdeal form)) = 0 := by
    rw [← hclass, hback, hN]
  let φ : chartYtCuspPoly →+* chart_Dplus_Yt_ring valuationOneCurve 0 0 :=
    chartOfModelTrueY_fixed.comp
      (cuspYtToClosed.comp (Ideal.Quotient.mk chartYtCuspIdeal))
  have hphi_sum : φ low + φ high = 0 := by
    rw [← map_add φ low high]
    exact hform0
  have himg : φ high = φ low := (chartYt_eq_of_add_eq_zero hphi_sum).symm
  have hYcoord : φ (X (0 : Fin 2)) = chartYt_Y valuationOneCurve 0 0 := by
    have hmon := chartOfModelTrueY_fixed_monomial 1 0
    rw [pow_one, pow_zero, mul_one] at hmon
    have hrhs :
        (chartYt_Y valuationOneCurve 0 0) ^ 1 *
          (chartYt_X_over_Y valuationOneCurve 0 0) ^ 0 =
        chartYt_Y valuationOneCurve 0 0 := by
      ring
    rw [hrhs] at hmon
    change chartOfModelTrueY_fixed
        (cuspYtToClosed (Ideal.Quotient.mk chartYtCuspIdeal (X (0 : Fin 2)))) =
      chartYt_Y valuationOneCurve 0 0
    exact hmon
  have hkill : (1 + chartYt_Y valuationOneCurve 0 0 *
      chartYt_X_over_Y valuationOneCurve 0 0 ^ 3) * φ high = 0 := by
    have hfac : φ high =
        chartYt_Y valuationOneCurve 0 0 ^ 3 *
          φ (E0 + X 1 * E1 + (X 1) ^ 2 * E2) := by
      rw [map_mul, map_pow, hYcoord]
    rw [hfac]
    set y : chart_Dplus_Yt_ring valuationOneCurve 0 0 :=
      chartYt_Y valuationOneCurve 0 0
    set s : chart_Dplus_Yt_ring valuationOneCurve 0 0 :=
      chartYt_X_over_Y valuationOneCurve 0 0
    set z : chart_Dplus_Yt_ring valuationOneCurve 0 0 :=
      φ (E0 + X 1 * E1 + (X 1) ^ 2 * E2)
    have hcusp : y ^ 2 * (1 + y * s ^ 3) = 0 := chartYt_cusp_torsion_zero
    calc
      (1 + y * s ^ 3) * (y ^ 3 * z) =
          (y ^ 2 * (1 + y * s ^ 3)) * (y * z) := by ring
      _ = 0 * (y * z) := by rw [hcusp]
      _ = 0 := by ring
  refine ⟨A, B, C, E0, E1, E2, hA, hB, hC, hE0, hE1, hE2, hclass, ?_, ?_, ?_⟩
  · exact chartYtCusp_high_S_degree_le E0 E1 E2 hE0 hE1 hE2
  · exact himg
  · exact hkill

/-- `E₀ = 1`, `E₁ = E₂ = 0` is the reduced piece `Y³`. The factor
`1 + Y·S³` kills it, and neither the cusp ideal nor `D₊(Yt)` does.
The kernel condition above is this annihilation, not `Eᵢ = 0`. -/
theorem chartYtCusp_Y_cube_factor_kills_not_zero :
    (1 + chartYt_Y valuationOneCurve 0 0 *
        chartYt_X_over_Y valuationOneCurve 0 0 ^ 3) *
      chartYt_Y valuationOneCurve 0 0 ^ 3 = 0 ∧
    chartYt_Y valuationOneCurve 0 0 ^ 3 ≠ 0 ∧
    (X (0 : Fin 2)) ^ 3 ∉ chartYtCuspIdeal := by
  refine ⟨?_, chartYt_Y_cube_ne_zero, chartYtCusp_Y_cube_not_mem⟩
  set y : chart_Dplus_Yt_ring valuationOneCurve 0 0 :=
    chartYt_Y valuationOneCurve 0 0
  set s : chart_Dplus_Yt_ring valuationOneCurve 0 0 :=
    chartYt_X_over_Y valuationOneCurve 0 0
  have hcusp : y ^ 2 * (1 + y * s ^ 3) = 0 := chartYt_cusp_torsion_zero
  calc
    (1 + y * s ^ 3) * y ^ 3 = y * (y ^ 2 * (1 + y * s ^ 3)) := by ring
    _ = y * 0 := by rw [hcusp]
    _ = 0 := by ring

end YtKernelTorsion

#print axioms Beal.MathlibMissing.chartYt_cusp_torsion_zero
#print axioms Beal.MathlibMissing.chartYt_cusp_torsion_eq_Y_mul_T
#print axioms Beal.MathlibMissing.chartYt_T_nilpotent_ne_zero
#print axioms Beal.MathlibMissing.chartYtCusp_high_corner_torsion
#print axioms Beal.MathlibMissing.chartYtCusp_Y_cube_not_mem
#print axioms Beal.MathlibMissing.chartYt_Y_cube_ne_zero
#print axioms Beal.MathlibMissing.chartYtCusp_kernel_torsion_condition
#print axioms Beal.MathlibMissing.chartYtCusp_Y_cube_factor_kills_not_zero

end Beal.MathlibMissing
