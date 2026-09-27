import Beal.«Beal.General».GenericFibreProjectionY
import Beal.«Beal.General».ZChartGenericFibreLocalization

/-!
The two finite projections give principal maximal ideals at all
prime localizations of the smooth field-valued affine curve.
This module transports that result through the proved comparison
with the actual `Z = 1` chart after inverting `2`.
-/

namespace Beal.General

/-- A ring equivalence of local rings transports principality of
the maximal ideal. -/
theorem maximalIdeal_principal_of_ringEquiv
    {A B : Type*} [CommRing A] [CommRing B]
    [LocalRing A] [LocalRing B]
    (e : A ≃+* B)
    (h : (LocalRing.maximalIdeal B).IsPrincipal) :
    (LocalRing.maximalIdeal A).IsPrincipal := by
  have hI' : (Ideal.comap e.toRingHom
      (LocalRing.maximalIdeal B)).IsMaximal :=
    Ideal.comap_isMaximal_of_surjective e.toRingHom e.surjective
  have hmax : Ideal.map e.symm.toRingHom
      (LocalRing.maximalIdeal B) = LocalRing.maximalIdeal A := by
    have hI : (Ideal.map e.symm.toRingHom
        (LocalRing.maximalIdeal B)).IsMaximal :=
      (Ideal.comap_symm (LocalRing.maximalIdeal B) e.symm) ▸ hI'
    exact LocalRing.eq_maximalIdeal hI
  obtain ⟨b, hb⟩ := h
  have hspan : Ideal.map e.symm.toRingHom (LocalRing.maximalIdeal B) =
      Ideal.span {e.symm b} := by
    calc
      _ = Ideal.map e.symm.toRingHom (Ideal.span {b}) := by
        rw [hb, Ideal.submodule_span_eq]
      _ = Ideal.span {e.symm b} := by
        rw [Ideal.map_span, Set.image_singleton]
        rfl
  rw [← hmax, hspan]
  exact ⟨e.symm b, rfl⟩

/-- For every prime away from `2` in the actual `Z = 1` chart,
including non-rational primes and the generic point, nonzero
discriminant makes the local maximal ideal principal. -/
theorem projectiveWeierstrassZChart_genericPrime_maximalIdeal_principal
    (W : WeierstrassCurve ℤ_[2]) (hΔ : W.Δ ≠ 0)
    (Q : Ideal (projectiveWeierstrassZChartRing W)) [Q.IsPrime]
    (h2 : algebraMap ℤ_[2] (projectiveWeierstrassZChartRing W) 2 ∉ Q) :
    (LocalRing.maximalIdeal (Localization.AtPrime Q)).IsPrincipal := by
  let R := projectiveWeierstrassZChartRing W
  let a : R := algebraMap ℤ_[2] R 2
  let M : Submonoid R := Submonoid.powers a
  let S := Localization M
  let φ : ℤ_[2] →+* ℚ_[2] := algebraMap ℤ_[2] ℚ_[2]
  let B := AdjoinRoot (W.map φ).toAffine.polynomial
  let e : S ≃+* B :=
    projectiveWeierstrassZChart_invertTwo_equiv_fractionCurve W S
  have hMN : M ≤ Q.primeCompl := Submonoid.powers_le.mpr h2
  have hd : Disjoint (M : Set R) Q := by
    apply Set.disjoint_left.mpr
    intro m hm hmem
    exact (hMN hm) hmem
  let J : Ideal S := Ideal.map (algebraMap R S) Q
  haveI : J.IsPrime :=
    IsLocalization.isPrime_of_isPrime_disjoint M S Q inferInstance hd
  have hcomap : Ideal.comap (algebraMap R S) J = Q :=
    IsLocalization.comap_map_of_isPrime_disjoint M S Q inferInstance hd
  let P : Ideal B := Ideal.comap e.symm.toRingHom J
  haveI : P.IsPrime := Ideal.comap_isPrime e.symm.toRingHom J
  have hΔ' : (W.map φ).Δ ≠ 0 := by
    rw [WeierstrassCurve.map_Δ]
    simpa only [map_zero] using
      (IsFractionRing.injective ℤ_[2] ℚ_[2]).ne hΔ
  have hPprincipal :
      (LocalRing.maximalIdeal (Localization.AtPrime P)).IsPrincipal :=
    weierstrass_affine_field_atPrime_principal (W.map φ) hΔ' P
  have hJprincipal :
      (LocalRing.maximalIdeal (Localization.AtPrime J)).IsPrincipal :=
    atPrime_maximalIdeal_principal_of_ringEquiv e.symm J P rfl hPprincipal
  letI : IsLocalization Q.primeCompl (Localization.AtPrime J) := by
    have hloc : IsLocalization
        (Ideal.comap (algebraMap R S) J).primeCompl
        (Localization.AtPrime J) :=
      IsLocalization.isLocalization_isLocalization_atPrime_isLocalization
        (M := M) (S := S) (T := Localization.AtPrime J) (p := J)
    simpa only [hcomap] using hloc
  let E : Localization.AtPrime Q ≃+* Localization.AtPrime J :=
    (IsLocalization.algEquiv Q.primeCompl
      (Localization.AtPrime Q) (Localization.AtPrime J)).toRingEquiv
  exact maximalIdeal_principal_of_ringEquiv E hJprincipal

end Beal.General