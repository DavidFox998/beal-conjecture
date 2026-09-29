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

/-- The canonical change of residue-field presentation, from
`ZMod 2` to the quotient of the 2-adic integers by `(2)`,
on a pullback over the 2-adic base. -/
noncomputable def twoAdicResiduePullbackToQuotient
    {X : Scheme} (π : X ⟶ Spec (CommRingCat.of ℤ_[2])) :
    pullback π (Spec.map (CommRingCat.ofHom
      (PadicInt.toZMod : ℤ_[2] →+* ZMod 2))) ⟶
    pullback π (Spec.map (CommRingCat.ofHom
      (Ideal.Quotient.mk (Ideal.span {(2 : ℤ_[2])})))) :=
  pullback.map π
    (Spec.map (CommRingCat.ofHom
      (PadicInt.toZMod : ℤ_[2] →+* ZMod 2)))
    π (Spec.map (CommRingCat.ofHom
      (Ideal.Quotient.mk (Ideal.span {(2 : ℤ_[2])}))))
    (𝟙 _) (Scheme.Spec.mapIso
      (twoAdicResidueQuotientEquiv.toCommRingCatIso.op)).hom
    (𝟙 _) (by simp) (by simpa only using twoAdicResidueSpecMap)

/-- Changing the residue presentation commutes with every map of
schemes over the 2-adic base, before making any affine or Proj
chart identification. -/
theorem twoAdicResiduePullbackToQuotient_natural
    {X Y : Scheme}
    (πX : X ⟶ Spec (CommRingCat.of ℤ_[2]))
    (πY : Y ⟶ Spec (CommRingCat.of ℤ_[2]))
    (k : Y ⟶ X) (hk : k ≫ πX = πY) :
    let residue := Spec.map (CommRingCat.ofHom
      (PadicInt.toZMod : ℤ_[2] →+* ZMod 2))
    let quotient := Spec.map (CommRingCat.ofHom
      (Ideal.Quotient.mk (Ideal.span {(2 : ℤ_[2])})))
    let er := pullback.map πY residue πX residue
      k (𝟙 _) (𝟙 _) (by simpa only [Category.comp_id] using hk.symm)
      (by simp)
    let eq := pullback.map πY quotient πX quotient
      k (𝟙 _) (𝟙 _) (by simpa only [Category.comp_id] using hk.symm)
      (by simp)
    er ≫ twoAdicResiduePullbackToQuotient πX =
      twoAdicResiduePullbackToQuotient πY ≫ eq := by
  apply pullback.hom_ext
  · simp only [Category.assoc, twoAdicResiduePullbackToQuotient,
      pullback.map, pullback.lift_fst_assoc, pullback.lift_fst,
      Category.comp_id]
  · simp only [Category.assoc, twoAdicResiduePullbackToQuotient,
      pullback.map, pullback.lift_snd_assoc, pullback.lift_snd,
      Category.comp_id]

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

/-- The quotient-chart map is surjective even when the reduced
denominator is nilpotent: in that case the target localization is
the zero ring. -/
theorem homogeneousQuotientAwayMap_surjective_any
    {R A : Type*} [CommRing R] [CommRing A] [Algebra R A]
    (𝒜 : ℕ → Submodule R A) [GradedAlgebra 𝒜]
    (I : Ideal A) (hI : I.IsHomogeneous 𝒜)
    (f : A) (d : ℕ) (hf : f ∈ 𝒜 d) :
    letI : GradedAlgebra (homogeneousQuotientComponent 𝒜 I) :=
      homogeneousQuotientGrading 𝒜 I hI
    Function.Surjective (homogeneousQuotientAwayMap 𝒜 I hI f) := by
  letI : GradedAlgebra (homogeneousQuotientComponent 𝒜 I) :=
    homogeneousQuotientGrading 𝒜 I hI
  classical
  by_cases hpow : ∀ n : ℕ, (Ideal.Quotient.mk I f) ^ n ≠ 0
  · exact homogeneousQuotientAwayMap_surjective 𝒜 I hI f d hf hpow
  · push_neg at hpow
    obtain ⟨n, hn⟩ := hpow
    have hzero : (0 : A ⧸ I) ∈
        Submonoid.powers (Ideal.Quotient.mk I f) :=
      (Submonoid.mem_powers_iff _ _).mpr ⟨n, hn⟩
    letI : Subsingleton (HomogeneousLocalization.Away
        (homogeneousQuotientComponent 𝒜 I) (Ideal.Quotient.mk I f)) :=
      HomogeneousLocalization.subsingleton
        (homogeneousQuotientComponent 𝒜 I) hzero
    intro z
    exact ⟨0, Subsingleton.elim _ _⟩

/-- Reduction of an integral homogeneous chart by a base scalar is
the corresponding graded-quotient chart, including when the latter
is empty. No denominator-survival assumption is needed. -/
noncomputable def homogeneousQuotientAwayRingEquiv_any
    {R A : Type*} [CommRing R] [CommRing A] [Algebra R A]
    (𝒜 : ℕ → Submodule R A) [GradedAlgebra 𝒜]
    (I : Ideal A) (hI : I.IsHomogeneous 𝒜)
    (t : R) (hgen : I = Ideal.span {algebraMap R A t})
    (f : A) (d : ℕ) (hf : f ∈ 𝒜 d) :
    letI : GradedAlgebra (homogeneousQuotientComponent 𝒜 I) :=
      homogeneousQuotientGrading 𝒜 I hI
    (HomogeneousLocalization.Away 𝒜 f ⧸
      Ideal.span {homogeneousScalarAway 𝒜 f t}) ≃+*
      HomogeneousLocalization.Away
        (homogeneousQuotientComponent 𝒜 I) (Ideal.Quotient.mk I f) := by
  letI : GradedAlgebra (homogeneousQuotientComponent 𝒜 I) :=
    homogeneousQuotientGrading 𝒜 I hI
  exact (Ideal.quotEquivOfEq
    (homogeneousQuotientAwayMap_ker 𝒜 I hI t hgen f d hf).symm).trans
      (RingHom.quotientKerEquivOfSurjective
        (homogeneousQuotientAwayMap_surjective_any 𝒜 I hI f d hf))

/-- The denominator-free equivalence is still induced by the
canonical quotient map on the integral chart. -/
theorem homogeneousQuotientAwayRingEquiv_any_comp_mk
    {R A : Type*} [CommRing R] [CommRing A] [Algebra R A]
    (𝒜 : ℕ → Submodule R A) [GradedAlgebra 𝒜]
    (I : Ideal A) (hI : I.IsHomogeneous 𝒜)
    (t : R) (hgen : I = Ideal.span {algebraMap R A t})
    (f : A) (d : ℕ) (hf : f ∈ 𝒜 d) :
    letI : GradedAlgebra (homogeneousQuotientComponent 𝒜 I) :=
      homogeneousQuotientGrading 𝒜 I hI
    (homogeneousQuotientAwayRingEquiv_any
      𝒜 I hI t hgen f d hf).toRingHom.comp
      (Ideal.Quotient.mk
        (Ideal.span {homogeneousScalarAway 𝒜 f t})) =
      homogeneousQuotientAwayMap 𝒜 I hI f := by
  letI : GradedAlgebra (homogeneousQuotientComponent 𝒜 I) :=
    homogeneousQuotientGrading 𝒜 I hI
  apply RingHom.ext
  intro s
  simp only [RingHom.comp_apply, homogeneousQuotientAwayRingEquiv_any,
    RingEquiv.trans_apply, RingHom.quotientKerEquivOfSurjective]
  rfl

universe u

/-- The scalar-quotient chart equivalences respect restriction to a
product basic open, without assuming that either reduced denominator
survives. Swapping `f` and `g` gives the reverse ordered square;
identifying the two product coordinates is a separate transport. -/
noncomputable def homogeneousQuotientChartRestriction_square_any
    {R A : Type u} [CommRing R] [CommRing A] [Algebra R A]
    (𝒜 : ℕ → Submodule R A) [GradedAlgebra 𝒜]
    (I : Ideal A) (hI : I.IsHomogeneous 𝒜)
    (t : R) (hgen : I = Ideal.span {algebraMap R A t})
    (f g : A) (d : ℕ) (hf : f ∈ 𝒜 d) (hg : g ∈ 𝒜 d) := by
  letI : GradedAlgebra (homogeneousQuotientComponent 𝒜 I) :=
    homogeneousQuotientGrading 𝒜 I hI
  let ℬ := homogeneousQuotientComponent 𝒜 I
  let q := Ideal.Quotient.mk I
  let hfq : q f ∈ ℬ d := Submodule.mem_map.mpr ⟨f, hf, rfl⟩
  let hgq : q g ∈ ℬ d := Submodule.mem_map.mpr ⟨g, hg, rfl⟩
  let eF := homogeneousQuotientAwayRingEquiv_any
    𝒜 I hI t hgen f d hf
  let eFG := homogeneousQuotientAwayRingEquiv_any
    𝒜 I hI t hgen (f * g) (d + d)
      (SetLike.GradedMul.mul_mem hf hg)
  have h :
      (homogeneousLocalization_toProduct ℬ
        (q f) (q g) d hfq hgq).comp eF.toRingHom =
      eFG.toRingHom.comp
        (homogeneousScalarQuotientToProduct 𝒜 f g d hf hg t) := by
    apply RingHom.ext
    intro s
    obtain ⟨v, rfl⟩ := Ideal.Quotient.mk_surjective s
    have hraw := congrArg (fun ψ => ψ v)
      (homogeneousQuotientAwayMap_toProduct_left 𝒜 I hI f g d hf hg)
    have hmod := congrArg (fun ψ => ψ v)
      (homogeneousScalarQuotientToProduct_comp_mk 𝒜 f g d hf hg t)
    simpa only [RingHom.comp_apply,
      homogeneousQuotientAwayRingEquiv_any_comp_mk, hmod] using hraw
  exact h

