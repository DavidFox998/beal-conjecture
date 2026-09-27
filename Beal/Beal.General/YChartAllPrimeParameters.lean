import Beal.«Beal.General».YChartOverlapPrime
import Beal.«Beal.General».InfinityLocalRegularity

/-!
Transfer local-parameter certificates from the `Z = 1` chart
through the checked overlap and combine them with the two infinity
boundary primes of the `Y = 1` chart.
-/

namespace Beal.General

set_option maxHeartbeats 1000000

/-- Dimension at most one transfers across an equivalence of rings. -/
private theorem dimensionLEOne_of_ringEquiv
    {A B : Type*} [CommRing A] [CommRing B]
    (e : A ≃+* B) (hB : Ring.DimensionLEOne B) :
    Ring.DimensionLEOne A := by
  letI : Ring.DimensionLEOne B := hB
  constructor
  intro p hp hpprime
  let q : Ideal B := Ideal.map e.toRingHom p
  have hker : RingHom.ker e.toRingHom = ⊥ :=
    (RingHom.injective_iff_ker_eq_bot e.toRingHom).mp e.injective
  haveI : q.IsPrime := by
    apply Ideal.map_isPrime_of_surjective e.surjective
    change RingHom.ker e.toRingHom ≤ p
    rw [hker]
    exact bot_le
  have hq : q ≠ ⊥ := by
    intro hzero
    apply hp
    apply le_antisymm _ bot_le
    intro a ha
    have hm : e a ∈ q := Ideal.mem_map_of_mem e.toRingHom ha
    rw [hzero] at hm
    exact Ideal.mem_bot.mpr
      (e.injective (by simpa only [map_zero] using (Ideal.mem_bot.mp hm)))
  haveI : q.IsMaximal := Ring.DimensionLEOne.maximalOfPrime hq inferInstance
  have hcomap : Ideal.comap e.toRingHom q = p := by
    simp only [q, Ideal.comap_map_of_surjective
      e.toRingHom e.surjective,
      ← RingHom.ker_eq_comap_bot, hker, sup_bot_eq]
  rw [← hcomap]
  exact Ideal.comap_isMaximal_of_surjective e.toRingHom e.surjective

/-- Equivalence of local rings transports the same dimension and
maximal-ideal generator alternatives as the `Z = 1` certificate. -/
theorem localParameters_of_ringEquiv
    {A B : Type*} [CommRing A] [CommRing B]
    [LocalRing A] [LocalRing B] (e : A ≃+* B)
    (hB : IsNoetherianRing B ∧
      ((Ring.DimensionLEOne B ∧
          (LocalRing.maximalIdeal B).IsPrincipal) ∨
       (ringKrullDim B = 1 ∧
          (LocalRing.maximalIdeal B).IsPrincipal) ∨
       (ringKrullDim B = 2 ∧
          ∃ a b : B, LocalRing.maximalIdeal B = Ideal.span {a, b}))) :
    IsNoetherianRing A ∧
      ((Ring.DimensionLEOne A ∧
          (LocalRing.maximalIdeal A).IsPrincipal) ∨
       (ringKrullDim A = 1 ∧
          (LocalRing.maximalIdeal A).IsPrincipal) ∨
       (ringKrullDim A = 2 ∧
          ∃ a b : A, LocalRing.maximalIdeal A = Ideal.span {a, b})) := by
  letI : IsNoetherianRing B := hB.1
  haveI : IsNoetherianRing A :=
    isNoetherianRing_of_surjective B A e.symm.toRingHom e.symm.surjective
  refine ⟨inferInstance, ?_⟩
  rcases hB.2 with ⟨hDim, hp⟩ | ⟨hDim, hp⟩ | ⟨hDim, a, b, hmax⟩
  · exact Or.inl ⟨dimensionLEOne_of_ringEquiv e hDim,
      maximalIdeal_principal_of_ringEquiv e hp⟩
  · exact Or.inr (Or.inl ⟨(ringKrullDim_eq_of_ringEquiv e).trans hDim,
      maximalIdeal_principal_of_ringEquiv e hp⟩)
  · right
    right
    have hI' : (Ideal.comap e.toRingHom
        (LocalRing.maximalIdeal B)).IsMaximal :=
      Ideal.comap_isMaximal_of_surjective e.toRingHom e.surjective
    have hmaxmap : Ideal.map e.symm.toRingHom
        (LocalRing.maximalIdeal B) = LocalRing.maximalIdeal A := by
      have hI : (Ideal.map e.symm.toRingHom
          (LocalRing.maximalIdeal B)).IsMaximal :=
        (Ideal.comap_symm (LocalRing.maximalIdeal B) e.symm) ▸ hI'
      exact LocalRing.eq_maximalIdeal hI
    refine ⟨(ringKrullDim_eq_of_ringEquiv e).trans hDim,
      e.symm a, e.symm b, ?_⟩
    calc
      LocalRing.maximalIdeal A =
          Ideal.map e.symm.toRingHom (LocalRing.maximalIdeal B) :=
        hmaxmap.symm
      _ = Ideal.map e.symm.toRingHom (Ideal.span {a, b}) := by rw [hmax]
      _ = Ideal.span {e.symm a, e.symm b} := by
        rw [Ideal.map_span]
        change Ideal.span
          (e.symm '' ({a, b} : Set B)) =
            Ideal.span {e.symm a, e.symm b}
        simp only [Set.image_insert_eq, Set.image_singleton]

