import Beal.«Beal.General».GenericFibreCurveDimension

/-!
The coefficient embedding into the fraction field induces a map
from the actual integral `Z = 1` chart into the field-valued
Weierstrass coordinate ring. An inverse after localization is
separate: this construction alone is not a generic-fibre
identification.
-/

namespace Beal.General

/-- The coefficient-extension map from the actual integral chart
to the affine Weierstrass coordinate ring over the base fraction
field. -/
noncomputable def projectiveWeierstrassZChart_to_fractionCurve
    (W : WeierstrassCurve ℤ_[2]) :
    projectiveWeierstrassZChartRing W →+*
      AdjoinRoot (W.map (algebraMap ℤ_[2] ℚ_[2])).toAffine.polynomial := by
  let φ : ℤ_[2] →+* ℚ_[2] := algebraMap ℤ_[2] ℚ_[2]
  let f : Polynomial (Polynomial ℚ_[2]) := (W.map φ).toAffine.polynomial
  let B := AdjoinRoot f
  let ψ : ℤ_[2] →+* B :=
    (AdjoinRoot.of f).comp ((Polynomial.C).comp φ)
  let x : B := AdjoinRoot.of f Polynomial.X
  let y : B := AdjoinRoot.root f
  have heq : localWeierstrassEquation (W.map ψ) x y = 0 := by
    have hr := AdjoinRoot.eval₂_root f
    change Polynomial.eval₂ (AdjoinRoot.of f) (AdjoinRoot.root f)
      (W.map φ).toAffine.polynomial = 0 at hr
    simp only [WeierstrassCurve.Affine.polynomial, WeierstrassCurve.map,
      Polynomial.eval₂_add, Polynomial.eval₂_sub, Polynomial.eval₂_mul,
      Polynomial.eval₂_pow, Polynomial.eval₂_C, Polynomial.eval₂_X,
      map_add, map_mul, map_pow, map_sub] at hr
    simp only [localWeierstrassEquation, WeierstrassCurve.map, ψ,
      RingHom.comp_apply, x, y]
    linear_combination hr
  let h : MvPolynomial (Fin 2) ℤ_[2] →+* B :=
    MvPolynomial.eval₂Hom ψ (fun i => if i = 0 then x else y)
  have hf : h (localSurfaceEquation W 0 0) = 0 := by
    simpa [h, localSurfaceEquation, localWeierstrassEquation,
      WeierstrassCurve.map, x, y, ψ] using heq
  apply Ideal.Quotient.lift (Ideal.span {localSurfaceEquation W 0 0}) h
  intro p hp
  obtain ⟨g, hg⟩ := Ideal.mem_span_singleton.mp hp
  rw [hg]
  simp [hf]

/-- The comparison map agrees with the coefficient embedding
into the fraction-field Weierstrass coordinate ring. -/
theorem projectiveWeierstrassZChart_to_fractionCurve_base
    (W : WeierstrassCurve ℤ_[2]) (a : ℤ_[2]) :
    projectiveWeierstrassZChart_to_fractionCurve W
      (algebraMap ℤ_[2] (projectiveWeierstrassZChartRing W) a) =
    (AdjoinRoot.of (W.map (algebraMap ℤ_[2] ℚ_[2])).toAffine.polynomial)
      (Polynomial.C ((algebraMap ℤ_[2] ℚ_[2]) a)) := by
  change projectiveWeierstrassZChart_to_fractionCurve W
    ((Ideal.Quotient.mk (Ideal.span {localSurfaceEquation W 0 0}))
      (MvPolynomial.C a)) = _
  simp only [projectiveWeierstrassZChart_to_fractionCurve,
    Ideal.Quotient.lift_mk, MvPolynomial.eval₂Hom_C,
    RingHom.comp_apply]

/-- Every nonzero base coefficient maps to a unit of the
field-valued coordinate ring. -/
theorem projectiveWeierstrassZChart_to_fractionCurve_base_unit
    (W : WeierstrassCurve ℤ_[2]) (a : ℤ_[2]) (ha : a ≠ 0) :
    IsUnit (projectiveWeierstrassZChart_to_fractionCurve W
      (algebraMap ℤ_[2] (projectiveWeierstrassZChartRing W) a)) := by
  rw [projectiveWeierstrassZChart_to_fractionCurve_base]
  have hφ : (algebraMap ℤ_[2] ℚ_[2]) a ≠ 0 := by
    intro hz
    exact ha ((IsFractionRing.injective ℤ_[2] ℚ_[2])
      (by simpa only [map_zero] using hz))
  exact IsUnit.map
    (AdjoinRoot.of (W.map (algebraMap ℤ_[2] ℚ_[2])).toAffine.polynomial)
    (IsUnit.map (Polynomial.C : ℚ_[2] →+* Polynomial ℚ_[2])
      (isUnit_iff_ne_zero.mpr hφ))

/-- The comparison map factors through the ring obtained by
inverting the base uniformizer in the actual integral chart.
No claim of surjectivity or injectivity is made here. -/
noncomputable def projectiveWeierstrassZChart_invertTwo_to_fractionCurve
    (W : WeierstrassCurve ℤ_[2])
    (S : Type*) [CommRing S]
    [Algebra (projectiveWeierstrassZChartRing W) S]
    [IsLocalization.Away
      (algebraMap ℤ_[2] (projectiveWeierstrassZChartRing W) 2) S] :
    S →+*
      AdjoinRoot (W.map (algebraMap ℤ_[2] ℚ_[2])).toAffine.polynomial :=
  IsLocalization.Away.lift
    (S := S)
    (algebraMap ℤ_[2] (projectiveWeierstrassZChartRing W) 2)
    (g := projectiveWeierstrassZChart_to_fractionCurve W)
    (projectiveWeierstrassZChart_to_fractionCurve_base_unit W 2
      (by norm_num))

set_option maxHeartbeats 500000 in
/-- The field-valued coordinate ring maps to each generic-fibre
localization of the actual chart, by its integral affine coordinates
and the already constructed fraction-field coefficient map.
This is not an isomorphism claim. -/
noncomputable def projectiveWeierstrassZChart_fractionCurve_to_atPrime
    (W : WeierstrassCurve ℤ_[2])
    (Q : Ideal (projectiveWeierstrassZChartRing W)) [Q.IsPrime]
    (h2 : algebraMap ℤ_[2] (projectiveWeierstrassZChartRing W) 2 ∉ Q) :
    AdjoinRoot (W.map (algebraMap ℤ_[2] ℚ_[2])).toAffine.polynomial →+*
      Localization.AtPrime Q := by
  let R := projectiveWeierstrassZChartRing W
  let L := Localization.AtPrime Q
  let φ : ℤ_[2] →+* ℚ_[2] := algebraMap ℤ_[2] ℚ_[2]
  let k : ℚ_[2] →+* L :=
    projectiveWeierstrassZChart_genericPrime_fractionMap W Q h2
  let q : MvPolynomial (Fin 2) ℤ_[2] →+* R :=
    Ideal.Quotient.mk (Ideal.span {localSurfaceEquation W 0 0})
  let loc : R →+* L := algebraMap R L
  let x : L := loc (q (MvPolynomial.X (0 : Fin 2)))
  let y : L := loc (q (MvPolynomial.X (1 : Fin 2)))
  let i : Polynomial ℚ_[2] →+* L := Polynomial.eval₂RingHom k x
  have hcoeff : k.comp φ = loc.comp (algebraMap ℤ_[2] R) := by
    ext a
    exact projectiveWeierstrassZChart_genericPrime_fractionMap_base W Q h2 a
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

end Beal.General