import Beal.«Beal.General».ProjectiveChartStalks
import Beal.«Beal.General».ZChartGenericFibrePrincipalCriterion

/-!
A dimension-matched generator predicate for Noetherian local rings.
The pinned Mathlib does not provide a ring-level regular-local-ring
predicate. In particular, a dimension-at-most-one bound and a
principal maximal ideal do not suffice without ruling out
zero-dimensional non-field rings.
-/

namespace Beal.General

open Order

/-- The usual embedding-dimension criterion, expressed without
assuming the dimension is at most two: the maximal ideal has a
generating family indexed by the (finite) Krull dimension. -/
def IsRegularLocalRing (L : Type*) [CommRing L] [LocalRing L] : Prop :=
  IsNoetherianRing L ∧
    ∃ n : ℕ, ringKrullDim L = n ∧
      ∃ f : Fin n → L,
        LocalRing.maximalIdeal L = Ideal.span (Set.range f)

/-- A local domain of dimension at most one is a field or has
Krull dimension exactly one. The lower bound in the non-field case
comes from the strict prime chain from zero to the maximal ideal. -/
theorem localDomain_field_or_dim_one
    (L : Type*) [CommRing L] [LocalRing L] [IsDomain L]
    (hd : Ring.DimensionLEOne L) :
    IsField L ∨ ringKrullDim L = 1 := by
  by_cases hf : IsField L
  · exact Or.inl hf
  right
  letI : Ring.DimensionLEOne L := hd
  let M : Ideal L := LocalRing.maximalIdeal L
  have hne : M ≠ ⊥ := by
    intro he
    exact hf ((LocalRing.isField_iff_maximalIdeal_eq).mpr he)
  let P₀ : PrimeSpectrum L := ⟨⊥, Ideal.bot_prime⟩
  let P₁ : PrimeSpectrum L := ⟨M, (LocalRing.maximalIdeal.isMaximal L).isPrime⟩
  have hlt : P₀ < P₁ := by
    change (⊥ : Ideal L) < M
    exact bot_lt_iff_ne_bot.mpr hne
  have hlower : (1 : WithBot (WithTop ℕ)) ≤ ringKrullDim L := by
    let s : LTSeries (PrimeSpectrum L) :=
      (RelSeries.singleton (· < ·) P₀).snoc P₁ (by simpa using hlt)
    simpa [ringKrullDim, s] using Order.LTSeries.length_le_krullDim s
  have hupper : ringKrullDim L ≤ (1 : WithBot (WithTop ℕ)) := by
    change krullDim (PrimeSpectrum L) ≤ _
    rw [krullDim_eq_iSup_length]
    apply WithBot.coe_le_coe.mpr
    apply iSup_le
    intro s
    have hlen : s.length ≤ 1 := by
      by_contra hh
      let Q : PrimeSpectrum L := s ⟨1, by omega⟩
      have h01 : s ⟨0, by omega⟩ < Q := s.step ⟨0, by omega⟩
      have h12 : Q < s ⟨2, by omega⟩ := s.step ⟨1, by omega⟩
      have hqne : Q.asIdeal ≠ ⊥ := by
        intro he
        have hbad : (s ⟨0, by omega⟩).asIdeal < (⊥ : Ideal L) := by
          have hh := (PrimeSpectrum.asIdeal_lt_asIdeal _ _).mpr h01
          simpa only [he] using hh
        exact not_lt_bot hbad
      have hqmax : Q.asIdeal.IsMaximal :=
        Ring.DimensionLEOne.maximalOfPrime hqne Q.isPrime
      have heq : Q.asIdeal = (s ⟨2, by omega⟩).asIdeal :=
        hqmax.eq_of_le (s ⟨2, by omega⟩).isPrime.ne_top h12.le
      exact (ne_of_lt h12) (PrimeSpectrum.ext heq)
    exact WithTop.coe_le_coe.mpr hlen
  exact le_antisymm hupper hlower

theorem isRegularLocalRing_of_field
    (L : Type*) [CommRing L] [LocalRing L]
    (hn : IsNoetherianRing L) (hf : IsField L) :
    IsRegularLocalRing L := by
  have hd : ringKrullDim L = 0 :=
    @Order.krullDim_eq_zero_of_unique _ _ (@PrimeSpectrum.instUnique _ hf.toField)
  refine ⟨hn, 0, hd, fun i : Fin 0 => i.elim0, ?_⟩
  have hm : LocalRing.maximalIdeal L = ⊥ :=
    (LocalRing.isField_iff_maximalIdeal_eq).mp hf
  simpa using hm

