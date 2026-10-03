import Beal.MathlibMissing.ChartInjective

/-!
`D₊(Yt)` for `Y² = X³ + 2` at `(0, 0)`.

`Yt` is the inverted degree-one class. The degree-zero coordinates are
`Y`, `X = Y · (Xt / Yt)`, and `U = 2t / Yt`. The cusp relation in this
chart is `Y² · (1 - Y · (Xt / Yt)³) = 0`.

That is not the v37 ideal. `modelXtChart ≃+* D₊(Xt)` uses
`U + X² + X·V²` with `V = Yt / Xt`, and `Xt` is not inverted here.
`modelYtTrueIdeal` is `(X - Y·S, Y²·(1 - Y·S³), Y·T, T²)` in
`𝔽₂[a,b][X,Y,S,T]`. Eliminating `X = Y·S` leaves
`𝔽₂[a,b][Y,S,T] / (Y²·(1 - Y·S³), Y·T, T²)`.
`chartOfModelTrueY` sends that quotient into `D₊(Yt)`.
Surjectivity, the Rees vanishing equation, and injectivity are open.
There is no `chart_Dplus_Yt_true_presentation`.

`D₊(2t)` is already the zero ring (`chart_Dplus_2t_subsingleton_valuationOne`).
A scheme gluing `Proj(Rees(I)/(2)) ≃ D₊(Xt) ∪ D₊(Yt)` is not claimed.
`BealEven` does not import this file.
-/

namespace Beal.MathlibMissing

open Beal.General

set_option synthInstance.maxHeartbeats 400000
set_option maxHeartbeats 8000000

private lemma yt_mem_centre_pow_zero
    (W : WeierstrassCurve ℤ_[2]) (ap bq : ℕ) (r : surfaceRing W) :
    r ∈ numeralCentreIdeal W ap bq ^ 0 := by
  simp only [pow_zero, Ideal.one_eq_top, Submodule.mem_top]

private lemma yt_specialClass_mem_degree_one
    (W : WeierstrassCurve ℤ_[2]) (ap bq : ℕ)
    (r : surfaceRing W) (hr : r ∈ numeralCentreIdeal W ap bq) :
    (Ideal.Quotient.mk (numeralReesSpecialIdeal W ap bq))
        (centreReesMonomial (numeralCentreIdeal W ap bq) 1
          ⟨r, by rw [pow_one]; exact hr⟩) ∈
      homogeneousQuotientComponent
        (centreReesComponent (numeralCentreIdeal W ap bq))
        (numeralReesSpecialIdeal W ap bq) 1 := by
  let I := numeralCentreIdeal W ap bq
  let J := numeralReesSpecialIdeal W ap bq
  have hy := centreReesComponent_monomial I 1 r (by rw [pow_one]; exact hr)
  change _ ∈ Submodule.map
    (Ideal.Quotient.mkₐ (surfaceRing W) J).toLinearMap (centreReesComponent I 1)
  exact Submodule.mem_map_of_mem hy

private lemma yt_specialClass_mem_degree_zero
    (W : WeierstrassCurve ℤ_[2]) (ap bq : ℕ) (r : surfaceRing W) :
    (Ideal.Quotient.mk (numeralReesSpecialIdeal W ap bq))
        (numeralReesConst W ap bq r) ∈
      homogeneousQuotientComponent
        (centreReesComponent (numeralCentreIdeal W ap bq))
        (numeralReesSpecialIdeal W ap bq) 0 := by
  let I := numeralCentreIdeal W ap bq
  let J := numeralReesSpecialIdeal W ap bq
  have hy := centreReesComponent_monomial I 0 r (yt_mem_centre_pow_zero W ap bq r)
  change _ ∈ Submodule.map
    (Ideal.Quotient.mkₐ (surfaceRing W) J).toLinearMap (centreReesComponent I 0)
  exact Submodule.mem_map_of_mem hy

private lemma yt_quotient_one_mem_degree_zero
    (W : WeierstrassCurve ℤ_[2]) (ap bq : ℕ) :
    (1 : reesAlgebra (numeralCentreIdeal W ap bq) ⧸
        numeralReesSpecialIdeal W ap bq) ∈
      homogeneousQuotientComponent
        (centreReesComponent (numeralCentreIdeal W ap bq))
        (numeralReesSpecialIdeal W ap bq) 0 := by
  let I := numeralCentreIdeal W ap bq
  letI : GradedAlgebra (centreReesComponent I) := centreReesGrading I
  let J := numeralReesSpecialIdeal W ap bq
  have hy : (1 : reesAlgebra I) ∈ centreReesComponent I 0 := by
    change ∃ r : ↥(I ^ 0), centreReesMonomial I 0 r = 1
    refine ⟨⟨1, by simp⟩, ?_⟩
    apply Subtype.ext
    simp [centreReesMonomial]
  have hmem : (Ideal.Quotient.mk J) (1 : reesAlgebra I) ∈
      homogeneousQuotientComponent (centreReesComponent I) J 0 :=
    Submodule.mem_map_of_mem hy
  rwa [map_one (Ideal.Quotient.mk J)] at hmem

/-- The degree-zero chart ring `(Rees(I)/(2))_((Y - bq) t)`. -/
noncomputable def chart_Dplus_Yt_ring
    (W : WeierstrassCurve ℤ_[2]) (ap bq : ℕ) : Type :=
  let I := numeralCentreIdeal W ap bq
  let J := numeralReesSpecialIdeal W ap bq
  let _ : Algebra (surfaceRing W) (reesAlgebra I) := inferInstance
  let _ : Algebra (surfaceRing W) (reesAlgebra I ⧸ J) := inferInstance
  HomogeneousLocalization.Away
    (homogeneousQuotientComponent (centreReesComponent I) J)
    (Ideal.Quotient.mk J (numeralReesYT W ap bq))

noncomputable instance chartYtCommRing
    (W : WeierstrassCurve ℤ_[2]) (ap bq : ℕ) :
    CommRing (chart_Dplus_Yt_ring W ap bq) := by
  let I := numeralCentreIdeal W ap bq
  letI : GradedAlgebra (centreReesComponent I) := centreReesGrading I
  let J := numeralReesSpecialIdeal W ap bq
  have hJ : J.IsHomogeneous (centreReesComponent I) :=
    numeralReesSpecialIdeal_isHomogeneous W ap bq
  let ℬ := homogeneousQuotientComponent (centreReesComponent I) J
  letI : GradedAlgebra ℬ := homogeneousQuotientGrading (centreReesComponent I) J hJ
  unfold chart_Dplus_Yt_ring
  infer_instance

/-- `2t / Yt` on `D₊(Yt)`. -/
noncomputable def chartYt_two_over_Y (W : WeierstrassCurve ℤ_[2]) (ap bq : ℕ) :
    chart_Dplus_Yt_ring W ap bq := by
  let I := numeralCentreIdeal W ap bq
  letI : GradedAlgebra (centreReesComponent I) := centreReesGrading I
  let J := numeralReesSpecialIdeal W ap bq
  let ℬ := homogeneousQuotientComponent (centreReesComponent I) J
  letI : GradedAlgebra ℬ :=
    homogeneousQuotientGrading (centreReesComponent I) J
      (numeralReesSpecialIdeal_isHomogeneous W ap bq)
  let f := Ideal.Quotient.mk J (numeralReesYT W ap bq)
  let num := Ideal.Quotient.mk J (numeralReesTwo W ap bq)
  exact HomogeneousLocalization.mk
    ⟨1,
      ⟨num, by
        simpa [num, numeralReesTwo] using
          yt_specialClass_mem_degree_one W ap bq (2 : surfaceRing W)
            (two_mem_numeralCentreIdeal W ap bq)⟩,
      ⟨f, by
        simpa [f, numeralReesYT] using
          yt_specialClass_mem_degree_one W ap bq
            (Ideal.Quotient.mk (Ideal.span {surfacePolynomial W})
              (MvPolynomial.X (1 : Fin 2) -
                MvPolynomial.C (MvPolynomial.C (bq : ℤ_[2]))))
            (numeral_Y_mem_centre W ap bq)⟩,
      ⟨1, pow_one _⟩⟩

