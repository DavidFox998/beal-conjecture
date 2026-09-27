import Beal.«Beal.General».GenericFibreProjectionX

/-!
The cubic presentation over the other coordinate of the affine
Weierstrass curve. Here the polynomial coefficient variable is `y`
and the adjoined variable is `x`.
-/

namespace Beal.General

open Polynomial

/-- The negative of the affine Weierstrass equation, seen as a
monic cubic in `x` over `K[y]`. -/
noncomputable def weierstrass_cubicX
    {K : Type*} [CommRing K] (W : WeierstrassCurve K) :
    Polynomial (Polynomial K) :=
  X ^ 3 + C (C W.a₂) * X ^ 2 +
    C (C W.a₄ - C W.a₁ * X) * X +
    C (C W.a₆ - X ^ 2 - C W.a₃ * X)

theorem weierstrass_cubicX_monic
    {K : Type*} [CommRing K] (W : WeierstrassCurve K) :
    (weierstrass_cubicX W).Monic := by
  have h : weierstrass_cubicX W =
      Cubic.toPoly
        (⟨1, C W.a₂, C W.a₄ - C W.a₁ * X,
          C W.a₆ - X ^ 2 - C W.a₃ * X⟩ : Cubic (Polynomial K)) := by
    simp [weierstrass_cubicX, Cubic.toPoly]
  rw [h]
  exact Cubic.monic_of_a_eq_one'

/-- Swapping the two variables takes the cubic presentation to
the negative of the original affine equation. -/
theorem weierstrass_cubicX_eval
    {K T : Type*} [CommRing K] [CommRing T]
    (W : WeierstrassCurve K) (k : K →+* T) (x y : T) :
    (weierstrass_cubicX W).eval₂ (Polynomial.eval₂RingHom k y) x =
      -W.toAffine.polynomial.eval₂ (Polynomial.eval₂RingHom k x) y := by
  simp only [weierstrass_cubicX, WeierstrassCurve.Affine.polynomial,
    Polynomial.eval₂_add, Polynomial.eval₂_sub, Polynomial.eval₂_mul,
    Polynomial.eval₂_pow, Polynomial.eval₂_C, Polynomial.eval₂_X,
    RingHom.map_add, RingHom.map_sub, RingHom.map_mul, RingHom.map_pow,
    Polynomial.coe_eval₂RingHom, Polynomial.eval₂_neg]
  simp only [Polynomial.eval₂_C, Polynomial.eval₂_X, WeierstrassCurve.toAffine]
  ring

/-- The cubic's derivative is the negative of the affine
`x`-partial after evaluating the two coordinates. -/
theorem weierstrass_cubicX_derivative_eval
    {K T : Type*} [CommRing K] [CommRing T]
    (W : WeierstrassCurve K) (k : K →+* T) (x y : T) :
    (Polynomial.derivative (weierstrass_cubicX W)).eval₂
        (Polynomial.eval₂RingHom k y) x =
      -(k W.a₁ * y - (3 * x ^ 2 + k 2 * k W.a₂ * x + k W.a₄)) := by
  simp only [weierstrass_cubicX, Polynomial.derivative_add,
    Polynomial.derivative_mul, Polynomial.derivative_X_pow,
    Polynomial.derivative_C, Polynomial.derivative_X,
    Polynomial.eval₂_add, Polynomial.eval₂_sub, Polynomial.eval₂_mul,
    Polynomial.eval₂_pow, Polynomial.eval₂_C, Polynomial.eval₂_X,
    Polynomial.coe_eval₂RingHom, Polynomial.eval₂_neg]
  simp only [Polynomial.eval₂_C, Polynomial.eval₂_X, Polynomial.eval₂_ofNat,
    Polynomial.eval₂_natCast, Polynomial.eval₂_zero, Polynomial.eval₂_one,
    Polynomial.coe_eval₂RingHom,
    map_ofNat, zero_mul, mul_zero, zero_add, add_zero, one_mul, mul_one]
  ring

