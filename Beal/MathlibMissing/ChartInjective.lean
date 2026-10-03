import Beal.MathlibMissing.CentrePower
import Beal.MathlibMissing.ChartTrueIdeal
import Mathlib.Algebra.GeomSum

/-!
The class `X + V²` on `D₊(Xt)`.

Clearing the denominator `(Xt)²` produces the Rees numerator
`2·(X³ − 1) t²` on `Y² = X³ − 2`. A further factor `(Xt)^k` lies in the
scalar ideal `(2)` only if `X^k · (X³ − 1) ∈ I^{k+2}`. That membership
fails: `I^{k+2} ≤ I^{k+1}` and `centre_X_pow_mul_X_cube_sub_one_not_mem`
says `X^k · (X³ − 1) ∉ I^{k+1}`.

This is one normal form. Every class in `𝔽₂[a,b][X,V] / (X²·(X + V²))`
has a unique representative `A(V) + X·B(V) + X²·C(V)` of `X`-degree less
than 3, and `chartOfModelTrue_injective` is that kernel condition.

`bitReduced_signed_bound` is the coefficient step for a general
representative. On each monomial of `𝔽₂[a,b]` the `0`-`1` pattern, after
`Y² = X³ − 2`, has a coefficient `(-1)^s · 2^q` whose centre bound is
`q`. The index is the lowest power of `X`, except when only the
`X²·C(V)` series meets that power: that lowest coefficient meets the
bound, and the leading coefficient of `(X³ − 2)^q` is `1`, where both
centre bounds are `0`.

`chartSeriesAlpha_monomial` and `chartSeriesBeta_monomial` identify the
`S`-series of a normal form, on each monomial of `𝔽₂[a,b]`, with that
integer series. `twice_centre_blocks_signed` says the series cannot be
`X^m·α = 2·αₛ` and `X^m·β = 2·βₛ` with `αₛ + Y·βₛ ∈ I^{D+m}`.

`chartSeries_surface` writes the surface class of that series as the raw
sum `∑ bitLift(coeff) · X^{D−i+shift} · Y^i`, and `chartRaw_mem` puts each
sum in `I^D`. `reesProd_two` turns `(Xt)^m` times a degree-`D` numerator in
the scalar ideal `(2)` into `X^m·N = 2·z` with `z ∈ I^{D+m}`, and
`chartNumerator_twice` splits that factor across the two series.
`chart_X_val`, `chart_Y_over_X_val`, and `chartScalar_bitLift_val` are the
chart fractions, and `vTerm_rees` is the cleared degree-`D` monomial.
`chartOfModelTrue_injective` stays open: chart vanishing in `D₊(Xt)` is not
yet identified with that Rees equation.
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

/-- `𝔽₂[a,b][V]`. Variable `0` is `V`. -/
abbrev chartVPoly : Type :=
  MvPolynomial (Fin 1) (MvPolynomial (Fin 2) (ZMod 2))

/-- Read `𝔽₂[a,b][X,V]` as a polynomial in `X` with coefficients in
`𝔽₂[a,b][V]`. No variable swap: index `0` is already `X`. -/
noncomputable def chartToXPoly :
    chartNormalPoly ≃ₐ[MvPolynomial (Fin 2) (ZMod 2)] Polynomial chartVPoly :=
  MvPolynomial.finSuccEquiv (MvPolynomial (Fin 2) (ZMod 2)) 1

lemma chartToXPoly_X : chartToXPoly (MvPolynomial.X 0) = X :=
  MvPolynomial.finSuccEquiv_X_zero

lemma chartToXPoly_V :
    chartToXPoly (MvPolynomial.X 1) = C (MvPolynomial.X 0) := by
  rw [show (1 : Fin 2) = Fin.succ (0 : Fin 1) from rfl]
  exact MvPolynomial.finSuccEquiv_X_succ

/-- `X³ + V²·X²`, the image of `X²·(X + V²)`. -/
noncomputable def chartXRel : Polynomial chartVPoly :=
  X ^ 3 + C ((MvPolynomial.X (0 : Fin 1)) ^ 2) * X ^ 2

lemma chartXRel_rest_degree :
    (C ((MvPolynomial.X (0 : Fin 1)) ^ 2) * X ^ 2 : Polynomial chartVPoly).degree < 3 := by
  have hle :
      (C ((MvPolynomial.X (0 : Fin 1)) ^ 2) * X ^ 2 : Polynomial chartVPoly).degree ≤ 2 := by
    calc
      (C ((MvPolynomial.X (0 : Fin 1)) ^ 2) * X ^ 2 : Polynomial chartVPoly).degree ≤
          (C ((MvPolynomial.X (0 : Fin 1)) ^ 2) : Polynomial chartVPoly).degree +
            (X ^ 2 : Polynomial chartVPoly).degree :=
        degree_mul_le _ _
      _ ≤ 0 + (X ^ 2 : Polynomial chartVPoly).degree := add_le_add_right degree_C_le _
      _ = (X ^ 2 : Polynomial chartVPoly).degree := zero_add _
      _ = 2 := degree_X_pow 2
  exact lt_of_le_of_lt hle (by decide)

lemma chartXRel_monic : chartXRel.Monic := by
  rw [chartXRel]
  exact monic_X_pow_add chartXRel_rest_degree

lemma chartXRel_degree : chartXRel.degree = 3 := by
  rw [chartXRel]
  have hlt : (C ((MvPolynomial.X (0 : Fin 1)) ^ 2) * X ^ 2 : Polynomial chartVPoly).degree <
      (X ^ 3 : Polynomial chartVPoly).degree := by
    rw [degree_X_pow]
    exact chartXRel_rest_degree
  rw [degree_add_eq_left_of_degree_lt hlt]
  exact degree_X_pow 3

lemma chartToXPoly_rel : chartToXPoly chartNormalRel = chartXRel := by
  rw [chartNormalRel, chartXRel, map_mul, map_pow, map_add, map_pow, chartToXPoly_X,
    chartToXPoly_V]
  rw [← map_pow (C : chartVPoly →+* Polynomial chartVPoly)]
  rw [mul_add, ← pow_succ, mul_comm]

