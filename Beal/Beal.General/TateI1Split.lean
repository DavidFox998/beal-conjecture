import Beal.«Beal.General».TateSplitNode

/-!
The split-node special-fibre equation in the valuation-one branch.
These results isolate the two rational tangent *branches*. The full
fibre retains a cubic term; no Kodaira `I₁` classification or count
of components of a minimal regular model is asserted here.
-/

namespace Beal.General

/-- At a split reduced node the *whole* translated special-fibre
equation is a nodal cubic, not the product of its tangent lines. -/
theorem reducedSplitNode_shift
    (W : WeierstrassCurve (ZMod 2)) (x y : ZMod 2)
    (hnode : ReducedNodalPoint W x y)
    (hcoeff : 3 * x + W.a₂ = 0)
    (u v : ZMod 2) :
    reducedEquation W (x + u) (y + v) =
      v * (v + u) - u ^ 3 := by
  rw [reducedEquation_shift, hnode.1, hnode.2.1,
    hnode.2.2.1, reducedTangentCone_split W x y hnode hcoeff]
  ring

/-- The tangent approximation cannot replace the actual special-fibre
equation: the cubic term is nonzero at `u = 1, v = 0`. -/
theorem reducedSplitNode_not_just_tangent_cone
    (W : WeierstrassCurve (ZMod 2)) (x y : ZMod 2)
    (hnode : ReducedNodalPoint W x y)
    (hcoeff : 3 * x + W.a₂ = 0) :
    reducedEquation W (x + 1) (y + 0) ≠
      reducedTangentCone W x 1 0 := by
  rw [reducedSplitNode_shift W x y hnode hcoeff,
    reducedTangentCone_split W x y hnode hcoeff]
  decide

/-- A characteristic-two node with nonzero mixed coefficient is the
only critical point of the affine Weierstrass equation. -/
theorem reducedNode_unique_critical_point
    (W : WeierstrassCurve (ZMod 2)) (x y s t : ZMod 2)
    (hnode : ReducedNodalPoint W x y)
    (hs : reducedDx W s t = 0)
    (ht : reducedDy W s t = 0) :
    s = x ∧ t = y := by
  have ha : W.a₁ = 1 := by
    have hcases (z : ZMod 2) : z = 0 ∨ z = 1 := by
      fin_cases z <;> simp
    exact (hcases W.a₁).resolve_left hnode.2.2.2
  have htwo : (2 : ZMod 2) = 0 := by decide
  have hst : s + W.a₃ = 0 := by
    simpa [reducedDy, ha, htwo] using ht
  have hxy : x + W.a₃ = 0 := by
    simpa [reducedDy, ha, htwo] using hnode.2.2.1
  have hxs : s = x := add_right_cancel (hst.trans hxy.symm)
  constructor
  · exact hxs
  · have hty : t - (3 * s ^ 2 + W.a₄) = 0 := by
      simpa [reducedDx, ha, htwo] using hs
    have hyy : y - (3 * x ^ 2 + W.a₄) = 0 := by
      simpa [reducedDx, ha, htwo] using hnode.2.1
    rw [hxs] at hty
    exact (sub_eq_zero.mp hty).trans (sub_eq_zero.mp hyy).symm

/-- Valuation one certifies regularity of the total local surface;
the added coefficient hypothesis gives the exact split nodal cubic
in the special fibre. The two facts do not themselves identify its
minimal regular model or Kodaira symbol. -/
theorem valOne_split_node_local_data
    (W : WeierstrassCurve ℤ_[2])
    (hnode : ReducedNodalPoint (W.map PadicInt.toZMod)
      (PadicInt.toZMod W.a₃)
      (PadicInt.toZMod (W.a₃ ^ 2 + W.a₄)))
    (hΔ : W.Δ ≠ 0)
    (hval : Padic.valuation (W.Δ : ℚ_[2]) = 1)
    (hsplit : 3 * PadicInt.toZMod W.a₃ +
      (W.map PadicInt.toZMod).a₂ = 0) :
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
      (∀ t : L, LocalRing.maximalIdeal L ≠ Ideal.span {t}) ∧
      ∀ u v : ZMod 2,
        reducedEquation (W.map PadicInt.toZMod)
          (PadicInt.toZMod W.a₃ + u)
          (PadicInt.toZMod (W.a₃ ^ 2 + W.a₄) + v) =
          v * (v + u) - u ^ 3 := by
  obtain ⟨hdim, hspan, hnon⟩ :=
    valOne_local_surface_regular_parameters W hnode hΔ hval
  exact ⟨hdim, hspan, hnon,
    reducedSplitNode_shift (W.map PadicInt.toZMod)
      (PadicInt.toZMod W.a₃)
      (PadicInt.toZMod (W.a₃ ^ 2 + W.a₄)) hnode hsplit⟩

#print axioms reducedSplitNode_shift
#print axioms reducedSplitNode_not_just_tangent_cone
#print axioms reducedNode_unique_critical_point
#print axioms valOne_split_node_local_data

end Beal.General