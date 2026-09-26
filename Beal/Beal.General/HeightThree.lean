import Beal.«Beal.General».HeightInduction

/-!
The three-generator height bound, obtained by localizing the local
chain-control theorem at an arbitrary minimal prime.
-/

namespace Beal.General

/-- A prime minimal over three generators has height at most three in
any Noetherian commutative ring. This bounds *every* prime chain below
it; it does not assume chains pass through prescribed intermediate ideals. -/
theorem minimal_prime_over_triple_height_le_three
    {R : Type*} [CommRing R] [IsNoetherianRing R]
    (a b c : R) (p : Ideal R)
    (hp : p ∈ (Ideal.span {a, b, c}).minimalPrimes) :
    Order.height (⟨p, hp.1.1⟩ : PrimeSpectrum R) ≤ 3 := by
  haveI : p.IsPrime := hp.1.1
  let f : R →+* Localization.AtPrime p := algebraMap R _
  haveI : IsNoetherianRing (Localization.AtPrime p) :=
    IsLocalization.isNoetherianRing p.primeCompl _ inferInstance
  have hspan : (Ideal.span {f a, f b, f c} :
      Ideal (Localization.AtPrime p)) =
      (Ideal.span {a, b, c} : Ideal R).map f := by
    rw [Ideal.map_span]
    simp only [Set.image_insert_eq, Set.image_singleton]
  have hminloc : LocalRing.maximalIdeal (Localization.AtPrime p) ∈
      (Ideal.span {f a, f b, f c}).minimalPrimes := by
    rw [hspan]
    exact minimal_ideal_atPrime _ p hp
  have hlocal := local_triple_minimal_height_le_three
    (f a) (f b) (f c) hminloc
  let P : PrimeSpectrum R := ⟨p, hp.1.1⟩
  change Order.height P ≤ 3
  apply Order.height_le
  intro s hs
  have hlen : s.length ≤ 3 := by
    by_contra hn
    let r₃ := s.eraseLast.last
    let r₂ := s.eraseLast.eraseLast.last
    let r₁ := s.eraseLast.eraseLast.eraseLast.last
    let r₀ := s.eraseLast.eraseLast.eraseLast.eraseLast.last
    have h₃p : r₃ < P := by
      simpa only [hs] using s.eraseLast_last_rel_last (by omega)
    have h₂₃ : r₂ < r₃ :=
      s.eraseLast.eraseLast_last_rel_last (by simp; omega)
    have h₁₂ : r₁ < r₂ :=
      s.eraseLast.eraseLast.eraseLast_last_rel_last (by simp; omega)
    have h₀₁ : r₀ < r₁ :=
      s.eraseLast.eraseLast.eraseLast.eraseLast_last_rel_last (by simp; omega)
    have hmap (r : PrimeSpectrum R) (hr : r ≤ P) :
        (r.asIdeal.map f).IsPrime := by
      have hd : Disjoint (p.primeCompl : Set R) (r.asIdeal : Set R) :=
        Set.disjoint_left.mpr (by
          intro z hz hzr
          exact hz (hr hzr))
      exact IsLocalization.isPrime_of_isPrime_disjoint
        p.primeCompl _ r.asIdeal r.isPrime hd
    have h₀p : r₀ ≤ P := (h₀₁.trans h₁₂ |>.trans h₂₃ |>.trans h₃p).le
    have h₁p : r₁ ≤ P := (h₁₂.trans h₂₃ |>.trans h₃p).le
    have h₂p : r₂ ≤ P := (h₂₃.trans h₃p).le
    have h₃p' : r₃ ≤ P := h₃p.le
    let Q₀ : PrimeSpectrum (Localization.AtPrime p) :=
      ⟨r₀.asIdeal.map f, hmap r₀ h₀p⟩
    let Q₁ : PrimeSpectrum (Localization.AtPrime p) :=
      ⟨r₁.asIdeal.map f, hmap r₁ h₁p⟩
    let Q₂ : PrimeSpectrum (Localization.AtPrime p) :=
      ⟨r₂.asIdeal.map f, hmap r₂ h₂p⟩
    let Q₃ : PrimeSpectrum (Localization.AtPrime p) :=
      ⟨r₃.asIdeal.map f, hmap r₃ h₃p'⟩
    let Q₄ : PrimeSpectrum (Localization.AtPrime p) :=
      ⟨LocalRing.maximalIdeal (Localization.AtPrime p),
        (LocalRing.maximalIdeal.isMaximal _).isPrime⟩
    have hQ₀₁ : Q₀ < Q₁ := by
      change r₀.asIdeal.map f < r₁.asIdeal.map f
      exact prime_map_strict_atPrime p _ _ r₀.isPrime r₁.isPrime
        (by simpa using h₀₁) h₁p
    have hQ₁₂ : Q₁ < Q₂ := by
      change r₁.asIdeal.map f < r₂.asIdeal.map f
      exact prime_map_strict_atPrime p _ _ r₁.isPrime r₂.isPrime
        (by simpa using h₁₂) h₂p
    have hQ₂₃ : Q₂ < Q₃ := by
      change r₂.asIdeal.map f < r₃.asIdeal.map f
      exact prime_map_strict_atPrime p _ _ r₂.isPrime r₃.isPrime
        (by simpa using h₂₃) h₃p'
    have hQ₃₄ : Q₃ < Q₄ := by
      change r₃.asIdeal.map f < LocalRing.maximalIdeal (Localization.AtPrime p)
      rw [← Localization.AtPrime.map_eq_maximalIdeal (I := p)]
      exact prime_map_strict_atPrime p _ _ r₃.isPrime hp.1.1
        (by simpa [P] using h₃p) le_rfl
    let chain : LTSeries (PrimeSpectrum (Localization.AtPrime p)) :=
      ((((RelSeries.singleton (· < ·) Q₀).snoc Q₁ hQ₀₁).snoc Q₂ hQ₁₂).snoc
        Q₃ hQ₂₃).snoc Q₄ hQ₃₄
    have hlong : (4 : ℕ∞) ≤ Order.height Q₄ := by
      simpa [chain] using (Order.length_le_height_last (p := chain))
    have hbad : (4 : ℕ∞) ≤ 3 := hlong.trans (by simpa [Q₄] using hlocal)
    norm_num at hbad
  exact_mod_cast hlen

