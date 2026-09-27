import Beal.«Beal.General».InfinityPrimeLocus
import Beal.«Beal.General».TateEisenstein

/-!
Prime chains at the infinity section of the integral `Y = 1`
Weierstrass chart. These arguments use the integral quotient,
not the reduced special-fibre cubic.
-/

namespace Beal.General

private noncomputable def infinityOriginEval :
    MvPolynomial (Fin 2) ℤ_[2] →+* ℤ_[2] :=
  MvPolynomial.eval₂Hom (RingHom.id ℤ_[2]) (fun _ => 0)

private noncomputable def infinityOriginIdeal :
    Ideal (MvPolynomial (Fin 2) ℤ_[2]) :=
  RingHom.ker infinityOriginEval

private instance : infinityOriginIdeal.IsPrime :=
  RingHom.ker_isPrime infinityOriginEval

/-- The generic infinity section of the polynomial plane is
exactly the coordinate ideal `(U,V)`. -/
private theorem infinityOriginIdeal_eq_span :
    infinityOriginIdeal =
      (Ideal.span {MvPolynomial.X (0 : Fin 2),
        MvPolynomial.X (1 : Fin 2)} :
        Ideal (MvPolynomial (Fin 2) ℤ_[2])) := by
  let S := MvPolynomial (Fin 2) ℤ_[2]
  let J : Ideal S := Ideal.span {
    MvPolynomial.X (0 : Fin 2), MvPolynomial.X (1 : Fin 2)}
  let e := infinityOriginEval
  have hX (i : Fin 2) : MvPolynomial.X i ∈ J := by
    fin_cases i <;> exact Ideal.subset_span (by simp [J])
  have hdecomp (p : S) : p - MvPolynomial.C (e p) ∈ J := by
    induction p using MvPolynomial.induction_on with
    | h_C a =>
        simp [e, infinityOriginEval, MvPolynomial.constantCoeff_C]
    | h_add p q hp hq =>
        have heq : p + q - MvPolynomial.C (e (p + q)) =
            (p - MvPolynomial.C (e p)) +
              (q - MvPolynomial.C (e q)) := by
          simp only [map_add]
          ring
        rw [heq]
        exact J.add_mem hp hq
    | h_X p i _ =>
        have hz : e (p * MvPolynomial.X i) = 0 := by
          simp [e, infinityOriginEval]
        simpa only [hz, map_zero, sub_zero] using
          (J.mul_mem_left p (hX i))
  apply le_antisymm
  · change RingHom.ker e ≤ J
    intro p hp
    have hz : e p = 0 := RingHom.mem_ker.mp hp
    simpa only [hz, map_zero, sub_zero] using hdecomp p
  · change J ≤ RingHom.ker e
    apply Ideal.span_le.mpr
    intro p hp
    rcases (show p = MvPolynomial.X (0 : Fin 2) ∨
        p = MvPolynomial.X (1 : Fin 2) by simpa [J] using hp) with
      rfl | rfl
    · apply RingHom.mem_ker.mpr
      exact MvPolynomial.eval₂Hom_X' (RingHom.id ℤ_[2])
        (fun _ : Fin 2 => (0 : ℤ_[2])) 0
    · apply RingHom.mem_ker.mpr
      exact MvPolynomial.eval₂Hom_X' (RingHom.id ℤ_[2])
        (fun _ : Fin 2 => (0 : ℤ_[2])) 1

/-- The generic infinity section in the ambient polynomial
ring has height at least two, witnessed by the chain
`(0) < (U) < (U,V)`. -/
private theorem infinityOriginIdeal_height_ge_two :
    (2 : ℕ∞) ≤
      Order.height
        (⟨infinityOriginIdeal, inferInstance⟩ :
          PrimeSpectrum (MvPolynomial (Fin 2) ℤ_[2])) := by
  let S := MvPolynomial (Fin 2) ℤ_[2]
  let K : Ideal S := RingHom.ker surfaceAtXZero
  haveI : K.IsPrime := RingHom.ker_isPrime surfaceAtXZero
  let φ : Polynomial ℤ_[2] →+* ℤ_[2] := Polynomial.evalRingHom 0
  have hcomp : infinityOriginEval = φ.comp surfaceAtXZero := by
    apply MvPolynomial.ringHom_ext
    · intro a
      simp [infinityOriginEval, φ, surfaceAtXZero]
    · intro i
      fin_cases i <;> simp [infinityOriginEval, φ, surfaceAtXZero]
  have hKJ : K < infinityOriginIdeal := by
    apply lt_of_le_of_ne
    · intro p hp
      change surfaceAtXZero p = 0 at hp
      change infinityOriginEval p = 0
      rw [hcomp, RingHom.comp_apply, hp, map_zero]
    · intro heq
      have hV : MvPolynomial.X (1 : Fin 2) ∈ K := by
        rw [heq]
        change infinityOriginEval (MvPolynomial.X 1) = 0
        simp [infinityOriginEval]
      have hz : (Polynomial.X : Polynomial ℤ_[2]) = 0 := by
        change surfaceAtXZero (MvPolynomial.X (1 : Fin 2)) = 0 at hV
        simpa [surfaceAtXZero] using hV
      exact Polynomial.X_ne_zero hz
  have hbotK : (⊥ : Ideal S) < K := by
    apply bot_lt_iff_ne_bot.mpr
    intro heq
    have hU : MvPolynomial.X (0 : Fin 2) ∈ (⊥ : Ideal S) := by
      rw [← heq]
      change surfaceAtXZero (MvPolynomial.X 0) = 0
      simp [surfaceAtXZero]
    exact (MvPolynomial.X_ne_zero (R := ℤ_[2]) (0 : Fin 2))
      (Ideal.mem_bot.mp hU)
  let Q₀ : PrimeSpectrum S := ⟨⊥, Ideal.bot_prime⟩
  let Q₁ : PrimeSpectrum S := ⟨K, ‹K.IsPrime›⟩
  let Q₂ : PrimeSpectrum S := ⟨infinityOriginIdeal, inferInstance⟩
  let s : LTSeries (PrimeSpectrum S) :=
    ((RelSeries.singleton (· < ·) Q₀).snoc Q₁ hbotK).snoc Q₂ hKJ
  simpa [s, Q₂] using (Order.length_le_height_last (p := s))

