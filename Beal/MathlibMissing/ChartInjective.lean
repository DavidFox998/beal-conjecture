import Beal.MathlibMissing.CentrePower
import Beal.MathlibMissing.ChartTrueIdeal

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

`chartReesLowerCoeff_obstruction` is the coefficient step for a general
representative. On each monomial of `𝔽₂[a,b]` the `0`-`1` pattern, after
`Y² = X³ − 2`, has a coefficient `(-1)^s · 2^q` whose centre bound is
`q`. It cannot be twice an element of `I^D`. The index is the lowest
power of `X`, except when only the `X²·C(V)` series meets that power:
that lowest coefficient meets the bound, and the leading coefficient of
`(X³ − 2)^q` is `1`, where both centre bounds are `0`.

`chartOfModelTrue_injective` stays open. Chart vanishing is not yet
identified with `α = 2·αₛ`, `β = 2·βₛ` and `αₛ + Y·βₛ ∈ I^D`.
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
    chartOfModelTrue_injective ↔
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
    unfold chartOfModelTrue_injective
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

#print axioms Beal.MathlibMissing.chart_X_add_V_sq_ne_zero
#print axioms Beal.MathlibMissing.chartOfModelTrue_normal_X_add_Vsq_ne_zero
#print axioms Beal.MathlibMissing.centreIdeal_power_coeff_bound
#print axioms Beal.MathlibMissing.centre_X_pow_mul_X_cube_sub_one_not_mem
#print axioms Beal.MathlibMissing.chartNormal_X_add_Vsq_ne_zero
#print axioms Beal.MathlibMissing.chartOfModelTrue_injective_iff_normalForm
#print axioms Beal.MathlibMissing.chartOfModelTrue_injective
#print axioms Beal.MathlibMissing.bitReduced_signed_bound

end Beal.MathlibMissing
