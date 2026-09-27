import Beal.«Beal.General».ZChartGenericFibrePrincipal
import Beal.«Beal.General».ZChartNonNodeRegularity
import Beal.«Beal.General».TranslatedZChartNode
import Beal.«Beal.General».ZChartFlatness

/-!
An exhaustive local-parameter certificate for the actual `Z = 1`
chart in the split, valuation-one nodal case. This is about the
affine chart; it does not identify stalks of the projective scheme.
-/

namespace Beal.General

set_option maxHeartbeats 1000000

/-- Every prime of the actual `Z = 1` chart has the appropriate
local-parameter certificate in the split valuation-one case. The
three cases are a generic-fibre prime, the generic special-fibre
prime, and a closed special-fibre prime (node or non-node).
No rationality condition is imposed on any prime quotient. -/
theorem valOne_splitNode_ZChart_allPrime_parameters
    (W : WeierstrassCurve ℤ_[2])
    (hnode : ReducedNodalPoint (W.map PadicInt.toZMod)
      (PadicInt.toZMod W.a₃)
      (PadicInt.toZMod (W.a₃ ^ 2 + W.a₄)))
    (hsplit : 3 * PadicInt.toZMod W.a₃ +
      (W.map PadicInt.toZMod).a₂ = 0)
    (hΔ : W.Δ ≠ 0)
    (hval : Padic.valuation (W.Δ : ℚ_[2]) = 1)
    (Q : Ideal (projectiveWeierstrassZChartRing W)) [Q.IsPrime] :
    let L := Localization.AtPrime Q
    IsNoetherianRing L ∧
      ((Ring.DimensionLEOne L ∧
        (LocalRing.maximalIdeal L).IsPrincipal) ∨
       (ringKrullDim L = 1 ∧
        (LocalRing.maximalIdeal L).IsPrincipal) ∨
       (ringKrullDim L = 2 ∧
        ∃ a b : L, LocalRing.maximalIdeal L = Ideal.span {a, b})) := by
  let R := projectiveWeierstrassZChartRing W
  let L := Localization.AtPrime Q
  haveI : IsNoetherianRing L :=
    projectiveWeierstrassZChart_atPrime_isNoetherian W Q
  refine ⟨inferInstance, ?_⟩
  by_cases h2 : algebraMap ℤ_[2] R 2 ∈ Q
  · let T := localSurfaceCoordinateRing W W.a₃ (W.a₃ ^ 2 + W.a₄)
    let e : R ≃ₐ[ℤ_[2]] T :=
      projectiveWeierstrassZChart_shiftEquiv W W.a₃ (W.a₃ ^ 2 + W.a₄)
    let P' : Ideal T :=
      localSurfaceSpecialFibreIdeal W W.a₃ (W.a₃ ^ 2 + W.a₄)
    haveI : P'.IsPrime := (Ideal.Quotient.isDomain_iff_prime P').mp
      (splitNode_affineSpecialFibre_isDomain W hnode hsplit)
    let P : Ideal R := projectiveWeierstrassZChart_shiftPrime
      W W.a₃ (W.a₃ ^ 2 + W.a₄) P'
    haveI : P.IsPrime := Ideal.comap_isPrime e.toRingEquiv.toRingHom P'
    let q : MvPolynomial (Fin 2) ℤ_[2] →+* R :=
      Ideal.Quotient.mk (Ideal.span {localSurfaceEquation W 0 0})
    have hP : P = Ideal.span {q (MvPolynomial.C (2 : ℤ_[2]))} :=
      projectiveWeierstrassZChart_shiftSpecialFibre_eq_span_two
        W W.a₃ (W.a₃ ^ 2 + W.a₄)
    have hPQ : P ≤ Q := by
      rw [hP]
      apply (Ideal.span_singleton_le_iff_mem Q).mpr
      change algebraMap ℤ_[2] R 2 ∈ Q
      exact h2
    by_cases heq : P = Q
    · subst Q
      have hcert :=
        splitNode_ZChart_specialFibreGeneric_regular_parameters W hnode hsplit
      right
      left
      refine ⟨hcert.2.1, ?_⟩
      rw [hcert.2.2]
      exact ⟨_, rfl⟩
    · have hlt : P < Q := lt_of_le_of_ne hPQ heq
      have hlt' : (Ideal.span
          {q (MvPolynomial.C (2 : ℤ_[2]))} : Ideal R) < Q := by
        simpa only [hP] using hlt
      let C : Ideal T := localSurfaceClosedPoint W W.a₃ (W.a₃ ^ 2 + W.a₄)
      haveI : C.IsMaximal :=
        reducedPoint_hasClosedSurfacePoint W W.a₃
          (W.a₃ ^ 2 + W.a₄) hnode.1
      let N : Ideal R :=
        projectiveWeierstrassZChart_shiftPrime
          W W.a₃ (W.a₃ ^ 2 + W.a₄) C
      haveI : N.IsMaximal := by
        change (Ideal.comap e.toRingEquiv.toRingHom C).IsMaximal
        exact Ideal.comap_isMaximal_of_surjective
          e.toRingEquiv.toRingHom e.surjective
      by_cases hn : N ≤ Q
      · have hNQ : N = Q :=
          Ideal.IsMaximal.eq_of_le inferInstance (‹Q.IsPrime›.ne_top) hn
        subst Q
        have hcert :=
          valOne_ZChart_node_regular_parameters W hnode hΔ hval
        right
        right
        obtain ⟨a, b, hab, _⟩ := hcert.2.2
        exact ⟨hcert.2.1, a, b, hab⟩
      · have hcert :=
          splitNode_ZChart_nonNode_specialPrime_parameters
            W hnode hsplit Q hlt' hn
        right
        right
        obtain ⟨t, ht, hdim⟩ := hcert
        exact ⟨hdim, _, t, ht⟩
  · left
    exact ⟨projectiveWeierstrassZChart_genericPrime_dimensionLEOne
      W Q h2,
      projectiveWeierstrassZChart_genericPrime_maximalIdeal_principal
        W hΔ Q h2⟩

end Beal.General