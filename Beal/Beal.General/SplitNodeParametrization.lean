import Beal.«Beal.General».ZChartParameterLift

/-!
An explicit rational parameter on the reduced split cubic away
from its node. This is a coordinate calculation in arbitrary
prime localizations, not yet a principal-maximal-ideal theorem.
-/

namespace Beal.General

/-- Localization at a prime preserves the principal-ideal property.
The proof uses correspondence of ideals under localization. -/
theorem principal_ideal_ring_atPrime_of_pid
    {A : Type*} [CommRing A] [IsPrincipalIdealRing A]
    (P : Ideal A) [P.IsPrime] :
    IsPrincipalIdealRing (Localization.AtPrime P) := by
  let L := Localization.AtPrime P
  let f : A →+* L := algebraMap A L
  refine ⟨fun I => ?_⟩
  obtain ⟨a, ha⟩ :=
    (IsPrincipalIdealRing.principal (I.comap f)).principal
  change I.comap f = Ideal.span {a} at ha
  refine ⟨⟨f a, ?_⟩⟩
  calc
    I = Ideal.map f (I.comap f) := (IsLocalization.map_comap P.primeCompl L I).symm
    _ = Ideal.map f (Ideal.span {a}) := by rw [ha]
    _ = Ideal.span {f a} := by simp only [Ideal.map_span, Set.image_singleton]

set_option maxHeartbeats 1000000 in
set_option synthInstance.maxHeartbeats 100000 in
/-- At every prime away from the node, `u` is invertible, so
`t = v/u` satisfies `u = t² + t` and `v = t*u`.
This applies without restricting the residue field to `𝔽₂`. -/
theorem splitNodeCubic_local_parameter_relations
    (J : Ideal (MvPolynomial (Fin 2) (ZMod 2) ⧸
      Ideal.span {splitNodeCubic})) [J.IsPrime]
    (hJ : ¬ splitNode_originIdeal ≤ J) :
    let C := MvPolynomial (Fin 2) (ZMod 2) ⧸
      Ideal.span {splitNodeCubic}
    let q : MvPolynomial (Fin 2) (ZMod 2) →+* C :=
      Ideal.Quotient.mk (Ideal.span {splitNodeCubic})
    let L := Localization.AtPrime J
    let f : C →+* L := algebraMap C L
    let u : L := f (q (MvPolynomial.X (0 : Fin 2)))
    let v : L := f (q (MvPolynomial.X (1 : Fin 2)))
    ∃ t : L, u = t ^ 2 + t ∧ v = t * u := by
  let C := MvPolynomial (Fin 2) (ZMod 2) ⧸
    Ideal.span {splitNodeCubic}
  haveI : (Ideal.span {splitNodeCubic} :
      Ideal (MvPolynomial (Fin 2) (ZMod 2))).IsPrime :=
    splitNodeCubic_ideal_isPrime
  haveI : IsDomain C :=
    (Ideal.Quotient.isDomain_iff_prime _).mpr inferInstance
  let q : MvPolynomial (Fin 2) (ZMod 2) →+* C :=
    Ideal.Quotient.mk (Ideal.span {splitNodeCubic})
  let L := Localization.AtPrime J
  haveI : IsDomain L := inferInstance
  let f : C →+* L := algebraMap C L
  let u : L := f (q (MvPolynomial.X (0 : Fin 2)))
  let v : L := f (q (MvPolynomial.X (1 : Fin 2)))
  have hunot : q (MvPolynomial.X (0 : Fin 2)) ∉ J := by
    intro h
    exact hJ (splitNodeCubic_prime_contains_u_implies_node J h)
  have hu : IsUnit u :=
    (IsLocalization.AtPrime.isUnit_to_map_iff L J _).mpr hunot
  obtain ⟨b, hb⟩ := hu.exists_right_inv
  have hF : q (MvPolynomial.X (1 : Fin 2)) *
      (q (MvPolynomial.X (1 : Fin 2)) +
        q (MvPolynomial.X (0 : Fin 2))) -
      q (MvPolynomial.X (0 : Fin 2)) ^ 3 = 0 := by
    calc
      _ = q splitNodeCubic := by simp [splitNodeCubic]
      _ = 0 := Ideal.Quotient.eq_zero_iff_mem.mpr
        (Ideal.subset_span (Set.mem_singleton _))
  have hFl : v * (v + u) - u ^ 3 = 0 := by
    simpa only [u, v, map_mul, map_add, map_sub, map_pow,
      map_zero] using congrArg f hF
  let t : L := v * b
  have hv : v = t * u := by
    dsimp [t]
    calc
      v = v * (u * b) := by rw [hb, mul_one]
      _ = (v * b) * u := by ring
  have hfactor : (t ^ 2 + t - u) * u ^ 2 = 0 := by
    calc
      _ = v * (v + u) - u ^ 3 := by rw [hv]; ring
      _ = 0 := hFl
  have hnonzero : u ^ 2 ≠ 0 := pow_ne_zero _ (IsUnit.ne_zero hu)
  have heq : t ^ 2 + t - u = 0 :=
    (mul_eq_zero.mp hfactor).resolve_right hnonzero
  exact ⟨t, (sub_eq_zero.mp heq).symm, hv⟩

