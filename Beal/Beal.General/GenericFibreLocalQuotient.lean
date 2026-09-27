import Beal.«Beal.General».GenericFibreSimpleFibre

/-!
The local quotient step of the finite-projection argument. It
separates the localization/quotient bookkeeping from the
polynomial calculation in a specific coordinate.
-/

namespace Beal.General

/-- Being a field at a prime is invariant under a ring equivalence
that carries the prime to its image. The proof uses the explicit
denominator criterion for zero in the two localizations. -/
theorem atPrime_isField_of_ringEquiv
    {A B : Type*} [CommRing A] [CommRing B]
    (e : A ≃+* B) (P : Ideal A) [P.IsPrime]
    (Q : Ideal B) [Q.IsPrime]
    (hmap : ∀ x ∈ P, e x ∈ Q)
    (hfield : IsField (Localization.AtPrime Q)) :
    IsField (Localization.AtPrime P) := by
  let T := Localization.AtPrime P
  let U := Localization.AtPrime Q
  have hzero : LocalRing.maximalIdeal U = ⊥ :=
    LocalRing.isField_iff_maximalIdeal_eq.mp hfield
  have hPzero : ∀ x ∈ P, (algebraMap A T) x = 0 := by
    intro x hx
    have hxQ : e x ∈ Q := hmap x hx
    have hxU : (algebraMap B U) (e x) ∈ LocalRing.maximalIdeal U :=
      (IsLocalization.AtPrime.to_map_mem_maximal_iff U Q _).mpr hxQ
    rw [hzero] at hxU
    obtain ⟨s, hs⟩ :=
      (IsLocalization.map_eq_zero_iff Q.primeCompl U (e x)).mp hxU
    have hsP : e.symm (s : B) ∉ P := by
      intro hmem
      apply s.2
      have : e (e.symm (s : B)) ∈ Q :=
        hmap (e.symm (s : B)) hmem
      simpa using this
    have hproduct : e.symm (s : B) * x = 0 := by
      apply e.injective
      simpa using hs
    exact (IsLocalization.map_eq_zero_iff P.primeCompl T x).mpr
      ⟨⟨e.symm (s : B), hsP⟩, hproduct⟩
  have hmaxzero : LocalRing.maximalIdeal T = ⊥ := by
    rw [← Localization.AtPrime.map_eq_maximalIdeal (I := P)]
    apply le_antisymm
    · rw [Ideal.map_le_iff_le_comap]
      intro x hx
      change (algebraMap A T) x = 0
      exact hPzero x hx
    · exact bot_le
  exact LocalRing.isField_iff_maximalIdeal_eq.mpr hmaxzero

/-- If the fibre over a principal ideal becomes a field at the
image of a prime, that principal ideal generates the maximal
ideal of the original prime localization. No rationality or
Noetherianity hypothesis is required. -/
theorem atPrime_maximalIdeal_principal_of_fibre_field
    {B : Type*} [CommRing B] (P : Ideal B) [P.IsPrime]
    (I : Ideal B) (a : B) (hI : I = Ideal.span {a}) (ha : a ∈ P)
    (P' : Ideal (B ⧸ I)) [P'.IsPrime]
    (hP' : P' = Ideal.map (Ideal.Quotient.mk I) P)
    (hfield : IsField (Localization.AtPrime P')) :
    (LocalRing.maximalIdeal (Localization.AtPrime P)).IsPrincipal := by
  let D := B ⧸ I
  let π : B →+* D := Ideal.Quotient.mk I
  have hIP : I ≤ P := hI ▸ Ideal.span_le.mpr (by simpa using ha)
  let T := Localization.AtPrime P
  let U := Localization.AtPrime P'
  have hzero : LocalRing.maximalIdeal U = ⊥ :=
    LocalRing.isField_iff_maximalIdeal_eq.mp hfield
  have hmax : LocalRing.maximalIdeal T =
      Ideal.map (algebraMap B T) I := by
    rw [← Localization.AtPrime.map_eq_maximalIdeal (I := P)]
    apply le_antisymm
    · apply Ideal.map_le_iff_le_comap.mpr
      intro x hx
      have hx' : π x ∈ P' :=
        hP' ▸ Ideal.mem_map_of_mem π hx
      have hxU : (algebraMap D U) (π x) ∈ LocalRing.maximalIdeal U :=
        (IsLocalization.AtPrime.to_map_mem_maximal_iff U P' _).mpr hx'
      rw [hzero] at hxU
      have hxU0 : (algebraMap D U) (π x) = 0 := hxU
      obtain ⟨s, hs⟩ :=
        (IsLocalization.map_eq_zero_iff P'.primeCompl U (π x)).mp hxU0
      obtain ⟨b, hb⟩ := Ideal.Quotient.mk_surjective (s : D)
      have hbP : b ∉ P := by
        intro hbP
        have : π b ∈ P' := hP' ▸ Ideal.mem_map_of_mem π hbP
        exact s.2 (hb ▸ this)
      have hbx : b * x ∈ I := by
        apply Ideal.Quotient.eq_zero_iff_mem.mp
        calc
          π (b * x) = (s : D) * π x := by rw [map_mul, hb]
          _ = 0 := hs
      have hmem : (algebraMap B T) x ∈ Ideal.map (algebraMap B T) I := by
        have hh := (IsLocalization.mk'_mem_map_algebraMap_iff
          P.primeCompl T I x (1 : P.primeCompl)).mpr
            ⟨b, hbP, hbx⟩
        simpa only [IsLocalization.mk'_one] using hh
      exact hmem
    · exact Ideal.map_mono hIP
  rw [hmax]
  simp only [hI, Ideal.map_span]
  simp only [Set.image_singleton]
  exact ⟨(algebraMap B T) a, rfl⟩

end Beal.General