/-- The unconditional quotient-chart restriction square after applying
the contravariant `Spec.map`. The reversed ordering gives the other
projection before identifying the two product coordinates. -/
noncomputable def homogeneousQuotientChartRestriction_spec_square_any
    {R A : Type u} [CommRing R] [CommRing A] [Algebra R A]
    (𝒜 : ℕ → Submodule R A) [GradedAlgebra 𝒜]
    (I : Ideal A) (hI : I.IsHomogeneous 𝒜)
    (t : R) (hgen : I = Ideal.span {algebraMap R A t})
    (f g : A) (d : ℕ) (hf : f ∈ 𝒜 d) (hg : g ∈ 𝒜 d) := by
  letI : GradedAlgebra (homogeneousQuotientComponent 𝒜 I) :=
    homogeneousQuotientGrading 𝒜 I hI
  let ℬ := homogeneousQuotientComponent 𝒜 I
  let q := Ideal.Quotient.mk I
  let hfq : q f ∈ ℬ d := Submodule.mem_map.mpr ⟨f, hf, rfl⟩
  let hgq : q g ∈ ℬ d := Submodule.mem_map.mpr ⟨g, hg, rfl⟩
  let eF := homogeneousQuotientAwayRingEquiv_any
    𝒜 I hI t hgen f d hf
  let eFG := homogeneousQuotientAwayRingEquiv_any
    𝒜 I hI t hgen (f * g) (d + d)
      (SetLike.GradedMul.mul_mem hf hg)
  have h :
      Spec.map (CommRingCat.ofHom
          (homogeneousLocalization_toProduct ℬ
            (q f) (q g) d hfq hgq)) ≫
        Spec.map (CommRingCat.ofHom eF.toRingHom) =
      Spec.map (CommRingCat.ofHom eFG.toRingHom) ≫
        Spec.map (CommRingCat.ofHom
          (homogeneousScalarQuotientToProduct 𝒜 f g d hf hg t)) := by
    rw [← Spec.map_comp, ← Spec.map_comp]
    exact congrArg (fun φ => Spec.map (CommRingCat.ofHom φ))
      (homogeneousQuotientChartRestriction_square_any
        𝒜 I hI t hgen f g d hf hg)
  exact h

/-- The chosen tensor-product presentation of a scalar-reduced
affine chart, followed by the unconditional quotient-chart
equivalence. -/
noncomputable def homogeneousAwayTensorQuotientChartEquiv_any
    {R A : Type u} [CommRing R] [CommRing A] [Algebra R A]
    (𝒜 : ℕ → Submodule R A) [GradedAlgebra 𝒜]
    (I : Ideal A) (hI : I.IsHomogeneous 𝒜)
    (t : R) (hgen : I = Ideal.span {algebraMap R A t})
    (f : A) (d : ℕ) (hf : f ∈ 𝒜 d) := by
  letI : Algebra R (HomogeneousLocalization.Away 𝒜 f) :=
    (homogeneousScalarAwayHom 𝒜 f).toAlgebra
  letI : GradedAlgebra (homogeneousQuotientComponent 𝒜 I) :=
    homogeneousQuotientGrading 𝒜 I hI
  exact (homogeneousAwayTensorQuotientRingEquiv 𝒜 f t).trans
    (homogeneousQuotientAwayRingEquiv_any 𝒜 I hI t hgen f d hf)

/-- The canonical affine tensor-to-quotient equivalence is natural
for a map of algebras over the original base. This lemma compares
the actual quotient maps rather than identifying quotient types by
rewriting their ideals. -/
theorem affineFibreTensorRingEquiv_natural
    {R B C : Type u} [CommRing R] [CommRing B] [CommRing C]
    [Algebra R B] [Algebra R C]
    (J : Ideal R) (h : B →ₐ[R] C) :
    let QB := Ideal.map (algebraMap R B) J
    let QC := Ideal.map (algebraMap R C) J
    let hq : B ⧸ QB →+* C ⧸ QC :=
      Ideal.quotientMap QC h.toRingHom (by
        apply (Ideal.map_le_iff_le_comap).mpr
        intro r hr
        change h (algebraMap R B r) ∈ QC
        rw [h.commutes]
        exact Ideal.mem_map_of_mem (algebraMap R C) hr)
    hq.comp (affineFibreTensorRingEquiv (S := B) J).toRingHom =
      (affineFibreTensorRingEquiv (S := C) J).toRingHom.comp
        (Algebra.TensorProduct.map h
          (AlgHom.id R (R ⧸ J))).toRingHom := by
  let QB := Ideal.map (algebraMap R B) J
  let QC := Ideal.map (algebraMap R C) J
  have heq : h.toRingHom.comp (algebraMap R B) = algebraMap R C := by
    ext r
    exact h.commutes r
  have hle : QB ≤ QC.comap h.toRingHom := by
    apply (Ideal.map_le_iff_le_comap).mpr
    intro r hr
    change h (algebraMap R B r) ∈ QC
    rw [h.commutes]
    exact Ideal.mem_map_of_mem (algebraMap R C) hr
  let hq : B ⧸ QB →+* C ⧸ QC :=
    Ideal.quotientMap QC h.toRingHom hle
  apply RingHom.ext
  intro z
  induction z using TensorProduct.induction_on with
  | zero => simp
  | tmul b q =>
      obtain ⟨r, rfl⟩ := Ideal.Quotient.mk_surjective q
      simp only [RingHom.comp_apply, Algebra.TensorProduct.map_tmul,
        AlgHom.id_apply, hq, Ideal.quotientMap_mk]
      simp [affineFibreTensorRingEquiv, affineFibreTensorAlgHom,
        Algebra.smul_def, ← heq, RingHom.comp_apply, map_mul]
      congr 1
      change (Ideal.Quotient.mk QC) (h (algebraMap R B r)) =
        (Ideal.Quotient.mk QC) (algebraMap R C r)
      rw [h.commutes]
  | add z w hz hw => simp only [map_add, hz, hw]

/-- Naturality of the chosen affine `Spec` pullback-to-tensor
isomorphism for any algebra map. The comparison is expressed by its
two pullback projections, so no definitional equality of pullbacks
is required. -/
theorem affinePullbackSpecIso_natural
    {R B C T : Type u}
    [CommRing R] [CommRing B] [CommRing C] [CommRing T]
    [Algebra R B] [Algebra R C] [Algebra R T]
    (h : B →ₐ[R] C) :
    let baseB := Spec.map (CommRingCat.ofHom (algebraMap R B))
    let baseC := Spec.map (CommRingCat.ofHom (algebraMap R C))
    let residue := Spec.map (CommRingCat.ofHom (algebraMap R T))
    let e := pullback.map baseC residue baseB residue
      (Spec.map (CommRingCat.ofHom h.toRingHom)) (𝟙 _) (𝟙 _)
      (by
        change Spec.map (CommRingCat.ofHom (algebraMap R C)) ≫ (𝟙 _) =
          Spec.map (CommRingCat.ofHom h.toRingHom) ≫
            Spec.map (CommRingCat.ofHom (algebraMap R B))
        rw [Category.comp_id, ← Spec.map_comp]
        exact (congrArg (fun ψ => Spec.map (CommRingCat.ofHom ψ))
            (by
              apply RingHom.ext
              intro r
              exact h.commutes r :
              h.toRingHom.comp (algebraMap R B) = algebraMap R C)).symm)
      (by simp)
    (pullbackSpecIso R C T).inv ≫ e =
      Spec.map (CommRingCat.ofHom
        (Algebra.TensorProduct.map h (AlgHom.id R T)).toRingHom) ≫
        (pullbackSpecIso R B T).inv := by
  apply pullback.hom_ext
  · simp only [Category.assoc, pullback.lift_fst]
    simp_rw [← Category.assoc]
    rw [pullbackSpecIso_inv_fst]
    rw [Category.assoc, pullbackSpecIso_inv_fst]
    rw [← Spec.map_comp, ← Spec.map_comp]
    exact congrArg (fun ψ => Spec.map (CommRingCat.ofHom ψ))
      (congrArg AlgHom.toRingHom
        (Algebra.TensorProduct.map_comp_includeLeft h
          (AlgHom.id R T)))
  · simp only [Category.assoc, pullback.lift_snd, Category.comp_id]
    simp_rw [← Category.assoc]
    rw [pullbackSpecIso_inv_snd]
    rw [Category.assoc, pullbackSpecIso_inv_snd]
    rw [← Spec.map_comp]
    change Spec.map (CommRingCat.ofHom
        Algebra.TensorProduct.includeRight.toRingHom) =
      Spec.map (CommRingCat.ofHom
        ((Algebra.TensorProduct.map h
          (AlgHom.id R T)).comp
          Algebra.TensorProduct.includeRight).toRingHom)
    simpa only [AlgHom.comp_id] using
      (congrArg (fun ψ => Spec.map (CommRingCat.ofHom ψ))
        (congrArg AlgHom.toRingHom
          (Algebra.TensorProduct.map_comp_includeRight h
            (AlgHom.id R T)))).symm

