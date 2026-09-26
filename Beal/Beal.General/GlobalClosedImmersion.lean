import Beal.«Beal.General».TargetOpenPreimages

/-!
The glued quotient-`Proj` morphism is a closed immersion. The `X`
source-chart restriction follows from `D₊(X) ≤ D₊(Z)` and the
product-chart compatibility. Each matching target-coordinate
restriction is a closed immersion, and the three target opens cover
the ambient projective plane.

This theorem does not assert properness or regularity of the source.
-/

open AlgebraicGeometry CategoryTheory
namespace Beal.General

private theorem quotient_XZ_open_eq_X (W : WeierstrassCurve ℤ_[2]) :
    letI : GradedAlgebra (projectiveWeierstrassQuotientComponent W) :=
      projectiveWeierstrassQuotientGrading W
    let ℬ := projectiveWeierstrassQuotientComponent W
    let q : MvPolynomial (Fin 3) ℤ_[2] →+* projectiveWeierstrassCoordinateRing W :=
      Ideal.Quotient.mk (Ideal.span {projectiveWeierstrassCubic W})
    ProjectiveSpectrum.basicOpen ℬ
        (q (MvPolynomial.X (0 : Fin 3)) * q (MvPolynomial.X (2 : Fin 3))) =
      ProjectiveSpectrum.basicOpen ℬ (q (MvPolynomial.X (0 : Fin 3))) := by
  letI : GradedAlgebra (projectiveWeierstrassQuotientComponent W) :=
    projectiveWeierstrassQuotientGrading W
  intro ℬ q
  rw [ProjectiveSpectrum.basicOpen_mul]
  exact inf_eq_left.mpr (projectiveWeierstrassQuotientBasicOpen_X_le_Z W)

