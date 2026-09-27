import Beal.«Beal.General».ZChartGenericFibreComparison

/-!
The base fraction field acts on any localization of the actual
integral chart in which the uniformizer is invertible. The
comparison with the field-valued coordinate ring is built from
this coefficient map and the quotient equation.
-/

namespace Beal.General

/-- Inverting `2` in any actual-chart algebra inverts every
nonzero coefficient from the base DVR. -/
theorem projectiveWeierstrassZChart_invertTwo_base_unit
    (W : WeierstrassCurve ℤ_[2])
    (S : Type*) [CommRing S]
    [Algebra (projectiveWeierstrassZChartRing W) S]
    [IsLocalization.Away
      (algebraMap ℤ_[2] (projectiveWeierstrassZChartRing W) 2) S]
    (a : ℤ_[2]) (ha : a ≠ 0) :
    IsUnit ((algebraMap (projectiveWeierstrassZChartRing W) S)
      ((algebraMap ℤ_[2] (projectiveWeierstrassZChartRing W)) a)) := by
  let c : ℤ_[2] →+* S :=
    (algebraMap (projectiveWeierstrassZChartRing W) S).comp
      (algebraMap ℤ_[2] (projectiveWeierstrassZChartRing W))
  obtain ⟨n, u, hu⟩ :=
    DiscreteValuationRing.eq_unit_mul_pow_irreducible
      ha (PadicInt.irreducible_p (p := 2))
  change IsUnit (c a)
  rw [hu, map_mul, map_pow]
  have hcunit : IsUnit (c (2 : ℤ_[2])) :=
    IsLocalization.Away.algebraMap_isUnit
      (S := S) (algebraMap ℤ_[2] (projectiveWeierstrassZChartRing W) 2)
  exact (IsUnit.map c u.isUnit).mul (hcunit.pow n)

/-- The coefficient fraction field maps into any localization
of the actual chart that inverts `2`. -/
noncomputable def projectiveWeierstrassZChart_invertTwo_fractionMap
    (W : WeierstrassCurve ℤ_[2])
    (S : Type*) [CommRing S]
    [Algebra (projectiveWeierstrassZChartRing W) S]
    [IsLocalization.Away
      (algebraMap ℤ_[2] (projectiveWeierstrassZChartRing W) 2) S] :
    ℚ_[2] →+* S := by
  let c : ℤ_[2] →+* S :=
    (algebraMap (projectiveWeierstrassZChartRing W) S).comp
      (algebraMap ℤ_[2] (projectiveWeierstrassZChartRing W))
  have hunit (s : nonZeroDivisors ℤ_[2]) : IsUnit (c s) :=
    projectiveWeierstrassZChart_invertTwo_base_unit W S s
      (mem_nonZeroDivisors_iff_ne_zero.mp s.property)
  exact IsLocalization.lift (S := ℚ_[2]) (g := c) hunit

/-- The fraction-field map agrees with the original
integral coefficient map. -/
theorem projectiveWeierstrassZChart_invertTwo_fractionMap_base
    (W : WeierstrassCurve ℤ_[2])
    (S : Type*) [CommRing S]
    [Algebra (projectiveWeierstrassZChartRing W) S]
    [IsLocalization.Away
      (algebraMap ℤ_[2] (projectiveWeierstrassZChartRing W) 2) S]
    (a : ℤ_[2]) :
    projectiveWeierstrassZChart_invertTwo_fractionMap W S
      (algebraMap ℤ_[2] ℚ_[2] a) =
    (algebraMap (projectiveWeierstrassZChartRing W) S)
      ((algebraMap ℤ_[2] (projectiveWeierstrassZChartRing W)) a) := by
  simp only [projectiveWeierstrassZChart_invertTwo_fractionMap,
    IsLocalization.lift_eq, RingHom.comp_apply]