theorem isRegularLocalRing_of_dim_one_principal
    (L : Type*) [CommRing L] [LocalRing L]
    (hn : IsNoetherianRing L) (hd : ringKrullDim L = 1)
    (hp : (LocalRing.maximalIdeal L).IsPrincipal) :
    IsRegularLocalRing L := by
  letI : (LocalRing.maximalIdeal L).IsPrincipal := hp
  let a := Submodule.IsPrincipal.generator (LocalRing.maximalIdeal L)
  refine ⟨hn, 1, hd, fun _ : Fin 1 => a, ?_⟩
  have hm : Ideal.span {a} = LocalRing.maximalIdeal L :=
    Submodule.IsPrincipal.span_singleton_generator (LocalRing.maximalIdeal L)
  have hr : Set.range (fun _ : Fin 1 => a) = {a} := by
    ext c
    simp
  rw [hr]
  exact hm.symm

/-- The low-dimensional domain case meets the same exact
embedding-dimension criterion as the already checked cases. -/
theorem isRegularLocalRing_of_domain_dimLEOne_principal
    (L : Type*) [CommRing L] [LocalRing L] [IsDomain L]
    (hn : IsNoetherianRing L) (hd : Ring.DimensionLEOne L)
    (hp : (LocalRing.maximalIdeal L).IsPrincipal) :
    IsRegularLocalRing L := by
  rcases localDomain_field_or_dim_one L hd with hf | hone
  · exact isRegularLocalRing_of_field L hn hf
  · exact isRegularLocalRing_of_dim_one_principal L hn hone hp

theorem isRegularLocalRing_of_dim_two_generators
    (L : Type*) [CommRing L] [LocalRing L]
    (hn : IsNoetherianRing L) (hd : ringKrullDim L = 2)
    (a b : L)
    (hm : LocalRing.maximalIdeal L = Ideal.span {a, b}) :
    IsRegularLocalRing L := by
  let f : Fin 2 → L := fun i => if i = 0 then a else b
  have hr : Set.range f = {a, b} := by
    ext c
    constructor
    · rintro ⟨i, rfl⟩
      by_cases hi : i = 0
      · simp [f, hi]
      · simp [f, hi]
    · intro hc
      rcases (by simpa using hc : c = a ∨ c = b) with rfl | rfl
      · exact ⟨0, by simp [f]⟩
      · exact ⟨1, by simp [f]⟩
  exact ⟨hn, 2, hd, f, by rw [hr]; exact hm⟩

/-- A ring equivalence between local rings preserves the
dimension-matched generator criterion. -/
theorem isRegularLocalRing_of_ringEquiv
    {A B : Type*} [CommRing A] [CommRing B]
    [LocalRing A] [LocalRing B] (e : A ≃+* B)
    (hB : IsRegularLocalRing B) : IsRegularLocalRing A := by
  letI : IsNoetherianRing B := hB.1
  haveI : IsNoetherianRing A :=
    isNoetherianRing_of_surjective B A e.symm.toRingHom e.symm.surjective
  obtain ⟨n, hd, f, hm⟩ := hB.2
  have hI' : (Ideal.comap e.toRingHom
      (LocalRing.maximalIdeal B)).IsMaximal :=
    Ideal.comap_isMaximal_of_surjective e.toRingHom e.surjective
  have hmaxmap : Ideal.map e.symm.toRingHom
      (LocalRing.maximalIdeal B) = LocalRing.maximalIdeal A := by
    have hI : (Ideal.map e.symm.toRingHom
        (LocalRing.maximalIdeal B)).IsMaximal :=
      (Ideal.comap_symm (LocalRing.maximalIdeal B) e.symm) ▸ hI'
    exact LocalRing.eq_maximalIdeal hI
  let g : Fin n → A := fun i => e.symm (f i)
  refine ⟨inferInstance, n, (ringKrullDim_eq_of_ringEquiv e).trans hd, g, ?_⟩
  calc
    LocalRing.maximalIdeal A =
        Ideal.map e.symm.toRingHom (LocalRing.maximalIdeal B) := hmaxmap.symm
    _ = Ideal.map e.symm.toRingHom (Ideal.span (Set.range f)) := by rw [hm]
    _ = Ideal.span (Set.range g) := by
      rw [Ideal.map_span]
      congr 1
      ext a
      simp [g]