/-- `Xt / Yt` on `D₊(Yt)`. -/
noncomputable def chartYt_X_over_Y (W : WeierstrassCurve ℤ_[2]) (ap bq : ℕ) :
    chart_Dplus_Yt_ring W ap bq := by
  let I := numeralCentreIdeal W ap bq
  letI : GradedAlgebra (centreReesComponent I) := centreReesGrading I
  let J := numeralReesSpecialIdeal W ap bq
  let ℬ := homogeneousQuotientComponent (centreReesComponent I) J
  letI : GradedAlgebra ℬ :=
    homogeneousQuotientGrading (centreReesComponent I) J
      (numeralReesSpecialIdeal_isHomogeneous W ap bq)
  let f := Ideal.Quotient.mk J (numeralReesYT W ap bq)
  let num := Ideal.Quotient.mk J (numeralReesXT W ap bq)
  exact HomogeneousLocalization.mk
    ⟨1,
      ⟨num, by
        simpa [num, numeralReesXT] using
          yt_specialClass_mem_degree_one W ap bq
            (Ideal.Quotient.mk (Ideal.span {surfacePolynomial W})
              (MvPolynomial.X (0 : Fin 2) -
                MvPolynomial.C (MvPolynomial.C (ap : ℤ_[2]))))
            (numeral_X_mem_centre W ap bq)⟩,
      ⟨f, by
        simpa [f, numeralReesYT] using
          yt_specialClass_mem_degree_one W ap bq
            (Ideal.Quotient.mk (Ideal.span {surfacePolynomial W})
              (MvPolynomial.X (1 : Fin 2) -
                MvPolynomial.C (MvPolynomial.C (bq : ℤ_[2]))))
            (numeral_Y_mem_centre W ap bq)⟩,
      ⟨1, pow_one _⟩⟩

/-- Degree-zero class of `Y - bq` on `D₊(Yt)`. -/
noncomputable def chartYt_Y (W : WeierstrassCurve ℤ_[2]) (ap bq : ℕ) :
    chart_Dplus_Yt_ring W ap bq := by
  let I := numeralCentreIdeal W ap bq
  letI : GradedAlgebra (centreReesComponent I) := centreReesGrading I
  let J := numeralReesSpecialIdeal W ap bq
  let ℬ := homogeneousQuotientComponent (centreReesComponent I) J
  letI : GradedAlgebra ℬ :=
    homogeneousQuotientGrading (centreReesComponent I) J
      (numeralReesSpecialIdeal_isHomogeneous W ap bq)
  let f := Ideal.Quotient.mk J (numeralReesYT W ap bq)
  let num := Ideal.Quotient.mk J (numeralReesConst W ap bq (surfaceNumeralY W bq))
  exact HomogeneousLocalization.mk
    ⟨0,
      ⟨num, by
        simpa [num] using
          yt_specialClass_mem_degree_zero W ap bq (surfaceNumeralY W bq)⟩,
      ⟨(1 : reesAlgebra I ⧸ J), yt_quotient_one_mem_degree_zero W ap bq⟩,
      ⟨0, pow_zero f⟩⟩

/-- Degree-zero class of `X - ap` on `D₊(Yt)`. -/
noncomputable def chartYt_X (W : WeierstrassCurve ℤ_[2]) (ap bq : ℕ) :
    chart_Dplus_Yt_ring W ap bq := by
  let I := numeralCentreIdeal W ap bq
  letI : GradedAlgebra (centreReesComponent I) := centreReesGrading I
  let J := numeralReesSpecialIdeal W ap bq
  let ℬ := homogeneousQuotientComponent (centreReesComponent I) J
  letI : GradedAlgebra ℬ :=
    homogeneousQuotientGrading (centreReesComponent I) J
      (numeralReesSpecialIdeal_isHomogeneous W ap bq)
  let f := Ideal.Quotient.mk J (numeralReesYT W ap bq)
  let num := Ideal.Quotient.mk J (numeralReesConst W ap bq (surfaceNumeralX W ap))
  exact HomogeneousLocalization.mk
    ⟨0,
      ⟨num, by
        simpa [num] using
          yt_specialClass_mem_degree_zero W ap bq (surfaceNumeralX W ap)⟩,
      ⟨(1 : reesAlgebra I ⧸ J), yt_quotient_one_mem_degree_zero W ap bq⟩,
      ⟨0, pow_zero f⟩⟩

private lemma yt_mul_const_X_eq_const_Y_mul_xt
    (W : WeierstrassCurve ℤ_[2]) (ap bq : ℕ) :
    numeralReesYT W ap bq * numeralReesConst W ap bq (surfaceNumeralX W ap) =
      numeralReesConst W ap bq (surfaceNumeralY W bq) * numeralReesXT W ap bq := by
  apply Subtype.ext
  unfold numeralReesXT numeralReesYT numeralReesConst centreReesMonomial
    surfaceNumeralX surfaceNumeralY
  rw [Subalgebra.coe_mul, Subalgebra.coe_mul]
  dsimp
  rw [Polynomial.monomial_mul_C, Polynomial.C_mul_monomial]

private lemma const_Y_mul_two_eq_scalar_two_mul_yt
    (W : WeierstrassCurve ℤ_[2]) (ap bq : ℕ) :
    numeralReesConst W ap bq (surfaceNumeralY W bq) * numeralReesTwo W ap bq =
      algebraMap (surfaceRing W) (reesAlgebra (numeralCentreIdeal W ap bq))
          (2 : surfaceRing W) *
        numeralReesYT W ap bq := by
  apply Subtype.ext
  unfold numeralReesConst numeralReesTwo numeralReesYT centreReesMonomial surfaceNumeralY
  rw [Subalgebra.coe_mul, Subalgebra.coe_mul, Subalgebra.coe_algebraMap]
  dsimp
  rw [Polynomial.C_mul_monomial]
  have hcoef := mul_comm
    ((Ideal.Quotient.mk (Ideal.span {surfacePolynomial W}))
      (MvPolynomial.X (1 : Fin 2) - MvPolynomial.C (MvPolynomial.C (bq : ℤ_[2]))))
    (2 : surfaceRing W)
  rw [hcoef, ← Polynomial.C_mul_monomial]

