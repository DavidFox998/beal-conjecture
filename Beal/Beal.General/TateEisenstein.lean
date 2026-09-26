import Beal.«Beal.General».HeightThreeSurface
import Mathlib.RingTheory.Polynomial.Eisenstein.Basic

/-!
The one-variable Eisenstein specialization of the translated
total-space equation. Its contracted prime supplies the intermediate
prime needed for the hypersurface dimension bound, without asserting
that `(f, X)` itself is prime.
-/

namespace Beal.General

/-- Set the first translated coordinate to zero and regard the second
as a polynomial variable. -/
noncomputable def surfaceAtXZero :
    MvPolynomial (Fin 2) ℤ_[2] →+* Polynomial ℤ_[2] :=
  MvPolynomial.eval₂Hom Polynomial.C
    (fun i => if i = 0 then 0 else Polynomial.X)

theorem surfaceAtXZero_localSurfaceEquation
    (W : WeierstrassCurve ℤ_[2]) (x y : ℤ_[2]) :
    surfaceAtXZero (localSurfaceEquation W x y) =
      Polynomial.X ^ 2 +
        Polynomial.C (2 * y + W.a₁ * x + W.a₃) * Polynomial.X +
        Polynomial.C (localWeierstrassEquation W x y) := by
  simp only [surfaceAtXZero, localSurfaceEquation,
    localWeierstrassEquation, WeierstrassCurve.map,
    map_add, map_sub, map_mul, map_pow]
  simp [MvPolynomial.eval₂Hom_C, MvPolynomial.eval₂Hom_X']
  simp only [map_ofNat]
  ring

/-- A constant term equal to twice a unit has valuation exactly one:
it cannot belong to the square of the two-adic maximal ideal. -/
theorem two_mul_unit_not_mem_span_two_sq
    (A : ℤ_[2]) (hA : IsUnit A) :
    2 * A ∉ (Ideal.span {(2 : ℤ_[2])} : Ideal ℤ_[2]) ^ 2 := by
  intro h
  rw [Ideal.span_singleton_pow] at h
  have hdiv : (4 : ℤ_[2]) ∣ 2 * A := by
    apply Ideal.mem_span_singleton.mp
    simpa only [show (2 : ℤ_[2]) ^ 2 = 4 by norm_num] using h
  obtain ⟨z, hz⟩ := hdiv
  have htwo : (2 : ℤ_[2]) * A = 2 * (2 * z) := by
    calc
      (2 : ℤ_[2]) * A = 4 * z := by simpa using hz
      _ = 2 * (2 * z) := by ring
  have hAz : A = 2 * z :=
    (mul_left_cancel₀ (by norm_num : (2 : ℤ_[2]) ≠ 0)) htwo
  have hmem : A ∈ (Ideal.span {(2 : ℤ_[2])} : Ideal ℤ_[2]) :=
    Ideal.mem_span_singleton.mpr ⟨z, hAz⟩
  have hne : (Ideal.span {(2 : ℤ_[2])} : Ideal ℤ_[2]) ≠ ⊤ := by
    simpa only [PadicInt.maximalIdeal_eq_span_p] using
      (LocalRing.maximalIdeal.isMaximal ℤ_[2]).ne_top
  exact hne ((Ideal.span {(2 : ℤ_[2])} : Ideal ℤ_[2]).eq_top_of_isUnit_mem hmem hA)

/-- The quadratic specialization is Eisenstein at 2 when its
constant term is twice a unit and its linear term is even. -/
theorem two_adic_quadratic_isEisenstein
    (A C : ℤ_[2]) (hA : IsUnit A) :
    (Polynomial.X ^ 2 + Polynomial.C (2 * C) * Polynomial.X +
      Polynomial.C (2 * A)).IsEisensteinAt
        (Ideal.span {(2 : ℤ_[2])}) := by
  let q : Polynomial ℤ_[2] :=
    Polynomial.X ^ 2 + Polynomial.C (2 * C) * Polynomial.X +
      Polynomial.C (2 * A)
  have hmonic : q.Monic := by
    simpa only [q, add_assoc] using
      (Polynomial.monic_X_pow_add
        (n := 2) (Polynomial.degree_linear_lt
          (a := 2 * C) (b := 2 * A)))
  have hnat : q.natDegree = 2 := by
    simpa [q] using (Polynomial.natDegree_quadratic
      (a := (1 : ℤ_[2])) (b := 2 * C) (c := 2 * A) one_ne_zero)
  apply hmonic.isEisensteinAt_of_mem_of_not_mem
  · simpa only [PadicInt.maximalIdeal_eq_span_p] using
      (LocalRing.maximalIdeal.isMaximal ℤ_[2]).ne_top
  · intro n hn
    rw [hnat] at hn
    interval_cases n
    · simp [q, Polynomial.coeff_add, Polynomial.coeff_C_mul_X_pow]
      exact Ideal.mem_span_singleton.mpr ⟨A, by ring⟩
    · simp [q, Polynomial.coeff_add, Polynomial.coeff_C_mul_X_pow]
      exact Ideal.mem_span_singleton.mpr ⟨C, by ring⟩
  · simpa [q, Polynomial.coeff_add, Polynomial.coeff_C_mul_X_pow] using
      two_mul_unit_not_mem_span_two_sq A hA

/-- The Eisenstein quadratic generates a prime principal ideal in
the one-variable polynomial ring over the two-adic integers. -/
theorem two_adic_quadratic_ideal_isPrime
    (A C : ℤ_[2]) (hA : IsUnit A) :
    (Ideal.span {Polynomial.X ^ 2 +
      Polynomial.C (2 * C) * Polynomial.X +
      Polynomial.C (2 * A)} : Ideal (Polynomial ℤ_[2])).IsPrime := by
  let q : Polynomial ℤ_[2] :=
    Polynomial.X ^ 2 + Polynomial.C (2 * C) * Polynomial.X +
      Polynomial.C (2 * A)
  have hmonic : q.Monic := by
    simpa only [q, add_assoc] using
      (Polynomial.monic_X_pow_add
        (n := 2) (Polynomial.degree_linear_lt
          (a := 2 * C) (b := 2 * A)))
  have hnat : q.natDegree = 2 := by
    simpa [q] using (Polynomial.natDegree_quadratic
      (a := (1 : ℤ_[2])) (b := 2 * C) (c := 2 * A) one_ne_zero)
  have hprime : (Ideal.span {(2 : ℤ_[2])} : Ideal ℤ_[2]).IsPrime := by
    simpa only [PadicInt.maximalIdeal_eq_span_p] using
      (LocalRing.maximalIdeal.isMaximal ℤ_[2]).isPrime
  have hirr : Irreducible q :=
    (two_adic_quadratic_isEisenstein A C hA).irreducible
      hprime hmonic.isPrimitive (by rw [hnat]; norm_num)
  have hqprime : Prime q :=
    UniqueFactorizationMonoid.irreducible_iff_prime.mp hirr
  change (Ideal.span {q} : Ideal (Polynomial ℤ_[2])).IsPrime
  exact (Ideal.span_singleton_prime hirr.ne_zero).mpr hqprime

/-- At the valuation-one node, the first-coordinate-zero
specialization satisfies Eisenstein's criterion. The coefficient of
the remaining coordinate is even, not a unit. -/
theorem valOne_surfaceAtXZero_isEisenstein
    (W : WeierstrassCurve ℤ_[2])
    (hnode : ReducedNodalPoint (W.map PadicInt.toZMod)
      (PadicInt.toZMod W.a₃)
      (PadicInt.toZMod (W.a₃ ^ 2 + W.a₄)))
    (hΔ : W.Δ ≠ 0)
    (hval : Padic.valuation (W.Δ : ℚ_[2]) = 1) :
    (surfaceAtXZero
      (localSurfaceEquation W W.a₃ (W.a₃ ^ 2 + W.a₄))).IsEisensteinAt
        (Ideal.span {(2 : ℤ_[2])}) := by
  obtain ⟨A, B, C, hF, hX, hY⟩ :=
    reducedNodalPoint_liftEvenCoefficients
      W W.a₃ (W.a₃ ^ 2 + W.a₄) hnode
  have ha : (PadicInt.toZMod : ℤ_[2] →+* ZMod 2) W.a₁ ≠ 0 := by
    simpa only [WeierstrassCurve.map_a₁] using hnode.2.2.2
  have hA : IsUnit A := by
    by_contra hn
    have hmem : A ∈ (Ideal.span {(2 : ℤ_[2])} : Ideal ℤ_[2]) := by
      have hm : A ∈ LocalRing.maximalIdeal ℤ_[2] := by
        rw [LocalRing.mem_maximalIdeal, mem_nonunits_iff]
        exact hn
      simpa only [PadicInt.maximalIdeal_eq_span_p] using hm
    obtain ⟨D, hD⟩ := Ideal.mem_span_singleton.mp hmem
    have hfour : localWeierstrassEquation W W.a₃
        (W.a₃ ^ 2 + W.a₄) = 4 * D := by
      rw [hF, hD]
      ring
    exact (valOne_surfaceEquation_not_mem_centre_sq W hΔ ha hval)
      (localSurfaceEquation_mem_centre_sq W W.a₃
        (W.a₃ ^ 2 + W.a₄) D B C hfour hX hY)
  rw [surfaceAtXZero_localSurfaceEquation, hF, hY]
  exact two_adic_quadratic_isEisenstein A C hA

/-- The one-variable specialization generates a prime ideal. This
still does not identify the corresponding ideal in two variables. -/
theorem valOne_surfaceAtXZero_ideal_isPrime
    (W : WeierstrassCurve ℤ_[2])
    (hnode : ReducedNodalPoint (W.map PadicInt.toZMod)
      (PadicInt.toZMod W.a₃)
      (PadicInt.toZMod (W.a₃ ^ 2 + W.a₄)))
    (hΔ : W.Δ ≠ 0)
    (hval : Padic.valuation (W.Δ : ℚ_[2]) = 1) :
    (Ideal.span {surfaceAtXZero
      (localSurfaceEquation W W.a₃ (W.a₃ ^ 2 + W.a₄))} :
        Ideal (Polynomial ℤ_[2])).IsPrime := by
  obtain ⟨A, _, C, hF, _, hY⟩ :=
    reducedNodalPoint_liftEvenCoefficients
      W W.a₃ (W.a₃ ^ 2 + W.a₄) hnode
  let q := surfaceAtXZero
    (localSurfaceEquation W W.a₃ (W.a₃ ^ 2 + W.a₄))
  have hq : q = Polynomial.X ^ 2 +
      Polynomial.C (2 * C) * Polynomial.X + Polynomial.C (2 * A) := by
    dsimp only [q]
    rw [surfaceAtXZero_localSurfaceEquation, hF, hY]
  have hmonic : q.Monic := by
    rw [hq]
    simpa only [add_assoc] using
      (Polynomial.monic_X_pow_add
        (n := 2) (Polynomial.degree_linear_lt
          (a := 2 * C) (b := 2 * A)))
  have hnat : q.natDegree = 2 := by
    rw [hq]
    simpa using (Polynomial.natDegree_quadratic
      (a := (1 : ℤ_[2])) (b := 2 * C) (c := 2 * A) one_ne_zero)
  have hprime : (Ideal.span {(2 : ℤ_[2])} : Ideal ℤ_[2]).IsPrime := by
    simpa only [PadicInt.maximalIdeal_eq_span_p] using
      (LocalRing.maximalIdeal.isMaximal ℤ_[2]).isPrime
  have hirr : Irreducible q :=
    (valOne_surfaceAtXZero_isEisenstein W hnode hΔ hval).irreducible
      hprime hmonic.isPrimitive (by rw [hnat]; norm_num)
  change (Ideal.span {q} : Ideal (Polynomial ℤ_[2])).IsPrime
  exact (Ideal.span_singleton_prime hirr.ne_zero).mpr
    (UniqueFactorizationMonoid.irreducible_iff_prime.mp hirr)

/-- The Eisenstein prime contracts to an ambient prime containing the
translated equation, strictly below the closed centre. -/
theorem valOne_specialization_prime_below_centre
    (W : WeierstrassCurve ℤ_[2])
    (hnode : ReducedNodalPoint (W.map PadicInt.toZMod)
      (PadicInt.toZMod W.a₃)
      (PadicInt.toZMod (W.a₃ ^ 2 + W.a₄)))
    (hΔ : W.Δ ≠ 0)
    (hval : Padic.valuation (W.Δ : ℚ_[2]) = 1) :
    let F := localSurfaceEquation W W.a₃ (W.a₃ ^ 2 + W.a₄)
    let J := (Ideal.span {surfaceAtXZero F} :
      Ideal (Polynomial ℤ_[2])).comap surfaceAtXZero
    J.IsPrime ∧ F ∈ J ∧ J < localSurfaceCentre := by
  let F := localSurfaceEquation W W.a₃ (W.a₃ ^ 2 + W.a₄)
  let q : Polynomial ℤ_[2] := surfaceAtXZero F
  let J : Ideal (MvPolynomial (Fin 2) ℤ_[2]) :=
    (Ideal.span {q}).comap surfaceAtXZero
  obtain ⟨A, _, C, hF, _, hY⟩ :=
    reducedNodalPoint_liftEvenCoefficients
      W W.a₃ (W.a₃ ^ 2 + W.a₄) hnode
  have hq : q = Polynomial.X ^ 2 +
      Polynomial.C (2 * C) * Polynomial.X + Polynomial.C (2 * A) := by
    dsimp only [q, F]
    rw [surfaceAtXZero_localSurfaceEquation, hF, hY]
  have hnat : q.natDegree = 2 := by
    rw [hq]
    simpa using (Polynomial.natDegree_quadratic
      (a := (1 : ℤ_[2])) (b := 2 * C) (c := 2 * A) one_ne_zero)
  have hprime : J.IsPrime :=
    (valOne_surfaceAtXZero_ideal_isPrime W hnode hΔ hval).comap surfaceAtXZero
  have hf : F ∈ J := by
    change surfaceAtXZero F ∈ Ideal.span {q}
    exact Ideal.mem_span_singleton_self q
  let φ : Polynomial ℤ_[2] →+* ZMod 2 :=
    Polynomial.eval₂RingHom PadicInt.toZMod 0
  have htwo : PadicInt.toZMod (2 : ℤ_[2]) = (0 : ZMod 2) := by
    simpa only [map_ofNat] using (by decide : (2 : ZMod 2) = 0)
  have hqzero : φ q = 0 := by
    rw [hq]
    simp [φ, Polynomial.eval₂RingHom, htwo]
  have hcomp : φ.comp surfaceAtXZero = localSurfaceResidue := by
    apply MvPolynomial.ringHom_ext
    · intro a
      simp [φ, surfaceAtXZero, localSurfaceResidue]
    · intro i
      fin_cases i <;> simp [φ, surfaceAtXZero, localSurfaceResidue]
  have hJle : J ≤ localSurfaceCentre := by
    intro g hg
    have hspanle : (Ideal.span {q} : Ideal (Polynomial ℤ_[2])) ≤
        RingHom.ker φ :=
      Ideal.span_le.mpr (Set.singleton_subset_iff.mpr
        (RingHom.mem_ker.mpr hqzero))
    have hz : φ (surfaceAtXZero g) = 0 := hspanle hg
    rw [localSurfaceCentre_eq_ker_residue, RingHom.mem_ker, ← hcomp]
    exact hz
  have hYnot : MvPolynomial.X (1 : Fin 2) ∉ J := by
    change surfaceAtXZero (MvPolynomial.X (1 : Fin 2)) ∉
      (Ideal.span {q} : Ideal (Polynomial ℤ_[2]))
    have hYmap : surfaceAtXZero (MvPolynomial.X (1 : Fin 2)) =
        Polynomial.X := by simp [surfaceAtXZero]
    rw [hYmap]
    intro hY
    have hle : q.natDegree ≤ (Polynomial.X : Polynomial ℤ_[2]).natDegree :=
      Polynomial.natDegree_le_of_dvd (Ideal.mem_span_singleton.mp hY)
        Polynomial.X_ne_zero
    rw [hnat] at hle
    norm_num at hle
  have hJlt : J < localSurfaceCentre := by
    apply lt_of_le_of_ne hJle
    intro heq
    exact hYnot (heq ▸ (Ideal.subset_span
      (by simp [localSurfaceCentre] :
        MvPolynomial.X (1 : Fin 2) ∈
          ({MvPolynomial.C (2 : ℤ_[2]),
            MvPolynomial.X (0 : Fin 2),
            MvPolynomial.X (1 : Fin 2)} : Set _))))
  exact ⟨hprime, hf, hJlt⟩

/-- The contracted Eisenstein prime lies strictly above the kernel
of specialization; it therefore has ambient height at least two. -/
theorem valOne_specialization_prime_height_ge_two
    (W : WeierstrassCurve ℤ_[2])
    (hnode : ReducedNodalPoint (W.map PadicInt.toZMod)
      (PadicInt.toZMod W.a₃)
      (PadicInt.toZMod (W.a₃ ^ 2 + W.a₄)))
    (hΔ : W.Δ ≠ 0)
    (hval : Padic.valuation (W.Δ : ℚ_[2]) = 1) :
    let F := localSurfaceEquation W W.a₃ (W.a₃ ^ 2 + W.a₄)
    let J := (Ideal.span {surfaceAtXZero F} :
      Ideal (Polynomial ℤ_[2])).comap surfaceAtXZero
    letI : J.IsPrime :=
      (valOne_specialization_prime_below_centre W hnode hΔ hval).1
    (2 : ℕ∞) ≤
      Order.height (⟨J, ‹J.IsPrime›⟩ :
        PrimeSpectrum (MvPolynomial (Fin 2) ℤ_[2])) := by
  let R := MvPolynomial (Fin 2) ℤ_[2]
  let F := localSurfaceEquation W W.a₃ (W.a₃ ^ 2 + W.a₄)
  let q : Polynomial ℤ_[2] := surfaceAtXZero F
  let J : Ideal R := (Ideal.span {q}).comap surfaceAtXZero
  let K : Ideal R := RingHom.ker surfaceAtXZero
  haveI : J.IsPrime :=
    (valOne_specialization_prime_below_centre W hnode hΔ hval).1
  have hFJ : F ∈ J :=
    (valOne_specialization_prime_below_centre W hnode hΔ hval).2.1
  haveI : K.IsPrime := RingHom.ker_isPrime surfaceAtXZero
  have hqne : q ≠ 0 := by
    obtain ⟨A, _, C, hF, _, hY⟩ :=
      reducedNodalPoint_liftEvenCoefficients
        W W.a₃ (W.a₃ ^ 2 + W.a₄) hnode
    have hq : q = Polynomial.X ^ 2 +
        Polynomial.C (2 * C) * Polynomial.X + Polynomial.C (2 * A) := by
      dsimp only [q, F]
      rw [surfaceAtXZero_localSurfaceEquation, hF, hY]
    intro hz
    have hnat : q.natDegree = 2 := by
      rw [hq]
      simpa using (Polynomial.natDegree_quadratic
        (a := (1 : ℤ_[2])) (b := 2 * C) (c := 2 * A) one_ne_zero)
    rw [hz] at hnat
    norm_num at hnat
  have hKJ : K < J := by
    apply lt_of_le_of_ne
    · intro g hg
      change surfaceAtXZero g ∈ Ideal.span {q}
      rw [RingHom.mem_ker] at hg
      exact hg ▸ Ideal.zero_mem _
    · intro heq
      have hFK : F ∈ K := heq ▸ hFJ
      exact hqne (RingHom.mem_ker.mp hFK)
  have hbotK : (⊥ : Ideal R) < K := by
    apply bot_lt_iff_ne_bot.mpr
    intro heq
    have hX : MvPolynomial.X (0 : Fin 2) ∈ (⊥ : Ideal R) := by
      rw [← heq]
      change surfaceAtXZero (MvPolynomial.X (0 : Fin 2)) = 0
      simp [surfaceAtXZero]
    exact (MvPolynomial.X_ne_zero (R := ℤ_[2]) (0 : Fin 2))
      (Ideal.mem_bot.mp hX)
  let P₀ : PrimeSpectrum R := ⟨⊥, Ideal.bot_prime⟩
  let P₁ : PrimeSpectrum R := ⟨K, ‹K.IsPrime›⟩
  let P₂ : PrimeSpectrum R := ⟨J, ‹J.IsPrime›⟩
  have h01 : P₀ < P₁ := hbotK
  have h12 : P₁ < P₂ := hKJ
  let s : LTSeries (PrimeSpectrum R) :=
    ((RelSeries.singleton (· < ·) P₀).snoc P₁ h01).snoc P₂ h12
  simpa [s, P₂] using (Order.length_le_height_last (p := s))

/-- Principal ideal theorem forces a minimal prime of the translated
equation strictly below the Eisenstein intermediate prime. The
strict inclusions here are in the ambient ring; passing them to the
hypersurface quotient is the next separate step. -/
theorem valOne_exists_minimal_prime_below_specialization
    (W : WeierstrassCurve ℤ_[2])
    (hnode : ReducedNodalPoint (W.map PadicInt.toZMod)
      (PadicInt.toZMod W.a₃)
      (PadicInt.toZMod (W.a₃ ^ 2 + W.a₄)))
    (hΔ : W.Δ ≠ 0)
    (hval : Padic.valuation (W.Δ : ℚ_[2]) = 1) :
    let F := localSurfaceEquation W W.a₃ (W.a₃ ^ 2 + W.a₄)
    let J := (Ideal.span {surfaceAtXZero F} :
      Ideal (Polynomial ℤ_[2])).comap surfaceAtXZero
    ∃ r : Ideal (MvPolynomial (Fin 2) ℤ_[2]),
      r ∈ (Ideal.span {F}).minimalPrimes ∧
        r < J ∧ J < localSurfaceCentre := by
  let F := localSurfaceEquation W W.a₃ (W.a₃ ^ 2 + W.a₄)
  let J : Ideal (MvPolynomial (Fin 2) ℤ_[2]) :=
    (Ideal.span {surfaceAtXZero F}).comap surfaceAtXZero
  have hJ := valOne_specialization_prime_below_centre W hnode hΔ hval
  haveI : J.IsPrime := hJ.1
  obtain ⟨r, hr, hrJ⟩ := Ideal.exists_minimalPrimes_le
    ((Ideal.span_singleton_le_iff_mem J).mpr hJ.2.1)
  have hrheight : Order.height
      (⟨r, hr.1.1⟩ : PrimeSpectrum (MvPolynomial (Fin 2) ℤ_[2])) ≤ 1 :=
    minimal_prime_over_principal_height_le_one_general F r hr
  have hrlt : r < J := by
    apply lt_of_le_of_ne hrJ
    intro heq
    have hbad : (2 : ℕ∞) ≤ 1 := by
      calc
        (2 : ℕ∞) ≤ Order.height
            (⟨J, ‹J.IsPrime›⟩ :
              PrimeSpectrum (MvPolynomial (Fin 2) ℤ_[2])) :=
          valOne_specialization_prime_height_ge_two W hnode hΔ hval
        _ = Order.height
            (⟨r, hr.1.1⟩ :
              PrimeSpectrum (MvPolynomial (Fin 2) ℤ_[2])) := by
          congr 1
          exact PrimeSpectrum.ext heq.symm
        _ ≤ 1 := hrheight
    norm_num at hbad
  exact ⟨r, hr, hrlt, hJ.2.2⟩

/-- The ambient chain through the Eisenstein prime descends to a
two-step chain ending at the hypersurface closed point and stays
strict after localization. -/
theorem valOne_local_surface_maximal_height_ge_two
    (W : WeierstrassCurve ℤ_[2])
    (hnode : ReducedNodalPoint (W.map PadicInt.toZMod)
      (PadicInt.toZMod W.a₃)
      (PadicInt.toZMod (W.a₃ ^ 2 + W.a₄)))
    (hΔ : W.Δ ≠ 0)
    (hval : Padic.valuation (W.Δ : ℚ_[2]) = 1) :
    let R := localSurfaceCoordinateRing W W.a₃ (W.a₃ ^ 2 + W.a₄)
    let P : Ideal R := localSurfaceClosedPoint W W.a₃ (W.a₃ ^ 2 + W.a₄)
    letI : P.IsPrime :=
      (reducedPoint_hasClosedSurfacePoint W W.a₃
        (W.a₃ ^ 2 + W.a₄) hnode.1).isPrime
    (2 : ℕ∞) ≤
      Order.height
        (⟨LocalRing.maximalIdeal (Localization.AtPrime P),
          (LocalRing.maximalIdeal.isMaximal _).isPrime⟩ :
          PrimeSpectrum (Localization.AtPrime P)) := by
  let S := MvPolynomial (Fin 2) ℤ_[2]
  let F := localSurfaceEquation W W.a₃ (W.a₃ ^ 2 + W.a₄)
  let I : Ideal S := Ideal.span {F}
  let R := localSurfaceCoordinateRing W W.a₃ (W.a₃ ^ 2 + W.a₄)
  let P : Ideal R := localSurfaceClosedPoint W W.a₃ (W.a₃ ^ 2 + W.a₄)
  letI : P.IsPrime :=
    (reducedPoint_hasClosedSurfacePoint W W.a₃
      (W.a₃ ^ 2 + W.a₄) hnode.1).isPrime
  let q : S →+* R := Ideal.Quotient.mk I
  let J : Ideal S :=
    (Ideal.span {surfaceAtXZero F}).comap surfaceAtXZero
  obtain ⟨r, hr, hrJ, hJcent⟩ :=
    valOne_exists_minimal_prime_below_specialization W hnode hΔ hval
  haveI : r.IsPrime := hr.1.1
  haveI : J.IsPrime :=
    (valOne_specialization_prime_below_centre W hnode hΔ hval).1
  have hIJ : I ≤ J := hr.1.2.trans hrJ.le
  have hIC : I ≤ localSurfaceCentre := hIJ.trans hJcent.le
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
  have h12 : Q₁ < Q₂ :=
    hmapStrict J localSurfaceCentre hIJ hIC hJcent
  let s : LTSeries (PrimeSpectrum R) :=
    ((RelSeries.singleton (· < ·) Q₀).snoc Q₁ h01).snoc Q₂ h12
  have hheight : (2 : ℕ∞) ≤ Order.height Q₂ := by
    simpa [s] using (Order.length_le_height_last (p := s))
  exact hheight.trans (by simpa [Q₂] using height_le_atPrime_maximal_height P)

/-- The localized valuation-one hypersurface has Krull dimension two:
the Eisenstein specialization supplies the lower chain, and the
two-generator closed-point theorem supplies the upper bound. -/
theorem valOne_local_surface_ringKrullDim_eq_two
    (W : WeierstrassCurve ℤ_[2])
    (hnode : ReducedNodalPoint (W.map PadicInt.toZMod)
      (PadicInt.toZMod W.a₃)
      (PadicInt.toZMod (W.a₃ ^ 2 + W.a₄)))
    (hΔ : W.Δ ≠ 0)
    (hval : Padic.valuation (W.Δ : ℚ_[2]) = 1) :
    let R := localSurfaceCoordinateRing W W.a₃ (W.a₃ ^ 2 + W.a₄)
    let P : Ideal R := localSurfaceClosedPoint W W.a₃ (W.a₃ ^ 2 + W.a₄)
    letI : P.IsPrime :=
      (reducedPoint_hasClosedSurfacePoint W W.a₃
        (W.a₃ ^ 2 + W.a₄) hnode.1).isPrime
    ringKrullDim (Localization.AtPrime P) = 2 := by
  let R := localSurfaceCoordinateRing W W.a₃ (W.a₃ ^ 2 + W.a₄)
  let P : Ideal R := localSurfaceClosedPoint W W.a₃ (W.a₃ ^ 2 + W.a₄)
  letI : P.IsPrime :=
    (reducedPoint_hasClosedSurfacePoint W W.a₃
      (W.a₃ ^ 2 + W.a₄) hnode.1).isPrime
  let L := Localization.AtPrime P
  let M : PrimeSpectrum L :=
    ⟨LocalRing.maximalIdeal L, (LocalRing.maximalIdeal.isMaximal L).isPrime⟩
  have hEq : Order.height M = 2 :=
    le_antisymm
      (valOne_local_surface_maximal_height_le_two W hnode hΔ hval)
      (valOne_local_surface_maximal_height_ge_two W hnode hΔ hval)
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

/-- An explicit regularity certificate for the valuation-one local
surface: it is Noetherian of dimension two, and its maximal ideal has
exactly two minimal generators (the translated coordinates). This
states the defining dimension/generator condition rather than relying
on a regular-local-ring predicate absent from this Mathlib pin. -/
theorem valOne_local_surface_regular_parameters
    (W : WeierstrassCurve ℤ_[2])
    (hnode : ReducedNodalPoint (W.map PadicInt.toZMod)
      (PadicInt.toZMod W.a₃)
      (PadicInt.toZMod (W.a₃ ^ 2 + W.a₄)))
    (hΔ : W.Δ ≠ 0)
    (hval : Padic.valuation (W.Δ : ℚ_[2]) = 1) :
    let R := localSurfaceCoordinateRing W W.a₃ (W.a₃ ^ 2 + W.a₄)
    let P : Ideal R := localSurfaceClosedPoint W W.a₃ (W.a₃ ^ 2 + W.a₄)
    letI : P.IsPrime :=
      (reducedPoint_hasClosedSurfacePoint W W.a₃
        (W.a₃ ^ 2 + W.a₄) hnode.1).isPrime
    let L := Localization.AtPrime P
    let q : MvPolynomial (Fin 2) ℤ_[2] →+* R :=
      Ideal.Quotient.mk
        (Ideal.span {localSurfaceEquation W W.a₃ (W.a₃ ^ 2 + W.a₄)})
    ringKrullDim L = 2 ∧
      LocalRing.maximalIdeal L =
        Ideal.span {
          (algebraMap R L) (q (MvPolynomial.X 0)),
          (algebraMap R L) (q (MvPolynomial.X 1))} ∧
      ∀ t : L, LocalRing.maximalIdeal L ≠ Ideal.span {t} := by
  let R := localSurfaceCoordinateRing W W.a₃ (W.a₃ ^ 2 + W.a₄)
  let P : Ideal R := localSurfaceClosedPoint W W.a₃ (W.a₃ ^ 2 + W.a₄)
  letI : P.IsPrime :=
    (reducedPoint_hasClosedSurfacePoint W W.a₃
      (W.a₃ ^ 2 + W.a₄) hnode.1).isPrime
  let L := Localization.AtPrime P
  let q : MvPolynomial (Fin 2) ℤ_[2] →+* R :=
    Ideal.Quotient.mk
      (Ideal.span {localSurfaceEquation W W.a₃ (W.a₃ ^ 2 + W.a₄)})
  haveI : IsNoetherianRing R :=
    isNoetherianRing_of_surjective
      (MvPolynomial (Fin 2) ℤ_[2]) R q Ideal.Quotient.mk_surjective
  haveI : IsNoetherianRing L :=
    IsLocalization.isNoetherianRing P.primeCompl _ inferInstance
  let M : PrimeSpectrum L :=
    ⟨LocalRing.maximalIdeal L, (LocalRing.maximalIdeal.isMaximal L).isPrime⟩
  have hheight : Order.height M = 2 :=
    le_antisymm
      (valOne_local_surface_maximal_height_le_two W hnode hΔ hval)
      (valOne_local_surface_maximal_height_ge_two W hnode hΔ hval)
  refine ⟨valOne_local_surface_ringKrullDim_eq_two W hnode hΔ hval,
    valOne_localMaximalIdeal_eq_span_coordinates W hnode hΔ hval, ?_⟩
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

#print axioms surfaceAtXZero_localSurfaceEquation
#print axioms two_adic_quadratic_isEisenstein
#print axioms valOne_surfaceAtXZero_isEisenstein
#print axioms valOne_surfaceAtXZero_ideal_isPrime
#print axioms valOne_specialization_prime_below_centre
#print axioms valOne_specialization_prime_height_ge_two
#print axioms valOne_exists_minimal_prime_below_specialization
#print axioms valOne_local_surface_maximal_height_ge_two
#print axioms valOne_local_surface_ringKrullDim_eq_two
#print axioms valOne_local_surface_regular_parameters

end Beal.General