/-- The total-space localization of the actual `Z = 1` chart
is a domain at every prime. Away from `2` this is the checked
fraction-curve comparison. Over `2`, flatness and primality of
the full special-fibre cubic give a regular principal prime;
Krull intersection then excludes zero divisors. -/
theorem splitNode_ZChart_allPrime_isDomain
    (W : WeierstrassCurve ℤ_[2])
    (hnode : ReducedNodalPoint (W.map PadicInt.toZMod)
      (PadicInt.toZMod W.a₃)
      (PadicInt.toZMod (W.a₃ ^ 2 + W.a₄)))
    (hsplit : 3 * PadicInt.toZMod W.a₃ +
      (W.map PadicInt.toZMod).a₂ = 0)
    (P : Ideal (projectiveWeierstrassZChartRing W)) [P.IsPrime] :
    IsDomain (Localization.AtPrime P) := by
  let R := projectiveWeierstrassZChartRing W
  let L := Localization.AtPrime P
  let t : R := algebraMap ℤ_[2] R 2
  by_cases h2 : t ∈ P
  · let K : Ideal R := Ideal.span {t}
    have hK : K.IsPrime := by
      change (Ideal.span {algebraMap ℤ_[2] R 2} : Ideal R).IsPrime
      exact splitNode_ZChart_specialFibrePrime W hnode hsplit
    have hKP : K ≤ P := (Ideal.span_singleton_le_iff_mem P).mpr h2
    have hd : Disjoint (↑P.primeCompl : Set R) (↑K : Set R) := by
      apply Set.disjoint_left.mpr
      intro r hr hk
      exact (show r ∉ P from hr) (hKP hk)
    have hp : (Ideal.span {(algebraMap R L) t} : Ideal L).IsPrime := by
      have hi : (Ideal.map (algebraMap R L) K).IsPrime :=
        IsLocalization.isPrime_of_isPrime_disjoint P.primeCompl L K hK hd
      simpa only [K, Ideal.map_span, Set.image_singleton] using hi
    have hn : IsNoetherianRing L :=
      projectiveWeierstrassZChart_atPrime_isNoetherian W P
    letI : IsNoetherianRing L := hn
    have ht : ∀ a : L, (algebraMap R L) t * a = 0 → a = 0 :=
      splitNode_ZChart_surfaceTwo_regular_atPrime W hnode hsplit P
    exact isDomain_of_regular_principal_prime_local
      L ((algebraMap R L) t) ht hp
  · exact projectiveWeierstrassZChart_genericPrime_isDomain W P h2

/-- Each prime-local ring on the actual `Z = 1` chart is regular
in the embedding-dimension sense under the split valuation-one
hypotheses. The low-dimensional branch uses domainhood, rather
than treating a principal maximal ideal as sufficient on its own. -/
theorem valOne_splitNode_ZChart_allPrime_regular
    (W : WeierstrassCurve ℤ_[2])
    (hnode : ReducedNodalPoint (W.map PadicInt.toZMod)
      (PadicInt.toZMod W.a₃)
      (PadicInt.toZMod (W.a₃ ^ 2 + W.a₄)))
    (hsplit : 3 * PadicInt.toZMod W.a₃ +
      (W.map PadicInt.toZMod).a₂ = 0)
    (hΔ : W.Δ ≠ 0)
    (hval : Padic.valuation (W.Δ : ℚ_[2]) = 1)
    (P : Ideal (projectiveWeierstrassZChartRing W)) [P.IsPrime] :
    IsRegularLocalRing (Localization.AtPrime P) := by
  let L := Localization.AtPrime P
  letI : IsDomain L := splitNode_ZChart_allPrime_isDomain W hnode hsplit P
  obtain ⟨hn, hcases⟩ :=
    valOne_splitNode_ZChart_allPrime_parameters W hnode hsplit hΔ hval P
  rcases hcases with ⟨hd, hp⟩ | ⟨hd, hp⟩ | ⟨hd, a, b, hm⟩
  · exact isRegularLocalRing_of_domain_dimLEOne_principal L hn hd hp
  · exact isRegularLocalRing_of_dim_one_principal L hn hd hp
  · exact isRegularLocalRing_of_dim_two_generators L hn hd a b hm