/-- `X = Y · (Xt / Yt)` on `D₊(Yt)`. -/
theorem chartYt_X_eq_Y_mul_X_over_Y
    (W : WeierstrassCurve ℤ_[2]) (ap bq : ℕ) :
    chartYt_X W ap bq = chartYt_Y W ap bq * chartYt_X_over_Y W ap bq := by
  let I := numeralCentreIdeal W ap bq
  letI : GradedAlgebra (centreReesComponent I) := centreReesGrading I
  let J := numeralReesSpecialIdeal W ap bq
  have hJ : J.IsHomogeneous (centreReesComponent I) :=
    numeralReesSpecialIdeal_isHomogeneous W ap bq
  let ℬ := homogeneousQuotientComponent (centreReesComponent I) J
  letI : GradedAlgebra ℬ := homogeneousQuotientGrading (centreReesComponent I) J hJ
  let f := Ideal.Quotient.mk J (numeralReesYT W ap bq)
  apply HomogeneousLocalization.val_injective (Submonoid.powers f)
  erw [HomogeneousLocalization.val_mul]
  simp only [chartYt_X, chartYt_Y, chartYt_X_over_Y, HomogeneousLocalization.val_mk]
  rw [Localization.mk_mul, Localization.mk_eq_mk_iff]
  refine Localization.r_iff_exists.mpr ⟨1, ?_⟩
  have hcomm := congrArg (Ideal.Quotient.mk J)
    (yt_mul_const_X_eq_const_Y_mul_xt W ap bq)
  rw [map_mul, map_mul] at hcomm
  dsimp
  rw [one_mul (((1 : reesAlgebra I ⧸ J) *
      (Ideal.Quotient.mk J) (numeralReesYT W ap bq)) *
    (Ideal.Quotient.mk J) (numeralReesConst W ap bq (surfaceNumeralX W ap)))]
  rw [one_mul ((1 : reesAlgebra I ⧸ J) *
    ((Ideal.Quotient.mk J) (numeralReesConst W ap bq (surfaceNumeralY W bq)) *
      (Ideal.Quotient.mk J) (numeralReesXT W ap bq)))]
  rw [one_mul ((Ideal.Quotient.mk J) (numeralReesYT W ap bq))]
  rw [one_mul ((Ideal.Quotient.mk J) (numeralReesConst W ap bq (surfaceNumeralY W bq)) *
    (Ideal.Quotient.mk J) (numeralReesXT W ap bq))]
  exact hcomm

/-- `Y · (2t / Yt) = 0` on `D₊(Yt)`, because the numerator is the scalar `2`. -/
theorem chartYt_Y_mul_two_over_Y_eq_zero
    (W : WeierstrassCurve ℤ_[2]) (ap bq : ℕ) :
    chartYt_Y W ap bq * chartYt_two_over_Y W ap bq = 0 := by
  let I := numeralCentreIdeal W ap bq
  letI : GradedAlgebra (centreReesComponent I) := centreReesGrading I
  let J := numeralReesSpecialIdeal W ap bq
  have hJ : J.IsHomogeneous (centreReesComponent I) :=
    numeralReesSpecialIdeal_isHomogeneous W ap bq
  let ℬ := homogeneousQuotientComponent (centreReesComponent I) J
  letI : GradedAlgebra ℬ := homogeneousQuotientGrading (centreReesComponent I) J hJ
  let f := Ideal.Quotient.mk J (numeralReesYT W ap bq)
  apply HomogeneousLocalization.val_injective (Submonoid.powers f)
  erw [HomogeneousLocalization.val_mul, HomogeneousLocalization.val_zero]
  simp only [chartYt_Y, chartYt_two_over_Y, HomogeneousLocalization.val_mk]
  rw [Localization.mk_mul]
  have hnum :
      Ideal.Quotient.mk J (numeralReesConst W ap bq (surfaceNumeralY W bq)) *
        Ideal.Quotient.mk J (numeralReesTwo W ap bq) = 0 := by
    rw [← map_mul, const_Y_mul_two_eq_scalar_two_mul_yt, map_mul]
    have h2 : Ideal.Quotient.mk J
        (algebraMap (surfaceRing W) (reesAlgebra I) (2 : surfaceRing W)) = 0 := by
      rw [Ideal.Quotient.eq_zero_iff_mem]
      exact Ideal.mem_span_singleton_self _
    rw [h2]
    exact zero_mul ((Ideal.Quotient.mk J) (numeralReesYT W ap bq))
  rw [hnum]
  rw [← Localization.mk_zero (1 : Submonoid.powers f)]
  rw [Localization.mk_eq_mk_iff]
  refine Localization.r_iff_exists.mpr ⟨1, ?_⟩
  dsimp
  rw [mul_zero ((1 : reesAlgebra I ⧸ J) *
    (Ideal.Quotient.mk J) (numeralReesYT W ap bq))]
  rw [mul_zero (1 : reesAlgebra I ⧸ J)]
  rw [mul_zero (1 : reesAlgebra I ⧸ J)]

/-- On `Y² = X³ + 2` at `(0, 0)`, `Y² = X³` in `D₊(Yt)`. -/
theorem chartYt_Y_sq_eq_X_cu :
    chartYt_Y valuationOneCurve 0 0 ^ 2 = chartYt_X valuationOneCurve 0 0 ^ 3 := by
  let I := numeralCentreIdeal valuationOneCurve 0 0
  letI : GradedAlgebra (centreReesComponent I) := centreReesGrading I
  let J := numeralReesSpecialIdeal valuationOneCurve 0 0
  have hJ : J.IsHomogeneous (centreReesComponent I) :=
    numeralReesSpecialIdeal_isHomogeneous valuationOneCurve 0 0
  let ℬ := homogeneousQuotientComponent (centreReesComponent I) J
  letI : GradedAlgebra ℬ := homogeneousQuotientGrading (centreReesComponent I) J hJ
  let f := Ideal.Quotient.mk J (numeralReesYT valuationOneCurve 0 0)
  apply HomogeneousLocalization.val_injective (Submonoid.powers f)
  erw [HomogeneousLocalization.val_pow, HomogeneousLocalization.val_pow]
  simp only [chartYt_Y, chartYt_X, HomogeneousLocalization.val_mk]
  rw [Localization.mk_pow, Localization.mk_pow, Localization.mk_eq_mk_iff]
  refine Localization.r_iff_exists.mpr ⟨1, ?_⟩
  dsimp
  change (1 : reesAlgebra I ⧸ J) *
      ((1 : reesAlgebra I ⧸ J) ^ 3 *
        (Ideal.Quotient.mk J
          (numeralReesConst valuationOneCurve 0 0
            (surfaceNumeralY valuationOneCurve 0))) ^ 2) =
    (1 : reesAlgebra I ⧸ J) *
      ((1 : reesAlgebra I ⧸ J) ^ 2 *
        (Ideal.Quotient.mk J
          (numeralReesConst valuationOneCurve 0 0
            (surfaceNumeralX valuationOneCurve 0))) ^ 3)
  have h3 : (1 : reesAlgebra I ⧸ J) ^ 3 = 1 := one_pow _
  have h2 : (1 : reesAlgebra I ⧸ J) ^ 2 = 1 := one_pow _
  rw [h3, h2]
  set y := (Ideal.Quotient.mk J
      (numeralReesConst valuationOneCurve 0 0 (surfaceNumeralY valuationOneCurve 0))) ^ 2
  set x := (Ideal.Quotient.mk J
      (numeralReesConst valuationOneCurve 0 0 (surfaceNumeralX valuationOneCurve 0))) ^ 3
  rw [one_mul (1 * y), one_mul y, one_mul (1 * x), one_mul x]
  exact valuationOne_special_const_Ysq_eq_Xcu