/-- Specializing the infinity section from the generic point
of the base to the closed point is a strict inclusion. -/
private theorem infinityOriginIdeal_lt_centre :
    infinityOriginIdeal < localSurfaceCentre := by
  have hcomp : localSurfaceResidue =
      (PadicInt.toZMod : ℤ_[2] →+* ZMod 2).comp infinityOriginEval := by
    apply MvPolynomial.ringHom_ext
    · intro a
      simp [localSurfaceResidue, infinityOriginEval]
    · intro i
      fin_cases i <;> simp [localSurfaceResidue, infinityOriginEval]
  apply lt_of_le_of_ne
  · intro p hp
    rw [localSurfaceCentre_eq_ker_residue, RingHom.mem_ker]
    change infinityOriginEval p = 0 at hp
    rw [hcomp, RingHom.comp_apply, hp, map_zero]
  · intro heq
    have htwo : MvPolynomial.C (2 : ℤ_[2]) ∈ infinityOriginIdeal := by
      rw [heq]
      exact Ideal.subset_span (by simp [localSurfaceCentre])
    have hz : (2 : ℤ_[2]) = 0 := by
      change infinityOriginEval (MvPolynomial.C 2) = 0 at htwo
      simpa [infinityOriginEval] using htwo
    norm_num at hz

/-- The integral infinity-chart equation vanishes on the
generic infinity section. -/
private theorem infinityEquation_mem_origin
    (W : WeierstrassCurve ℤ_[2]) :
    weierstrassInfinityChartEquation W ∈ infinityOriginIdeal := by
  change infinityOriginEval (weierstrassInfinityChartEquation W) = 0
  simp [infinityOriginEval, weierstrassInfinityChartEquation]

/-- Principal ideal theorem separates a minimal prime of
the cubic from the height-two generic infinity section.
The chain then specializes to the closed infinity point. -/
private theorem infinity_minimal_prime_chain
    (W : WeierstrassCurve ℤ_[2]) :
    ∃ r : Ideal (MvPolynomial (Fin 2) ℤ_[2]),
      r ∈ (Ideal.span {weierstrassInfinityChartEquation W}).minimalPrimes ∧
        r < infinityOriginIdeal ∧
        infinityOriginIdeal < localSurfaceCentre := by
  let S := MvPolynomial (Fin 2) ℤ_[2]
  let F := weierstrassInfinityChartEquation W
  let J : Ideal S := infinityOriginIdeal
  haveI : J.IsPrime := inferInstance
  obtain ⟨r, hr, hrJ⟩ := Ideal.exists_minimalPrimes_le
    ((Ideal.span_singleton_le_iff_mem J).mpr (infinityEquation_mem_origin W))
  have hrheight : Order.height
      (⟨r, hr.1.1⟩ : PrimeSpectrum S) ≤ 1 :=
    minimal_prime_over_principal_height_le_one_general F r hr
  have hrlt : r < J := by
    apply lt_of_le_of_ne hrJ
    intro heq
    have hbad : (2 : ℕ∞) ≤ 1 := by
      calc
        (2 : ℕ∞) ≤ Order.height (⟨J, ‹J.IsPrime›⟩ :
            PrimeSpectrum S) := infinityOriginIdeal_height_ge_two
        _ = Order.height (⟨r, hr.1.1⟩ : PrimeSpectrum S) := by
          congr 1
          exact PrimeSpectrum.ext heq.symm
        _ ≤ 1 := hrheight
    norm_num at hbad
  exact ⟨r, hr, hrlt, infinityOriginIdeal_lt_centre⟩

/-- The closed infinity prime of the actual integral `Y = 1`
chart, obtained by imposing `(2,U,V)` before quotienting. -/
noncomputable def weierstrassYInfinityClosedPrime
    (W : WeierstrassCurve ℤ_[2]) :
    Ideal (projectiveWeierstrassYChartRing W) :=
  localSurfaceCentre.map
    (Ideal.Quotient.mk (Ideal.span {weierstrassInfinityChartEquation W}))

