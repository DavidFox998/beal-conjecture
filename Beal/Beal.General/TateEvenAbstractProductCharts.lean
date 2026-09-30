import Beal.«Beal.General».TateEvenPolynomialChartBridge

/-!
Keep the product-overlap comparison and restriction separately typed.
Neither declaration introduces a polynomial quotient for a product.
-/

namespace Beal.General

set_option synthInstance.maxHeartbeats 200000

/-- The independently defined product quotient's comparison with
the degree-zero localization of the reduced Rees algebra. -/
noncomputable abbrev localSurfaceProductComparison
    (W : WeierstrassCurve ℤ_[2]) (x y : ℤ_[2])
    (i j : Fin 3) :=
  letI : GradedAlgebra
      (centreReesComponent (localSurfaceClosedPoint W x y)) :=
    centreReesGrading (localSurfaceClosedPoint W x y)
  let 𝒜 := centreReesComponent (localSurfaceClosedPoint W x y)
  let I := localSurfaceCentreReesSpecialIdeal W x y
  letI : GradedAlgebra (homogeneousQuotientComponent 𝒜 I) :=
    homogeneousQuotientGrading 𝒜 I
      (localSurfaceCentreReesSpecialIdeal_isHomogeneous W x y)
  let q : MvPolynomial (Fin 2) ℤ_[2] →+*
      localSurfaceCoordinateRing W x y :=
    Ideal.Quotient.mk (Ideal.span {localSurfaceEquation W x y})
  let f := localSurfaceCentreReesGenerator W x y i
  let g := localSurfaceCentreReesGenerator W x y j
  homogeneousTwoAdicAwayQuotientEquiv_any 𝒜
    (q.comp MvPolynomial.C) I
    (localSurfaceCentreReesSpecialIdeal_isHomogeneous W x y)
    (by rfl) (f * g) (1 + 1)
    (SetLike.GradedMul.mul_mem
      (localSurfaceCentreReesGenerator_mem_degree_one W x y i)
      (localSurfaceCentreReesGenerator_mem_degree_one W x y j))

/-- Actual restriction of reduced degree-zero Rees chart rings. -/
noncomputable abbrev localSurfaceReducedToProduct
    (W : WeierstrassCurve ℤ_[2]) (x y : ℤ_[2])
    (i j : Fin 3) :=
  letI : GradedAlgebra
      (centreReesComponent (localSurfaceClosedPoint W x y)) :=
    centreReesGrading (localSurfaceClosedPoint W x y)
  let 𝒜 := centreReesComponent (localSurfaceClosedPoint W x y)
  let I := localSurfaceCentreReesSpecialIdeal W x y
  letI : GradedAlgebra (homogeneousQuotientComponent 𝒜 I) :=
    homogeneousQuotientGrading 𝒜 I
      (localSurfaceCentreReesSpecialIdeal_isHomogeneous W x y)
  let ℬ := homogeneousQuotientComponent 𝒜 I
  let qI := Ideal.Quotient.mk I
  let f := localSurfaceCentreReesGenerator W x y i
  let g := localSurfaceCentreReesGenerator W x y j
  let hfq : qI f ∈ ℬ 1 :=
    Submodule.mem_map.mpr
      ⟨f, localSurfaceCentreReesGenerator_mem_degree_one W x y i, rfl⟩
  let hgq : qI g ∈ ℬ 1 :=
    Submodule.mem_map.mpr
      ⟨g, localSurfaceCentreReesGenerator_mem_degree_one W x y j, rfl⟩
  @homogeneousLocalization_toProduct
    (localSurfaceCoordinateRing W x y)
    (localSurfaceCentreRees W x y ⧸ I) _ _ _
    ℬ (homogeneousQuotientGrading 𝒜 I
      (localSurfaceCentreReesSpecialIdeal_isHomogeneous W x y))
    (qI f) (qI g) 1 hfq hgq

#print axioms localSurfaceProductComparison
#print axioms localSurfaceReducedToProduct

end Beal.General