/-- The `Yt` cusp relation: `Y² · (1 - Y · (Xt / Yt)³) = 0`.
Substituting `X = Y · (Xt / Yt)` into `Y² = X³` gives this, not
`X² · (X + V²) = 0`. -/
theorem chartYt_cusp_relation :
    chartYt_Y valuationOneCurve 0 0 ^ 2 *
      (1 - chartYt_Y valuationOneCurve 0 0 *
        chartYt_X_over_Y valuationOneCurve 0 0 ^ 3) = 0 := by
  set y : chart_Dplus_Yt_ring valuationOneCurve 0 0 :=
    chartYt_Y valuationOneCurve 0 0
  set s : chart_Dplus_Yt_ring valuationOneCurve 0 0 :=
    chartYt_X_over_Y valuationOneCurve 0 0
  set x : chart_Dplus_Yt_ring valuationOneCurve 0 0 :=
    chartYt_X valuationOneCurve 0 0
  have hx : x = y * s := chartYt_X_eq_Y_mul_X_over_Y _ _ _
  have hy : y ^ 2 = x ^ 3 := chartYt_Y_sq_eq_X_cu
  have hfac : y ^ 2 * (1 - y * s ^ 3) = y ^ 2 - (y * s) ^ 3 := by ring
  rw [hfac, ← hx, ← hy, sub_self]

/-- `(2t / Yt)² = 0` on this node, because `(2t)² = 0` in `Rees/(2)`. -/
theorem chartYt_two_over_Y_sq_zero :
    chartYt_two_over_Y valuationOneCurve 0 0 ^ 2 = 0 := by
  let I := numeralCentreIdeal valuationOneCurve 0 0
  letI : GradedAlgebra (centreReesComponent I) := centreReesGrading I
  let J := numeralReesSpecialIdeal valuationOneCurve 0 0
  have hJ : J.IsHomogeneous (centreReesComponent I) :=
    numeralReesSpecialIdeal_isHomogeneous valuationOneCurve 0 0
  let ℬ := homogeneousQuotientComponent (centreReesComponent I) J
  letI : GradedAlgebra ℬ := homogeneousQuotientGrading (centreReesComponent I) J hJ
  let f := Ideal.Quotient.mk J (numeralReesYT valuationOneCurve 0 0)
  apply HomogeneousLocalization.val_injective (Submonoid.powers f)
  erw [HomogeneousLocalization.val_pow, HomogeneousLocalization.val_zero]
  simp only [chartYt_two_over_Y, HomogeneousLocalization.val_mk]
  rw [Localization.mk_pow]
  have hsq :
      (Ideal.Quotient.mk J (numeralReesTwo valuationOneCurve 0 0)) ^ 2 = 0 :=
    valuationOne_specialTwo_sq_zero
  rw [hsq, Localization.mk]
  simp

private lemma yt_numeralReesConst_eq_algebraMap
    (W : WeierstrassCurve ℤ_[2]) (ap bq : ℕ) (r : surfaceRing W) :
    numeralReesConst W ap bq r =
      algebraMap (surfaceRing W) (reesAlgebra (numeralCentreIdeal W ap bq)) r := by
  apply Subtype.ext
  unfold numeralReesConst centreReesMonomial
  rw [Subalgebra.coe_algebraMap]
  dsimp

/-- Degree-zero class of a surface element on `D₊(Yt)`. -/
noncomputable def chartYtConst (W : WeierstrassCurve ℤ_[2]) (ap bq : ℕ)
    (r : surfaceRing W) : chart_Dplus_Yt_ring W ap bq := by
  let I := numeralCentreIdeal W ap bq
  letI : GradedAlgebra (centreReesComponent I) := centreReesGrading I
  let J := numeralReesSpecialIdeal W ap bq
  let ℬ := homogeneousQuotientComponent (centreReesComponent I) J
  letI : GradedAlgebra ℬ :=
    homogeneousQuotientGrading (centreReesComponent I) J
      (numeralReesSpecialIdeal_isHomogeneous W ap bq)
  let f := Ideal.Quotient.mk J (numeralReesYT W ap bq)
  let num := Ideal.Quotient.mk J (numeralReesConst W ap bq r)
  exact HomogeneousLocalization.mk
    ⟨0,
      ⟨num, by
        simpa [num] using yt_specialClass_mem_degree_zero W ap bq r⟩,
      ⟨(1 : reesAlgebra I ⧸ J), yt_quotient_one_mem_degree_zero W ap bq⟩,
      ⟨0, pow_zero f⟩⟩

private lemma chartYtConst_val (W : WeierstrassCurve ℤ_[2]) (ap bq : ℕ)
    (r : surfaceRing W) :
    (chartYtConst W ap bq r).val =
      Localization.mk
        (Ideal.Quotient.mk (numeralReesSpecialIdeal W ap bq)
          (numeralReesConst W ap bq r))
        (1 : Submonoid.powers
          (Ideal.Quotient.mk (numeralReesSpecialIdeal W ap bq)
            (numeralReesYT W ap bq))) := by
  let I := numeralCentreIdeal W ap bq
  letI : GradedAlgebra (centreReesComponent I) := centreReesGrading I
  let J := numeralReesSpecialIdeal W ap bq
  have hJ : J.IsHomogeneous (centreReesComponent I) :=
    numeralReesSpecialIdeal_isHomogeneous W ap bq
  let ℬ := homogeneousQuotientComponent (centreReesComponent I) J
  letI : GradedAlgebra ℬ := homogeneousQuotientGrading (centreReesComponent I) J hJ
  simp [chartYtConst, HomogeneousLocalization.val_mk]
  rfl

private lemma chartYtConst_mul (W : WeierstrassCurve ℤ_[2]) (ap bq : ℕ)
    (r s : surfaceRing W) :
    chartYtConst W ap bq (r * s) = chartYtConst W ap bq r * chartYtConst W ap bq s := by
  let I := numeralCentreIdeal W ap bq
  letI : GradedAlgebra (centreReesComponent I) := centreReesGrading I
  let J := numeralReesSpecialIdeal W ap bq
  have hJ : J.IsHomogeneous (centreReesComponent I) :=
    numeralReesSpecialIdeal_isHomogeneous W ap bq
  let ℬ := homogeneousQuotientComponent (centreReesComponent I) J
  letI : GradedAlgebra ℬ := homogeneousQuotientGrading (centreReesComponent I) J hJ
  let f := Ideal.Quotient.mk J (numeralReesYT W ap bq)
  apply HomogeneousLocalization.val_injective (Submonoid.powers f)
  rw [HomogeneousLocalization.val_mul, chartYtConst_val, chartYtConst_val, chartYtConst_val,
    Localization.mk_mul]
  have hden : (1 : Submonoid.powers f) * 1 = 1 := mul_one _
  rw [hden]
  congr 1
  rw [← map_mul (Ideal.Quotient.mk J), yt_numeralReesConst_eq_algebraMap,
    yt_numeralReesConst_eq_algebraMap, yt_numeralReesConst_eq_algebraMap, map_mul]

private lemma chartYtConst_add (W : WeierstrassCurve ℤ_[2]) (ap bq : ℕ)
    (r s : surfaceRing W) :
    chartYtConst W ap bq (r + s) = chartYtConst W ap bq r + chartYtConst W ap bq s := by
  let I := numeralCentreIdeal W ap bq
  letI : GradedAlgebra (centreReesComponent I) := centreReesGrading I
  let J := numeralReesSpecialIdeal W ap bq
  have hJ : J.IsHomogeneous (centreReesComponent I) :=
    numeralReesSpecialIdeal_isHomogeneous W ap bq
  let ℬ := homogeneousQuotientComponent (centreReesComponent I) J
  letI : GradedAlgebra ℬ := homogeneousQuotientGrading (centreReesComponent I) J hJ
  let f := Ideal.Quotient.mk J (numeralReesYT W ap bq)
  apply HomogeneousLocalization.val_injective (Submonoid.powers f)
  rw [HomogeneousLocalization.val_add, chartYtConst_val, chartYtConst_val, chartYtConst_val]
  rw [Localization.add_mk_self
      (Ideal.Quotient.mk (numeralReesSpecialIdeal W ap bq) (numeralReesConst W ap bq r))
      (1 : Submonoid.powers f)
      (Ideal.Quotient.mk (numeralReesSpecialIdeal W ap bq) (numeralReesConst W ap bq s))]
  congr 1
  rw [← map_add (Ideal.Quotient.mk J), yt_numeralReesConst_eq_algebraMap,
    yt_numeralReesConst_eq_algebraMap, yt_numeralReesConst_eq_algebraMap, map_add]

