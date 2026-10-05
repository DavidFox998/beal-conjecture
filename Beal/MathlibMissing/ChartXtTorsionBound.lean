import Beal.MathlibMissing.ChartInjective

/-!
Torsion bound for the `D₊(Xt)` cusp.

`Y = X·V` with `V = Yt/Xt` turns `Y² = X³` into `X²·(X + V²) = 0`.
That is the relation on this chart. It is not `X²·(1 + X·T³)`: the cubic
factor `1 + Y·S³` belongs to `D₊(Yt)`, where `S = Xt/Yt`.

`U = 2t/Xt` equals `X·(X + V²)`. It is nilpotent and nonzero, and
`X·U = 0`. Thus `X²·(X + V²) = X·U = 0`, while `X + V² ≠ 0`.

In `𝔽₂[a,b][X,V]` the same polynomial is `chartNormalRel = X³ + X²·V²`.
For every `i ≥ 3` and every `j`,
`X^i V^j + X^{i-1} V^{j+2}` lies in `(X²·(X + V²))`. The range
`i ≥ 3`, `j ≥ 3` is included. The step does not need `j ≥ 3`: the
relation supplies `V²`, and the `V`-degree rises by `2`. After it, the
representative has `X`-degree at most `2`,
`A(V) + X·B(V) + X²·C(V)`.

`X + V²` is that shape with `B = 1`. It lies outside
`(X²·(X + V²))` and stays nonzero in `D₊(Xt)`. Multiplication by `X²`
kills it. That does not set `A`, `B`, `C` to zero.
`chartOfModelTrue_injective` and `chart_Dplus_Xt_true_presentation`
are already proved; they are not restated here.
-/

namespace Beal.MathlibMissing

open Beal.General

set_option synthInstance.maxHeartbeats 400000
set_option maxHeartbeats 8000000

private lemma chartXt_add_self_eq_zero
    (a : chart_Dplus_Xt_ring valuationOneCurve 0 0) : a + a = 0 := by
  have h2 := chart_two_eq_zero valuationOneCurve 0 0
  calc
    a + a = (1 + 1) * a := by ring
    _ = (2 : chart_Dplus_Xt_ring valuationOneCurve 0 0) * a := by ring
    _ = (0 : chart_Dplus_Xt_ring valuationOneCurve 0 0) * a := by rw [h2]
    _ = 0 := by ring

private lemma chartXt_eq_of_add_eq_zero
    {a b : chart_Dplus_Xt_ring valuationOneCurve 0 0} (h : a + b = 0) : a = b := by
  have hb : b + b = 0 := chartXt_add_self_eq_zero b
  calc
    a = a + 0 := by ring
    _ = a + (b + b) := by rw [hb]
    _ = (a + b) + b := by ring
    _ = 0 + b := by rw [h]
    _ = b := by ring

/-- `X²·(X + V²) = 0` on `D₊(Xt)`, from `Y = X·V` and `Y² = X³`. -/
theorem chartXt_cusp_torsion_zero :
    chart_X valuationOneCurve 0 0 ^ 2 *
      (chart_X valuationOneCurve 0 0 +
        chart_Y_over_X valuationOneCurve 0 0 ^ 2) = 0 := by
  set x : chart_Dplus_Xt_ring valuationOneCurve 0 0 :=
    chart_X valuationOneCurve 0 0
  set v : chart_Dplus_Xt_ring valuationOneCurve 0 0 :=
    chart_Y_over_X valuationOneCurve 0 0
  set y : chart_Dplus_Xt_ring valuationOneCurve 0 0 :=
    chart_Y valuationOneCurve 0 0
  have hy : y = x * v := chart_Y_eq_chart_X_mul_Y_over_X valuationOneCurve 0 0
  have hsq : y ^ 2 = x ^ 3 := chart_Y_sq_eq_chart_X_cu_valuationOne
  have hv : x ^ 2 * v ^ 2 = x ^ 3 := by
    calc
      x ^ 2 * v ^ 2 = (x * v) ^ 2 := by ring
      _ = y ^ 2 := by rw [hy]
      _ = x ^ 3 := hsq
  have hsum : x ^ 3 + x ^ 2 * v ^ 2 = 0 := by
    rw [← hv]
    exact chartXt_add_self_eq_zero (x ^ 2 * v ^ 2)
  have hfac : x ^ 2 * (x + v ^ 2) = x ^ 3 + x ^ 2 * v ^ 2 := by ring
  rw [hfac, hsum]

