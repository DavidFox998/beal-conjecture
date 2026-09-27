import Beal.«Beal.General».SplitNodeParametrization

/-!
Transport the reduced cubic's local principal-ideal theorem through
the full special-fibre quotient at arbitrary non-node primes.
-/

namespace Beal.General

private noncomputable def atPrime_equiv_of_equiv_map
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

set_option maxHeartbeats 1000000 in
/-- Modulo the base uniformizer, the local ring of the translated
integral surface at any non-node special-fibre prime is a
principal-ideal ring. No rational-point hypothesis is used. -/
theorem splitNode_surface_nonNode_localTwoQuotient_pid
    (W : WeierstrassCurve ℤ_[2])
    (hnode : ReducedNodalPoint (W.map PadicInt.toZMod)
      (PadicInt.toZMod W.a₃)
      (PadicInt.toZMod (W.a₃ ^ 2 + W.a₄)))
    (hsplit : 3 * PadicInt.toZMod W.a₃ +
      (W.map PadicInt.toZMod).a₂ = 0)
    (P : Ideal (localSurfaceCoordinateRing W W.a₃ (W.a₃ ^ 2 + W.a₄)))
    [P.IsPrime]
    (hF : localSurfaceSpecialFibreIdeal W W.a₃ (W.a₃ ^ 2 + W.a₄) ≤ P)
    (hnotNode : ¬ localSurfaceClosedPoint W W.a₃
      (W.a₃ ^ 2 + W.a₄) ≤ P) :
    let R := localSurfaceCoordinateRing W W.a₃ (W.a₃ ^ 2 + W.a₄)
    let F := localSurfaceSpecialFibreIdeal W W.a₃ (W.a₃ ^ 2 + W.a₄)
    let L := Localization.AtPrime P
    IsPrincipalIdealRing (L ⧸ Ideal.map (algebraMap R L) F) := by
  let R := localSurfaceCoordinateRing W W.a₃ (W.a₃ ^ 2 + W.a₄)
  let F : Ideal R :=
    localSurfaceSpecialFibreIdeal W W.a₃ (W.a₃ ^ 2 + W.a₄)
  let L := Localization.AtPrime P
  haveI : F.IsPrime :=
    (Ideal.Quotient.isDomain_iff_prime F).mp
      (splitNode_affineSpecialFibre_isDomain W hnode hsplit)
  let q : R →+* R ⧸ F := Ideal.Quotient.mk F
  let Q : Ideal (R ⧸ F) := Ideal.map q P
  have hkerq : RingHom.ker q ≤ P := by rw [Ideal.mk_ker]; exact hF
  haveI : Q.IsPrime :=
    Ideal.map_isPrime_of_surjective Ideal.Quotient.mk_surjective hkerq
  let e := splitNode_affineSpecialFibre_equiv W hnode hsplit
  let J : Ideal (MvPolynomial (Fin 2) (ZMod 2) ⧸
      Ideal.span {splitNodeCubic}) := Ideal.map e.toRingHom Q
  have hkere : RingHom.ker e.toRingHom = ⊥ :=
    (RingHom.injective_iff_ker_eq_bot e.toRingHom).mp e.injective
  haveI : J.IsPrime := by
    apply Ideal.map_isPrime_of_surjective e.surjective
    change RingHom.ker e.toRingHom ≤ Q
    rw [hkere]
    exact bot_le
  have hnodeF : Ideal.map e.toRingHom
      (Ideal.map q (localSurfaceClosedPoint W W.a₃ (W.a₃ ^ 2 + W.a₄))) =
      splitNode_originIdeal :=
    splitNode_fibreClosedPoint_eq_origin W hnode hsplit
  have hJ : ¬ splitNode_originIdeal ≤ J := by
    intro h
    have he : Ideal.map e.toRingHom
        (Ideal.map q (localSurfaceClosedPoint W W.a₃ (W.a₃ ^ 2 + W.a₄))) ≤
        Ideal.map e.toRingHom Q := by simpa only [hnodeF] using h
    have hQ : Ideal.map q
        (localSurfaceClosedPoint W W.a₃ (W.a₃ ^ 2 + W.a₄)) ≤ Q := by
      have hh := Ideal.comap_mono (f := e.toRingHom) he
      simpa only [Ideal.comap_map_of_surjective e.toRingHom e.surjective,
        ← RingHom.ker_eq_comap_bot, hkere, sup_bot_eq] using hh
    have hh := Ideal.comap_mono (f := q) hQ
    have hC : localSurfaceClosedPoint W W.a₃ (W.a₃ ^ 2 + W.a₄) ≤ P := by
      have hkerq_eq : RingHom.ker q = F := Ideal.mk_ker
      have hs : localSurfaceClosedPoint W W.a₃ (W.a₃ ^ 2 + W.a₄) ⊔ F ≤
          P ⊔ F := by
        simpa only [Ideal.comap_map_of_surjective q
          Ideal.Quotient.mk_surjective,
          ← RingHom.ker_eq_comap_bot, hkerq_eq] using hh
      exact le_trans le_sup_left (by simpa only [sup_eq_left.mpr hF] using hs)
    exact hnotNode hC
  haveI : IsPrincipalIdealRing (Localization.AtPrime J) :=
    splitNodeCubic_nonNode_atPrime_isPrincipalIdealRing J hJ
  let equiv : (L ⧸ Ideal.map (algebraMap R L) F) ≃+*
      Localization.AtPrime J :=
    (quotientAtPrime_equiv R P F hF).trans
      (atPrime_equiv_of_equiv_map e Q)
  exact IsPrincipalIdealRing.of_surjective
    equiv.symm.toRingHom equiv.symm.surjective

