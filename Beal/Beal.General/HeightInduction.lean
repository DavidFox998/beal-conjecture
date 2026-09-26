import Beal.«Beal.General».PrincipalIdealTheorem

/-!
Quotient-side prerequisites for Krull height induction. These statements
control chains containing the quotient ideal; they do not bound arbitrary
chains below a prime minimal over several generators.
-/

namespace Beal.General

/-- If `p` is minimal over `I + (x)`, then its image modulo `I` is
minimal over the image of `x`. -/
theorem minimal_prime_sup_principal_quotient
    {R : Type*} [CommRing R]
    (I : Ideal R) (x : R) (p : Ideal R)
    (hp : p ∈ (I ⊔ Ideal.span {x}).minimalPrimes) :
    p.map (Ideal.Quotient.mk I) ∈
      (Ideal.span {(Ideal.Quotient.mk I) x}).minimalPrimes := by
  let f : R →+* R ⧸ I := Ideal.Quotient.mk I
  have hIp : I ≤ p := le_sup_left.trans hp.1.2
  have hker : RingHom.ker f ≤ p := by simpa [f, Ideal.mk_ker] using hIp
  haveI : p.IsPrime := hp.1.1
  have hpmap : (p.map f).IsPrime :=
    Ideal.map_isPrime_of_surjective Ideal.Quotient.mk_surjective hker
  have hspan : (Ideal.span {f x} : Ideal (R ⧸ I)) =
      (Ideal.span {x} : Ideal R).map f := by
    rw [Ideal.map_span]
    simp
  refine ⟨⟨hpmap, ?_⟩, ?_⟩
  · rw [hspan]
    exact Ideal.map_mono (le_sup_right.trans hp.1.2)
  · intro J hJ hJle
    have hIleJ : I ≤ J.comap f := by
      simpa only [f, Ideal.mk_ker] using
        (Ideal.ker_le_comap (K := J) f)
    have hxleJ : (Ideal.span {x} : Ideal R) ≤ J.comap f := by
      apply Ideal.map_le_iff_le_comap.mp
      exact hspan.symm ▸ hJ.2
    have hJleP : J.comap f ≤ p := by
      calc
        J.comap f ≤ (p.map f).comap f := Ideal.comap_mono hJle
        _ = p := by
          rw [Ideal.comap_map_of_surjective f Ideal.Quotient.mk_surjective]
          rw [← RingHom.ker_eq_comap_bot]
          exact sup_eq_left.mpr hker
    have hpJ : p ≤ J.comap f :=
      hp.2 ⟨hJ.1.comap f, sup_le hIleJ hxleJ⟩ hJleP
    exact Ideal.map_le_iff_le_comap.mpr hpJ

/-- General PIT bounds chains *above* an arbitrary ideal: two strict
prime inclusions below `p`, all containing `I`, contradict minimality
of `p` over `I + (x)`. No assertion is made about chains avoiding `I`. -/
theorem no_two_primes_over_ideal_below_minimal_sup_principal
    {R : Type*} [CommRing R] [IsNoetherianRing R]
    (I : Ideal R) (x : R) (p : Ideal R)
    (hp : p ∈ (I ⊔ Ideal.span {x}).minimalPrimes)
    (q r : Ideal R) (hq : q.IsPrime) (hr : r.IsPrime)
    (hIr : I ≤ r) (hrq : r < q) (hqp : q < p) : False := by
  let f : R →+* R ⧸ I := Ideal.Quotient.mk I
  haveI : IsNoetherianRing (R ⧸ I) :=
    isNoetherianRing_of_surjective R (R ⧸ I) f Ideal.Quotient.mk_surjective
  have hIq : I ≤ q := hIr.trans hrq.le
  have hIp : I ≤ p := hIq.trans hqp.le
  have hmapPrime (a : Ideal R) (ha : a.IsPrime) (hIa : I ≤ a) :
      (a.map f).IsPrime := by
    haveI : a.IsPrime := ha
    apply Ideal.map_isPrime_of_surjective Ideal.Quotient.mk_surjective
    simpa [f, Ideal.mk_ker] using hIa
  have hmapStrict (a b : Ideal R) (hIa : I ≤ a) (hIb : I ≤ b)
      (hab : a < b) : a.map f < b.map f := by
    apply lt_of_le_of_ne (Ideal.map_mono hab.le)
    intro he
    have hc := congrArg (Ideal.comap f) he
    simp only [Ideal.comap_map_of_surjective f Ideal.Quotient.mk_surjective,
      ← RingHom.ker_eq_comap_bot, f, Ideal.mk_ker,
      sup_eq_left.mpr hIa, sup_eq_left.mpr hIb] at hc
    exact (ne_of_lt hab) hc
  exact no_two_primes_below_minimal_principal
    (f x) (p.map f) (minimal_prime_sup_principal_quotient I x p hp)
    (q.map f) (r.map f) (hmapPrime q hq hIq) (hmapPrime r hr hIr)
    (hmapStrict r q hIr hIq hrq) (hmapStrict q p hIq hIp hqp)