theorem weierstrassYInfinityClosedPrime_isMaximal
    (W : WeierstrassCurve ℤ_[2]) :
    (weierstrassYInfinityClosedPrime W).IsMaximal := by
  let S := MvPolynomial (Fin 2) ℤ_[2]
  let I : Ideal S := Ideal.span {weierstrassInfinityChartEquation W}
  let q : S →+* projectiveWeierstrassYChartRing W :=
    Ideal.Quotient.mk I
  have hI : I ≤ localSurfaceCentre :=
    (Ideal.span_singleton_le_iff_mem localSurfaceCentre).mpr
      (infinityOriginIdeal_lt_centre.le (infinityEquation_mem_origin W))
  have hker : Ideal.comap q ⊥ = I := by
    ext p
    simp only [Ideal.mem_comap, Ideal.mem_bot, Ideal.Quotient.eq_zero_iff_mem]
    exact Ideal.Quotient.eq_zero_iff_mem
  have hcomap : (Ideal.map q localSurfaceCentre).comap q =
      localSurfaceCentre := by
    rw [Ideal.comap_map_of_surjective q Ideal.Quotient.mk_surjective,
      hker, sup_eq_left.mpr hI]
  have hproper : Ideal.map q localSurfaceCentre ≠ ⊤ := by
    intro htop
    have h' := congrArg (Ideal.comap q) htop
    rw [hcomap, Ideal.comap_top] at h'
    exact localSurfaceCentre_isMaximal.ne_top h'
  have hcases := Ideal.map_eq_top_or_isMaximal_of_surjective
    q Ideal.Quotient.mk_surjective localSurfaceCentre_isMaximal
  exact hcases.resolve_left hproper

/-- The closed infinity local ring has dimension at least two.
The ambient chain from a minimal prime of the cubic through
the generic infinity section to `(2,U,V)` descends strictly
through the quotient and stays strict after localization. -/
theorem weierstrassYInfinity_maximal_height_ge_two
    (W : WeierstrassCurve ℤ_[2]) :
    let P := weierstrassYInfinityClosedPrime W
    letI : P.IsPrime := (weierstrassYInfinityClosedPrime_isMaximal W).isPrime
    (2 : ℕ∞) ≤
      Order.height
        (⟨LocalRing.maximalIdeal (Localization.AtPrime P),
          (LocalRing.maximalIdeal.isMaximal _).isPrime⟩ :
          PrimeSpectrum (Localization.AtPrime P)) := by
  let S := MvPolynomial (Fin 2) ℤ_[2]
  let F := weierstrassInfinityChartEquation W
  let I : Ideal S := Ideal.span {F}
  let J : Ideal S := infinityOriginIdeal
  let M : Ideal S := localSurfaceCentre
  let R := projectiveWeierstrassYChartRing W
  let q : S →+* R := Ideal.Quotient.mk I
  let P : Ideal R := weierstrassYInfinityClosedPrime W
  letI : P.IsPrime := (weierstrassYInfinityClosedPrime_isMaximal W).isPrime
  obtain ⟨r, hr, hrJ, hJM⟩ := infinity_minimal_prime_chain W
  haveI : r.IsPrime := hr.1.1
  haveI : J.IsPrime := inferInstance
  have hIJ : I ≤ J := hr.1.2.trans hrJ.le
  have hIM : I ≤ M := hIJ.trans hJM.le
  have hmapPrime (a : Ideal S) (ha : a.IsPrime) (hIa : I ≤ a) :
      (a.map q).IsPrime := by
    haveI : a.IsPrime := ha
    apply Ideal.map_isPrime_of_surjective Ideal.Quotient.mk_surjective
    simpa [q, I, Ideal.mk_ker] using hIa
  have hker : RingHom.ker q = I := by
    ext z
    simp only [RingHom.mem_ker, q, Ideal.Quotient.eq_zero_iff_mem]
    exact Ideal.Quotient.eq_zero_iff_mem
  have hmapStrict (a b : Ideal S) (hIa : I ≤ a) (hIb : I ≤ b)
      (hab : a < b) : a.map q < b.map q := by
    apply lt_of_le_of_ne (Ideal.map_mono hab.le)
    intro he
    have hc := congrArg (Ideal.comap q) he
    simp only [Ideal.comap_map_of_surjective q Ideal.Quotient.mk_surjective,
      ← RingHom.ker_eq_comap_bot, hker,
      sup_eq_left.mpr hIa, sup_eq_left.mpr hIb] at hc
    exact (ne_of_lt hab) hc
  let Q₀ : PrimeSpectrum R := ⟨r.map q, hmapPrime r hr.1.1 hr.1.2⟩
  let Q₁ : PrimeSpectrum R := ⟨J.map q, hmapPrime J ‹J.IsPrime› hIJ⟩
  let Q₂ : PrimeSpectrum R := ⟨P, ‹P.IsPrime›⟩
  have h01 : Q₀ < Q₁ := hmapStrict r J hr.1.2 hIJ hrJ
  have h12 : Q₁ < Q₂ := hmapStrict J M hIJ hIM hJM
  let s : LTSeries (PrimeSpectrum R) :=
    ((RelSeries.singleton (· < ·) Q₀).snoc Q₁ h01).snoc Q₂ h12
  have hheight : (2 : ℕ∞) ≤ Order.height Q₂ := by
    simpa [s] using (Order.length_le_height_last (p := s))
  exact hheight.trans (by simpa [Q₂] using height_le_atPrime_maximal_height P)