set_option maxHeartbeats 2000000 in
set_option synthInstance.maxHeartbeats 100000 in
/-- The local ring of the reduced cubic is a principal-ideal ring
at every prime away from the node, including non-rational primes.
The parameter `t = v/u` presents it as a quotient of a localization
of the principal-ideal ring `𝔽₂[t]`. -/
theorem splitNodeCubic_nonNode_atPrime_isPrincipalIdealRing
    (J : Ideal (MvPolynomial (Fin 2) (ZMod 2) ⧸
      Ideal.span {splitNodeCubic})) [J.IsPrime]
    (hJ : ¬ splitNode_originIdeal ≤ J) :
    IsPrincipalIdealRing (Localization.AtPrime J) := by
  let C := MvPolynomial (Fin 2) (ZMod 2) ⧸ Ideal.span {splitNodeCubic}
  let A := Polynomial (ZMod 2)
  let q : MvPolynomial (Fin 2) (ZMod 2) →+* C :=
    Ideal.Quotient.mk (Ideal.span {splitNodeCubic})
  let L := Localization.AtPrime J
  let f : C →+* L := algebraMap C L
  obtain ⟨t, hut, hvt⟩ := splitNodeCubic_local_parameter_relations J hJ
  let ρ : ZMod 2 →+* L := f.comp (q.comp MvPolynomial.C)
  let g : A →+* L := Polynomial.eval₂RingHom ρ t
  have hC (a : ZMod 2) :
      g (Polynomial.C a) = f (q (MvPolynomial.C a)) := by
    change (Polynomial.C a).eval₂ ρ t = ρ a
    simp only [Polynomial.eval₂_C]
  have hX : g Polynomial.X = t := by
    change Polynomial.X.eval₂ ρ t = t
    simp only [Polynomial.eval₂_X]
  have hU : g (Polynomial.X ^ 2 + Polynomial.X) =
      f (q (MvPolynomial.X (0 : Fin 2))) := by
    simp only [map_add, map_pow, hX]
    exact hut.symm
  have hV : g (Polynomial.X * (Polynomial.X ^ 2 + Polynomial.X)) =
      f (q (MvPolynomial.X (1 : Fin 2))) := by
    simp only [map_mul, hX, hU]
    exact hvt.symm
  have hpre (p : MvPolynomial (Fin 2) (ZMod 2)) :
      ∃ z : A, g z = f (q p) := by
    induction p using MvPolynomial.induction_on with
    | h_C a =>
        exact ⟨Polynomial.C a, hC a⟩
    | h_add p r hp hr =>
        obtain ⟨a, ha⟩ := hp
        obtain ⟨b, hb⟩ := hr
        refine ⟨a + b, ?_⟩
        simp only [map_add, ha, hb]
    | h_X p i hp =>
        obtain ⟨a, ha⟩ := hp
        by_cases hi : i = 0
        · subst i
          refine ⟨a * (Polynomial.X ^ 2 + Polynomial.X), ?_⟩
          simp only [map_mul, ha, hU]
        · have hi1 : i = 1 := by fin_cases i <;> simp_all
          subst i
          refine ⟨a * (Polynomial.X *
            (Polynomial.X ^ 2 + Polynomial.X)), ?_⟩
          simp only [map_mul, ha, hV]
  have hpoly (c : C) : ∃ z : A, g z = f c := by
    obtain ⟨p, rfl⟩ := Ideal.Quotient.mk_surjective c
    exact hpre p
  let P : Ideal A := (LocalRing.maximalIdeal L).comap g
  haveI : P.IsPrime :=
    Ideal.comap_isPrime g (LocalRing.maximalIdeal L)
  have hunit (s : P.primeCompl) : IsUnit (g (s : A)) := by
    have hs : g (s : A) ∉ LocalRing.maximalIdeal L := s.property
    change ¬¬ IsUnit (g (s : A)) at hs
    exact not_not.mp hs
  let T := Localization.AtPrime P
  let φ : T →+* L := IsLocalization.lift (S := T) (g := g) hunit
  have hsurj : Function.Surjective φ := by
    intro x
    obtain ⟨c, s, hs⟩ := IsLocalization.mk'_surjective J.primeCompl x
    obtain ⟨a, ha⟩ := hpoly c
    obtain ⟨b, hb⟩ := hpoly (s : C)
    have hbs : b ∉ P := by
      intro h
      have hn : ¬ IsUnit (g b) := h
      exact hn (hb ▸ IsLocalization.map_units L s)
    let sb : P.primeCompl := ⟨b, hbs⟩
    refine ⟨IsLocalization.mk' T a sb, ?_⟩
    apply (IsLocalization.lift_mk'_spec hunit a x sb).mpr
    rw [ha, hb, ← hs]
    exact (IsLocalization.mk'_spec' L c s).symm
  haveI : IsPrincipalIdealRing A := inferInstance
  haveI : IsPrincipalIdealRing T :=
    principal_ideal_ring_atPrime_of_pid P
  exact IsPrincipalIdealRing.of_surjective φ hsurj

end Beal.General