/-- An algebra map induces the corresponding map of scalar-reduced
affine chart rings. -/
noncomputable def affineFibreQuotientMap
    {R B C : Type u} [CommRing R] [CommRing B] [CommRing C]
    [Algebra R B] [Algebra R C]
    (J : Ideal R) (h : B →ₐ[R] C) :
    (B ⧸ Ideal.map (algebraMap R B) J) →+*
      (C ⧸ Ideal.map (algebraMap R C) J) :=
  Ideal.quotientMap (Ideal.map (algebraMap R C) J) h.toRingHom (by
    apply (Ideal.map_le_iff_le_comap).mpr
    intro r hr
    change h (algebraMap R B r) ∈ Ideal.map (algebraMap R C) J
    rw [h.commutes]
    exact Ideal.mem_map_of_mem (algebraMap R C) hr)

/-- The chosen affine base-change isomorphism, expressed directly
as the quotient of the chart ring by the extended base ideal. -/
noncomputable def affineFibrePullbackQuotientIso
    {R B : Type u} [CommRing R] [CommRing B] [Algebra R B]
    (J : Ideal R) :
    pullback
      (Spec.map (CommRingCat.ofHom (algebraMap R B)))
      (Spec.map (CommRingCat.ofHom (Ideal.Quotient.mk J))) ≅
      Spec (CommRingCat.of (B ⧸ Ideal.map (algebraMap R B) J)) := by
  exact (pullbackSpecIso R B (R ⧸ J)).trans
    (Scheme.Spec.mapIso
      ((affineFibreTensorRingEquiv (S := B) J).symm.toCommRingCatIso.op))

/-- Affine base change to a quotient commutes with maps of chart
rings. The proof compares the tensor product and the two pullback
projections, including empty affine fibres. -/
theorem affineFibrePullbackQuotientIso_natural
    {R B C : Type u} [CommRing R] [CommRing B] [CommRing C]
    [Algebra R B] [Algebra R C]
    (J : Ideal R) (h : B →ₐ[R] C) :
    let baseB := Spec.map (CommRingCat.ofHom (algebraMap R B))
    let baseC := Spec.map (CommRingCat.ofHom (algebraMap R C))
    let residue := Spec.map (CommRingCat.ofHom (Ideal.Quotient.mk J))
    let e := pullback.map baseC residue baseB residue
      (Spec.map (CommRingCat.ofHom h.toRingHom)) (𝟙 _) (𝟙 _)
      (by
        change Spec.map (CommRingCat.ofHom (algebraMap R C)) ≫ (𝟙 _) =
          Spec.map (CommRingCat.ofHom h.toRingHom) ≫
            Spec.map (CommRingCat.ofHom (algebraMap R B))
        rw [Category.comp_id, ← Spec.map_comp]
        exact (congrArg (fun ψ => Spec.map (CommRingCat.ofHom ψ))
            (by
              apply RingHom.ext
              intro r
              exact h.commutes r :
              h.toRingHom.comp (algebraMap R B) = algebraMap R C)).symm)
      (by simp)
    Spec.map (CommRingCat.ofHom (affineFibreQuotientMap J h)) ≫
        (affineFibrePullbackQuotientIso (B := B) J).inv =
      (affineFibrePullbackQuotientIso (B := C) J).inv ≫ e := by
  change
    (Spec.map (CommRingCat.ofHom (affineFibreQuotientMap J h)) ≫
      Spec.map (CommRingCat.ofHom
        (affineFibreTensorRingEquiv (S := B) J).toRingHom)) ≫
      (pullbackSpecIso R B (R ⧸ J)).inv =
    (Spec.map (CommRingCat.ofHom
        (affineFibreTensorRingEquiv (S := C) J).toRingHom) ≫
      (pullbackSpecIso R C (R ⧸ J)).inv) ≫
      pullback.map _ _ _ _ _ _ _ _ _
  have hspec :
      Spec.map (CommRingCat.ofHom (affineFibreQuotientMap J h)) ≫
        Spec.map (CommRingCat.ofHom
          (affineFibreTensorRingEquiv (S := B) J).toRingHom) =
      Spec.map (CommRingCat.ofHom
          (affineFibreTensorRingEquiv (S := C) J).toRingHom) ≫
        Spec.map (CommRingCat.ofHom
          (Algebra.TensorProduct.map h
            (AlgHom.id R (R ⧸ J))).toRingHom) := by
    rw [← Spec.map_comp, ← Spec.map_comp]
    exact congrArg (fun ψ => Spec.map (CommRingCat.ofHom ψ))
      (affineFibreTensorRingEquiv_natural J h)
  rw [hspec, Category.assoc]
  rw [← affinePullbackSpecIso_natural h]
  simp only [Category.assoc]

/-- The complete tensor-to-graded-quotient comparison respects
product restriction without requiring either reduced denominator
to be nonnilpotent. -/
noncomputable def homogeneousAwayTensorQuotientChartEquiv_toProduct_any
    {R A : Type u} [CommRing R] [CommRing A] [Algebra R A]
    (𝒜 : ℕ → Submodule R A) [GradedAlgebra 𝒜]
    (I : Ideal A) (hI : I.IsHomogeneous 𝒜)
    (t : R) (hgen : I = Ideal.span {algebraMap R A t})
    (f g : A) (d : ℕ) (hf : f ∈ 𝒜 d) (hg : g ∈ 𝒜 d) := by
  letI : Algebra R (HomogeneousLocalization.Away 𝒜 f) :=
    (homogeneousScalarAwayHom 𝒜 f).toAlgebra
  letI : Algebra R (HomogeneousLocalization.Away 𝒜 (f * g)) :=
    (homogeneousScalarAwayHom 𝒜 (f * g)).toAlgebra
  letI : GradedAlgebra (homogeneousQuotientComponent 𝒜 I) :=
    homogeneousQuotientGrading 𝒜 I hI
  let ℬ := homogeneousQuotientComponent 𝒜 I
  let q := Ideal.Quotient.mk I
  let hfq : q f ∈ ℬ d := Submodule.mem_map.mpr ⟨f, hf, rfl⟩
  let hgq : q g ∈ ℬ d := Submodule.mem_map.mpr ⟨g, hg, rfl⟩
  have h :
      (homogeneousLocalization_toProduct ℬ
          (q f) (q g) d hfq hgq).comp
        (homogeneousAwayTensorQuotientChartEquiv_any
          𝒜 I hI t hgen f d hf).toRingHom =
      (homogeneousAwayTensorQuotientChartEquiv_any
          𝒜 I hI t hgen (f * g) (d + d)
          (SetLike.GradedMul.mul_mem hf hg)).toRingHom.comp
        (Algebra.TensorProduct.map
          (homogeneousLocalization_toProductAlgHom 𝒜 f g d hf hg)
          (AlgHom.id R (R ⧸ Ideal.span {t}))).toRingHom := by
    apply RingHom.ext
    intro z
    have hquot := congrArg
      (fun ψ => ψ ((homogeneousAwayTensorQuotientRingEquiv 𝒜 f t) z))
      (homogeneousQuotientChartRestriction_square_any
        𝒜 I hI t hgen f g d hf hg)
    have htensor := congrArg (fun ψ => ψ z)
      (homogeneousAwayTensorQuotientRingEquiv_toProduct
        𝒜 f g d hf hg t)
    simpa only [RingHom.comp_apply, homogeneousAwayTensorQuotientChartEquiv_any,
      RingEquiv.trans_apply] using
      hquot.trans (congrArg
        (homogeneousQuotientAwayRingEquiv_any 𝒜 I hI t hgen
          (f * g) (d + d) (SetLike.GradedMul.mul_mem hf hg))
        htensor)
  exact h

/-- The preceding tensor comparison is a square of affine
schemes, before pasting in the chosen projective chart maps. -/
noncomputable def homogeneousAwayTensorQuotientChartEquiv_spec_square_any
    {R A : Type u} [CommRing R] [CommRing A] [Algebra R A]
    (𝒜 : ℕ → Submodule R A) [GradedAlgebra 𝒜]
    (I : Ideal A) (hI : I.IsHomogeneous 𝒜)
    (t : R) (hgen : I = Ideal.span {algebraMap R A t})
    (f g : A) (d : ℕ) (hf : f ∈ 𝒜 d) (hg : g ∈ 𝒜 d) := by
  letI : Algebra R (HomogeneousLocalization.Away 𝒜 f) :=
    (homogeneousScalarAwayHom 𝒜 f).toAlgebra
  letI : Algebra R (HomogeneousLocalization.Away 𝒜 (f * g)) :=
    (homogeneousScalarAwayHom 𝒜 (f * g)).toAlgebra
  letI : GradedAlgebra (homogeneousQuotientComponent 𝒜 I) :=
    homogeneousQuotientGrading 𝒜 I hI
  let ℬ := homogeneousQuotientComponent 𝒜 I
  let q := Ideal.Quotient.mk I
  let hfq : q f ∈ ℬ d := Submodule.mem_map.mpr ⟨f, hf, rfl⟩
  let hgq : q g ∈ ℬ d := Submodule.mem_map.mpr ⟨g, hg, rfl⟩
  have h :
      Spec.map (CommRingCat.ofHom
          (homogeneousLocalization_toProduct ℬ
            (q f) (q g) d hfq hgq)) ≫
        Spec.map (CommRingCat.ofHom
          (homogeneousAwayTensorQuotientChartEquiv_any
            𝒜 I hI t hgen f d hf).toRingHom) =
      Spec.map (CommRingCat.ofHom
          (homogeneousAwayTensorQuotientChartEquiv_any
            𝒜 I hI t hgen (f * g) (d + d)
            (SetLike.GradedMul.mul_mem hf hg)).toRingHom) ≫
        Spec.map (CommRingCat.ofHom
          (Algebra.TensorProduct.map
            (homogeneousLocalization_toProductAlgHom 𝒜 f g d hf hg)
            (AlgHom.id R (R ⧸ Ideal.span {t}))).toRingHom) := by
    rw [← Spec.map_comp, ← Spec.map_comp]
    exact congrArg (fun φ => Spec.map (CommRingCat.ofHom φ))
      (homogeneousAwayTensorQuotientChartEquiv_toProduct_any
        𝒜 I hI t hgen f g d hf hg)
  exact h

