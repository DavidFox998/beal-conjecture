import Beal.MathlibMissing.ChartInjective

/-!
`D₊(Yt)` for `Y² = X³ + 2` at `(0, 0)`.

`Yt` is the inverted degree-one class. The degree-zero coordinates are
`Y`, `X = Y · (Xt / Yt)`, and `U = 2t / Yt`. The cusp relation in this
chart is `Y² · (1 - Y · (Xt / Yt)³) = 0`.

That is not the v37 ideal. `modelXtChart ≃+* D₊(Xt)` uses
`U + X² + X·V²` with `V = Yt / Xt`, and `Xt` is not inverted here.
`modelYtChart` is the same polynomial quotient as `modelXtChart`;
the equivalence `modelXtChart_equiv_DplusXt` still lands in `D₊(Xt)`.
There is no `modelYtChart_equiv_DplusYt`.

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

/-- Same quotient as `modelXtChart`. The v37 equivalence identifies it
with `D₊(Xt)`. -/
abbrev modelYtChart : Type := modelXtChart

#print axioms Beal.MathlibMissing.chartYt_X_eq_Y_mul_X_over_Y
#print axioms Beal.MathlibMissing.chartYt_Y_mul_two_over_Y_eq_zero
#print axioms Beal.MathlibMissing.chartYt_Y_sq_eq_X_cu
#print axioms Beal.MathlibMissing.chartYt_cusp_relation
#print axioms Beal.MathlibMissing.chartYt_two_over_Y_sq_zero

end Beal.MathlibMissing