/-- A chain ending at `p` remains strict after localization at `p`,
so the local maximal ideal has at least the height of `p`. -/
theorem height_le_atPrime_maximal_height
    {R : Type*} [CommRing R]
    (p : Ideal R) [p.IsPrime] :
    Order.height (⟨p, ‹p.IsPrime›⟩ : PrimeSpectrum R) ≤
      Order.height
        (⟨LocalRing.maximalIdeal (Localization.AtPrime p),
          (LocalRing.maximalIdeal.isMaximal _).isPrime⟩ :
          PrimeSpectrum (Localization.AtPrime p)) := by
  let f : R →+* Localization.AtPrime p := algebraMap R _
  let P : PrimeSpectrum R := ⟨p, ‹p.IsPrime›⟩
  let M : PrimeSpectrum (Localization.AtPrime p) :=
    ⟨LocalRing.maximalIdeal (Localization.AtPrime p),
      (LocalRing.maximalIdeal.isMaximal _).isPrime⟩
  change Order.height P ≤ Order.height M
  apply Order.height_le
  intro s hs
  have hle (i : Fin (s.length + 1)) : (s i).asIdeal ≤ p := by
    have hi : s i ≤ s.last := s.strictMono.monotone (Fin.le_last i)
    simpa only [hs, P] using hi
  have hprime (i : Fin (s.length + 1)) :
      ((s i).asIdeal.map f).IsPrime := by
    have hd : Disjoint (p.primeCompl : Set R) ((s i).asIdeal : Set R) :=
      Set.disjoint_left.mpr (by
        intro z hz hzi
        exact hz (hle i hzi))
    exact IsLocalization.isPrime_of_isPrime_disjoint
      p.primeCompl _ (s i).asIdeal (s i).isPrime hd
  let g (i : Fin (s.length + 1)) :
      PrimeSpectrum (Localization.AtPrime p) :=
    ⟨(s i).asIdeal.map f, hprime i⟩
  have hg : StrictMono g := by
    intro i j hij
    change (s i).asIdeal.map f < (s j).asIdeal.map f
    exact prime_map_strict_atPrime p _ _ (s i).isPrime (s j).isPrime
      (by simpa using s.strictMono hij) (hle j)
  let t : LTSeries (PrimeSpectrum (Localization.AtPrime p)) :=
    LTSeries.mk s.length g hg
  have hlast : t.last = M := by
    apply PrimeSpectrum.ext
    change (s.last).asIdeal.map f =
      LocalRing.maximalIdeal (Localization.AtPrime p)
    have heq : (s.last).asIdeal = p := by simpa [P] using congrArg PrimeSpectrum.asIdeal hs
    rw [heq]
    exact Localization.AtPrime.map_eq_maximalIdeal
  have ht := Order.length_le_height_last (p := t)
  simpa only [t, LTSeries.mk_length, hlast] using ht

#print axioms minimal_prime_over_triple_height_le_three
#print axioms height_le_atPrime_maximal_height

end Beal.General