set_option maxHeartbeats 500000 in
/-- The generic affine Weierstrass coordinate ring maps back
to any localization of the actual chart in which `2` is
invertible. No inverse law is asserted here. -/
noncomputable def projectiveWeierstrassZChart_fractionCurve_to_invertTwo
    (W : WeierstrassCurve ℤ_[2])
    (S : Type*) [CommRing S]
    [Algebra (projectiveWeierstrassZChartRing W) S]
    [IsLocalization.Away
      (algebraMap ℤ_[2] (projectiveWeierstrassZChartRing W) 2) S] :
    AdjoinRoot (W.map (algebraMap ℤ_[2] ℚ_[2])).toAffine.polynomial →+* S := by
  let R := projectiveWeierstrassZChartRing W
  let φ : ℤ_[2] →+* ℚ_[2] := algebraMap ℤ_[2] ℚ_[2]
  let k : ℚ_[2] →+* S :=
    projectiveWeierstrassZChart_invertTwo_fractionMap W S
  let q : MvPolynomial (Fin 2) ℤ_[2] →+* R :=
    Ideal.Quotient.mk (Ideal.span {localSurfaceEquation W 0 0})
  let loc : R →+* S := algebraMap R S
  let x : S := loc (q (MvPolynomial.X (0 : Fin 2)))
  let y : S := loc (q (MvPolynomial.X (1 : Fin 2)))
  let i : Polynomial ℚ_[2] →+* S := Polynomial.eval₂RingHom k x
  have hcoeff : k.comp φ = loc.comp (algebraMap ℤ_[2] R) := by
    ext a
    exact projectiveWeierstrassZChart_invertTwo_fractionMap_base W S a
  have hq : q (localSurfaceEquation W 0 0) = 0 :=
    Ideal.Quotient.eq_zero_iff_mem.mpr (Ideal.mem_span_singleton_self _)
  have heq : localWeierstrassEquation (W.map (k.comp φ)) x y = 0 := by
    rw [hcoeff]
    have hl := congrArg loc hq
    simpa [q, loc, x, y, localSurfaceEquation, localWeierstrassEquation,
      WeierstrassCurve.map, RingHom.comp_apply] using hl
  have hiC (a : ℚ_[2]) : i (Polynomial.C a) = k a := by
    simp [i, Polynomial.eval₂RingHom]
  have hiX : i Polynomial.X = x := by
    simp [i, Polynomial.eval₂RingHom]
  have hf : Polynomial.eval₂ i y (W.map φ).toAffine.polynomial = 0 := by
    simp only [WeierstrassCurve.Affine.polynomial,
      Polynomial.eval₂_add, Polynomial.eval₂_sub, Polynomial.eval₂_mul,
      Polynomial.eval₂_pow, Polynomial.eval₂_C, Polynomial.eval₂_X,
      map_add, map_mul, map_pow, map_sub, hiC, hiX]
    simp only [WeierstrassCurve.toAffine, WeierstrassCurve.map,
      RingHom.comp_apply, localWeierstrassEquation] at *
    convert heq using 1; ring
  exact AdjoinRoot.lift i y hf

