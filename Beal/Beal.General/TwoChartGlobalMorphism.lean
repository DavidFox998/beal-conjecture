import Beal.«Beal.General».TateI1MinimalRegularModel

/-!
The two actual opens of the quotient `Proj` cover the cubic, and their
quotient-chart maps agree on the scheme-theoretic overlap. This file
glues them into a morphism to the ambient projective plane. It does
not assert that the morphism is a closed immersion or prove any
regularity, minimality, reduction-type, or conductor statement.
-/

open CategoryTheory CategoryTheory.Limits
open AlgebraicGeometry

namespace Beal.General

/-- Identify the pullback of two open immersions with their intersection
to pass from equality of restrictions to the compatibility required by
`OpenCover.glueMorphisms`. -/
private theorem overlap_glue_of_restriction
    {X Y : Scheme} (U V T : X.Opens) (hT : T = U ⊓ V)
    (hU : T ≤ U) (hV : T ≤ V)
    (fU : U.toScheme ⟶ Y) (fV : V.toScheme ⟶ Y)
    (h : (X.restrictFunctor.map (homOfLE hU)).left ≫ fU =
      (X.restrictFunctor.map (homOfLE hV)).left ≫ fV) :
    pullback.fst U.ι V.ι ≫ fU = pullback.snd U.ι V.ι ≫ fV := by
  let e : T.toScheme ≅ pullback U.ι V.ι :=
    IsOpenImmersion.isoOfRangeEq T.ι
      (pullback.fst U.ι V.ι ≫ U.ι) (by
        rw [Scheme.Opens.range_ι, IsOpenImmersion.range_pullback_to_base_of_left,
          Scheme.Opens.range_ι, Scheme.Opens.range_ι]
        exact congrArg (fun O : X.Opens => (O : Set X)) hT)
  have heU : e.hom ≫ pullback.fst U.ι V.ι =
      (X.restrictFunctor.map (homOfLE hU)).left := by
    apply (cancel_mono U.ι).mp
    rw [Category.assoc, IsOpenImmersion.isoOfRangeEq_hom_fac,
      Scheme.restrictFunctor_map_ofRestrict]
  have heV : e.hom ≫ pullback.snd U.ι V.ι =
      (X.restrictFunctor.map (homOfLE hV)).left := by
    apply (cancel_mono V.ι).mp
    rw [Category.assoc, ← pullback.condition,
      IsOpenImmersion.isoOfRangeEq_hom_fac,
      Scheme.restrictFunctor_map_ofRestrict]
  apply (cancel_epi e.hom).mp
  calc
    e.hom ≫ (pullback.fst U.ι V.ι ≫ fU) =
        (e.hom ≫ pullback.fst U.ι V.ι) ≫ fU := by rw [Category.assoc]
    _ = (X.restrictFunctor.map (homOfLE hU)).left ≫ fU := by rw [heU]
    _ = (X.restrictFunctor.map (homOfLE hV)).left ≫ fV := h
    _ = (e.hom ≫ pullback.snd U.ι V.ι) ≫ fV := by rw [heV]
    _ = e.hom ≫ (pullback.snd U.ι V.ι ≫ fV) := by rw [Category.assoc]