/-- At the closed infinity point, the equation eliminates `V`
after localization. The maximal ideal is generated by `2` and
`U`, not by three independent parameters. -/
theorem weierstrassYInfinity_maximalIdeal_eq_span_two
    (W : WeierstrassCurve ℤ_[2]) :
    let P := weierstrassYInfinityClosedPrime W
    letI : P.IsPrime := (weierstrassYInfinityClosedPrime_isMaximal W).isPrime
    let R := projectiveWeierstrassYChartRing W
    let L := Localization.AtPrime P
    let q : MvPolynomial (Fin 2) ℤ_[2] →+* R :=
      Ideal.Quotient.mk (Ideal.span {weierstrassInfinityChartEquation W})
    let f : R →+* L := algebraMap R L
    LocalRing.maximalIdeal L =
      Ideal.span {f (q (MvPolynomial.C (2 : ℤ_[2]))),
        f (q (MvPolynomial.X (0 : Fin 2)))} := by
  let S := MvPolynomial (Fin 2) ℤ_[2]
  let R := projectiveWeierstrassYChartRing W
  let P : Ideal R := weierstrassYInfinityClosedPrime W
  letI : P.IsPrime := (weierstrassYInfinityClosedPrime_isMaximal W).isPrime
  let L := Localization.AtPrime P
  let q : S →+* R :=
    Ideal.Quotient.mk (Ideal.span {weierstrassInfinityChartEquation W})
  let f : R →+* L := algebraMap R L
  let a : L := f (q (MvPolynomial.C (2 : ℤ_[2])))
  let b : L := f (q (MvPolynomial.X (0 : Fin 2)))
  let c : L := f (q (MvPolynomial.X (1 : Fin 2)))
  have hP : P = Ideal.span {
      q (MvPolynomial.C (2 : ℤ_[2])),
      q (MvPolynomial.X (0 : Fin 2)),
      q (MvPolynomial.X (1 : Fin 2))} := by
    change Ideal.map q localSurfaceCentre = _
    rw [localSurfaceCentre, Ideal.map_span]
    simp only [Set.image_insert_eq, Set.image_singleton]
  have hV : q (MvPolynomial.X (1 : Fin 2)) ∈ P := by
    rw [hP]
    exact Ideal.subset_span (by simp)
  have hc : c ∈ Ideal.span {b} :=
    weierstrassYChart_V_mem_span_U_at_infinity_prime W P hV
  have hc' : c ∈ Ideal.span {a, b} := by
    apply (Ideal.span_mono (show ({b} : Set L) ⊆ {a, b} by simp)) hc
  change LocalRing.maximalIdeal L = Ideal.span {a, b}
  rw [← Localization.AtPrime.map_eq_maximalIdeal (I := P)]
  change Ideal.map f P = Ideal.span {a, b}
  calc
    Ideal.map f P =
        Ideal.map f (Ideal.span {
          q (MvPolynomial.C (2 : ℤ_[2])),
          q (MvPolynomial.X (0 : Fin 2)),
          q (MvPolynomial.X (1 : Fin 2))}) :=
      congrArg (Ideal.map f) hP
    _ = Ideal.span {a, b, c} := by
      rw [Ideal.map_span]
      simp only [Set.image_insert_eq, Set.image_singleton]
    _ = Ideal.span {a, b} := by
      apply le_antisymm
      · apply Ideal.span_le.mpr
        intro z hz
        rcases (show z = a ∨ z = b ∨ z = c by simpa only
          [Set.mem_insert_iff, Set.mem_singleton_iff] using hz) with
          rfl | rfl | rfl
        · exact Ideal.subset_span (by simp)
        · exact Ideal.subset_span (by simp)
        · exact hc'
      · apply Ideal.span_mono
        intro z hz
        rcases (show z = a ∨ z = b by simpa only
          [Set.mem_insert_iff, Set.mem_singleton_iff] using hz) with rfl | rfl
        · simp
        · simp

/-- The two generators give the upper bound on the height of
the closed infinity maximal ideal. -/
theorem weierstrassYInfinity_maximal_height_le_two
    (W : WeierstrassCurve ℤ_[2]) :
    let P := weierstrassYInfinityClosedPrime W
    letI : P.IsPrime := (weierstrassYInfinityClosedPrime_isMaximal W).isPrime
    Order.height
      (⟨LocalRing.maximalIdeal (Localization.AtPrime P),
        (LocalRing.maximalIdeal.isMaximal _).isPrime⟩ :
        PrimeSpectrum (Localization.AtPrime P)) ≤ 2 := by
  let S := MvPolynomial (Fin 2) ℤ_[2]
  let R := projectiveWeierstrassYChartRing W
  let P : Ideal R := weierstrassYInfinityClosedPrime W
  letI : P.IsPrime := (weierstrassYInfinityClosedPrime_isMaximal W).isPrime
  let L := Localization.AtPrime P
  let q : S →+* R :=
    Ideal.Quotient.mk (Ideal.span {weierstrassInfinityChartEquation W})
  let f : R →+* L := algebraMap R L
  let a : L := f (q (MvPolynomial.C (2 : ℤ_[2])))
  let b : L := f (q (MvPolynomial.X (0 : Fin 2)))
  haveI : IsNoetherianRing R :=
    isNoetherianRing_of_surjective S R q Ideal.Quotient.mk_surjective
  haveI : IsNoetherianRing L :=
    IsLocalization.isNoetherianRing P.primeCompl _ inferInstance
  have hmax : LocalRing.maximalIdeal L = Ideal.span {a, b} :=
    weierstrassYInfinity_maximalIdeal_eq_span_two W
  have hmin : LocalRing.maximalIdeal L ∈
      (Ideal.span {a, b}).minimalPrimes := by
    rw [← hmax]
    exact ⟨⟨(LocalRing.maximalIdeal.isMaximal L).isPrime, le_rfl⟩,
      fun J hJ _ => hJ.2⟩
  exact local_pair_minimal_height_le_two a b hmin

