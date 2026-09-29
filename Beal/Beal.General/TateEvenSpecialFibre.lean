import Beal.«Beal.General».TateEvenGenericFibre
import Beal.«Beal.General».ProjectiveFibreChartBaseChange

/-!
The special fibre of the actual surface-centre Rees blow-up. The
scheme-theoretic fibre is formed by pulling back its structural map
along the residue-field morphism. On each Rees basic chart, base
change is reduction of the *actual* degree-zero chart ring by `2`.
No reducedness or resolution claim follows from this calculation.
-/

namespace Beal.General

open AlgebraicGeometry CategoryTheory CategoryTheory.Limits

/-- The actual special fibre of the surface-centre Rees `Proj`. -/
noncomputable def localSurfaceCentreSpecialFibreScheme
    (W : WeierstrassCurve ℤ_[2]) (x y : ℤ_[2]) : Scheme :=
  pullback (localSurfaceCentreReesToBase W x y)
    (Spec.map (CommRingCat.ofHom
      (PadicInt.toZMod : ℤ_[2] →+* ZMod 2)))

/-- For an affine chart over the 2-adic base, its actual pullback
along the residue-field point is the affine quotient by the image
of `2`. This does not replace the structural map by a different
map merely because the chart rings happen to be isomorphic. -/
noncomputable def twoAdicChartSpecialFibreIso
    {X : Scheme} {B : Type} [CommRing B]
    (U : X.Opens) (π : X ⟶ Spec (CommRingCat.of ℤ_[2]))
    (e : U.toScheme ≅ Spec (CommRingCat.of B))
    (β : ℤ_[2] →+* B)
    (h : U.ι ≫ π =
      e.hom ≫ Spec.map (CommRingCat.ofHom β)) :
    letI : Algebra ℤ_[2] B := β.toAlgebra
    pullback (U.ι ≫ π)
      (Spec.map (CommRingCat.ofHom
        (PadicInt.toZMod : ℤ_[2] →+* ZMod 2))) ≅
      Spec (CommRingCat.of
        (B ⧸ Ideal.map β (Ideal.span {(2 : ℤ_[2])}))) := by
  letI : Algebra ℤ_[2] B := β.toAlgebra
  let residue := Spec.map (CommRingCat.ofHom
    (PadicInt.toZMod : ℤ_[2] →+* ZMod 2))
  let quotient := Spec.map (CommRingCat.ofHom
    (Ideal.Quotient.mk (Ideal.span {(2 : ℤ_[2])})))
  let chartBase := Spec.map (CommRingCat.ofHom β)
  let z := pullback.map (U.ι ≫ π) residue
    (U.ι ≫ π) quotient (𝟙 _)
    (Scheme.Spec.mapIso
      (twoAdicResidueQuotientEquiv.toCommRingCatIso.op)).hom
    (𝟙 _) (by simp) (by simpa only using twoAdicResidueSpecMap)
  let c := pullback.map (U.ι ≫ π) quotient chartBase quotient
    e.hom (𝟙 _) (𝟙 _) h (by simp)
  haveI : IsIso z := inferInstance
  haveI : IsIso c := inferInstance
  exact (asIso z).trans (asIso c) |>.trans
    ((pullbackSpecIso ℤ_[2] B
      (ℤ_[2] ⧸ Ideal.span {(2 : ℤ_[2])})).trans
      (Scheme.Spec.mapIso
        ((affineFibreTensorRingEquiv
          (R := ℤ_[2]) (S := B)
          (Ideal.span {(2 : ℤ_[2])})).symm.toCommRingCatIso.op)))

