import Beal.MathlibMissing.CentrePower
import Beal.MathlibMissing.ChartTrueIdeal

/-!
The class `X + V²` on `D₊(Xt)`.

Clearing the denominator `(Xt)²` produces the Rees numerator
`2·(X³ − 1) t²` on `Y² = X³ − 2`. A further factor `(Xt)^k` lies in the
scalar ideal `(2)` only if `X^k · (X³ − 1) ∈ I^{k+2}`. That membership
fails: `I^{k+2} ≤ I^{k+1}` and `centre_X_pow_mul_X_cube_sub_one_not_mem`
says `X^k · (X³ − 1) ∉ I^{k+1}`.

This is one normal form. `chartOfModelTrue_injective` stays open: an
arbitrary `A(V) + X·B(V) + X²·C(V)` is not yet reduced to a Rees numerator
in `2 · I^{d+m}`.
-/

namespace Beal.MathlibMissing

open Beal.General Polynomial

lemma surfaceNumeral_X_pow_mul_X_cube_sub_one (m : ℕ) :
    (surfaceNumeralX valuationOneCurve 0) ^ m *
        ((surfaceNumeralX valuationOneCurve 0) ^ 3 - 1) =
      Ideal.Quotient.mk (Ideal.span {surfacePolynomial valuationOneCurve})
        (centreNormalPoly (X ^ m * (X ^ 3 - 1)) 0) := by
  have hx : surfaceNumeralX valuationOneCurve 0 =
      Ideal.Quotient.mk (Ideal.span {surfacePolynomial valuationOneCurve})
        (MvPolynomial.X (0 : Fin 2)) := by
    simp [surfaceNumeralX, map_zero, sub_zero]
  rw [hx]
  let φ := Ideal.Quotient.mk (Ideal.span {surfacePolynomial valuationOneCurve})
  rw [← map_pow φ, ← map_pow φ, ← map_one φ, ← map_sub φ, ← map_mul φ]
  apply congrArg φ
  apply surfaceToCentrePoly.injective
  rw [map_mul, map_sub, map_pow, map_pow, map_one, surfaceToCentrePoly_X,
    surfaceToCentrePoly_normal]
  rw [← map_one C, ← map_pow C, ← map_pow C, ← map_sub C, ← map_mul C]
  simp [centreOfNormal, map_zero, zero_mul, add_zero]

/-- `X^m · (X³ − 1) ∉ I^{m+1}` as a class in the surface ring. -/
lemma surface_X_pow_mul_X_cube_sub_one_not_mem (m : ℕ) :
    (surfaceNumeralX valuationOneCurve 0) ^ m *
        ((surfaceNumeralX valuationOneCurve 0) ^ 3 - 1) ∉
      numeralCentreIdeal valuationOneCurve 0 0 ^ (m + 1) := by
  rw [surfaceNumeral_X_pow_mul_X_cube_sub_one]
  exact centre_X_pow_mul_X_cube_sub_one_not_mem m

/-- The same class lies outside `I^{m+2}`, since `I^{m+2} ≤ I^{m+1}`. -/
lemma surface_X_pow_mul_X_cube_sub_one_not_mem_sq (m : ℕ) :
    (surfaceNumeralX valuationOneCurve 0) ^ m *
        ((surfaceNumeralX valuationOneCurve 0) ^ 3 - 1) ∉
      numeralCentreIdeal valuationOneCurve 0 0 ^ (m + 2) := by
  intro h
  exact surface_X_pow_mul_X_cube_sub_one_not_mem m
    (Ideal.pow_le_pow_right (Nat.le_succ (m + 1)) h)