private lemma chartYtConst_one (W : WeierstrassCurve ℤ_[2]) (ap bq : ℕ) :
    chartYtConst W ap bq (1 : surfaceRing W) = 1 := by
  let I := numeralCentreIdeal W ap bq
  letI : GradedAlgebra (centreReesComponent I) := centreReesGrading I
  let J := numeralReesSpecialIdeal W ap bq
  have hJ : J.IsHomogeneous (centreReesComponent I) :=
    numeralReesSpecialIdeal_isHomogeneous W ap bq
  let ℬ := homogeneousQuotientComponent (centreReesComponent I) J
  letI : GradedAlgebra ℬ := homogeneousQuotientGrading (centreReesComponent I) J hJ
  let f := Ideal.Quotient.mk J (numeralReesYT W ap bq)
  apply HomogeneousLocalization.val_injective (Submonoid.powers f)
  rw [chartYtConst_val, HomogeneousLocalization.val_one, yt_numeralReesConst_eq_algebraMap,
    map_one, map_one, Localization.mk_one]

private lemma chartYtConst_zero (W : WeierstrassCurve ℤ_[2]) (ap bq : ℕ) :
    chartYtConst W ap bq (0 : surfaceRing W) = 0 := by
  let I := numeralCentreIdeal W ap bq
  letI : GradedAlgebra (centreReesComponent I) := centreReesGrading I
  let J := numeralReesSpecialIdeal W ap bq
  have hJ : J.IsHomogeneous (centreReesComponent I) :=
    numeralReesSpecialIdeal_isHomogeneous W ap bq
  let ℬ := homogeneousQuotientComponent (centreReesComponent I) J
  letI : GradedAlgebra ℬ := homogeneousQuotientGrading (centreReesComponent I) J hJ
  let f := Ideal.Quotient.mk J (numeralReesYT W ap bq)
  apply HomogeneousLocalization.val_injective (Submonoid.powers f)
  rw [chartYtConst_val, HomogeneousLocalization.val_zero, yt_numeralReesConst_eq_algebraMap,
    map_zero, map_zero]
  exact Localization.mk_zero (1 : Submonoid.powers f)

noncomputable def chartYtConstHom (W : WeierstrassCurve ℤ_[2]) (ap bq : ℕ) :
    surfaceRing W →+* chart_Dplus_Yt_ring W ap bq where
  toFun := chartYtConst W ap bq
  map_one' := chartYtConst_one W ap bq
  map_mul' := chartYtConst_mul W ap bq
  map_zero' := chartYtConst_zero W ap bq
  map_add' := chartYtConst_add W ap bq

noncomputable def chartYtScalar (W : WeierstrassCurve ℤ_[2]) (ap bq : ℕ) :
    S →+* chart_Dplus_Yt_ring W ap bq :=
  (chartYtConstHom W ap bq).comp (algebraMap S (surfaceRing W))

theorem chartYtScalar_C_two (W : WeierstrassCurve ℤ_[2]) (ap bq : ℕ) :
    chartYtScalar W ap bq (MvPolynomial.C (2 : ℤ_[2])) = 0 := by
  let I := numeralCentreIdeal W ap bq
  letI : GradedAlgebra (centreReesComponent I) := centreReesGrading I
  let J := numeralReesSpecialIdeal W ap bq
  have hJ : J.IsHomogeneous (centreReesComponent I) :=
    numeralReesSpecialIdeal_isHomogeneous W ap bq
  let ℬ := homogeneousQuotientComponent (centreReesComponent I) J
  letI : GradedAlgebra ℬ := homogeneousQuotientGrading (centreReesComponent I) J hJ
  let f := Ideal.Quotient.mk J (numeralReesYT W ap bq)
  rw [chartYtScalar, RingHom.comp_apply]
  have htwo : algebraMap S (surfaceRing W) (MvPolynomial.C (2 : ℤ_[2])) =
      (2 : surfaceRing W) := by
    rw [two_eq_quotient_mk]
    rfl
  rw [htwo]
  dsimp [chartYtConstHom]
  apply HomogeneousLocalization.val_injective (Submonoid.powers f)
  rw [chartYtConst_val, HomogeneousLocalization.val_zero, yt_numeralReesConst_eq_algebraMap]
  have hJ0 : Ideal.Quotient.mk J
      (algebraMap (surfaceRing W) (reesAlgebra I) (2 : surfaceRing W)) = 0 :=
    Ideal.Quotient.eq_zero_iff_mem.mpr (Ideal.mem_span_singleton_self _)
  rw [hJ0]
  exact Localization.mk_zero (1 : Submonoid.powers f)

noncomputable def chartYtScalarModTwo (W : WeierstrassCurve ℤ_[2]) (ap bq : ℕ) :
    S ⧸ Ideal.span {MvPolynomial.C (2 : ℤ_[2])} →+* chart_Dplus_Yt_ring W ap bq :=
  Ideal.Quotient.lift (Ideal.span {MvPolynomial.C (2 : ℤ_[2])}) (chartYtScalar W ap bq)
    (by
      intro a ha
      obtain ⟨c, rfl⟩ := Ideal.mem_span_singleton'.mp ha
      rw [map_mul, chartYtScalar_C_two, mul_zero])

/-- `𝔽₂[a,b] → D₊(Yt)`. -/
noncomputable def chartYtFromF2Polynomial (W : WeierstrassCurve ℤ_[2]) (ap bq : ℕ) :
    MvPolynomial (Fin 2) (ZMod 2) →+* chart_Dplus_Yt_ring W ap bq :=
  (chartYtScalarModTwo W ap bq).comp coeffModTwoEquiv.symm.toRingHom

/-- `(X - Y·S, Y²·(1 - Y·S³), Y·T, T²)` in `𝔽₂[a,b][X,Y,S,T]`.
`0` is `X`, `1` is `Y`, `2` is `S = Xt/Yt`, `3` is `T = 2t/Yt`. -/
noncomputable def modelYtTrueIdeal :
    Ideal (MvPolynomial (Fin 4) (MvPolynomial (Fin 2) (ZMod 2))) :=
  Ideal.span {
    MvPolynomial.X 0 - MvPolynomial.X 1 * MvPolynomial.X 2,
    (MvPolynomial.X 1) ^ 2 * (1 - MvPolynomial.X 1 * (MvPolynomial.X 2) ^ 3),
    MvPolynomial.X 1 * MvPolynomial.X 3,
    (MvPolynomial.X 3) ^ 2 }

/-- `𝔽₂[a,b][X,Y,S,T] / modelYtTrueIdeal`. -/
abbrev modelYtChart : Type :=
  MvPolynomial (Fin 4) (MvPolynomial (Fin 2) (ZMod 2)) ⧸ modelYtTrueIdeal