/-- The chosen Rees `D₊(2t)` chart is mapped to the base by its
original scalar map followed by the surface coefficient map. -/
theorem localSurfaceCentreTwo_toBase
    (W : WeierstrassCurve ℤ_[2]) (x y : ℤ_[2]) :
    let R := localSurfaceCoordinateRing W x y
    let q : MvPolynomial (Fin 2) ℤ_[2] →+* R :=
      Ideal.Quotient.mk (Ideal.span {localSurfaceEquation W x y})
    letI : GradedAlgebra
        (centreReesComponent (localSurfaceClosedPoint W x y)) :=
      centreReesGrading (localSurfaceClosedPoint W x y)
    let U : (localSurfaceCentreReesProj W x y).Opens :=
      ProjectiveSpectrum.basicOpen
        (centreReesComponent (localSurfaceClosedPoint W x y))
        (localSurfaceCentreReesTwo W x y)
    U.ι ≫ localSurfaceCentreReesToBase W x y =
      (localSurfaceCentreTwoBasicSchemeIso W x y).hom ≫
        Spec.map (CommRingCat.ofHom
          ((homogeneousScalarAwayHom
            (centreReesComponent (localSurfaceClosedPoint W x y))
            (localSurfaceCentreReesTwo W x y)).comp
              (q.comp MvPolynomial.C))) := by
  letI : GradedAlgebra
      (centreReesComponent (localSurfaceClosedPoint W x y)) :=
    centreReesGrading (localSurfaceClosedPoint W x y)
  dsimp only
  change _ ≫ (localSurfaceCentreReesToSurface W x y ≫
    Spec.map (CommRingCat.ofHom
      ((Ideal.Quotient.mk
        (Ideal.span {localSurfaceEquation W x y})).comp MvPolynomial.C))) = _
  rw [← Category.assoc, localSurfaceCentreReesToSurface_onTwo]
  rw [Category.assoc, ← Spec.map_comp]
  rfl

/-- The actual special fibre restricted to `D₊(2t)` is the
affine closed fibre of the genuine Rees chart ring. -/
noncomputable def localSurfaceCentreTwoSpecialFibreIso
    (W : WeierstrassCurve ℤ_[2]) (x y : ℤ_[2]) :
    let R := localSurfaceCoordinateRing W x y
    let q : MvPolynomial (Fin 2) ℤ_[2] →+* R :=
      Ideal.Quotient.mk (Ideal.span {localSurfaceEquation W x y})
    letI : GradedAlgebra
        (centreReesComponent (localSurfaceClosedPoint W x y)) :=
      centreReesGrading (localSurfaceClosedPoint W x y)
    let U : (localSurfaceCentreReesProj W x y).Opens :=
      ProjectiveSpectrum.basicOpen
        (centreReesComponent (localSurfaceClosedPoint W x y))
        (localSurfaceCentreReesTwo W x y)
    let B := localSurfaceCentreTwoAway W x y
    let β : ℤ_[2] →+* B :=
      (homogeneousScalarAwayHom
        (centreReesComponent (localSurfaceClosedPoint W x y))
        (localSurfaceCentreReesTwo W x y)).comp
          (q.comp MvPolynomial.C)
    pullback (U.ι ≫ localSurfaceCentreReesToBase W x y)
      (Spec.map (CommRingCat.ofHom
        (PadicInt.toZMod : ℤ_[2] →+* ZMod 2))) ≅
      Spec (CommRingCat.of
        (B ⧸ Ideal.map β (Ideal.span {(2 : ℤ_[2])}))) := by
  letI : GradedAlgebra
      (centreReesComponent (localSurfaceClosedPoint W x y)) :=
    centreReesGrading (localSurfaceClosedPoint W x y)
  exact twoAdicChartSpecialFibreIso
    (ProjectiveSpectrum.basicOpen
      (centreReesComponent (localSurfaceClosedPoint W x y))
      (localSurfaceCentreReesTwo W x y))
    (localSurfaceCentreReesToBase W x y)
    (localSurfaceCentreTwoBasicSchemeIso W x y)
    ((homogeneousScalarAwayHom
      (centreReesComponent (localSurfaceClosedPoint W x y))
      (localSurfaceCentreReesTwo W x y)).comp
        ((Ideal.Quotient.mk
          (Ideal.span {localSurfaceEquation W x y})).comp
          MvPolynomial.C))
    (localSurfaceCentreTwo_toBase W x y)

