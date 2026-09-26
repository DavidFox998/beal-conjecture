import Beal.«Beal.General».TwoChartGlobalMorphism

/-!
The glued quotient-`Proj` morphism pulls back every ambient coordinate
basic open to its matching quotient basic open. The proof works on the
two actual source-cover charts and compares degree-zero fractions
`X_j / X_i` under the homogeneous quotient map.
-/

open AlgebraicGeometry CategoryTheory
namespace Beal.General

private theorem coordinateRatio_map (W : WeierstrassCurve ℤ_[2]) (i j : Fin 3) :
    letI : GradedAlgebra (MvPolynomial.homogeneousSubmodule (Fin 3) ℤ_[2]) :=
      MvPolynomial.gradedAlgebra
    letI : GradedAlgebra (projectiveWeierstrassQuotientComponent W) :=
      projectiveWeierstrassQuotientGrading W
    let 𝒜 := MvPolynomial.homogeneousSubmodule (Fin 3) ℤ_[2]
    let ℬ := projectiveWeierstrassQuotientComponent W
    let q : MvPolynomial (Fin 3) ℤ_[2] →+* projectiveWeierstrassCoordinateRing W :=
      Ideal.Quotient.mk (Ideal.span {projectiveWeierstrassCubic W})
    let t : HomogeneousLocalization.NumDenSameDeg 𝒜 (.powers (MvPolynomial.X i)) :=
      { deg := 1
        num := ⟨MvPolynomial.X j, MvPolynomial.isHomogeneous_X _ _⟩
        den := ⟨MvPolynomial.X i, MvPolynomial.isHomogeneous_X _ _⟩
        den_mem := Submonoid.mem_powers _ }
    let tq : HomogeneousLocalization.NumDenSameDeg ℬ (.powers (q (MvPolynomial.X i))) :=
      { deg := 1
        num := ⟨q (MvPolynomial.X j), projectiveWeierstrassCoordinate_mem_degree_one W j⟩
        den := ⟨q (MvPolynomial.X i), projectiveWeierstrassCoordinate_mem_degree_one W i⟩
        den_mem := Submonoid.mem_powers _ }
    (projectiveWeierstrassBasicChartQuotientMap W i) (HomogeneousLocalization.mk t) =
      HomogeneousLocalization.mk tq := by
  letI : GradedAlgebra (MvPolynomial.homogeneousSubmodule (Fin 3) ℤ_[2]) :=
    MvPolynomial.gradedAlgebra
  letI : GradedAlgebra (projectiveWeierstrassQuotientComponent W) :=
    projectiveWeierstrassQuotientGrading W
  intro 𝒜 ℬ q t tq
  unfold projectiveWeierstrassBasicChartQuotientMap
  rw [HomogeneousLocalization.map_mk]