set_option maxHeartbeats 500000 in
/-- The two comparison maps compose to the canonical map
from the integral chart into a localization inverting `2`. -/
theorem projectiveWeierstrassZChart_comparison_comp
    (W : WeierstrassCurve ℤ_[2])
    (S : Type*) [CommRing S]
    [Algebra (projectiveWeierstrassZChartRing W) S]
    [IsLocalization.Away
      (algebraMap ℤ_[2] (projectiveWeierstrassZChartRing W) 2) S] :
    (projectiveWeierstrassZChart_fractionCurve_to_invertTwo W S).comp
      (projectiveWeierstrassZChart_to_fractionCurve W) =
    algebraMap (projectiveWeierstrassZChartRing W) S := by
  let R := projectiveWeierstrassZChartRing W
  let q : MvPolynomial (Fin 2) ℤ_[2] →+* R :=
    Ideal.Quotient.mk (Ideal.span {localSurfaceEquation W 0 0})
  apply (RingHom.cancel_right (f := q) Ideal.Quotient.mk_surjective).mp
  apply MvPolynomial.ringHom_ext
  · intro a
    change (projectiveWeierstrassZChart_fractionCurve_to_invertTwo W S)
      ((projectiveWeierstrassZChart_to_fractionCurve W)
        (q (MvPolynomial.C a))) =
      (algebraMap R S) (q (MvPolynomial.C a))
    change (projectiveWeierstrassZChart_fractionCurve_to_invertTwo W S)
      ((projectiveWeierstrassZChart_to_fractionCurve W)
        (algebraMap ℤ_[2] R a)) =
      (algebraMap R S) (algebraMap ℤ_[2] R a)
    rw [projectiveWeierstrassZChart_to_fractionCurve_base]
    simp only [projectiveWeierstrassZChart_fractionCurve_to_invertTwo,
      AdjoinRoot.lift_of]
    simpa [Polynomial.eval₂RingHom] using
      (projectiveWeierstrassZChart_invertTwo_fractionMap_base W S a)
  · intro j
    fin_cases j
    · change (projectiveWeierstrassZChart_fractionCurve_to_invertTwo W S)
        ((projectiveWeierstrassZChart_to_fractionCurve W)
          ((Ideal.Quotient.mk (Ideal.span {localSurfaceEquation W 0 0}))
            (MvPolynomial.X (0 : Fin 2)))) =
        (algebraMap R S)
          ((Ideal.Quotient.mk (Ideal.span {localSurfaceEquation W 0 0}))
            (MvPolynomial.X (0 : Fin 2)))
      simp only [projectiveWeierstrassZChart_to_fractionCurve,
        Ideal.Quotient.lift_mk, MvPolynomial.eval₂Hom_X]
      simp [projectiveWeierstrassZChart_fractionCurve_to_invertTwo,
        Polynomial.eval₂RingHom]
    · change (projectiveWeierstrassZChart_fractionCurve_to_invertTwo W S)
        ((projectiveWeierstrassZChart_to_fractionCurve W)
          ((Ideal.Quotient.mk (Ideal.span {localSurfaceEquation W 0 0}))
            (MvPolynomial.X (1 : Fin 2)))) =
        (algebraMap R S)
          ((Ideal.Quotient.mk (Ideal.span {localSurfaceEquation W 0 0}))
            (MvPolynomial.X (1 : Fin 2)))
      simp only [projectiveWeierstrassZChart_to_fractionCurve,
        Ideal.Quotient.lift_mk, MvPolynomial.eval₂Hom_X]
      simp [projectiveWeierstrassZChart_fractionCurve_to_invertTwo]

/-- The map from the fraction field into the inverted chart,
followed by the comparison map, is the canonical coefficient
map of the field-valued curve. -/
theorem projectiveWeierstrassZChart_comparison_fractionMap
    (W : WeierstrassCurve ℤ_[2])
    (S : Type*) [CommRing S]
    [Algebra (projectiveWeierstrassZChartRing W) S]
    [IsLocalization.Away
      (algebraMap ℤ_[2] (projectiveWeierstrassZChartRing W) 2) S] :
    (projectiveWeierstrassZChart_invertTwo_to_fractionCurve W S).comp
      (projectiveWeierstrassZChart_invertTwo_fractionMap W S) =
    (AdjoinRoot.of (W.map (algebraMap ℤ_[2] ℚ_[2])).toAffine.polynomial).comp
      (Polynomial.C : ℚ_[2] →+* Polynomial ℚ_[2]) := by
  apply IsLocalization.ringHom_ext (nonZeroDivisors ℤ_[2])
  ext a
  simp only [RingHom.comp_apply,
    projectiveWeierstrassZChart_invertTwo_fractionMap_base]
  rw [show projectiveWeierstrassZChart_invertTwo_to_fractionCurve W S
      ((algebraMap (projectiveWeierstrassZChartRing W) S)
        ((algebraMap ℤ_[2] (projectiveWeierstrassZChartRing W)) a)) =
      projectiveWeierstrassZChart_to_fractionCurve W
        (algebraMap ℤ_[2] (projectiveWeierstrassZChartRing W) a) from
    IsLocalization.lift_eq _ _]
  exact projectiveWeierstrassZChart_to_fractionCurve_base W a

/-- The forward comparison sends the first integral coordinate
to the field-valued affine `X` coordinate. -/
theorem projectiveWeierstrassZChart_to_fractionCurve_x
    (W : WeierstrassCurve ℤ_[2]) :
    projectiveWeierstrassZChart_to_fractionCurve W
      ((Ideal.Quotient.mk (Ideal.span {localSurfaceEquation W 0 0}))
        (MvPolynomial.X (0 : Fin 2))) =
    (AdjoinRoot.of (W.map (algebraMap ℤ_[2] ℚ_[2])).toAffine.polynomial)
      Polynomial.X := by
  simp [projectiveWeierstrassZChart_to_fractionCurve]

