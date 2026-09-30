import Beal.«Beal.General».TateEvenPolynomialChartBridge

/-!
The `Xt` chart uses the exact denominator-saturated ratio relations,
not just the finite graph equations. Compare its polynomial mod-2
presentation with the quotient of the integral `Xt` Rees chart.
-/

namespace Beal.General

set_option synthInstance.maxHeartbeats 200000

/-- The relation ideal of the `Xt` source is the saturation by the
`X` denominator. This is the same ideal used in its integral chart
equivalence and in its mod-2 quotient. -/
theorem XtRelations_saturation
    (W : WeierstrassCurve ℤ_[2]) (x y : ℤ_[2])
    (p : MvPolynomial (Fin 3) (localSurfaceCoordinateRing W x y)) :
    let q : MvPolynomial (Fin 2) ℤ_[2] →+*
        localSurfaceCoordinateRing W x y :=
      Ideal.Quotient.mk (Ideal.span {localSurfaceEquation W x y})
    p ∈ localSurfaceCentreCoordinateRelations W x y 0 ↔
      ∃ n : ℕ, (MvPolynomial.C (q (MvPolynomial.X 0))) ^ n * p ∈
        centreReesRatioGraphIdeal (localSurfaceCentreScalars W x y)
          (q (MvPolynomial.X 0)) :=
  localSurfaceCentreCoordinateRelations_saturation W x y 0 p

#print axioms XtRelations_saturation

/-- The quotient of the integral saturated `Xt` chart presentation
by the base scalar `2`, before comparison with the reduced Rees chart. -/
noncomputable def quotientXtChartEquiv
    (W : WeierstrassCurve ℤ_[2]) (x y : ℤ_[2]) :
    letI : GradedAlgebra
        (centreReesComponent (localSurfaceClosedPoint W x y)) :=
      centreReesGrading (localSurfaceClosedPoint W x y)
    let 𝒜 := centreReesComponent (localSurfaceClosedPoint W x y)
    let R := localSurfaceCoordinateRing W x y
    let q : MvPolynomial (Fin 2) ℤ_[2] →+* R :=
      Ideal.Quotient.mk (Ideal.span {localSurfaceEquation W x y})
    let f := localSurfaceCentreReesCoordinate W x y 0
    let β : ℤ_[2] →+* HomogeneousLocalization.Away 𝒜 f :=
      (homogeneousScalarAwayHom 𝒜 f).comp (q.comp MvPolynomial.C)
    localSurfaceCentreCoordinateMod2Ring W x y 0 ≃+*
      (HomogeneousLocalization.Away 𝒜 f ⧸
        Ideal.map β (Ideal.span {(2 : ℤ_[2])})) := by
  letI : GradedAlgebra
      (centreReesComponent (localSurfaceClosedPoint W x y)) :=
    centreReesGrading (localSurfaceClosedPoint W x y)
  let 𝒜 := centreReesComponent (localSurfaceClosedPoint W x y)
  let R := localSurfaceCoordinateRing W x y
  let q : MvPolynomial (Fin 2) ℤ_[2] →+* R :=
    Ideal.Quotient.mk (Ideal.span {localSurfaceEquation W x y})
  let t : R := q (MvPolynomial.C 2)
  let B := HomogeneousLocalization.Away 𝒜
    (localSurfaceCentreReesCoordinate W x y 0)
  let P := MvPolynomial (Fin 3) R ⧸
    localSurfaceCentreCoordinateRelations W x y 0
  let e : P ≃+* B := localSurfaceCentreCoordinateQuotientEquiv W x y 0
  let b : P := localSurfaceCentreCoordinateToSurfaceRing W x y 0 t
  let β : ℤ_[2] →+* B :=
    (homogeneousScalarAwayHom 𝒜
      (localSurfaceCentreReesCoordinate W x y 0)).comp
      (q.comp MvPolynomial.C)
  have hb : e b = β 2 := by
    have hs := congrArg (fun h : R →+* B => h t)
      (localSurfaceCentreCoordinateQuotientEquiv_surface W x y 0)
    exact hs
  let J : Ideal P := Ideal.span {b}
  let K : Ideal B := Ideal.map β (Ideal.span {(2 : ℤ_[2])})
  have hK : K = J.map e.toRingHom := by
    simp only [K, J, Ideal.map_span, Set.image_singleton]
    exact congrArg (fun z : B => Ideal.span {z}) hb.symm
  exact Ideal.quotientEquiv J K e hK

#print axioms quotientXtChartEquiv

/-- Cancelling the special-fibre comparison leaves exactly the
quotient-induced chart equivalence. -/
theorem quotientChart_cancel
    {P S T : Type*} [CommRing P] [CommRing S] [CommRing T]
    (q : P ≃+* S) (e : S ≃+* T) :
    (q.trans e).trans e.symm = q := by
  ext z
  simp only [RingEquiv.trans_apply, RingEquiv.symm_apply_apply]

/-- The saturated `Xt` quotient equivalence is recovered by cancelling
the final comparison to the reduced Rees chart. -/
noncomputable abbrev chart_eq_quotient_Xt
    (W : WeierstrassCurve ℤ_[2]) (x y : ℤ_[2]) := by
  letI : GradedAlgebra
      (centreReesComponent (localSurfaceClosedPoint W x y)) :=
    centreReesGrading (localSurfaceClosedPoint W x y)
  let 𝒜 := centreReesComponent (localSurfaceClosedPoint W x y)
  let I := localSurfaceCentreReesSpecialIdeal W x y
  letI : GradedAlgebra (homogeneousQuotientComponent 𝒜 I) :=
    homogeneousQuotientGrading 𝒜 I
      (localSurfaceCentreReesSpecialIdeal_isHomogeneous W x y)
  have h := quotientChart_cancel (quotientXtChartEquiv W x y)
    (localSurfaceCentreGeneratorQuotientRingEquiv W x y 1)
  exact (show coordinatePolynomialToAbstract W x y 0 =
    quotientXtChartEquiv W x y from h)

#print axioms chart_eq_quotient_Xt

end Beal.General