/-- `(Xt)^k · (C(X)·(Xt)² + (Yt)²)` is not in the scalar ideal `(2)`.
The polynomial is `2·X^k·(X³ − 1) t^{k+2}`, and dividing by `2` would put
`X^k·(X³ − 1)` in `I^{k+2}`. -/
lemma valuationOne_X_add_Vsq_rees_not_mem (k : ℕ) :
    (numeralReesXT valuationOneCurve 0 0) ^ k *
        (numeralReesConst valuationOneCurve 0 0 (surfaceNumeralX valuationOneCurve 0) *
            (numeralReesXT valuationOneCurve 0 0) ^ 2 +
          (numeralReesYT valuationOneCurve 0 0) ^ 2) ∉
      numeralReesSpecialIdeal valuationOneCurve 0 0 := by
  intro hmem
  let I := numeralCentreIdeal valuationOneCurve 0 0
  let R := surfaceRing valuationOneCurve
  let x := surfaceNumeralX valuationOneCurve 0
  let y := surfaceNumeralY valuationOneCurve 0
  have hy : y ^ 2 = x ^ 3 - (2 : R) := by
    have h := sub_eq_iff_eq_add.mp valuationOne_node_Ysq_sub_Xcu
    rw [add_comm] at h
    simpa [sub_eq_add_neg] using h
  have hcoef : x ^ 3 + y ^ 2 = (2 : R) * (x ^ 3 - 1) := by
    rw [hy]
    ring
  have hpoly :
      ((numeralReesXT valuationOneCurve 0 0 : reesAlgebra I) : Polynomial R) ^ k *
        (((numeralReesConst valuationOneCurve 0 0 x : reesAlgebra I) : Polynomial R) *
            ((numeralReesXT valuationOneCurve 0 0 : reesAlgebra I) : Polynomial R) ^ 2 +
          ((numeralReesYT valuationOneCurve 0 0 : reesAlgebra I) : Polynomial R) ^ 2) =
        Polynomial.monomial (k + 2) ((2 : R) * (x ^ k * (x ^ 3 - 1))) := by
    have hmon {n : ℕ} (r : R) (hr : r ∈ I ^ n) :
        ((centreReesMonomial I n ⟨r, hr⟩ : reesAlgebra I) : Polynomial R) =
          Polynomial.monomial n r := rfl
    simp only [numeralReesConst, numeralReesXT, numeralReesYT]
    repeat rw [hmon]
    have hxmk :
        (Ideal.Quotient.mk (Ideal.span {surfacePolynomial valuationOneCurve})
          (MvPolynomial.X (0 : Fin 2) -
            MvPolynomial.C (MvPolynomial.C ((0 : ℕ) : ℤ_[2])))) = x := rfl
    have hymk :
        (Ideal.Quotient.mk (Ideal.span {surfacePolynomial valuationOneCurve})
          (MvPolynomial.X (1 : Fin 2) -
            MvPolynomial.C (MvPolynomial.C ((0 : ℕ) : ℤ_[2])))) = y := rfl
    rw [hxmk, hymk, Polynomial.monomial_pow, one_mul]
    rw [pow_two (Polynomial.monomial 1 x), pow_two (Polynomial.monomial 1 y)]
    rw [Polynomial.monomial_mul_monomial, Polynomial.monomial_mul_monomial,
      Polynomial.monomial_mul_monomial]
    simp only [zero_add]
    rw [show (1 + 1 : ℕ) = 2 by decide]
    rw [← Polynomial.monomial_add, Polynomial.monomial_mul_monomial]
    congr 1
    calc
      x ^ k * (x * (x * x) + y * y) = x ^ k * (x ^ 3 + y ^ 2) := by ring
      _ = x ^ k * ((2 : R) * (x ^ 3 - 1)) := by rw [hcoef]
      _ = (2 : R) * (x ^ k * (x ^ 3 - 1)) := by ring
  obtain ⟨p, hp⟩ := Ideal.mem_span_singleton'.mp hmem
  have hcoe := congrArg (fun z : reesAlgebra I => (z : Polynomial R)) hp
  dsimp at hcoe
  rw [hpoly] at hcoe
  have hcoeff := congrArg (fun q : Polynomial R => q.coeff (k + 2)) hcoe
  dsimp at hcoeff
  rw [Polynomial.coeff_mul_C, Polynomial.coeff_monomial, if_pos rfl] at hcoeff
  have hcancel : (p : Polynomial R).coeff (k + 2) = x ^ k * (x ^ 3 - 1) := by
    refine sub_eq_zero.mp ?_
    refine valuationOne_two_regular _ ?_
    rw [mul_sub (2 : R) ((p : Polynomial R).coeff (k + 2)) (x ^ k * (x ^ 3 - 1))]
    rw [mul_comm (2 : R) ((p : Polynomial R).coeff (k + 2)), hcoeff, sub_self]
  have hI : (p : Polynomial R).coeff (k + 2) ∈ I ^ (k + 2) := p.property (k + 2)
  have hbad : x ^ k * (x ^ 3 - 1) ∈ I ^ (k + 1) :=
    Ideal.pow_le_pow_right (Nat.le_succ (k + 1)) (hcancel ▸ hI)
  exact surface_X_pow_mul_X_cube_sub_one_not_mem k hbad