/-- The forward comparison sends the second integral coordinate
to the adjoined Weierstrass root. -/
theorem projectiveWeierstrassZChart_to_fractionCurve_y
    (W : WeierstrassCurve ℤ_[2]) :
    projectiveWeierstrassZChart_to_fractionCurve W
      ((Ideal.Quotient.mk (Ideal.span {localSurfaceEquation W 0 0}))
        (MvPolynomial.X (1 : Fin 2))) =
    AdjoinRoot.root
      (W.map (algebraMap ℤ_[2] ℚ_[2])).toAffine.polynomial := by
  simp [projectiveWeierstrassZChart_to_fractionCurve]

set_option maxHeartbeats 500000 in
/-- The map induced from the inverted actual chart, after
mapping the field-valued coordinate ring back to it, is the
identity on that coordinate ring. -/
theorem projectiveWeierstrassZChart_comparison_comp_field
    (W : WeierstrassCurve ℤ_[2])
    (S : Type*) [CommRing S]
    [Algebra (projectiveWeierstrassZChartRing W) S]
    [IsLocalization.Away
      (algebraMap ℤ_[2] (projectiveWeierstrassZChartRing W) 2) S] :
    (projectiveWeierstrassZChart_invertTwo_to_fractionCurve W S).comp
      (projectiveWeierstrassZChart_fractionCurve_to_invertTwo W S) =
    RingHom.id _ := by
  let R := projectiveWeierstrassZChartRing W
  let φ : ℤ_[2] →+* ℚ_[2] := algebraMap ℤ_[2] ℚ_[2]
  let f : Polynomial (Polynomial ℚ_[2]) := (W.map φ).toAffine.polynomial
  let F := projectiveWeierstrassZChart_invertTwo_to_fractionCurve W S
  let G := projectiveWeierstrassZChart_fractionCurve_to_invertTwo W S
  let k := projectiveWeierstrassZChart_invertTwo_fractionMap W S
  let q : MvPolynomial (Fin 2) ℤ_[2] →+* R :=
    Ideal.Quotient.mk (Ideal.span {localSurfaceEquation W 0 0})
  have hFbase (r : R) :
      F ((algebraMap R S) r) =
        projectiveWeierstrassZChart_to_fractionCurve W r :=
    IsLocalization.lift_eq _ _
  have hfield (a : ℚ_[2]) :
      F (k a) = (AdjoinRoot.of f) (Polynomial.C a) := by
    exact congrArg (fun h : ℚ_[2] →+* AdjoinRoot f => h a)
      (projectiveWeierstrassZChart_comparison_fractionMap W S)
  have hx : F (G ((AdjoinRoot.of f) Polynomial.X)) =
      (AdjoinRoot.of f) Polynomial.X := by
    have hg : G ((AdjoinRoot.of f) Polynomial.X) =
        (algebraMap R S) (q (MvPolynomial.X (0 : Fin 2))) := by
      simp [G, projectiveWeierstrassZChart_fractionCurve_to_invertTwo,
        Polynomial.eval₂RingHom, q]
    rw [hg, hFbase]
    exact projectiveWeierstrassZChart_to_fractionCurve_x W
  have hy : F (G (AdjoinRoot.root f)) = AdjoinRoot.root f := by
    have hg : G (AdjoinRoot.root f) =
        (algebraMap R S) (q (MvPolynomial.X (1 : Fin 2))) := by
      simp [G, projectiveWeierstrassZChart_fractionCurve_to_invertTwo, q]
    rw [hg, hFbase]
    exact projectiveWeierstrassZChart_to_fractionCurve_y W
  have hpoly :
      ((F.comp G).comp (AdjoinRoot.of f)) = AdjoinRoot.of f := by
    apply Polynomial.ringHom_ext
    · intro a
      simp only [RingHom.comp_apply]
      have hg : G ((AdjoinRoot.of f) (Polynomial.C a)) = k a := by
        simp [G, projectiveWeierstrassZChart_fractionCurve_to_invertTwo,
          Polynomial.eval₂RingHom]
      rw [hg]
      exact hfield a
    · simp only [RingHom.comp_apply]
      exact hx
  apply (RingHom.cancel_right (f := AdjoinRoot.mk f)
    AdjoinRoot.mk_surjective).mp
  apply Polynomial.ringHom_ext
  · intro a
    simpa only [RingHom.comp_apply, AdjoinRoot.mk_C, RingHom.id_apply] using
      congrArg (fun h : Polynomial ℚ_[2] →+* AdjoinRoot f =>
        h a) hpoly
  · simpa only [RingHom.comp_apply, AdjoinRoot.mk_X, RingHom.id_apply]
      using hy