/-- The actual `Y = 1` chart is regular at every prime: on the
overlap by transport from `Z = 1`, and at the two infinity primes
by their checked exact-dimension local certificates. -/
theorem valOne_splitNode_YChart_allPrime_regular
    (W : WeierstrassCurve ℤ_[2])
    (hnode : ReducedNodalPoint (W.map PadicInt.toZMod)
      (PadicInt.toZMod W.a₃)
      (PadicInt.toZMod (W.a₃ ^ 2 + W.a₄)))
    (hsplit : 3 * PadicInt.toZMod W.a₃ +
      (W.map PadicInt.toZMod).a₂ = 0)
    (hΔ : W.Δ ≠ 0)
    (hval : Padic.valuation (W.Δ : ℚ_[2]) = 1)
    (P : Ideal (projectiveWeierstrassYChartRing W)) [P.IsPrime] :
    IsRegularLocalRing (Localization.AtPrime P) := by
  by_cases hV : (Ideal.Quotient.mk
      (Ideal.span {weierstrassInfinityChartEquation W}))
        (MvPolynomial.X (1 : Fin 2)) ∈ P
  · rcases weierstrassYChart_prime_containing_V_eq_infinityGeneric_or_closed
      W P hV with heq | heq
    · subst P
      have hc := weierstrassYInfinityGeneric_regular_parameters W
      apply isRegularLocalRing_of_dim_one_principal
        (Localization.AtPrime (weierstrassYInfinityGenericPrime W))
        hc.1 hc.2.1
      rw [hc.2.2]
      exact ⟨_, rfl⟩
    · subst P
      have hc := weierstrassYInfinity_regular_parameters W
      exact isRegularLocalRing_of_dim_two_generators
        (Localization.AtPrime (weierstrassYInfinityClosedPrime W))
        hc.1 hc.2.1 _ _ hc.2.2.1
  · obtain ⟨Q, hQ, _, ⟨e⟩⟩ :=
      projectiveWeierstrass_overlap_prime_local_equiv W P hV
    letI : Q.IsPrime := hQ
    exact isRegularLocalRing_of_ringEquiv e
      (valOne_splitNode_ZChart_allPrime_regular W hnode hsplit hΔ hval Q)

/-- The checked projective-stalk data already gives the formal
regular-local predicate in both exact-dimension cases. The remaining
alternative records exactly the dimension-at-most-one case; promoting
it requires a separate reducedness/domain or field argument. -/
theorem valOne_splitNode_projective_regular_or_generic_gap
    (W : WeierstrassCurve ℤ_[2])
    (hnode : ReducedNodalPoint (W.map PadicInt.toZMod)
      (PadicInt.toZMod W.a₃)
      (PadicInt.toZMod (W.a₃ ^ 2 + W.a₄)))
    (hsplit : 3 * PadicInt.toZMod W.a₃ +
      (W.map PadicInt.toZMod).a₂ = 0)
    (hΔ : W.Δ ≠ 0)
    (hval : Padic.valuation (W.Δ : ℚ_[2]) = 1)
    (x : projectiveWeierstrassScheme W) :
    let L := (projectiveWeierstrassScheme W).presheaf.stalk x
    IsRegularLocalRing L ∨
      (IsNoetherianRing L ∧ Ring.DimensionLEOne L ∧
        (LocalRing.maximalIdeal L).IsPrincipal) := by
  let L := (projectiveWeierstrassScheme W).presheaf.stalk x
  obtain ⟨hn, hcases⟩ :=
    valOne_splitNode_projective_allStalk_parameters
      W hnode hsplit hΔ hval x
  rcases hcases with ⟨hd, hp⟩ | ⟨hd, hp⟩ | ⟨hd, a, b, hm⟩
  · exact Or.inr ⟨hn, hd, hp⟩
  · exact Or.inl (isRegularLocalRing_of_dim_one_principal L hn hd hp)
  · exact Or.inl (isRegularLocalRing_of_dim_two_generators L hn hd a b hm)