private theorem basicChart_coordinate_mem (W : WeierstrassCurve ℤ_[2]) (i j : Fin 3) :
    letI : GradedAlgebra (MvPolynomial.homogeneousSubmodule (Fin 3) ℤ_[2]) :=
      MvPolynomial.gradedAlgebra
    letI : GradedAlgebra (projectiveWeierstrassQuotientComponent W) :=
      projectiveWeierstrassQuotientGrading W
    let ℬ := projectiveWeierstrassQuotientComponent W
    let q : MvPolynomial (Fin 3) ℤ_[2] →+* projectiveWeierstrassCoordinateRing W :=
      Ideal.Quotient.mk (Ideal.span {projectiveWeierstrassCubic W})
    ∀ p : ProjectiveSpectrum.basicOpen ℬ (q (MvPolynomial.X i)),
      (MvPolynomial.X j) ∈
        ((projectiveWeierstrassBasicProjChartMap W i).val.base p).val.asHomogeneousIdeal ↔
      q (MvPolynomial.X j) ∈ p.val.asHomogeneousIdeal := by
  letI : GradedAlgebra (MvPolynomial.homogeneousSubmodule (Fin 3) ℤ_[2]) :=
    MvPolynomial.gradedAlgebra
  letI : GradedAlgebra (projectiveWeierstrassQuotientComponent W) :=
    projectiveWeierstrassQuotientGrading W
  intro _ _ p
  let 𝒜 := MvPolynomial.homogeneousSubmodule (Fin 3) ℤ_[2]
  let ℬ := projectiveWeierstrassQuotientComponent W
  let q : MvPolynomial (Fin 3) ℤ_[2] →+* projectiveWeierstrassCoordinateRing W :=
    Ideal.Quotient.mk (Ideal.span {projectiveWeierstrassCubic W})
  let t : HomogeneousLocalization.NumDenSameDeg 𝒜 (.powers (MvPolynomial.X i)) :=
    { deg := 1
      num := ⟨MvPolynomial.X j, MvPolynomial.isHomogeneous_X _ _⟩
      den := ⟨MvPolynomial.X i, MvPolynomial.isHomogeneous_X _ _⟩
      den_mem := Submonoid.mem_powers _ }
  let tq : HomogeneousLocalization.NumDenSameDeg ℬ (.powers (q (MvPolynomial.X i))) :=
    { deg := 1
      num := ⟨q (MvPolynomial.X j), projectiveWeierstrassCoordinate_mem_degree_one W j⟩
      den := ⟨q (MvPolynomial.X i), projectiveWeierstrassCoordinate_mem_degree_one W i⟩
      den_mem := Submonoid.mem_powers _ }
  let v := (projectiveWeierstrassBasicProjChartMap W i).val.base p
  have he : ((AlgebraicGeometry.ProjectiveSpectrum.Proj.toSpec 𝒜 (MvPolynomial.X i)).val.base v) =
      (AlgebraicGeometry.Spec.locallyRingedSpaceMap
        (CommRingCat.ofHom (projectiveWeierstrassBasicChartQuotientMap W i))).val.base
        ((AlgebraicGeometry.ProjectiveSpectrum.Proj.toSpec ℬ (q (MvPolynomial.X i))).val.base p) := by
    have hcomp : projectiveWeierstrassBasicProjChartMap W i ≫
        (projectiveWeierstrassAmbientBasicChartIso i).hom =
      (projectiveWeierstrassBasicChartIso W i).hom ≫
        AlgebraicGeometry.Spec.locallyRingedSpaceMap
          (CommRingCat.ofHom (projectiveWeierstrassBasicChartQuotientMap W i)) := by
      unfold projectiveWeierstrassBasicProjChartMap
      simp only [Category.assoc, Iso.inv_hom_id, Category.comp_id]
    have hp := congrArg (fun f => f.val.base p) hcomp
    exact hp
  have ht := AlgebraicGeometry.ProjectiveSpectrum.Proj.mk_mem_toSpec_base_apply 𝒜 v t
  have htq := AlgebraicGeometry.ProjectiveSpectrum.Proj.mk_mem_toSpec_base_apply ℬ p tq
  rw [← ht, ← htq, ← coordinateRatio_map W i j, he]
  rfl

private theorem global_coordinate_mem_onChart (W : WeierstrassCurve ℤ_[2])
    (i j : Fin 3) (hi : i = 1 ∨ i = 2) :
    letI : GradedAlgebra (MvPolynomial.homogeneousSubmodule (Fin 3) ℤ_[2]) :=
      MvPolynomial.gradedAlgebra
    letI : GradedAlgebra (projectiveWeierstrassQuotientComponent W) :=
      projectiveWeierstrassQuotientGrading W
    let ℬ := projectiveWeierstrassQuotientComponent W
    let q : MvPolynomial (Fin 3) ℤ_[2] →+* projectiveWeierstrassCoordinateRing W :=
      Ideal.Quotient.mk (Ideal.span {projectiveWeierstrassCubic W})
    ∀ p : ProjectiveSpectrum.basicOpen ℬ (q (MvPolynomial.X i)),
      MvPolynomial.X j ∈
        ((projectiveWeierstrassGlobalMorphism W).val.base p.val).asHomogeneousIdeal ↔
      q (MvPolynomial.X j) ∈ p.val.asHomogeneousIdeal := by
  letI : GradedAlgebra (MvPolynomial.homogeneousSubmodule (Fin 3) ℤ_[2]) :=
    MvPolynomial.gradedAlgebra
  letI : GradedAlgebra (projectiveWeierstrassQuotientComponent W) :=
    projectiveWeierstrassQuotientGrading W
  intro _ _ p
  have h := congrArg (fun m => m.val.base p)
    (projectiveWeierstrassGlobalMorphism_onChart W i hi)
  change (projectiveWeierstrassGlobalMorphism W).val.base p.val =
    ((projectiveWeierstrassBasicProjChartMap W i).val.base p).val at h
  rw [h]
  exact basicChart_coordinate_mem W i j p