/-- Send `X, Y, S, T` to `X`, `Y`, `Xt/Yt`, `2t/Yt` in `D₊(Yt)`. -/
noncomputable def chartYtModelEval :
    MvPolynomial (Fin 4) (MvPolynomial (Fin 2) (ZMod 2)) →+*
      chart_Dplus_Yt_ring valuationOneCurve 0 0 :=
  MvPolynomial.eval₂Hom (chartYtFromF2Polynomial valuationOneCurve 0 0)
    (fun i : Fin 4 =>
      if i = 0 then chartYt_X valuationOneCurve 0 0
      else if i = 1 then chartYt_Y valuationOneCurve 0 0
      else if i = 2 then chartYt_X_over_Y valuationOneCurve 0 0
      else chartYt_two_over_Y valuationOneCurve 0 0)

private lemma chartYtModelEval_X (i : Fin 4) :
    chartYtModelEval (MvPolynomial.X i) =
      if i = 0 then chartYt_X valuationOneCurve 0 0
      else if i = 1 then chartYt_Y valuationOneCurve 0 0
      else if i = 2 then chartYt_X_over_Y valuationOneCurve 0 0
      else chartYt_two_over_Y valuationOneCurve 0 0 := by
  simp [chartYtModelEval, MvPolynomial.eval₂Hom_X']

theorem modelYtTrueIdeal_le_ker_chartYtModelEval :
    modelYtTrueIdeal ≤ RingHom.ker chartYtModelEval := by
  rw [modelYtTrueIdeal, Ideal.span_le]
  intro z hz
  simp only [Set.mem_insert_iff, Set.mem_singleton_iff] at hz
  rcases hz with rfl | rfl | rfl | rfl
  · rw [SetLike.mem_coe, RingHom.mem_ker, map_sub, map_mul, chartYtModelEval_X,
      chartYtModelEval_X, chartYtModelEval_X,
      if_pos (rfl : (0 : Fin 4) = 0),
      if_neg (by decide : (1 : Fin 4) ≠ 0),
      if_pos (rfl : (1 : Fin 4) = 1),
      if_neg (by decide : (2 : Fin 4) ≠ 0),
      if_neg (by decide : (2 : Fin 4) ≠ 1),
      if_pos (rfl : (2 : Fin 4) = 2),
      chartYt_X_eq_Y_mul_X_over_Y, sub_self]
  · rw [SetLike.mem_coe, RingHom.mem_ker, map_mul, map_pow, map_sub, map_one, map_mul, map_pow,
      chartYtModelEval_X, chartYtModelEval_X,
      if_neg (by decide : (1 : Fin 4) ≠ 0),
      if_pos (rfl : (1 : Fin 4) = 1),
      if_neg (by decide : (2 : Fin 4) ≠ 0),
      if_neg (by decide : (2 : Fin 4) ≠ 1),
      if_pos (rfl : (2 : Fin 4) = 2)]
    exact chartYt_cusp_relation
  · rw [SetLike.mem_coe, RingHom.mem_ker, map_mul, chartYtModelEval_X, chartYtModelEval_X,
      if_neg (by decide : (1 : Fin 4) ≠ 0),
      if_pos (rfl : (1 : Fin 4) = 1),
      if_neg (by decide : (3 : Fin 4) ≠ 0),
      if_neg (by decide : (3 : Fin 4) ≠ 1),
      if_neg (by decide : (3 : Fin 4) ≠ 2),
      chartYt_Y_mul_two_over_Y_eq_zero]
  · rw [SetLike.mem_coe, RingHom.mem_ker, map_pow, chartYtModelEval_X,
      if_neg (by decide : (3 : Fin 4) ≠ 0),
      if_neg (by decide : (3 : Fin 4) ≠ 1),
      if_neg (by decide : (3 : Fin 4) ≠ 2),
      chartYt_two_over_Y_sq_zero]

/-- `𝔽₂[a,b][X,Y,S,T] / modelYtTrueIdeal → D₊(Yt)`. -/
noncomputable def chartOfModelTrueY :
    modelYtChart →+* chart_Dplus_Yt_ring valuationOneCurve 0 0 :=
  Ideal.Quotient.lift modelYtTrueIdeal chartYtModelEval modelYtTrueIdeal_le_ker_chartYtModelEval

/-!
Eliminating `X` by `X = Y·S`. The normal ring still has `T`, with
`Y·T = 0` and `T² = 0`. It is not `𝔽₂[a,b][Y,S]` alone, and it is not
the `Xt` normal form `A(V) + X·B(V) + X²·C(V)`.
-/

abbrev chartYtNormalPoly : Type :=
  MvPolynomial (Fin 3) (MvPolynomial (Fin 2) (ZMod 2))

noncomputable def chartYtNormalRelY :
    chartYtNormalPoly :=
  (MvPolynomial.X 0) ^ 2 * (1 - MvPolynomial.X 0 * (MvPolynomial.X 1) ^ 3)

noncomputable def chartYtNormalRelT :
    chartYtNormalPoly :=
  MvPolynomial.X 0 * MvPolynomial.X 2

noncomputable def chartYtNormalRelTsq :
    chartYtNormalPoly :=
  (MvPolynomial.X 2) ^ 2

noncomputable def chartYtNormalIdeal : Ideal chartYtNormalPoly :=
  Ideal.span {chartYtNormalRelY, chartYtNormalRelT, chartYtNormalRelTsq}

abbrev chartYtNormalRing : Type := chartYtNormalPoly ⧸ chartYtNormalIdeal

/-- Send `X, Y, S, T` to `Y·S, Y, S, T`. -/
noncomputable def chartYtToNormalEval :
    MvPolynomial (Fin 4) (MvPolynomial (Fin 2) (ZMod 2)) →+* chartYtNormalRing :=
  MvPolynomial.eval₂Hom
    ((Ideal.Quotient.mk chartYtNormalIdeal).comp MvPolynomial.C)
    (fun i : Fin 4 =>
      if i = 0 then
        Ideal.Quotient.mk chartYtNormalIdeal (MvPolynomial.X 0 * MvPolynomial.X 1)
      else if i = 1 then Ideal.Quotient.mk chartYtNormalIdeal (MvPolynomial.X 0)
      else if i = 2 then Ideal.Quotient.mk chartYtNormalIdeal (MvPolynomial.X 1)
      else Ideal.Quotient.mk chartYtNormalIdeal (MvPolynomial.X 2))

private lemma chartYtToNormalEval_X (i : Fin 4) :
    chartYtToNormalEval (MvPolynomial.X i) =
      if i = 0 then
        Ideal.Quotient.mk chartYtNormalIdeal (MvPolynomial.X 0 * MvPolynomial.X 1)
      else if i = 1 then Ideal.Quotient.mk chartYtNormalIdeal (MvPolynomial.X 0)
      else if i = 2 then Ideal.Quotient.mk chartYtNormalIdeal (MvPolynomial.X 1)
      else Ideal.Quotient.mk chartYtNormalIdeal (MvPolynomial.X 2) := by
  simp [chartYtToNormalEval, MvPolynomial.eval₂Hom_X']

theorem chartYtToNormalEval_kills :
    modelYtTrueIdeal ≤ RingHom.ker chartYtToNormalEval := by
  rw [modelYtTrueIdeal, Ideal.span_le]
  intro z hz
  simp only [Set.mem_insert_iff, Set.mem_singleton_iff] at hz
  rcases hz with rfl | rfl | rfl | rfl
  · rw [CharTwo.sub_eq_add, SetLike.mem_coe, RingHom.mem_ker, map_add, map_mul,
      chartYtToNormalEval_X, chartYtToNormalEval_X, chartYtToNormalEval_X,
      if_pos (rfl : (0 : Fin 4) = 0),
      if_neg (by decide : (1 : Fin 4) ≠ 0),
      if_pos (rfl : (1 : Fin 4) = 1),
      if_neg (by decide : (2 : Fin 4) ≠ 0),
      if_neg (by decide : (2 : Fin 4) ≠ 1),
      if_pos (rfl : (2 : Fin 4) = 2)]
    rw [map_mul (Ideal.Quotient.mk chartYtNormalIdeal),
      ← map_mul (Ideal.Quotient.mk chartYtNormalIdeal),
      ← map_add (Ideal.Quotient.mk chartYtNormalIdeal),
      CharTwo.add_self_eq_zero, map_zero]
  · rw [CharTwo.sub_eq_add, SetLike.mem_coe, RingHom.mem_ker, map_mul, map_pow, map_add,
      map_one, map_mul, map_pow, chartYtToNormalEval_X, chartYtToNormalEval_X,
      if_neg (by decide : (1 : Fin 4) ≠ 0),
      if_pos (rfl : (1 : Fin 4) = 1),
      if_neg (by decide : (2 : Fin 4) ≠ 0),
      if_neg (by decide : (2 : Fin 4) ≠ 1),
      if_pos (rfl : (2 : Fin 4) = 2)]
    rw [← map_pow (Ideal.Quotient.mk chartYtNormalIdeal),
      ← map_pow (Ideal.Quotient.mk chartYtNormalIdeal),
      ← map_mul (Ideal.Quotient.mk chartYtNormalIdeal),
      ← map_one (Ideal.Quotient.mk chartYtNormalIdeal),
      ← map_add (Ideal.Quotient.mk chartYtNormalIdeal),
      ← map_mul (Ideal.Quotient.mk chartYtNormalIdeal),
      ← CharTwo.sub_eq_add, Ideal.Quotient.eq_zero_iff_mem]
    rw [chartYtNormalIdeal]
    exact Ideal.subset_span (Set.mem_insert _ _)
  · rw [SetLike.mem_coe, RingHom.mem_ker, map_mul, chartYtToNormalEval_X,
      chartYtToNormalEval_X,
      if_neg (by decide : (1 : Fin 4) ≠ 0),
      if_pos (rfl : (1 : Fin 4) = 1),
      if_neg (by decide : (3 : Fin 4) ≠ 0),
      if_neg (by decide : (3 : Fin 4) ≠ 1),
      if_neg (by decide : (3 : Fin 4) ≠ 2)]
    rw [← map_mul (Ideal.Quotient.mk chartYtNormalIdeal), Ideal.Quotient.eq_zero_iff_mem]
    rw [chartYtNormalIdeal]
    exact Ideal.subset_span (Set.mem_insert_of_mem _ (Set.mem_insert _ _))
  · rw [SetLike.mem_coe, RingHom.mem_ker, map_pow, chartYtToNormalEval_X,
      if_neg (by decide : (3 : Fin 4) ≠ 0),
      if_neg (by decide : (3 : Fin 4) ≠ 1),
      if_neg (by decide : (3 : Fin 4) ≠ 2)]
    rw [← map_pow (Ideal.Quotient.mk chartYtNormalIdeal), Ideal.Quotient.eq_zero_iff_mem]
    rw [chartYtNormalIdeal]
    exact Ideal.subset_span (Set.mem_insert_of_mem _ (Set.mem_insert_of_mem _
      (Set.mem_singleton _)))

noncomputable def chartYtToNormal :
    modelYtChart →+* chartYtNormalRing :=
  Ideal.Quotient.lift modelYtTrueIdeal chartYtToNormalEval chartYtToNormalEval_kills

/-- Include `Y, S, T` as the last three variables. -/
noncomputable def normalYtToModel :
    chartYtNormalPoly →+* MvPolynomial (Fin 4) (MvPolynomial (Fin 2) (ZMod 2)) :=
  MvPolynomial.eval₂Hom MvPolynomial.C
    (fun i : Fin 3 =>
      if i = 0 then MvPolynomial.X 1
      else if i = 1 then MvPolynomial.X 2
      else MvPolynomial.X 3)

private lemma normalYtToModel_relY :
    normalYtToModel chartYtNormalRelY =
      (MvPolynomial.X (1 : Fin 4)) ^ 2 *
        (1 - MvPolynomial.X 1 * (MvPolynomial.X 2) ^ 3) := by
  rw [chartYtNormalRelY, CharTwo.sub_eq_add, normalYtToModel, map_mul, map_pow, map_add,
    map_one, map_mul, map_pow, MvPolynomial.eval₂Hom_X', MvPolynomial.eval₂Hom_X',
    if_pos (rfl : (0 : Fin 3) = 0),
    if_neg (by decide : (1 : Fin 3) ≠ 0),
    if_pos (rfl : (1 : Fin 3) = 1),
    ← CharTwo.sub_eq_add]

private lemma normalYtToModel_relT :
    normalYtToModel chartYtNormalRelT =
      MvPolynomial.X (1 : Fin 4) * MvPolynomial.X 3 := by
  rw [chartYtNormalRelT, normalYtToModel, map_mul, MvPolynomial.eval₂Hom_X',
    MvPolynomial.eval₂Hom_X',
    if_pos (rfl : (0 : Fin 3) = 0),
    if_neg (by decide : (2 : Fin 3) ≠ 0),
    if_neg (by decide : (2 : Fin 3) ≠ 1)]

private lemma normalYtToModel_relTsq :
    normalYtToModel chartYtNormalRelTsq = (MvPolynomial.X (3 : Fin 4)) ^ 2 := by
  rw [chartYtNormalRelTsq, normalYtToModel, map_pow, MvPolynomial.eval₂Hom_X',
    if_neg (by decide : (2 : Fin 3) ≠ 0),
    if_neg (by decide : (2 : Fin 3) ≠ 1)]

theorem normalYtToModel_kills :
    chartYtNormalIdeal ≤
      RingHom.ker ((Ideal.Quotient.mk modelYtTrueIdeal).comp normalYtToModel) := by
  rw [chartYtNormalIdeal, Ideal.span_le]
  intro z hz
  simp only [Set.mem_insert_iff, Set.mem_singleton_iff] at hz
  rcases hz with rfl | rfl | rfl
  · rw [SetLike.mem_coe, RingHom.mem_ker, RingHom.comp_apply, normalYtToModel_relY,
      Ideal.Quotient.eq_zero_iff_mem, modelYtTrueIdeal]
    exact Ideal.subset_span (Set.mem_insert_of_mem _ (Set.mem_insert _ _))
  · rw [SetLike.mem_coe, RingHom.mem_ker, RingHom.comp_apply, normalYtToModel_relT,
      Ideal.Quotient.eq_zero_iff_mem, modelYtTrueIdeal]
    exact Ideal.subset_span (Set.mem_insert_of_mem _ (Set.mem_insert_of_mem _
      (Set.mem_insert _ _)))
  · rw [SetLike.mem_coe, RingHom.mem_ker, RingHom.comp_apply, normalYtToModel_relTsq,
      Ideal.Quotient.eq_zero_iff_mem, modelYtTrueIdeal]
    exact Ideal.subset_span (Set.mem_insert_of_mem _ (Set.mem_insert_of_mem _
      (Set.mem_insert_of_mem _ (Set.mem_singleton _))))

noncomputable def normalYtToChart :
    chartYtNormalRing →+* modelYtChart :=
  Ideal.Quotient.lift chartYtNormalIdeal
    ((Ideal.Quotient.mk modelYtTrueIdeal).comp normalYtToModel) normalYtToModel_kills

private lemma chartYt_fin4 (i j : Fin 4) (h : i.val = j.val) :
    Ideal.Quotient.mk modelYtTrueIdeal (MvPolynomial.X i) =
      Ideal.Quotient.mk modelYtTrueIdeal (MvPolynomial.X j) :=
  congrArg (fun k : Fin 4 => Ideal.Quotient.mk modelYtTrueIdeal (MvPolynomial.X k))
    (Fin.ext h)

private lemma chartYt_fin3 (i j : Fin 3) (h : i.val = j.val) :
    Ideal.Quotient.mk chartYtNormalIdeal (MvPolynomial.X i) =
      Ideal.Quotient.mk chartYtNormalIdeal (MvPolynomial.X j) :=
  congrArg (fun k : Fin 3 => Ideal.Quotient.mk chartYtNormalIdeal (MvPolynomial.X k))
    (Fin.ext h)

private lemma chartYtToNormal_comp_normalYtToChart :
    chartYtToNormal.comp normalYtToChart = RingHom.id chartYtNormalRing := by
  apply Ideal.Quotient.ringHom_ext
  apply MvPolynomial.ringHom_ext
  · intro r
    simp only [RingHom.comp_apply, RingHom.id_apply, chartYtToNormal, chartYtToNormalEval,
      normalYtToChart, normalYtToModel, Ideal.Quotient.lift_mk, MvPolynomial.eval₂Hom_C]
  · intro i
    fin_cases i
    · simp only [RingHom.comp_apply, RingHom.id_apply, chartYtToNormal, normalYtToChart,
        Ideal.Quotient.lift_mk, chartYtToNormalEval, normalYtToModel, MvPolynomial.eval₂Hom_X']
      rw [if_pos (by decide), MvPolynomial.eval₂Hom_X',
        if_neg (by decide : (1 : Fin 4) ≠ 0), if_pos (by decide : (1 : Fin 4) = 1)]
      exact chartYt_fin3 (0 : Fin 3) ⟨0, by decide⟩ rfl
    · simp only [RingHom.comp_apply, RingHom.id_apply, chartYtToNormal, normalYtToChart,
        Ideal.Quotient.lift_mk, chartYtToNormalEval, normalYtToModel, MvPolynomial.eval₂Hom_X']
      rw [if_neg (by decide), if_pos (by decide),
        MvPolynomial.eval₂Hom_X',
        if_neg (by decide : (2 : Fin 4) ≠ 0), if_neg (by decide : (2 : Fin 4) ≠ 1),
        if_pos (by decide : (2 : Fin 4) = 2)]
      exact chartYt_fin3 (1 : Fin 3) ⟨1, by decide⟩ rfl
    · simp only [RingHom.comp_apply, RingHom.id_apply, chartYtToNormal, normalYtToChart,
        Ideal.Quotient.lift_mk, chartYtToNormalEval, normalYtToModel, MvPolynomial.eval₂Hom_X']
      rw [if_neg (by decide), if_neg (by decide),
        MvPolynomial.eval₂Hom_X',
        if_neg (by decide : (3 : Fin 4) ≠ 0), if_neg (by decide : (3 : Fin 4) ≠ 1),
        if_neg (by decide : (3 : Fin 4) ≠ 2)]
      exact chartYt_fin3 (2 : Fin 3) ⟨2, by decide⟩ rfl

private lemma normalYtToChart_comp_chartYtToNormal :
    normalYtToChart.comp chartYtToNormal = RingHom.id _ := by
  apply Ideal.Quotient.ringHom_ext
  apply MvPolynomial.ringHom_ext
  · intro r
    simp only [RingHom.comp_apply, RingHom.id_apply, chartYtToNormal, chartYtToNormalEval,
      normalYtToChart, normalYtToModel, Ideal.Quotient.lift_mk, MvPolynomial.eval₂Hom_C]
  · intro i
    fin_cases i
    · simp only [RingHom.comp_apply, RingHom.id_apply, chartYtToNormal, Ideal.Quotient.lift_mk,
        chartYtToNormalEval, MvPolynomial.eval₂Hom_X']
      rw [if_pos (by decide)]
      simp only [normalYtToChart, Ideal.Quotient.lift_mk, RingHom.comp_apply, normalYtToModel,
        map_mul, MvPolynomial.eval₂Hom_X']
      rw [if_true, if_neg (by decide : (1 : Fin 3) ≠ 0), if_true]
      rw [← map_mul (Ideal.Quotient.mk modelYtTrueIdeal), Ideal.Quotient.eq]
      have hmem (j : Fin 4) (hj : j = 0) :
          MvPolynomial.X 1 * MvPolynomial.X 2 - MvPolynomial.X j ∈ modelYtTrueIdeal := by
        subst hj
        rw [CharTwo.sub_eq_add, add_comm, ← CharTwo.sub_eq_add, modelYtTrueIdeal]
        exact Ideal.subset_span (Set.mem_insert _ _)
      apply hmem
      exact Fin.ext rfl
    · simp only [RingHom.comp_apply, RingHom.id_apply, chartYtToNormal, Ideal.Quotient.lift_mk,
        chartYtToNormalEval, MvPolynomial.eval₂Hom_X']
      rw [if_neg (by decide), if_pos (by decide)]
      simp only [normalYtToChart, Ideal.Quotient.lift_mk, RingHom.comp_apply, normalYtToModel,
        MvPolynomial.eval₂Hom_X']
      rw [if_true]
      exact chartYt_fin4 1 ⟨1, by decide⟩ rfl
    · simp only [RingHom.comp_apply, RingHom.id_apply, chartYtToNormal, Ideal.Quotient.lift_mk,
        chartYtToNormalEval, MvPolynomial.eval₂Hom_X']
      rw [if_neg (by decide), if_neg (by decide), if_pos (by decide)]
      simp only [normalYtToChart, Ideal.Quotient.lift_mk, RingHom.comp_apply, normalYtToModel,
        MvPolynomial.eval₂Hom_X']
      rw [if_true]
      exact chartYt_fin4 2 ⟨2, by decide⟩ rfl
    · simp only [RingHom.comp_apply, RingHom.id_apply, chartYtToNormal, Ideal.Quotient.lift_mk,
        chartYtToNormalEval, MvPolynomial.eval₂Hom_X']
      rw [if_neg (by decide), if_neg (by decide), if_neg (by decide)]
      simp only [normalYtToChart, Ideal.Quotient.lift_mk, RingHom.comp_apply, normalYtToModel,
        MvPolynomial.eval₂Hom_X']
      rw [if_neg (by decide : (2 : Fin 3) ≠ 0), if_neg (by decide : (2 : Fin 3) ≠ 1)]
      exact chartYt_fin4 3 ⟨3, by decide⟩ rfl

/-- Eliminating `X` by `X = Y·S`. -/
noncomputable def modelYtChart_quotient_equiv_normal :
    modelYtChart ≃+* chartYtNormalRing :=
  RingEquiv.ofRingHom chartYtToNormal normalYtToChart
    chartYtToNormal_comp_normalYtToChart normalYtToChart_comp_chartYtToNormal

#print axioms Beal.MathlibMissing.chartYt_X_eq_Y_mul_X_over_Y
#print axioms Beal.MathlibMissing.chartYt_Y_mul_two_over_Y_eq_zero
#print axioms Beal.MathlibMissing.chartYt_Y_sq_eq_X_cu
#print axioms Beal.MathlibMissing.chartYt_cusp_relation
#print axioms Beal.MathlibMissing.chartYt_two_over_Y_sq_zero
#print axioms Beal.MathlibMissing.chartOfModelTrueY
#print axioms Beal.MathlibMissing.modelYtChart_quotient_equiv_normal

end Beal.MathlibMissing