set_option maxHeartbeats 1000000 in
set_option synthInstance.maxHeartbeats 100000 in
/-- Every non-node special-fibre prime of the translated *integral*
surface has a two-generated localized maximal ideal. The second
generator is lifted from the principal reduced local ring and need
not be a rational-coordinate difference. -/
theorem splitNode_surface_nonNode_two_parameters
    (W : WeierstrassCurve ℤ_[2])
    (hnode : ReducedNodalPoint (W.map PadicInt.toZMod)
      (PadicInt.toZMod W.a₃)
      (PadicInt.toZMod (W.a₃ ^ 2 + W.a₄)))
    (hsplit : 3 * PadicInt.toZMod W.a₃ +
      (W.map PadicInt.toZMod).a₂ = 0)
    (P : Ideal (localSurfaceCoordinateRing W W.a₃ (W.a₃ ^ 2 + W.a₄)))
    [P.IsPrime]
    (hF : localSurfaceSpecialFibreIdeal W W.a₃ (W.a₃ ^ 2 + W.a₄) ≤ P)
    (hnotNode : ¬ localSurfaceClosedPoint W W.a₃
      (W.a₃ ^ 2 + W.a₄) ≤ P) :
    let R := localSurfaceCoordinateRing W W.a₃ (W.a₃ ^ 2 + W.a₄)
    let L := Localization.AtPrime P
    let q : MvPolynomial (Fin 2) ℤ_[2] →+* R :=
      Ideal.Quotient.mk (Ideal.span
        {localSurfaceEquation W W.a₃ (W.a₃ ^ 2 + W.a₄)})
    let a : L := (algebraMap R L) (q (MvPolynomial.C (2 : ℤ_[2])))
    ∃ t : L, LocalRing.maximalIdeal L = Ideal.span {a, t} := by
  let R := localSurfaceCoordinateRing W W.a₃ (W.a₃ ^ 2 + W.a₄)
  let F : Ideal R :=
    localSurfaceSpecialFibreIdeal W W.a₃ (W.a₃ ^ 2 + W.a₄)
  let L := Localization.AtPrime P
  let q : MvPolynomial (Fin 2) ℤ_[2] →+* R :=
    Ideal.Quotient.mk (Ideal.span
      {localSurfaceEquation W W.a₃ (W.a₃ ^ 2 + W.a₄)})
  let f : R →+* L := algebraMap R L
  let a : L := f (q (MvPolynomial.C (2 : ℤ_[2])))
  have hFmap : Ideal.map f F = Ideal.span {a} := by
    simp only [F, f, a, localSurfaceSpecialFibreIdeal_eq_span_two,
      Ideal.map_span, Set.image_singleton]
  haveI : IsPrincipalIdealRing (L ⧸ Ideal.map f F) :=
    splitNode_surface_nonNode_localTwoQuotient_pid W hnode hsplit P hF hnotNode
  let E : (L ⧸ Ideal.span {a}) ≃+* (L ⧸ Ideal.map f F) :=
    Ideal.quotEquivOfEq hFmap.symm
  haveI : IsPrincipalIdealRing (L ⧸ Ideal.span {a}) :=
    IsPrincipalIdealRing.of_surjective E.symm.toRingHom E.symm.surjective
  let M : Ideal (L ⧸ Ideal.span {a}) :=
    Ideal.map (Ideal.Quotient.mk (Ideal.span {a}))
      (LocalRing.maximalIdeal L)
  obtain ⟨b, hb⟩ := (IsPrincipalIdealRing.principal M).principal
  change M = Ideal.span {b} at hb
  obtain ⟨t, rfl⟩ := Ideal.Quotient.mk_surjective b
  have h2 : q (MvPolynomial.C (2 : ℤ_[2])) ∈ P := by
    apply hF
    rw [localSurfaceSpecialFibreIdeal_eq_span_two]
    exact Ideal.mem_span_singleton_self _
  have ha : a ∈ LocalRing.maximalIdeal L := by
    rw [← Localization.AtPrime.map_eq_maximalIdeal (I := P)]
    exact Ideal.mem_map_of_mem f h2
  exact ⟨t, ideal_eq_span_pair_of_principal_reduction
    (LocalRing.maximalIdeal L) a t ha hb⟩