/-- The closed infinity local ring has Krull dimension exactly two. -/
theorem weierstrassYInfinity_ringKrullDim_eq_two
    (W : WeierstrassCurve ℤ_[2]) :
    let P := weierstrassYInfinityClosedPrime W
    letI : P.IsPrime := (weierstrassYInfinityClosedPrime_isMaximal W).isPrime
    ringKrullDim (Localization.AtPrime P) = 2 := by
  let P := weierstrassYInfinityClosedPrime W
  letI : P.IsPrime := (weierstrassYInfinityClosedPrime_isMaximal W).isPrime
  let L := Localization.AtPrime P
  let M : PrimeSpectrum L :=
    ⟨LocalRing.maximalIdeal L, (LocalRing.maximalIdeal.isMaximal L).isPrime⟩
  have hEq : Order.height M = 2 :=
    le_antisymm
      (weierstrassYInfinity_maximal_height_le_two W)
      (weierstrassYInfinity_maximal_height_ge_two W)
  have hDim : ringKrullDim L = (↑(Order.height M) : WithBot ℕ∞) := by
    change Order.krullDim (PrimeSpectrum L) =
      (↑(Order.height M) : WithBot ℕ∞)
    rw [Order.krullDim_eq_iSup_height]
    apply le_antisymm
    · apply iSup_le
      intro Q
      exact WithBot.coe_le_coe.mpr
        (Order.height_mono (show Q ≤ M from
          LocalRing.le_maximalIdeal Q.isPrime.ne_top))
    · exact le_iSup_of_le M le_rfl
  simpa only [hEq] using hDim

/-- The closed infinity local ring satisfies the dimension-two
regular-parameter criterion. This does not assert regularity
at every point of the `Y = 1` chart. -/
theorem weierstrassYInfinity_regular_parameters
    (W : WeierstrassCurve ℤ_[2]) :
    let P := weierstrassYInfinityClosedPrime W
    letI : P.IsPrime := (weierstrassYInfinityClosedPrime_isMaximal W).isPrime
    let R := projectiveWeierstrassYChartRing W
    let L := Localization.AtPrime P
    let q : MvPolynomial (Fin 2) ℤ_[2] →+* R :=
      Ideal.Quotient.mk (Ideal.span {weierstrassInfinityChartEquation W})
    let f : R →+* L := algebraMap R L
    IsNoetherianRing L ∧ ringKrullDim L = 2 ∧
      LocalRing.maximalIdeal L =
        Ideal.span {f (q (MvPolynomial.C (2 : ℤ_[2]))),
          f (q (MvPolynomial.X (0 : Fin 2)))} ∧
      ∀ t : L, LocalRing.maximalIdeal L ≠ Ideal.span {t} := by
  let S := MvPolynomial (Fin 2) ℤ_[2]
  let R := projectiveWeierstrassYChartRing W
  let P : Ideal R := weierstrassYInfinityClosedPrime W
  letI : P.IsPrime := (weierstrassYInfinityClosedPrime_isMaximal W).isPrime
  let L := Localization.AtPrime P
  let q : S →+* R :=
    Ideal.Quotient.mk (Ideal.span {weierstrassInfinityChartEquation W})
  haveI : IsNoetherianRing R :=
    isNoetherianRing_of_surjective S R q Ideal.Quotient.mk_surjective
  haveI : IsNoetherianRing L :=
    IsLocalization.isNoetherianRing P.primeCompl _ inferInstance
  let M : PrimeSpectrum L :=
    ⟨LocalRing.maximalIdeal L, (LocalRing.maximalIdeal.isMaximal L).isPrime⟩
  have hheight : Order.height M = 2 :=
    le_antisymm
      (weierstrassYInfinity_maximal_height_le_two W)
      (weierstrassYInfinity_maximal_height_ge_two W)
  refine ⟨inferInstance, weierstrassYInfinity_ringKrullDim_eq_two W,
    weierstrassYInfinity_maximalIdeal_eq_span_two W, ?_⟩
  intro t ht
  have hmin : LocalRing.maximalIdeal L ∈
      (Ideal.span {t}).minimalPrimes := by
    rw [← ht]
    exact ⟨⟨(LocalRing.maximalIdeal.isMaximal L).isPrime, le_rfl⟩,
      fun J hJ _ => hJ.2⟩
  have hbound : Order.height M ≤ 1 :=
    minimal_prime_over_principal_height_le_one_general
      t (LocalRing.maximalIdeal L) hmin
  have hbad : (2 : ℕ∞) ≤ 1 := by
    rw [← hheight]
    exact hbound
  norm_num at hbad