set_option maxHeartbeats 8000000 in
set_option synthInstance.maxHeartbeats 400000 in
/-- `chart_X + (Yt / Xt)² ≠ 0` on `D₊(Xt)` at `(0, 0)`. -/
theorem chart_X_add_V_sq_ne_zero :
    chart_X valuationOneCurve 0 0 +
      (chart_Y_over_X valuationOneCurve 0 0) ^ 2 ≠ 0 := by
  intro hzero
  let I := numeralCentreIdeal valuationOneCurve 0 0
  letI : GradedAlgebra (centreReesComponent I) := centreReesGrading I
  let J := numeralReesSpecialIdeal valuationOneCurve 0 0
  have hJ : J.IsHomogeneous (centreReesComponent I) :=
    numeralReesSpecialIdeal_isHomogeneous valuationOneCurve 0 0
  let ℬ := homogeneousQuotientComponent (centreReesComponent I) J
  letI : GradedAlgebra ℬ := homogeneousQuotientGrading (centreReesComponent I) J hJ
  let Q := (reesAlgebra I) ⧸ J
  let f : Q := Ideal.Quotient.mk J (numeralReesXT valuationOneCurve 0 0)
  let nX : Q := Ideal.Quotient.mk J
    (numeralReesConst valuationOneCurve 0 0 (surfaceNumeralX valuationOneCurve 0))
  let nY : Q := Ideal.Quotient.mk J (numeralReesYT valuationOneCurve 0 0)
  have hval := congrArg (HomogeneousLocalization.val (x := Submonoid.powers f)) hzero
  erw [HomogeneousLocalization.val_add, HomogeneousLocalization.val_pow,
    HomogeneousLocalization.val_zero] at hval
  simp only [chart_X, chart_Y_over_X, HomogeneousLocalization.val_mk] at hval
  rw [Localization.mk_pow] at hval
  let d1 : Submonoid.powers f := ⟨(1 : Q), ⟨0, pow_zero f⟩⟩
  let df : Submonoid.powers f := ⟨f, ⟨1, pow_one f⟩⟩
  let d : Submonoid.powers f := ⟨f * f, ⟨2, pow_two f⟩⟩
  have hdf : df ^ 2 = d := by
    apply Subtype.ext
    simp [df, d, pow_two]
  have hdenX :
      (⟨(1 : Q), ⟨0, pow_zero f⟩⟩ : Submonoid.powers f) = d1 := rfl
  have hdenF :
      (⟨f, ⟨1, pow_one f⟩⟩ : Submonoid.powers f) = df := rfl
  rw [hdenX, hdenF, hdf] at hval
  have hX : Localization.mk nX d1 = Localization.mk (nX * (f * f)) d := by
    rw [Localization.mk_eq_mk_iff]
    refine Localization.r_iff_exists.mpr ⟨1, ?_⟩
    dsimp [d, d1]
    rw [one_mul ((f * f) * nX), one_mul ((1 : Q) * (nX * (f * f))), one_mul (nX * (f * f))]
    exact mul_comm (f * f) nX
  rw [hX] at hval
  have hsum : Localization.mk (nX * (f * f) + nY ^ 2) d = 0 := by
    change (nX * (f * f)) /ₒ d + (nY ^ 2) /ₒ d = 0 at hval
    rwa [OreLocalization.add_oreDiv] at hval
  rw [← Localization.mk_zero (1 : Submonoid.powers f), Localization.mk_eq_mk_iff] at hsum
  obtain ⟨c, hc⟩ := Localization.r_iff_exists.mp hsum
  have hc0 : (c : Q) * (nX * (f * f) + nY ^ 2) = 0 := by
    dsimp at hc
    rw [mul_zero (f * f), mul_zero, one_mul] at hc
    exact hc
  obtain ⟨n, hn⟩ := (Submonoid.mem_powers_iff (c : Q) f).mp c.property
  have hkill : f ^ n * (nX * (f * f) + nY ^ 2) = 0 := by
    rw [hn]
    exact hc0
  have hpre :
      (numeralReesXT valuationOneCurve 0 0) ^ n *
          (numeralReesConst valuationOneCurve 0 0 (surfaceNumeralX valuationOneCurve 0) *
              (numeralReesXT valuationOneCurve 0 0) ^ 2 +
            (numeralReesYT valuationOneCurve 0 0) ^ 2) ∈ J := by
    rw [← Ideal.Quotient.eq_zero_iff_mem, map_mul, map_pow, map_add, map_mul, map_pow,
      map_pow (Ideal.Quotient.mk J) (numeralReesYT valuationOneCurve 0 0) 2]
    have hf : Ideal.Quotient.mk J (numeralReesXT valuationOneCurve 0 0) = f := rfl
    have hnx : Ideal.Quotient.mk J
        (numeralReesConst valuationOneCurve 0 0 (surfaceNumeralX valuationOneCurve 0)) = nX := rfl
    have hny : Ideal.Quotient.mk J (numeralReesYT valuationOneCurve 0 0) = nY := rfl
    rw [hf, hnx, hny, pow_two f]
    exact hkill
  exact valuationOne_X_add_Vsq_rees_not_mem n hpre