/-- A polynomial of `natDegree ≤ 2` is `A + B·X + C·X²`. -/
lemma polynomial_natDegree_le_two {R : Type*} [CommRing R] (p : Polynomial R)
    (h : p.natDegree ≤ 2) :
    p = C (p.coeff 0) + C (p.coeff 1) * X + C (p.coeff 2) * X ^ 2 := by
  have hlt : p.natDegree < 3 := Nat.lt_succ_of_le h
  rw [p.as_sum_range' 3 hlt]
  simp only [Finset.sum_range_succ, Finset.range_zero, Finset.sum_empty, zero_add,
    ← Polynomial.C_mul_X_pow_eq_monomial]
  simp [pow_zero, pow_one, mul_one]

/-- The normal form `A(V) + X·B(V) + X²·C(V)`. -/
noncomputable def chartNormalForm (A B Cv : chartVPoly) : chartNormalPoly :=
  chartToXPoly.symm (C A + C B * X + C Cv * X ^ 2)

lemma chartToXPoly_normalForm (A B Cv : chartVPoly) :
    chartToXPoly (chartNormalForm A B Cv) = C A + C B * X + C Cv * X ^ 2 := by
  rw [chartNormalForm, AlgEquiv.apply_symm_apply]

lemma chartNormalForm_natDegree (A B Cv : chartVPoly) :
    (C A + C B * X + C Cv * X ^ 2 : Polynomial chartVPoly).natDegree ≤ 2 := by
  refine (natDegree_add_le _ _).trans (max_le ?_ ?_)
  · refine (natDegree_add_le _ _).trans (max_le ?_ ?_)
    · rw [natDegree_C]
      decide
    · exact le_trans (by simpa [pow_one] using natDegree_C_mul_X_pow_le B 1) (by decide)
  · exact natDegree_C_mul_X_pow_le Cv 2

lemma chartDegTwo_coeff_zero (A B Cv : chartVPoly) :
    (C A + C B * X + C Cv * X ^ 2 : Polynomial chartVPoly).coeff 0 = A := by
  rw [coeff_add, coeff_add, coeff_C, if_pos rfl, coeff_C_mul, coeff_X_zero,
    mul_zero, add_zero, coeff_C_mul, coeff_X_pow, if_neg (by decide : (0 : ℕ) ≠ 2),
    mul_zero, add_zero]

lemma chartDegTwo_coeff_one (A B Cv : chartVPoly) :
    (C A + C B * X + C Cv * X ^ 2 : Polynomial chartVPoly).coeff 1 = B := by
  rw [coeff_add, coeff_add, coeff_C, if_neg (by decide : (1 : ℕ) ≠ 0), coeff_C_mul,
    coeff_X_one, mul_one, zero_add, coeff_C_mul, coeff_X_pow,
    if_neg (by decide : (1 : ℕ) ≠ 2), mul_zero, add_zero]

lemma chartDegTwo_coeff_two (A B Cv : chartVPoly) :
    (C A + C B * X + C Cv * X ^ 2 : Polynomial chartVPoly).coeff 2 = Cv := by
  rw [coeff_add, coeff_add, coeff_C, if_neg (by decide : (2 : ℕ) ≠ 0), coeff_C_mul,
    coeff_X_of_ne_one (by decide : (2 : ℕ) ≠ 1), mul_zero, zero_add, coeff_C_mul,
    coeff_X_pow, if_pos rfl, mul_one, zero_add]

lemma chartNormalForm_sub (A B Cv A' B' Cv' : chartVPoly) :
    chartNormalForm (A - A') (B - B') (Cv - Cv') =
      chartNormalForm A B Cv - chartNormalForm A' B' Cv' := by
  apply chartToXPoly.injective
  rw [map_sub, chartToXPoly_normalForm, chartToXPoly_normalForm, chartToXPoly_normalForm]
  rw [map_sub, map_sub, map_sub]
  ring

lemma chartNormalForm_zero : chartNormalForm 0 0 0 = 0 := by
  apply chartToXPoly.injective
  rw [chartToXPoly_normalForm, map_zero]
  simp [map_zero, zero_mul, add_zero, zero_add]

/-- `X²·(X + V²)` is monic of degree 3, so the remainder of degree `< 3` is unique. -/
lemma chartNormalForm_unique {A B Cv A' B' Cv' : chartVPoly}
    (h : Ideal.Quotient.mk chartNormalIdeal (chartNormalForm A B Cv) =
      Ideal.Quotient.mk chartNormalIdeal (chartNormalForm A' B' Cv')) :
    A = A' ∧ B = B' ∧ Cv = Cv' := by
  have hmem : chartNormalForm A B Cv - chartNormalForm A' B' Cv' ∈
      Ideal.span {chartNormalRel} := (Ideal.Quotient.eq).mp h
  rw [← chartNormalForm_sub] at hmem
  rw [Ideal.mem_span_singleton] at hmem
  rcases hmem with ⟨q, hq⟩
  have hpoly : C (A - A') + C (B - B') * X + C (Cv - Cv') * X ^ 2 =
      chartXRel * chartToXPoly q := by
    have himg := congrArg chartToXPoly hq
    rwa [map_mul, chartToXPoly_rel, chartToXPoly_normalForm] at himg
  have hdiv : chartXRel ∣ C (A - A') + C (B - B') * X + C (Cv - Cv') * X ^ 2 :=
    ⟨chartToXPoly q, hpoly⟩
  have hdeg : (C (A - A') + C (B - B') * X + C (Cv - Cv') * X ^ 2).degree <
      chartXRel.degree := by
    rw [chartXRel_degree]
    exact lt_of_le_of_lt
      (natDegree_le_iff_degree_le.mp
        (chartNormalForm_natDegree (A - A') (B - B') (Cv - Cv')))
      (by decide : (2 : WithBot ℕ) < 3)
  have h0 : C (A - A') + C (B - B') * X + C (Cv - Cv') * X ^ 2 = 0 :=
    eq_zero_of_dvd_of_degree_lt hdiv hdeg
  refine ⟨?_, ?_, ?_⟩
  · have hA := congrArg (fun t : Polynomial chartVPoly => t.coeff 0) h0
    dsimp at hA
    rw [chartDegTwo_coeff_zero] at hA
    exact sub_eq_zero.mp hA
  · have hB := congrArg (fun t : Polynomial chartVPoly => t.coeff 1) h0
    dsimp at hB
    rw [chartDegTwo_coeff_one] at hB
    exact sub_eq_zero.mp hB
  · have hCv := congrArg (fun t : Polynomial chartVPoly => t.coeff 2) h0
    dsimp at hCv
    rw [chartDegTwo_coeff_two] at hCv
    exact sub_eq_zero.mp hCv

lemma chartNormalForm_eq_zero_iff (A B Cv : chartVPoly) :
    Ideal.Quotient.mk chartNormalIdeal (chartNormalForm A B Cv) = 0 ↔
      A = 0 ∧ B = 0 ∧ Cv = 0 := by
  constructor
  · intro h
    have heq : Ideal.Quotient.mk chartNormalIdeal (chartNormalForm A B Cv) =
        Ideal.Quotient.mk chartNormalIdeal (chartNormalForm 0 0 0) := by
      rw [h, chartNormalForm_zero, map_zero]
    rcases chartNormalForm_unique heq with ⟨hA, hB, hCv⟩
    exact ⟨hA, hB, hCv⟩
  · rintro ⟨rfl, rfl, rfl⟩
    rw [chartNormalForm_zero, map_zero]

/-- Every class has a representative `A(V) + X·B(V) + X²·C(V)`. -/
lemma exists_chartNormalForm (p : chartNormalPoly) :
    ∃ A B Cv : chartVPoly,
      Ideal.Quotient.mk chartNormalIdeal p =
        Ideal.Quotient.mk chartNormalIdeal (chartNormalForm A B Cv) := by
  let q : Polynomial chartVPoly := chartToXPoly p
  let r : Polynomial chartVPoly := q %ₘ chartXRel
  have hr : r = q - chartXRel * (q /ₘ chartXRel) :=
    modByMonic_eq_sub_mul_div q chartXRel_monic
  have hdeg : r.degree < 3 := by
    have hlt := degree_modByMonic_lt q chartXRel_monic
    rwa [chartXRel_degree] at hlt
  have hnat : r.natDegree ≤ 2 := by
    by_cases hr0 : r = 0
    · rw [hr0, natDegree_zero]
      decide
    · exact Nat.lt_succ_iff.mp ((natDegree_lt_iff_degree_lt hr0).mpr hdeg)
  let A : chartVPoly := r.coeff 0
  let B : chartVPoly := r.coeff 1
  let Cv : chartVPoly := r.coeff 2
  have hrform : r = C A + C B * X + C Cv * X ^ 2 :=
    polynomial_natDegree_le_two r hnat
  refine ⟨A, B, Cv, (Ideal.Quotient.eq).mpr ?_⟩
  have hdiff : chartToXPoly (p - chartNormalForm A B Cv) =
      chartXRel * (q /ₘ chartXRel) := by
    rw [map_sub, chartToXPoly_normalForm, ← hrform, hr]
    change q - (q - chartXRel * (q /ₘ chartXRel)) = chartXRel * (q /ₘ chartXRel)
    exact sub_sub_self q (chartXRel * (q /ₘ chartXRel))
  have hpre : p - chartNormalForm A B Cv =
      chartNormalRel * chartToXPoly.symm (q /ₘ chartXRel) := by
    apply chartToXPoly.injective
    rw [hdiff, map_mul, chartToXPoly_rel, AlgEquiv.apply_symm_apply]
  rw [hpre]
  exact Ideal.mem_span_singleton.mpr ⟨chartToXPoly.symm (q /ₘ chartXRel), rfl⟩

lemma chartNormalForm_X_add_Vsq :
    chartNormalForm ((MvPolynomial.X (0 : Fin 1)) ^ 2) 1 0 =
      MvPolynomial.X (0 : Fin 2) + (MvPolynomial.X 1) ^ 2 := by
  apply chartToXPoly.injective
  rw [chartToXPoly_normalForm, map_add, chartToXPoly_X]
  rw [map_pow chartToXPoly (MvPolynomial.X (1 : Fin 2)) 2, chartToXPoly_V]
  rw [map_one, one_mul, map_zero, zero_mul, add_zero,
    ← map_pow (C : chartVPoly →+* Polynomial chartVPoly), add_comm]

/-- `X + V²` is nonzero in `𝔽₂[a,b][X,V] / (X²·(X + V²))`.
The representative has `B = 1`. -/
theorem chartNormal_X_add_Vsq_ne_zero :
    Ideal.Quotient.mk chartNormalIdeal
        (MvPolynomial.X (0 : Fin 2) + (MvPolynomial.X 1) ^ 2) ≠ 0 := by
  intro h
  rw [← chartNormalForm_X_add_Vsq] at h
  exact one_ne_zero ((chartNormalForm_eq_zero_iff _ _ _).mp h).2.1

/-- Injectivity of the true chart is the statement that a normal form
`A(V) + X·B(V) + X²·C(V)` dies in `D₊(Xt)` only when `A = B = C = 0`.
The right-hand side is open. -/
lemma ringHom_injective_iff_map_eq_zero {R S : Type*} [Ring R] [Ring S] (f : R →+* S) :
    Function.Injective f ↔ ∀ x, f x = 0 → x = 0 := by
  constructor
  · intro hinj x hx
    apply hinj
    rw [hx, map_zero]
  · intro h x y hxy
    apply sub_eq_zero.mp
    apply h
    rw [map_sub, hxy, sub_self]

theorem chartOfModelTrue_injective_iff_normalForm :
    Function.Injective chartOfModelTrue ↔
      ∀ A B Cv : chartVPoly,
        chartOfModelTrue (Ideal.Quotient.mk chartTrueIdeal
          (normalPolyToModel (chartNormalForm A B Cv))) = 0 →
        A = 0 ∧ B = 0 ∧ Cv = 0 := by
  constructor
  · intro hinj A B Cv hzero
    have hmk : Ideal.Quotient.mk chartTrueIdeal
        (normalPolyToModel (chartNormalForm A B Cv)) = 0 :=
      (ringHom_injective_iff_map_eq_zero chartOfModelTrue).mp hinj _ hzero
    have hsym0 : chartTrueIdeal_quotient_equiv_normal.symm
        (Ideal.Quotient.mk chartNormalIdeal (chartNormalForm A B Cv)) = 0 := by
      change normalToChart
        (Ideal.Quotient.mk chartNormalIdeal (chartNormalForm A B Cv)) = 0
      rw [normalToChart, Ideal.Quotient.lift_mk]
      exact hmk
    have hnorm : Ideal.Quotient.mk chartNormalIdeal (chartNormalForm A B Cv) = 0 :=
      (ringHom_injective_iff_map_eq_zero
          chartTrueIdeal_quotient_equiv_normal.symm).mp
        chartTrueIdeal_quotient_equiv_normal.symm.injective
        (Ideal.Quotient.mk chartNormalIdeal (chartNormalForm A B Cv)) hsym0
    exact (chartNormalForm_eq_zero_iff A B Cv).mp hnorm
  · intro hker
    rw [ringHom_injective_iff_map_eq_zero chartOfModelTrue]
    intro z hz
    have hzback : z = chartTrueIdeal_quotient_equiv_normal.symm
        (chartTrueIdeal_quotient_equiv_normal z) :=
      (chartTrueIdeal_quotient_equiv_normal.symm_apply_apply z).symm
    obtain ⟨p, hp⟩ := Ideal.Quotient.mk_surjective
      (chartTrueIdeal_quotient_equiv_normal z)
    obtain ⟨A, B, Cv, hform⟩ := exists_chartNormalForm p
    have hw : chartTrueIdeal_quotient_equiv_normal z =
        Ideal.Quotient.mk chartNormalIdeal (chartNormalForm A B Cv) := by
      rw [← hp, hform]
    have hz_eq : z = Ideal.Quotient.mk chartTrueIdeal
        (normalPolyToModel (chartNormalForm A B Cv)) := by
      rw [hzback, hw]
      change normalToChart
        (Ideal.Quotient.mk chartNormalIdeal (chartNormalForm A B Cv)) = _
      rw [normalToChart, Ideal.Quotient.lift_mk, RingHom.comp_apply]
    have hABC := hker A B Cv (hz_eq ▸ hz)
    rw [hzback, hw, (chartNormalForm_eq_zero_iff A B Cv).mpr hABC, map_zero]

/-!
## Lowest power of `X`

After `Y² = X³ − 2`, a normal form `A(V) + X·B(V) + X²·C(V)` with
`0`-`1` coefficients becomes `α(X) + Y·β(X)`. The lowest power of `X`
that occurs has coefficient `± 2^q`, and the centre bound at that index
is `q`, except when only the `C` series meets that power. Then the
lowest coefficient meets the bound, and the leading coefficient of
`(X³ − 2)^q` is `1`.
-/

noncomputable def cuspPoly : Polynomial ℤ := X ^ 3 - 2

lemma cuspPoly_eq : cuspPoly = X ^ 3 + C (-2 : ℤ) := by
  rw [cuspPoly, sub_eq_add_neg]
  have h2 : (2 : Polynomial ℤ) = C (2 : ℤ) := (map_ofNat C 2).symm
  rw [h2, ← C_neg]

lemma cuspPoly_monic : cuspPoly.Monic := by
  rw [cuspPoly_eq]
  refine monic_X_pow_add ?_
  rw [degree_C (by decide : (-2 : ℤ) ≠ 0)]
  exact WithBot.coe_lt_coe.mpr (by decide : (0 : ℕ) < 3)

lemma cuspPoly_natDegree : cuspPoly.natDegree = 3 := by
  have hlt : (C (-2 : ℤ)).degree < (X ^ 3 : Polynomial ℤ).degree := by
    rw [degree_X_pow, degree_C (by decide : (-2 : ℤ) ≠ 0)]
    exact WithBot.coe_lt_coe.mpr (by decide : (0 : ℕ) < 3)
  exact natDegree_eq_of_degree_eq_some (by
    rw [cuspPoly_eq, degree_add_eq_left_of_degree_lt hlt]
    exact degree_X_pow 3)

lemma coeff_cuspPoly_zero (q : ℕ) : (cuspPoly ^ q).coeff 0 = (-2) ^ q := by
  induction q with
  | zero => simp [cuspPoly]
  | succ q ih =>
      rw [pow_succ, coeff_mul, Finset.Nat.antidiagonal_zero, Finset.sum_singleton, ih]
      have h0 : cuspPoly.coeff 0 = -2 := by
        rw [cuspPoly, coeff_sub, coeff_X_pow, if_neg (by decide : (0 : ℕ) ≠ 3)]
        have h2 : (2 : Polynomial ℤ) = C (2 : ℤ) := (map_ofNat C 2).symm
        rw [h2, coeff_C, if_pos rfl, zero_sub]
      rw [h0, ← pow_succ]

lemma coeff_cuspPoly_top (q : ℕ) : (cuspPoly ^ q).coeff (3 * q) = 1 := by
  have hmon : cuspPoly.Monic := cuspPoly_monic
  have hnd : (cuspPoly ^ q).natDegree = 3 * q := by
    rw [hmon.natDegree_pow, cuspPoly_natDegree, Nat.mul_comm]
  have hlead : (cuspPoly ^ q).leadingCoeff = 1 := by
    simpa [Monic] using hmon.pow q
  rw [Polynomial.leadingCoeff, hnd] at hlead
  exact hlead

lemma coeff_term_front (c : ℤ) (e q : ℕ) :
    (C c * X ^ e * cuspPoly ^ q).coeff e = c * (-2) ^ q := by
  rw [mul_assoc, coeff_C_mul, coeff_X_pow_mul', if_pos (le_refl e), Nat.sub_self,
    coeff_cuspPoly_zero]

lemma coeff_term_below {c : ℤ} {e q L : ℕ} (h : L < e) :
    (C c * X ^ e * cuspPoly ^ q).coeff L = 0 := by
  rw [mul_assoc, coeff_C_mul, coeff_X_pow_mul', if_neg (not_le_of_gt h), mul_zero]

lemma natDegree_term {c : ℤ} {e q : ℕ} (hc : c ≠ 0) :
    (C c * X ^ e * cuspPoly ^ q).natDegree = e + 3 * q := by
  have hmon : cuspPoly.Monic := cuspPoly_monic
  have hpow : (cuspPoly ^ q).natDegree = 3 * q := by
    rw [hmon.natDegree_pow, cuspPoly_natDegree, Nat.mul_comm]
  have hc0 : C c ≠ 0 := (C_eq_zero).not.mpr hc
  have hx : X ^ e ≠ (0 : Polynomial ℤ) := pow_ne_zero _ X_ne_zero
  have hcusp : cuspPoly ^ q ≠ 0 := pow_ne_zero _ hmon.ne_zero
  have hleft : (C c * X ^ e).natDegree = e := by
    rw [natDegree_mul hc0 hx, natDegree_C, natDegree_X_pow, zero_add]
  rw [natDegree_mul (mul_ne_zero hc0 hx) hcusp, hleft, hpow]

lemma coeff_term_top (c : ℤ) (e q : ℕ) :
    (C c * X ^ e * cuspPoly ^ q).coeff (e + 3 * q) = c := by
  rw [mul_assoc, coeff_C_mul]
  have hidx : (X ^ e * cuspPoly ^ q).coeff (e + 3 * q) = (cuspPoly ^ q).coeff (3 * q) := by
    rw [show e + 3 * q = 3 * q + e by rw [Nat.add_comm], coeff_X_pow_mul]
  rw [hidx, coeff_cuspPoly_top, mul_one]

lemma nat_sub_split {D i j : ℕ} (hj : j ≤ D) (hij : i ≤ j) :
    (j - i) + (D - j) = D - i := by
  have hji : i + (j - i) = j := Nat.add_sub_of_le hij
  have hjiD : j - i ≤ D - i := Nat.sub_le_sub_right hj i
  calc
    (j - i) + (D - j) = (j - i) + (D - (i + (j - i))) := by rw [hji]
    _ = (j - i) + (D - i - (j - i)) := by rw [Nat.sub_add_eq]
    _ = D - i := by rw [Nat.add_comm, Nat.sub_add_cancel hjiD]

lemma front_le_of_degree_le {D i j shift : ℕ} (hj : j ≤ D) (hij : i ≤ j) :
    D - j + shift ≤ D - i + shift := by
  have hle : D - j ≤ D - i := by
    calc
      D - j ≤ (j - i) + (D - j) := Nat.le_add_left (D - j) (j - i)
      _ = D - i := nat_sub_split hj hij
  exact Nat.add_le_add_right hle shift

lemma front_lt_of_degree_lt {D i j shift : ℕ} (hj : j ≤ D) (hij : i < j) :
    D - j + shift < D - i + shift := by
  have hi : i ≤ j := Nat.le_of_lt hij
  have h1 : 1 ≤ j - i := by
    rw [Nat.one_le_iff_ne_zero, Nat.sub_ne_zero_iff_lt]
    exact hij
  have hle : D - j + 1 ≤ D - i := by
    rw [← nat_sub_split hj hi]
    rw [Nat.add_comm (j - i)]
    exact Nat.add_le_add_left h1 (D - j)
  exact Nat.add_lt_add_right (Nat.lt_of_succ_le hle) shift

/-- Parity-`residue` terms of `p` through degree `N`. -/
noncomputable def seriesUpTo (N D shift residue : ℕ) (p : Polynomial ℤ) : Polynomial ℤ :=
  Finset.sum (Finset.range (N + 1)) fun i =>
    if i % 2 = residue then
      C (p.coeff i) * X ^ (D - i + shift) * cuspPoly ^ (i / 2)
    else 0

lemma seriesUpTo_coeff_front {N D shift residue : ℕ} {p : Polynomial ℤ}
    (hN : p.natDegree ≤ N) (hD : N ≤ D) (_hp : p ≠ 0) :
    (seriesUpTo N D shift residue p).coeff (D - p.natDegree + shift) =
      if p.natDegree % 2 = residue then
        p.coeff p.natDegree * (-2) ^ (p.natDegree / 2)
      else 0 := by
  classical
  set L := D - p.natDegree + shift
  rw [seriesUpTo, finset_sum_coeff]
  have hmem : p.natDegree ∈ Finset.range (N + 1) :=
    Finset.mem_range.mpr (Nat.lt_succ_of_le hN)
  have hsingle :
      (∑ b ∈ Finset.range (N + 1),
          (if b % 2 = residue then
              C (p.coeff b) * X ^ (D - b + shift) * cuspPoly ^ (b / 2)
            else (0 : Polynomial ℤ)).coeff L) =
        (if p.natDegree % 2 = residue then
            C (p.coeff p.natDegree) * X ^ (D - p.natDegree + shift) *
              cuspPoly ^ (p.natDegree / 2)
          else (0 : Polynomial ℤ)).coeff L := by
    refine @Finset.sum_eq_single ℕ ℤ _ (Finset.range (N + 1))
        (fun i => (if i % 2 = residue then
            C (p.coeff i) * X ^ (D - i + shift) * cuspPoly ^ (i / 2)
          else (0 : Polynomial ℤ)).coeff L) p.natDegree ?_ ?_
    · intro b _hb hne
      show (if b % 2 = residue then
          C (p.coeff b) * X ^ (D - b + shift) * cuspPoly ^ (b / 2)
        else (0 : Polynomial ℤ)).coeff L = 0
      by_cases hres : b % 2 = residue
      · rw [if_pos hres]
        by_cases hc : p.coeff b = 0
        · rw [hc, map_zero, mul_assoc, zero_mul, coeff_zero]
        · have hle : b ≤ p.natDegree := le_natDegree_of_ne_zero hc
          have hlt : b < p.natDegree := lt_of_le_of_ne hle hne
          have hnd : p.natDegree ≤ D := le_trans hN hD
          exact coeff_term_below (front_lt_of_degree_lt hnd hlt)
      · rw [if_neg hres, coeff_zero]
    · intro hnot
      exact absurd hmem hnot
  rw [hsingle]
  by_cases hres : p.natDegree % 2 = residue
  · rw [if_pos hres, if_pos hres]
    exact coeff_term_front (p.coeff p.natDegree) L (p.natDegree / 2)
  · rw [if_neg hres, if_neg hres, coeff_zero]

lemma seriesUpTo_coeff_of_front_gt {N D shift residue L : ℕ} {p : Polynomial ℤ}
    (hN : p.natDegree ≤ N) (hD : N ≤ D)
    (hL : p = 0 ∨ L < D - p.natDegree + shift) :
    (seriesUpTo N D shift residue p).coeff L = 0 := by
  classical
  rw [seriesUpTo, finset_sum_coeff]
  simp_rw [apply_ite (fun q : Polynomial ℤ => q.coeff L)]
  refine Finset.sum_eq_zero ?_
  intro i _hi
  by_cases hres : i % 2 = residue
  · rw [if_pos hres]
    by_cases hc : p.coeff i = 0
    · rw [hc, map_zero, mul_assoc, zero_mul, coeff_zero]
    · have hp : p ≠ 0 := by
        intro hp0
        exact hc (by rw [hp0, coeff_zero])
      have hLt : L < D - p.natDegree + shift := by
        rcases hL with hp0 | hLt
        · exact absurd hp0 hp
        · exact hLt
      have hle : i ≤ p.natDegree := le_natDegree_of_ne_zero hc
      have hnd : p.natDegree ≤ D := le_trans hN hD
      have hfront : D - p.natDegree + shift ≤ D - i + shift :=
        front_le_of_degree_le hnd hle
      exact coeff_term_below (lt_of_lt_of_le hLt hfront)
  · rw [if_neg hres, coeff_zero]


/-!
## Coefficient obstruction

A `0`-`1` normal form, reduced by `Y² = X³ − 2`, has some coefficient
`(-1)^s · 2^q` at an index whose centre bound is `q`. That coefficient is
not twice an element of `I^D`. The index is the lowest power of `X`, except
for a pure `C` series, where the leading coefficient of `(X³ − 2)^q` is `1`
and both bounds are `0`.
-/

lemma even_eq_two_mul (n : ℕ) (h : n % 2 = 0) : n = 2 * (n / 2) := by
  have hdiv := Nat.div_add_mod n 2
  rw [h, Nat.add_zero] at hdiv
  exact hdiv.symm

lemma odd_eq_two_mul_add_one (n : ℕ) (h : n % 2 = 1) : n = 2 * (n / 2) + 1 := by
  have hdiv := Nat.div_add_mod n 2
  rw [h] at hdiv
  exact hdiv.symm

lemma half_odd (q : ℕ) : (2 * q + 1) / 2 = q := by
  have hmod : (2 * q + 1) % 2 = 1 := by
    rw [Nat.add_mod, Nat.mul_mod_right, Nat.zero_add]
  have hdiv := Nat.div_add_mod (2 * q + 1) 2
  rw [hmod] at hdiv
  exact Nat.eq_of_mul_eq_mul_left (by decide : 0 < 2) (Nat.add_right_cancel hdiv)

lemma div_two_pos_of_ge_two {d : ℕ} (hd : 2 ≤ d) : 1 ≤ d / 2 := by
  rw [Nat.one_le_iff_ne_zero]
  intro hz
  have hmod : d = d % 2 := by
    have := Nat.div_add_mod d 2
    rw [hz, Nat.mul_zero, Nat.zero_add] at this
    exact this.symm
  have hlt : d < 2 := by
    rw [hmod]
    exact Nat.mod_lt d (by decide : 0 < 2)
  exact lt_irrefl _ (Nat.lt_of_le_of_lt hd hlt)

lemma mod_two_add_two (i : ℕ) : (i + 2) % 2 = i % 2 := by
  rw [Nat.add_mod, show (2 : ℕ) % 2 = 0 by decide, Nat.add_zero, Nat.mod_mod]

lemma mod_two_succ_ne (i : ℕ) : (i + 1) % 2 ≠ i % 2 := by
  rcases mod_two_dichotomy i with h | h
  · rw [h, Nat.add_mod, h]
    decide
  · rw [h, Nat.add_mod, h]
    decide

lemma mod_two_sub {b k : ℕ} (hbk : b ≤ k) (h : k % 2 = b % 2) : (k - b) % 2 = 0 := by
  have hk : k = b + (k - b) := (Nat.add_sub_of_le hbk).symm
  rcases mod_two_dichotomy (k - b) with hd | hd
  · exact hd
  · rcases mod_two_dichotomy b with hb | hb
    · exfalso
      rw [hk, Nat.add_mod, hb, hd] at h
      rw [show (0 + 1) % 2 = 1 by decide] at h
      exact absurd h (by decide : (1 : ℕ) ≠ 0)
    · exfalso
      rw [hk, Nat.add_mod, hb, hd] at h
      rw [show (1 + 1) % 2 = 0 by decide] at h
      exact absurd h (by decide : (0 : ℕ) ≠ 1)

lemma div_two_add_two (i : ℕ) : (i + 2) / 2 = i / 2 + 1 := by
  have h : i + 2 = i + 2 * 1 := by rw [Nat.mul_one]
  rw [h]
  exact Nat.add_mul_div_left i 1 (by decide : 0 < 2)

lemma add_swap_right (a i n : ℕ) : a + (i + n) = a + n + i := by
  calc
    a + (i + n) = a + (n + i) := by rw [Nat.add_comm i n]
    _ = a + n + i := by rw [← Nat.add_assoc]

lemma add_comm_triple (a n b : ℕ) : a + n + b = b + n + a := by
  calc
    a + n + b = b + (a + n) := by rw [Nat.add_comm]
    _ = b + (n + a) := by rw [Nat.add_comm a n]
    _ = b + n + a := by rw [← Nat.add_assoc]

lemma degree_of_equal_front {D i k n : ℕ} (hi : i ≤ D) (hk : k ≤ D)
    (h : D - i = D - k + n) : k = i + n := by
  have hdi : (D - k) + n + i = D := by
    rw [← h, Nat.sub_add_cancel hi]
  have hsum : (D - k) + (i + n) = D := by
    rw [add_swap_right, hdi]
  have hDk : (D - k) + k = D := Nat.sub_add_cancel hk
  have heq : (D - k) + (i + n) = (D - k) + k := by rw [hsum, hDk]
  exact (Nat.add_left_cancel heq).symm

lemma nat_sub_gap {D a b n : ℕ} (ha : a ≤ D) (hb : b ≤ D)
    (h : D - b + n ≤ D - a) : a + n ≤ b := by
  have hsum : (D - b) + n + a ≤ D := by
    have := Nat.add_le_add_right h a
    rwa [Nat.sub_add_cancel ha] at this
  have hre : a + n + (D - b) ≤ D := by
    rw [add_comm_triple]
    exact hsum
  have hle : a + n ≤ D - (D - b) :=
    (Nat.le_sub_iff_add_le (Nat.sub_le D b)).mpr hre
  rwa [Nat.sub_sub_self hb] at hle

lemma degree_gap_A {D i k : ℕ} (hi : i ≤ D) (hk : k ≤ D)
    (h : D - k + 2 < D - i) : i + 3 ≤ k := by
  apply nat_sub_gap hi hk
  have hs : D - k + 2 + 1 ≤ D - i := Nat.succ_le_of_lt h
  rw [Nat.add_assoc, show (2 + 1 : ℕ) = 3 by decide] at hs
  exact hs

lemma degree_gap_B {D j k : ℕ} (hj : j ≤ D) (hk : k ≤ D)
    (h : D - k + 2 < D - j + 1) : j + 2 ≤ k := by
  apply nat_sub_gap hj hk
  have hs : D - k + 2 + 1 ≤ D - j + 1 := Nat.succ_le_of_lt h
  exact Nat.le_of_add_le_add_right hs

lemma sub_add_cancel_shift {D i n : ℕ} (hn : i + n ≤ D) :
    D - (i + n) + n = D - i := by
  have hsplit := nat_sub_split hn (Nat.le_add_right i n)
  have hsub : i + n - i = n := Nat.add_sub_cancel_left i n
  rw [hsub, Nat.add_comm] at hsplit
  exact hsplit

lemma neg_two_pow_eq (q : ℕ) : (-(2 : ℤ)) ^ q = (-1) ^ q * 2 ^ q := by
  rw [← mul_pow]
  norm_num

lemma neg_two_pow_succ_sum (q : ℕ) :
    (-(2 : ℤ)) ^ q + (-(2 : ℤ)) ^ (q + 1) = (-1) ^ (q + 1) * 2 ^ q := by
  rw [pow_succ]
  simp_rw [neg_two_pow_eq]
  calc
    (-1) ^ q * 2 ^ q + (-1) ^ q * 2 ^ q * (-2)
        = (-1) ^ q * 2 ^ q * (1 + -2) := by ring
    _ = (-1) ^ q * 2 ^ q * (-1) := by norm_num
    _ = (-1) ^ q * (-1) * 2 ^ q := by ring
    _ = (-1) ^ (q + 1) * 2 ^ q := by rw [← pow_succ]

lemma three_div_gap (b d : ℕ) (hd : 2 ≤ d) :
    d + 3 * (b / 2) ≤ 3 * ((b + d) / 2) := by
  set q := b / 2
  set t := d / 2
  have hb' : b = 2 * q + b % 2 := (Nat.div_add_mod b 2).symm
  have hd' : d = 2 * t + d % 2 := (Nat.div_add_mod d 2).symm
  rcases mod_two_dichotomy b with hb0 | hb1 <;> rcases mod_two_dichotomy d with hd0 | hd1
  · rw [hb0, Nat.add_zero] at hb'
    rw [hd0, Nat.add_zero] at hd'
    have hdiv : (2 * q + 2 * t) / 2 = q + t := by
      rw [← Nat.mul_add, Nat.mul_div_cancel_left _ (by decide : 0 < 2)]
    rw [hb', hd', hdiv, Nat.mul_add, Nat.add_comm (2 * t)]
    exact Nat.add_le_add_left (Nat.mul_le_mul_right t (by decide : (2 : ℕ) ≤ 3)) (3 * q)
  · rw [hb0, Nat.add_zero] at hb'
    rw [hd1] at hd'
    have ht : 1 ≤ t := div_two_pos_of_ge_two hd
    have hdiv : (2 * q + (2 * t + 1)) / 2 = q + t := by
      have hnum : 2 * q + (2 * t + 1) = 1 + 2 * (q + t) := by
        calc
          2 * q + (2 * t + 1) = 2 * q + 2 * t + 1 := by rw [← Nat.add_assoc]
          _ = 2 * (q + t) + 1 := by rw [← Nat.mul_add]
          _ = 1 + 2 * (q + t) := by rw [Nat.add_comm]
      rw [hnum, Nat.add_mul_div_left 1 (q + t) (by decide : 0 < 2),
        Nat.div_eq_of_lt (by decide : (1 : ℕ) < 2), Nat.zero_add]
    rw [hb', hd', hdiv, Nat.mul_add, Nat.add_comm (2 * t + 1)]
    refine Nat.add_le_add_left ?_ (3 * q)
    have hone : t = 1 * t := (Nat.one_mul t).symm
    calc
      2 * t + 1 ≤ 2 * t + t := Nat.add_le_add_left ht _
      _ = 2 * t + 1 * t := by conv_lhs => rhs; rw [hone]
      _ = (2 + 1) * t := by rw [← Nat.add_mul]
      _ = 3 * t := by rw [show (2 + 1 : ℕ) = 3 by decide]
  · rw [hb1] at hb'
    rw [hd0, Nat.add_zero] at hd'
    have hdiv : (2 * q + 1 + 2 * t) / 2 = q + t := by
      have hnum : 2 * q + 1 + 2 * t = 1 + 2 * (q + t) := by
        calc
          2 * q + 1 + 2 * t = 2 * q + (1 + 2 * t) := by rw [Nat.add_assoc]
          _ = 2 * q + (2 * t + 1) := by rw [Nat.add_comm 1 (2 * t)]
          _ = 2 * q + 2 * t + 1 := by rw [← Nat.add_assoc]
          _ = 2 * (q + t) + 1 := by rw [← Nat.mul_add]
          _ = 1 + 2 * (q + t) := by rw [Nat.add_comm]
      rw [hnum, Nat.add_mul_div_left 1 (q + t) (by decide : 0 < 2),
        Nat.div_eq_of_lt (by decide : (1 : ℕ) < 2), Nat.zero_add]
    rw [hb', hd', hdiv, Nat.mul_add, Nat.add_comm (2 * t)]
    exact Nat.add_le_add_left (Nat.mul_le_mul_right t (by decide : (2 : ℕ) ≤ 3)) (3 * q)
  · rw [hb1] at hb'
    rw [hd1] at hd'
    have hdiv : (2 * q + 1 + (2 * t + 1)) / 2 = q + t + 1 := by
      have hnum : 2 * q + 1 + (2 * t + 1) = 2 * (q + t + 1) := by
        apply Eq.symm
        calc
          2 * (q + t + 1) = 2 * (q + t) + 2 * 1 := by rw [Nat.mul_add]
          _ = 2 * (q + t) + 2 := by rw [Nat.mul_one]
          _ = 2 * q + 2 * t + 2 := by rw [Nat.mul_add]
          _ = 2 * q + (2 * t + 2) := by rw [Nat.add_assoc]
          _ = 2 * q + (2 * t + (1 + 1)) := by
            conv_lhs => rhs; rhs; rw [show (2 : ℕ) = 1 + 1 by decide]
          _ = 2 * q + ((2 * t + 1) + 1) := by rw [← Nat.add_assoc]
          _ = 2 * q + ((1 + 2 * t) + 1) := by rw [Nat.add_comm (2 * t) 1]
          _ = 2 * q + (1 + (2 * t + 1)) := by rw [Nat.add_assoc]
          _ = 2 * q + 1 + (2 * t + 1) := by rw [← Nat.add_assoc]
      rw [hnum, Nat.mul_div_cancel_left _ (by decide : 0 < 2)]
    have hRHS : 3 * (q + t + 1) = 3 * q + (3 * t + 3) := by
      rw [Nat.mul_add, Nat.mul_add, Nat.mul_one, Nat.add_assoc (3 * q)]
    rw [hb', hd', hdiv, hRHS, Nat.add_comm (2 * t + 1)]
    refine Nat.add_le_add_left ?_ (3 * q)
    calc
      2 * t + 1 ≤ 3 * t + 1 :=
        Nat.add_le_add_right (Nat.mul_le_mul_right t (by decide : (2 : ℕ) ≤ 3)) _
      _ ≤ 3 * t + 3 := Nat.add_le_add_left (by decide : (1 : ℕ) ≤ 3) _

lemma cuspShift_lt_C {D b k shift : ℕ} (hk : k ≤ D) (hbk : b ≤ k) (hgap : b + 2 ≤ k)
    (hsh : shift ≤ 1) :
    D - b + shift + 3 * (b / 2) < D - k + 2 + 3 * (k / 2) := by
  set d := k - b
  have hbd : b + d = k := Nat.add_sub_of_le hbk
  have hd2 : 2 ≤ d := by
    have hsum : b + 2 ≤ b + d := by rwa [hbd]
    exact Nat.le_of_add_le_add_left hsum
  have h3 := three_div_gap b d hd2
  have hD : D - b = D - k + d := by
    have h := nat_sub_split hk hbk
    rw [Nat.add_comm] at h
    exact h.symm
  set a := D - k
  set u := 3 * (b / 2)
  have hmain : a + d + u + 2 ≤ a + 2 + 3 * ((b + d) / 2) := by
    have hre : a + d + u + 2 = a + 2 + (d + u) := by ring
    rw [hre]
    exact Nat.add_le_add_left h3 (a + 2)
  have hshift : D - b + shift + 3 * (b / 2) + 1 ≤ a + d + u + 2 := by
    have hs : shift + 1 ≤ 2 := by
      have := Nat.add_le_add_right hsh 1
      simpa [show (1 + 1 : ℕ) = 2 by decide] using this
    have hre : D - b + shift + u + 1 = a + d + u + (shift + 1) := by
      rw [hD]
      ring
    rw [hre]
    exact Nat.add_le_add_left hs (a + d + u)
  have hfin : D - b + shift + 3 * (b / 2) + 1 ≤ D - k + 2 + 3 * (k / 2) := by
    have hbd' : (b + d) / 2 = k / 2 := by rw [hbd]
    calc
      D - b + shift + 3 * (b / 2) + 1 ≤ a + d + u + 2 := hshift
      _ ≤ a + 2 + 3 * ((b + d) / 2) := hmain
      _ = D - k + 2 + 3 * (k / 2) := by rw [hbd']
  exact Nat.lt_of_succ_le hfin

lemma cuspTop_same_lt {D shift i k : ℕ} (hk : k ≤ D) (hik : i < k)
    (hpar : (k - i) % 2 = 0) :
    D - i + shift + 3 * (i / 2) < D - k + shift + 3 * (k / 2) := by
  have hi : i ≤ k := Nat.le_of_lt hik
  set d := k - i
  have hdvd : d = 2 * (d / 2) := even_eq_two_mul d hpar
  have hhalf : 1 ≤ d / 2 := div_two_pos_of_ge_two <| by
    have hpos : 0 < d := Nat.sub_pos_of_lt hik
    have h2 : 2 ∣ d := Nat.dvd_of_mod_eq_zero hpar
    rcases h2 with ⟨t, ht⟩
    have ht0 : t ≠ 0 := by
      intro ht0
      rw [ht, ht0, Nat.mul_zero] at hpos
      exact Nat.lt_irrefl _ hpos
    have ht1 : 1 ≤ t := Nat.one_le_iff_ne_zero.mpr ht0
    have h2le : 2 * 1 ≤ 2 * t := Nat.mul_le_mul_left 2 ht1
    rw [Nat.mul_one] at h2le
    rw [ht]
    exact h2le
  have hk' : k = i + d := (Nat.add_sub_of_le hi).symm
  have hdiv : k / 2 = i / 2 + d / 2 := by
    set v := d / 2
    have hk'' : k = i + 2 * v := by rw [hk', hdvd]
    rw [hk'']
    exact Nat.add_mul_div_left i v (by decide : 0 < 2)
  have hD : D - i = D - k + d := by
    have h := nat_sub_split hk hi
    rw [Nat.add_comm] at h
    exact h.symm
  set a := D - k
  set u := 3 * (i / 2)
  set v := d / 2
  have hv : d + v = 3 * v := by
    have hone : v = 1 * v := (Nat.one_mul v).symm
    calc
      d + v = 2 * v + v := by rw [hdvd]
      _ = 2 * v + 1 * v := by conv_lhs => rhs; rw [hone]
      _ = (2 + 1) * v := by rw [← Nat.add_mul]
      _ = 3 * v := by rw [show (2 + 1 : ℕ) = 3 by decide]
  have h3 : 3 * (k / 2) = u + 3 * v := by
    rw [hdiv, Nat.mul_add]
  have hre : a + d + shift + u + v = a + shift + (u + 3 * v) := by
    calc
      a + d + shift + u + v = a + shift + u + (d + v) := by ring
      _ = a + shift + u + 3 * v := by rw [hv]
      _ = a + shift + (u + 3 * v) := by ring
  have hpos : 0 < v := Nat.succ_le_iff.mp hhalf
  have hlt : a + d + shift + u < a + d + shift + u + v := Nat.lt_add_of_pos_right hpos
  have heq : a + d + shift + u + v = D - k + shift + 3 * (k / 2) := by
    rw [hre, ← h3]
  have hleft : D - i + shift + 3 * (i / 2) = a + d + shift + u := by
    rw [hD]
  calc
    D - i + shift + 3 * (i / 2) = a + d + shift + u := hleft
    _ < a + d + shift + u + v := hlt
    _ = D - k + shift + 3 * (k / 2) := heq

lemma cuspTop_C_gt_base {D k : ℕ} (hk : k ≤ D) :
    D < D - k + 2 + 3 * (k / 2) := by
  set q := k / 2
  have hk1 : k ≤ 1 + 3 * q := by
    rcases mod_two_dichotomy k with he | ho
    · have hk2 : k = 2 * q := even_eq_two_mul k he
      rw [hk2]
      exact le_trans (Nat.mul_le_mul_right q (by decide : (2 : ℕ) ≤ 3))
        (Nat.le_add_left (3 * q) 1)
    · have hk2 : k = 2 * q + 1 := odd_eq_two_mul_add_one k ho
      rw [hk2, Nat.add_comm (1 : ℕ) (3 * q)]
      exact Nat.add_le_add_right (Nat.mul_le_mul_right q (by decide : (2 : ℕ) ≤ 3)) 1
  have hstep : k + 1 ≤ 2 + 3 * q := by
    calc
      k + 1 ≤ (1 + 3 * q) + 1 := Nat.add_le_add_right hk1 1
      _ = 1 + (3 * q + 1) := by rw [Nat.add_assoc]
      _ = 1 + (1 + 3 * q) := by rw [Nat.add_comm (3 * q) 1]
      _ = (1 + 1) + 3 * q := by rw [← Nat.add_assoc]
      _ = 2 + 3 * q := by rw [show (1 + 1 : ℕ) = 2 by decide]
  have hle : (D - k) + (k + 1) ≤ (D - k) + (2 + 3 * q) :=
    Nat.add_le_add_left hstep (D - k)
  have hle2 : D + 1 ≤ (D - k) + (2 + 3 * q) := by
    rw [← Nat.add_assoc, Nat.sub_add_cancel hk] at hle
    exact hle
  have hle3 : D + 1 ≤ D - k + 2 + 3 * q := by
    rw [← Nat.add_assoc] at hle2
    exact hle2
  exact Nat.lt_of_succ_le hle3

lemma centreAlphaBound_front_A {D i : ℕ} (hi : i ≤ D) (he : i % 2 = 0) :
    centreAlphaBound D (D - i) = i / 2 := by
  unfold centreAlphaBound
  rw [Nat.sub_sub_self hi]
  set q := i / 2
  have hi2 : i = 2 * q := even_eq_two_mul i he
  calc
    (i + 1) / 2 = (2 * q + 1) / 2 := by rw [hi2]
    _ = (1 + 2 * q) / 2 := by rw [Nat.add_comm]
    _ = 1 / 2 + q := Nat.add_mul_div_left 1 q (by decide : 0 < 2)
    _ = q := by rw [Nat.div_eq_of_lt (by decide : (1 : ℕ) < 2), Nat.zero_add]

lemma centreBetaBound_front_A {D i : ℕ} (hi : i ≤ D) :
    centreBetaBound D (D - i) = i / 2 := by
  unfold centreBetaBound
  rw [Nat.sub_sub_self hi]

lemma centreAlphaBound_front_B {D j : ℕ} (hj : j ≤ D) :
    centreAlphaBound D (D - j + 1) = j / 2 := by
  unfold centreAlphaBound
  have hsub : D - (D - j + 1) = j - 1 := by
    rw [Nat.sub_add_eq, Nat.sub_sub_self hj]
  by_cases hj0 : j = 0
  · subst hj0
    rw [hsub, Nat.zero_sub, Nat.zero_add, Nat.zero_div]
  · rw [hsub, Nat.sub_add_cancel (Nat.one_le_iff_ne_zero.mpr hj0)]

lemma centreBetaBound_front_B {D j : ℕ} (hj : j ≤ D) (ho : j % 2 = 1) :
    centreBetaBound D (D - j + 1) = j / 2 := by
  unfold centreBetaBound
  have hsub : D - (D - j + 1) = j - 1 := by
    rw [Nat.sub_add_eq, Nat.sub_sub_self hj]
  rw [hsub]
  have hd := odd_eq_two_mul_add_one j ho
  conv_lhs => rw [hd]
  rw [Nat.add_sub_cancel, Nat.mul_div_cancel_left _ (by decide : 0 < 2)]

lemma centreBounds_zero_of_gt {D T : ℕ} (h : D < T) :
    centreAlphaBound D T = 0 ∧ centreBetaBound D T = 0 := by
  have h0 : D - T = 0 := Nat.sub_eq_zero_of_le (Nat.le_of_lt h)
  refine ⟨?_, ?_⟩
  · unfold centreAlphaBound
    rw [h0, Nat.zero_add]
  · unfold centreBetaBound
    rw [h0, Nat.zero_div]

lemma polynomial_eq_zero_of_deg (p : Polynomial ℤ) :
    p = 0 ↔ p.natDegree = 0 ∧ p.coeff 0 = 0 := by
  constructor
  · intro hp
    simp [hp]
  · rintro ⟨hnd, hc⟩
    ext n
    by_cases hn : n = 0
    · simp [hn, hc]
    · exact coeff_eq_zero_of_natDegree_lt (by
        rw [hnd]
        exact Nat.pos_of_ne_zero hn)

def seriesFront (D shift : ℕ) (p : Polynomial ℤ) : ℕ :=
  if p.natDegree = 0 ∧ p.coeff 0 = 0 then D + 3 else D - p.natDegree + shift

lemma seriesFront_of_zero {D shift : ℕ} :
    seriesFront D shift (0 : Polynomial ℤ) = D + 3 := by
  rw [seriesFront, if_pos]
  simp

lemma seriesFront_of_ne {D shift : ℕ} {p : Polynomial ℤ} (hp : p ≠ 0) :
    seriesFront D shift p = D - p.natDegree + shift := by
  rw [seriesFront, if_neg]
  intro h
  exact hp ((polynomial_eq_zero_of_deg p).mpr h)

lemma seriesFront_lt_sentinel {D shift : ℕ} {p : Polynomial ℤ} (hsh : shift ≤ 2)
    (hp : p ≠ 0) (_hD : p.natDegree ≤ D) :
    seriesFront D shift p < D + 3 := by
  rw [seriesFront_of_ne hp]
  have hle : D - p.natDegree + shift ≤ D + 2 :=
    le_trans (Nat.add_le_add_right (Nat.sub_le D p.natDegree) shift)
      (Nat.add_le_add_left hsh D)
  exact Nat.lt_succ_of_le hle

lemma seriesUpTo_of_zero (N D shift residue : ℕ) :
    seriesUpTo N D shift residue (0 : Polynomial ℤ) = 0 := by
  classical
  unfold seriesUpTo
  refine Finset.sum_eq_zero ?_
  intro i _hi
  by_cases hres : i % 2 = residue
  · rw [if_pos hres, coeff_zero, map_zero, mul_assoc, zero_mul]
  · rw [if_neg hres]

lemma seriesUpTo_coeff_cuspTop {N D shift residue : ℕ} {p : Polynomial ℤ}
    (hN : p.natDegree ≤ N) (hD : N ≤ D) (hresk : p.natDegree % 2 = residue) :
    (seriesUpTo N D shift residue p).coeff
        (D - p.natDegree + shift + 3 * (p.natDegree / 2)) =
      p.coeff p.natDegree := by
  classical
  set k := p.natDegree
  set T := D - k + shift + 3 * (k / 2)
  rw [seriesUpTo, finset_sum_coeff]
  have hmem : k ∈ Finset.range (N + 1) := Finset.mem_range.mpr (Nat.lt_succ_of_le hN)
  have hsingle :
      (∑ b ∈ Finset.range (N + 1),
          (if b % 2 = residue then
              C (p.coeff b) * X ^ (D - b + shift) * cuspPoly ^ (b / 2)
            else (0 : Polynomial ℤ)).coeff T) =
        (if k % 2 = residue then
            C (p.coeff k) * X ^ (D - k + shift) * cuspPoly ^ (k / 2)
          else (0 : Polynomial ℤ)).coeff T := by
    refine @Finset.sum_eq_single ℕ ℤ _ (Finset.range (N + 1))
        (fun i => (if i % 2 = residue then
            C (p.coeff i) * X ^ (D - i + shift) * cuspPoly ^ (i / 2)
          else (0 : Polynomial ℤ)).coeff T) k ?_ ?_
    · intro b _hb hne
      show (if b % 2 = residue then
          C (p.coeff b) * X ^ (D - b + shift) * cuspPoly ^ (b / 2)
        else (0 : Polynomial ℤ)).coeff T = 0
      by_cases hres : b % 2 = residue
      · rw [if_pos hres]
        by_cases hc : p.coeff b = 0
        · rw [hc, map_zero, mul_assoc, zero_mul, coeff_zero]
        · have hle : b ≤ k := le_natDegree_of_ne_zero hc
          have hltb : b < k := lt_of_le_of_ne hle hne
          have hpar : (k - b) % 2 = 0 :=
            mod_two_sub (le_of_lt hltb) (by rw [hresk, hres])
          have htop := cuspTop_same_lt (shift := shift) (le_trans hN hD) hltb hpar
          apply coeff_eq_zero_of_natDegree_lt
          rw [natDegree_term hc]
          exact htop
      · rw [if_neg hres, coeff_zero]
    · intro hnot
      exact absurd hmem hnot
  rw [hsingle, if_pos hresk, coeff_term_top]

lemma seriesUpTo_coeff_high {N D shift residue T : ℕ} {p : Polynomial ℤ}
    (_hN : p.natDegree ≤ N) (_hD : N ≤ D)
    (h : ∀ b, p.coeff b ≠ 0 → b % 2 = residue → D - b + shift + 3 * (b / 2) < T) :
    (seriesUpTo N D shift residue p).coeff T = 0 := by
  classical
  rw [seriesUpTo, finset_sum_coeff]
  refine Finset.sum_eq_zero ?_
  intro i _hi
  by_cases hres : i % 2 = residue
  · rw [if_pos hres]
    by_cases hc : p.coeff i = 0
    · rw [hc, map_zero, mul_assoc, zero_mul, coeff_zero]
    · apply coeff_eq_zero_of_natDegree_lt
      rw [natDegree_term hc]
      exact h i hc hres
  · rw [if_neg hres, coeff_zero]

def IsBitCoeff (p : Polynomial ℤ) : Prop := ∀ n, p.coeff n = 0 ∨ p.coeff n = 1

lemma IsBitCoeff.leading_one {p : Polynomial ℤ} (h : IsBitCoeff p) (hp : p ≠ 0) :
    p.coeff p.natDegree = 1 := by
  have hne : p.leadingCoeff ≠ 0 := (leadingCoeff_eq_zero).not.mpr hp
  rw [leadingCoeff] at hne
  rcases h p.natDegree with h0 | h1
  · exact absurd h0 hne
  · exact h1

noncomputable def reducedAlpha (D : ℕ) (A B Cv : Polynomial ℤ) : Polynomial ℤ :=
  seriesUpTo D D 0 0 A + seriesUpTo D D 1 0 B + seriesUpTo D D 2 0 Cv

noncomputable def reducedBeta (D : ℕ) (A B Cv : Polynomial ℤ) : Polynomial ℤ :=
  seriesUpTo D D 0 1 A + seriesUpTo D D 1 1 B + seriesUpTo D D 2 1 Cv

lemma coeff_reducedAlpha (D : ℕ) (A B Cv : Polynomial ℤ) (j : ℕ) :
    (reducedAlpha D A B Cv).coeff j =
      (seriesUpTo D D 0 0 A).coeff j + (seriesUpTo D D 1 0 B).coeff j +
        (seriesUpTo D D 2 0 Cv).coeff j := by
  simp [reducedAlpha, coeff_add, add_assoc]

lemma coeff_reducedBeta (D : ℕ) (A B Cv : Polynomial ℤ) (j : ℕ) :
    (reducedBeta D A B Cv).coeff j =
      (seriesUpTo D D 0 1 A).coeff j + (seriesUpTo D D 1 1 B).coeff j +
        (seriesUpTo D D 2 1 Cv).coeff j := by
  simp [reducedBeta, coeff_add, add_assoc]

lemma signed_at_A_minimum (D : ℕ) (A B Cv : Polynomial ℤ)
    (hA : IsBitCoeff A) (_hB : IsBitCoeff B) (hCv : IsBitCoeff Cv)
    (hDA : A.natDegree ≤ D) (hDB : B.natDegree ≤ D) (hDC : Cv.natDegree ≤ D)
    (hpA : A ≠ 0)
    (hAB : seriesFront D 0 A ≤ seriesFront D 1 B)
    (hAC : seriesFront D 0 A ≤ seriesFront D 2 Cv) :
    (∃ j q s : ℕ, (reducedAlpha D A B Cv).coeff j = (-1 : ℤ) ^ s * 2 ^ q ∧
        centreAlphaBound D j = q) ∨
    (∃ j q s : ℕ, (reducedBeta D A B Cv).coeff j = (-1 : ℤ) ^ s * 2 ^ q ∧
        centreBetaBound D j = q) := by
  classical
  set i := A.natDegree
  set q := i / 2
  set L := seriesFront D 0 A
  have hfA : L = D - i := by
    change seriesFront D 0 A = D - i
    rw [seriesFront_of_ne hpA, Nat.add_zero]
  have hiD : i ≤ D := hDA
  have hAser : (seriesUpTo D D 0 (i % 2) A).coeff L = (-(2 : ℤ)) ^ q := by
    have hform :=
      seriesUpTo_coeff_front (shift := 0) (residue := i % 2) hDA (le_refl D) hpA
    rw [Nat.add_zero, ← hfA, if_pos rfl, IsBitCoeff.leading_one hA hpA, one_mul] at hform
    exact hform
  have hBser : (seriesUpTo D D 1 (i % 2) B).coeff L = 0 := by
    by_cases hB0 : B = 0
    · rw [hB0, seriesUpTo_of_zero, coeff_zero]
    · by_cases heq : seriesFront D 1 B = L
      · have hdeg : B.natDegree = i + 1 := by
          have hEq : D - i = D - B.natDegree + 1 := by
            rw [seriesFront_of_ne hB0] at heq
            rw [hfA] at heq
            exact heq.symm
          exact degree_of_equal_front hiD hDB hEq
        have hpar : B.natDegree % 2 ≠ i % 2 := by rw [hdeg]; exact mod_two_succ_ne i
        have hform :=
          seriesUpTo_coeff_front (shift := 1) (residue := i % 2) hDB (le_refl D) hB0
        have hidx : D - B.natDegree + 1 = L := by
          rw [seriesFront_of_ne hB0] at heq
          exact heq
        rw [← hidx, hform, if_neg hpar]
      · have hlt : L < D - B.natDegree + 1 := by
          rw [← seriesFront_of_ne hB0]
          exact lt_of_le_of_ne hAB (by
            intro h
            exact heq h.symm)
        exact seriesUpTo_coeff_of_front_gt hDB (le_refl D) (Or.inr hlt)
  have hCser : (seriesUpTo D D 2 (i % 2) Cv).coeff L =
      if Cv ≠ 0 ∧ seriesFront D 2 Cv = L then (-(2 : ℤ)) ^ (q + 1) else 0 := by
    by_cases htie : Cv ≠ 0 ∧ seriesFront D 2 Cv = L
    · rw [if_pos htie]
      rcases htie with ⟨hC0, heq⟩
      have hdeg : Cv.natDegree = i + 2 := by
        have hEq : D - i = D - Cv.natDegree + 2 := by
          rw [seriesFront_of_ne hC0] at heq
          rw [hfA] at heq
          exact heq.symm
        exact degree_of_equal_front hiD hDC hEq
      have hpar : Cv.natDegree % 2 = i % 2 := by rw [hdeg, mod_two_add_two]
      have hform :=
        seriesUpTo_coeff_front (shift := 2) (residue := i % 2) hDC (le_refl D) hC0
      have hidx : D - Cv.natDegree + 2 = L := by
        rw [seriesFront_of_ne hC0] at heq
        exact heq
      rw [← hidx, hform, if_pos hpar, IsBitCoeff.leading_one hCv hC0, one_mul, hdeg,
        div_two_add_two]
    · rw [if_neg htie]
      by_cases hC0 : Cv = 0
      · rw [hC0, seriesUpTo_of_zero, coeff_zero]
      · have hlt : L < D - Cv.natDegree + 2 := by
          rw [← seriesFront_of_ne hC0]
          exact lt_of_le_of_ne hAC (by
            intro heq
            exact htie ⟨hC0, heq.symm⟩)
        exact seriesUpTo_coeff_of_front_gt hDC (le_refl D) (Or.inr hlt)
  by_cases he : i % 2 = 0
  · left
    rw [he] at hAser hBser hCser
    by_cases htie : Cv ≠ 0 ∧ seriesFront D 2 Cv = L
    · refine ⟨D - i, q, q + 1, ?_, centreAlphaBound_front_A hiD he⟩
      rw [← hfA]
      rw [coeff_reducedAlpha, hAser, hBser, hCser, if_pos htie, add_zero]
      exact neg_two_pow_succ_sum q
    · refine ⟨D - i, q, q, ?_, centreAlphaBound_front_A hiD he⟩
      rw [← hfA]
      rw [coeff_reducedAlpha, hAser, hBser, hCser, if_neg htie, add_zero, add_zero,
        neg_two_pow_eq]
  · have ho : i % 2 = 1 := by
      rcases mod_two_dichotomy i with h0 | h1
      · exact absurd h0 he
      · exact h1
    right
    rw [ho] at hAser hBser hCser
    by_cases htie : Cv ≠ 0 ∧ seriesFront D 2 Cv = L
    · refine ⟨D - i, q, q + 1, ?_, centreBetaBound_front_A hiD⟩
      rw [← hfA]
      rw [coeff_reducedBeta, hAser, hBser, hCser, if_pos htie, add_zero]
      exact neg_two_pow_succ_sum q
    · refine ⟨D - i, q, q, ?_, centreBetaBound_front_A hiD⟩
      rw [← hfA]
      rw [coeff_reducedBeta, hAser, hBser, hCser, if_neg htie, add_zero, add_zero,
        neg_two_pow_eq]

lemma signed_at_B_minimum (D : ℕ) (A B Cv : Polynomial ℤ)
    (_hA : IsBitCoeff A) (_hB : IsBitCoeff B) (_hCv : IsBitCoeff Cv)
    (hDA : A.natDegree ≤ D) (hDB : B.natDegree ≤ D) (hDC : Cv.natDegree ≤ D)
    (hpB : B ≠ 0)
    (hBA : seriesFront D 1 B ≤ seriesFront D 0 A)
    (hBC : seriesFront D 1 B ≤ seriesFront D 2 Cv) :
    (∃ j q s : ℕ, (reducedAlpha D A B Cv).coeff j = (-1 : ℤ) ^ s * 2 ^ q ∧
        centreAlphaBound D j = q) ∨
    (∃ j q s : ℕ, (reducedBeta D A B Cv).coeff j = (-1 : ℤ) ^ s * 2 ^ q ∧
        centreBetaBound D j = q) := by
  classical
  set j := B.natDegree
  set q := j / 2
  set L := seriesFront D 1 B
  have hfB : L = D - j + 1 := seriesFront_of_ne hpB
  have hjD : j ≤ D := hDB
  have hBser : (seriesUpTo D D 1 (j % 2) B).coeff L = (-(2 : ℤ)) ^ q := by
    have hform :=
      seriesUpTo_coeff_front (shift := 1) (residue := j % 2) hDB (le_refl D) hpB
    rw [← hfB, if_pos rfl, IsBitCoeff.leading_one _hB hpB, one_mul] at hform
    exact hform
  have hAser : (seriesUpTo D D 0 (j % 2) A).coeff L = 0 := by
    by_cases hA0 : A = 0
    · rw [hA0, seriesUpTo_of_zero, coeff_zero]
    · by_cases heq : seriesFront D 0 A = L
      · have hdeg : A.natDegree + 1 = j := by
          have hEq : D - A.natDegree = D - j + 1 := by
            rw [seriesFront_of_ne hA0, Nat.add_zero] at heq
            rw [hfB] at heq
            exact heq
          have hk := degree_of_equal_front hDA hjD hEq
          exact hk.symm
        have hpar : A.natDegree % 2 ≠ j % 2 := by
          have : j = A.natDegree + 1 := hdeg.symm
          rw [this]
          exact (mod_two_succ_ne A.natDegree).symm
        have hform :=
          seriesUpTo_coeff_front (shift := 0) (residue := j % 2) hDA (le_refl D) hA0
        have hidx : D - A.natDegree + 0 = L := by
          rw [seriesFront_of_ne hA0] at heq
          exact heq
        rw [← hidx, hform, if_neg hpar]
      · have hlt : L < D - A.natDegree + 0 := by
          rw [← seriesFront_of_ne hA0]
          exact lt_of_le_of_ne hBA (by
            intro h
            exact heq h.symm)
        exact seriesUpTo_coeff_of_front_gt hDA (le_refl D) (Or.inr hlt)
  have hCser : (seriesUpTo D D 2 (j % 2) Cv).coeff L = 0 := by
    by_cases hC0 : Cv = 0
    · rw [hC0, seriesUpTo_of_zero, coeff_zero]
    · by_cases heq : seriesFront D 2 Cv = L
      · have hdeg : Cv.natDegree = j + 1 := by
          have hEq : D - j = D - Cv.natDegree + 1 := by
            have hraw : D - Cv.natDegree + 2 = D - j + 1 := by
              rw [seriesFront_of_ne hC0, hfB] at heq
              exact heq
            have hsucc : D - Cv.natDegree + 1 + 1 = D - j + 1 := by
              rw [Nat.add_assoc, show (1 + 1 : ℕ) = 2 by decide]
              exact hraw
            exact (Nat.add_right_cancel hsucc).symm
          exact degree_of_equal_front hjD hDC hEq
        have hpar : Cv.natDegree % 2 ≠ j % 2 := by rw [hdeg]; exact mod_two_succ_ne j
        have hform :=
          seriesUpTo_coeff_front (shift := 2) (residue := j % 2) hDC (le_refl D) hC0
        have hidx : D - Cv.natDegree + 2 = L := by
          rw [seriesFront_of_ne hC0] at heq
          exact heq
        rw [← hidx, hform, if_neg hpar]
      · have hlt : L < D - Cv.natDegree + 2 := by
          rw [← seriesFront_of_ne hC0]
          exact lt_of_le_of_ne hBC (by
            intro h
            exact heq h.symm)
        exact seriesUpTo_coeff_of_front_gt hDC (le_refl D) (Or.inr hlt)
  by_cases he : j % 2 = 0
  · left
    rw [he] at hAser hBser hCser
    refine ⟨D - j + 1, q, q, ?_, ?_⟩
    · rw [hfB] at hAser hBser hCser
      rw [coeff_reducedAlpha, hAser, hBser, hCser, zero_add, add_zero, neg_two_pow_eq]
    · rw [centreAlphaBound_front_B hjD]
  · have ho : j % 2 = 1 := by
      rcases mod_two_dichotomy j with h0 | h1
      · exact absurd h0 he
      · exact h1
    right
    rw [ho] at hAser hBser hCser
    refine ⟨D - j + 1, q, q, ?_, centreBetaBound_front_B hjD ho⟩
    rw [hfB] at hAser hBser hCser
    rw [coeff_reducedBeta, hAser, hBser, hCser, zero_add, add_zero, neg_two_pow_eq]

lemma signed_at_C_minimum (D : ℕ) (A B Cv : Polynomial ℤ)
    (_hA : IsBitCoeff A) (_hB : IsBitCoeff B) (hCv : IsBitCoeff Cv)
    (hDA : A.natDegree ≤ D) (hDB : B.natDegree ≤ D) (hDC : Cv.natDegree ≤ D)
    (hpC : Cv ≠ 0)
    (hCA : seriesFront D 2 Cv < seriesFront D 0 A)
    (hCB : seriesFront D 2 Cv < seriesFront D 1 B) :
    (∃ j q s : ℕ, (reducedAlpha D A B Cv).coeff j = (-1 : ℤ) ^ s * 2 ^ q ∧
        centreAlphaBound D j = q) ∨
    (∃ j q s : ℕ, (reducedBeta D A B Cv).coeff j = (-1 : ℤ) ^ s * 2 ^ q ∧
        centreBetaBound D j = q) := by
  classical
  set k := Cv.natDegree
  have hkD : k ≤ D := hDC
  set T := D - k + 2 + 3 * (k / 2)
  have hTgt : D < T := cuspTop_C_gt_base hkD
  have hbounds := centreBounds_zero_of_gt hTgt
  have hCser : (seriesUpTo D D 2 (k % 2) Cv).coeff T = 1 := by
    rw [seriesUpTo_coeff_cuspTop hDC (le_refl D) rfl, IsBitCoeff.leading_one hCv hpC]
  have hAser : (seriesUpTo D D 0 (k % 2) A).coeff T = 0 := by
    by_cases hA0 : A = 0
    · rw [hA0, seriesUpTo_of_zero, coeff_zero]
    · have hgap : A.natDegree + 3 ≤ k := by
        have hlt : D - k + 2 < D - A.natDegree := by
          rw [seriesFront_of_ne hpC, seriesFront_of_ne hA0, Nat.add_zero] at hCA
          exact hCA
        exact degree_gap_A hDA hkD hlt
      apply seriesUpTo_coeff_high hDA (le_refl D)
      intro b hb _hres
      have hbdeg : b ≤ A.natDegree := le_natDegree_of_ne_zero hb
      have hgapb : b + 2 ≤ k := by
        have h2 : A.natDegree + 2 ≤ A.natDegree + 3 := Nat.le_succ _
        exact le_trans (Nat.add_le_add_right hbdeg 2) (le_trans h2 hgap)
      have hbk : b ≤ k := le_trans (Nat.le_add_right b 2) hgapb
      exact cuspShift_lt_C hkD hbk hgapb (Nat.zero_le 1)
  have hBser : (seriesUpTo D D 1 (k % 2) B).coeff T = 0 := by
    by_cases hB0 : B = 0
    · rw [hB0, seriesUpTo_of_zero, coeff_zero]
    · have hgap : B.natDegree + 2 ≤ k := by
        have hlt : D - k + 2 < D - B.natDegree + 1 := by
          rw [seriesFront_of_ne hpC, seriesFront_of_ne hB0] at hCB
          exact hCB
        exact degree_gap_B hDB hkD hlt
      apply seriesUpTo_coeff_high hDB (le_refl D)
      intro b hb _hres
      have hbdeg : b ≤ B.natDegree := le_natDegree_of_ne_zero hb
      have hgapb : b + 2 ≤ k := le_trans (Nat.add_le_add_right hbdeg 2) hgap
      have hbk : b ≤ k := le_trans (Nat.le_add_right b 2) hgapb
      exact cuspShift_lt_C hkD hbk hgapb (by decide : (1 : ℕ) ≤ 1)
  rcases mod_two_dichotomy k with he | ho
  · left
    rw [he] at hAser hBser hCser
    refine ⟨T, 0, 0, ?_, hbounds.1⟩
    rw [coeff_reducedAlpha, hAser, hBser, hCser, zero_add, zero_add]
    norm_num
  · right
    rw [ho] at hAser hBser hCser
    refine ⟨T, 0, 0, ?_, hbounds.2⟩
    rw [coeff_reducedBeta, hAser, hBser, hCser, zero_add, zero_add]
    norm_num

/-- A nonzero `0`-`1` form has a coefficient `(-1)^s · 2^q` at an index whose
centre bound is exactly `q`. -/
theorem bitReduced_signed_bound (D : ℕ) (A B Cv : Polynomial ℤ)
    (hA : IsBitCoeff A) (hB : IsBitCoeff B) (hCv : IsBitCoeff Cv)
    (hDA : A.natDegree ≤ D) (hDB : B.natDegree ≤ D) (hDC : Cv.natDegree ≤ D)
    (hne : A ≠ 0 ∨ B ≠ 0 ∨ Cv ≠ 0) :
    (∃ j q s : ℕ, (reducedAlpha D A B Cv).coeff j = (-1 : ℤ) ^ s * 2 ^ q ∧
        centreAlphaBound D j = q) ∨
    (∃ j q s : ℕ, (reducedBeta D A B Cv).coeff j = (-1 : ℤ) ^ s * 2 ^ q ∧
        centreBetaBound D j = q) := by
  classical
  by_cases hAmin : A ≠ 0 ∧ seriesFront D 0 A ≤ seriesFront D 1 B ∧
      seriesFront D 0 A ≤ seriesFront D 2 Cv
  · rcases hAmin with ⟨hpA, hAB, hAC⟩
    exact signed_at_A_minimum D A B Cv hA hB hCv hDA hDB hDC hpA hAB hAC
  · by_cases hBmin : B ≠ 0 ∧ seriesFront D 1 B ≤ seriesFront D 0 A ∧
        seriesFront D 1 B ≤ seriesFront D 2 Cv
    · rcases hBmin with ⟨hpB, hBA, hBC⟩
      exact signed_at_B_minimum D A B Cv hA hB hCv hDA hDB hDC hpB hBA hBC
    · have hpC : Cv ≠ 0 := by
        intro hC0
        have hfC : seriesFront D 2 Cv = D + 3 := by rw [hC0, seriesFront_of_zero]
        have hAsent (hAn : A ≠ 0) : seriesFront D 0 A ≤ D + 3 :=
          le_of_lt (seriesFront_lt_sentinel (by decide : (0 : ℕ) ≤ 2) hAn hDA)
        have hBsent (hBn : B ≠ 0) : seriesFront D 1 B ≤ D + 3 :=
          le_of_lt (seriesFront_lt_sentinel (by decide : (1 : ℕ) ≤ 2) hBn hDB)
        have hAorB : A ≠ 0 ∨ B ≠ 0 := by
          rcases hne with hAn | hBn | hCn
          · exact Or.inl hAn
          · exact Or.inr hBn
          · exact absurd hC0 hCn
        rcases hAorB with hAn | hBn
        · by_cases hB0 : B = 0
          · have hBz : seriesFront D 1 B = D + 3 := by rw [hB0, seriesFront_of_zero]
            have hAleB : seriesFront D 0 A ≤ seriesFront D 1 B := by
              rw [hBz]; exact hAsent hAn
            have hAleC : seriesFront D 0 A ≤ seriesFront D 2 Cv := by
              rw [hfC]; exact hAsent hAn
            exact hAmin ⟨hAn, hAleB, hAleC⟩
          · by_cases hle : seriesFront D 0 A ≤ seriesFront D 1 B
            · have hAleC : seriesFront D 0 A ≤ seriesFront D 2 Cv := by
                rw [hfC]; exact hAsent hAn
              exact hAmin ⟨hAn, hle, hAleC⟩
            · have hBleA : seriesFront D 1 B ≤ seriesFront D 0 A :=
                le_of_lt ((Nat.not_le).mp hle)
              have hBleC : seriesFront D 1 B ≤ seriesFront D 2 Cv := by
                rw [hfC]; exact hBsent hB0
              exact hBmin ⟨hB0, hBleA, hBleC⟩
        · by_cases hA0 : A = 0
          · have hAz : seriesFront D 0 A = D + 3 := by rw [hA0, seriesFront_of_zero]
            have hBleA : seriesFront D 1 B ≤ seriesFront D 0 A := by
              rw [hAz]; exact hBsent hBn
            have hBleC : seriesFront D 1 B ≤ seriesFront D 2 Cv := by
              rw [hfC]; exact hBsent hBn
            exact hBmin ⟨hBn, hBleA, hBleC⟩
          · by_cases hle : seriesFront D 0 A ≤ seriesFront D 1 B
            · have hAleC : seriesFront D 0 A ≤ seriesFront D 2 Cv := by
                rw [hfC]; exact hAsent hA0
              exact hAmin ⟨hA0, hle, hAleC⟩
            · have hBleA : seriesFront D 1 B ≤ seriesFront D 0 A :=
                le_of_lt ((Nat.not_le).mp hle)
              have hBleC : seriesFront D 1 B ≤ seriesFront D 2 Cv := by
                rw [hfC]; exact hBsent hBn
              exact hBmin ⟨hBn, hBleA, hBleC⟩
      have hltA : seriesFront D 2 Cv < seriesFront D 0 A := by
        by_cases hA0 : A = 0
        · rw [hA0, seriesFront_of_zero]
          exact seriesFront_lt_sentinel (by decide : (2 : ℕ) ≤ 2) hpC hDC
        · by_contra hge
          have hle : seriesFront D 0 A ≤ seriesFront D 2 Cv := (Nat.not_lt).mp hge
          have hflt : seriesFront D 1 B < seriesFront D 0 A := by
            by_contra hnot
            exact hAmin ⟨hA0, (Nat.not_lt).mp hnot, hle⟩
          have hBne : B ≠ 0 := by
            intro hB0
            rw [hB0, seriesFront_of_zero] at hflt
            exact lt_irrefl _ (lt_trans hflt
              (seriesFront_lt_sentinel (by decide) hA0 hDA))
          exact hBmin ⟨hBne, le_of_lt hflt, le_of_lt (lt_of_lt_of_le hflt hle)⟩
      have hltB : seriesFront D 2 Cv < seriesFront D 1 B := by
        by_cases hB0 : B = 0
        · rw [hB0, seriesFront_of_zero]
          exact seriesFront_lt_sentinel (by decide : (2 : ℕ) ≤ 2) hpC hDC
        · by_contra hge
          have hleBC : seriesFront D 1 B ≤ seriesFront D 2 Cv := (Nat.not_lt).mp hge
          by_cases hBA : seriesFront D 1 B ≤ seriesFront D 0 A
          · exact hBmin ⟨hB0, hBA, hleBC⟩
          · have hAflt : seriesFront D 0 A < seriesFront D 1 B := (Nat.not_le).mp hBA
            exact absurd (lt_trans hltA hAflt) ((Nat.not_lt).mpr hleBC)
      exact signed_at_C_minimum D A B Cv hA hB hCv hDA hDB hDC hpC hltA hltB

/-!
## Rees bridge

A normal form is sent to `D₊(Xt)` by reading `V` as `Yt/Xt`. Clearing the
denominator `(Xt)^D` produces one Rees numerator. On `Y² = X³ − 2` that
numerator is the `0`-`1` series `α + Y·β`. Vanishing in the chart means a
power of `Xt` puts this numerator in the scalar ideal `(2)`, so
`X^m·α = 2·αₛ` and `X^m·β = 2·βₛ` with `αₛ + Y·βₛ ∈ I^{D+m}`.
`bitReduced_signed_bound` supplies a coefficient `(-1)^s·2^q` at an index
whose centre bound is `q`, and that coefficient cannot be divisible by `2`
once more.
-/

noncomputable abbrev vI : Ideal (surfaceRing valuationOneCurve) :=
  numeralCentreIdeal valuationOneCurve 0 0

noncomputable abbrev vX : surfaceRing valuationOneCurve :=
  surfaceNumeralX valuationOneCurve 0

noncomputable abbrev vY : surfaceRing valuationOneCurve :=
  surfaceNumeralY valuationOneCurve 0

noncomputable def bitLiftMv (c : MvPolynomial (Fin 2) (ZMod 2)) : S :=
  ∑ m ∈ c.support, MvPolynomial.monomial m (1 : ℤ_[2])

lemma bitLiftMv_coeff (c : MvPolynomial (Fin 2) (ZMod 2)) (m : Fin 2 →₀ ℕ) :
    MvPolynomial.coeff m (bitLiftMv c) =
      if MvPolynomial.coeff m c = (0 : ZMod 2) then (0 : ℤ_[2]) else 1 := by
  classical
  rw [bitLiftMv, MvPolynomial.coeff_sum]
  by_cases hm : m ∈ c.support
  · rw [Finset.sum_eq_single m]
    · rw [MvPolynomial.coeff_monomial, if_pos rfl]
      have hne : MvPolynomial.coeff m c ≠ 0 := (MvPolynomial.mem_support_iff).mp hm
      simp [hne]
    · intro b _hb hne
      rw [MvPolynomial.coeff_monomial, if_neg hne]
    · intro hnot
      exact absurd hm hnot
  · have h0 : MvPolynomial.coeff m c = 0 := by
      simpa [MvPolynomial.mem_support_iff] using hm
    rw [if_pos h0]
    refine Finset.sum_eq_zero ?_
    intro b hb
    have hne : b ≠ m := by
      intro heq
      apply hm
      simpa [heq] using hb
    rw [MvPolynomial.coeff_monomial, if_neg hne]

lemma zmod2_dichotomy (a : ZMod 2) : a = 0 ∨ a = 1 := by
  fin_cases a <;> simp

lemma map_toZMod_bitLift (c : MvPolynomial (Fin 2) (ZMod 2)) :
    MvPolynomial.map (PadicInt.toZMod : ℤ_[2] →+* ZMod 2) (bitLiftMv c) = c := by
  classical
  ext m
  rw [MvPolynomial.coeff_map, bitLiftMv_coeff]
  rcases zmod2_dichotomy (MvPolynomial.coeff m c) with h0 | h1
  · simp [h0]
  · simp [h1, map_one]

lemma coeffModTwoEquiv_mk_apply (s : S) :
    coeffModTwoEquiv
        (Ideal.Quotient.mk (Ideal.span {MvPolynomial.C (2 : ℤ_[2])}) s) =
      MvPolynomial.map (PadicInt.toZMod : ℤ_[2] →+* ZMod 2) s := by
  rw [coeffModTwoEquiv, RingEquiv.trans_apply, Ideal.quotEquivOfEq_mk,
    RingHom.quotientKerEquivOfSurjective, RingHom.quotientKerEquivOfRightInverse.apply,
    RingHom.kerLift_mk]

lemma chartScalarModTwo_mk (s : S) :
    chartScalarModTwo valuationOneCurve 0 0
        (Ideal.Quotient.mk (Ideal.span {MvPolynomial.C (2 : ℤ_[2])}) s) =
      chartScalar valuationOneCurve 0 0 s := by
  rw [chartScalarModTwo, Ideal.Quotient.lift_mk]

lemma chartFromF2_bitLift (c : MvPolynomial (Fin 2) (ZMod 2)) :
    chartFromF2Polynomial valuationOneCurve 0 0 c =
      chartScalar valuationOneCurve 0 0 (bitLiftMv c) := by
  rw [chartFromF2Polynomial, RingHom.comp_apply]
  have hsym : coeffModTwoEquiv.symm.toRingHom c =
      Ideal.Quotient.mk (Ideal.span {MvPolynomial.C (2 : ℤ_[2])}) (bitLiftMv c) := by
    apply coeffModTwoEquiv.injective
    have hcoe : coeffModTwoEquiv.symm.toRingHom c = coeffModTwoEquiv.symm c :=
      congrArg (fun f : _ → _ => f c)
        (RingEquiv.coe_toRingHom coeffModTwoEquiv.symm)
    rw [hcoe, RingEquiv.apply_symm_apply, coeffModTwoEquiv_mk_apply, map_toZMod_bitLift]
  rw [hsym, chartScalarModTwo_mk]

noncomputable def vCoeff (p : chartVPoly) (i : ℕ) :
    MvPolynomial (Fin 2) (ZMod 2) :=
  MvPolynomial.coeff (Finsupp.single (0 : Fin 1) i) p

lemma fin1_eq_single (m : Fin 1 →₀ ℕ) : m = Finsupp.single 0 (m 0) := by
  refine Finsupp.ext ?_
  intro j
  fin_cases j
  simp [Finsupp.single_eq_same]

lemma vCoeff_of_degree_lt {p : chartVPoly} {i : ℕ}
    (hi : MvPolynomial.degreeOf 0 p < i) : vCoeff p i = 0 := by
  classical
  by_contra hne
  have hmem : Finsupp.single (0 : Fin 1) i ∈ p.support :=
    MvPolynomial.mem_support_iff.mpr (by
      rw [vCoeff] at hne
      exact hne)
  have hle : (Finsupp.single (0 : Fin 1) i) 0 ≤ MvPolynomial.degreeOf 0 p := by
    rw [MvPolynomial.degreeOf_eq_sup]
    exact Finset.le_sup (f := fun t : Fin 1 →₀ ℕ => t 0) hmem
  rw [Finsupp.single_eq_same] at hle
  exact not_lt_of_ge hle hi

noncomputable def bitOf (m : Fin 2 →₀ ℕ)
    (c : MvPolynomial (Fin 2) (ZMod 2)) : ℤ :=
  if MvPolynomial.coeff m c = 0 then 0 else 1

lemma bitOf_zero (m : Fin 2 →₀ ℕ) : bitOf m 0 = 0 := by
  simp [bitOf]

lemma bitLift_coeff_bitOf (m : Fin 2 →₀ ℕ) (c : MvPolynomial (Fin 2) (ZMod 2)) :
    MvPolynomial.coeff m (bitLiftMv c) = (bitOf m c : ℤ_[2]) := by
  rw [bitLiftMv_coeff, bitOf]
  by_cases h : MvPolynomial.coeff m c = 0
  · simp [h]
  · simp [h]

noncomputable def bitPolyOf (m : Fin 2 →₀ ℕ) (p : chartVPoly) : Polynomial ℤ :=
  ∑ i ∈ Finset.range (MvPolynomial.degreeOf 0 p + 1),
    Polynomial.monomial i (bitOf m (vCoeff p i))

lemma bitPoly_coeff (m : Fin 2 →₀ ℕ) (p : chartVPoly) (n : ℕ) :
    (bitPolyOf m p).coeff n = bitOf m (vCoeff p n) := by
  classical
  rw [bitPolyOf, finset_sum_coeff]
  by_cases hn : n ∈ Finset.range (MvPolynomial.degreeOf 0 p + 1)
  · rw [Finset.sum_eq_single n]
    · rw [coeff_monomial, if_pos rfl]
    · intro b _hb hne
      rw [coeff_monomial, if_neg hne]
    · intro hnot
      exact absurd hn hnot
  · have hgt : MvPolynomial.degreeOf 0 p < n := by
      have hle : MvPolynomial.degreeOf 0 p + 1 ≤ n :=
        Nat.le_of_not_gt fun hlt => hn (Finset.mem_range.mpr hlt)
      exact Nat.lt_of_succ_le hle
    rw [vCoeff_of_degree_lt hgt, bitOf_zero]
    refine Finset.sum_eq_zero ?_
    intro i hi
    have hiD : i ≤ MvPolynomial.degreeOf 0 p :=
      Nat.lt_succ_iff.mp (Finset.mem_range.mp hi)
    have hine : i ≠ n := ne_of_lt (lt_of_le_of_lt hiD hgt)
    rw [coeff_monomial, if_neg hine]

lemma bitPoly_isBit (m : Fin 2 →₀ ℕ) (p : chartVPoly) : IsBitCoeff (bitPolyOf m p) := by
  intro n
  rw [bitPoly_coeff, bitOf]
  by_cases h : MvPolynomial.coeff m (vCoeff p n) = 0
  · exact Or.inl (by simp [h])
  · exact Or.inr (by simp [h])

lemma bitPoly_natDegree_le (m : Fin 2 →₀ ℕ) (p : chartVPoly) {D : ℕ}
    (hD : MvPolynomial.degreeOf 0 p ≤ D) : (bitPolyOf m p).natDegree ≤ D := by
  rw [natDegree_le_iff_coeff_eq_zero]
  intro N hN
  rw [bitPoly_coeff]
  have hgt : MvPolynomial.degreeOf 0 p < N := lt_of_le_of_lt hD hN
  rw [vCoeff_of_degree_lt hgt, bitOf_zero]

noncomputable def chartVDegree (A B Cv : chartVPoly) : ℕ :=
  max (MvPolynomial.degreeOf 0 A)
    (max (MvPolynomial.degreeOf 0 B) (MvPolynomial.degreeOf 0 Cv))

lemma chartVDegree_A (A B Cv : chartVPoly) :
    MvPolynomial.degreeOf 0 A ≤ chartVDegree A B Cv :=
  le_max_left _ _

lemma chartVDegree_B (A B Cv : chartVPoly) :
    MvPolynomial.degreeOf 0 B ≤ chartVDegree A B Cv :=
  le_trans (le_max_left _ _) (le_max_right _ _)

lemma chartVDegree_C (A B Cv : chartVPoly) :
    MvPolynomial.degreeOf 0 Cv ≤ chartVDegree A B Cv :=
  le_trans (le_max_right _ _) (le_max_right _ _)

lemma bitPoly_of_vCoeff {p : chartVPoly} {i : ℕ} {μ : Fin 2 →₀ ℕ}
    (h : MvPolynomial.coeff μ (vCoeff p i) ≠ 0) : bitPolyOf μ p ≠ 0 := by
  intro hp
  have hcoeff : (bitPolyOf μ p).coeff i = 0 := by
    rw [hp, coeff_zero]
  rw [bitPoly_coeff, bitOf, if_neg h] at hcoeff
  exact one_ne_zero hcoeff

lemma exists_vCoeff_monomial {p : chartVPoly} (hp : p ≠ 0) :
    ∃ i : ℕ, ∃ μ : Fin 2 →₀ ℕ, MvPolynomial.coeff μ (vCoeff p i) ≠ 0 := by
  classical
  have hsup : p.support ≠ ∅ := by
    rw [Ne, MvPolynomial.support_eq_empty]
    exact hp
  obtain ⟨t, ht⟩ := Finset.nonempty_of_ne_empty hsup
  have htcoeff : MvPolynomial.coeff (Finsupp.single (0 : Fin 1) (t 0)) p ≠ 0 := by
    rw [← fin1_eq_single t]
    exact (MvPolynomial.mem_support_iff).mp ht
  have hnz : vCoeff p (t 0) ≠ 0 := by
    rw [vCoeff]
    exact htcoeff
  have hsupC : (vCoeff p (t 0)).support ≠ ∅ := by
    rw [Ne, MvPolynomial.support_eq_empty]
    exact hnz
  obtain ⟨μ, hμ⟩ := Finset.nonempty_of_ne_empty hsupC
  exact ⟨t 0, μ, (MvPolynomial.mem_support_iff).mp hμ⟩

lemma exists_bitPoly_ne (A B Cv : chartVPoly)
    (hne : A ≠ 0 ∨ B ≠ 0 ∨ Cv ≠ 0) :
    ∃ m : Fin 2 →₀ ℕ,
      bitPolyOf m A ≠ 0 ∨ bitPolyOf m B ≠ 0 ∨ bitPolyOf m Cv ≠ 0 := by
  rcases hne with hA | hB | hC
  · obtain ⟨i, μ, hμ⟩ := exists_vCoeff_monomial hA
    exact ⟨μ, Or.inl (bitPoly_of_vCoeff hμ)⟩
  · obtain ⟨i, μ, hμ⟩ := exists_vCoeff_monomial hB
    exact ⟨μ, Or.inr (Or.inl (bitPoly_of_vCoeff hμ))⟩
  · obtain ⟨i, μ, hμ⟩ := exists_vCoeff_monomial hC
    exact ⟨μ, Or.inr (Or.inr (bitPoly_of_vCoeff hμ))⟩

noncomputable def intToS : ℤ →+* S :=
  (MvPolynomial.C : ℤ_[2] →+* S).comp (Int.castRingHom ℤ_[2])

noncomputable def cuspPolyS : Polynomial S := cuspPoly.map intToS

lemma cuspPolyS_eq : cuspPolyS = X ^ 3 - C (2 : S) := by
  rw [cuspPolyS, cuspPoly_eq, Polynomial.map_add, Polynomial.map_pow, Polynomial.map_X,
    Polynomial.map_C, sub_eq_add_neg, ← C_neg]
  congr 1
  rw [intToS, RingHom.comp_apply]
  congr 1
  rw [map_neg (Int.castRingHom ℤ_[2])]
  have h2 : (Int.castRingHom ℤ_[2]) (2 : ℤ) = (2 : ℤ_[2]) := rfl
  rw [h2, map_neg]
  rfl

lemma norm_two_pow_z (q : ℕ) : ‖(2 : ℤ_[2]) ^ q‖ = (2 : ℝ) ^ (-(q : ℤ)) := by
  induction q with
  | zero => simp
  | succ q ih =>
      rw [pow_succ, PadicInt.norm_mul, ih]
      have hcast : (2 : ℤ_[2]) = ((2 : ℕ) : ℤ_[2]) := Nat.cast_two.symm
      rw [hcast, PadicInt.norm_p, mul_comm]
      exact two_zpow_succ q

lemma norm_neg_one_zpow (s : ℕ) : ‖(-1 : ℤ_[2]) ^ s‖ = (1 : ℝ) := by
  induction s with
  | zero => simp
  | succ s ih =>
      rw [pow_succ, PadicInt.norm_mul, ih, one_mul, norm_neg, norm_one]

lemma cast_signed (s q : ℕ) :
    (((-1 : ℤ) ^ s * (2 : ℤ) ^ q : ℤ) : ℤ_[2]) =
      (-1 : ℤ_[2]) ^ s * (2 : ℤ_[2]) ^ q := by
  norm_cast

lemma norm_signed_gt (q : ℕ) :
    ¬ (2 : ℝ) ^ (-(q : ℤ)) ≤ (2 : ℝ) ^ (-((q + 1 : ℕ) : ℤ)) := by
  intro hle
  rw [← two_zpow_succ q, mul_comm] at hle
  have hpos : (0 : ℝ) < (2 : ℝ) ^ (-(q : ℤ)) := by positivity
  have hmul : (2 : ℝ) ^ (-(q : ℤ)) * (1 : ℝ) ≤
      (2 : ℝ) ^ (-(q : ℤ)) * (2 : ℝ)⁻¹ := by
    simpa [mul_one] using hle
  have : (1 : ℝ) ≤ (2 : ℝ)⁻¹ := le_of_mul_le_mul_left hmul hpos
  norm_num at this

lemma not_twoAdicNormBound_signed_coeff (c : S) (μ : Fin 2 →₀ ℕ) (q s : ℕ)
    (hc : MvPolynomial.coeff μ c =
      (((-1 : ℤ) ^ s * (2 : ℤ) ^ q : ℤ) : ℤ_[2])) :
    ¬ twoAdicNormBound (q + 1) c := by
  intro hb
  have hμ := hb μ
  rw [hc, cast_signed, PadicInt.norm_mul, norm_neg_one_zpow, one_mul,
    norm_two_pow_z] at hμ
  exact norm_signed_gt q hμ

lemma nat_add_sub_add_right (a b c : ℕ) : a + c - (b + c) = a - b := by
  induction c with
  | zero => simp
  | succ c ih =>
      rw [Nat.add_succ, Nat.add_succ, Nat.succ_sub_succ, ih]

lemma centreAlphaBound_shift (D m j : ℕ) :
    centreAlphaBound (D + m) (j + m) = centreAlphaBound D j := by
  unfold centreAlphaBound
  rw [nat_add_sub_add_right]

lemma centreBetaBound_shift (D m j : ℕ) :
    centreBetaBound (D + m) (j + m) = centreBetaBound D j := by
  unfold centreBetaBound
  rw [nat_add_sub_add_right]

noncomputable def cuspPowTerm (s : S) (e q : ℕ) : Polynomial S :=
  C s * X ^ e * cuspPolyS ^ q

noncomputable def seriesUpToS (N D shift residue : ℕ) (p : chartVPoly) : Polynomial S :=
  ∑ i ∈ Finset.range (N + 1),
    if i % 2 = residue then
      cuspPowTerm (bitLiftMv (vCoeff p i)) (D - i + shift) (i / 2)
    else 0

lemma cuspPowTerm_coeff_int (c : ℤ) (e q j : ℕ) :
    (cuspPowTerm (intToS c) e q).coeff j =
      intToS ((C c * X ^ e * cuspPoly ^ q).coeff j) := by
  have hmap : ((C c * X ^ e * cuspPoly ^ q).map intToS) =
      cuspPowTerm (intToS c) e q := by
    rw [cuspPowTerm, Polynomial.map_mul, Polynomial.map_mul, Polynomial.map_pow,
      Polynomial.map_pow, Polynomial.map_C, Polynomial.map_X, cuspPolyS]
  rw [← hmap, Polynomial.coeff_map]

lemma intToS_apply (n : ℤ) : intToS n = MvPolynomial.C (n : ℤ_[2]) := by
  rw [intToS, RingHom.comp_apply]
  rfl

lemma coeff_bitLift_mul_int (μ : Fin 2 →₀ ℕ) (c : MvPolynomial (Fin 2) (ZMod 2)) (n : ℤ) :
    MvPolynomial.coeff μ (bitLiftMv c * intToS n) =
      (bitOf μ c : ℤ_[2]) * (n : ℤ_[2]) := by
  rw [intToS_apply, mul_comm, MvPolynomial.coeff_C_mul, bitLift_coeff_bitOf, mul_comm]

lemma cuspPow_coeff_map (e q j : ℕ) :
    (X ^ e * cuspPolyS ^ q).coeff j = intToS ((X ^ e * cuspPoly ^ q).coeff j) := by
  have h := cuspPowTerm_coeff_int 1 e q j
  rw [cuspPowTerm, map_one, C_1, one_mul, map_one, mul_assoc, one_mul] at h
  exact h

lemma seriesTerm_monomial (μ : Fin 2 →₀ ℕ) (c : MvPolynomial (Fin 2) (ZMod 2))
    (e q j : ℕ) :
    MvPolynomial.coeff μ ((cuspPowTerm (bitLiftMv c) e q).coeff j) =
      (bitOf μ c : ℤ_[2]) * (((X ^ e * cuspPoly ^ q).coeff j : ℤ) : ℤ_[2]) := by
  rw [cuspPowTerm, mul_assoc, coeff_C_mul, cuspPow_coeff_map, coeff_bitLift_mul_int]

lemma seriesUpToS_coeff_monomial (N D shift residue : ℕ) (p : chartVPoly)
    (μ : Fin 2 →₀ ℕ) (j : ℕ) :
    MvPolynomial.coeff μ ((seriesUpToS N D shift residue p).coeff j) =
      (((seriesUpTo N D shift residue (bitPolyOf μ p)).coeff j : ℤ) : ℤ_[2]) := by
  classical
  rw [seriesUpToS, finset_sum_coeff, MvPolynomial.coeff_sum, seriesUpTo, finset_sum_coeff,
    Int.cast_sum]
  refine Finset.sum_congr rfl ?_
  intro i _hi
  by_cases hres : i % 2 = residue
  · rw [if_pos hres, if_pos hres, bitPoly_coeff, seriesTerm_monomial, mul_assoc, coeff_C_mul,
      ← Int.cast_mul]
  · rw [if_neg hres, if_neg hres]
    simp [coeff_zero, MvPolynomial.coeff_zero]

noncomputable def chartSeriesAlpha (A B Cv : chartVPoly) : Polynomial S :=
  let D := chartVDegree A B Cv
  seriesUpToS D D 0 0 A + seriesUpToS D D 1 0 B + seriesUpToS D D 2 0 Cv

noncomputable def chartSeriesBeta (A B Cv : chartVPoly) : Polynomial S :=
  let D := chartVDegree A B Cv
  seriesUpToS D D 0 1 A + seriesUpToS D D 1 1 B + seriesUpToS D D 2 1 Cv

lemma chartSeriesAlpha_monomial (A B Cv : chartVPoly) (μ : Fin 2 →₀ ℕ) (j : ℕ) :
    MvPolynomial.coeff μ ((chartSeriesAlpha A B Cv).coeff j) =
      (((reducedAlpha (chartVDegree A B Cv) (bitPolyOf μ A) (bitPolyOf μ B)
          (bitPolyOf μ Cv)).coeff j : ℤ) : ℤ_[2]) := by
  rw [chartSeriesAlpha, coeff_add, coeff_add, MvPolynomial.coeff_add, MvPolynomial.coeff_add,
    seriesUpToS_coeff_monomial, seriesUpToS_coeff_monomial, seriesUpToS_coeff_monomial,
    coeff_reducedAlpha, Int.cast_add, Int.cast_add]

lemma chartSeriesBeta_monomial (A B Cv : chartVPoly) (μ : Fin 2 →₀ ℕ) (j : ℕ) :
    MvPolynomial.coeff μ ((chartSeriesBeta A B Cv).coeff j) =
      (((reducedBeta (chartVDegree A B Cv) (bitPolyOf μ A) (bitPolyOf μ B)
          (bitPolyOf μ Cv)).coeff j : ℤ) : ℤ_[2]) := by
  rw [chartSeriesBeta, coeff_add, coeff_add, MvPolynomial.coeff_add, MvPolynomial.coeff_add,
    seriesUpToS_coeff_monomial, seriesUpToS_coeff_monomial, seriesUpToS_coeff_monomial,
    coeff_reducedBeta, Int.cast_add, Int.cast_add]

/-- A coefficient `(-1)^s·2^q` at a centre bound `q` cannot be twice an element of `I^{D+m}`. -/
lemma twice_centre_blocks_signed (D m : ℕ) (α β αs βs : Polynomial S)
    (hα : X ^ m * α = (2 : Polynomial S) * αs)
    (hβ : X ^ m * β = (2 : Polynomial S) * βs)
    (hI : Ideal.Quotient.mk (Ideal.span {surfacePolynomial valuationOneCurve})
        (centreNormalPoly αs βs) ∈ vI ^ (D + m))
    (μ : Fin 2 →₀ ℕ) (Aμ Bμ Cμ : Polynomial ℤ)
    (hA : IsBitCoeff Aμ) (hB : IsBitCoeff Bμ) (hC : IsBitCoeff Cμ)
    (hDA : Aμ.natDegree ≤ D) (hDB : Bμ.natDegree ≤ D) (hDC : Cμ.natDegree ≤ D)
    (hne : Aμ ≠ 0 ∨ Bμ ≠ 0 ∨ Cμ ≠ 0)
    (hαμ : ∀ j, MvPolynomial.coeff μ (α.coeff j) =
      (((reducedAlpha D Aμ Bμ Cμ).coeff j : ℤ) : ℤ_[2]))
    (hβμ : ∀ j, MvPolynomial.coeff μ (β.coeff j) =
      (((reducedBeta D Aμ Bμ Cμ).coeff j : ℤ) : ℤ_[2])) : False := by
  have htwo : (2 : Polynomial S) = C (2 : S) := (map_ofNat C 2).symm
  rcases bitReduced_signed_bound D Aμ Bμ Cμ hA hB hC hDA hDB hDC hne with
      ⟨j, q, s, hc, hb⟩ | ⟨j, q, s, hc, hb⟩
  · have hbound := (centreIdeal_power_coeff_bound hI (j + m)).1
    rw [centreAlphaBound_shift, hb] at hbound
    have heq : α.coeff j = (2 : S) * αs.coeff (j + m) := by
      calc
        α.coeff j = (X ^ m * α).coeff (j + m) := (coeff_X_pow_mul α m j).symm
        _ = ((2 : Polynomial S) * αs).coeff (j + m) := by rw [hα]
        _ = (2 : S) * αs.coeff (j + m) := by rw [htwo, coeff_C_mul]
    have hnorm : twoAdicNormBound (q + 1) (α.coeff j) := by
      rw [heq]
      exact twoAdicNormBound_two_mul hbound
    exact not_twoAdicNormBound_signed_coeff (α.coeff j) μ q s (by rw [hαμ, hc]) hnorm
  · have hbound := (centreIdeal_power_coeff_bound hI (j + m)).2
    rw [centreBetaBound_shift, hb] at hbound
    have heq : β.coeff j = (2 : S) * βs.coeff (j + m) := by
      calc
        β.coeff j = (X ^ m * β).coeff (j + m) := (coeff_X_pow_mul β m j).symm
        _ = ((2 : Polynomial S) * βs).coeff (j + m) := by rw [hβ]
        _ = (2 : S) * βs.coeff (j + m) := by rw [htwo, coeff_C_mul]
    have hnorm : twoAdicNormBound (q + 1) (β.coeff j) := by
      rw [heq]
      exact twoAdicNormBound_two_mul hbound
    exact not_twoAdicNormBound_signed_coeff (β.coeff j) μ q s (by rw [hβμ, hc]) hnorm

/-!
## Surface numerator

`V` is read as `Y/X`. After clearing `(Xt)^D` and using `Y² = X³ − 2`, the
numerator is `α(X) + Y·β(X)` for the series `chartSeriesAlpha` and
`chartSeriesBeta`.
-/

lemma vY_sq : vY ^ 2 = vX ^ 3 - (2 : surfaceRing valuationOneCurve) := by
  have h := valuationOne_node_Ysq_sub_Xcu
  calc
    vY ^ 2 = vY ^ 2 - vX ^ 3 + vX ^ 3 := by ring
    _ = -(2 : surfaceRing valuationOneCurve) + vX ^ 3 := by rw [h]
    _ = vX ^ 3 - 2 := by ring

lemma vY_pow_even (q : ℕ) : vY ^ (2 * q) = (vX ^ 3 - 2) ^ q := by
  induction q with
  | zero => simp
  | succ q ih =>
      rw [Nat.mul_succ, pow_add, ih, vY_sq]
      exact (pow_succ (vX ^ 3 - (2 : surfaceRing valuationOneCurve)) q).symm

lemma vY_pow_odd (q : ℕ) : vY ^ (2 * q + 1) = vY * (vX ^ 3 - 2) ^ q := by
  rw [pow_add, pow_one, vY_pow_even]
  ring

/-- A polynomial in the surface coordinate `X`. -/
noncomputable def polyInXHom : Polynomial S →+* MvPolynomial (Fin 2) S :=
  Polynomial.eval₂RingHom MvPolynomial.C (MvPolynomial.X 0)

/-- Evaluate a polynomial of `S[X]` at the surface class of `X`. -/
noncomputable def surfaceEvalHom : Polynomial S →+* surfaceRing valuationOneCurve :=
  Polynomial.eval₂RingHom (algebraMap S (surfaceRing valuationOneCurve)) vX

lemma surfaceToCentre_polyInX (p : Polynomial S) :
    surfaceToCentrePoly (polyInXHom p) = C p := by
  have hhom :
      (surfaceToCentrePoly : MvPolynomial (Fin 2) S →+* Polynomial (Polynomial S)).comp
          polyInXHom = C := by
    refine Polynomial.ringHom_ext ?_ ?_
    · intro s
      rw [RingHom.comp_apply, polyInXHom, Polynomial.coe_eval₂RingHom, Polynomial.eval₂_C]
      simpa using surfaceToCentrePoly_C s
    · rw [RingHom.comp_apply, polyInXHom, Polynomial.coe_eval₂RingHom, Polynomial.eval₂_X]
      simpa using surfaceToCentrePoly_X
  simpa [RingHom.comp_apply] using congrArg (fun f => f p) hhom

lemma centreNormal_eq_polyInX (p : Polynomial S) :
    centreNormalPoly p 0 = polyInXHom p := by
  apply surfaceToCentrePoly.injective
  rw [surfaceToCentrePoly_normal, surfaceToCentre_polyInX, centreOfNormal, map_zero, zero_mul,
    add_zero]

lemma centreNormal_Y_eq (p : Polynomial S) :
    centreNormalPoly 0 p = polyInXHom p * MvPolynomial.X 1 := by
  apply surfaceToCentrePoly.injective
  rw [map_mul, surfaceToCentrePoly_normal, surfaceToCentre_polyInX, surfaceToCentrePoly_Y,
    centreOfNormal, map_zero, zero_add]

lemma vX_eq_mk : vX =
    Ideal.Quotient.mk (Ideal.span {surfacePolynomial valuationOneCurve})
      (MvPolynomial.X (0 : Fin 2)) := by
  simp [vX, surfaceNumeralX, map_zero, sub_zero]

lemma vY_eq_mk : vY =
    Ideal.Quotient.mk (Ideal.span {surfacePolynomial valuationOneCurve})
      (MvPolynomial.X (1 : Fin 2)) := by
  simp [vY, surfaceNumeralY, map_zero, sub_zero]

lemma surfaceEval_mk (p : Polynomial S) :
    surfaceEvalHom p =
      Ideal.Quotient.mk (Ideal.span {surfacePolynomial valuationOneCurve}) (polyInXHom p) := by
  have hhom : surfaceEvalHom =
      (Ideal.Quotient.mk (Ideal.span {surfacePolynomial valuationOneCurve})).comp polyInXHom := by
    refine Polynomial.ringHom_ext ?_ ?_
    · intro s
      simp only [RingHom.comp_apply, surfaceEvalHom, polyInXHom, Polynomial.coe_eval₂RingHom,
        Polynomial.eval₂_C]
      rfl
    · simp only [RingHom.comp_apply, surfaceEvalHom, polyInXHom, Polynomial.coe_eval₂RingHom,
        Polynomial.eval₂_X, vX_eq_mk]
  simpa [RingHom.comp_apply] using congrArg (fun f => f p) hhom

lemma centre_alpha_eval (p : Polynomial S) :
    Ideal.Quotient.mk (Ideal.span {surfacePolynomial valuationOneCurve})
        (centreNormalPoly p 0) = surfaceEvalHom p := by
  rw [centreNormal_eq_polyInX, surfaceEval_mk]

lemma centre_beta_eval (p : Polynomial S) :
    Ideal.Quotient.mk (Ideal.span {surfacePolynomial valuationOneCurve})
        (centreNormalPoly 0 p) = vY * surfaceEvalHom p := by
  rw [centreNormal_Y_eq, map_mul, vY_eq_mk, surfaceEval_mk, mul_comm]

lemma centre_normal_eval (α β : Polynomial S) :
    Ideal.Quotient.mk (Ideal.span {surfacePolynomial valuationOneCurve})
        (centreNormalPoly α β) =
      surfaceEvalHom α + vY * surfaceEvalHom β := by
  have hsum : centreNormalPoly α β = centreNormalPoly α 0 + centreNormalPoly 0 β := by
    apply surfaceToCentrePoly.injective
    rw [map_add, surfaceToCentrePoly_normal, surfaceToCentrePoly_normal,
      surfaceToCentrePoly_normal, centreOfNormal, centreOfNormal, centreOfNormal]
    simp only [map_zero, zero_mul, mul_zero, add_zero, zero_add, add_assoc]
  rw [hsum, map_add, centre_alpha_eval, centre_beta_eval]

lemma surfaceEval_cuspPow (s : S) (e q : ℕ) :
    surfaceEvalHom (cuspPowTerm s e q) =
      algebraMap S (surfaceRing valuationOneCurve) s * vX ^ e *
        (vX ^ 3 - (2 : surfaceRing valuationOneCurve)) ^ q := by
  rw [cuspPowTerm, cuspPolyS_eq]
  simp only [surfaceEvalHom, Polynomial.coe_eval₂RingHom, Polynomial.eval₂_mul, Polynomial.eval₂_pow,
    Polynomial.eval₂_C, Polynomial.eval₂_X, Polynomial.eval₂_sub,
    map_ofNat (algebraMap S (surfaceRing valuationOneCurve))]

lemma surfaceEval_series (N D shift residue : ℕ) (p : chartVPoly) :
    surfaceEvalHom (seriesUpToS N D shift residue p) =
      ∑ i ∈ Finset.range (N + 1),
        if i % 2 = residue then
          algebraMap S (surfaceRing valuationOneCurve) (bitLiftMv (vCoeff p i)) *
              vX ^ (D - i + shift) *
              (vX ^ 3 - (2 : surfaceRing valuationOneCurve)) ^ (i / 2)
        else 0 := by
  rw [seriesUpToS]
  simp only [surfaceEvalHom, Polynomial.coe_eval₂RingHom]
  rw [Polynomial.eval₂_finset_sum]
  refine Finset.sum_congr rfl ?_
  intro i _hi
  by_cases hres : i % 2 = residue
  · rw [if_pos hres, if_pos hres]
    simpa [surfaceEvalHom, Polynomial.coe_eval₂RingHom] using
      surfaceEval_cuspPow (bitLiftMv (vCoeff p i)) (D - i + shift) (i / 2)
  · rw [if_neg hres, if_neg hres, Polynomial.eval₂_zero]

lemma mul_y_through (y a b c : surfaceRing valuationOneCurve) :
    y * (a * b * c) = a * b * (y * c) := by
  ring

lemma series_matches_raw_even (N D shift : ℕ) (p : chartVPoly) (_hD : N ≤ D) :
    surfaceEvalHom (seriesUpToS N D shift 0 p) =
      ∑ i ∈ Finset.range (N + 1),
        if i % 2 = 0 then
          algebraMap S (surfaceRing valuationOneCurve) (bitLiftMv (vCoeff p i)) *
            vX ^ (D - i + shift) * vY ^ i
        else 0 := by
  classical
  rw [surfaceEval_series]
  refine Finset.sum_congr rfl ?_
  intro i _hi
  by_cases hp : i % 2 = 0
  · rw [if_pos hp, if_pos hp, even_eq_two_mul i hp, vY_pow_even (i / 2),
      Nat.mul_div_cancel_left (i / 2) (by decide : 0 < 2)]
  · rw [if_neg hp, if_neg hp]

lemma series_matches_raw_odd (N D shift : ℕ) (p : chartVPoly) (_hD : N ≤ D) :
    vY * surfaceEvalHom (seriesUpToS N D shift 1 p) =
      ∑ i ∈ Finset.range (N + 1),
        if i % 2 = 1 then
          algebraMap S (surfaceRing valuationOneCurve) (bitLiftMv (vCoeff p i)) *
            vX ^ (D - i + shift) * vY ^ i
        else 0 := by
  classical
  rw [surfaceEval_series, Finset.mul_sum]
  refine Finset.sum_congr rfl ?_
  intro i _hi
  by_cases hp : i % 2 = 1
  · rw [if_pos hp, if_pos hp]
    rw [mul_y_through vY
        (algebraMap S (surfaceRing valuationOneCurve) (bitLiftMv (vCoeff p i)))
        (vX ^ (D - i + shift))
        ((vX ^ 3 - (2 : surfaceRing valuationOneCurve)) ^ (i / 2))]
    rw [odd_eq_two_mul_add_one i hp, vY_pow_odd (i / 2), half_odd (i / 2)]
  · rw [if_neg hp, if_neg hp]
    exact mul_zero vY

lemma series_even_odd_sum (N D shift : ℕ) (p : chartVPoly) (hD : N ≤ D) :
    surfaceEvalHom (seriesUpToS N D shift 0 p) +
        vY * surfaceEvalHom (seriesUpToS N D shift 1 p) =
      ∑ i ∈ Finset.range (N + 1),
        algebraMap S (surfaceRing valuationOneCurve) (bitLiftMv (vCoeff p i)) *
          vX ^ (D - i + shift) * vY ^ i := by
  rw [series_matches_raw_even N D shift p hD, series_matches_raw_odd N D shift p hD,
    ← Finset.sum_add_distrib]
  refine Finset.sum_congr rfl ?_
  intro i _hi
  rcases mod_two_dichotomy i with h0 | h1
  · have hne : i % 2 ≠ 1 := by rw [h0]; decide
    rw [if_pos h0, if_neg hne, add_zero]
  · have hne : i % 2 ≠ 0 := by rw [h1]; decide
    rw [if_neg hne, if_pos h1, zero_add]

lemma chartSeries_surface (A B Cv : chartVPoly) :
    let D := chartVDegree A B Cv
    surfaceEvalHom (chartSeriesAlpha A B Cv) +
        vY * surfaceEvalHom (chartSeriesBeta A B Cv) =
      (∑ i ∈ Finset.range (D + 1),
          algebraMap S (surfaceRing valuationOneCurve) (bitLiftMv (vCoeff A i)) *
            vX ^ (D - i + 0) * vY ^ i) +
      (∑ i ∈ Finset.range (D + 1),
          algebraMap S (surfaceRing valuationOneCurve) (bitLiftMv (vCoeff B i)) *
            vX ^ (D - i + 1) * vY ^ i) +
      (∑ i ∈ Finset.range (D + 1),
          algebraMap S (surfaceRing valuationOneCurve) (bitLiftMv (vCoeff Cv i)) *
            vX ^ (D - i + 2) * vY ^ i) := by
  intro D
  have hA := series_even_odd_sum D D 0 A (le_rfl : D ≤ D)
  have hB := series_even_odd_sum D D 1 B (le_rfl : D ≤ D)
  have hC := series_even_odd_sum D D 2 Cv (le_rfl : D ≤ D)
  simp only [chartSeriesAlpha, chartSeriesBeta, surfaceEvalHom.map_add, mul_add]
  have hDeq : chartVDegree A B Cv = D := rfl
  simp only [hDeq]
  rw [← hA, ← hB, ← hC]
  ring

lemma chartSeries_centre (A B Cv : chartVPoly) :
    Ideal.Quotient.mk (Ideal.span {surfacePolynomial valuationOneCurve})
        (centreNormalPoly (chartSeriesAlpha A B Cv) (chartSeriesBeta A B Cv)) =
      surfaceEvalHom (chartSeriesAlpha A B Cv) +
        vY * surfaceEvalHom (chartSeriesBeta A B Cv) :=
  centre_normal_eval _ _

lemma vX_pow_mem (n : ℕ) : vX ^ n ∈ vI ^ n :=
  Ideal.pow_mem_pow (numeral_X_mem_centre valuationOneCurve 0 0) n

lemma vY_pow_mem (n : ℕ) : vY ^ n ∈ vI ^ n :=
  Ideal.pow_mem_pow (numeral_Y_mem_centre valuationOneCurve 0 0) n

lemma rawTerm_mem (c : MvPolynomial (Fin 2) (ZMod 2)) (D shift i : ℕ) (hi : i ≤ D) :
    algebraMap S (surfaceRing valuationOneCurve) (bitLiftMv c) *
        vX ^ (D - i + shift) * vY ^ i ∈ vI ^ (D + shift) := by
  set a : surfaceRing valuationOneCurve :=
    algebraMap S (surfaceRing valuationOneCurve) (bitLiftMv c)
  have hx : vX ^ (D - i + shift) ∈ vI ^ (D - i + shift) := vX_pow_mem _
  have hxl : a * vX ^ (D - i + shift) ∈ vI ^ (D - i + shift) :=
    Ideal.mul_mem_left _ a hx
  have hy : vY ^ i ∈ vI ^ i := vY_pow_mem _
  have hmul : a * vX ^ (D - i + shift) * vY ^ i ∈
      vI ^ ((D - i + shift) + i) := by
    rw [pow_add]
    exact Ideal.mul_mem_mul hxl hy
  have hidx : (D - i + shift) + i = D + shift := by
    rw [Nat.add_right_comm (D - i) shift i, Nat.sub_add_cancel hi]
  rwa [hidx] at hmul

lemma chartRaw_mem (p : chartVPoly) (D shift : ℕ) :
    (∑ i ∈ Finset.range (D + 1),
        algebraMap S (surfaceRing valuationOneCurve) (bitLiftMv (vCoeff p i)) *
          vX ^ (D - i + shift) * vY ^ i) ∈ vI ^ D := by
  refine Ideal.sum_mem _ ?_
  intro i hi
  have hiD : i ≤ D := Nat.lt_succ_iff.mp (Finset.mem_range.mp hi)
  exact Ideal.pow_le_pow_right (Nat.le_add_right D shift)
    (rawTerm_mem (vCoeff p i) D shift i hiD)

/-- Include `𝔽₂[a,b][V]` into `𝔽₂[a,b][X,V]` by `V ↦ V`. -/
noncomputable def chartVInclude : chartVPoly →+* chartNormalPoly :=
  MvPolynomial.eval₂Hom MvPolynomial.C (fun _ : Fin 1 => MvPolynomial.X 1)

lemma chartToXPoly_include (p : chartVPoly) :
    chartToXPoly (chartVInclude p) = C p := by
  have hhom : (chartToXPoly : chartNormalPoly →+* Polynomial chartVPoly).comp chartVInclude = C := by
    refine MvPolynomial.ringHom_ext ?_ ?_
    · intro s
      rw [RingHom.comp_apply, chartVInclude, MvPolynomial.coe_eval₂Hom, MvPolynomial.eval₂_C]
      simpa using AlgEquiv.commutes chartToXPoly s
    · intro i
      fin_cases i
      rw [RingHom.comp_apply, chartVInclude, MvPolynomial.coe_eval₂Hom, MvPolynomial.eval₂_X]
      simpa using chartToXPoly_V
  simpa [RingHom.comp_apply] using congrArg (fun f => f p) hhom

lemma chartNormalForm_parts (A B Cv : chartVPoly) :
    chartNormalForm A B Cv =
      chartVInclude A + MvPolynomial.X 0 * chartVInclude B +
        (MvPolynomial.X 0) ^ 2 * chartVInclude Cv := by
  apply chartToXPoly.injective
  rw [chartToXPoly_normalForm, map_add, map_add, map_mul, map_mul, map_pow, chartToXPoly_X,
    chartToXPoly_include, chartToXPoly_include, chartToXPoly_include]
  ring

/-- Evaluate a polynomial in `V` on the chart, at `Yt/Xt`. -/
noncomputable def chartVEval : chartVPoly →+* chart_Dplus_Xt_ring valuationOneCurve 0 0 :=
  MvPolynomial.eval₂Hom (chartFromF2Polynomial valuationOneCurve 0 0)
    (fun _ : Fin 1 => chart_Y_over_X valuationOneCurve 0 0)

lemma chartModelEval_include (p : chartVPoly) :
    chartModelEval (normalPolyToModel (chartVInclude p)) = chartVEval p := by
  have hhom : chartModelEval.comp (normalPolyToModel.comp chartVInclude) = chartVEval := by
    refine MvPolynomial.ringHom_ext ?_ ?_
    · intro s
      simp only [RingHom.comp_apply, chartVInclude, normalPolyToModel, chartModelEval, chartVEval,
        MvPolynomial.coe_eval₂Hom, MvPolynomial.eval₂_C]
    · intro i
      fin_cases i
      simp [chartVInclude, normalPolyToModel, chartModelEval, chartVEval,
        MvPolynomial.eval₂_X]
  simpa [RingHom.comp_apply] using congrArg (fun f => f p) hhom

lemma chartModelEval_normalForm (A B Cv : chartVPoly) :
    chartModelEval (normalPolyToModel (chartNormalForm A B Cv)) =
      chartVEval A + chart_X valuationOneCurve 0 0 * chartVEval B +
        (chart_X valuationOneCurve 0 0) ^ 2 * chartVEval Cv := by
  rw [chartNormalForm_parts]
  rw [map_add (normalPolyToModel), map_add (normalPolyToModel), map_mul (normalPolyToModel),
    map_mul (normalPolyToModel), map_pow (normalPolyToModel)]
  rw [map_add (chartModelEval), map_add (chartModelEval), map_mul (chartModelEval),
    map_mul (chartModelEval), map_pow (chartModelEval)]
  rw [chartModelEval_include, chartModelEval_include, chartModelEval_include]
  have hX : chartModelEval (normalPolyToModel (MvPolynomial.X 0)) =
      chart_X valuationOneCurve 0 0 := by
    simp [normalPolyToModel, chartModelEval, MvPolynomial.eval₂_X]
  rw [hX]

/-!
## Rees equation

The chart image of `A + X·B + X²·C` is one fraction of degree `D` on `D₊(Xt)`.
Its numerator is the raw sum `chartNumerator`. Vanishing puts `(Xt)^m` times that
numerator in the scalar ideal `(2)`, so `X^m·α = 2·αₛ` and `X^m·β = 2·βₛ`.
-/

noncomputable def chartRawSum (p : chartVPoly) (D shift : ℕ) :
    surfaceRing valuationOneCurve :=
  ∑ i ∈ Finset.range (D + 1),
    algebraMap S (surfaceRing valuationOneCurve) (bitLiftMv (vCoeff p i)) *
      vX ^ (D - i + shift) * vY ^ i

lemma chartRawSum_mem (p : chartVPoly) (D shift : ℕ) :
    chartRawSum p D shift ∈ vI ^ D := by
  simpa [chartRawSum] using chartRaw_mem p D shift

noncomputable def chartNumerator (A B Cv : chartVPoly) : surfaceRing valuationOneCurve :=
  chartRawSum A (chartVDegree A B Cv) 0 + chartRawSum B (chartVDegree A B Cv) 1 +
    chartRawSum Cv (chartVDegree A B Cv) 2

lemma chartNumerator_mem (A B Cv : chartVPoly) :
    chartNumerator A B Cv ∈ vI ^ chartVDegree A B Cv := by
  have hA := chartRawSum_mem A (chartVDegree A B Cv) 0
  have hB := chartRawSum_mem B (chartVDegree A B Cv) 1
  have hC := chartRawSum_mem Cv (chartVDegree A B Cv) 2
  simpa [chartNumerator] using
    Ideal.add_mem (vI ^ chartVDegree A B Cv)
      (Ideal.add_mem (vI ^ chartVDegree A B Cv) hA hB) hC

lemma chartNumerator_eq_series (A B Cv : chartVPoly) :
    chartNumerator A B Cv =
      surfaceEvalHom (chartSeriesAlpha A B Cv) +
        vY * surfaceEvalHom (chartSeriesBeta A B Cv) := by
  simpa [chartNumerator, chartRawSum] using (chartSeries_surface A B Cv).symm

lemma fin1_monomial (i : ℕ) (c : MvPolynomial (Fin 2) (ZMod 2)) :
    MvPolynomial.monomial (Finsupp.single (0 : Fin 1) i) c =
      MvPolynomial.C c * (MvPolynomial.X (0 : Fin 1)) ^ i := by
  rw [MvPolynomial.X_pow_eq_monomial, MvPolynomial.C_mul_monomial, mul_one]

lemma chartV_eq_sum (p : chartVPoly) {D : ℕ}
    (hD : MvPolynomial.degreeOf (0 : Fin 1) p ≤ D) :
    p = ∑ i ∈ Finset.range (D + 1),
      MvPolynomial.C (vCoeff p i) * (MvPolynomial.X (0 : Fin 1)) ^ i := by
  classical
  have hsub : p.support ⊆ (Finset.range (D + 1)).image (Finsupp.single (0 : Fin 1)) := by
    intro m hm
    have hle : m 0 ≤ MvPolynomial.degreeOf (0 : Fin 1) p := by
      rw [MvPolynomial.degreeOf_eq_sup]
      exact Finset.le_sup (f := fun t : Fin 1 →₀ ℕ => t 0) hm
    refine Finset.mem_image.mpr ⟨m 0, Finset.mem_range.mpr (Nat.lt_succ_of_le (le_trans hle hD)), ?_⟩
    exact (fin1_eq_single m).symm
  have hmono : p = ∑ i ∈ Finset.range (D + 1),
      MvPolynomial.monomial (Finsupp.single (0 : Fin 1) i) (vCoeff p i) := by
    have hzero : ∀ m ∈ (Finset.range (D + 1)).image (Finsupp.single (0 : Fin 1)),
        m ∉ p.support → MvPolynomial.monomial m (MvPolynomial.coeff m p) = 0 := by
      intro m _hm hnot
      have h0 : MvPolynomial.coeff m p = 0 := by
        simpa [MvPolynomial.mem_support_iff] using hnot
      rw [h0, MvPolynomial.monomial_zero]
    have hsum := Finset.sum_subset hsub hzero
    conv_lhs => rw [MvPolynomial.as_sum p]
    rw [hsum, Finset.sum_image (fun x _hx y _hy hxy =>
      Finsupp.single_injective (0 : Fin 1) hxy)]
    refine Finset.sum_congr rfl ?_
    intro i _hi
    rfl
  conv_lhs => rw [hmono]
  refine Finset.sum_congr rfl ?_
  intro i _hi
  exact fin1_monomial i (vCoeff p i)

lemma chartVEval_sum (p : chartVPoly) {D : ℕ}
    (hD : MvPolynomial.degreeOf (0 : Fin 1) p ≤ D) :
    chartVEval p =
      ∑ i ∈ Finset.range (D + 1),
        chartScalar valuationOneCurve 0 0 (bitLiftMv (vCoeff p i)) *
          (chart_Y_over_X valuationOneCurve 0 0) ^ i := by
  conv_lhs => rw [chartV_eq_sum p hD]
  simp only [chartVEval, MvPolynomial.coe_eval₂Hom]
  rw [MvPolynomial.eval₂_sum]
  refine Finset.sum_congr rfl ?_
  intro i _hi
  rw [MvPolynomial.eval₂_mul, MvPolynomial.eval₂_C, MvPolynomial.eval₂_pow,
    MvPolynomial.eval₂_X, chartFromF2_bitLift]

lemma loc_mk_sum {ι R : Type*} [CommRing R] {M : Submonoid R} (d : M)
    (g : ι → R) (s : Finset ι) :
    (∑ i ∈ s, Localization.mk (g i) d) = Localization.mk (∑ i ∈ s, g i) d := by
  classical
  refine Finset.induction_on s ?_ ?_
  · rw [Finset.sum_empty, Finset.sum_empty]
    exact (Localization.mk_zero d).symm
  · intro a s ha ih
    rw [Finset.sum_insert ha, Finset.sum_insert ha, ih, Localization.add_mk_self]

lemma rawCoeff_shuffle (s a b c : surfaceRing valuationOneCurve) :
    a * s * b * c = s * (a * c) * b := by
  ring

lemma rawCoeff_comm (s : surfaceRing valuationOneCurve) (shift i D : ℕ) :
    vX ^ shift * s * vY ^ i * vX ^ (D - i) =
      s * vX ^ (D - i + shift) * vY ^ i := by
  rw [rawCoeff_shuffle, ← pow_add, Nat.add_comm shift (D - i)]

lemma vXt_pow (n : ℕ) :
    (numeralReesXT valuationOneCurve 0 0) ^ n =
      centreReesMonomial vI n ⟨vX ^ n, vX_pow_mem n⟩ := by
  induction n with
  | zero =>
      apply Subtype.ext
      simp [centreReesMonomial, Polynomial.monomial_zero_left]
  | succ n ih =>
      rw [pow_succ, ih]
      apply Subtype.ext
      rw [Subalgebra.coe_mul]
      simp [centreReesMonomial, numeralReesXT, Polynomial.monomial_mul_monomial, pow_succ, vX,
        surfaceNumeralX, map_zero, sub_zero]

lemma vYt_pow (n : ℕ) :
    (numeralReesYT valuationOneCurve 0 0) ^ n =
      centreReesMonomial vI n ⟨vY ^ n, vY_pow_mem n⟩ := by
  induction n with
  | zero =>
      apply Subtype.ext
      simp [centreReesMonomial, Polynomial.monomial_zero_left]
  | succ n ih =>
      rw [pow_succ, ih]
      apply Subtype.ext
      rw [Subalgebra.coe_mul]
      simp [centreReesMonomial, numeralReesYT, Polynomial.monomial_mul_monomial, pow_succ, vY,
        surfaceNumeralY, map_zero, sub_zero]

lemma vConst_pow (r : surfaceRing valuationOneCurve) (n : ℕ) :
    numeralReesConst valuationOneCurve 0 0 r ^ n =
      numeralReesConst valuationOneCurve 0 0 (r ^ n) := by
  apply Subtype.ext
  rw [Subalgebra.coe_pow]
  simp [numeralReesConst, centreReesMonomial, Polynomial.C_pow]

lemma vConst_mul_monomial (r : surfaceRing valuationOneCurve) (n : ℕ)
    (s : surfaceRing valuationOneCurve) (hs : s ∈ vI ^ n) :
    numeralReesConst valuationOneCurve 0 0 r * centreReesMonomial vI n ⟨s, hs⟩ =
      centreReesMonomial vI n ⟨r * s, Ideal.mul_mem_left _ r hs⟩ := by
  apply Subtype.ext
  simp [numeralReesConst, centreReesMonomial, Polynomial.monomial_mul_monomial]

lemma xt_mul_num (m D : ℕ) (N : surfaceRing valuationOneCurve) (hN : N ∈ vI ^ D) :
    (numeralReesXT valuationOneCurve 0 0) ^ m * centreReesMonomial vI D ⟨N, hN⟩ =
      centreReesMonomial vI (m + D)
        ⟨vX ^ m * N, by
          rw [pow_add]
          exact Ideal.mul_mem_mul (vX_pow_mem m) hN⟩ := by
  rw [vXt_pow]
  apply Subtype.ext
  simp [Subalgebra.coe_mul, centreReesMonomial, Polynomial.monomial_mul_monomial]

lemma reesProd_two (m D : ℕ) (N : surfaceRing valuationOneCurve) (hN : N ∈ vI ^ D)
    (hmem : (numeralReesXT valuationOneCurve 0 0) ^ m *
        centreReesMonomial vI D ⟨N, hN⟩ ∈
          numeralReesSpecialIdeal valuationOneCurve 0 0) :
    ∃ z : surfaceRing valuationOneCurve,
      vX ^ m * N = (2 : surfaceRing valuationOneCurve) * z ∧ z ∈ vI ^ (D + m) := by
  obtain ⟨p, hp⟩ := (Ideal.mem_span_singleton').mp hmem
  have hp' := congrArg (Subalgebra.val (reesAlgebra vI)) hp
  rw [map_mul, AlgHom.commutes, xt_mul_num] at hp'
  simp only [centreReesMonomial, LinearMap.coe_mk, AddHom.coe_mk, Subtype.coe_mk,
    ← Polynomial.C_eq_algebraMap] at hp'
  have hcoeff : ((Subalgebra.val (reesAlgebra vI) p) *
        C (2 : surfaceRing valuationOneCurve)).coeff (m + D) = vX ^ m * N := by
    rw [hp']
    erw [Polynomial.coeff_monomial]
    rw [if_pos rfl]
  rw [Polynomial.coeff_mul_C] at hcoeff
  have hswap : (Subalgebra.val (reesAlgebra vI) p).coeff (m + D) *
        (2 : surfaceRing valuationOneCurve) =
      (2 : surfaceRing valuationOneCurve) *
        (Subalgebra.val (reesAlgebra vI) p).coeff (m + D) := by ring
  rw [hswap] at hcoeff
  refine ⟨(Subalgebra.val (reesAlgebra vI) p).coeff (m + D), hcoeff.symm, ?_⟩
  rw [← Nat.add_comm m D]
  exact ((mem_reesAlgebra_iff vI ((Subalgebra.val (reesAlgebra vI)) p)).mp p.property) (m + D)

lemma surfaceEval_X : surfaceEvalHom X = vX := by
  simp [surfaceEvalHom, Polynomial.coe_eval₂RingHom, Polynomial.eval₂_X]

lemma surfaceEval_X_mul (m : ℕ) (p : Polynomial S) :
    surfaceEvalHom (X ^ m * p) = vX ^ m * surfaceEvalHom p := by
  rw [surfaceEvalHom.map_mul, surfaceEvalHom.map_pow, surfaceEval_X]

lemma centre_X_pow_mul (m : ℕ) (α β : Polynomial S) :
    vX ^ m *
        Ideal.Quotient.mk (Ideal.span {surfacePolynomial valuationOneCurve})
          (centreNormalPoly α β) =
      Ideal.Quotient.mk (Ideal.span {surfacePolynomial valuationOneCurve})
        (centreNormalPoly (X ^ m * α) (X ^ m * β)) := by
  rw [centre_normal_eval, centre_normal_eval]
  calc
    vX ^ m * (surfaceEvalHom α + vY * surfaceEvalHom β)
        = vX ^ m * surfaceEvalHom α + vY * (vX ^ m * surfaceEvalHom β) := by ring
    _ = surfaceEvalHom (X ^ m * α) + vY * surfaceEvalHom (X ^ m * β) := by
          rw [← surfaceEval_X_mul, ← surfaceEval_X_mul]

lemma surfaceEval_two_mul (p : Polynomial S) :
    surfaceEvalHom (C (2 : S) * p) =
      (2 : surfaceRing valuationOneCurve) * surfaceEvalHom p := by
  rw [surfaceEvalHom.map_mul]
  have h2 : surfaceEvalHom (C (2 : S)) = (2 : surfaceRing valuationOneCurve) := by
    simp [surfaceEvalHom, Polynomial.coe_eval₂RingHom, Polynomial.eval₂_C]
    rfl
  rw [h2]

lemma centre_two_mul (α β : Polynomial S) :
    (2 : surfaceRing valuationOneCurve) *
        Ideal.Quotient.mk (Ideal.span {surfacePolynomial valuationOneCurve})
          (centreNormalPoly α β) =
      Ideal.Quotient.mk (Ideal.span {surfacePolynomial valuationOneCurve})
        (centreNormalPoly (C (2 : S) * α) (C (2 : S) * β)) := by
  rw [centre_normal_eval, centre_normal_eval]
  calc
    (2 : surfaceRing valuationOneCurve) * (surfaceEvalHom α + vY * surfaceEvalHom β)
        = (2 : surfaceRing valuationOneCurve) * surfaceEvalHom α +
            vY * ((2 : surfaceRing valuationOneCurve) * surfaceEvalHom β) := by ring
    _ = surfaceEvalHom (C (2 : S) * α) + vY * surfaceEvalHom (C (2 : S) * β) := by
          rw [← surfaceEval_two_mul, ← surfaceEval_two_mul]

/-- A factor of `2` on a centre class splits across the normal form. -/
lemma twice_surface_series (m k : ℕ) (α β : Polynomial S)
    (z : surfaceRing valuationOneCurve)
    (h2 : vX ^ m *
        Ideal.Quotient.mk (Ideal.span {surfacePolynomial valuationOneCurve})
          (centreNormalPoly α β) =
      (2 : surfaceRing valuationOneCurve) * z)
    (hz : z ∈ vI ^ k) :
    ∃ αs βs : Polynomial S,
      X ^ m * α = (2 : Polynomial S) * αs ∧
      X ^ m * β = (2 : Polynomial S) * βs ∧
      Ideal.Quotient.mk (Ideal.span {surfacePolynomial valuationOneCurve})
        (centreNormalPoly αs βs) ∈ vI ^ k := by
  obtain ⟨αs, βs, hzform⟩ := exists_centreNormal z
  rw [hzform] at h2
  rw [centre_X_pow_mul] at h2
  rw [centre_two_mul] at h2
  obtain ⟨hα, hβ⟩ := centreNormal_unique h2
  have htwo : (2 : Polynomial S) = C (2 : S) := (map_ofNat C 2).symm
  refine ⟨αs, βs, ?_, ?_, ?_⟩
  · rw [← htwo] at hα
    exact hα
  · rw [← htwo] at hβ
    exact hβ
  · rw [hzform] at hz
    exact hz

/-- `X^m` times the raw numerator is twice a centre class in `I^{D+m}`. -/
lemma chartNumerator_twice (A B Cv : chartVPoly) (m : ℕ)
    (z : surfaceRing valuationOneCurve)
    (h2 : vX ^ m * chartNumerator A B Cv = (2 : surfaceRing valuationOneCurve) * z)
    (hz : z ∈ vI ^ (chartVDegree A B Cv + m)) :
    ∃ αs βs : Polynomial S,
      X ^ m * chartSeriesAlpha A B Cv = (2 : Polynomial S) * αs ∧
      X ^ m * chartSeriesBeta A B Cv = (2 : Polynomial S) * βs ∧
      Ideal.Quotient.mk (Ideal.span {surfacePolynomial valuationOneCurve})
        (centreNormalPoly αs βs) ∈ vI ^ (chartVDegree A B Cv + m) := by
  have hseries : chartNumerator A B Cv =
      Ideal.Quotient.mk (Ideal.span {surfacePolynomial valuationOneCurve})
        (centreNormalPoly (chartSeriesAlpha A B Cv) (chartSeriesBeta A B Cv)) := by
    rw [chartNumerator_eq_series, ← chartSeries_centre]
  rw [hseries] at h2
  exact twice_surface_series m (chartVDegree A B Cv + m)
    (chartSeriesAlpha A B Cv) (chartSeriesBeta A B Cv) z h2 hz

lemma centreRees_deg_eq {n m : ℕ} (h : n = m) (r : surfaceRing valuationOneCurve)
    (hr : r ∈ vI ^ n) :
    centreReesMonomial vI n ⟨r, hr⟩ =
      centreReesMonomial vI m ⟨r, h ▸ hr⟩ := by
  subst h
  rfl

lemma vConst_mul (r s : surfaceRing valuationOneCurve) :
    numeralReesConst valuationOneCurve 0 0 r * numeralReesConst valuationOneCurve 0 0 s =
      numeralReesConst valuationOneCurve 0 0 (r * s) := by
  apply Subtype.ext
  simp [numeralReesConst, centreReesMonomial, Polynomial.monomial_mul_monomial]

lemma vMonomial_mul (n m : ℕ) (a b : surfaceRing valuationOneCurve)
    (ha : a ∈ vI ^ n) (hb : b ∈ vI ^ m) :
    centreReesMonomial vI n ⟨a, ha⟩ * centreReesMonomial vI m ⟨b, hb⟩ =
      centreReesMonomial vI (n + m)
        ⟨a * b, by
          rw [pow_add]
          exact Ideal.mul_mem_mul ha hb⟩ := by
  apply Subtype.ext
  simp [centreReesMonomial, Polynomial.monomial_mul_monomial]

lemma vTerm_rees (s : surfaceRing valuationOneCurve) (shift i D : ℕ) (hi : i ≤ D)
    (hs : s * vX ^ (D - i + shift) * vY ^ i ∈ vI ^ D) :
    numeralReesConst valuationOneCurve 0 0 (vX ^ shift) *
        numeralReesConst valuationOneCurve 0 0 s *
        (numeralReesYT valuationOneCurve 0 0) ^ i *
        (numeralReesXT valuationOneCurve 0 0) ^ (D - i) =
      centreReesMonomial vI D ⟨s * vX ^ (D - i + shift) * vY ^ i, hs⟩ := by
  rw [vConst_mul, vYt_pow, vXt_pow]
  have hy : vY ^ i ∈ vI ^ i := vY_pow_mem i
  have hx : vX ^ (D - i) ∈ vI ^ (D - i) := vX_pow_mem _
  rw [vConst_mul_monomial (vX ^ shift * s) i (vY ^ i) hy]
  have hleft : (vX ^ shift * s) * vY ^ i ∈ vI ^ i := Ideal.mul_mem_left _ _ hy
  rw [vMonomial_mul i (D - i) ((vX ^ shift * s) * vY ^ i) (vX ^ (D - i)) hleft hx]
  have heq : i + (D - i) = D := by
    rw [Nat.add_comm, Nat.sub_add_cancel hi]
  rw [centreRees_deg_eq heq]
  apply Subtype.ext
  simp [centreReesMonomial]
  exact congrArg (Polynomial.monomial D) (rawCoeff_comm s shift i D)

lemma loc_mul_pow {Q : Type*} [CommRing Q] (f a : Q) (i k : ℕ) :
    Localization.mk a (⟨f ^ i, ⟨i, rfl⟩⟩ : Submonoid.powers f) =
      Localization.mk (a * f ^ k)
        (⟨f ^ (i + k), ⟨i + k, rfl⟩⟩ : Submonoid.powers f) := by
  rw [Localization.mk_eq_mk_iff]
  refine Localization.r_iff_exists.mpr ⟨(1 : Submonoid.powers f), ?_⟩
  dsimp
  rw [one_mul (f ^ (i + k) * a), one_mul (f ^ i * (a * f ^ k))]
  have hpow : f ^ (i + k) = f ^ i * f ^ k := pow_add f i k
  rw [hpow]
  ring

lemma powers_pow {Q : Type*} [CommMonoid Q] (f : Q) (n : ℕ) :
    (⟨f, ⟨1, pow_one f⟩⟩ : Submonoid.powers f) ^ n = ⟨f ^ n, ⟨n, rfl⟩⟩ := by
  apply Subtype.ext
  induction n with
  | zero => simp
  | succ n ih => simp [pow_succ, ih]

set_option maxHeartbeats 8000000 in
set_option synthInstance.maxHeartbeats 400000 in
lemma chart_X_val :
    (chart_X valuationOneCurve 0 0).val =
      Localization.mk
        (Ideal.Quotient.mk (numeralReesSpecialIdeal valuationOneCurve 0 0)
          (numeralReesConst valuationOneCurve 0 0 (surfaceNumeralX valuationOneCurve 0)))
        (1 : Submonoid.powers
          (Ideal.Quotient.mk (numeralReesSpecialIdeal valuationOneCurve 0 0)
            (numeralReesXT valuationOneCurve 0 0))) := by
  let I := numeralCentreIdeal valuationOneCurve 0 0
  letI : GradedAlgebra (centreReesComponent I) := centreReesGrading I
  let J := numeralReesSpecialIdeal valuationOneCurve 0 0
  have hJ : J.IsHomogeneous (centreReesComponent I) :=
    numeralReesSpecialIdeal_isHomogeneous valuationOneCurve 0 0
  let ℬ := homogeneousQuotientComponent (centreReesComponent I) J
  letI : GradedAlgebra ℬ := homogeneousQuotientGrading (centreReesComponent I) J hJ
  simp [chart_X, HomogeneousLocalization.val_mk]
  rfl

set_option maxHeartbeats 8000000 in
set_option synthInstance.maxHeartbeats 400000 in
lemma chart_Y_over_X_val :
    (chart_Y_over_X valuationOneCurve 0 0).val =
      Localization.mk
        (Ideal.Quotient.mk (numeralReesSpecialIdeal valuationOneCurve 0 0)
          (numeralReesYT valuationOneCurve 0 0))
        (⟨Ideal.Quotient.mk (numeralReesSpecialIdeal valuationOneCurve 0 0)
            (numeralReesXT valuationOneCurve 0 0),
          ⟨1, pow_one _⟩⟩ :
          Submonoid.powers
            (Ideal.Quotient.mk (numeralReesSpecialIdeal valuationOneCurve 0 0)
              (numeralReesXT valuationOneCurve 0 0))) := by
  let I := numeralCentreIdeal valuationOneCurve 0 0
  letI : GradedAlgebra (centreReesComponent I) := centreReesGrading I
  let J := numeralReesSpecialIdeal valuationOneCurve 0 0
  have hJ : J.IsHomogeneous (centreReesComponent I) :=
    numeralReesSpecialIdeal_isHomogeneous valuationOneCurve 0 0
  let ℬ := homogeneousQuotientComponent (centreReesComponent I) J
  letI : GradedAlgebra ℬ := homogeneousQuotientGrading (centreReesComponent I) J hJ
  simp [chart_Y_over_X, HomogeneousLocalization.val_mk]

set_option maxHeartbeats 8000000 in
set_option synthInstance.maxHeartbeats 400000 in
lemma chartScalar_bitLift_val (c : MvPolynomial (Fin 2) (ZMod 2)) :
    (chartScalar valuationOneCurve 0 0 (bitLiftMv c)).val =
      Localization.mk
        (Ideal.Quotient.mk (numeralReesSpecialIdeal valuationOneCurve 0 0)
          (numeralReesConst valuationOneCurve 0 0
            (algebraMap S (surfaceRing valuationOneCurve) (bitLiftMv c))))
        (1 : Submonoid.powers
          (Ideal.Quotient.mk (numeralReesSpecialIdeal valuationOneCurve 0 0)
            (numeralReesXT valuationOneCurve 0 0))) := by
  rw [chartScalar, RingHom.comp_apply]
  dsimp [chartConstHom]
  let I := numeralCentreIdeal valuationOneCurve 0 0
  letI : GradedAlgebra (centreReesComponent I) := centreReesGrading I
  let J := numeralReesSpecialIdeal valuationOneCurve 0 0
  have hJ : J.IsHomogeneous (centreReesComponent I) :=
    numeralReesSpecialIdeal_isHomogeneous valuationOneCurve 0 0
  let ℬ := homogeneousQuotientComponent (centreReesComponent I) J
  letI : GradedAlgebra ℬ := homogeneousQuotientGrading (centreReesComponent I) J hJ
  simp [chartConst, HomogeneousLocalization.val_mk]
  rfl

lemma rawTerm_mem_D (c : MvPolynomial (Fin 2) (ZMod 2)) (D shift i : ℕ) (hi : i ≤ D) :
    algebraMap S (surfaceRing valuationOneCurve) (bitLiftMv c) *
        vX ^ (D - i + shift) * vY ^ i ∈ vI ^ D :=
  Ideal.pow_le_pow_right (Nat.le_add_right D shift) (rawTerm_mem c D shift i hi)


#print axioms Beal.MathlibMissing.chart_X_add_V_sq_ne_zero
#print axioms Beal.MathlibMissing.chartOfModelTrue_normal_X_add_Vsq_ne_zero
#print axioms Beal.MathlibMissing.centreIdeal_power_coeff_bound
#print axioms Beal.MathlibMissing.centre_X_pow_mul_X_cube_sub_one_not_mem
#print axioms Beal.MathlibMissing.chartNormal_X_add_Vsq_ne_zero
#print axioms Beal.MathlibMissing.chartOfModelTrue_injective_iff_normalForm
#print axioms Beal.MathlibMissing.chartOfModelTrue_injective
#print axioms Beal.MathlibMissing.bitReduced_signed_bound
#print axioms Beal.MathlibMissing.chartSeriesAlpha_monomial
#print axioms Beal.MathlibMissing.chartSeriesBeta_monomial
#print axioms Beal.MathlibMissing.not_twoAdicNormBound_signed_coeff
#print axioms Beal.MathlibMissing.twice_centre_blocks_signed
#print axioms Beal.MathlibMissing.chartSeries_surface
#print axioms Beal.MathlibMissing.chartRaw_mem

end Beal.MathlibMissing
