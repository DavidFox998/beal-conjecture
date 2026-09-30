import Beal.«Beal.General».TateEvenPolynomialChartBridge

/-!
The `2t` polynomial-to-abstract-chart comparison is the quotient
of the integral divided-equation chart equivalence. No product
overlaps or gluing are used.
-/

namespace Beal.General

set_option synthInstance.maxHeartbeats 200000

/-- Quotient the integral divided-equation chart equivalence by the
base scalar `2`, before comparing with the graded special fibre. -/
noncomputable def quotientTwoChartEquiv
    (W : WeierstrassCurve ℤ_[2]) (x y a b c : ℤ_[2])
    (ha : PadicInt.toZMod W.a₁ = 1)
    (hF : localWeierstrassEquation W x y = 4 * a)
    (hX : W.a₁ * y - (3 * x ^ 2 + 2 * W.a₂ * x + W.a₄) = 2 * b)
    (hY : 2 * y + W.a₁ * x + W.a₃ = 2 * c) := by
  letI : GradedAlgebra
      (centreReesComponent (localSurfaceClosedPoint W x y)) :=
    centreReesGrading (localSurfaceClosedPoint W x y)
  let 𝒜 := centreReesComponent (localSurfaceClosedPoint W x y)
  let R := localSurfaceCoordinateRing W x y
  let q : MvPolynomial (Fin 2) ℤ_[2] →+* R :=
    Ideal.Quotient.mk (Ideal.span {localSurfaceEquation W x y})
  let P := evenNodeTwoChartRing W x a b c
  let p : MvPolynomial (Fin 2) ℤ_[2] →+* P :=
    Ideal.Quotient.mk (Ideal.span {evenNodeTwoChartPolynomial W x a b c})
  let B := localSurfaceCentreTwoAway W x y
  let e : P ≃+* B :=
    evenNodeTwoChartReesAwayEquiv W x y a b c ha hF hX hY
  let t : R := q (MvPolynomial.C 2)
  let b₂ : P := p (MvPolynomial.C 2)
  let β : ℤ_[2] →+* B :=
    (homogeneousScalarAwayHom 𝒜 (localSurfaceCentreReesTwo W x y)).comp
      (q.comp MvPolynomial.C)
  have hb : e b₂ = β 2 := by
    have hs := congrArg (fun h : R →+* B => h t)
      (evenNodeTwoChartToReesAway_surface W x y a b c hF hX hY)
    change (evenNodeTwoChartToReesAway W x y a b c hF hX hY)
        ((evenNodeTwoChartToSurfaceRing W x y a b c hF hX hY) t) =
      homogeneousScalarAwayHom 𝒜
        (localSurfaceCentreReesTwo W x y) t at hs
    rw [evenNodeTwoChartToSurfaceRing_C] at hs
    exact hs
  let J : Ideal P := Ideal.span {b₂}
  let K : Ideal B := Ideal.map β (Ideal.span {(2 : ℤ_[2])})
  have hK : K = J.map e.toRingHom := by
    simp only [K, J, Ideal.map_span, Set.image_singleton]
    exact congrArg (fun z : B => Ideal.span {z}) hb.symm
  exact Ideal.quotientEquiv J K e hK