private theorem restrictFunctor_map_heq_on_equal_opens {X : Scheme}
    {T T' U : X.Opens} (h : T = T') (p : T ≤ U) (p' : T' ≤ U) :
    HEq (X.restrictFunctor.map (homOfLE p)).left
      (X.restrictFunctor.map (homOfLE p')).left := by
  cases h
  rfl

/-- Any two chart maps into the ambient projective plane agree on
the actual product basic open, not just for the gluing pair `Y,Z`. -/
theorem projectiveWeierstrassBasicChartToAmbient_agree
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
    ((projectiveWeierstrassScheme W).restrictFunctor.map
      (homOfLE (ProjectiveSpectrum.basicOpen_mul_le_right ℬ
        (q (MvPolynomial.X i)) (q (MvPolynomial.X j))))).left ≫
        projectiveWeierstrassBasicChartToAmbient W j := by
  letI : GradedAlgebra (MvPolynomial.homogeneousSubmodule (Fin 3) ℤ_[2]) :=
    MvPolynomial.gradedAlgebra
  letI : GradedAlgebra (projectiveWeierstrassQuotientComponent W) :=
    projectiveWeierstrassQuotientGrading W
  let ℬ := projectiveWeierstrassQuotientComponent W
  let q : MvPolynomial (Fin 3) ℤ_[2] →+* projectiveWeierstrassCoordinateRing W :=
    Ideal.Quotient.mk (Ideal.span {projectiveWeierstrassCubic W})
  let c := q (MvPolynomial.X i)
  let d := q (MvPolynomial.X j)
  let ki := ((projectiveWeierstrassScheme W).restrictFunctor.map
    (homOfLE (ProjectiveSpectrum.basicOpen_mul_le_left ℬ c d))).left
  let kj := ((projectiveWeierstrassScheme W).restrictFunctor.map
    (homOfLE (ProjectiveSpectrum.basicOpen_mul_le_right ℬ c d))).left
  let kj' := ((projectiveWeierstrassScheme W).restrictFunctor.map
    (homOfLE (ProjectiveSpectrum.basicOpen_mul_le_left ℬ d c))).left
  have hi : ki ≫ projectiveWeierstrassBasicChartToAmbient W i =
      projectiveWeierstrassProductChartToAmbient W i j :=
    projectiveWeierstrassProductRestrictionToAmbient W i j
  have hj : kj' ≫ projectiveWeierstrassBasicChartToAmbient W j =
      projectiveWeierstrassProductChartToAmbient W j i :=
    projectiveWeierstrassProductRestrictionToAmbient W j i
  have hswap : HEq (projectiveWeierstrassProductChartToAmbient W i j)
      (projectiveWeierstrassProductChartToAmbient W j i) :=
    projectiveWeierstrassProductChartToAmbient_comm W i j
  have hk : HEq kj kj' :=
    restrictFunctor_map_heq_on_equal_opens
      (congrArg (fun t => ProjectiveSpectrum.basicOpen ℬ t) (mul_comm c d))
      (ProjectiveSpectrum.basicOpen_mul_le_right ℬ c d)
      (ProjectiveSpectrum.basicOpen_mul_le_left ℬ d c)
  have hright : HEq (kj ≫ projectiveWeierstrassBasicChartToAmbient W j)
      (kj' ≫ projectiveWeierstrassBasicChartToAmbient W j) := by
    exact CategoryTheory.heq_comp (by exact congrArg (fun t =>
      ((projectiveWeierstrassScheme W).restrictFunctor.obj
        (ProjectiveSpectrum.basicOpen ℬ t)).left) (mul_comm c d))
      rfl rfl hk (HEq.rfl)
  exact eq_of_heq (((heq_of_eq hi).trans hswap).trans
    (((heq_of_eq hj).symm).trans hright.symm))

/-- Restricting the glued map to `D₊(X)` gives its original matching
chart map. This uses the *source* inclusion `D₊(X) ≤ D₊(Z)`;
it does not assume the corresponding ambient inclusion. -/
theorem projectiveWeierstrassGlobalMorphism_onX (W : WeierstrassCurve ℤ_[2]) :
    letI : GradedAlgebra (MvPolynomial.homogeneousSubmodule (Fin 3) ℤ_[2]) :=
      MvPolynomial.gradedAlgebra
    letI : GradedAlgebra (projectiveWeierstrassQuotientComponent W) :=
      projectiveWeierstrassQuotientGrading W
    let ℬ := projectiveWeierstrassQuotientComponent W
    let q : MvPolynomial (Fin 3) ℤ_[2] →+* projectiveWeierstrassCoordinateRing W :=
      Ideal.Quotient.mk (Ideal.span {projectiveWeierstrassCubic W})
    let U : (projectiveWeierstrassScheme W).Opens :=
      ProjectiveSpectrum.basicOpen ℬ (q (MvPolynomial.X (0 : Fin 3)))
    U.ι ≫ projectiveWeierstrassGlobalMorphism W =
      projectiveWeierstrassBasicChartToAmbient W 0 := by
  letI : GradedAlgebra (MvPolynomial.homogeneousSubmodule (Fin 3) ℤ_[2]) :=
    MvPolynomial.gradedAlgebra
  letI : GradedAlgebra (projectiveWeierstrassQuotientComponent W) :=
    projectiveWeierstrassQuotientGrading W
  intro ℬ q
  let U : (projectiveWeierstrassScheme W).Opens :=
    ProjectiveSpectrum.basicOpen ℬ (q (MvPolynomial.X (0 : Fin 3)))
  let Z : (projectiveWeierstrassScheme W).Opens :=
    ProjectiveSpectrum.basicOpen ℬ (q (MvPolynomial.X (2 : Fin 3)))
  let S : (projectiveWeierstrassScheme W).Opens :=
    ProjectiveSpectrum.basicOpen ℬ
      (q (MvPolynomial.X (0 : Fin 3)) * q (MvPolynomial.X (2 : Fin 3)))
  let kX : S.toScheme ⟶ U.toScheme :=
    ((projectiveWeierstrassScheme W).restrictFunctor.map
      (homOfLE (ProjectiveSpectrum.basicOpen_mul_le_left ℬ
        (q (MvPolynomial.X (0 : Fin 3))) (q (MvPolynomial.X (2 : Fin 3)))))).left
  let kZ : S.toScheme ⟶ Z.toScheme :=
    ((projectiveWeierstrassScheme W).restrictFunctor.map
      (homOfLE (ProjectiveSpectrum.basicOpen_mul_le_right ℬ
        (q (MvPolynomial.X (0 : Fin 3))) (q (MvPolynomial.X (2 : Fin 3)))))).left
  have hS : S = U := quotient_XZ_open_eq_X W
  let e : S.toScheme ≅ U.toScheme :=
    IsOpenImmersion.isoOfRangeEq S.ι U.ι (by
      rw [Scheme.Opens.range_ι, Scheme.Opens.range_ι]
      exact congrArg (fun T : (projectiveWeierstrassScheme W).Opens =>
        (T : Set (projectiveWeierstrassScheme W))) hS)
  have hkX : kX = e.hom := by
    apply (cancel_mono U.ι).mp
    rw [Scheme.restrictFunctor_map_ofRestrict, IsOpenImmersion.isoOfRangeEq_hom_fac]
  haveI : IsIso kX := hkX ▸ e.isIso_hom
  apply (cancel_epi kX).mp
  calc
    kX ≫ (U.ι ≫ projectiveWeierstrassGlobalMorphism W) =
        S.ι ≫ projectiveWeierstrassGlobalMorphism W := by
          rw [← Category.assoc, Scheme.restrictFunctor_map_ofRestrict]
    _ = kZ ≫ (Z.ι ≫ projectiveWeierstrassGlobalMorphism W) := by
          rw [← Category.assoc, Scheme.restrictFunctor_map_ofRestrict]
    _ = kZ ≫ projectiveWeierstrassBasicChartToAmbient W 2 := by
          rw [projectiveWeierstrassGlobalMorphism_onChart W 2 (Or.inr rfl)]
    _ = kX ≫ projectiveWeierstrassBasicChartToAmbient W 0 :=
          (projectiveWeierstrassBasicChartToAmbient_agree W 0 2).symm

/-- The pullback over each ambient coordinate basic open is exactly
the matching chart closed immersion, up to the scheme isomorphism
induced by equality of the preimage opens. -/
theorem projectiveWeierstrassGlobalMorphism_restrict_isClosed
    (W : WeierstrassCurve ℤ_[2]) (i : Fin 3) :
    letI : GradedAlgebra (MvPolynomial.homogeneousSubmodule (Fin 3) ℤ_[2]) :=
      MvPolynomial.gradedAlgebra
    letI : GradedAlgebra (projectiveWeierstrassQuotientComponent W) :=
      projectiveWeierstrassQuotientGrading W
    let 𝒜 := MvPolynomial.homogeneousSubmodule (Fin 3) ℤ_[2]
    let V : projectiveWeierstrassAmbientScheme.Opens :=
      ProjectiveSpectrum.basicOpen 𝒜 (MvPolynomial.X i)
    IsClosedImmersion ((projectiveWeierstrassGlobalMorphism W) ∣_ V) := by
  letI : GradedAlgebra (MvPolynomial.homogeneousSubmodule (Fin 3) ℤ_[2]) :=
    MvPolynomial.gradedAlgebra
  letI : GradedAlgebra (projectiveWeierstrassQuotientComponent W) :=
    projectiveWeierstrassQuotientGrading W
  intro 𝒜 V
  let ℬ := projectiveWeierstrassQuotientComponent W
  let q : MvPolynomial (Fin 3) ℤ_[2] →+* projectiveWeierstrassCoordinateRing W :=
    Ideal.Quotient.mk (Ideal.span {projectiveWeierstrassCubic W})
  let U : (projectiveWeierstrassScheme W).Opens :=
    ProjectiveSpectrum.basicOpen ℬ (q (MvPolynomial.X i))
  have hp : (projectiveWeierstrassGlobalMorphism W) ⁻¹ᵁ V = U :=
    projectiveWeierstrassGlobalMorphism_preimage_basicOpen W i
  have hf : U.ι ≫ projectiveWeierstrassGlobalMorphism W =
      projectiveWeierstrassBasicProjChartMap W i ≫ V.ι := by
    fin_cases i
    · exact projectiveWeierstrassGlobalMorphism_onX W
    · exact projectiveWeierstrassGlobalMorphism_onChart W 1 (Or.inl rfl)
    · exact projectiveWeierstrassGlobalMorphism_onChart W 2 (Or.inr rfl)
  let e : (projectiveWeierstrassGlobalMorphism W ⁻¹ᵁ V).toScheme ≅ U.toScheme :=
    Scheme.restrictIsoOfEq (projectiveWeierstrassScheme W) hp
  have hefac : e.hom ≫ U.ι =
      (projectiveWeierstrassGlobalMorphism W ⁻¹ᵁ V).ι := by
    exact IsOpenImmersion.isoOfRangeEq_hom_fac _ _ _
  have he : (projectiveWeierstrassGlobalMorphism W ∣_ V) =
      e.hom ≫
        (show U.toScheme ⟶ V.toScheme from projectiveWeierstrassBasicProjChartMap W i) := by
    apply (cancel_mono V.ι).mp
    calc
      (projectiveWeierstrassGlobalMorphism W ∣_ V) ≫ V.ι =
          (projectiveWeierstrassGlobalMorphism W ⁻¹ᵁ V).ι ≫
            projectiveWeierstrassGlobalMorphism W :=
              morphismRestrict_ι _ _
      _ = (e.hom ≫ U.ι) ≫ projectiveWeierstrassGlobalMorphism W := by
            rw [hefac]
      _ = e.hom ≫ (U.ι ≫ projectiveWeierstrassGlobalMorphism W) := by
            rw [Category.assoc]
      _ = e.hom ≫ (projectiveWeierstrassBasicProjChartMap W i ≫ V.ι) := by
            exact congrArg (fun m : U.toScheme ⟶ projectiveWeierstrassAmbientScheme =>
              e.hom ≫ m) hf
      _ = (e.hom ≫ projectiveWeierstrassBasicProjChartMap W i) ≫ V.ι := by
            simp only [Category.assoc]
  rw [he]
  haveI : IsClosedImmersion
      (show U.toScheme ⟶ V.toScheme from projectiveWeierstrassBasicProjChartMap W i) :=
    projectiveWeierstrassBasicProjChartMap_isClosed W i
  infer_instance

private theorem positiveHomogeneous_mem_variables
    {n : ℕ} (hn : 0 < n) {p : MvPolynomial (Fin 3) ℤ_[2]}
    (hp : p.IsHomogeneous n) :
    p ∈ Ideal.span (MvPolynomial.X '' (Set.univ : Set (Fin 3))) := by
  apply MvPolynomial.mem_ideal_span_X_image.mpr
  intro m hm
  have hmdeg : m.degree = n := by
    simpa only [Finsupp.degree_eq_weight_one] using hp (Finsupp.mem_support_iff.mp hm)
  have hmne : m ≠ 0 := by
    intro h
    subst m
    simp [Finsupp.degree_zero] at hmdeg
    omega
  by_contra hnone
  have hzero : m = 0 := by
    ext i
    by_contra hi
    exact hnone ⟨i, Set.mem_univ _, hi⟩
  exact hmne hzero

/-- The ambient projective plane is covered by its three coordinate
basic opens. This uses the actual irrelevant ideal of the pinned
`Proj` construction. -/
theorem projectiveWeierstrassAmbient_basicOpen_iSup :
    letI : GradedAlgebra (MvPolynomial.homogeneousSubmodule (Fin 3) ℤ_[2]) :=
      MvPolynomial.gradedAlgebra
    iSup (fun i : Fin 3 =>
      ProjectiveSpectrum.basicOpen
        (MvPolynomial.homogeneousSubmodule (Fin 3) ℤ_[2]) (MvPolynomial.X i)) = ⊤ := by
  classical
  letI : GradedAlgebra (MvPolynomial.homogeneousSubmodule (Fin 3) ℤ_[2]) :=
    MvPolynomial.gradedAlgebra
  let 𝒜 := MvPolynomial.homogeneousSubmodule (Fin 3) ℤ_[2]
  apply le_antisymm le_top
  intro x _
  by_contra hn
  have hall (i : Fin 3) : (MvPolynomial.X i : MvPolynomial (Fin 3) ℤ_[2]) ∈
      x.asHomogeneousIdeal := by
    by_contra hi
    apply hn
    exact (le_iSup (fun i : Fin 3 => ProjectiveSpectrum.basicOpen 𝒜 (MvPolynomial.X i)) i) hi
  have hspan : Ideal.span (MvPolynomial.X '' (Set.univ : Set (Fin 3))) ≤
      x.asHomogeneousIdeal.toIdeal := by
    apply Ideal.span_le.mpr
    rintro p ⟨i, -, rfl⟩
    exact hall i
  have hpos (n : ℕ) (hn : 0 < n) (z : MvPolynomial (Fin 3) ℤ_[2])
      (hz : z ∈ 𝒜 n) : z ∈ x.asHomogeneousIdeal.toIdeal := by
    exact hspan (positiveHomogeneous_mem_variables hn hz)
  apply x.not_irrelevant_le
  intro z hz
  rw [← DirectSum.sum_support_decompose 𝒜 z]
  apply Ideal.sum_mem
  intro n hn
  by_cases hn0 : n = 0
  · subst n
    change GradedRing.proj 𝒜 0 z = 0 at hz
    have h0 : (↑(((DirectSum.decompose 𝒜) z) 0) :
        MvPolynomial (Fin 3) ℤ_[2]) = 0 := by
      simpa only [GradedRing.proj_apply] using hz
    rw [h0]
    exact x.asHomogeneousIdeal.toIdeal.zero_mem
  · exact hpos n (Nat.pos_of_ne_zero hn0) _ (SetLike.coe_mem _)

/-- The globally glued homogeneous-cubic morphism from the genuine
quotient `Proj` into the ambient projective plane is a closed immersion. -/
theorem projectiveWeierstrassGlobalMorphism_isClosed
    (W : WeierstrassCurve ℤ_[2]) :
    IsClosedImmersion (projectiveWeierstrassGlobalMorphism W) := by
  letI : GradedAlgebra (MvPolynomial.homogeneousSubmodule (Fin 3) ℤ_[2]) :=
    MvPolynomial.gradedAlgebra
  letI : GradedAlgebra (projectiveWeierstrassQuotientComponent W) :=
    projectiveWeierstrassQuotientGrading W
  exact IsLocalAtTarget.of_iSup_eq_top
    (P := @IsClosedImmersion)
    (fun i : Fin 3 => ProjectiveSpectrum.basicOpen
      (MvPolynomial.homogeneousSubmodule (Fin 3) ℤ_[2]) (MvPolynomial.X i))
    projectiveWeierstrassAmbient_basicOpen_iSup
    (fun i => projectiveWeierstrassGlobalMorphism_restrict_isClosed W i)

end Beal.General