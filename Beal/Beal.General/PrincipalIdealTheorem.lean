import Beal.«Beal.General».LocalHeight
import Mathlib.RingTheory.Localization.AtPrime
import Mathlib.RingTheory.Localization.Ideal
import Mathlib.RingTheory.Localization.Submodule
import Mathlib.RingTheory.Filtration
import Mathlib.RingTheory.KrullDimension.Basic

/-!
Krull's principal ideal theorem at the pinned Mathlib version, proved
locally from an Artinian quotient, localization, and Nakayama's lemma.
-/

namespace Beal.General

/-- The algebraic core of local PIT: if the maximal ideal is minimal over
one equation, localization at any strictly smaller prime has nilpotent
maximal ideal. The Artinian quotient makes contracted powers stabilize,
and two applications of Nakayama eliminate the equation and the prime. -/
theorem local_principal_minimal_lower_prime_nilpotent
    {R : Type*} [CommRing R] [LocalRing R] [IsNoetherianRing R]
    (x : R)
    (hmin : LocalRing.maximalIdeal R ∈ (Ideal.span {x}).minimalPrimes)
    (q : Ideal R) (hqprime : q.IsPrime)
    (hq : q < LocalRing.maximalIdeal R) :
    IsNilpotent (LocalRing.maximalIdeal (Localization.AtPrime q)) := by
  let I : Ideal R := Ideal.span {x}
  let f : R →+* Localization.AtPrime q := algebraMap R _
  let K (n : ℕ) : Ideal R := ((q.map f) ^ n).comap f
  have hx : x ∉ q := by
    intro hx
    have hle : I ≤ q := Ideal.span_le.mpr (Set.singleton_subset_iff.mpr hx)
    exact (not_le_of_gt hq) (hmin.2 ⟨hqprime, hle⟩ hq.le)
  have hunit : IsUnit (f x) :=
    IsLocalization.map_units (M := q.primeCompl) _ ⟨x, hx⟩
  haveI : IsArtinianRing (R ⧸ I) :=
    quotient_isArtinian_of_maximal_minimal_prime I hmin
  let qs : ℕ →o (Ideal (R ⧸ I))ᵒᵈ :=
    { toFun := fun n => (K n).map (Ideal.Quotient.mk I),
      monotone' := fun _ _ e =>
        Ideal.map_mono (Ideal.comap_mono (Ideal.pow_le_pow_right e)) }
  obtain ⟨n, hn⟩ := IsArtinian.monotone_stabilizes qs
  have hEq : K n ⊔ I = K (n + 1) ⊔ I := by
    have he := congrArg (Ideal.comap (Ideal.Quotient.mk I)) (hn (n + 1) n.le_succ)
    simpa only [qs, K, OrderHom.coe_mk, ← RingHom.ker_eq_comap_bot,
      Ideal.mk_ker, Ideal.comap_map_of_surjective _ Ideal.Quotient.mk_surjective] using he
  have hIJac : I ≤ Ideal.jacobson (⊥ : Ideal R) := by
    rw [LocalRing.jacobson_eq_maximalIdeal (⊥ : Ideal R) bot_ne_top]
    exact hmin.1.2
  have hKN : K n ≤ K (n + 1) := by
    apply Submodule.le_of_le_smul_of_le_jacobson_bot
      (I := I) (IsNoetherian.noetherian _) hIJac
    intro y hy
    obtain ⟨a, ha, b, hb, rfl⟩ := Submodule.mem_sup.mp (hEq.le (Ideal.mem_sup_left hy))
    obtain ⟨c, rfl⟩ := (Ideal.mem_span_singleton.mp hb)
    refine Submodule.add_mem_sup ha ?_
    have hsum : f (a + x * c) ∈ (q.map f) ^ n := hy
    have ha' : f a ∈ (q.map f) ^ n :=
      Ideal.pow_le_pow_right n.le_succ ha
    have hmul : f x * f c ∈ (q.map f) ^ n := by
      have h := ((q.map f) ^ n).sub_mem hsum ha'
      simpa only [map_add, map_mul, add_sub_cancel_left] using h
    have hc : c ∈ K n := (Ideal.unit_mul_mem_iff_mem _ hunit).mp hmul
    exact Submodule.smul_mem_smul (Ideal.mem_span_singleton_self x) hc
  haveI : IsNoetherianRing (Localization.AtPrime q) :=
    IsLocalization.isNoetherianRing q.primeCompl _ inferInstance
  have hLocal : (q.map f) ^ n = ⊥ := by
    have hpow : (q.map f) ^ n ≤ (q.map f) ^ (n + 1) := by
      have h := Ideal.map_mono (f := f) hKN
      simpa only [K, IsLocalization.map_comap q.primeCompl (Localization.AtPrime q)] using h
    apply Submodule.eq_bot_of_le_smul_of_le_jacobson_bot (q.map f)
      ((q.map f) ^ n) (IsNoetherian.noetherian _)
    · rwa [smul_eq_mul, ← pow_succ']
    · rw [Localization.AtPrime.map_eq_maximalIdeal (I := q),
        LocalRing.jacobson_eq_maximalIdeal (⊥ : Ideal (Localization.AtPrime q)) bot_ne_top]
  rw [← Localization.AtPrime.map_eq_maximalIdeal (I := q)]
  exact ⟨n, hLocal⟩

/-- A prime strictly below a maximal ideal minimal over one equation
is itself a minimal prime. -/
theorem local_principal_minimal_lower_prime_isMinimal
    {R : Type*} [CommRing R] [LocalRing R] [IsNoetherianRing R]
    (x : R)
    (hmin : LocalRing.maximalIdeal R ∈ (Ideal.span {x}).minimalPrimes)
    (q : Ideal R) (hqprime : q.IsPrime)
    (hq : q < LocalRing.maximalIdeal R)
    (r : Ideal R) (hrprime : r.IsPrime) (hrq : r ≤ q) : r = q := by
  let f : R →+* Localization.AtPrime q := algebraMap R _
  have hdr : Disjoint (q.primeCompl : Set R) (r : Set R) :=
    Set.disjoint_left.mpr (by
      intro z hz hzr
      exact hz (hrq hzr))
  have hrmap : (r.map f).IsPrime :=
    IsLocalization.isPrime_of_isPrime_disjoint q.primeCompl _ r hrprime hdr
  obtain ⟨n, hn⟩ := local_principal_minimal_lower_prime_nilpotent x hmin q hqprime hq
  have hmle : LocalRing.maximalIdeal (Localization.AtPrime q) ≤ r.map f := by
    intro y hy
    have hpow : y ^ n ∈ r.map f := by
      have hz := Ideal.pow_mem_pow hy n
      rw [hn] at hz
      have hyz : y ^ n = 0 := Ideal.mem_bot.mp hz
      simp [hyz]
    exact hrmap.mem_of_pow_mem n hpow
  have hqmap : q.map f ≤ r.map f := by
    rw [Localization.AtPrime.map_eq_maximalIdeal (I := q)]
    exact hmle
  have hqle : q ≤ r := by
    rw [← IsLocalization.comap_map_of_isPrime_disjoint q.primeCompl
      (Localization.AtPrime q) q hqprime (by exact disjoint_compl_left)]
    rw [← IsLocalization.comap_map_of_isPrime_disjoint q.primeCompl
      (Localization.AtPrime q) r hrprime hdr]
    exact Ideal.comap_mono hqmap
  exact le_antisymm hrq hqle

/-- Minimality over a principal ideal is preserved when localizing at
that minimal prime. -/
theorem principal_minimal_atPrime
    {R : Type*} [CommRing R]
    (x : R) (p : Ideal R) [p.IsPrime]
    (hmin : p ∈ (Ideal.span {x}).minimalPrimes) :
    LocalRing.maximalIdeal (Localization.AtPrime p) ∈
      (Ideal.span {(algebraMap R (Localization.AtPrime p)) x}).minimalPrimes := by
  let f : R →+* Localization.AtPrime p := algebraMap R _
  haveI : p.IsPrime := hmin.1.1
  have hspan : (Ideal.span {f x} : Ideal (Localization.AtPrime p)) =
      (Ideal.span {x} : Ideal R).map f := by
    rw [Ideal.map_span]
    simp
  refine ⟨⟨(LocalRing.maximalIdeal.isMaximal _).isPrime, ?_⟩, ?_⟩
  · rw [hspan, ← Localization.AtPrime.map_eq_maximalIdeal (I := p)]
    exact Ideal.map_mono hmin.1.2
  · intro J hJ hJle
    have hIp : (Ideal.span {x} : Ideal R) ≤ J.comap f := by
      apply Ideal.map_le_iff_le_comap.mp
      exact hspan.symm ▸ hJ.2
    have hJp : J.comap f ≤ p := by
      simpa only [f, Localization.AtPrime.comap_maximalIdeal] using
        (Ideal.comap_mono (f := f) hJle)
    have hpJ : p ≤ J.comap f := hmin.2 ⟨hJ.1.comap f, hIp⟩ hJp
    rw [← Localization.AtPrime.map_eq_maximalIdeal (I := p)]
    exact Ideal.map_le_iff_le_comap.mpr hpJ

/-- There cannot be two strict prime inclusions below a prime minimal
over a principal ideal. This form avoids any unported height API. -/
theorem no_two_primes_below_minimal_principal
    {R : Type*} [CommRing R] [IsNoetherianRing R]
    (x : R) (p : Ideal R)
    (hmin : p ∈ (Ideal.span {x}).minimalPrimes)
    (q r : Ideal R) (hqprime : q.IsPrime) (hrprime : r.IsPrime)
    (hrq : r < q) (hqp : q < p) : False := by
  haveI : p.IsPrime := hmin.1.1
  let f : R →+* Localization.AtPrime p := algebraMap R _
  haveI : IsNoetherianRing (Localization.AtPrime p) :=
    IsLocalization.isNoetherianRing p.primeCompl _ inferInstance
  have hdq : Disjoint (p.primeCompl : Set R) (q : Set R) :=
    Set.disjoint_left.mpr (by
      intro z hz hzq
      exact hz (hqp.le hzq))
  have hdr : Disjoint (p.primeCompl : Set R) (r : Set R) :=
    Set.disjoint_left.mpr (by
      intro z hz hzr
      exact hz (hqp.le (hrq.le hzr)))
  have hqmap : (q.map f).IsPrime :=
    IsLocalization.isPrime_of_isPrime_disjoint p.primeCompl _ q hqprime hdq
  have hrmap : (r.map f).IsPrime :=
    IsLocalization.isPrime_of_isPrime_disjoint p.primeCompl _ r hrprime hdr
  have hq_lt : q.map f < LocalRing.maximalIdeal (Localization.AtPrime p) := by
    rw [← Localization.AtPrime.map_eq_maximalIdeal (I := p)]
    apply lt_of_le_of_ne (Ideal.map_mono hqp.le)
    intro heq
    have hc := congrArg (Ideal.comap f) heq
    rw [IsLocalization.comap_map_of_isPrime_disjoint p.primeCompl
      (Localization.AtPrime p) q hqprime hdq,
      IsLocalization.comap_map_of_isPrime_disjoint p.primeCompl
        (Localization.AtPrime p) p hmin.1.1 (by exact disjoint_compl_left)] at hc
    exact (ne_of_lt hqp) hc
  have heq := local_principal_minimal_lower_prime_isMinimal
    (f x) (principal_minimal_atPrime x p hmin)
    (q.map f) hqmap hq_lt (r.map f) hrmap (Ideal.map_mono hrq.le)
  have hc := congrArg (Ideal.comap f) heq
  rw [IsLocalization.comap_map_of_isPrime_disjoint p.primeCompl
    (Localization.AtPrime p) r hrprime hdr,
    IsLocalization.comap_map_of_isPrime_disjoint p.primeCompl
      (Localization.AtPrime p) q hqprime hdq] at hc
  exact (ne_of_lt hrq) hc

/-- General principal ideal theorem for a Noetherian commutative ring,
without assuming the ring or the minimal prime is factorial. -/
theorem minimal_prime_over_principal_height_le_one_general
    {R : Type*} [CommRing R] [IsNoetherianRing R]
    (x : R) (p : Ideal R)
    (hmin : p ∈ (Ideal.span {x}).minimalPrimes) :
    Order.height (⟨p, hmin.1.1⟩ : PrimeSpectrum R) ≤ 1 := by
  let P : PrimeSpectrum R := ⟨p, hmin.1.1⟩
  change Order.height P ≤ 1
  apply Order.height_le
  intro s hs
  have hlen : s.length ≤ 1 := by
    by_contra hn
    have hprev : s.eraseLast.last < P := by
      simpa only [hs] using s.eraseLast_last_rel_last (by omega)
    have hprevprev : s.eraseLast.eraseLast.last < s.eraseLast.last :=
      s.eraseLast.eraseLast_last_rel_last (by simp; omega)
    exact no_two_primes_below_minimal_principal x p hmin
      (s.eraseLast.last).asIdeal (s.eraseLast.eraseLast.last).asIdeal
      (s.eraseLast.last).isPrime (s.eraseLast.eraseLast.last).isPrime
      (by simpa [P] using hprevprev) (by simpa [P] using hprev)
  exact_mod_cast hlen

#print axioms local_principal_minimal_lower_prime_nilpotent
#print axioms no_two_primes_below_minimal_principal
#print axioms minimal_prime_over_principal_height_le_one_general

end Beal.General