/-- The affine pullback chart comparison for a scalar quotient,
including the case of a zero ring after reduction. -/
noncomputable def homogeneousAwayPullbackSchemeIso_any
    {R A : Type u} [CommRing R] [CommRing A] [Algebra R A]
    (𝒜 : ℕ → Submodule R A) [GradedAlgebra 𝒜]
    (I : Ideal A) (hI : I.IsHomogeneous 𝒜)
    (t : R) (hgen : I = Ideal.span {algebraMap R A t})
    (f : A) (d : ℕ) (hf : f ∈ 𝒜 d) :
    letI : GradedAlgebra (homogeneousQuotientComponent 𝒜 I) :=
      homogeneousQuotientGrading 𝒜 I hI
    pullback
        (Spec.map (CommRingCat.ofHom (homogeneousScalarAwayHom 𝒜 f)))
        (Spec.map (CommRingCat.ofHom
          (Ideal.Quotient.mk (Ideal.span {t})))) ≅
      Spec (CommRingCat.of (HomogeneousLocalization.Away
        (homogeneousQuotientComponent 𝒜 I) (Ideal.Quotient.mk I f))) := by
  letI : Algebra R (HomogeneousLocalization.Away 𝒜 f) :=
    (homogeneousScalarAwayHom 𝒜 f).toAlgebra
  letI : GradedAlgebra (homogeneousQuotientComponent 𝒜 I) :=
    homogeneousQuotientGrading 𝒜 I hI
  exact (pullbackSpecIso R (HomogeneousLocalization.Away 𝒜 f)
    (R ⧸ Ideal.span {t})).trans
      (Scheme.Spec.mapIso ((homogeneousAwayTensorQuotientChartEquiv_any
        𝒜 I hI t hgen f d hf).symm.toCommRingCatIso.op))

/-- Naturality of the chosen affine pullback isomorphisms on each
product basic open, without imposing a condition on the reduction
of either denominator. -/
noncomputable def homogeneousAwayPullbackSchemeIso_toProduct_any
    {R A : Type u} [CommRing R] [CommRing A] [Algebra R A]
    (𝒜 : ℕ → Submodule R A) [GradedAlgebra 𝒜]
    (I : Ideal A) (hI : I.IsHomogeneous 𝒜)
    (t : R) (hgen : I = Ideal.span {algebraMap R A t})
    (f g : A) (d : ℕ) (hf : f ∈ 𝒜 d) (hg : g ∈ 𝒜 d) := by
  letI : Algebra R (HomogeneousLocalization.Away 𝒜 f) :=
    (homogeneousScalarAwayHom 𝒜 f).toAlgebra
  letI : Algebra R (HomogeneousLocalization.Away 𝒜 (f * g)) :=
    (homogeneousScalarAwayHom 𝒜 (f * g)).toAlgebra
  letI : GradedAlgebra (homogeneousQuotientComponent 𝒜 I) :=
    homogeneousQuotientGrading 𝒜 I hI
  let ℬ := homogeneousQuotientComponent 𝒜 I
  let q := Ideal.Quotient.mk I
  let hfq : q f ∈ ℬ d := Submodule.mem_map.mpr ⟨f, hf, rfl⟩
  let hgq : q g ∈ ℬ d := Submodule.mem_map.mpr ⟨g, hg, rfl⟩
  let residue := Spec.map (CommRingCat.ofHom
    (algebraMap R (R ⧸ Ideal.span {t})))
  let baseF := Spec.map (CommRingCat.ofHom
    (algebraMap R (HomogeneousLocalization.Away 𝒜 f)))
  let baseFG := Spec.map (CommRingCat.ofHom
    (algebraMap R (HomogeneousLocalization.Away 𝒜 (f * g))))
  let restriction := Spec.map (CommRingCat.ofHom
    (homogeneousLocalization_toProduct 𝒜 f g d hf hg))
  let e := pullback.map baseFG residue baseF residue
    restriction (𝟙 _) (𝟙 _)
    (by simpa only [Category.comp_id] using
      (homogeneousScalarAwayHom_toProduct_spec 𝒜 f g d hf hg).symm)
    (by simp)
  have h :
      Spec.map (CommRingCat.ofHom
          (homogeneousLocalization_toProduct ℬ
            (q f) (q g) d hfq hgq)) ≫
        (homogeneousAwayPullbackSchemeIso_any
          𝒜 I hI t hgen f d hf).inv =
      (homogeneousAwayPullbackSchemeIso_any
          𝒜 I hI t hgen (f * g) (d + d)
          (SetLike.GradedMul.mul_mem hf hg)).inv ≫ e := by
    dsimp only
    change
      (Spec.map (CommRingCat.ofHom
          (homogeneousLocalization_toProduct ℬ
            (q f) (q g) d hfq hgq)) ≫
        Spec.map (CommRingCat.ofHom
          (homogeneousAwayTensorQuotientChartEquiv_any
            𝒜 I hI t hgen f d hf).toRingHom)) ≫
          (pullbackSpecIso R (HomogeneousLocalization.Away 𝒜 f)
            (R ⧸ Ideal.span {t})).inv =
      (Spec.map (CommRingCat.ofHom
          (homogeneousAwayTensorQuotientChartEquiv_any
            𝒜 I hI t hgen (f * g) (d + d)
            (SetLike.GradedMul.mul_mem hf hg)).toRingHom) ≫
        (pullbackSpecIso R (HomogeneousLocalization.Away 𝒜 (f * g))
          (R ⧸ Ideal.span {t})).inv) ≫
        pullback.map _ _ _ _ _ _ _ _ _
    rw [homogeneousAwayTensorQuotientChartEquiv_spec_square_any]
    simp only [Category.assoc]
    rw [homogeneousPullbackSpecIso_toProduct]
  exact h

/-- The chosen isomorphism of the actual restricted Proj fibre with
the matching graded-quotient chart, even if reduction makes the
basic open empty. -/
noncomputable def homogeneousProjBasicPullbackSchemeIso_any
    {R A : Type u} [CommRing R] [CommRing A] [Algebra R A]
    (𝒜 : ℕ → Submodule R A) [GradedAlgebra 𝒜]
    (I : Ideal A) (hI : I.IsHomogeneous 𝒜)
    (t : R) (hgen : I = Ideal.span {algebraMap R A t})
    (f : A) (d : ℕ) (hf : f ∈ 𝒜 d) (hd : 0 < d) :
    letI : GradedAlgebra (homogeneousQuotientComponent 𝒜 I) :=
      homogeneousQuotientGrading 𝒜 I hI
    let U : (AlgebraicGeometry.«Proj» 𝒜).Opens :=
      ProjectiveSpectrum.basicOpen 𝒜 f
    let base : AlgebraicGeometry.«Proj» 𝒜 ⟶
        Spec (CommRingCat.of R) :=
      (ΓSpec.adjunction.homEquiv
        (AlgebraicGeometry.«Proj» 𝒜)
        (Opposite.op (CommRingCat.of R)))
        (CommRingCat.ofHom (projectiveScalarToGamma 𝒜)).op
    pullback (U.ι ≫ base)
      (Spec.map (CommRingCat.ofHom
        (Ideal.Quotient.mk (Ideal.span {t})))) ≅
      Spec (CommRingCat.of (HomogeneousLocalization.Away
        (homogeneousQuotientComponent 𝒜 I) (Ideal.Quotient.mk I f))) := by
  letI : GradedAlgebra (homogeneousQuotientComponent 𝒜 I) :=
    homogeneousQuotientGrading 𝒜 I hI
  let U : (AlgebraicGeometry.«Proj» 𝒜).Opens :=
    ProjectiveSpectrum.basicOpen 𝒜 f
  let base : AlgebraicGeometry.«Proj» 𝒜 ⟶
      Spec (CommRingCat.of R) :=
    (ΓSpec.adjunction.homEquiv
      (AlgebraicGeometry.«Proj» 𝒜)
      (Opposite.op (CommRingCat.of R)))
      (CommRingCat.ofHom (projectiveScalarToGamma 𝒜)).op
  let chart := homogeneousProjBasicSchemeIso 𝒜 f d hf hd
  let residue : Spec (CommRingCat.of (R ⧸ Ideal.span {t})) ⟶
      Spec (CommRingCat.of R) :=
    Spec.map (CommRingCat.ofHom (Ideal.Quotient.mk (Ideal.span {t})))
  let chartBase : Spec (CommRingCat.of (HomogeneousLocalization.Away 𝒜 f)) ⟶
      Spec (CommRingCat.of R) :=
    Spec.map (CommRingCat.ofHom (homogeneousScalarAwayHom 𝒜 f))
  let e := pullback.map (U.ι ≫ base) residue chartBase residue
    chart.hom (𝟙 _) (𝟙 _)
    (homogeneousProjBasicSchemeIso_baseMap 𝒜 f d hf hd)
    (by simp)
  haveI : IsIso e := inferInstance
  exact (asIso e).trans
    (homogeneousAwayPullbackSchemeIso_any 𝒜 I hI t hgen f d hf)