/-- All `Y = 1` primes on the overlap receive the `Z = 1`
local-parameter certificate by an actual equivalence of stalk rings. -/
theorem valOne_splitNode_YChart_overlap_parameters
    (W : WeierstrassCurve ℤ_[2])
    (hnode : ReducedNodalPoint (W.map PadicInt.toZMod)
      (PadicInt.toZMod W.a₃)
      (PadicInt.toZMod (W.a₃ ^ 2 + W.a₄)))
    (hsplit : 3 * PadicInt.toZMod W.a₃ +
      (W.map PadicInt.toZMod).a₂ = 0)
    (hΔ : W.Δ ≠ 0)
    (hval : Padic.valuation (W.Δ : ℚ_[2]) = 1)
    (P : Ideal (projectiveWeierstrassYChartRing W)) [P.IsPrime]
    (hV : (Ideal.Quotient.mk
      (Ideal.span {weierstrassInfinityChartEquation W}))
        (MvPolynomial.X (1 : Fin 2)) ∉ P) :
    let L := Localization.AtPrime P
    IsNoetherianRing L ∧
      ((Ring.DimensionLEOne L ∧
        (LocalRing.maximalIdeal L).IsPrincipal) ∨
       (ringKrullDim L = 1 ∧
        (LocalRing.maximalIdeal L).IsPrincipal) ∨
       (ringKrullDim L = 2 ∧
        ∃ a b : L, LocalRing.maximalIdeal L = Ideal.span {a, b})) := by
  obtain ⟨Q, hQ, _, ⟨e⟩⟩ :=
    projectiveWeierstrass_overlap_prime_local_equiv W P hV
  letI : Q.IsPrime := hQ
  exact localParameters_of_ringEquiv e
    (valOne_splitNode_ZChart_allPrime_parameters W hnode hsplit hΔ hval Q)

/-- Every prime localization of the actual `Y = 1` affine chart
has a Noetherian regular-parameter certificate in the split
valuation-one nodal case, including the two infinity-section primes
and every non-rational prime of the overlap. -/
theorem valOne_splitNode_YChart_allPrime_parameters
    (W : WeierstrassCurve ℤ_[2])
    (hnode : ReducedNodalPoint (W.map PadicInt.toZMod)
      (PadicInt.toZMod W.a₃)
      (PadicInt.toZMod (W.a₃ ^ 2 + W.a₄)))
    (hsplit : 3 * PadicInt.toZMod W.a₃ +
      (W.map PadicInt.toZMod).a₂ = 0)
    (hΔ : W.Δ ≠ 0)
    (hval : Padic.valuation (W.Δ : ℚ_[2]) = 1)
    (P : Ideal (projectiveWeierstrassYChartRing W)) [P.IsPrime] :
    let L := Localization.AtPrime P
    IsNoetherianRing L ∧
      ((Ring.DimensionLEOne L ∧
        (LocalRing.maximalIdeal L).IsPrincipal) ∨
       (ringKrullDim L = 1 ∧
        (LocalRing.maximalIdeal L).IsPrincipal) ∨
       (ringKrullDim L = 2 ∧
        ∃ a b : L, LocalRing.maximalIdeal L = Ideal.span {a, b})) := by
  by_cases hV : (Ideal.Quotient.mk
      (Ideal.span {weierstrassInfinityChartEquation W}))
        (MvPolynomial.X (1 : Fin 2)) ∈ P
  · rcases weierstrassYChart_prime_containing_V_eq_infinityGeneric_or_closed
      W P hV with heq | heq
    · subst P
      have hcert := weierstrassYInfinityGeneric_regular_parameters W
      refine ⟨hcert.1, Or.inr (Or.inl ⟨hcert.2.1, ?_⟩)⟩
      rw [hcert.2.2]
      exact ⟨_, rfl⟩
    · subst P
      have hcert := weierstrassYInfinity_regular_parameters W
      refine ⟨hcert.1, Or.inr (Or.inr ⟨hcert.2.1, _, _, hcert.2.2.1⟩)⟩
  · exact valOne_splitNode_YChart_overlap_parameters
      W hnode hsplit hΔ hval P hV

end Beal.General