private theorem maximalIdeal_map_of_localEquiv
    {A B : Type*} [CommRing A] [CommRing B]
    [LocalRing A] [LocalRing B] (e : A ≃+* B) :
    Ideal.map e.toRingHom (LocalRing.maximalIdeal A) =
      LocalRing.maximalIdeal B := by
  have hc : LocalRing.maximalIdeal A =
      Ideal.comap e.toRingHom (LocalRing.maximalIdeal B) := by
    ext z
    simp only [Ideal.mem_comap, LocalRing.mem_maximalIdeal, mem_nonunits_iff]
    exact e.isUnit_iff.symm.not
  rw [hc]
  exact Ideal.map_comap_of_surjective e.toRingHom e.surjective _

set_option maxHeartbeats 1000000 in
set_option synthInstance.maxHeartbeats 100000 in
/-- Every non-node strict specialization of `(2)` in the *actual*
integral `Z = 1` chart has a two-generated maximal ideal and
dimension two. This includes non-rational special-fibre primes. -/
theorem splitNode_ZChart_nonNode_specialPrime_parameters
    (W : WeierstrassCurve ℤ_[2])
    (hnode : ReducedNodalPoint (W.map PadicInt.toZMod)
      (PadicInt.toZMod W.a₃)
      (PadicInt.toZMod (W.a₃ ^ 2 + W.a₄)))
    (hsplit : 3 * PadicInt.toZMod W.a₃ +
      (W.map PadicInt.toZMod).a₂ = 0)
    (Q : Ideal (projectiveWeierstrassZChartRing W)) [Q.IsPrime]
    (hPQ : (Ideal.span {(Ideal.Quotient.mk
      (Ideal.span {localSurfaceEquation W 0 0}))
        (MvPolynomial.C (2 : ℤ_[2]))} :
        Ideal (projectiveWeierstrassZChartRing W)) < Q)
    (hnotNode : ¬ projectiveWeierstrassZChart_shiftPrime W W.a₃
      (W.a₃ ^ 2 + W.a₄)
        (localSurfaceClosedPoint W W.a₃ (W.a₃ ^ 2 + W.a₄)) ≤ Q) :
    let R := projectiveWeierstrassZChartRing W
    let L := Localization.AtPrime Q
    let q : MvPolynomial (Fin 2) ℤ_[2] →+* R :=
      Ideal.Quotient.mk (Ideal.span {localSurfaceEquation W 0 0})
    let a : L := (algebraMap R L) (q (MvPolynomial.C (2 : ℤ_[2])))
    ∃ t : L, LocalRing.maximalIdeal L = Ideal.span {a, t} ∧
      ringKrullDim L = 2 := by
  let R := projectiveWeierstrassZChartRing W
  let T := localSurfaceCoordinateRing W W.a₃ (W.a₃ ^ 2 + W.a₄)
  let e : R ≃+* T :=
    (projectiveWeierstrassZChart_shiftEquiv W W.a₃
      (W.a₃ ^ 2 + W.a₄)).toRingEquiv
  let P : Ideal T := Ideal.map e.toRingHom Q
  have hkere : RingHom.ker e.toRingHom = ⊥ :=
    (RingHom.injective_iff_ker_eq_bot e.toRingHom).mp e.injective
  haveI : P.IsPrime := by
    apply Ideal.map_isPrime_of_surjective e.surjective
    change RingHom.ker e.toRingHom ≤ Q
    rw [hkere]
    exact bot_le
  let qR : MvPolynomial (Fin 2) ℤ_[2] →+* R :=
    Ideal.Quotient.mk (Ideal.span {localSurfaceEquation W 0 0})
  let qT : MvPolynomial (Fin 2) ℤ_[2] →+* T :=
    Ideal.Quotient.mk (Ideal.span
      {localSurfaceEquation W W.a₃ (W.a₃ ^ 2 + W.a₄)})
  have hbase : e (qR (MvPolynomial.C (2 : ℤ_[2]))) =
      qT (MvPolynomial.C (2 : ℤ_[2])) := by
    change (projectiveWeierstrassZChart_shiftEquiv W W.a₃
      (W.a₃ ^ 2 + W.a₄))
      (algebraMap ℤ_[2] R 2) = algebraMap ℤ_[2] T 2
    exact (projectiveWeierstrassZChart_shiftEquiv W W.a₃
      (W.a₃ ^ 2 + W.a₄)).commutes 2
  have h2 : qR (MvPolynomial.C (2 : ℤ_[2])) ∈ Q :=
    hPQ.le (Ideal.mem_span_singleton_self _)
  have hF : localSurfaceSpecialFibreIdeal W W.a₃
      (W.a₃ ^ 2 + W.a₄) ≤ P := by
    rw [localSurfaceSpecialFibreIdeal_eq_span_two]
    apply (Ideal.span_singleton_le_iff_mem P).mpr
    rw [← hbase]
    exact Ideal.mem_map_of_mem e.toRingHom h2
  have hnotP : ¬ localSurfaceClosedPoint W W.a₃
      (W.a₃ ^ 2 + W.a₄) ≤ P := by
    intro hC
    apply hnotNode
    have hh := Ideal.comap_mono (f := e.toRingHom) hC
    change (localSurfaceClosedPoint W W.a₃
      (W.a₃ ^ 2 + W.a₄)).comap e.toRingHom ≤ Q
    simpa only [P, Ideal.comap_map_of_surjective e.toRingHom e.surjective,
      ← RingHom.ker_eq_comap_bot, hkere, sup_bot_eq] using hh
  obtain ⟨b, hmaxP⟩ :=
    splitNode_surface_nonNode_two_parameters W hnode hsplit P hF hnotP
  let L := Localization.AtPrime Q
  let N := Localization.AtPrime P
  let E : L ≃+* N := atPrime_equiv_of_equiv_map e Q
  let a : L := (algebraMap R L) (qR (MvPolynomial.C (2 : ℤ_[2])))
  let a' : N := (algebraMap T N) (qT (MvPolynomial.C (2 : ℤ_[2])))
  have hEa : E a = a' := by
    simp only [E, a, a', atPrime_equiv_of_equiv_map,
      IsLocalization.ringEquivOfRingEquiv_eq, hbase]
  have hmax : LocalRing.maximalIdeal L =
      Ideal.span {a, E.symm b} := by
    calc
      LocalRing.maximalIdeal L =
          Ideal.map E.symm.toRingHom (LocalRing.maximalIdeal N) :=
        (maximalIdeal_map_of_localEquiv E.symm).symm
      _ = Ideal.map E.symm.toRingHom (Ideal.span {a', b}) := by
        rw [hmaxP]
      _ = Ideal.span {E.symm a', E.symm b} := by
        rw [Ideal.map_span]
        change Ideal.span (E.symm '' ({a', b} : Set N)) =
          Ideal.span {E.symm a', E.symm b}
        simp only [Set.image_insert_eq, Set.image_singleton]
      _ = Ideal.span {a, E.symm b} := by
        rw [← hEa, E.symm_apply_apply]
  exact ⟨E.symm b, hmax,
    splitNode_ZChart_strictSpecialFibrePrime_dim_two_of_pair
      W hnode hsplit Q hPQ a (E.symm b) hmax⟩

end Beal.General