/-- The comparison maps also compose to the identity on
any localization of the actual chart away from `2`. -/
theorem projectiveWeierstrassZChart_comparison_comp_localization
    (W : WeierstrassCurve ℤ_[2])
    (S : Type*) [CommRing S]
    [Algebra (projectiveWeierstrassZChartRing W) S]
    [IsLocalization.Away
      (algebraMap ℤ_[2] (projectiveWeierstrassZChartRing W) 2) S] :
    (projectiveWeierstrassZChart_fractionCurve_to_invertTwo W S).comp
      (projectiveWeierstrassZChart_invertTwo_to_fractionCurve W S) =
    RingHom.id S := by
  let R := projectiveWeierstrassZChartRing W
  apply IsLocalization.ringHom_ext
    (Submonoid.powers (algebraMap ℤ_[2] R 2))
  apply RingHom.ext
  intro r
  simp only [RingHom.comp_apply, RingHom.id_apply]
  rw [show projectiveWeierstrassZChart_invertTwo_to_fractionCurve W S
      ((algebraMap R S) r) =
      projectiveWeierstrassZChart_to_fractionCurve W r from
    IsLocalization.lift_eq _ _]
  exact congrArg (fun h : R →+* S => h r)
    (projectiveWeierstrassZChart_comparison_comp W S)

/-- The localization of the actual integral affine chart
obtained by inverting `2` is the affine Weierstrass coordinate
ring over the base fraction field. -/
noncomputable def projectiveWeierstrassZChart_invertTwo_equiv_fractionCurve
    (W : WeierstrassCurve ℤ_[2])
    (S : Type*) [CommRing S]
    [Algebra (projectiveWeierstrassZChartRing W) S]
    [IsLocalization.Away
      (algebraMap ℤ_[2] (projectiveWeierstrassZChartRing W) 2) S] :
    S ≃+* AdjoinRoot
      (W.map (algebraMap ℤ_[2] ℚ_[2])).toAffine.polynomial :=
  RingEquiv.ofHomInv
    (projectiveWeierstrassZChart_invertTwo_to_fractionCurve W S)
    (projectiveWeierstrassZChart_fractionCurve_to_invertTwo W S)
    (projectiveWeierstrassZChart_comparison_comp_localization W S)
    (projectiveWeierstrassZChart_comparison_comp_field W S)

/-- The inverted actual chart has dimension at most one,
by its proved equivalence with the field-valued curve. -/
theorem projectiveWeierstrassZChart_invertTwo_dimensionLEOne
    (W : WeierstrassCurve ℤ_[2])
    (S : Type*) [CommRing S]
    [Algebra (projectiveWeierstrassZChartRing W) S]
    [IsLocalization.Away
      (algebraMap ℤ_[2] (projectiveWeierstrassZChartRing W) 2) S] :
    Ring.DimensionLEOne S := by
  let B := AdjoinRoot (W.map (algebraMap ℤ_[2] ℚ_[2])).toAffine.polynomial
  let e : S ≃+* B :=
    projectiveWeierstrassZChart_invertTwo_equiv_fractionCurve W S
  letI : Ring.DimensionLEOne B :=
    weierstrass_affine_field_dimensionLEOne
      (W.map (algebraMap ℤ_[2] ℚ_[2]))
  refine ⟨?_⟩
  intro p hp hprime
  letI : p.IsPrime := hprime
  let q : Ideal B := Ideal.comap e.symm.toRingHom p
  have hqprime : q.IsPrime := Ideal.comap_isPrime e.symm.toRingHom p
  have hqne : q ≠ ⊥ := by
    obtain ⟨a, ha, hne⟩ := p.ne_bot_iff.mp hp
    apply q.ne_bot_iff.mpr
    refine ⟨e a, ?_, ?_⟩
    · simpa [q] using ha
    · intro hz
      exact hne (e.injective (by simpa using hz))
  have hqmax : q.IsMaximal :=
    Ring.DimensionLEOne.maximalOfPrime hqne hqprime
  have hpq : Ideal.comap e.toRingHom q = p := by
    ext a
    simp [q]
  rw [← hpq]
  letI : q.IsMaximal := hqmax
  exact Ideal.comap_isMaximal_of_surjective
    (f := e.toRingHom) e.surjective

