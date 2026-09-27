import Beal.«Beal.General».GenericFibreCurveDimension

/-!
An elementary local simple-root criterion for univariate polynomial
quotients over a field. This is the fibre calculation needed for a
finite-projection approach to non-rational generic-fibre points.
-/

namespace Beal.General

/-- A local ring has a principal maximal ideal if its quotient by
the span of a nonunit element is a field. In the finite-projection
approach, that quotient is the local fibre at the chosen point. -/
theorem local_maximalIdeal_principal_of_quotient_field
    (T : Type*) [CommRing T] [LocalRing T] (a : T)
    (hfield : IsField (T ⧸ Ideal.span {a})) :
    (LocalRing.maximalIdeal T).IsPrincipal := by
  have hmax : (Ideal.span {a} : Ideal T).IsMaximal :=
    Ideal.Quotient.maximal_of_isField _ hfield
  rw [← LocalRing.eq_maximalIdeal hmax]
  exact ⟨a, rfl⟩

/-- If the derivative is a unit at a prime of a univariate
polynomial quotient over a field, the corresponding local ring
is a field. No rational root or separable splitting field is
chosen. -/
theorem adjoinRoot_atPrime_isField_of_derivative_unit
    {k : Type*} [Field k] (f : Polynomial k)
    (P : Ideal (AdjoinRoot f)) [P.IsPrime]
    (hd : IsUnit ((algebraMap (AdjoinRoot f) (Localization.AtPrime P))
      (AdjoinRoot.mk f (Polynomial.derivative f)))) :
    IsField (Localization.AtPrime P) := by
  let C := AdjoinRoot f
  let T := Localization.AtPrime P
  let φ : Polynomial k →+* C := AdjoinRoot.mk f
  let J : Ideal (Polynomial k) := Ideal.comap φ P
  have hfmem : f ∈ J := by
    change φ f ∈ P
    change (AdjoinRoot.mk f) f ∈ P
    rw [AdjoinRoot.mk_self]
    exact P.zero_mem
  have hfnz : f ≠ 0 := by
    intro h
    subst f
    simp at hd
  have hJne : J ≠ ⊥ := by
    intro h
    have : f = 0 := by simpa [h] using hfmem
    exact hfnz this
  letI : J.IsPrime := Ideal.comap_isPrime φ P
  letI : Ring.DimensionLEOne (Polynomial k) :=
    Ring.DimensionLEOne.principal_ideal_ring (Polynomial k)
  letI : J.IsMaximal := Ring.DimensionLEOne.maximalOfPrime hJne inferInstance
  letI : J.IsPrincipal := IsPrincipalIdealRing.principal J
  let g := Submodule.IsPrincipal.generator J
  have hspan : Ideal.span {g} = J :=
    Submodule.IsPrincipal.span_singleton_generator J
  have hgf : g ∣ f :=
    Ideal.mem_span_singleton.mp (hspan ▸ hfmem)
  obtain ⟨q, hqf⟩ := hgf
  have hnotder : Polynomial.derivative f ∉ J := by
    intro hm
    have hP : φ (Polynomial.derivative f) ∈ P := hm
    have ht : (algebraMap C T) (φ (Polynomial.derivative f)) ∈ LocalRing.maximalIdeal T :=
      (IsLocalization.AtPrime.to_map_mem_maximal_iff T P _).mpr hP
    exact ((LocalRing.mem_maximalIdeal
      ((algebraMap C T) (φ (Polynomial.derivative f)))).mp ht) hd
  have hqnot : q ∉ J := by
    intro hq
    have hgq : g ∣ q := Ideal.mem_span_singleton.mp (hspan ▸ hq)
    obtain ⟨r, hr⟩ := hgq
    have hgd : g ∣ Polynomial.derivative f := by
      rw [hqf, hr, Polynomial.derivative_mul]
      refine ⟨Polynomial.derivative g * r +
        Polynomial.derivative (g * r), ?_⟩
      ring
    exact hnotder (hspan ▸ (Ideal.mem_span_singleton.mpr hgd))
  have hqunit : IsUnit ((algebraMap C T) (φ q)) :=
    (IsLocalization.AtPrime.isUnit_to_map_iff T P (φ q)).mpr hqnot
  have hmul : (algebraMap C T) (φ g) * (algebraMap C T) (φ q) = 0 := by
    rw [← map_mul, ← map_mul, ← hqf]
    change (algebraMap C T) ((AdjoinRoot.mk f) f) = 0
    simp
  have hgzero : (algebraMap C T) (φ g) = 0 := by
    obtain ⟨v, hv⟩ := isUnit_iff_exists_inv.mp hqunit
    calc
      (algebraMap C T) (φ g) =
          (algebraMap C T) (φ g) * ((algebraMap C T) (φ q) * v) := by rw [hv, mul_one]
      _ = ((algebraMap C T) (φ g) * (algebraMap C T) (φ q)) * v := by rw [mul_assoc]
      _ = 0 := by rw [hmul, zero_mul]
  have hPzero : ∀ a ∈ P, (algebraMap C T) a = 0 := by
    intro a ha
    obtain ⟨r, rfl⟩ := Ideal.Quotient.mk_surjective a
    have hrJ : r ∈ J := ha
    have hgr : g ∣ r := Ideal.mem_span_singleton.mp (hspan ▸ hrJ)
    obtain ⟨s, hs⟩ := hgr
    change (algebraMap C T) (φ r) = 0
    rw [hs, map_mul, map_mul, hgzero, zero_mul]
  have hmaxzero : LocalRing.maximalIdeal T = ⊥ := by
    rw [← Localization.AtPrime.map_eq_maximalIdeal (I := P)]
    apply le_antisymm
    · rw [Ideal.map_le_iff_le_comap]
      intro a ha
      change (algebraMap C T) a = 0
      exact hPzero a ha
    · exact bot_le
  exact LocalRing.isField_iff_maximalIdeal_eq.mpr hmaxzero

end Beal.General