/-- The quotient-induced map sends either divided-chart coordinate to
the class of its corresponding Rees ratio (`0` is `U`, `1` is `V`). -/
theorem quotientTwoChartEquiv_X
    (W : WeierstrassCurve ℤ_[2]) (x y a b c : ℤ_[2])
    (ha : PadicInt.toZMod W.a₁ = 1)
    (hF : localWeierstrassEquation W x y = 4 * a)
    (hX : W.a₁ * y - (3 * x ^ 2 + 2 * W.a₂ * x + W.a₄) = 2 * b)
    (hY : 2 * y + W.a₁ * x + W.a₃ = 2 * c)
    (i : Fin 2) :
    letI : GradedAlgebra
        (centreReesComponent (localSurfaceClosedPoint W x y)) :=
      centreReesGrading (localSurfaceClosedPoint W x y)
    let P := evenNodeTwoChartRing W x a b c
    let p : MvPolynomial (Fin 2) ℤ_[2] →+* P :=
      Ideal.Quotient.mk (Ideal.span {evenNodeTwoChartPolynomial W x a b c})
    let B := localSurfaceCentreTwoAway W x y
    let q : MvPolynomial (Fin 2) ℤ_[2] →+*
        localSurfaceCoordinateRing W x y :=
      Ideal.Quotient.mk (Ideal.span {localSurfaceEquation W x y})
    let β : ℤ_[2] →+* B :=
      (homogeneousScalarAwayHom
        (centreReesComponent (localSurfaceClosedPoint W x y))
        (localSurfaceCentreReesTwo W x y)).comp (q.comp MvPolynomial.C)
    (quotientTwoChartEquiv W x y a b c ha hF hX hY)
        ((Ideal.Quotient.mk (Ideal.span {p (MvPolynomial.C 2)})) (p (MvPolynomial.X i))) =
      (Ideal.Quotient.mk (Ideal.map β (Ideal.span {(2 : ℤ_[2])})))
        (localSurfaceCentreTwoRatio W x y i) := by
  letI : GradedAlgebra
      (centreReesComponent (localSurfaceClosedPoint W x y)) :=
    centreReesGrading (localSurfaceClosedPoint W x y)
  let P := evenNodeTwoChartRing W x a b c
  let p : MvPolynomial (Fin 2) ℤ_[2] →+* P :=
    Ideal.Quotient.mk (Ideal.span {evenNodeTwoChartPolynomial W x a b c})
  let B := localSurfaceCentreTwoAway W x y
  let q : MvPolynomial (Fin 2) ℤ_[2] →+*
      localSurfaceCoordinateRing W x y :=
    Ideal.Quotient.mk (Ideal.span {localSurfaceEquation W x y})
  let β : ℤ_[2] →+* B :=
    (homogeneousScalarAwayHom
      (centreReesComponent (localSurfaceClosedPoint W x y))
      (localSurfaceCentreReesTwo W x y)).comp (q.comp MvPolynomial.C)
  let K := Ideal.map β (Ideal.span {(2 : ℤ_[2])})
  have he :
      (evenNodeTwoChartReesAwayEquiv W x y a b c ha hF hX hY)
        (p (MvPolynomial.X i)) = localSurfaceCentreTwoRatio W x y i := by
    change (evenNodeTwoReesPolynomialMap W x y) (MvPolynomial.X i) = _
    exact evenNodeTwoReesPolynomialMap_X W x y i
  change (Ideal.Quotient.mk K)
      ((evenNodeTwoChartReesAwayEquiv W x y a b c ha hF hX hY)
        (p (MvPolynomial.X i))) =
    (Ideal.Quotient.mk K) (localSurfaceCentreTwoRatio W x y i)
  rw [he]

/-- The previously chosen `2t` polynomial bridge is precisely the
quotient map of the integral divided-equation presentation. -/
theorem chart_eq_quotient_2t
    (W : WeierstrassCurve ℤ_[2]) (x y a b c : ℤ_[2])
    (ha : PadicInt.toZMod W.a₁ = 1)
    (hF : localWeierstrassEquation W x y = 4 * a)
    (hX : W.a₁ * y - (3 * x ^ 2 + 2 * W.a₂ * x + W.a₄) = 2 * b)
    (hY : 2 * y + W.a₁ * x + W.a₃ = 2 * c) :
    letI : GradedAlgebra
        (centreReesComponent (localSurfaceClosedPoint W x y)) :=
      centreReesGrading (localSurfaceClosedPoint W x y)
    let 𝒜 := centreReesComponent (localSurfaceClosedPoint W x y)
    let I := localSurfaceCentreReesSpecialIdeal W x y
    letI : GradedAlgebra (homogeneousQuotientComponent 𝒜 I) :=
      homogeneousQuotientGrading 𝒜 I
        (localSurfaceCentreReesSpecialIdeal_isHomogeneous W x y)
    twoPolynomialToAbstract W x y a b c ha hF hX hY =
      quotientTwoChartEquiv W x y a b c ha hF hX hY := by
  letI : GradedAlgebra
      (centreReesComponent (localSurfaceClosedPoint W x y)) :=
    centreReesGrading (localSurfaceClosedPoint W x y)
  let 𝒜 := centreReesComponent (localSurfaceClosedPoint W x y)
  let I := localSurfaceCentreReesSpecialIdeal W x y
  letI : GradedAlgebra (homogeneousQuotientComponent 𝒜 I) :=
    homogeneousQuotientGrading 𝒜 I
      (localSurfaceCentreReesSpecialIdeal_isHomogeneous W x y)
  apply RingEquiv.ext
  intro z
  change (localSurfaceCentreGeneratorQuotientRingEquiv W x y 0).symm
      ((evenNodeTwoChartMod2Equiv W x y a b c ha hF hX hY) z) =
    (quotientTwoChartEquiv W x y a b c ha hF hX hY) z
  change (localSurfaceCentreGeneratorQuotientRingEquiv W x y 0).symm
      ((quotientTwoChartEquiv W x y a b c ha hF hX hY).trans
        (localSurfaceCentreGeneratorQuotientRingEquiv W x y 0) z) =
      (quotientTwoChartEquiv W x y a b c ha hF hX hY) z
  rw [RingEquiv.trans_apply]
  exact RingEquiv.symm_apply_apply _ _