private theorem restrictFunctor_map_heq {X : Scheme}
    {T T' U : X.Opens} (h : T = T') (p : T ≤ U) (p' : T' ≤ U) :
    HEq (X.restrictFunctor.map (homOfLE p)).left
      (X.restrictFunctor.map (homOfLE p')).left := by
  cases h
  rfl

/-- The product chart into the whole ambient plane is invariant under
swapping its two factors, with its dependent source transported. -/
theorem projectiveWeierstrassProductChartToAmbient_comm
    (W : WeierstrassCurve ℤ_[2]) (i j : Fin 3) :
    HEq (projectiveWeierstrassProductChartToAmbient W i j)
      (projectiveWeierstrassProductChartToAmbient W j i) := by
  letI : GradedAlgebra (MvPolynomial.homogeneousSubmodule (Fin 3) ℤ_[2]) :=
    MvPolynomial.gradedAlgebra
  letI : GradedAlgebra (projectiveWeierstrassQuotientComponent W) :=
    projectiveWeierstrassQuotientGrading W
  let 𝒜 := MvPolynomial.homogeneousSubmodule (Fin 3) ℤ_[2]
  let ℬ := projectiveWeierstrassQuotientComponent W
  let q : MvPolynomial (Fin 3) ℤ_[2] →+* projectiveWeierstrassCoordinateRing W :=
    Ideal.Quotient.mk (Ideal.span {projectiveWeierstrassCubic W})
  let a : MvPolynomial (Fin 3) ℤ_[2] := MvPolynomial.X i
  let b : MvPolynomial (Fin 3) ℤ_[2] := MvPolynomial.X j
  let c := q a
  let d := q b
  have hQ := congrArg (fun t => (AlgebraicGeometry.Proj.toLocallyRingedSpace ℬ).restrict
    (TopologicalSpace.Opens.openEmbedding (ProjectiveSpectrum.basicOpen ℬ t))) (mul_comm c d)
  have hA := congrArg (fun t => (AlgebraicGeometry.Proj.toLocallyRingedSpace 𝒜).restrict
    (TopologicalSpace.Opens.openEmbedding (ProjectiveSpectrum.basicOpen 𝒜 t))) (mul_comm a b)
  have hopen : ProjectiveSpectrum.basicOpen 𝒜 (a * b) =
      ProjectiveSpectrum.basicOpen 𝒜 (b * a) := by rw [mul_comm a b]
  have hι : HEq (Scheme.Opens.ι (show projectiveWeierstrassAmbientScheme.Opens from
        ProjectiveSpectrum.basicOpen 𝒜 (a * b)))
      (Scheme.Opens.ι (show projectiveWeierstrassAmbientScheme.Opens from
        ProjectiveSpectrum.basicOpen 𝒜 (b * a))) := by
    rw [hopen]
  have hmap := projectiveWeierstrassProductProjChartMap_comm W i j
  unfold projectiveWeierstrassProductChartToAmbient
  exact CategoryTheory.heq_comp hQ hA rfl hmap hι

/-- Restricting a basic chart-to-plane map to the product open gives
the product-chart map into the whole plane, not merely its affine open. -/
theorem projectiveWeierstrassProductRestrictionToAmbient
    (W : WeierstrassCurve ℤ_[2]) (i j : Fin 3) :
    letI : GradedAlgebra (MvPolynomial.homogeneousSubmodule (Fin 3) ℤ_[2]) :=
      MvPolynomial.gradedAlgebra
    letI : GradedAlgebra (projectiveWeierstrassQuotientComponent W) :=
      projectiveWeierstrassQuotientGrading W
    let ℬ := projectiveWeierstrassQuotientComponent W
    let q : MvPolynomial (Fin 3) ℤ_[2] →+* projectiveWeierstrassCoordinateRing W :=
      Ideal.Quotient.mk (Ideal.span {projectiveWeierstrassCubic W})
    ((projectiveWeierstrassScheme W).restrictFunctor.map
      (homOfLE (ProjectiveSpectrum.basicOpen_mul_le_left ℬ
        (q (MvPolynomial.X i)) (q (MvPolynomial.X j))))).left ≫
      projectiveWeierstrassBasicChartToAmbient W i =
      projectiveWeierstrassProductChartToAmbient W i j := by
  letI : GradedAlgebra (MvPolynomial.homogeneousSubmodule (Fin 3) ℤ_[2]) :=
    MvPolynomial.gradedAlgebra
  letI : GradedAlgebra (projectiveWeierstrassQuotientComponent W) :=
    projectiveWeierstrassQuotientGrading W
  let ℬ := projectiveWeierstrassQuotientComponent W
  let q : MvPolynomial (Fin 3) ℤ_[2] →+* projectiveWeierstrassCoordinateRing W :=
    Ideal.Quotient.mk (Ideal.span {projectiveWeierstrassCubic W})
  let 𝒜 := MvPolynomial.homogeneousSubmodule (Fin 3) ℤ_[2]
  let a : MvPolynomial (Fin 3) ℤ_[2] := MvPolynomial.X i
  let b : MvPolynomial (Fin 3) ℤ_[2] := MvPolynomial.X j
  let V : projectiveWeierstrassAmbientScheme.Opens :=
    ProjectiveSpectrum.basicOpen 𝒜 a
  let S : projectiveWeierstrassAmbientScheme.Opens :=
    ProjectiveSpectrum.basicOpen 𝒜 (a * b)
  let kq := ((AlgebraicGeometry.«Proj» ℬ).restrictFunctor.map
    (homOfLE (ProjectiveSpectrum.basicOpen_mul_le_left ℬ (q a) (q b)))).left
  let ka := ((AlgebraicGeometry.«Proj» 𝒜).restrictFunctor.map
    (homOfLE (ProjectiveSpectrum.basicOpen_mul_le_left 𝒜 a b))).left
  have h' : kq ≫ projectiveWeierstrassBasicProjChartMap W i =
      projectiveWeierstrassProductProjChartMap W i j ≫ ka :=
    projectiveWeierstrassProjChartRestriction_commutes W i j
  have ha : ka ≫ V.ι = S.ι :=
    Scheme.restrictFunctor_map_ofRestrict
      (homOfLE (ProjectiveSpectrum.basicOpen_mul_le_left 𝒜 a b))
  change kq ≫ (projectiveWeierstrassBasicProjChartMap W i ≫ V.ι) =
    projectiveWeierstrassProductProjChartMap W i j ≫ S.ι
  rw [← Category.assoc, h']
  exact (Category.assoc _ _ _).trans
    (congrArg (fun f => projectiveWeierstrassProductProjChartMap W i j ≫ f) ha)

/-- The `Z` and `Y` chart maps agree as scheme morphisms on their
actual quotient-`Proj` product overlap. -/
theorem projectiveWeierstrassTwoChartRestrictionAgreement (W : WeierstrassCurve ℤ_[2]) :
    letI : GradedAlgebra (MvPolynomial.homogeneousSubmodule (Fin 3) ℤ_[2]) :=
      MvPolynomial.gradedAlgebra
    letI : GradedAlgebra (projectiveWeierstrassQuotientComponent W) :=
      projectiveWeierstrassQuotientGrading W
    let ℬ := projectiveWeierstrassQuotientComponent W
    let q : MvPolynomial (Fin 3) ℤ_[2] →+* projectiveWeierstrassCoordinateRing W :=
      Ideal.Quotient.mk (Ideal.span {projectiveWeierstrassCubic W})
    let c := q (MvPolynomial.X (2 : Fin 3))
    let d := q (MvPolynomial.X (1 : Fin 3))
    ((projectiveWeierstrassScheme W).restrictFunctor.map
      (homOfLE (ProjectiveSpectrum.basicOpen_mul_le_left ℬ c d))).left ≫
        projectiveWeierstrassBasicChartToAmbient W 2 =
    ((projectiveWeierstrassScheme W).restrictFunctor.map
      (homOfLE (ProjectiveSpectrum.basicOpen_mul_le_right ℬ c d))).left ≫
        projectiveWeierstrassBasicChartToAmbient W 1 := by
  letI : GradedAlgebra (MvPolynomial.homogeneousSubmodule (Fin 3) ℤ_[2]) :=
    MvPolynomial.gradedAlgebra
  letI : GradedAlgebra (projectiveWeierstrassQuotientComponent W) :=
    projectiveWeierstrassQuotientGrading W
  let ℬ := projectiveWeierstrassQuotientComponent W
  let q : MvPolynomial (Fin 3) ℤ_[2] →+* projectiveWeierstrassCoordinateRing W :=
    Ideal.Quotient.mk (Ideal.span {projectiveWeierstrassCubic W})
  let c := q (MvPolynomial.X (2 : Fin 3))
  let d := q (MvPolynomial.X (1 : Fin 3))
  let kZ := ((projectiveWeierstrassScheme W).restrictFunctor.map
    (homOfLE (ProjectiveSpectrum.basicOpen_mul_le_left ℬ c d))).left
  let kY := ((projectiveWeierstrassScheme W).restrictFunctor.map
    (homOfLE (ProjectiveSpectrum.basicOpen_mul_le_right ℬ c d))).left
  let kY' := ((projectiveWeierstrassScheme W).restrictFunctor.map
    (homOfLE (ProjectiveSpectrum.basicOpen_mul_le_left ℬ d c))).left
  have hz : kZ ≫ projectiveWeierstrassBasicChartToAmbient W 2 =
      projectiveWeierstrassProductChartToAmbient W 2 1 :=
    projectiveWeierstrassProductRestrictionToAmbient W 2 1
  have hy : kY' ≫ projectiveWeierstrassBasicChartToAmbient W 1 =
      projectiveWeierstrassProductChartToAmbient W 1 2 :=
    projectiveWeierstrassProductRestrictionToAmbient W 1 2
  have hswap : HEq (projectiveWeierstrassProductChartToAmbient W 2 1)
      (projectiveWeierstrassProductChartToAmbient W 1 2) :=
    projectiveWeierstrassProductChartToAmbient_comm W 2 1
  have hk : HEq kY kY' :=
    restrictFunctor_map_heq
      (congrArg (fun t => ProjectiveSpectrum.basicOpen ℬ t) (mul_comm c d))
      (ProjectiveSpectrum.basicOpen_mul_le_right ℬ c d)
      (ProjectiveSpectrum.basicOpen_mul_le_left ℬ d c)
  have hright : HEq (kY ≫ projectiveWeierstrassBasicChartToAmbient W 1)
      (kY' ≫ projectiveWeierstrassBasicChartToAmbient W 1) := by
    exact CategoryTheory.heq_comp (by exact congrArg (fun t =>
      ((projectiveWeierstrassScheme W).restrictFunctor.obj
        (ProjectiveSpectrum.basicOpen ℬ t)).left) (mul_comm c d))
      rfl rfl hk (HEq.rfl)
  exact eq_of_heq (((heq_of_eq hz).trans hswap).trans
    (((heq_of_eq hy).symm).trans hright.symm))

/-- The quotient homogeneous cubic has a globally glued scheme
morphism into the ambient projective plane. This does not by itself
establish that the morphism is a closed immersion. -/
noncomputable def projectiveWeierstrassGlobalMorphism
    (W : WeierstrassCurve ℤ_[2]) :
    projectiveWeierstrassScheme W ⟶ projectiveWeierstrassAmbientScheme := by
  letI : GradedAlgebra (MvPolynomial.homogeneousSubmodule (Fin 3) ℤ_[2]) :=
    MvPolynomial.gradedAlgebra
  letI : GradedAlgebra (projectiveWeierstrassQuotientComponent W) :=
    projectiveWeierstrassQuotientGrading W
  let ℬ := projectiveWeierstrassQuotientComponent W
  let q : MvPolynomial (Fin 3) ℤ_[2] →+* projectiveWeierstrassCoordinateRing W :=
    Ideal.Quotient.mk (Ideal.span {projectiveWeierstrassCubic W})
  let c := q (MvPolynomial.X (2 : Fin 3))
  let d := q (MvPolynomial.X (1 : Fin 3))
  let X := projectiveWeierstrassScheme W
  let UZ : X.Opens := ProjectiveSpectrum.basicOpen ℬ c
  let UY : X.Opens := ProjectiveSpectrum.basicOpen ℬ d
  let T : X.Opens := ProjectiveSpectrum.basicOpen ℬ (c * d)
  let fZ := projectiveWeierstrassBasicChartToAmbient W 2
  let fY := projectiveWeierstrassBasicChartToAmbient W 1
  have hT : T = UZ ⊓ UY := ProjectiveSpectrum.basicOpen_mul ℬ c d
  have hres : (X.restrictFunctor.map
      (homOfLE (ProjectiveSpectrum.basicOpen_mul_le_left ℬ c d))).left ≫ fZ =
      (X.restrictFunctor.map
        (homOfLE (ProjectiveSpectrum.basicOpen_mul_le_right ℬ c d))).left ≫ fY :=
    projectiveWeierstrassTwoChartRestrictionAgreement W
  have hZY : pullback.fst UZ.ι UY.ι ≫ fZ =
      pullback.snd UZ.ι UY.ι ≫ fY :=
    overlap_glue_of_restriction UZ UY T hT
      (ProjectiveSpectrum.basicOpen_mul_le_left ℬ c d)
      (ProjectiveSpectrum.basicOpen_mul_le_right ℬ c d) fZ fY hres
  have hYZ : pullback.fst UY.ι UZ.ι ≫ fY =
      pullback.snd UY.ι UZ.ι ≫ fZ := by
    have h := congrArg (fun g : pullback UZ.ι UY.ι ⟶ projectiveWeierstrassAmbientScheme =>
      (pullbackSymmetry UY.ι UZ.ι).hom ≫ g) hZY.symm
    simpa only [← Category.assoc, pullbackSymmetry_hom_comp_fst,
      pullbackSymmetry_hom_comp_snd] using h
  let 𝒰 := projectiveWeierstrassTwoChartOpenCover W
  let f : ∀ b : Bool, 𝒰.obj b ⟶ projectiveWeierstrassAmbientScheme := by
    intro b
    cases b
    · exact fY
    · exact fZ
  have hf : ∀ b e, pullback.fst (𝒰.map b) (𝒰.map e) ≫ f b =
      pullback.snd (𝒰.map b) (𝒰.map e) ≫ f e := by
    intro b e
    cases b <;> cases e
    · change pullback.fst UY.ι UY.ι ≫ fY =
        pullback.snd UY.ι UY.ι ≫ fY
      have hh : pullback.fst UY.ι UY.ι = pullback.snd UY.ι UY.ι :=
        (cancel_mono UY.ι).mp pullback.condition
      exact congrArg (fun g => g ≫ fY) hh
    · exact hYZ
    · exact hZY
    · change pullback.fst UZ.ι UZ.ι ≫ fZ =
        pullback.snd UZ.ι UZ.ι ≫ fZ
      have hh : pullback.fst UZ.ι UZ.ι = pullback.snd UZ.ι UZ.ι :=
        (cancel_mono UZ.ι).mp pullback.condition
      exact congrArg (fun g => g ≫ fZ) hh
  exact 𝒰.glueMorphisms f hf

end Beal.General