/-- The three basic opens cover the actual surface-centre Rees scheme. -/
noncomputable def localSurfaceCentreReesOpenCover
    (W : WeierstrassCurve ℤ_[2]) (x y : ℤ_[2]) :
    (localSurfaceCentreReesProj W x y).OpenCover := by
  letI : GradedAlgebra
      (centreReesComponent (localSurfaceClosedPoint W x y)) :=
    centreReesGrading (localSurfaceClosedPoint W x y)
  exact (localSurfaceCentreReesProj W x y).openCoverOfISupEqTop
    (fun i : Fin 3 => ProjectiveSpectrum.basicOpen
      (centreReesComponent (localSurfaceClosedPoint W x y))
      (localSurfaceCentreReesGenerator W x y i))
    (localSurfaceCentreReesGenerator_cover W x y)

/-- The pulled-back three-chart cover covers the entire actual
scheme-theoretic special fibre, including any components invisible
on the `D₊(2t)` chart. -/
noncomputable def localSurfaceCentreSpecialFibreOpenCover
    (W : WeierstrassCurve ℤ_[2]) (x y : ℤ_[2]) :
    (localSurfaceCentreSpecialFibreScheme W x y).OpenCover := by
  exact (localSurfaceCentreReesOpenCover W x y).pullbackCover'
    (pullback.fst (localSurfaceCentreReesToBase W x y)
      (Spec.map (CommRingCat.ofHom
        (PadicInt.toZMod : ℤ_[2] →+* ZMod 2))))

/-- Every Rees generator chart maps to the 2-adic base through
its actual degree-zero scalar map. -/
theorem localSurfaceCentreGenerator_toBase
    (W : WeierstrassCurve ℤ_[2]) (x y : ℤ_[2]) (i : Fin 3) :
    let R := localSurfaceCoordinateRing W x y
    let q : MvPolynomial (Fin 2) ℤ_[2] →+* R :=
      Ideal.Quotient.mk (Ideal.span {localSurfaceEquation W x y})
    letI : GradedAlgebra
        (centreReesComponent (localSurfaceClosedPoint W x y)) :=
      centreReesGrading (localSurfaceClosedPoint W x y)
    let 𝒜 := centreReesComponent (localSurfaceClosedPoint W x y)
    let f := localSurfaceCentreReesGenerator W x y i
    let U : (localSurfaceCentreReesProj W x y).Opens :=
      ProjectiveSpectrum.basicOpen 𝒜 f
    U.ι ≫ localSurfaceCentreReesToBase W x y =
      (localSurfaceCentreGeneratorBasicSchemeIso W x y i).hom ≫
        Spec.map (CommRingCat.ofHom
          ((homogeneousScalarAwayHom 𝒜 f).comp
            (q.comp MvPolynomial.C))) := by
  letI : GradedAlgebra
      (centreReesComponent (localSurfaceClosedPoint W x y)) :=
    centreReesGrading (localSurfaceClosedPoint W x y)
  change _ ≫ (localSurfaceCentreReesToSurface W x y ≫
    Spec.map (CommRingCat.ofHom
      ((Ideal.Quotient.mk
        (Ideal.span {localSurfaceEquation W x y})).comp MvPolynomial.C))) = _
  rw [← Category.assoc,
    localSurfaceCentreGeneratorBasicSchemeIso_baseMap W x y i]
  rw [Category.assoc, ← Spec.map_comp]
  rfl

