import Beal.«Beal.General».TateEvenPolynomialOverlapTransport

/-!
Polynomial charts mapped to their abstract reduced Rees charts.
The product-overlap targets remain abstract.
-/

namespace Beal.General

set_option synthInstance.maxHeartbeats 200000

/-- The coordinate polynomial presentation, viewed as the actual
mod-2 quotient of the integral coordinate Rees chart. -/
noncomputable abbrev coordinatePolynomialToAbstract
    (W : WeierstrassCurve ℤ_[2]) (x y : ℤ_[2]) (i : Fin 2) :=
  letI : GradedAlgebra
      (centreReesComponent (localSurfaceClosedPoint W x y)) :=
    centreReesGrading (localSurfaceClosedPoint W x y)
  let 𝒜 := centreReesComponent (localSurfaceClosedPoint W x y)
  let I := localSurfaceCentreReesSpecialIdeal W x y
  letI : GradedAlgebra (homogeneousQuotientComponent 𝒜 I) :=
    homogeneousQuotientGrading 𝒜 I
      (localSurfaceCentreReesSpecialIdeal_isHomogeneous W x y)
  (localSurfaceCentreCoordinateMod2Equiv W x y i).trans
    (localSurfaceCentreGeneratorQuotientRingEquiv W x y i.succ).symm

/-- The divided-equation polynomial presentation, viewed as the
actual mod-2 quotient of the integral `2t` Rees chart. -/
noncomputable abbrev twoPolynomialToAbstract
    (W : WeierstrassCurve ℤ_[2]) (x y a b c : ℤ_[2])
    (ha : PadicInt.toZMod W.a₁ = 1)
    (hF : localWeierstrassEquation W x y = 4 * a)
    (hX : W.a₁ * y - (3 * x ^ 2 + 2 * W.a₂ * x + W.a₄) = 2 * b)
    (hY : 2 * y + W.a₁ * x + W.a₃ = 2 * c) :=
  letI : GradedAlgebra
      (centreReesComponent (localSurfaceClosedPoint W x y)) :=
    centreReesGrading (localSurfaceClosedPoint W x y)
  let 𝒜 := centreReesComponent (localSurfaceClosedPoint W x y)
  let I := localSurfaceCentreReesSpecialIdeal W x y
  letI : GradedAlgebra (homogeneousQuotientComponent 𝒜 I) :=
    homogeneousQuotientGrading 𝒜 I
      (localSurfaceCentreReesSpecialIdeal_isHomogeneous W x y)
  (evenNodeTwoChartMod2Equiv W x y a b c ha hF hX hY).trans
    (localSurfaceCentreGeneratorQuotientRingEquiv W x y 0).symm

/-- The restriction between actual mod-2 affine chart quotients,
induced by inclusion of denominator monoids before quotienting.
Its definition is independent of the graded-quotient comparison. -/
noncomputable abbrev localSurfaceAbstractProductRestriction
    (W : WeierstrassCurve ℤ_[2]) (x y : ℤ_[2])
    (i j : Fin 3) :=
  letI : GradedAlgebra
      (centreReesComponent (localSurfaceClosedPoint W x y)) :=
    centreReesGrading (localSurfaceClosedPoint W x y)
  let 𝒜 := centreReesComponent (localSurfaceClosedPoint W x y)
  let q : MvPolynomial (Fin 2) ℤ_[2] →+*
      localSurfaceCoordinateRing W x y :=
    Ideal.Quotient.mk (Ideal.span {localSurfaceEquation W x y})
  let ρ := q.comp MvPolynomial.C
  let f := localSurfaceCentreReesGenerator W x y i
  let g := localSurfaceCentreReesGenerator W x y j
  let βf := (homogeneousScalarAwayHom 𝒜 f).comp ρ
  let βfg := (homogeneousScalarAwayHom 𝒜 (f * g)).comp ρ
  letI : Algebra ℤ_[2] (HomogeneousLocalization.Away 𝒜 f) :=
    βf.toAlgebra
  letI : Algebra ℤ_[2] (HomogeneousLocalization.Away 𝒜 (f * g)) :=
    βfg.toAlgebra
  affineFibreQuotientMap (Ideal.span {(2 : ℤ_[2])})
    (homogeneousLocalization_toProductTwoAdicAlgHom 𝒜 ρ f g 1
      (localSurfaceCentreReesGenerator_mem_degree_one W x y i)
      (localSurfaceCentreReesGenerator_mem_degree_one W x y j))

