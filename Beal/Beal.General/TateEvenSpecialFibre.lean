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

#print axioms twoAdicChartSpecialFibreIso
#print axioms localSurfaceCentreTwoSpecialFibreIso
#print axioms localSurfaceCentreSpecialFibreOpenCover
#print axioms localSurfaceCentreGeneratorSpecialFibreIso
#print axioms localSurfaceCentreGeneratorFibreOpenSchemeIso
#print axioms homogeneousQuotientAwayRingEquiv_any
#print axioms homogeneousQuotientAwayRingEquiv_any_comp_mk
#print axioms twoAdicChartQuotientProjIso
#print axioms homogeneousQuotientProjBasicOpen_cover
#print axioms localSurfaceCentreReesSpecialIdeal_isHomogeneous
#print axioms localSurfaceCentreGeneratorQuotientRingEquiv
#print axioms localSurfaceCentreGeneratorQuotientProjChartIso
#print axioms localSurfaceCentreReesSpecialGenerator_cover
#print axioms localSurfaceCentreGeneratorFibreQuotientOpenIso
#print axioms localSurfaceCentreReesSpecialGenerator_toProduct

end Beal.General