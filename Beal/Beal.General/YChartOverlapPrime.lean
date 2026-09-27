import Beal.«Beal.General».YChartOverlapLocalization

/-!
Primes on the `V ≠ 0` part of the `Y = 1` chart correspond to
primes on the `y ≠ 0` part of the `Z = 1` chart. The comparison
includes an equivalence of their actual local rings.
-/

namespace Beal.General

private noncomputable def atPrime_equiv_of_ringEquiv
    {A B : Type*} [CommRing A] [CommRing B]
    (e : A ≃+* B) (P : Ideal A) [P.IsPrime] :
    let Q := Ideal.map e.toRingHom P
    letI : Q.IsPrime :=
      Ideal.map_isPrime_of_surjective e.surjective
        ((RingHom.injective_iff_ker_eq_bot e.toRingHom).mp e.injective ▸ bot_le)
    Localization.AtPrime P ≃+* Localization.AtPrime Q := by
  let Q : Ideal B := Ideal.map e.toRingHom P
  have hker : RingHom.ker e.toRingHom = ⊥ :=
    (RingHom.injective_iff_ker_eq_bot e.toRingHom).mp e.injective
  letI : Q.IsPrime := by
    apply Ideal.map_isPrime_of_surjective e.surjective
    change RingHom.ker e.toRingHom ≤ P
    rw [hker]
    exact bot_le
  have hcomap : Q = Ideal.comap e.symm.toRingHom P :=
    Ideal.map_comap_of_equiv P e
  have hm (x : B) : x ∈ Q ↔ e.symm x ∈ P := by
    rw [hcomap, Ideal.mem_comap]
    rfl
  have hs : Submonoid.map e.toMonoidHom P.primeCompl = Q.primeCompl := by
    ext x
    rw [Submonoid.mem_map]
    constructor
    · rintro ⟨y, hy, rfl⟩
      change y ∉ P at hy
      change e y ∉ Q
      intro hz
      exact hy (by simpa using (hm (e y)).mp hz)
    · intro hx
      change x ∉ Q at hx
      refine ⟨e.symm x, ?_, by simp⟩
      change e.symm x ∉ P
      intro hz
      exact hx ((hm x).mpr hz)
  exact IsLocalization.ringEquivOfRingEquiv _ _ e hs

set_option maxHeartbeats 1000000

/-- A ring equivalence of principal localizations carries every
prime away from the inverted element to an equivalent local ring
of a prime away from the other inverted element. -/
private theorem awayPrime_local_equiv
    {R S A B : Type*} [CommRing R] [CommRing S]
    [CommRing A] [CommRing B]
    [Algebra R A] [Algebra S B]
    (y : R) (v : S)
    [IsLocalization.Away y A] [IsLocalization.Away v B]
    (E : A ≃+* B)
    (P : Ideal S) [P.IsPrime] (hV : v ∉ P) :
    ∃ Q : Ideal R, ∃ _ : Q.IsPrime,
      y ∉ Q ∧ Nonempty
        (Localization.AtPrime P ≃+* Localization.AtPrime Q) := by
  let N : Submonoid S := Submonoid.powers v
  have hNP : N ≤ P.primeCompl := Submonoid.powers_le.mpr hV
  have hd : Disjoint (N : Set S) P := by
    apply Set.disjoint_left.mpr
    intro t ht hmem
    exact (hNP ht) hmem
  let J : Ideal B := Ideal.map (algebraMap S B) P
  haveI : J.IsPrime :=
    IsLocalization.isPrime_of_isPrime_disjoint N B P inferInstance hd
  have hcomapJ : Ideal.comap (algebraMap S B) J = P :=
    IsLocalization.comap_map_of_isPrime_disjoint N B P inferInstance hd
  let K : Ideal A := Ideal.map E.symm.toRingHom J
  haveI : K.IsPrime := by
    rw [show K = Ideal.comap E.toRingHom J from
      Ideal.map_comap_of_equiv J E.symm]
    exact Ideal.comap_isPrime E.toRingHom J
  let Q : Ideal R := Ideal.comap (algebraMap R A) K
  haveI : Q.IsPrime := Ideal.comap_isPrime (algebraMap R A) K
  have hy : y ∉ Q := by
    intro h
    have h' : (algebraMap R A) y ∈ K := h
    exact ‹K.IsPrime›.ne_top
      (K.eq_top_of_isUnit_mem h'
        (IsLocalization.Away.algebraMap_isUnit (S := A) y))
  letI : IsLocalization P.primeCompl (Localization.AtPrime J) := by
    have hloc : IsLocalization
        (Ideal.comap (algebraMap S B) J).primeCompl
        (Localization.AtPrime J) :=
      IsLocalization.isLocalization_isLocalization_atPrime_isLocalization
        (M := N) (S := B) (T := Localization.AtPrime J) (p := J)
    simpa only [hcomapJ] using hloc
  let eY : Localization.AtPrime P ≃+* Localization.AtPrime J :=
    (IsLocalization.algEquiv P.primeCompl
      (Localization.AtPrime P) (Localization.AtPrime J)).toRingEquiv
  let eMid : Localization.AtPrime J ≃+* Localization.AtPrime K :=
    atPrime_equiv_of_ringEquiv E.symm J
  letI : IsLocalization Q.primeCompl (Localization.AtPrime K) := by
    have hloc : IsLocalization
        (Ideal.comap (algebraMap R A) K).primeCompl
        (Localization.AtPrime K) :=
      IsLocalization.isLocalization_isLocalization_atPrime_isLocalization
        (M := Submonoid.powers y) (S := A)
        (T := Localization.AtPrime K) (p := K)
    exact hloc
  let eZ : Localization.AtPrime Q ≃+* Localization.AtPrime K :=
    (IsLocalization.algEquiv Q.primeCompl
      (Localization.AtPrime Q) (Localization.AtPrime K)).toRingEquiv
  exact ⟨Q, inferInstance, hy, ⟨(eY.trans eMid).trans eZ.symm⟩⟩

/-- A prime of `Y = 1` away from `V` has a corresponding prime
of `Z = 1` away from `y`, with equivalent prime localizations.
The statement is valid without nodal or discriminant hypotheses. -/
theorem projectiveWeierstrass_overlap_prime_local_equiv
    (W : WeierstrassCurve ℤ_[2])
    (P : Ideal (projectiveWeierstrassYChartRing W)) [P.IsPrime]
    (hV : (Ideal.Quotient.mk
      (Ideal.span {weierstrassInfinityChartEquation W}))
        (MvPolynomial.X (1 : Fin 2)) ∉ P) :
    ∃ Q : Ideal (projectiveWeierstrassZChartRing W),
      ∃ _ : Q.IsPrime,
        (Ideal.Quotient.mk
          (Ideal.span {localSurfaceEquation W 0 0}))
            (MvPolynomial.X (1 : Fin 2)) ∉ Q ∧
        Nonempty (Localization.AtPrime P ≃+* Localization.AtPrime Q) :=
  awayPrime_local_equiv
    ((Ideal.Quotient.mk (Ideal.span {localSurfaceEquation W 0 0}))
      (MvPolynomial.X (1 : Fin 2)))
    ((Ideal.Quotient.mk (Ideal.span {weierstrassInfinityChartEquation W}))
      (MvPolynomial.X (1 : Fin 2)))
    (projectiveWeierstrass_chartOverlap_equiv W) P hV

end Beal.General