/-- Map the cubic-in-`x` presentation to the original affine
presentation, sending the new base coordinate to `y`. -/
noncomputable def weierstrass_cubicX_to_affine
    {K : Type*} [CommRing K] (W : WeierstrassCurve K) :
    AdjoinRoot (weierstrass_cubicX W) →+*
      AdjoinRoot W.toAffine.polynomial := by
  let f := W.toAffine.polynomial
  let B := AdjoinRoot f
  let x : B := (AdjoinRoot.of f) X
  let y : B := AdjoinRoot.root f
  let k : K →+* B := (AdjoinRoot.of f).comp C
  let i : Polynomial K →+* B := Polynomial.eval₂RingHom k y
  have hi : Polynomial.eval₂RingHom k x = AdjoinRoot.of f := by
    apply Polynomial.ringHom_ext
    · intro a
      simp [k, x, Polynomial.eval₂RingHom]
    · simp [k, x, Polynomial.eval₂RingHom]
  have hroot : f.eval₂ (Polynomial.eval₂RingHom k x) y = 0 := by
    rw [hi]
    exact AdjoinRoot.eval₂_root f
  have hcubic : (weierstrass_cubicX W).eval₂ i x = 0 := by
    rw [weierstrass_cubicX_eval, hroot, neg_zero]
  exact AdjoinRoot.lift i x hcubic

/-- Map the original affine presentation to the cubic-in-`x`
presentation, sending the old base coordinate to the new root. -/
noncomputable def weierstrass_affine_to_cubicX
    {K : Type*} [CommRing K] (W : WeierstrassCurve K) :
    AdjoinRoot W.toAffine.polynomial →+*
      AdjoinRoot (weierstrass_cubicX W) := by
  let f := weierstrass_cubicX W
  let B := AdjoinRoot f
  let x : B := AdjoinRoot.root f
  let y : B := (AdjoinRoot.of f) X
  let k : K →+* B := (AdjoinRoot.of f).comp C
  let i : Polynomial K →+* B := Polynomial.eval₂RingHom k x
  have hi : Polynomial.eval₂RingHom k y = AdjoinRoot.of f := by
    apply Polynomial.ringHom_ext
    · intro a
      simp [k, y, Polynomial.eval₂RingHom]
    · simp [k, y, Polynomial.eval₂RingHom]
  have hroot : f.eval₂ (Polynomial.eval₂RingHom k y) x = 0 := by
    rw [hi]
    exact AdjoinRoot.eval₂_root f
  have haffine : W.toAffine.polynomial.eval₂ i y = 0 := by
    have h : -(W.toAffine.polynomial.eval₂ i y) = 0 := by
      rw [← weierstrass_cubicX_eval]
      exact hroot
    exact neg_eq_zero.mp h
  exact AdjoinRoot.lift i y haffine

/-- The two quotient presentations define the same affine
coordinate ring, without requiring a rational point. -/
noncomputable def weierstrass_cubicX_equiv_affine
    {K : Type*} [CommRing K] (W : WeierstrassCurve K) :
    AdjoinRoot (weierstrass_cubicX W) ≃+*
      AdjoinRoot W.toAffine.polynomial := by
  let fx := weierstrass_cubicX W
  let fy := W.toAffine.polynomial
  let F := weierstrass_cubicX_to_affine W
  let G := weierstrass_affine_to_cubicX W
  have hFroot : F (AdjoinRoot.root fx) = (AdjoinRoot.of fy) X := by
    simp [F, weierstrass_cubicX_to_affine]
  have hGroot : G (AdjoinRoot.root fy) = (AdjoinRoot.of fx) X := by
    simp [G, weierstrass_affine_to_cubicX]
  have hFbase (a : K) :
      F ((AdjoinRoot.of fx) (C a)) = (AdjoinRoot.of fy) (C a) := by
    simp [F, weierstrass_cubicX_to_affine, Polynomial.eval₂RingHom]
  have hGbase (a : K) :
      G ((AdjoinRoot.of fy) (C a)) = (AdjoinRoot.of fx) (C a) := by
    simp [G, weierstrass_affine_to_cubicX, Polynomial.eval₂RingHom]
  have hFY : F ((AdjoinRoot.of fx) X) = AdjoinRoot.root fy := by
    simp [F, weierstrass_cubicX_to_affine, Polynomial.eval₂RingHom]
  have hGX : G ((AdjoinRoot.of fy) X) = AdjoinRoot.root fx := by
    simp [G, weierstrass_affine_to_cubicX, Polynomial.eval₂RingHom]
  have hFGbase : (F.comp G).comp (AdjoinRoot.of fy) = AdjoinRoot.of fy := by
    apply Polynomial.ringHom_ext
    · intro a
      simp only [RingHom.comp_apply]
      rw [hGbase, hFbase]
    · simp only [RingHom.comp_apply]
      rw [hGX, hFroot]
  have hFG : F.comp G = RingHom.id (AdjoinRoot fy) := by
    apply (RingHom.cancel_right (f := AdjoinRoot.mk fy)
      AdjoinRoot.mk_surjective).mp
    apply Polynomial.ringHom_ext
    · intro a
      simpa only [RingHom.comp_apply, AdjoinRoot.mk_C, RingHom.id_apply] using
        congrArg (fun h : Polynomial K →+* AdjoinRoot fy => h a) hFGbase
    · simpa only [RingHom.comp_apply, AdjoinRoot.mk_X, RingHom.id_apply]
        using (congrArg F hGroot).trans hFY
  have hGFbase : (G.comp F).comp (AdjoinRoot.of fx) = AdjoinRoot.of fx := by
    apply Polynomial.ringHom_ext
    · intro a
      simp only [RingHom.comp_apply]
      rw [hFbase, hGbase]
    · simp only [RingHom.comp_apply]
      rw [hFY, hGroot]
  have hGF : G.comp F = RingHom.id (AdjoinRoot fx) := by
    apply (RingHom.cancel_right (f := AdjoinRoot.mk fx)
      AdjoinRoot.mk_surjective).mp
    apply Polynomial.ringHom_ext
    · intro a
      simpa only [RingHom.comp_apply, AdjoinRoot.mk_C, RingHom.id_apply] using
        congrArg (fun h : Polynomial K →+* AdjoinRoot fx => h a) hGFbase
    · simpa only [RingHom.comp_apply, AdjoinRoot.mk_X, RingHom.id_apply]
        using (congrArg G hFroot).trans hGX
  exact RingEquiv.ofHomInv F G hGF hFG