/-- Every actual generic-prime stalk has dimension at most one.
The bound is transported from the proved comparison through
localization, and includes non-rational prime quotients. -/
theorem projectiveWeierstrassZChart_genericPrime_dimensionLEOne_of_invertTwo
    (W : WeierstrassCurve ℤ_[2])
    (Q : Ideal (projectiveWeierstrassZChartRing W)) [Q.IsPrime]
    (h2 : algebraMap ℤ_[2] (projectiveWeierstrassZChartRing W) 2 ∉ Q)
    (S : Type*) [CommRing S]
    [Algebra (projectiveWeierstrassZChartRing W) S]
    [IsLocalization.Away
      (algebraMap ℤ_[2] (projectiveWeierstrassZChartRing W) 2) S] :
    Ring.DimensionLEOne (Localization.AtPrime Q) := by
  let R := projectiveWeierstrassZChartRing W
  let T := Localization.AtPrime Q
  let M : Submonoid R := Submonoid.powers (algebraMap ℤ_[2] R 2)
  let N : Submonoid R := Q.primeCompl
  have hMN : M ≤ N := Submonoid.powers_le.mpr h2
  let e : S ≃+* AdjoinRoot
      (W.map (algebraMap ℤ_[2] ℚ_[2])).toAffine.polynomial :=
    projectiveWeierstrassZChart_invertTwo_equiv_fractionCurve W S
  letI : IsDomain (AdjoinRoot
      (W.map (algebraMap ℤ_[2] ℚ_[2])).toAffine.polynomial) :=
    weierstrass_affine_field_isDomain
      (W.map (algebraMap ℤ_[2] ℚ_[2]))
  letI : IsDomain S := e.injective.isDomain e.toRingHom
  letI : Ring.DimensionLEOne S :=
    projectiveWeierstrassZChart_invertTwo_dimensionLEOne W S
  letI : Algebra S T :=
    IsLocalization.localizationAlgebraOfSubmonoidLe S T M N hMN
  letI : IsScalarTower R S T :=
    IsLocalization.localization_isScalarTower_of_submonoid_le S T M N hMN
  letI : IsLocalization (N.map (algebraMap R S)) T :=
    IsLocalization.isLocalization_of_submonoid_le S T M N hMN
  apply Ring.DimensionLEOne.localization
    (R := S) (M := N.map (algebraMap R S)) T
  rintro s ⟨r, hr, rfl⟩
  apply mem_nonZeroDivisors_iff_ne_zero.mpr
  intro hz
  have hu : IsUnit ((algebraMap R T) r) :=
    IsLocalization.map_units T ⟨r, hr⟩
  apply hu.ne_zero
  rw [IsScalarTower.algebraMap_apply R S T r, hz, map_zero]

/-- The actual `Z = 1` chart has dimension at most one at
every prime away from `2`, including non-rational primes. -/
theorem projectiveWeierstrassZChart_genericPrime_dimensionLEOne
    (W : WeierstrassCurve ℤ_[2])
    (Q : Ideal (projectiveWeierstrassZChartRing W)) [Q.IsPrime]
    (h2 : algebraMap ℤ_[2] (projectiveWeierstrassZChartRing W) 2 ∉ Q) :
    Ring.DimensionLEOne (Localization.AtPrime Q) :=
  projectiveWeierstrassZChart_genericPrime_dimensionLEOne_of_invertTwo
    W Q h2
    (Localization.Away
      (algebraMap ℤ_[2] (projectiveWeierstrassZChartRing W) 2))

end Beal.General