/-- Invert both isomorphisms in a compatible restriction square. -/
private theorem restrictedChartIso_inv_square_any
    {X X' Y Y' : Scheme} (a : X ≅ Y) (b : X' ≅ Y')
    (r : X' ⟶ X) (s : Y' ⟶ Y)
    (h : r ≫ a.hom = b.hom ≫ s) :
    s ≫ a.inv = b.inv ≫ r := by
  calc
    s ≫ a.inv = (b.inv ≫ b.hom) ≫ s ≫ a.inv := by simp
    _ = b.inv ≫ (r ≫ a.hom) ≫ a.inv := by
      simpa only [Category.assoc] using
        congrArg (fun ψ => b.inv ≫ ψ ≫ a.inv) h.symm
    _ = b.inv ≫ r := by simp [Category.assoc]

/-- Both inclusions of each ordered pairwise product open commute
with the chosen pullback-to-graded-quotient chart isomorphisms. This
is stronger than the underlying ring and `Spec.map` squares. -/
noncomputable def homogeneousProjBasicPullbackSchemeIso_toProduct_any
    {R A : Type u} [CommRing R] [CommRing A] [Algebra R A]
    (𝒜 : ℕ → Submodule R A) [GradedAlgebra 𝒜]
    (I : Ideal A) (hI : I.IsHomogeneous 𝒜)
    (t : R) (hgen : I = Ideal.span {algebraMap R A t})
    (f g : A) (d : ℕ) (hf : f ∈ 𝒜 d) (hg : g ∈ 𝒜 d)
    (hd : 0 < d) := by
  letI : Algebra R (HomogeneousLocalization.Away 𝒜 f) :=
    (homogeneousScalarAwayHom 𝒜 f).toAlgebra
  letI : Algebra R (HomogeneousLocalization.Away 𝒜 (f * g)) :=
    (homogeneousScalarAwayHom 𝒜 (f * g)).toAlgebra
  letI : GradedAlgebra (homogeneousQuotientComponent 𝒜 I) :=
    homogeneousQuotientGrading 𝒜 I hI
  let ℬ := homogeneousQuotientComponent 𝒜 I
  let q := Ideal.Quotient.mk I
  let hfq : q f ∈ ℬ d := Submodule.mem_map.mpr ⟨f, hf, rfl⟩
  let hgq : q g ∈ ℬ d := Submodule.mem_map.mpr ⟨g, hg, rfl⟩
  let restriction := Spec.map (CommRingCat.ofHom
    (homogeneousLocalization_toProduct ℬ (q f) (q g) d hfq hgq))
  let cF := homogeneousProjBasicPullbackToAffine 𝒜 f d hf hd t
  let cFG := homogeneousProjBasicPullbackToAffine 𝒜 (f * g) (d + d)
    (SetLike.GradedMul.mul_mem hf hg) (by omega) t
  haveI : IsIso cF := by
    dsimp [cF, homogeneousProjBasicPullbackToAffine]
    infer_instance
  haveI : IsIso cFG := by
    dsimp [cFG, homogeneousProjBasicPullbackToAffine]
    infer_instance
  let awayF := homogeneousAwayPullbackSchemeIso_any
    𝒜 I hI t hgen f d hf
  let awayFG := homogeneousAwayPullbackSchemeIso_any
    𝒜 I hI t hgen (f * g) (d + d)
      (SetLike.GradedMul.mul_mem hf hg)
  have hChart :
      homogeneousAffinePullbackInclusion 𝒜 f g d hf hg t ≫
        (asIso cF).inv =
      (asIso cFG).inv ≫ homogeneousProjBasicPullbackInclusion 𝒜 f g t :=
    restrictedChartIso_inv_square_any (asIso cF) (asIso cFG)
      (homogeneousProjBasicPullbackInclusion 𝒜 f g t)
      (homogeneousAffinePullbackInclusion 𝒜 f g d hf hg t)
      (homogeneousProjBasicPullbackToAffine_toProduct
        𝒜 f g d hf hg hd t)
  have hAffine :
      restriction ≫ awayF.inv =
        awayFG.inv ≫ homogeneousAffinePullbackInclusion
          𝒜 f g d hf hg t :=
    homogeneousAwayPullbackSchemeIso_toProduct_any
      𝒜 I hI t hgen f g d hf hg
  have h :
      restriction ≫
        (homogeneousProjBasicPullbackSchemeIso_any
          𝒜 I hI t hgen f d hf hd).inv =
      (homogeneousProjBasicPullbackSchemeIso_any
          𝒜 I hI t hgen (f * g) (d + d)
          (SetLike.GradedMul.mul_mem hf hg) (by omega)).inv ≫
        homogeneousProjBasicPullbackInclusion 𝒜 f g t := by
    change (restriction ≫ awayF.inv) ≫ (asIso cF).inv =
      (awayFG.inv ≫ (asIso cFG).inv) ≫
        homogeneousProjBasicPullbackInclusion 𝒜 f g t
    rw [hAffine, Category.assoc, hChart]
    simp only [Category.assoc]
  exact h

/-- A general affine-open comparison with the graded-quotient
`Proj`, valid even if the reduced chart denominator is nilpotent.
The actual structural map of the original scheme is an explicit
input of this comparison. -/
noncomputable def twoAdicChartQuotientProjIso
    {X : Scheme} {R A : Type} [CommRing R] [CommRing A] [Algebra R A]
    (𝒜 : ℕ → Submodule R A) [GradedAlgebra 𝒜]
    (I : Ideal A) (hI : I.IsHomogeneous 𝒜)
    (t : R) (hgen : I = Ideal.span {algebraMap R A t})
    (f : A) (d : ℕ) (hf : f ∈ 𝒜 d) (hd : 0 < d)
    (U : X.Opens) (π : X ⟶ Spec (CommRingCat.of ℤ_[2]))
    (e : U.toScheme ≅
      Spec (CommRingCat.of (HomogeneousLocalization.Away 𝒜 f)))
    (β : ℤ_[2] →+* HomogeneousLocalization.Away 𝒜 f)
    (hβ : β 2 = homogeneousScalarAway 𝒜 f t)
    (h : U.ι ≫ π = e.hom ≫ Spec.map (CommRingCat.ofHom β)) :
    letI : GradedAlgebra (homogeneousQuotientComponent 𝒜 I) :=
      homogeneousQuotientGrading 𝒜 I hI
    let q := Ideal.Quotient.mk I
    pullback (U.ι ≫ π)
        (Spec.map (CommRingCat.ofHom
          (PadicInt.toZMod : ℤ_[2] →+* ZMod 2))) ≅
      Scheme.Opens.toScheme
        (X := AlgebraicGeometry.«Proj» (homogeneousQuotientComponent 𝒜 I))
        (ProjectiveSpectrum.basicOpen
          (homogeneousQuotientComponent 𝒜 I) (q f)) := by
  letI : GradedAlgebra (homogeneousQuotientComponent 𝒜 I) :=
    homogeneousQuotientGrading 𝒜 I hI
  have hmap : Ideal.map β (Ideal.span {(2 : ℤ_[2])}) =
      Ideal.span {homogeneousScalarAway 𝒜 f t} := by
    simpa only [Ideal.map_span, Set.image_singleton] using
      congrArg (fun z => Ideal.span {z}) hβ
  have hfq : (Ideal.Quotient.mk I) f ∈
      homogeneousQuotientComponent 𝒜 I d :=
    Submodule.mem_map.mpr ⟨f, hf, rfl⟩
  exact (twoAdicChartSpecialFibreIso U π e β h).trans
    ((Scheme.Spec.mapIso
      (((Ideal.quotEquivOfEq hmap).trans
        (homogeneousQuotientAwayRingEquiv_any
          𝒜 I hI t hgen f d hf)).symm.toCommRingCatIso.op)).trans
      (homogeneousProjBasicSchemeIso
        (homogeneousQuotientComponent 𝒜 I)
        (Ideal.Quotient.mk I f) d hfq hd).symm)

/-- A basic-open cover of an integral `Proj` by homogeneous
elements descends to any homogeneous quotient. Relevant primes of
the quotient lift to relevant primes of the original grading via
the homogeneous core of the preimage ideal. -/
theorem homogeneousQuotientProjBasicOpen_cover
    {R A : Type*} [CommRing R] [CommRing A] [Algebra R A]
    (𝒜 : ℕ → Submodule R A) [GradedAlgebra 𝒜]
    (I : Ideal A) (hI : I.IsHomogeneous 𝒜)
    {ι : Type*} (f : ι → A)
    (hf : ∀ i, SetLike.Homogeneous 𝒜 (f i))
    (hcover : (⨆ i, ProjectiveSpectrum.basicOpen 𝒜 (f i)) = ⊤) :
    letI : GradedAlgebra (homogeneousQuotientComponent 𝒜 I) :=
      homogeneousQuotientGrading 𝒜 I hI
    (⨆ i, ProjectiveSpectrum.basicOpen
      (homogeneousQuotientComponent 𝒜 I)
      (Ideal.Quotient.mk I (f i))) = ⊤ := by
  classical
  letI : GradedAlgebra (homogeneousQuotientComponent 𝒜 I) :=
    homogeneousQuotientGrading 𝒜 I hI
  let ℬ := homogeneousQuotientComponent 𝒜 I
  let q := Ideal.Quotient.mk I
  apply le_antisymm le_top
  intro p _
  by_contra hp
  have hall (i : ι) : q (f i) ∈ p.asHomogeneousIdeal.toIdeal := by
    by_contra hi
    exact hp ((le_iSup (fun j => ProjectiveSpectrum.basicOpen ℬ (q (f j))) i) hi)
  let J := (p.asHomogeneousIdeal.toIdeal.comap q).homogeneousCore 𝒜
  have hprime : J.toIdeal.IsPrime :=
    (p.isPrime.comap q).homogeneousCore
  have hrel : ¬HomogeneousIdeal.irrelevant 𝒜 ≤ J := by
    intro hbad
    apply p.not_irrelevant_le
    intro z hz
    rw [← DirectSum.sum_support_decompose ℬ z]
    apply Ideal.sum_mem
    intro n hn
    by_cases hn0 : n = 0
    · subst n
      change GradedRing.proj ℬ 0 z = 0 at hz
      have h0 : (↑(((DirectSum.decompose ℬ) z) 0) : A ⧸ I) = 0 := by
        simpa only [GradedRing.proj_apply] using hz
      rw [h0]
      exact p.asHomogeneousIdeal.toIdeal.zero_mem
    · obtain ⟨u, hu, heq⟩ :=
        Submodule.mem_map.mp (SetLike.coe_mem
          (((DirectSum.decompose ℬ) z) n))
      have huirr : u ∈ HomogeneousIdeal.irrelevant 𝒜 := by
        rw [HomogeneousIdeal.mem_irrelevant_iff, GradedRing.proj_apply]
        exact DirectSum.decompose_of_mem_ne 𝒜 hu hn0
      have huJ : u ∈ p.asHomogeneousIdeal.toIdeal.comap q :=
        Ideal.toIdeal_homogeneousCore_le 𝒜 _ (hbad huirr)
      change (Ideal.Quotient.mkₐ R I).toLinearMap u ∈
        p.asHomogeneousIdeal.toIdeal at huJ
      rw [heq] at huJ
      exact huJ
  let p₀ : ProjectiveSpectrum 𝒜 := ⟨J, hprime, hrel⟩
  have hp₀ : p₀ ∈ (⨆ i, ProjectiveSpectrum.basicOpen 𝒜 (f i)) := by
    rw [hcover]
    trivial
  obtain ⟨i, hi⟩ := TopologicalSpace.Opens.mem_iSup.mp hp₀
  exact hi (Ideal.mem_homogeneousCore_of_homogeneous_of_mem (hf i) (hall i))

