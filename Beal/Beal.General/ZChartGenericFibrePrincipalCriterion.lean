import Beal.«Beal.General».ZChartGenericFibreLocalization
import Mathlib.RingTheory.DiscreteValuationRing.TFAE

/-!
The generic-fibre comparison supplies a domain at each actual
generic-prime stalk. In a one-dimensional Noetherian local domain,
integral closedness would then make the maximal ideal principal.
The normality conclusion from the unit Jacobian partial is a
separate, presently unproved obligation.
-/

namespace Beal.General

/-- A generic-prime localization of the actual integral chart
is a domain. The proof localizes its field-valued domain
comparison again at the corresponding prime. -/
theorem projectiveWeierstrassZChart_genericPrime_isDomain_of_invertTwo
    (W : WeierstrassCurve ℤ_[2])
    (Q : Ideal (projectiveWeierstrassZChartRing W)) [Q.IsPrime]
    (h2 : algebraMap ℤ_[2] (projectiveWeierstrassZChartRing W) 2 ∉ Q)
    (S : Type*) [CommRing S]
    [Algebra (projectiveWeierstrassZChartRing W) S]
    [IsLocalization.Away
      (algebraMap ℤ_[2] (projectiveWeierstrassZChartRing W) 2) S] :
    IsDomain (Localization.AtPrime Q) := by
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
  letI : Algebra S T :=
    IsLocalization.localizationAlgebraOfSubmonoidLe S T M N hMN
  letI : IsScalarTower R S T :=
    IsLocalization.localization_isScalarTower_of_submonoid_le S T M N hMN
  letI : IsLocalization (N.map (algebraMap R S)) T :=
    IsLocalization.isLocalization_of_submonoid_le S T M N hMN
  apply IsLocalization.isDomain_of_le_nonZeroDivisors
    (M := N.map (algebraMap R S))
  rintro s ⟨r, hr, rfl⟩
  apply mem_nonZeroDivisors_iff_ne_zero.mpr
  intro hz
  have hu : IsUnit ((algebraMap R T) r) :=
    IsLocalization.map_units T ⟨r, hr⟩
  apply hu.ne_zero
  rw [IsScalarTower.algebraMap_apply R S T r, hz, map_zero]

/-- Every actual `Z = 1` generic-prime local ring is a
domain, including those with non-rational residue fields. -/
theorem projectiveWeierstrassZChart_genericPrime_isDomain
    (W : WeierstrassCurve ℤ_[2])
    (Q : Ideal (projectiveWeierstrassZChartRing W)) [Q.IsPrime]
    (h2 : algebraMap ℤ_[2] (projectiveWeierstrassZChartRing W) 2 ∉ Q) :
    IsDomain (Localization.AtPrime Q) :=
  projectiveWeierstrassZChart_genericPrime_isDomain_of_invertTwo
    W Q h2
    (Localization.Away
      (algebraMap ℤ_[2] (projectiveWeierstrassZChartRing W) 2))

/-- The remaining normality obligation is enough to make
the maximal ideal principal at an arbitrary generic-fibre
prime. The assumption of integral closedness is NOT proved
by the existing Jacobian-unit certificate. -/
theorem projectiveWeierstrassZChart_genericPrime_maximalIdeal_principal_of_integrallyClosed
    (W : WeierstrassCurve ℤ_[2]) (_hΔ : W.Δ ≠ 0)
    (Q : Ideal (projectiveWeierstrassZChartRing W)) [Q.IsPrime]
    (h2 : algebraMap ℤ_[2] (projectiveWeierstrassZChartRing W) 2 ∉ Q)
    [IsIntegrallyClosed (Localization.AtPrime Q)] :
    (LocalRing.maximalIdeal (Localization.AtPrime Q)).IsPrincipal := by
  let L := Localization.AtPrime Q
  letI : IsDomain L :=
    projectiveWeierstrassZChart_genericPrime_isDomain W Q h2
  letI : IsNoetherianRing L :=
    projectiveWeierstrassZChart_atPrime_isNoetherian W Q
  letI : Ring.DimensionLEOne L :=
    projectiveWeierstrassZChart_genericPrime_dimensionLEOne W Q h2
  letI : IsDedekindDomain L :=
    (isDedekindDomain_iff L (FractionRing L)).mpr
      ⟨inferInstance, inferInstance, inferInstance,
        (isIntegrallyClosed_iff (FractionRing L)).mp inferInstance⟩
  exact maximalIdeal_isPrincipal_of_isDedekindDomain L

end Beal.General