/-- `U = X·(X + V²)` on `D₊(Xt)`. -/
theorem chartXt_U_eq_X_mul_X_add_Vsq :
    chart_two_over_X valuationOneCurve 0 0 =
      chart_X valuationOneCurve 0 0 *
        (chart_X valuationOneCurve 0 0 +
          chart_Y_over_X valuationOneCurve 0 0 ^ 2) := by
  have h := chartModelEval_kernelWitness
  rw [chartKernelWitness, map_add, map_add, map_pow, map_mul, map_pow] at h
  have hX : chartModelEval (MvPolynomial.X 0) = chart_X valuationOneCurve 0 0 := by
    simp [chartModelEval, MvPolynomial.eval₂Hom_X']
  have hU : chartModelEval (MvPolynomial.X 2) = chart_two_over_X valuationOneCurve 0 0 := by
    simp [chartModelEval, MvPolynomial.eval₂Hom_X']
  have hV : chartModelEval (MvPolynomial.X 3) = chart_Y_over_X valuationOneCurve 0 0 := by
    simp [chartModelEval, MvPolynomial.eval₂Hom_X']
  rw [hX, hU, hV] at h
  set u : chart_Dplus_Xt_ring valuationOneCurve 0 0 :=
    chart_two_over_X valuationOneCurve 0 0
  set x : chart_Dplus_Xt_ring valuationOneCurve 0 0 :=
    chart_X valuationOneCurve 0 0
  set v : chart_Dplus_Xt_ring valuationOneCurve 0 0 :=
    chart_Y_over_X valuationOneCurve 0 0
  have hsum : u + (x ^ 2 + x * v ^ 2) = 0 := by
    simpa [add_assoc] using h
  have hu : u = x ^ 2 + x * v ^ 2 := chartXt_eq_of_add_eq_zero hsum
  have hfac : x ^ 2 + x * v ^ 2 = x * (x + v ^ 2) := by ring
  rw [hu, hfac]

/-- `U` is nilpotent and nonzero, and `X·U = 0`. -/
theorem chartXt_U_nilpotent_ne_zero :
    chart_two_over_X valuationOneCurve 0 0 ^ 2 = 0 ∧
      chart_X valuationOneCurve 0 0 * chart_two_over_X valuationOneCurve 0 0 = 0 ∧
      chart_two_over_X valuationOneCurve 0 0 ≠ 0 :=
  ⟨chart_two_over_X_sq_zero,
    chart_X_mul_two_over_X_eq_zero valuationOneCurve 0 0,
    chart_two_over_X_ne_zero⟩

private lemma chartXt_powShift (i : ℕ) (hi : 3 ≤ i) : i - 1 = i - 3 + 2 := by
  have hcancel : i - 3 + 3 = i := Nat.sub_add_cancel hi
  calc
    i - 1 = (i - 3 + 3) - 1 := by rw [hcancel]
    _ = i - 3 + (3 - 1) := Nat.add_sub_assoc (by decide : (1 : ℕ) ≤ 3) (i - 3)
    _ = i - 3 + 2 := rfl

section XtCorner

open MvPolynomial

/-- For `i ≥ 3` and every `j`, `X^i V^j` and `X^{i-1} V^{j+2}` differ by
an element of `(X²·(X + V²))`. In any commutative ring the sum equals
`X^{i-3} V^j · chartNormalRel`. The `Yt` corner needs `j ≥ 3` as well,
because there the second factor is `S³` and the `S`-degree falls. Here
`j ≥ 3` is not required. -/
theorem chartXtCusp_corner (i j : ℕ) (hi : 3 ≤ i) :
    (X (0 : Fin 2)) ^ i * (X (1 : Fin 2)) ^ j +
        (X (0 : Fin 2)) ^ (i - 1) * (X (1 : Fin 2)) ^ (j + 2) ∈
      chartNormalIdeal := by
  set x : chartNormalPoly := X (0 : Fin 2)
  set v : chartNormalPoly := X (1 : Fin 2)
  have hxi : x ^ i = x ^ (i - 3) * x ^ 3 := by
    rw [← pow_add, Nat.sub_add_cancel hi]
  have hx1 : x ^ (i - 1) = x ^ (i - 3) * x ^ 2 := by
    rw [← pow_add, chartXt_powShift i hi]
  have hv : v ^ (j + 2) = v ^ j * v ^ 2 := by
    rw [pow_add]
  have hpoly :
      x ^ i * v ^ j + x ^ (i - 1) * v ^ (j + 2) =
        x ^ (i - 3) * v ^ j * chartNormalRel := by
    rw [chartNormalRel, hxi, hx1, hv]
    ring
  rw [hpoly]
  exact Ideal.mul_mem_left _ (x ^ (i - 3) * v ^ j)
    (Ideal.subset_span (Set.mem_singleton chartNormalRel))

/-- The same step on the range `i ≥ 3` and `j ≥ 3`. -/
theorem chartXtCusp_corner_both (i j : ℕ) (hi : 3 ≤ i) (_hj : 3 ≤ j) :
    (X (0 : Fin 2)) ^ i * (X (1 : Fin 2)) ^ j +
        (X (0 : Fin 2)) ^ (i - 1) * (X (1 : Fin 2)) ^ (j + 2) ∈
      chartNormalIdeal :=
  chartXtCusp_corner i j hi

/-- `X + V²`, the normal form with `B = 1`, is not in `(X²·(X + V²))`. -/
theorem chartXtCusp_X_add_Vsq_not_mem :
    (X (0 : Fin 2)) + (X (1 : Fin 2)) ^ 2 ∉ chartNormalIdeal := by
  intro h
  exact chartNormal_X_add_Vsq_ne_zero (Ideal.Quotient.eq_zero_iff_mem.mpr h)

end XtCorner

/-- `X²` kills `X + V²`, and `X + V²` stays nonzero in `D₊(Xt)`. -/
theorem chartXt_factor_kills_not_zero :
    chart_X valuationOneCurve 0 0 ^ 2 *
        (chart_X valuationOneCurve 0 0 +
          chart_Y_over_X valuationOneCurve 0 0 ^ 2) = 0 ∧
      chart_X valuationOneCurve 0 0 +
          chart_Y_over_X valuationOneCurve 0 0 ^ 2 ≠ 0 :=
  ⟨chartXt_cusp_torsion_zero, chart_X_add_V_sq_ne_zero⟩

#print axioms Beal.MathlibMissing.chartXt_cusp_torsion_zero
#print axioms Beal.MathlibMissing.chartXt_U_eq_X_mul_X_add_Vsq
#print axioms Beal.MathlibMissing.chartXt_U_nilpotent_ne_zero
#print axioms Beal.MathlibMissing.chartXtCusp_corner
#print axioms Beal.MathlibMissing.chartXtCusp_corner_both
#print axioms Beal.MathlibMissing.chartXtCusp_X_add_Vsq_not_mem
#print axioms Beal.MathlibMissing.chartXt_factor_kills_not_zero

end Beal.MathlibMissing
