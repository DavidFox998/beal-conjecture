import Beal.«Beal.General».GenericFibreLocalQuotient

/-!
The finite-projection calculation for a polynomial presented as
`AdjoinRoot f` over a polynomial coefficient ring. The result
applies when the derivative in the adjoined coordinate is a unit.
-/

namespace Beal.General

/-- At the generic point of a domain the localized maximal ideal
is zero, hence principal. -/
theorem atPrime_bot_maximalIdeal_principal
    {B : Type*} [CommRing B] (P : Ideal B) [P.IsPrime] (hP : P = ⊥) :
    (LocalRing.maximalIdeal (Localization.AtPrime P)).IsPrincipal := by
  subst P
  rw [← Localization.AtPrime.map_eq_maximalIdeal (I := (⊥ : Ideal B)),
    Ideal.map_bot]
  exact ⟨0, ((Ideal.span_singleton_eq_bot).mpr rfl).symm⟩

/-- A simple root in the fibre over a maximal principal base
ideal makes its generator a parameter at the corresponding curve
prime. The base residue field is arbitrary. -/
theorem adjoinRoot_atPrime_principal_of_base_derivative_unit
    {A : Type*} [CommRing A] (f : Polynomial A)
    (P : Ideal (AdjoinRoot f)) [P.IsPrime]
    (g : A)
    (hbase : Ideal.comap (AdjoinRoot.of f) P = Ideal.span {g})
    (hmax : (Ideal.span {g} : Ideal A).IsMaximal)
    (hder : IsUnit ((algebraMap (AdjoinRoot f) (Localization.AtPrime P))
      (AdjoinRoot.mk f (Polynomial.derivative f)))) :
    (LocalRing.maximalIdeal (Localization.AtPrime P)).IsPrincipal := by
  let I : Ideal A := Ideal.span {g}
  let B := AdjoinRoot f
  let J : Ideal B := Ideal.map (AdjoinRoot.of f) I
  let D := B ⧸ J
  let π : B →+* D := Ideal.Quotient.mk J
  let fbar : Polynomial (A ⧸ I) := f.map (Ideal.Quotient.mk I)
  let C := AdjoinRoot fbar
  let e : D ≃+* C := (AdjoinRoot.quotEquivQuotMap f I).toRingEquiv
  have hJI : J ≤ P := Ideal.map_le_iff_le_comap.mpr (by rw [hbase])
  let Pbar : Ideal D := Ideal.map π P
  haveI : Pbar.IsPrime :=
    Ideal.map_isPrime_of_surjective (f := π) Ideal.Quotient.mk_surjective
      (by rw [Ideal.mk_ker]; exact hJI)
  let Q : Ideal C := Ideal.map e.toRingHom Pbar
  haveI : Q.IsPrime :=
    Ideal.map_isPrime_of_surjective (f := e.toRingHom) e.surjective
      (by simp)
  haveI : (I : Ideal A).IsMaximal := hmax
  letI : Field (A ⧸ I) := Ideal.Quotient.field I
  have hnotP : AdjoinRoot.mk f (Polynomial.derivative f) ∉ P :=
    (IsLocalization.AtPrime.isUnit_to_map_iff _ P _).mp hder
  have hcomap : Ideal.comap π Pbar = P :=
    (Ideal.comap_map_of_surjective π Ideal.Quotient.mk_surjective P).trans
      (by
        change P ⊔ RingHom.ker π = P
        rw [Ideal.mk_ker, sup_eq_left.mpr hJI])
  have hnotPbar : π (AdjoinRoot.mk f (Polynomial.derivative f)) ∉ Pbar := by
    intro hm
    exact hnotP (hcomap ▸ hm)
  have hcomape : Ideal.comap e.toRingHom Q = Pbar :=
    (Ideal.comap_map_of_surjective e.toRingHom e.surjective Pbar).trans
      (by
        change Pbar ⊔ RingHom.ker e.toRingHom = Pbar
        have hk : RingHom.ker e.toRingHom = ⊥ :=
          (RingHom.injective_iff_ker_eq_bot e.toRingHom).mp e.injective
        rw [hk, sup_bot_eq])
  have hnotQ : e (π (AdjoinRoot.mk f (Polynomial.derivative f))) ∉ Q := by
    intro hm
    exact hnotPbar (hcomape ▸ hm)
  have heval : e (π (AdjoinRoot.mk f (Polynomial.derivative f))) =
      AdjoinRoot.mk fbar (Polynomial.derivative fbar) := by
    change (AdjoinRoot.quotEquivQuotMap f I)
      (Ideal.Quotient.mk (Ideal.map (AdjoinRoot.of f) I)
        (AdjoinRoot.mk f (Polynomial.derivative f))) = _
    rw [AdjoinRoot.quotEquivQuotMap_apply_mk, Polynomial.derivative_map]
    rfl
  have hunit : IsUnit ((algebraMap C (Localization.AtPrime Q))
      (AdjoinRoot.mk fbar (Polynomial.derivative fbar))) :=
    (IsLocalization.AtPrime.isUnit_to_map_iff _ Q _).mpr
      (heval ▸ hnotQ)
  have hQfield : IsField (Localization.AtPrime Q) :=
    adjoinRoot_atPrime_isField_of_derivative_unit fbar Q hunit
  have hPfield : IsField (Localization.AtPrime Pbar) :=
    atPrime_isField_of_ringEquiv e Pbar Q
      (fun x hx => Ideal.mem_map_of_mem e.toRingHom hx) hQfield
  have hJ : J = Ideal.span {(AdjoinRoot.of f) g} := by
    simp [J, I, Ideal.map_span]
  have hgP : (AdjoinRoot.of f) g ∈ P := by
    have hg : g ∈ Ideal.comap (AdjoinRoot.of f) P := by
      rw [hbase]
      exact Ideal.mem_span_singleton_self g
    exact hg
  exact atPrime_maximalIdeal_principal_of_fibre_field P J
    ((AdjoinRoot.of f) g) hJ hgP Pbar rfl hPfield

/-- On a field-valued affine Weierstrass curve, every nonzero
prime with unit `y`-partial has a principal local maximal ideal.
The irreducible base polynomial need not be linear. -/
theorem weierstrass_affine_field_nonzeroPrime_principal_of_yPartial
    {K : Type*} [Field K] (W : WeierstrassCurve K)
    (P : Ideal (AdjoinRoot W.toAffine.polynomial))
    [P.IsPrime] (hP : P ≠ ⊥)
    (hder : IsUnit
      ((algebraMap (AdjoinRoot W.toAffine.polynomial) (Localization.AtPrime P))
        (AdjoinRoot.mk W.toAffine.polynomial
          (Polynomial.derivative W.toAffine.polynomial)))) :
    (LocalRing.maximalIdeal (Localization.AtPrime P)).IsPrincipal := by
  obtain ⟨g, _, hg⟩ :=
    weierstrass_affine_field_nonzeroPrime_basePolynomial W P hP
  have hmax :=
    weierstrass_affine_field_nonzeroPrime_contraction_maximal W P hP
  apply adjoinRoot_atPrime_principal_of_base_derivative_unit
    W.toAffine.polynomial P g
  · simpa only [AdjoinRoot.algebraMap_eq] using hg
  · rw [← hg]
    exact hmax
  · exact hder

end Beal.General