/-- The scalar-`2` homogeneous ideal of the *actual* surface-centre
Rees algebra, not the ideal generated by `2t` in degree one. -/
noncomputable def localSurfaceCentreReesSpecialIdeal
    (W : WeierstrassCurve ℤ_[2]) (x y : ℤ_[2]) :
    Ideal (localSurfaceCentreRees W x y) :=
  Ideal.span {algebraMap (localSurfaceCoordinateRing W x y)
      (localSurfaceCentreRees W x y)
    ((Ideal.Quotient.mk (Ideal.span {localSurfaceEquation W x y}))
      (MvPolynomial.C (2 : ℤ_[2])))}

theorem localSurfaceCentreReesSpecialIdeal_isHomogeneous
    (W : WeierstrassCurve ℤ_[2]) (x y : ℤ_[2]) :
    letI : GradedAlgebra
        (centreReesComponent (localSurfaceClosedPoint W x y)) :=
      centreReesGrading (localSurfaceClosedPoint W x y)
    (localSurfaceCentreReesSpecialIdeal W x y).IsHomogeneous
      (centreReesComponent (localSurfaceClosedPoint W x y)) := by
  letI : GradedAlgebra
      (centreReesComponent (localSurfaceClosedPoint W x y)) :=
    centreReesGrading (localSurfaceClosedPoint W x y)
  apply Ideal.homogeneous_span
  intro z hz
  rcases Set.mem_singleton_iff.mp hz with rfl
  exact ⟨0, SetLike.algebraMap_mem_graded _ _⟩

/-- The graded-quotient `Proj` proposed as the special fibre of
the surface-centre Rees blow-up. Its comparison with the actual
pullback is a theorem to establish, not part of this definition. -/
noncomputable def localSurfaceCentreReesSpecialProj
    (W : WeierstrassCurve ℤ_[2]) (x y : ℤ_[2]) : Scheme := by
  letI : GradedAlgebra
      (centreReesComponent (localSurfaceClosedPoint W x y)) :=
    centreReesGrading (localSurfaceClosedPoint W x y)
  let ℬ := homogeneousQuotientComponent
    (centreReesComponent (localSurfaceClosedPoint W x y))
    (localSurfaceCentreReesSpecialIdeal W x y)
  letI : GradedAlgebra ℬ :=
    homogeneousQuotientGrading
      (centreReesComponent (localSurfaceClosedPoint W x y))
      (localSurfaceCentreReesSpecialIdeal W x y)
      (localSurfaceCentreReesSpecialIdeal_isHomogeneous W x y)
  exact @AlgebraicGeometry.«Proj»
    (localSurfaceCoordinateRing W x y)
    (localSurfaceCentreRees W x y ⧸
      localSurfaceCentreReesSpecialIdeal W x y)
    _ _ _ ℬ
    (homogeneousQuotientGrading
      (centreReesComponent (localSurfaceClosedPoint W x y))
      (localSurfaceCentreReesSpecialIdeal W x y)
      (localSurfaceCentreReesSpecialIdeal_isHomogeneous W x y))

set_option synthInstance.maxHeartbeats 200000

/-- Each actual reduced Rees chart ring agrees with the degree-zero
localization of the graded quotient. This also covers a denominator
that becomes nilpotent (both chart rings are then zero). -/
noncomputable def localSurfaceCentreGeneratorQuotientRingEquiv
    (W : WeierstrassCurve ℤ_[2]) (x y : ℤ_[2]) (i : Fin 3) :
    let R := localSurfaceCoordinateRing W x y
    let q : MvPolynomial (Fin 2) ℤ_[2] →+* R :=
      Ideal.Quotient.mk (Ideal.span {localSurfaceEquation W x y})
    letI : GradedAlgebra
        (centreReesComponent (localSurfaceClosedPoint W x y)) :=
      centreReesGrading (localSurfaceClosedPoint W x y)
    let 𝒜 : ℕ → Submodule R (localSurfaceCentreRees W x y) :=
      centreReesComponent (localSurfaceClosedPoint W x y)
    let I : Ideal (localSurfaceCentreRees W x y) :=
      localSurfaceCentreReesSpecialIdeal W x y
    let ℬ : ℕ → Submodule R (localSurfaceCentreRees W x y ⧸ I) :=
      homogeneousQuotientComponent 𝒜 I
    letI : GradedAlgebra ℬ :=
      homogeneousQuotientGrading 𝒜 I
        (localSurfaceCentreReesSpecialIdeal_isHomogeneous W x y)
    let f := localSurfaceCentreReesGenerator W x y i
    let β : ℤ_[2] →+* HomogeneousLocalization.Away 𝒜 f :=
      (homogeneousScalarAwayHom 𝒜 f).comp (q.comp MvPolynomial.C)
    (HomogeneousLocalization.Away 𝒜 f ⧸
      Ideal.map β (Ideal.span {(2 : ℤ_[2])})) ≃+*
      @HomogeneousLocalization.Away ℕ R
        (localSurfaceCentreRees W x y ⧸ I) _ _ _
        ℬ (Ideal.Quotient.mk I f) := by
  letI : GradedAlgebra
      (centreReesComponent (localSurfaceClosedPoint W x y)) :=
    centreReesGrading (localSurfaceClosedPoint W x y)
  let 𝒜 : ℕ → Submodule (localSurfaceCoordinateRing W x y)
      (localSurfaceCentreRees W x y) :=
    centreReesComponent (localSurfaceClosedPoint W x y)
  let I : Ideal (localSurfaceCentreRees W x y) :=
    localSurfaceCentreReesSpecialIdeal W x y
  let f := localSurfaceCentreReesGenerator W x y i
  let q : MvPolynomial (Fin 2) ℤ_[2] →+*
      localSurfaceCoordinateRing W x y :=
    Ideal.Quotient.mk (Ideal.span {localSurfaceEquation W x y})
  let β : ℤ_[2] →+* HomogeneousLocalization.Away 𝒜 f :=
    (homogeneousScalarAwayHom 𝒜 f).comp (q.comp MvPolynomial.C)
  letI : GradedAlgebra (homogeneousQuotientComponent 𝒜 I) :=
    homogeneousQuotientGrading 𝒜 I
      (localSurfaceCentreReesSpecialIdeal_isHomogeneous W x y)
  have hmap : Ideal.map β (Ideal.span {(2 : ℤ_[2])}) =
      Ideal.span {homogeneousScalarAway 𝒜 f (q (MvPolynomial.C 2))} := by
    simp only [Ideal.map_span, Set.image_singleton]
    rfl
  exact (Ideal.quotEquivOfEq hmap).trans
    (homogeneousQuotientAwayRingEquiv_any 𝒜 I
      (localSurfaceCentreReesSpecialIdeal_isHomogeneous W x y)
      (q (MvPolynomial.C 2)) rfl f 1
      (localSurfaceCentreReesGenerator_mem_degree_one W x y i))

/-- The polynomial presentation of a coordinate Rees chart, reduced
by the degree-zero base scalar `2`. Its relation ideal is the exact
denominator-saturated graph ideal, not just the finite graph equations. -/
noncomputable abbrev localSurfaceCentreCoordinateMod2Ring
    (W : WeierstrassCurve ℤ_[2]) (x y : ℤ_[2]) (i : Fin 2) :=
  let q : MvPolynomial (Fin 2) ℤ_[2] →+*
      localSurfaceCoordinateRing W x y :=
    Ideal.Quotient.mk (Ideal.span {localSurfaceEquation W x y})
  let P := MvPolynomial (Fin 3) (localSurfaceCoordinateRing W x y) ⧸
    localSurfaceCentreCoordinateRelations W x y i
  P ⧸ Ideal.span
    {localSurfaceCentreCoordinateToSurfaceRing W x y i
      (q (MvPolynomial.C 2))}