/-- The chosen chart bridge also sends `U` and `V` to their Rees
ratio classes modulo `2`. -/
theorem twoPolynomialToAbstract_X
    (W : WeierstrassCurve ℤ_[2]) (x y a b c : ℤ_[2])
    (ha : PadicInt.toZMod W.a₁ = 1)
    (hF : localWeierstrassEquation W x y = 4 * a)
    (hX : W.a₁ * y - (3 * x ^ 2 + 2 * W.a₂ * x + W.a₄) = 2 * b)
    (hY : 2 * y + W.a₁ * x + W.a₃ = 2 * c)
    (i : Fin 2) :
    letI : GradedAlgebra
        (centreReesComponent (localSurfaceClosedPoint W x y)) :=
      centreReesGrading (localSurfaceClosedPoint W x y)
    let 𝒜 := centreReesComponent (localSurfaceClosedPoint W x y)
    let I := localSurfaceCentreReesSpecialIdeal W x y
    letI : GradedAlgebra (homogeneousQuotientComponent 𝒜 I) :=
      homogeneousQuotientGrading 𝒜 I
        (localSurfaceCentreReesSpecialIdeal_isHomogeneous W x y)
    let P := evenNodeTwoChartRing W x a b c
    let p : MvPolynomial (Fin 2) ℤ_[2] →+* P :=
      Ideal.Quotient.mk (Ideal.span {evenNodeTwoChartPolynomial W x a b c})
    let B := localSurfaceCentreTwoAway W x y
    let q : MvPolynomial (Fin 2) ℤ_[2] →+*
        localSurfaceCoordinateRing W x y :=
      Ideal.Quotient.mk (Ideal.span {localSurfaceEquation W x y})
    let β : ℤ_[2] →+* B :=
      (homogeneousScalarAwayHom 𝒜 (localSurfaceCentreReesTwo W x y)).comp
        (q.comp MvPolynomial.C)
    (twoPolynomialToAbstract W x y a b c ha hF hX hY)
        ((Ideal.Quotient.mk (Ideal.span {p (MvPolynomial.C 2)})) (p (MvPolynomial.X i))) =
      (Ideal.Quotient.mk (Ideal.map β (Ideal.span {(2 : ℤ_[2])})))
        (localSurfaceCentreTwoRatio W x y i) := by
  letI : GradedAlgebra
      (centreReesComponent (localSurfaceClosedPoint W x y)) :=
    centreReesGrading (localSurfaceClosedPoint W x y)
  let 𝒜 := centreReesComponent (localSurfaceClosedPoint W x y)
  let I := localSurfaceCentreReesSpecialIdeal W x y
  letI : GradedAlgebra (homogeneousQuotientComponent 𝒜 I) :=
    homogeneousQuotientGrading 𝒜 I
      (localSurfaceCentreReesSpecialIdeal_isHomogeneous W x y)
  rw [chart_eq_quotient_2t W x y a b c ha hF hX hY]
  exact quotientTwoChartEquiv_X W x y a b c ha hF hX hY i

#print axioms chart_eq_quotient_2t
#print axioms quotientTwoChartEquiv_X
#print axioms twoPolynomialToAbstract_X

end Beal.General