/-- A coordinate belongs to the image prime precisely when its
homogeneous-quotient image belongs to the source prime. -/
theorem projectiveWeierstrassGlobalMorphism_coordinate_mem
    (W : WeierstrassCurve ℤ_[2]) (j : Fin 3) :
    letI : GradedAlgebra (MvPolynomial.homogeneousSubmodule (Fin 3) ℤ_[2]) :=
      MvPolynomial.gradedAlgebra
    letI : GradedAlgebra (projectiveWeierstrassQuotientComponent W) :=
      projectiveWeierstrassQuotientGrading W
    let q : MvPolynomial (Fin 3) ℤ_[2] →+* projectiveWeierstrassCoordinateRing W :=
      Ideal.Quotient.mk (Ideal.span {projectiveWeierstrassCubic W})
    ∀ p : projectiveWeierstrassScheme W,
      MvPolynomial.X j ∈
        ((projectiveWeierstrassGlobalMorphism W).val.base p).asHomogeneousIdeal ↔
      q (MvPolynomial.X j) ∈ p.asHomogeneousIdeal := by
  letI : GradedAlgebra (MvPolynomial.homogeneousSubmodule (Fin 3) ℤ_[2]) :=
    MvPolynomial.gradedAlgebra
  letI : GradedAlgebra (projectiveWeierstrassQuotientComponent W) :=
    projectiveWeierstrassQuotientGrading W
  intro _ p
  have hcover := projectiveWeierstrassQuotientBasicOpen_Z_sup_Y W
  have hp : p ∈
      ProjectiveSpectrum.basicOpen (projectiveWeierstrassQuotientComponent W)
        ((Ideal.Quotient.mk (Ideal.span {projectiveWeierstrassCubic W}))
          (MvPolynomial.X (2 : Fin 3))) ⊔
      ProjectiveSpectrum.basicOpen (projectiveWeierstrassQuotientComponent W)
        ((Ideal.Quotient.mk (Ideal.span {projectiveWeierstrassCubic W}))
          (MvPolynomial.X (1 : Fin 3))) := by
    rw [hcover]
    trivial
  rcases hp with hz | hy
  · exact global_coordinate_mem_onChart W 2 j (Or.inr rfl) ⟨p, hz⟩
  · exact global_coordinate_mem_onChart W 1 j (Or.inl rfl) ⟨p, hy⟩

/-- Pulling back any of the three standard ambient coordinate opens
under the glued morphism gives the matching quotient-`Proj` open. -/
theorem projectiveWeierstrassGlobalMorphism_preimage_basicOpen
    (W : WeierstrassCurve ℤ_[2]) (j : Fin 3) :
    letI : GradedAlgebra (MvPolynomial.homogeneousSubmodule (Fin 3) ℤ_[2]) :=
      MvPolynomial.gradedAlgebra
    letI : GradedAlgebra (projectiveWeierstrassQuotientComponent W) :=
      projectiveWeierstrassQuotientGrading W
    let 𝒜 := MvPolynomial.homogeneousSubmodule (Fin 3) ℤ_[2]
    let ℬ := projectiveWeierstrassQuotientComponent W
    let q : MvPolynomial (Fin 3) ℤ_[2] →+* projectiveWeierstrassCoordinateRing W :=
      Ideal.Quotient.mk (Ideal.span {projectiveWeierstrassCubic W})
    (projectiveWeierstrassGlobalMorphism W) ⁻¹ᵁ
      ProjectiveSpectrum.basicOpen 𝒜 (MvPolynomial.X j) =
    ProjectiveSpectrum.basicOpen ℬ (q (MvPolynomial.X j)) := by
  letI : GradedAlgebra (MvPolynomial.homogeneousSubmodule (Fin 3) ℤ_[2]) :=
    MvPolynomial.gradedAlgebra
  letI : GradedAlgebra (projectiveWeierstrassQuotientComponent W) :=
    projectiveWeierstrassQuotientGrading W
  intro 𝒜 ℬ q
  ext p
  exact not_congr (projectiveWeierstrassGlobalMorphism_coordinate_mem W j p)

end Beal.General