/-- The generic infinity section of the integral `Y = 1`
chart is the prime induced from `(U,V)` in the polynomial
plane. It is distinct from the closed point over `2`. -/
noncomputable def weierstrassYInfinityGenericPrime
    (W : WeierstrassCurve ℤ_[2]) :
    Ideal (projectiveWeierstrassYChartRing W) :=
  infinityOriginIdeal.map
    (Ideal.Quotient.mk (Ideal.span {weierstrassInfinityChartEquation W}))

theorem weierstrassYInfinityGenericPrime_isPrime
    (W : WeierstrassCurve ℤ_[2]) :
    (weierstrassYInfinityGenericPrime W).IsPrime := by
  let I : Ideal (MvPolynomial (Fin 2) ℤ_[2]) :=
    Ideal.span {weierstrassInfinityChartEquation W}
  let q : MvPolynomial (Fin 2) ℤ_[2] →+*
      projectiveWeierstrassYChartRing W := Ideal.Quotient.mk I
  have hI : I ≤ infinityOriginIdeal :=
    (Ideal.span_singleton_le_iff_mem infinityOriginIdeal).mpr
      (infinityEquation_mem_origin W)
  apply Ideal.map_isPrime_of_surjective Ideal.Quotient.mk_surjective
  simpa [q, I, Ideal.mk_ker] using hI

/-- At the generic infinity point, `V` is eliminated by the
unit factor, and the localized maximal ideal is principal,
generated by `U`. -/
theorem weierstrassYInfinityGeneric_maximalIdeal_eq_span_U
    (W : WeierstrassCurve ℤ_[2]) :
    let P := weierstrassYInfinityGenericPrime W
    letI : P.IsPrime := weierstrassYInfinityGenericPrime_isPrime W
    let R := projectiveWeierstrassYChartRing W
    let L := Localization.AtPrime P
    let q : MvPolynomial (Fin 2) ℤ_[2] →+* R :=
      Ideal.Quotient.mk (Ideal.span {weierstrassInfinityChartEquation W})
    let f : R →+* L := algebraMap R L
    LocalRing.maximalIdeal L =
      Ideal.span {f (q (MvPolynomial.X (0 : Fin 2)))} := by
  let S := MvPolynomial (Fin 2) ℤ_[2]
  let R := projectiveWeierstrassYChartRing W
  let P : Ideal R := weierstrassYInfinityGenericPrime W
  letI : P.IsPrime := weierstrassYInfinityGenericPrime_isPrime W
  let L := Localization.AtPrime P
  let q : S →+* R :=
    Ideal.Quotient.mk (Ideal.span {weierstrassInfinityChartEquation W})
  let f : R →+* L := algebraMap R L
  let b : L := f (q (MvPolynomial.X (0 : Fin 2)))
  let c : L := f (q (MvPolynomial.X (1 : Fin 2)))
  have hP : P = Ideal.span {
      q (MvPolynomial.X (0 : Fin 2)),
      q (MvPolynomial.X (1 : Fin 2))} := by
    change Ideal.map q infinityOriginIdeal = _
    rw [infinityOriginIdeal_eq_span, Ideal.map_span]
    simp only [Set.image_insert_eq, Set.image_singleton]
  have hV : q (MvPolynomial.X (1 : Fin 2)) ∈ P := by
    rw [hP]
    exact Ideal.subset_span (by simp)
  have hc : c ∈ Ideal.span {b} :=
    weierstrassYChart_V_mem_span_U_at_infinity_prime W P hV
  change LocalRing.maximalIdeal L = Ideal.span {b}
  rw [← Localization.AtPrime.map_eq_maximalIdeal (I := P)]
  change Ideal.map f P = Ideal.span {b}
  calc
    Ideal.map f P =
        Ideal.map f (Ideal.span {
          q (MvPolynomial.X (0 : Fin 2)),
          q (MvPolynomial.X (1 : Fin 2))}) :=
      congrArg (Ideal.map f) hP
    _ = Ideal.span {b, c} := by
      rw [Ideal.map_span]
      simp only [Set.image_insert_eq, Set.image_singleton]
    _ = Ideal.span {b} := by
      apply le_antisymm
      · apply Ideal.span_le.mpr
        intro z hz
        rcases (show z = b ∨ z = c by simpa only
          [Set.mem_insert_iff, Set.mem_singleton_iff] using hz) with
          rfl | rfl
        · exact Ideal.mem_span_singleton_self b
        · exact hc
      · apply Ideal.span_mono (by simp)