/-- Noetherianity extends any prime strictly below the maximal ideal
to a prime with no intermediate prime before the maximal ideal. -/
theorem exists_prime_immediately_below_maximal
    {R : Type*} [CommRing R] [LocalRing R] [IsNoetherianRing R]
    (q : Ideal R) (hqprime : q.IsPrime)
    (hq : q < LocalRing.maximalIdeal R) :
    ∃ q' : Ideal R, q'.IsPrime ∧ q ≤ q' ∧ q' < LocalRing.maximalIdeal R ∧
      (∀ J : Ideal R, J.IsPrime → q' < J → J = LocalRing.maximalIdeal R) := by
  let S : Set (Ideal R) :=
    {J | J.IsPrime ∧ q ≤ J ∧ J < LocalRing.maximalIdeal R}
  obtain ⟨q', hq', hmax⟩ :=
    (set_has_maximal_iff_noetherian.mpr
      (inferInstance : IsNoetherian R R)) S ⟨q, hqprime, le_rfl, hq⟩
  refine ⟨q', hq'.1, hq'.2.1, hq'.2.2, ?_⟩
  intro J hJ hq'J
  have hJle : J ≤ LocalRing.maximalIdeal R :=
    LocalRing.le_maximalIdeal hJ.ne_top
  by_contra hne
  exact hmax J ⟨hJ, hq'.2.1.trans hq'J.le,
    lt_of_le_of_ne hJle hne⟩ hq'J

/-- If `q` has no intermediate prime before the maximal ideal,
adjoining an element of the maximal ideal outside `q` has
maximal-ideal radical. -/
theorem radical_sup_span_eq_maximal_of_immediate_prime
    {R : Type*} [CommRing R] [LocalRing R]
    (q : Ideal R) (hqprime : q.IsPrime)
    (himmediate : ∀ J : Ideal R, J.IsPrime →
      q < J → J = LocalRing.maximalIdeal R)
    (a : R) (ham : a ∈ LocalRing.maximalIdeal R)
    (haq : a ∉ q) :
    (q ⊔ Ideal.span {a}).radical = LocalRing.maximalIdeal R := by
  have hle : q ⊔ Ideal.span {a} ≤ LocalRing.maximalIdeal R :=
    sup_le (LocalRing.le_maximalIdeal hqprime.ne_top)
      (Ideal.span_le.mpr (Set.singleton_subset_iff.mpr ham))
  apply le_antisymm
  · exact (LocalRing.maximalIdeal.isMaximal R).isPrime.radical_le_iff.mpr hle
  · rw [Ideal.radical_eq_sInf]
    apply le_sInf
    intro J hJ
    have hqJ : q < J := by
      apply lt_of_le_of_ne (le_sup_left.trans hJ.1)
      intro he
      have haJ : a ∈ J := hJ.1 (Ideal.mem_sup_right (Ideal.mem_span_singleton_self a))
      exact haq (he ▸ haJ)
    rw [himmediate J hJ.2 hqJ]

/-- A generator lying in the radical of `q + (a)` can be replaced
by an element of `q` without losing its radical consequence once
`a` is retained. -/
theorem exists_mem_and_mem_radical_span_pair
    {R : Type*} [CommRing R]
    (q : Ideal R) (a b : R)
    (hb : b ∈ (q ⊔ Ideal.span {a}).radical) :
    ∃ t : R, t ∈ q ∧ b ∈ (Ideal.span {t, a} : Ideal R).radical := by
  obtain ⟨n, hn⟩ := Ideal.mem_radical_iff.mp hb
  obtain ⟨t, ht, u, hu, heq⟩ := Submodule.mem_sup.mp hn
  refine ⟨t, ht, Ideal.mem_radical_iff.mpr ⟨n, ?_⟩⟩
  have ht' : t ∈ (Ideal.span {t, a} : Ideal R) :=
    Ideal.subset_span (by simp)
  have ha' : a ∈ (Ideal.span {t, a} : Ideal R) :=
    Ideal.subset_span (by simp)
  have hu' : u ∈ (Ideal.span {t, a} : Ideal R) :=
    (Ideal.span_le.mpr (Set.singleton_subset_iff.mpr ha')) hu
  rw [← heq]
  exact Ideal.add_mem _ ht' hu'

/-- At an immediate predecessor of the maximal ideal, one generator
outside that prime lets us replace the other by an element inside it.
The resulting prime is minimal over the replacement's principal ideal. -/
private theorem immediate_prime_minimal_singleton_of_pair
    {R : Type*} [CommRing R] [LocalRing R] [IsNoetherianRing R]
    (a b : R)
    (hmin : LocalRing.maximalIdeal R ∈ (Ideal.span {a, b}).minimalPrimes)
    (q : Ideal R) (hqprime : q.IsPrime)
    (hq : q < LocalRing.maximalIdeal R)
    (himmediate : ∀ J : Ideal R, J.IsPrime →
      q < J → J = LocalRing.maximalIdeal R)
    (haq : a ∉ q) :
    ∃ t : R, t ∈ q ∧ q ∈ (Ideal.span {t}).minimalPrimes := by
  let m := LocalRing.maximalIdeal R
  have ham : a ∈ m := hmin.1.2 (Ideal.subset_span (by simp))
  have hbm : b ∈ m := hmin.1.2 (Ideal.subset_span (by simp))
  have hbRad : b ∈ (q ⊔ Ideal.span {a}).radical := by
    rw [radical_sup_span_eq_maximal_of_immediate_prime q hqprime
      himmediate a ham haq]
    exact hbm
  obtain ⟨t, ht, hbRad'⟩ :=
    exists_mem_and_mem_radical_span_pair q a b hbRad
  have hsup : (Ideal.span {t} : Ideal R) ⊔ Ideal.span {a} =
      Ideal.span {t, a} := by
    rw [← Ideal.span_union]
    congr 1
  have hnew : m ∈ ((Ideal.span {t}) ⊔ Ideal.span {a}).minimalPrimes := by
    refine ⟨⟨(LocalRing.maximalIdeal.isMaximal R).isPrime, ?_⟩, ?_⟩
    · exact sup_le (Ideal.span_le.mpr (Set.singleton_subset_iff.mpr (hq.le ht)))
        (Ideal.span_le.mpr (Set.singleton_subset_iff.mpr ham))
    · intro J hJ hJle
      have haJ : a ∈ J := hJ.2 (Ideal.mem_sup_right (Ideal.mem_span_singleton_self a))
      have hbJ : b ∈ J := by
        have hradLe : (Ideal.span {t, a} : Ideal R).radical ≤ J :=
          hJ.1.radical_le_iff.mpr (by rw [← hsup]; exact hJ.2)
        exact hradLe hbRad'
      have habJ : (Ideal.span {a, b} : Ideal R) ≤ J := by
        apply Ideal.span_le.mpr
        simpa [Set.insert_subset_iff, Set.singleton_subset_iff] using
          (show a ∈ J ∧ b ∈ J from ⟨haJ, hbJ⟩)
      exact hmin.2 ⟨hJ.1, habJ⟩ hJle
  refine ⟨t, ht, ⟨⟨hqprime,
    Ideal.span_le.mpr (Set.singleton_subset_iff.mpr ht)⟩, ?_⟩⟩
  intro r hr hrq
  by_contra hnot
  have hrlt : r < q := lt_of_le_of_ne hrq (by
    intro he
    exact hnot (le_of_eq he.symm))
  exact no_two_primes_over_ideal_below_minimal_sup_principal
    (Ideal.span {t}) a m hnew q r hqprime hr.1 hr.2 hrlt hq

/-- In a Noetherian local ring, a maximal ideal minimal over two
generators has no prime of height two strictly below it. -/
theorem local_pair_minimal_lower_prime_height_le_one
    {R : Type*} [CommRing R] [LocalRing R] [IsNoetherianRing R]
    (a b : R)
    (hmin : LocalRing.maximalIdeal R ∈ (Ideal.span {a, b}).minimalPrimes)
    (q : Ideal R) (hqprime : q.IsPrime)
    (hq : q < LocalRing.maximalIdeal R) :
    Order.height (⟨q, hqprime⟩ : PrimeSpectrum R) ≤ 1 := by
  obtain ⟨q', hqprime', hqq', hq'lt, himmediate⟩ :=
    exists_prime_immediately_below_maximal q hqprime hq
  have hnot : ¬ (a ∈ q' ∧ b ∈ q') := by
    rintro ⟨ha, hb⟩
    have hle : (Ideal.span {a, b} : Ideal R) ≤ q' := by
      apply Ideal.span_le.mpr
      simpa [Set.insert_subset_iff, Set.singleton_subset_iff] using
        (show a ∈ q' ∧ b ∈ q' from ⟨ha, hb⟩)
    exact (not_le_of_gt hq'lt) (hmin.2 ⟨hqprime', hle⟩ hq'lt.le)
  have hq'height : Order.height (⟨q', hqprime'⟩ : PrimeSpectrum R) ≤ 1 := by
    by_cases ha : a ∈ q'
    · have hb : b ∉ q' := fun hb => hnot ⟨ha, hb⟩
      have hmin' : LocalRing.maximalIdeal R ∈
          (Ideal.span {b, a}).minimalPrimes := by
        simpa only [show ({b, a} : Set R) = {a, b} by ext; simp [or_comm]] using hmin
      obtain ⟨t, _, hqt⟩ :=
        immediate_prime_minimal_singleton_of_pair b a hmin'
          q' hqprime' hq'lt himmediate hb
      exact minimal_prime_over_principal_height_le_one_general t q' hqt
    · obtain ⟨t, _, hqt⟩ :=
        immediate_prime_minimal_singleton_of_pair a b hmin
          q' hqprime' hq'lt himmediate ha
      exact minimal_prime_over_principal_height_le_one_general t q' hqt
  exact (Order.height_mono (show
    (⟨q, hqprime⟩ : PrimeSpectrum R) ≤ ⟨q', hqprime'⟩ from hqq')).trans hq'height

/-- The local two-generator case of Krull's height bound. -/
theorem local_pair_minimal_height_le_two
    {R : Type*} [CommRing R] [LocalRing R] [IsNoetherianRing R]
    (a b : R)
    (hmin : LocalRing.maximalIdeal R ∈ (Ideal.span {a, b}).minimalPrimes) :
    Order.height (⟨LocalRing.maximalIdeal R,
      (LocalRing.maximalIdeal.isMaximal R).isPrime⟩ : PrimeSpectrum R) ≤ 2 := by
  let P : PrimeSpectrum R :=
    ⟨LocalRing.maximalIdeal R, (LocalRing.maximalIdeal.isMaximal R).isPrime⟩
  change Order.height P ≤ 2
  apply Order.height_le
  intro s hs
  have hlen : s.length ≤ 2 := by
    by_contra hn
    have hprev : s.eraseLast.last < P := by
      simpa only [hs] using s.eraseLast_last_rel_last (by omega)
    have hqheight := local_pair_minimal_lower_prime_height_le_one a b hmin
      (s.eraseLast.last).asIdeal (s.eraseLast.last).isPrime
      (by simpa [P] using hprev)
    have hlenprev : s.eraseLast.length ≤ 1 := by
      exact_mod_cast (Order.length_le_height_last (p := s.eraseLast)).trans hqheight
    simp at hlenprev
    omega
  exact_mod_cast hlen

/-- Minimality over any ideal persists at the localization of its
minimal prime. -/
theorem minimal_ideal_atPrime
    {R : Type*} [CommRing R]
    (I p : Ideal R) [p.IsPrime]
    (hp : p ∈ I.minimalPrimes) :
    LocalRing.maximalIdeal (Localization.AtPrime p) ∈
      (I.map (algebraMap R (Localization.AtPrime p))).minimalPrimes := by
  let f : R →+* Localization.AtPrime p := algebraMap R _
  refine ⟨⟨(LocalRing.maximalIdeal.isMaximal _).isPrime, ?_⟩, ?_⟩
  · rw [← Localization.AtPrime.map_eq_maximalIdeal (I := p)]
    exact Ideal.map_mono hp.1.2
  · intro J hJ hJle
    have hIp : I ≤ J.comap f := Ideal.map_le_iff_le_comap.mp hJ.2
    have hJp : J.comap f ≤ p := by
      simpa only [f, Localization.AtPrime.comap_maximalIdeal] using
        (Ideal.comap_mono (f := f) hJle)
    have hpJ : p ≤ J.comap f := hp.2 ⟨hJ.1.comap f, hIp⟩ hJp
    rw [← Localization.AtPrime.map_eq_maximalIdeal (I := p)]
    exact Ideal.map_le_iff_le_comap.mpr hpJ

/-- Strict inclusions of primes under `p` stay strict after localizing
at `p`. -/
theorem prime_map_strict_atPrime
    {R : Type*} [CommRing R]
    (p : Ideal R) [p.IsPrime] (q r : Ideal R)
    (hqprime : q.IsPrime) (hrprime : r.IsPrime)
    (hqr : q < r) (hrp : r ≤ p) :
    q.map (algebraMap R (Localization.AtPrime p)) <
      r.map (algebraMap R (Localization.AtPrime p)) := by
  let f : R →+* Localization.AtPrime p := algebraMap R _
  have hqdis : Disjoint (p.primeCompl : Set R) (q : Set R) :=
    Set.disjoint_left.mpr (by
      intro z hz hzq
      exact hz (hrp (hqr.le hzq)))
  have hrdis : Disjoint (p.primeCompl : Set R) (r : Set R) :=
    Set.disjoint_left.mpr (by
      intro z hz hzr
      exact hz (hrp hzr))
  apply lt_of_le_of_ne (Ideal.map_mono hqr.le)
  intro heq
  have hc := congrArg (Ideal.comap f) heq
  rw [IsLocalization.comap_map_of_isPrime_disjoint p.primeCompl
    (Localization.AtPrime p) q hqprime hqdis,
    IsLocalization.comap_map_of_isPrime_disjoint p.primeCompl
      (Localization.AtPrime p) r hrprime hrdis] at hc
  exact (ne_of_lt hqr) hc

/-- The general two-generator height bound, obtained from the local
two-generator argument by localization at the minimal prime. -/
theorem minimal_prime_over_pair_height_le_two
    {R : Type*} [CommRing R] [IsNoetherianRing R]
    (a b : R) (p : Ideal R)
    (hp : p ∈ (Ideal.span {a, b}).minimalPrimes) :
    Order.height (⟨p, hp.1.1⟩ : PrimeSpectrum R) ≤ 2 := by
  haveI : p.IsPrime := hp.1.1
  let f : R →+* Localization.AtPrime p := algebraMap R _
  haveI : IsNoetherianRing (Localization.AtPrime p) :=
    IsLocalization.isNoetherianRing p.primeCompl _ inferInstance
  have hspan : (Ideal.span {f a, f b} : Ideal (Localization.AtPrime p)) =
      (Ideal.span {a, b} : Ideal R).map f := by
    rw [Ideal.map_span]
    simp only [Set.image_insert_eq, Set.image_singleton]
  have hminloc : LocalRing.maximalIdeal (Localization.AtPrime p) ∈
      (Ideal.span {f a, f b}).minimalPrimes := by
    rw [hspan]
    exact minimal_ideal_atPrime _ p hp
  have hlocal := local_pair_minimal_height_le_two (f a) (f b) hminloc
  let P : PrimeSpectrum R := ⟨p, hp.1.1⟩
  change Order.height P ≤ 2
  apply Order.height_le
  intro s hs
  have hlen : s.length ≤ 2 := by
    by_contra hn
    let r₂ := s.eraseLast.last
    let r₁ := s.eraseLast.eraseLast.last
    let r₀ := s.eraseLast.eraseLast.eraseLast.last
    have h₂p : r₂ < P := by
      simpa only [hs] using s.eraseLast_last_rel_last (by omega)
    have h₁₂ : r₁ < r₂ :=
      s.eraseLast.eraseLast_last_rel_last (by simp; omega)
    have h₀₁ : r₀ < r₁ :=
      s.eraseLast.eraseLast.eraseLast_last_rel_last (by simp; omega)
    have hmap (r : PrimeSpectrum R) (hr : r ≤ P) :
        (r.asIdeal.map f).IsPrime := by
      have hd : Disjoint (p.primeCompl : Set R) (r.asIdeal : Set R) :=
        Set.disjoint_left.mpr (by
          intro z hz hzr
          exact hz (hr hzr))
      exact IsLocalization.isPrime_of_isPrime_disjoint
        p.primeCompl _ r.asIdeal r.isPrime hd
    have h₀p : r₀ ≤ P := (h₀₁.trans h₁₂ |>.trans h₂p).le
    have h₁p : r₁ ≤ P := (h₁₂.trans h₂p).le
    have h₂p' : r₂ ≤ P := h₂p.le
    let Q₀ : PrimeSpectrum (Localization.AtPrime p) :=
      ⟨r₀.asIdeal.map f, hmap r₀ h₀p⟩
    let Q₁ : PrimeSpectrum (Localization.AtPrime p) :=
      ⟨r₁.asIdeal.map f, hmap r₁ h₁p⟩
    let Q₂ : PrimeSpectrum (Localization.AtPrime p) :=
      ⟨r₂.asIdeal.map f, hmap r₂ h₂p'⟩
    let Q₃ : PrimeSpectrum (Localization.AtPrime p) :=
      ⟨LocalRing.maximalIdeal (Localization.AtPrime p),
        (LocalRing.maximalIdeal.isMaximal _).isPrime⟩
    have hQ₀₁ : Q₀ < Q₁ := by
      change r₀.asIdeal.map f < r₁.asIdeal.map f
      exact prime_map_strict_atPrime p _ _ r₀.isPrime r₁.isPrime
        (by simpa using h₀₁) h₁p
    have hQ₁₂ : Q₁ < Q₂ := by
      change r₁.asIdeal.map f < r₂.asIdeal.map f
      exact prime_map_strict_atPrime p _ _ r₁.isPrime r₂.isPrime
        (by simpa using h₁₂) h₂p'
    have hQ₂₃ : Q₂ < Q₃ := by
      change r₂.asIdeal.map f < LocalRing.maximalIdeal (Localization.AtPrime p)
      rw [← Localization.AtPrime.map_eq_maximalIdeal (I := p)]
      exact prime_map_strict_atPrime p _ _ r₂.isPrime hp.1.1
        (by simpa [P] using h₂p) le_rfl
    let chain : LTSeries (PrimeSpectrum (Localization.AtPrime p)) :=
      (((RelSeries.singleton (· < ·) Q₀).snoc Q₁ hQ₀₁).snoc Q₂ hQ₁₂).snoc Q₃ hQ₂₃
    have hlong : (3 : ℕ∞) ≤ Order.height Q₃ := by
      simpa [chain] using (Order.length_le_height_last (p := chain))
    have hbad : (3 : ℕ∞) ≤ 2 := hlong.trans (by simpa [Q₃] using hlocal)
    norm_num at hbad
  exact_mod_cast hlen

/-- The three-generator analogue of the replacement step: at an
immediate predecessor of the maximal ideal, replace the other two
generators by elements of that predecessor. -/
private theorem immediate_prime_minimal_pair_of_triple
    {R : Type*} [CommRing R] [LocalRing R] [IsNoetherianRing R]
    (a b c : R)
    (hmin : LocalRing.maximalIdeal R ∈
      (Ideal.span {a, b, c}).minimalPrimes)
    (q : Ideal R) (hqprime : q.IsPrime)
    (hq : q < LocalRing.maximalIdeal R)
    (himmediate : ∀ J : Ideal R, J.IsPrime →
      q < J → J = LocalRing.maximalIdeal R)
    (haq : a ∉ q) :
    ∃ t u : R, t ∈ q ∧ u ∈ q ∧
      q ∈ (Ideal.span {t, u}).minimalPrimes := by
  let m := LocalRing.maximalIdeal R
  have ham : a ∈ m := hmin.1.2 (Ideal.subset_span (by simp))
  have hbm : b ∈ m := hmin.1.2 (Ideal.subset_span (by simp))
  have hcm : c ∈ m := hmin.1.2 (Ideal.subset_span (by simp))
  have hrad : (q ⊔ Ideal.span {a}).radical = m :=
    radical_sup_span_eq_maximal_of_immediate_prime q hqprime
      himmediate a ham haq
  obtain ⟨t, ht, hbRad⟩ := exists_mem_and_mem_radical_span_pair q a b
    (hrad.symm ▸ hbm)
  obtain ⟨u, hu, hcRad⟩ := exists_mem_and_mem_radical_span_pair q a c
    (hrad.symm ▸ hcm)
  let I : Ideal R := Ideal.span {t, u}
  have htI : t ∈ I := Ideal.subset_span (by simp [I])
  have huI : u ∈ I := Ideal.subset_span (by simp [I])
  have hTA : (Ideal.span {t, a} : Ideal R) ≤ I ⊔ Ideal.span {a} := by
    apply Ideal.span_le.mpr
    simpa [Set.insert_subset_iff, Set.singleton_subset_iff] using
      (show t ∈ I ⊔ Ideal.span {a} ∧ a ∈ I ⊔ Ideal.span {a} from
        ⟨Ideal.mem_sup_left htI,
          Ideal.mem_sup_right (Ideal.mem_span_singleton_self a)⟩)
  have hUA : (Ideal.span {u, a} : Ideal R) ≤ I ⊔ Ideal.span {a} := by
    apply Ideal.span_le.mpr
    simpa [Set.insert_subset_iff, Set.singleton_subset_iff] using
      (show u ∈ I ⊔ Ideal.span {a} ∧ a ∈ I ⊔ Ideal.span {a} from
        ⟨Ideal.mem_sup_left huI,
          Ideal.mem_sup_right (Ideal.mem_span_singleton_self a)⟩)
  have hbNew : b ∈ (I ⊔ Ideal.span {a}).radical :=
    Ideal.radical_mono hTA hbRad
  have hcNew : c ∈ (I ⊔ Ideal.span {a}).radical :=
    Ideal.radical_mono hUA hcRad
  have hnew : m ∈ (I ⊔ Ideal.span {a}).minimalPrimes := by
    refine ⟨⟨(LocalRing.maximalIdeal.isMaximal R).isPrime, ?_⟩, ?_⟩
    · exact sup_le (Ideal.span_le.mpr (by
        simpa [Set.insert_subset_iff, Set.singleton_subset_iff] using
          (show t ∈ m ∧ u ∈ m from ⟨hq.le ht, hq.le hu⟩)))
        (Ideal.span_le.mpr (Set.singleton_subset_iff.mpr ham))
    · intro J hJ hJle
      have haJ : a ∈ J :=
        hJ.2 (Ideal.mem_sup_right (Ideal.mem_span_singleton_self a))
      have hradLe : (I ⊔ Ideal.span {a}).radical ≤ J :=
        hJ.1.radical_le_iff.mpr hJ.2
      have hspanJ : (Ideal.span {a, b, c} : Ideal R) ≤ J := by
        apply Ideal.span_le.mpr
        simpa [Set.insert_subset_iff, Set.singleton_subset_iff] using
          (show a ∈ J ∧ b ∈ J ∧ c ∈ J from
            ⟨haJ, hradLe hbNew, hradLe hcNew⟩)
      exact hmin.2 ⟨hJ.1, hspanJ⟩ hJle
  refine ⟨t, u, ht, hu, ⟨⟨hqprime,
    Ideal.span_le.mpr (by
      simpa [Set.insert_subset_iff, Set.singleton_subset_iff] using
        (show t ∈ q ∧ u ∈ q from ⟨ht, hu⟩))⟩, ?_⟩⟩
  intro r hr hrq
  by_contra hnot
  have hrlt : r < q := lt_of_le_of_ne hrq (by
    intro he
    exact hnot (le_of_eq he.symm))
  exact no_two_primes_over_ideal_below_minimal_sup_principal
    I a m hnew q r hqprime hr.1 hr.2 hrlt hq

/-- Every prime strictly below a local maximal ideal minimal over
three generators has height at most two. -/
theorem local_triple_minimal_lower_prime_height_le_two
    {R : Type*} [CommRing R] [LocalRing R] [IsNoetherianRing R]
    (a b c : R)
    (hmin : LocalRing.maximalIdeal R ∈
      (Ideal.span {a, b, c}).minimalPrimes)
    (q : Ideal R) (hqprime : q.IsPrime)
    (hq : q < LocalRing.maximalIdeal R) :
    Order.height (⟨q, hqprime⟩ : PrimeSpectrum R) ≤ 2 := by
  obtain ⟨q', hqprime', hqq', hq'lt, himmediate⟩ :=
    exists_prime_immediately_below_maximal q hqprime hq
  have hnot : ¬ (a ∈ q' ∧ b ∈ q' ∧ c ∈ q') := by
    rintro ⟨ha, hb, hc⟩
    have hle : (Ideal.span {a, b, c} : Ideal R) ≤ q' := by
      apply Ideal.span_le.mpr
      simpa [Set.insert_subset_iff, Set.singleton_subset_iff] using
        (show a ∈ q' ∧ b ∈ q' ∧ c ∈ q' from ⟨ha, hb, hc⟩)
    exact (not_le_of_gt hq'lt) (hmin.2 ⟨hqprime', hle⟩ hq'lt.le)
  have hq'height : Order.height (⟨q', hqprime'⟩ : PrimeSpectrum R) ≤ 2 := by
    by_cases ha : a ∈ q'
    · by_cases hb : b ∈ q'
      · have hc : c ∉ q' := fun hc => hnot ⟨ha, hb, hc⟩
        have hmin' : LocalRing.maximalIdeal R ∈
            (Ideal.span {c, a, b}).minimalPrimes := by
          simpa only [show ({c, a, b} : Set R) = {a, b, c} by
            ext z; simp [or_comm, or_left_comm, or_assoc]] using hmin
        obtain ⟨t, u, _, _, hqpair⟩ :=
          immediate_prime_minimal_pair_of_triple c a b hmin'
            q' hqprime' hq'lt himmediate hc
        exact minimal_prime_over_pair_height_le_two t u q' hqpair
      · have hmin' : LocalRing.maximalIdeal R ∈
            (Ideal.span {b, a, c}).minimalPrimes := by
          simpa only [show ({b, a, c} : Set R) = {a, b, c} by
            ext z; simp [or_comm, or_left_comm, or_assoc]] using hmin
        obtain ⟨t, u, _, _, hqpair⟩ :=
          immediate_prime_minimal_pair_of_triple b a c hmin'
            q' hqprime' hq'lt himmediate hb
        exact minimal_prime_over_pair_height_le_two t u q' hqpair
    · obtain ⟨t, u, _, _, hqpair⟩ :=
        immediate_prime_minimal_pair_of_triple a b c hmin
          q' hqprime' hq'lt himmediate ha
      exact minimal_prime_over_pair_height_le_two t u q' hqpair
  exact (Order.height_mono (show
    (⟨q, hqprime⟩ : PrimeSpectrum R) ≤ ⟨q', hqprime'⟩ from hqq')).trans hq'height

/-- The local three-generator case of Krull's height bound, for
arbitrary prime chains, not merely named coordinate primes. -/
theorem local_triple_minimal_height_le_three
    {R : Type*} [CommRing R] [LocalRing R] [IsNoetherianRing R]
    (a b c : R)
    (hmin : LocalRing.maximalIdeal R ∈
      (Ideal.span {a, b, c}).minimalPrimes) :
    Order.height (⟨LocalRing.maximalIdeal R,
      (LocalRing.maximalIdeal.isMaximal R).isPrime⟩ : PrimeSpectrum R) ≤ 3 := by
  let P : PrimeSpectrum R :=
    ⟨LocalRing.maximalIdeal R, (LocalRing.maximalIdeal.isMaximal R).isPrime⟩
  change Order.height P ≤ 3
  apply Order.height_le
  intro s hs
  have hlen : s.length ≤ 3 := by
    by_contra hn
    have hprev : s.eraseLast.last < P := by
      simpa only [hs] using s.eraseLast_last_rel_last (by omega)
    have hqheight := local_triple_minimal_lower_prime_height_le_two
      a b c hmin (s.eraseLast.last).asIdeal
      (s.eraseLast.last).isPrime (by simpa [P] using hprev)
    have hlenprev : s.eraseLast.length ≤ 2 := by
      exact_mod_cast (Order.length_le_height_last (p := s.eraseLast)).trans hqheight
    simp at hlenprev
    omega
  exact_mod_cast hlen

#print axioms minimal_prime_sup_principal_quotient
#print axioms no_two_primes_over_ideal_below_minimal_sup_principal
#print axioms exists_prime_immediately_below_maximal
#print axioms radical_sup_span_eq_maximal_of_immediate_prime
#print axioms exists_mem_and_mem_radical_span_pair
#print axioms local_pair_minimal_height_le_two
#print axioms minimal_prime_over_pair_height_le_two
#print axioms local_triple_minimal_height_le_three

end Beal.General