/-- Reducing the exact `Xt` or `Yt` polynomial presentation agrees
with localization of the actual homogeneous Rees quotient. This
identification makes no denominator-survival assumption. -/
noncomputable def localSurfaceCentreCoordinateMod2Equiv
    (W : WeierstrassCurve ℤ_[2]) (x y : ℤ_[2]) (i : Fin 2) := by
  letI : GradedAlgebra
      (centreReesComponent (localSurfaceClosedPoint W x y)) :=
    centreReesGrading (localSurfaceClosedPoint W x y)
  let 𝒜 := centreReesComponent (localSurfaceClosedPoint W x y)
  let I := localSurfaceCentreReesSpecialIdeal W x y
  letI : GradedAlgebra (homogeneousQuotientComponent 𝒜 I) :=
    homogeneousQuotientGrading 𝒜 I
      (localSurfaceCentreReesSpecialIdeal_isHomogeneous W x y)
  let R := localSurfaceCoordinateRing W x y
  let q : MvPolynomial (Fin 2) ℤ_[2] →+* R :=
    Ideal.Quotient.mk (Ideal.span {localSurfaceEquation W x y})
  let t := q (MvPolynomial.C 2)
  let B := HomogeneousLocalization.Away 𝒜
    (localSurfaceCentreReesCoordinate W x y i)
  let P := MvPolynomial (Fin 3) R ⧸
    localSurfaceCentreCoordinateRelations W x y i
  let e : P ≃+* B := localSurfaceCentreCoordinateQuotientEquiv W x y i
  let b : P := localSurfaceCentreCoordinateToSurfaceRing W x y i t
  let β : ℤ_[2] →+* B :=
    (homogeneousScalarAwayHom 𝒜
      (localSurfaceCentreReesCoordinate W x y i)).comp
      (q.comp MvPolynomial.C)
  have hb : e b = β 2 := by
    have hs := congrArg (fun h : R →+* B => h t)
      (localSurfaceCentreCoordinateQuotientEquiv_surface W x y i)
    exact hs
  let J : Ideal P := Ideal.span {b}
  let K : Ideal B := Ideal.map β (Ideal.span {(2 : ℤ_[2])})
  have hK : K = J.map e.toRingHom := by
    simp only [K, J, Ideal.map_span, Set.image_singleton]
    exact congrArg (fun z : B => Ideal.span {z}) hb.symm
  let e₂ : (P ⧸ J) ≃+* (B ⧸ K) :=
    Ideal.quotientEquiv J K e hK
  exact e₂.trans (localSurfaceCentreGeneratorQuotientRingEquiv
    W x y i.succ)

/-- Reduction of the divided-equation presentation of the `2t`
chart by the degree-zero scalar `2`. The divided equation and its
comparison with the Rees chart require the stated even-node data. -/
noncomputable abbrev evenNodeTwoChartMod2Ring
    (W : WeierstrassCurve ℤ_[2]) (x a b c : ℤ_[2]) :=
  let P := evenNodeTwoChartRing W x a b c
  let p : MvPolynomial (Fin 2) ℤ_[2] →+* P :=
    Ideal.Quotient.mk (Ideal.span {evenNodeTwoChartPolynomial W x a b c})
  P ⧸ Ideal.span {p (MvPolynomial.C (2 : ℤ_[2]))}

/-- The mod-`2` divided-equation ring is the actual reduced
degree-zero `2t` Rees chart, including its potentially exceptional
points not visible in either coordinate chart. -/
noncomputable def evenNodeTwoChartMod2Equiv
    (W : WeierstrassCurve ℤ_[2]) (x y a b c : ℤ_[2])
    (ha : PadicInt.toZMod W.a₁ = 1)
    (hF : localWeierstrassEquation W x y = 4 * a)
    (hX : W.a₁ * y - (3 * x ^ 2 + 2 * W.a₂ * x + W.a₄) = 2 * b)
    (hY : 2 * y + W.a₁ * x + W.a₃ = 2 * c) := by
  letI : GradedAlgebra
      (centreReesComponent (localSurfaceClosedPoint W x y)) :=
    centreReesGrading (localSurfaceClosedPoint W x y)
  let 𝒜 := centreReesComponent (localSurfaceClosedPoint W x y)
  let I := localSurfaceCentreReesSpecialIdeal W x y
  letI : GradedAlgebra (homogeneousQuotientComponent 𝒜 I) :=
    homogeneousQuotientGrading 𝒜 I
      (localSurfaceCentreReesSpecialIdeal_isHomogeneous W x y)
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
  let e₂ : (P ⧸ J) ≃+* (B ⧸ K) :=
    Ideal.quotientEquiv J K e hK
  exact e₂.trans (localSurfaceCentreGeneratorQuotientRingEquiv W x y 0)

/-- The divided chart reduced modulo `2` is literally the binary
polynomial quotient by the reduction of its divided equation. This
does not identify the chart with a Rees localization unless the
even-node hypotheses of `evenNodeTwoChartMod2Equiv` hold. -/
noncomputable def evenNodeTwoChartMod2PolynomialEquiv
    (W : WeierstrassCurve ℤ_[2]) (x a b c : ℤ_[2]) :
    evenNodeTwoChartMod2Ring W x a b c ≃+*
      (MvPolynomial (Fin 2) (ZMod 2) ⧸
        Ideal.span {MvPolynomial.map PadicInt.toZMod
          (evenNodeTwoChartPolynomial W x a b c)}) := by
  let S := MvPolynomial (Fin 2) ℤ_[2]
  let T := MvPolynomial (Fin 2) (ZMod 2)
  let I : Ideal S := Ideal.span {evenNodeTwoChartPolynomial W x a b c}
  let K : Ideal S := Ideal.span {MvPolynomial.C (2 : ℤ_[2])}
  let φ : S →+* T := MvPolynomial.map PadicInt.toZMod
  let J : Ideal T := Ideal.span
    {φ (evenNodeTwoChartPolynomial W x a b c)}
  let h : S →+* T ⧸ J := (Ideal.Quotient.mk J).comp φ
  have hz : Function.Surjective (PadicInt.toZMod : ℤ_[2] →+* ZMod 2) := by
    intro z
    fin_cases z
    · exact ⟨0, by simp⟩
    · exact ⟨1, by simp⟩
  have hφ : Function.Surjective φ :=
    MvPolynomial.map_surjective PadicInt.toZMod hz
  have hK : RingHom.ker φ = K := by
    rw [MvPolynomial.ker_map, PadicInt.ker_toZMod,
      PadicInt.maximalIdeal_eq_span_p, Ideal.map_span]
    simp [K]
  have hJ : J = Ideal.map φ I := by
    simp only [J, I, Ideal.map_span, Set.image_singleton]
  have hker : RingHom.ker h = I ⊔ K := by
    calc
      RingHom.ker h =
          Ideal.comap φ (RingHom.ker (Ideal.Quotient.mk J)) := by
        simp only [RingHom.ker_eq_comap_bot, ← Ideal.comap_comap, h]
      _ = Ideal.comap φ J := by rw [Ideal.mk_ker]
      _ = Ideal.comap φ (Ideal.map φ I) := by rw [← hJ]
      _ = I ⊔ RingHom.ker φ := by
        rw [Ideal.comap_map_of_surjective φ hφ I, RingHom.ker_eq_comap_bot]
      _ = I ⊔ K := by rw [hK]
  have hh : Function.Surjective h := by
    simpa only [h] using
      (Ideal.Quotient.mk_surjective :
        Function.Surjective (Ideal.Quotient.mk J)).comp hφ
  have hspan : (Ideal.span
      {(Ideal.Quotient.mk I) (MvPolynomial.C (2 : ℤ_[2]))} :
      Ideal (S ⧸ I)) = Ideal.map (Ideal.Quotient.mk I) K := by
    simp only [K, Ideal.map_span, Set.image_singleton]
  exact (Ideal.quotEquivOfEq hspan).trans
    (((DoubleQuot.quotQuotEquivQuotSup I K).trans
      (Ideal.quotEquivOfEq hker.symm)).trans
        (RingHom.quotientKerEquivOfSurjective hh))

/-- Each of the three opens of the actual special fibre is also
identified with its matching open of the graded-quotient `Proj`.
The definition uses the actual structural map to the 2-adic base. -/
noncomputable def localSurfaceCentreGeneratorQuotientProjChartIso
    (W : WeierstrassCurve ℤ_[2]) (x y : ℤ_[2]) (i : Fin 3) := by
  let R := localSurfaceCoordinateRing W x y
  let q : MvPolynomial (Fin 2) ℤ_[2] →+* R :=
    Ideal.Quotient.mk (Ideal.span {localSurfaceEquation W x y})
  letI : GradedAlgebra
      (centreReesComponent (localSurfaceClosedPoint W x y)) :=
    centreReesGrading (localSurfaceClosedPoint W x y)
  let 𝒜 := centreReesComponent (localSurfaceClosedPoint W x y)
  let I := localSurfaceCentreReesSpecialIdeal W x y
  let f := localSurfaceCentreReesGenerator W x y i
  exact twoAdicChartQuotientProjIso 𝒜 I
    (localSurfaceCentreReesSpecialIdeal_isHomogeneous W x y)
    (q (MvPolynomial.C 2)) rfl f 1
    (localSurfaceCentreReesGenerator_mem_degree_one W x y i)
    (by decide)
    (ProjectiveSpectrum.basicOpen 𝒜 f)
    (localSurfaceCentreReesToBase W x y)
    (localSurfaceCentreGeneratorBasicSchemeIso W x y i)
    ((homogeneousScalarAwayHom 𝒜 f).comp (q.comp MvPolynomial.C))
    (by rfl)
    (localSurfaceCentreGenerator_toBase W x y i)