/-- For any monic polynomial over `K[y]` whose quotient is a
domain, a nonzero curve prime contracts to a maximal ideal of
the polynomial base, without assuming a rational residue field. -/
theorem monic_adjoinRoot_nonzeroPrime_contraction_maximal
    {K : Type*} [Field K] (f : Polynomial (Polynomial K))
    (hf : f.Monic) [IsDomain (AdjoinRoot f)]
    (P : Ideal (AdjoinRoot f)) [P.IsPrime] (hP : P ≠ ⊥) :
    (Ideal.comap (AdjoinRoot.of f) P).IsMaximal := by
  letI : Module.Finite (Polynomial K) (AdjoinRoot f) :=
    (AdjoinRoot.powerBasis' hf).finite
  letI : Algebra.IsIntegral (Polynomial K) (AdjoinRoot f) :=
    Algebra.IsIntegral.of_finite (Polynomial K) (AdjoinRoot f)
  let J : Ideal (Polynomial K) := Ideal.comap (AdjoinRoot.of f) P
  have hJ : J ≠ ⊥ := by
    obtain ⟨z, hz, hne⟩ := P.ne_bot_iff.mp hP
    exact Ideal.comap_ne_bot_of_integral_mem hne hz
      (Algebra.IsIntegral.isIntegral z)
  haveI : J.IsPrime := Ideal.comap_isPrime (AdjoinRoot.of f) P
  letI : Ring.DimensionLEOne (Polynomial K) :=
    Ring.DimensionLEOne.principal_ideal_ring (Polynomial K)
  exact Ring.DimensionLEOne.maximalOfPrime hJ inferInstance

/-- The contraction of a nonzero prime under a monic finite
projection is generated by an irreducible base polynomial. -/
theorem monic_adjoinRoot_nonzeroPrime_basePolynomial
    {K : Type*} [Field K] (f : Polynomial (Polynomial K))
    (hf : f.Monic) [IsDomain (AdjoinRoot f)]
    (P : Ideal (AdjoinRoot f)) [P.IsPrime] (hP : P ≠ ⊥) :
    ∃ q : Polynomial K, Irreducible q ∧
      Ideal.comap (AdjoinRoot.of f) P = Ideal.span {q} := by
  let J : Ideal (Polynomial K) := Ideal.comap (AdjoinRoot.of f) P
  haveI : J.IsMaximal :=
    monic_adjoinRoot_nonzeroPrime_contraction_maximal f hf P hP
  letI : J.IsPrincipal := IsPrincipalIdealRing.principal J
  let q := Submodule.IsPrincipal.generator J
  have hspan : Ideal.span {q} = J :=
    Submodule.IsPrincipal.span_singleton_generator J
  letI : Module.Finite (Polynomial K) (AdjoinRoot f) :=
    (AdjoinRoot.powerBasis' hf).finite
  letI : Algebra.IsIntegral (Polynomial K) (AdjoinRoot f) :=
    Algebra.IsIntegral.of_finite (Polynomial K) (AdjoinRoot f)
  have hJne : J ≠ ⊥ := by
    obtain ⟨z, hz, hne⟩ := P.ne_bot_iff.mp hP
    exact Ideal.comap_ne_bot_of_integral_mem hne hz
      (Algebra.IsIntegral.isIntegral z)
  have hq : q ≠ 0 := by
    intro hz
    exact hJne ((Submodule.IsPrincipal.eq_bot_iff_generator_eq_zero J).mpr hz)
  refine ⟨q, ?_, hspan.symm⟩
  apply irreducible_iff_prime.mpr
  exact (Ideal.span_singleton_prime hq).mp (hspan ▸ inferInstance)

/-- The cubic-in-`x` prime has a local parameter in the `y`
base whenever its `x`-derivative is a unit. -/
theorem weierstrass_cubicX_nonzeroPrime_principal_of_xDerivative
    {K : Type*} [Field K] (W : WeierstrassCurve K)
    (Q : Ideal (AdjoinRoot (weierstrass_cubicX W)))
    [Q.IsPrime] (hQ : Q ≠ ⊥)
    (hder : IsUnit
      ((algebraMap (AdjoinRoot (weierstrass_cubicX W))
        (Localization.AtPrime Q))
          (AdjoinRoot.mk (weierstrass_cubicX W)
            (Polynomial.derivative (weierstrass_cubicX W))))) :
    (LocalRing.maximalIdeal (Localization.AtPrime Q)).IsPrincipal := by
  let e := weierstrass_cubicX_equiv_affine W
  letI : IsDomain (AdjoinRoot W.toAffine.polynomial) :=
    weierstrass_affine_field_isDomain W
  letI : IsDomain (AdjoinRoot (weierstrass_cubicX W)) :=
    e.injective.isDomain e.toRingHom
  obtain ⟨q, _hq, hspan⟩ :=
    monic_adjoinRoot_nonzeroPrime_basePolynomial
      (weierstrass_cubicX W) (weierstrass_cubicX_monic W) Q hQ
  apply adjoinRoot_atPrime_principal_of_base_derivative_unit
    (weierstrass_cubicX W) Q q
  · exact hspan
  · rw [← hspan]
    exact monic_adjoinRoot_nonzeroPrime_contraction_maximal
      (weierstrass_cubicX W) (weierstrass_cubicX_monic W) Q hQ
  · exact hder

/-- A principal maximal ideal at a prime transports along a
ring equivalence to the corresponding local ring. -/
theorem atPrime_maximalIdeal_principal_of_ringEquiv
    {A B : Type*} [CommRing A] [CommRing B]
    (e : A ≃+* B) (P : Ideal B) [P.IsPrime]
    (Q : Ideal A) [Q.IsPrime]
    (hQ : Q = Ideal.comap e.toRingHom P)
    (hprincipal : (LocalRing.maximalIdeal (Localization.AtPrime Q)).IsPrincipal) :
    (LocalRing.maximalIdeal (Localization.AtPrime P)).IsPrincipal := by
  have hsub : Q.primeCompl.map e.toMonoidHom = P.primeCompl := by
    ext b
    constructor
    · rintro ⟨a, ha, rfl⟩
      simpa [hQ] using ha
    · intro hb
      refine ⟨e.symm b, ?_, e.apply_symm_apply b⟩
      change e.symm b ∉ Q
      rw [hQ]
      change e (e.symm b) ∉ P
      simpa using hb
  let E : Localization.AtPrime Q ≃+* Localization.AtPrime P :=
    IsLocalization.ringEquivOfRingEquiv
      (Localization.AtPrime Q) (Localization.AtPrime P) e hsub
  have hmax : Ideal.map E.toRingHom
      (LocalRing.maximalIdeal (Localization.AtPrime Q)) =
        LocalRing.maximalIdeal (Localization.AtPrime P) := by
    have hI' : (Ideal.comap E.symm.toRingHom
        (LocalRing.maximalIdeal (Localization.AtPrime Q))).IsMaximal :=
      Ideal.comap_isMaximal_of_surjective E.symm.toRingHom E.symm.surjective
    have hI : (Ideal.map E.toRingHom
        (LocalRing.maximalIdeal (Localization.AtPrime Q))).IsMaximal :=
      (Ideal.comap_symm
        (LocalRing.maximalIdeal (Localization.AtPrime Q)) E) ▸ hI'
    exact LocalRing.eq_maximalIdeal hI
  obtain ⟨a, ha⟩ := hprincipal
  have hspan : Ideal.map E.toRingHom
      (LocalRing.maximalIdeal (Localization.AtPrime Q)) =
        Ideal.span {E a} := by
    calc
      _ = Ideal.map E.toRingHom (Ideal.span {a}) := by
        rw [ha, Ideal.submodule_span_eq]
      _ = Ideal.span {E a} := by
        rw [Ideal.map_span, Set.image_singleton]
        rfl
  rw [← hmax, hspan]
  exact ⟨E a, rfl⟩

/-- A unit `x`-partial on the field-valued affine curve makes the
maximal ideal principal, using the cubic presentation over `K[y]`.
The base polynomial in `y` may be irreducible of any degree. -/
theorem weierstrass_affine_field_nonzeroPrime_principal_of_xPartial
    {K : Type*} [Field K] (W : WeierstrassCurve K)
    (P : Ideal (AdjoinRoot W.toAffine.polynomial))
    [P.IsPrime] (hP : P ≠ ⊥)
    (hder : IsUnit
      ((algebraMap (AdjoinRoot W.toAffine.polynomial)
          (Localization.AtPrime P))
        ((AdjoinRoot.of W.toAffine.polynomial) (C W.a₁) *
            AdjoinRoot.root W.toAffine.polynomial -
          (3 * ((AdjoinRoot.of W.toAffine.polynomial) X) ^ 2 +
            2 * (AdjoinRoot.of W.toAffine.polynomial) (C W.a₂) *
              (AdjoinRoot.of W.toAffine.polynomial) X +
            (AdjoinRoot.of W.toAffine.polynomial) (C W.a₄))))) :
    (LocalRing.maximalIdeal (Localization.AtPrime P)).IsPrincipal := by
  let fx := weierstrass_cubicX W
  let fy := W.toAffine.polynomial
  let B := AdjoinRoot fy
  let D := AdjoinRoot fx
  let e : D ≃+* B := weierstrass_cubicX_equiv_affine W
  let Q : Ideal D := Ideal.comap e.toRingHom P
  haveI : Q.IsPrime := Ideal.comap_isPrime e.toRingHom P
  have hQ : Q ≠ ⊥ := by
    obtain ⟨z, hz, hne⟩ := P.ne_bot_iff.mp hP
    intro heq
    have hzQ : e.symm z ∈ Q := by
      change e (e.symm z) ∈ P
      simpa using hz
    have hz0 : e.symm z = 0 := by simpa [heq] using hzQ
    exact hne (by simpa using congrArg e hz0)
  let x : B := (AdjoinRoot.of fy) X
  let y : B := AdjoinRoot.root fy
  let k : K →+* B := (AdjoinRoot.of fy).comp C
  have himage : e (AdjoinRoot.mk fx (Polynomial.derivative fx)) =
      -(k W.a₁ * y -
        (3 * x ^ 2 + k 2 * k W.a₂ * x + k W.a₄)) := by
    change (weierstrass_cubicX_to_affine W)
      (AdjoinRoot.mk fx (Polynomial.derivative fx)) = _
    simp only [weierstrass_cubicX_to_affine, AdjoinRoot.lift_mk]
    exact weierstrass_cubicX_derivative_eval W k x y
  have hnotP : k W.a₁ * y -
      (3 * x ^ 2 + k 2 * k W.a₂ * x + k W.a₄) ∉ P := by
    have hder' : IsUnit ((algebraMap B (Localization.AtPrime P))
        (k W.a₁ * y -
          (3 * x ^ 2 + k 2 * k W.a₂ * x + k W.a₄))) := by
      simpa only [k, x, y, RingHom.comp_apply, map_ofNat] using hder
    exact (IsLocalization.AtPrime.isUnit_to_map_iff _ P _).mp hder'
  have hnotQ : AdjoinRoot.mk fx (Polynomial.derivative fx) ∉ Q := by
    intro hd
    have hmem : e (AdjoinRoot.mk fx (Polynomial.derivative fx)) ∈ P := hd
    rw [himage] at hmem
    exact hnotP (P.neg_mem_iff.mp hmem)
  have hunit : IsUnit ((algebraMap D (Localization.AtPrime Q))
      (AdjoinRoot.mk fx (Polynomial.derivative fx))) :=
    (IsLocalization.AtPrime.isUnit_to_map_iff _ Q _).mpr hnotQ
  have hprincipal :
      (LocalRing.maximalIdeal (Localization.AtPrime Q)).IsPrincipal :=
    weierstrass_cubicX_nonzeroPrime_principal_of_xDerivative W Q hQ hunit
  exact atPrime_maximalIdeal_principal_of_ringEquiv e P Q rfl hprincipal