/-- The generic infinity local ring has dimension at least one:
the minimal prime of the cubic is strictly below the infinity
section even after passing to the quotient. -/
theorem weierstrassYInfinityGeneric_maximal_height_ge_one
    (W : WeierstrassCurve ℤ_[2]) :
    let P := weierstrassYInfinityGenericPrime W
    letI : P.IsPrime := weierstrassYInfinityGenericPrime_isPrime W
    (1 : ℕ∞) ≤ Order.height
      (⟨LocalRing.maximalIdeal (Localization.AtPrime P),
        (LocalRing.maximalIdeal.isMaximal _).isPrime⟩ :
        PrimeSpectrum (Localization.AtPrime P)) := by
  let S := MvPolynomial (Fin 2) ℤ_[2]
  let F := weierstrassInfinityChartEquation W
  let I : Ideal S := Ideal.span {F}
  let J : Ideal S := infinityOriginIdeal
  let R := projectiveWeierstrassYChartRing W
  let q : S →+* R := Ideal.Quotient.mk I
  let P : Ideal R := weierstrassYInfinityGenericPrime W
  letI : P.IsPrime := weierstrassYInfinityGenericPrime_isPrime W
  obtain ⟨r, hr, hrJ, _⟩ := infinity_minimal_prime_chain W
  haveI : r.IsPrime := hr.1.1
  have hIJ : I ≤ J := hr.1.2.trans hrJ.le
  have hmapPrime : (r.map q).IsPrime := by
    apply Ideal.map_isPrime_of_surjective Ideal.Quotient.mk_surjective
    simpa [q, I, Ideal.mk_ker] using hr.1.2
  have hker : RingHom.ker q = I := by
    ext z
    simp only [RingHom.mem_ker, q, Ideal.Quotient.eq_zero_iff_mem]
    exact Ideal.Quotient.eq_zero_iff_mem
  have hstrict : r.map q < J.map q := by
    apply lt_of_le_of_ne (Ideal.map_mono hrJ.le)
    intro he
    have hc := congrArg (Ideal.comap q) he
    simp only [Ideal.comap_map_of_surjective q Ideal.Quotient.mk_surjective,
      ← RingHom.ker_eq_comap_bot, hker,
      sup_eq_left.mpr hr.1.2, sup_eq_left.mpr hIJ] at hc
    exact (ne_of_lt hrJ) hc
  let Q₀ : PrimeSpectrum R := ⟨r.map q, hmapPrime⟩
  let Q₁ : PrimeSpectrum R := ⟨P, ‹P.IsPrime›⟩
  have h01 : Q₀ < Q₁ := hstrict
  let s : LTSeries (PrimeSpectrum R) :=
    (RelSeries.singleton (· < ·) Q₀).snoc Q₁ h01
  have hheight : (1 : ℕ∞) ≤ Order.height Q₁ := by
    simpa [s] using (Order.length_le_height_last (p := s))
  exact hheight.trans (by simpa [Q₁] using height_le_atPrime_maximal_height P)

/-- The generic infinity local ring satisfies the
one-dimensional regular-parameter criterion: it is Noetherian,
has dimension one, and its maximal ideal is generated by `U`.
Together with the closed-point theorem, this covers the two
explicit infinity-section primes, not arbitrary chart primes. -/
theorem weierstrassYInfinityGeneric_regular_parameters
    (W : WeierstrassCurve ℤ_[2]) :
    let P := weierstrassYInfinityGenericPrime W
    letI : P.IsPrime := weierstrassYInfinityGenericPrime_isPrime W
    let R := projectiveWeierstrassYChartRing W
    let L := Localization.AtPrime P
    let q : MvPolynomial (Fin 2) ℤ_[2] →+* R :=
      Ideal.Quotient.mk (Ideal.span {weierstrassInfinityChartEquation W})
    let f : R →+* L := algebraMap R L
    IsNoetherianRing L ∧ ringKrullDim L = 1 ∧
      LocalRing.maximalIdeal L =
        Ideal.span {f (q (MvPolynomial.X (0 : Fin 2)))} := by
  let S := MvPolynomial (Fin 2) ℤ_[2]
  let R := projectiveWeierstrassYChartRing W
  let P : Ideal R := weierstrassYInfinityGenericPrime W
  letI : P.IsPrime := weierstrassYInfinityGenericPrime_isPrime W
  let L := Localization.AtPrime P
  let q : S →+* R :=
    Ideal.Quotient.mk (Ideal.span {weierstrassInfinityChartEquation W})
  let f : R →+* L := algebraMap R L
  let u : L := f (q (MvPolynomial.X (0 : Fin 2)))
  haveI : IsNoetherianRing R :=
    isNoetherianRing_of_surjective S R q Ideal.Quotient.mk_surjective
  haveI : IsNoetherianRing L :=
    IsLocalization.isNoetherianRing P.primeCompl _ inferInstance
  have hmax : LocalRing.maximalIdeal L = Ideal.span {u} :=
    weierstrassYInfinityGeneric_maximalIdeal_eq_span_U W
  have hmin : LocalRing.maximalIdeal L ∈
      (Ideal.span {u}).minimalPrimes := by
    rw [← hmax]
    exact ⟨⟨(LocalRing.maximalIdeal.isMaximal L).isPrime, le_rfl⟩,
      fun J hJ _ => hJ.2⟩
  let M : PrimeSpectrum L :=
    ⟨LocalRing.maximalIdeal L, (LocalRing.maximalIdeal.isMaximal L).isPrime⟩
  have hheight : Order.height M = 1 :=
    le_antisymm
      (minimal_prime_over_principal_height_le_one_general
        u (LocalRing.maximalIdeal L) hmin)
      (weierstrassYInfinityGeneric_maximal_height_ge_one W)
  have hDim : ringKrullDim L = (↑(Order.height M) : WithBot ℕ∞) := by
    change Order.krullDim (PrimeSpectrum L) =
      (↑(Order.height M) : WithBot ℕ∞)
    rw [Order.krullDim_eq_iSup_height]
    apply le_antisymm
    · apply iSup_le
      intro Q
      exact WithBot.coe_le_coe.mpr
        (Order.height_mono (show Q ≤ M from
          LocalRing.le_maximalIdeal Q.isPrime.ne_top))
    · exact le_iSup_of_le M le_rfl
  exact ⟨inferInstance, by simpa only [hheight] using hDim, hmax⟩