/-- A precise remaining premise for regularity at every projective
stalk: each low-dimensional alternative must either be a field
or have dimension exactly one. Neither conclusion follows from a
principal maximal ideal and a dimension upper bound alone. -/
theorem valOne_splitNode_projective_allStalk_regular_of_lowDim
    (W : WeierstrassCurve ℤ_[2])
    (hnode : ReducedNodalPoint (W.map PadicInt.toZMod)
      (PadicInt.toZMod W.a₃)
      (PadicInt.toZMod (W.a₃ ^ 2 + W.a₄)))
    (hsplit : 3 * PadicInt.toZMod W.a₃ +
      (W.map PadicInt.toZMod).a₂ = 0)
    (hΔ : W.Δ ≠ 0)
    (hval : Padic.valuation (W.Δ : ℚ_[2]) = 1)
    (hlow : ∀ x : projectiveWeierstrassScheme W,
      let L := (projectiveWeierstrassScheme W).presheaf.stalk x
      Ring.DimensionLEOne L →
        (LocalRing.maximalIdeal L).IsPrincipal →
          IsField L ∨ ringKrullDim L = 1)
    (x : projectiveWeierstrassScheme W) :
    IsRegularLocalRing
      ((projectiveWeierstrassScheme W).presheaf.stalk x) := by
  let L := (projectiveWeierstrassScheme W).presheaf.stalk x
  rcases valOne_splitNode_projective_regular_or_generic_gap
      W hnode hsplit hΔ hval x with hreg | ⟨hn, hd, hp⟩
  · exact hreg
  · rcases hlow x hd hp with hf | hone
    · exact isRegularLocalRing_of_field L hn hf
    · exact isRegularLocalRing_of_dim_one_principal L hn hone hp

/-- Every stalk of the actual quotient `Proj` satisfies the formal
dimension-matched regular-local-ring predicate in the split
valuation-one case. This is a regularity theorem for the total
space; it does not assert properness or minimality. -/
theorem valOne_splitNode_projective_allStalk_regular
    (W : WeierstrassCurve ℤ_[2])
    (hnode : ReducedNodalPoint (W.map PadicInt.toZMod)
      (PadicInt.toZMod W.a₃)
      (PadicInt.toZMod (W.a₃ ^ 2 + W.a₄)))
    (hsplit : 3 * PadicInt.toZMod W.a₃ +
      (W.map PadicInt.toZMod).a₂ = 0)
    (hΔ : W.Δ ≠ 0)
    (hval : Padic.valuation (W.Δ : ℚ_[2]) = 1)
    (x : projectiveWeierstrassScheme W) :
    IsRegularLocalRing
      ((projectiveWeierstrassScheme W).presheaf.stalk x) := by
  letI : GradedAlgebra (projectiveWeierstrassQuotientComponent W) :=
    projectiveWeierstrassQuotientGrading W
  let ℬ := projectiveWeierstrassQuotientComponent W
  let q : MvPolynomial (Fin 3) ℤ_[2] →+* projectiveWeierstrassCoordinateRing W :=
    Ideal.Quotient.mk (Ideal.span {projectiveWeierstrassCubic W})
  let UZ : (projectiveWeierstrassScheme W).Opens :=
    ProjectiveSpectrum.basicOpen ℬ (q (MvPolynomial.X 2))
  let UY : (projectiveWeierstrassScheme W).Opens :=
    ProjectiveSpectrum.basicOpen ℬ (q (MvPolynomial.X 1))
  have hcover : UZ ⊔ UY = ⊤ :=
    projectiveWeierstrassQuotientBasicOpen_Z_sup_Y W
  have hm : x ∈ UZ ∨ x ∈ UY := by
    have h : x ∈ UZ ⊔ UY := by
      rw [hcover]
      trivial
    exact h
  rcases hm with hz | hy
  · obtain ⟨P, hP, ⟨e⟩⟩ :=
      projectiveWeierstrass_Z_open_stalk_equiv W ⟨x, hz⟩
    letI : P.IsPrime := hP
    exact isRegularLocalRing_of_ringEquiv e
      (valOne_splitNode_ZChart_allPrime_regular W hnode hsplit hΔ hval P)
  · obtain ⟨P, hP, ⟨e⟩⟩ :=
      projectiveWeierstrass_Y_open_stalk_equiv W ⟨x, hy⟩
    letI : P.IsPrime := hP
    exact isRegularLocalRing_of_ringEquiv e
      (valOne_splitNode_YChart_allPrime_regular W hnode hsplit hΔ hval P)

end Beal.General