/-- On each of the three actual Rees charts, the special fibre is
the quotient of its genuine degree-zero coordinate ring by the
base uniformizer. This requires no assumptions on nilpotents or
nonvanishing powers of a denominator in the quotient Rees ring. -/
noncomputable def localSurfaceCentreGeneratorSpecialFibreIso
    (W : WeierstrassCurve ℤ_[2]) (x y : ℤ_[2]) (i : Fin 3) :
    let R := localSurfaceCoordinateRing W x y
    let q : MvPolynomial (Fin 2) ℤ_[2] →+* R :=
      Ideal.Quotient.mk (Ideal.span {localSurfaceEquation W x y})
    letI : GradedAlgebra
        (centreReesComponent (localSurfaceClosedPoint W x y)) :=
      centreReesGrading (localSurfaceClosedPoint W x y)
    let 𝒜 := centreReesComponent (localSurfaceClosedPoint W x y)
    let f := localSurfaceCentreReesGenerator W x y i
    let U : (localSurfaceCentreReesProj W x y).Opens :=
      ProjectiveSpectrum.basicOpen 𝒜 f
    let B := HomogeneousLocalization.Away 𝒜 f
    let β : ℤ_[2] →+* B :=
      (homogeneousScalarAwayHom 𝒜 f).comp (q.comp MvPolynomial.C)
    pullback (U.ι ≫ localSurfaceCentreReesToBase W x y)
      (Spec.map (CommRingCat.ofHom
        (PadicInt.toZMod : ℤ_[2] →+* ZMod 2))) ≅
      Spec (CommRingCat.of
        (B ⧸ Ideal.map β (Ideal.span {(2 : ℤ_[2])}))) := by
  letI : GradedAlgebra
      (centreReesComponent (localSurfaceClosedPoint W x y)) :=
    centreReesGrading (localSurfaceClosedPoint W x y)
  exact twoAdicChartSpecialFibreIso
    (ProjectiveSpectrum.basicOpen
      (centreReesComponent (localSurfaceClosedPoint W x y))
      (localSurfaceCentreReesGenerator W x y i))
    (localSurfaceCentreReesToBase W x y)
    (localSurfaceCentreGeneratorBasicSchemeIso W x y i)
    ((homogeneousScalarAwayHom
      (centreReesComponent (localSurfaceClosedPoint W x y))
      (localSurfaceCentreReesGenerator W x y i)).comp
        ((Ideal.Quotient.mk
          (Ideal.span {localSurfaceEquation W x y})).comp
          MvPolynomial.C))
    (localSurfaceCentreGenerator_toBase W x y i)

/-- The three affine charts are opens of the *global* special fibre
itself. Pullback pasting identifies these with the restricted fibre
products used in the chart-ring comparison. -/
noncomputable def localSurfaceCentreGeneratorFibreOpenSchemeIso
    (W : WeierstrassCurve ℤ_[2]) (x y : ℤ_[2]) (i : Fin 3) :
    let R := localSurfaceCoordinateRing W x y
    let q : MvPolynomial (Fin 2) ℤ_[2] →+* R :=
      Ideal.Quotient.mk (Ideal.span {localSurfaceEquation W x y})
    letI : GradedAlgebra
        (centreReesComponent (localSurfaceClosedPoint W x y)) :=
      centreReesGrading (localSurfaceClosedPoint W x y)
    let 𝒜 := centreReesComponent (localSurfaceClosedPoint W x y)
    let f := localSurfaceCentreReesGenerator W x y i
    let U : (localSurfaceCentreReesProj W x y).Opens :=
      ProjectiveSpectrum.basicOpen 𝒜 f
    let B := HomogeneousLocalization.Away 𝒜 f
    let β : ℤ_[2] →+* B :=
      (homogeneousScalarAwayHom 𝒜 f).comp (q.comp MvPolynomial.C)
    pullback U.ι
        (pullback.fst (localSurfaceCentreReesToBase W x y)
          (Spec.map (CommRingCat.ofHom
            (PadicInt.toZMod : ℤ_[2] →+* ZMod 2)))) ≅
      Spec (CommRingCat.of
        (B ⧸ Ideal.map β (Ideal.span {(2 : ℤ_[2])}))) := by
  letI : GradedAlgebra
      (centreReesComponent (localSurfaceClosedPoint W x y)) :=
    centreReesGrading (localSurfaceClosedPoint W x y)
  exact (pullbackRightPullbackFstIso
    (localSurfaceCentreReesToBase W x y)
    (Spec.map (CommRingCat.ofHom
      (PadicInt.toZMod : ℤ_[2] →+* ZMod 2)))
    (Scheme.Opens.ι (ProjectiveSpectrum.basicOpen
      (centreReesComponent (localSurfaceClosedPoint W x y))
      (localSurfaceCentreReesGenerator W x y i)))).trans
    (localSurfaceCentreGeneratorSpecialFibreIso W x y i)

#print axioms twoAdicChartSpecialFibreIso
#print axioms localSurfaceCentreTwoSpecialFibreIso
#print axioms localSurfaceCentreSpecialFibreOpenCover
#print axioms localSurfaceCentreGeneratorSpecialFibreIso
#print axioms localSurfaceCentreGeneratorFibreOpenSchemeIso

end Beal.General