/-- At a prime of a field-valued affine Weierstrass curve with
nonzero discriminant, one of the two partials is a local unit.
This does not assume that the prime has a rational residue field. -/
theorem weierstrass_affine_field_jacobian_unit
    {K : Type*} [Field K] (W : WeierstrassCurve K)
    (hΔ : W.Δ ≠ 0)
    (P : Ideal (AdjoinRoot W.toAffine.polynomial)) [P.IsPrime] :
    let f := W.toAffine.polynomial
    let B := AdjoinRoot f
    let x : B := (AdjoinRoot.of f) X
    let y : B := AdjoinRoot.root f
    let k : K →+* B := (AdjoinRoot.of f).comp C
    IsUnit ((algebraMap B (Localization.AtPrime P))
      (k W.a₁ * y - (3 * x ^ 2 + k 2 * k W.a₂ * x + k W.a₄))) ∨
    IsUnit ((algebraMap B (Localization.AtPrime P))
      (k 2 * y + k W.a₁ * x + k W.a₃)) := by
  let f := W.toAffine.polynomial
  let B := AdjoinRoot f
  let x : B := (AdjoinRoot.of f) X
  let y : B := AdjoinRoot.root f
  let k : K →+* B := (AdjoinRoot.of f).comp C
  let π : B →+* B ⧸ P := Ideal.Quotient.mk P
  let φ : K →+* B ⧸ P := π.comp k
  have hr : f.eval₂ (AdjoinRoot.of f) y = 0 := AdjoinRoot.eval₂_root f
  have hEq : (W.map k).toAffine.Equation x y := by
    apply ((W.map k).toAffine.equation_iff' x y).mpr
    change W.toAffine.polynomial.eval₂ (AdjoinRoot.of f) y = 0 at hr
    simp only [WeierstrassCurve.Affine.polynomial,
      Polynomial.eval₂_add, Polynomial.eval₂_sub, Polynomial.eval₂_mul,
      Polynomial.eval₂_pow, Polynomial.eval₂_C, Polynomial.eval₂_X,
      RingHom.map_add, RingHom.map_sub, RingHom.map_mul, RingHom.map_pow] at hr
    simp only [WeierstrassCurve.toAffine] at hr
    change y ^ 2 + (k W.a₁ * x + k W.a₃) * y -
      (x ^ 3 + k W.a₂ * x ^ 2 + k W.a₄ * x + k W.a₆) = 0 at hr
    change y ^ 2 + k W.a₁ * x * y + k W.a₃ * y -
      (x ^ 3 + k W.a₂ * x ^ 2 + k W.a₄ * x + k W.a₆) = 0
    linear_combination hr
  have hEq' : (W.map φ).toAffine.Equation (π x) (π y) := by
    apply ((W.map φ).toAffine.equation_iff' (π x) (π y)).mpr
    have heq := ((W.map k).toAffine.equation_iff' x y).mp hEq
    have heq' := congrArg π heq
    simpa [φ, k, WeierstrassCurve.map, WeierstrassCurve.toAffine,
      RingHom.comp_apply, map_add, map_sub, map_mul, map_pow, map_ofNat]
      using heq'
  have hΔ' : (W.map φ).Δ ≠ 0 := by
    rw [WeierstrassCurve.map_Δ]
    simpa only [map_zero] using (RingHom.injective φ).ne hΔ
  have hn := (((W.map φ).toAffine.nonsingular_iff' (π x) (π y)).mp
    ((W.map φ).toAffine.nonsingular_of_Δ_ne_zero hEq' hΔ')).2
  have hn' : φ W.a₁ * π y -
      (3 * (π x) ^ 2 + φ 2 * φ W.a₂ * π x + φ W.a₄) ≠ 0 ∨
      φ 2 * π y + φ W.a₁ * π x + φ W.a₃ ≠ 0 := by
    simpa [WeierstrassCurve.map] using hn
  rcases hn' with hx | hy
  · left
    apply (IsLocalization.AtPrime.isUnit_to_map_iff _ P _).mpr
    intro hd
    apply hx
    have hz : π (k W.a₁ * y -
        (3 * x ^ 2 + k 2 * k W.a₂ * x + k W.a₄)) = 0 :=
      Ideal.Quotient.eq_zero_iff_mem.mpr hd
    simpa [φ, RingHom.comp_apply, map_sub, map_add, map_mul,
      map_pow, map_ofNat] using hz
  · right
    apply (IsLocalization.AtPrime.isUnit_to_map_iff _ P _).mpr
    intro hd
    apply hy
    have hz : π (k 2 * y + k W.a₁ * x + k W.a₃) = 0 :=
      Ideal.Quotient.eq_zero_iff_mem.mpr hd
    simpa [φ, RingHom.comp_apply, map_add, map_mul,
      map_ofNat] using hz

/-- Evaluating the derivative in the adjoined `y` variable
recovers the full affine `y`-partial. -/
theorem weierstrass_affine_derivative_eval
    {K T : Type*} [CommRing K] [CommRing T]
    (W : WeierstrassCurve K) (k : K →+* T) (x y : T) :
    (Polynomial.derivative W.toAffine.polynomial).eval₂
        (Polynomial.eval₂RingHom k x) y =
      k 2 * y + k W.a₁ * x + k W.a₃ := by
  simp only [WeierstrassCurve.Affine.polynomial,
    Polynomial.derivative_add, Polynomial.derivative_sub,
    Polynomial.derivative_mul, Polynomial.derivative_X_pow,
    Polynomial.derivative_C, Polynomial.derivative_X,
    Polynomial.eval₂_add, Polynomial.eval₂_sub, Polynomial.eval₂_mul,
    Polynomial.eval₂_pow, Polynomial.eval₂_C, Polynomial.eval₂_X,
    Polynomial.coe_eval₂RingHom]
  simp only [WeierstrassCurve.toAffine, Polynomial.eval₂_C,
    Polynomial.eval₂_X, Polynomial.eval₂_natCast,
    Polynomial.eval₂_zero, Polynomial.eval₂_one,
    map_ofNat, zero_mul, mul_zero, zero_add, add_zero, one_mul, mul_one]
  ring

/-- Every prime localization of a smooth field-valued affine
Weierstrass curve has a principal maximal ideal, including primes
with non-rational residue fields and the generic point. -/
theorem weierstrass_affine_field_atPrime_principal
    {K : Type*} [Field K] (W : WeierstrassCurve K)
    (hΔ : W.Δ ≠ 0)
    (P : Ideal (AdjoinRoot W.toAffine.polynomial)) [P.IsPrime] :
    (LocalRing.maximalIdeal (Localization.AtPrime P)).IsPrincipal := by
  by_cases hP : P = ⊥
  · exact atPrime_bot_maximalIdeal_principal P hP
  rcases weierstrass_affine_field_jacobian_unit W hΔ P with hx | hy
  · exact weierstrass_affine_field_nonzeroPrime_principal_of_xPartial W P hP hx
  · let f := W.toAffine.polynomial
    let B := AdjoinRoot f
    let x : B := (AdjoinRoot.of f) X
    let y : B := AdjoinRoot.root f
    let k : K →+* B := (AdjoinRoot.of f).comp C
    have hi : Polynomial.eval₂RingHom k x = AdjoinRoot.of f := by
      apply Polynomial.ringHom_ext
      · intro a
        simp [k, x, Polynomial.eval₂RingHom]
      · simp [k, x, Polynomial.eval₂RingHom]
    have hder : AdjoinRoot.mk f (Polynomial.derivative f) =
        k 2 * y + k W.a₁ * x + k W.a₃ := by
      rw [← AdjoinRoot.aeval_eq, Polynomial.aeval_def]
      rw [AdjoinRoot.algebraMap_eq, ← hi]
      exact weierstrass_affine_derivative_eval W k x y
    apply weierstrass_affine_field_nonzeroPrime_principal_of_yPartial W P hP
    rw [hder]
    exact hy

end Beal.General