/-- The three reduced Rees generators cover the `Proj` of the
actual graded quotient, whether or not any individual chart is
empty after reduction. -/
theorem localSurfaceCentreReesSpecialGenerator_cover
    (W : WeierstrassCurve ℤ_[2]) (x y : ℤ_[2]) :
    let R := localSurfaceCoordinateRing W x y
    letI : GradedAlgebra
        (centreReesComponent (localSurfaceClosedPoint W x y)) :=
      centreReesGrading (localSurfaceClosedPoint W x y)
    let 𝒜 : ℕ → Submodule R (localSurfaceCentreRees W x y) :=
      centreReesComponent (localSurfaceClosedPoint W x y)
    let I : Ideal (localSurfaceCentreRees W x y) :=
      localSurfaceCentreReesSpecialIdeal W x y
    let ℬ : ℕ → Submodule R (localSurfaceCentreRees W x y ⧸ I) :=
      homogeneousQuotientComponent 𝒜 I
    letI : GradedAlgebra ℬ :=
      homogeneousQuotientGrading 𝒜 I
        (localSurfaceCentreReesSpecialIdeal_isHomogeneous W x y)
    (⨆ i : Fin 3, ProjectiveSpectrum.basicOpen (R := R) ℬ
      ((Ideal.Quotient.mk I) (localSurfaceCentreReesGenerator W x y i))) =
        ⊤ := by
  letI : GradedAlgebra
      (centreReesComponent (localSurfaceClosedPoint W x y)) :=
    centreReesGrading (localSurfaceClosedPoint W x y)
  exact homogeneousQuotientProjBasicOpen_cover
    (centreReesComponent (localSurfaceClosedPoint W x y))
    (localSurfaceCentreReesSpecialIdeal W x y)
    (localSurfaceCentreReesSpecialIdeal_isHomogeneous W x y)
    (localSurfaceCentreReesGenerator W x y)
    (fun i => ⟨1, localSurfaceCentreReesGenerator_mem_degree_one W x y i⟩)
    (localSurfaceCentreReesGenerator_cover W x y)

/-- The three reduced basic opens, as an open cover of the quotient
`Proj` for subsequent scheme-level gluing. -/
noncomputable def localSurfaceCentreReesSpecialProjOpenCover
    (W : WeierstrassCurve ℤ_[2]) (x y : ℤ_[2]) := by
  let R := localSurfaceCoordinateRing W x y
  letI : GradedAlgebra
      (centreReesComponent (localSurfaceClosedPoint W x y)) :=
    centreReesGrading (localSurfaceClosedPoint W x y)
  let 𝒜 : ℕ → Submodule R (localSurfaceCentreRees W x y) :=
    centreReesComponent (localSurfaceClosedPoint W x y)
  let I : Ideal (localSurfaceCentreRees W x y) :=
    localSurfaceCentreReesSpecialIdeal W x y
  let ℬ : ℕ → Submodule R (localSurfaceCentreRees W x y ⧸ I) :=
    homogeneousQuotientComponent 𝒜 I
  letI : GradedAlgebra ℬ :=
    homogeneousQuotientGrading 𝒜 I
      (localSurfaceCentreReesSpecialIdeal_isHomogeneous W x y)
  let Q : Scheme := @AlgebraicGeometry.«Proj» R
    (localSurfaceCentreRees W x y ⧸ I)
    _ _ _ ℬ
    (homogeneousQuotientGrading 𝒜 I
      (localSurfaceCentreReesSpecialIdeal_isHomogeneous W x y))
  let U : Fin 3 → Q.Opens := fun i => by
    change TopologicalSpace.Opens (ProjectiveSpectrum
      (R := R) (A := localSurfaceCentreRees W x y ⧸ I) ℬ)
    exact ProjectiveSpectrum.basicOpen
      (R := R) (A := localSurfaceCentreRees W x y ⧸ I) ℬ
      ((Ideal.Quotient.mk I) (localSurfaceCentreReesGenerator W x y i))
  apply Q.openCoverOfISupEqTop U
  change (⨆ i : Fin 3, ProjectiveSpectrum.basicOpen
    (R := R) (A := localSurfaceCentreRees W x y ⧸ I) ℬ
    ((Ideal.Quotient.mk I) (localSurfaceCentreReesGenerator W x y i))) = ⊤
  exact localSurfaceCentreReesSpecialGenerator_cover W x y

/-- The quotient-`Proj` chart comparison, pasted into an open of the
global actual special fibre rather than just a restricted pullback. -/
noncomputable def localSurfaceCentreGeneratorFibreQuotientOpenIso
    (W : WeierstrassCurve ℤ_[2]) (x y : ℤ_[2])
    (i : Fin 3) := by
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
    (localSurfaceCentreGeneratorQuotientProjChartIso W x y i)

/-- On each ordered pair of actual Rees generator charts, reduction
of degree-zero fractions commutes with restriction to their product
overlap. Together with the quotient-induced description of the chart
equivalences, this is the algebraic overlap square; compatibility of
the chosen scheme isomorphisms is still a separate statement. -/
noncomputable def localSurfaceCentreReesSpecialGenerator_toProduct
    (W : WeierstrassCurve ℤ_[2]) (x y : ℤ_[2])
    (i j : Fin 3) := by
  letI : GradedAlgebra
      (centreReesComponent (localSurfaceClosedPoint W x y)) :=
    centreReesGrading (localSurfaceClosedPoint W x y)
  let 𝒜 := centreReesComponent (localSurfaceClosedPoint W x y)
  let I := localSurfaceCentreReesSpecialIdeal W x y
  exact homogeneousQuotientAwayMap_toProduct_left 𝒜 I
    (localSurfaceCentreReesSpecialIdeal_isHomogeneous W x y)
    (localSurfaceCentreReesGenerator W x y i)
    (localSurfaceCentreReesGenerator W x y j) 1
    (localSurfaceCentreReesGenerator_mem_degree_one W x y i)
    (localSurfaceCentreReesGenerator_mem_degree_one W x y j)

/-- The affine scheme overlap square for each ordered pair of actual
surface-centre Rees generators. Applying this with `(i,j)` and `(j,i)`
gives the two ordered squares; compatibility of the chosen opens of
the global special fibre still needs a separate scheme-level proof. -/
noncomputable def localSurfaceCentreReesSpecialGenerator_specToProduct
    (W : WeierstrassCurve ℤ_[2]) (x y : ℤ_[2])
    (i j : Fin 3) := by
  letI : GradedAlgebra
      (centreReesComponent (localSurfaceClosedPoint W x y)) :=
    centreReesGrading (localSurfaceClosedPoint W x y)
  let 𝒜 := centreReesComponent (localSurfaceClosedPoint W x y)
  let I := localSurfaceCentreReesSpecialIdeal W x y
  let q : MvPolynomial (Fin 2) ℤ_[2] →+*
      localSurfaceCoordinateRing W x y :=
    Ideal.Quotient.mk (Ideal.span {localSurfaceEquation W x y})
  exact homogeneousQuotientChartRestriction_spec_square_any 𝒜 I
    (localSurfaceCentreReesSpecialIdeal_isHomogeneous W x y)
    (q (MvPolynomial.C 2)) rfl
    (localSurfaceCentreReesGenerator W x y i)
    (localSurfaceCentreReesGenerator W x y j) 1
    (localSurfaceCentreReesGenerator_mem_degree_one W x y i)
    (localSurfaceCentreReesGenerator_mem_degree_one W x y j)

#print axioms twoAdicChartSpecialFibreIso
#print axioms twoAdicResiduePullbackToQuotient_natural
#print axioms localSurfaceCentreTwoSpecialFibreIso
#print axioms localSurfaceCentreSpecialFibreOpenCover
#print axioms localSurfaceCentreGeneratorSpecialFibreIso
#print axioms localSurfaceCentreGeneratorFibreOpenSchemeIso
#print axioms homogeneousQuotientAwayRingEquiv_any
#print axioms homogeneousQuotientAwayRingEquiv_any_comp_mk
#print axioms homogeneousQuotientChartRestriction_square_any
#print axioms homogeneousQuotientChartRestriction_spec_square_any
#print axioms homogeneousAwayTensorQuotientChartEquiv_toProduct_any
#print axioms affineFibreTensorRingEquiv_natural
#print axioms affinePullbackSpecIso_natural
#print axioms affineFibrePullbackQuotientIso_natural
#print axioms homogeneousAwayTensorQuotientChartEquiv_spec_square_any
#print axioms homogeneousAwayPullbackSchemeIso_toProduct_any
#print axioms homogeneousProjBasicPullbackSchemeIso_toProduct_any
#print axioms twoAdicChartQuotientProjIso
#print axioms homogeneousQuotientProjBasicOpen_cover
#print axioms localSurfaceCentreReesSpecialIdeal_isHomogeneous
#print axioms localSurfaceCentreGeneratorQuotientRingEquiv
#print axioms localSurfaceCentreCoordinateMod2Equiv
#print axioms evenNodeTwoChartMod2Equiv
#print axioms evenNodeTwoChartMod2PolynomialEquiv
#print axioms localSurfaceCentreGeneratorQuotientProjChartIso
#print axioms localSurfaceCentreReesSpecialGenerator_cover
#print axioms localSurfaceCentreReesSpecialProjOpenCover
#print axioms localSurfaceCentreGeneratorFibreQuotientOpenIso
#print axioms localSurfaceCentreReesSpecialGenerator_toProduct
#print axioms localSurfaceCentreReesSpecialGenerator_specToProduct

end Beal.General