/-- `chartModelEval` sends the normal-form polynomial `X + V²` to
`chart_X + (Yt / Xt)²`. -/
theorem chartModelEval_normal_X_add_Vsq :
    chartModelEval (normalPolyToModel
        (MvPolynomial.X (0 : Fin 2) + (MvPolynomial.X (1 : Fin 2)) ^ 2)) =
      chart_X valuationOneCurve 0 0 +
        (chart_Y_over_X valuationOneCurve 0 0) ^ 2 := by
  rw [normalPolyToModel, map_add, map_pow, MvPolynomial.eval₂Hom_X',
    MvPolynomial.eval₂Hom_X', if_pos rfl, if_neg (by decide : (1 : Fin 2) ≠ 0)]
  simp only [map_add, map_pow, chartModelEval, MvPolynomial.eval₂Hom_X',
    if_pos (rfl : (0 : Fin 4) = 0), if_true,
    if_neg (by decide : (3 : Fin 4) ≠ 0),
    if_neg (by decide : (3 : Fin 4) ≠ 1),
    if_neg (by decide : (3 : Fin 4) ≠ 2)]

/-- The normal-form class `X + V²` does not die in `D₊(Xt)`. -/
theorem chartOfModelTrue_normal_X_add_Vsq_ne_zero :
    chartOfModelTrue (Ideal.Quotient.mk chartTrueIdeal
        (normalPolyToModel
          (MvPolynomial.X (0 : Fin 2) + (MvPolynomial.X (1 : Fin 2)) ^ 2))) ≠ 0 := by
  intro h
  rw [chartOfModelTrue, Ideal.Quotient.lift_mk, chartModelEval_normal_X_add_Vsq] at h
  exact chart_X_add_V_sq_ne_zero h

#print axioms Beal.MathlibMissing.chart_X_add_V_sq_ne_zero
#print axioms Beal.MathlibMissing.chartOfModelTrue_normal_X_add_Vsq_ne_zero
#print axioms Beal.MathlibMissing.centreIdeal_power_coeff_bound
#print axioms Beal.MathlibMissing.centre_X_pow_mul_X_cube_sub_one_not_mem
#print axioms Beal.MathlibMissing.chartOfModelTrue_injective

end Beal.MathlibMissing