/-- These are all the primes on the set-theoretic infinity
boundary `V = 0`. The boundary's scheme structure may be
nonreduced; the statement classifies its *prime support*. -/
theorem weierstrassYChart_prime_containing_V_eq_infinityGeneric_or_closed
    (W : WeierstrassCurve ℤ_[2])
    (P : Ideal (projectiveWeierstrassYChartRing W)) [P.IsPrime]
    (hV : (Ideal.Quotient.mk
      (Ideal.span {weierstrassInfinityChartEquation W}))
        (MvPolynomial.X (1 : Fin 2)) ∈ P) :
    P = weierstrassYInfinityGenericPrime W ∨
      P = weierstrassYInfinityClosedPrime W := by
  let S := MvPolynomial (Fin 2) ℤ_[2]
  let R := projectiveWeierstrassYChartRing W
  let q : S →+* R :=
    Ideal.Quotient.mk (Ideal.span {weierstrassInfinityChartEquation W})
  let e : S →+* ℤ_[2] := infinityOriginEval
  let Q : Ideal S := Ideal.comap q P
  let T : Ideal ℤ_[2] := Ideal.map e Q
  haveI : Q.IsPrime := Ideal.comap_isPrime q P
  have hsurj : Function.Surjective e := by
    intro a
    refine ⟨MvPolynomial.C a, ?_⟩
    exact (MvPolynomial.eval₂Hom_C (RingHom.id ℤ_[2])
      (fun _ : Fin 2 => (0 : ℤ_[2])) a).trans (RingHom.id_apply a)
  have hU : q (MvPolynomial.X (0 : Fin 2)) ∈ P :=
    weierstrassYChart_U_mem_of_V_mem W P hV
  have hJQ : infinityOriginIdeal ≤ Q := by
    rw [infinityOriginIdeal_eq_span]
    apply Ideal.span_le.mpr
    intro p hp
    rcases (show p = MvPolynomial.X (0 : Fin 2) ∨
        p = MvPolynomial.X (1 : Fin 2) by simpa using hp) with
      rfl | rfl
    · exact hU
    · exact hV
  haveI : T.IsPrime := by
    apply Ideal.map_isPrime_of_surjective hsurj
    exact hJQ
  have hQ : Q = Ideal.comap e T := by
    change Q = Ideal.comap e (Ideal.map e Q)
    rw [Ideal.comap_map_of_surjective e hsurj]
    change Q = Q ⊔ infinityOriginIdeal
    exact (sup_eq_left.mpr hJQ).symm
  have hbase : LocalRing.maximalIdeal ℤ_[2] =
      RingHom.ker (PadicInt.toZMod : ℤ_[2] →+* ZMod 2) := by
    exact PadicInt.ker_toZMod.symm
  have hcomp : localSurfaceResidue =
      (PadicInt.toZMod : ℤ_[2] →+* ZMod 2).comp e := by
    apply MvPolynomial.ringHom_ext
    · intro a
      simp [localSurfaceResidue, e, infinityOriginEval]
    · intro i
      fin_cases i <;> simp [localSurfaceResidue, e, infinityOriginEval]
  have hM : localSurfaceCentre =
      Ideal.comap e (LocalRing.maximalIdeal ℤ_[2]) := by
    ext z
    rw [localSurfaceCentre_eq_ker_residue, hbase]
    change localSurfaceResidue z = 0 ↔
      ((PadicInt.toZMod : ℤ_[2] →+* ZMod 2) (e z)) = 0
    rw [hcomp, RingHom.comp_apply]
  have hmap : Ideal.map q Q = P :=
    Ideal.map_comap_of_surjective q Ideal.Quotient.mk_surjective P
  by_cases hbot : T = ⊥
  · left
    calc
      P = Ideal.map q Q := hmap.symm
      _ = Ideal.map q infinityOriginIdeal := by
        congr 1
        rw [hQ, hbot]
        rfl
      _ = weierstrassYInfinityGenericPrime W := rfl
  · right
    have hmax : T = LocalRing.maximalIdeal ℤ_[2] :=
      LocalRing.eq_maximalIdeal
        (Ring.DimensionLEOne.maximalOfPrime hbot ‹T.IsPrime›)
    calc
      P = Ideal.map q Q := hmap.symm
      _ = Ideal.map q localSurfaceCentre := by
        congr 1
        rw [hQ, hmax]
        exact hM.symm
      _ = weierstrassYInfinityClosedPrime W := rfl

end Beal.General