/-- Polynomial-coordinate restriction into the abstract product
quotient, defined without reference to the reduced Rees product. -/
noncomputable abbrev coordinatePolynomialToProduct
    (W : WeierstrassCurve ℤ_[2]) (x y : ℤ_[2])
    (i : Fin 2) (j : Fin 3) :=
  (localSurfaceAbstractProductRestriction W x y i.succ j).comp
    (coordinatePolynomialToAbstract W x y i).toRingHom

/-- Divided-equation restriction into the abstract product quotient,
defined without reference to the reduced Rees product. -/
noncomputable abbrev twoPolynomialToProduct
    (W : WeierstrassCurve ℤ_[2]) (x y a b c : ℤ_[2])
    (ha : PadicInt.toZMod W.a₁ = 1)
    (hF : localWeierstrassEquation W x y = 4 * a)
    (hX : W.a₁ * y - (3 * x ^ 2 + 2 * W.a₂ * x + W.a₄) = 2 * b)
    (hY : 2 * y + W.a₁ * x + W.a₃ = 2 * c)
    (j : Fin 3) :=
  (localSurfaceAbstractProductRestriction W x y 0 j).comp
    (twoPolynomialToAbstract W x y a b c ha hF hX hY).toRingHom

/-- `2t` polynomial chart restricted to the `2t·Xt` quotient. -/
noncomputable abbrev resPolynomial_2t_Xt
    (W : WeierstrassCurve ℤ_[2]) (x y a b c : ℤ_[2])
    (ha : PadicInt.toZMod W.a₁ = 1)
    (hF : localWeierstrassEquation W x y = 4 * a)
    (hX : W.a₁ * y - (3 * x ^ 2 + 2 * W.a₂ * x + W.a₄) = 2 * b)
    (hY : 2 * y + W.a₁ * x + W.a₃ = 2 * c) :=
  twoPolynomialToProduct W x y a b c ha hF hX hY 1

/-- `Xt` polynomial chart restricted to the `Xt·2t` quotient. -/
noncomputable abbrev resPolynomial_Xt_2t
    (W : WeierstrassCurve ℤ_[2]) (x y : ℤ_[2]) :=
  coordinatePolynomialToProduct W x y 0 0

/-- `2t` polynomial chart restricted to the `2t·Yt` quotient. -/
noncomputable abbrev resPolynomial_2t_Yt
    (W : WeierstrassCurve ℤ_[2]) (x y a b c : ℤ_[2])
    (ha : PadicInt.toZMod W.a₁ = 1)
    (hF : localWeierstrassEquation W x y = 4 * a)
    (hX : W.a₁ * y - (3 * x ^ 2 + 2 * W.a₂ * x + W.a₄) = 2 * b)
    (hY : 2 * y + W.a₁ * x + W.a₃ = 2 * c) :=
  twoPolynomialToProduct W x y a b c ha hF hX hY 2

/-- `Yt` polynomial chart restricted to the `Yt·2t` quotient. -/
noncomputable abbrev resPolynomial_Yt_2t
    (W : WeierstrassCurve ℤ_[2]) (x y : ℤ_[2]) :=
  coordinatePolynomialToProduct W x y 1 0

/-- `Xt` polynomial chart restricted to the `Xt·Yt` quotient. -/
noncomputable abbrev resPolynomial_Xt_Yt
    (W : WeierstrassCurve ℤ_[2]) (x y : ℤ_[2]) :=
  coordinatePolynomialToProduct W x y 0 2

/-- `Yt` polynomial chart restricted to the `Yt·Xt` quotient. -/
noncomputable abbrev resPolynomial_Yt_Xt
    (W : WeierstrassCurve ℤ_[2]) (x y : ℤ_[2]) :=
  coordinatePolynomialToProduct W x y 1 1

/-- Transporting through a chart equivalence and back fixes the
original polynomial-to-graded comparison. -/
theorem polynomialBridge_comp
    {P S A : Type} [CommRing P] [CommRing S] [CommRing A]
    (eP : P ≃+* A) (eS : S ≃+* A) :
    eS.toRingHom.comp (eP.trans eS.symm).toRingHom =
      eP.toRingHom := by
  apply RingHom.ext
  intro p
  change eS (eS.symm (eP p)) = eP p
  exact eS.apply_symm_apply _

#print axioms coordinatePolynomialToAbstract
#print axioms twoPolynomialToAbstract
#print axioms localSurfaceAbstractProductRestriction
#print axioms coordinatePolynomialToProduct
#print axioms twoPolynomialToProduct
#print axioms resPolynomial_2t_Xt
#print axioms resPolynomial_Xt_2t
#print axioms resPolynomial_2t_Yt
#print axioms resPolynomial_Yt_2t
#print axioms resPolynomial_Xt_Yt
#print axioms resPolynomial_Yt_Xt

end Beal.General