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
`chartOfModelTrue_injective` stays open: vanishing of a general normal
form is not yet a Rees numerator in `2 · I^{d+m}`. A leading-term
cancellation can make the top coefficient divisible by `2` while the
bound at that index is `0`, so the coefficient bound does not by itself
force `A`, `B`, and `C` to vanish.
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

#print axioms Beal.MathlibMissing.chart_X_add_V_sq_ne_zero
#print axioms Beal.MathlibMissing.chartOfModelTrue_normal_X_add_Vsq_ne_zero
#print axioms Beal.MathlibMissing.centreIdeal_power_coeff_bound
#print axioms Beal.MathlibMissing.centre_X_pow_mul_X_cube_sub_one_not_mem
#print axioms Beal.MathlibMissing.chartNormal_X_add_Vsq_ne_zero
#print axioms Beal.MathlibMissing.chartOfModelTrue_injective_iff_normalForm
#print axioms Beal.MathlibMissing.chartOfModelTrue_injective

end Beal.MathlibMissing
