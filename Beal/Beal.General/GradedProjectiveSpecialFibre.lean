import Beal.«Beal.General».ProjectiveFibreIrreducibility

/-!
The quotient of a nonnegatively graded algebra by a homogeneous
ideal inherits a grading. This is constructed explicitly here because
the pinned Mathlib has no quotient-grading constructor suitable for
the actual projective special-fibre coordinate ring.
-/

namespace Beal.General

variable {R A : Type*} [CommRing R] [CommRing A] [Algebra R A]
variable (𝒜 : ℕ → Submodule R A) [GradedAlgebra 𝒜]
variable (I : Ideal A) (hI : I.IsHomogeneous 𝒜)

/-- Images of degree-`n` elements in a quotient by a homogeneous ideal. -/
noncomputable def homogeneousQuotientComponent (n : ℕ) :
    Submodule R (A ⧸ I) :=
  Submodule.map (Ideal.Quotient.mkₐ R I).toLinearMap (𝒜 n)

theorem homogeneousQuotientComponent_iSup_eq_top :
    (⨆ n : ℕ, homogeneousQuotientComponent 𝒜 I n) = ⊤ := by
  classical
  unfold homogeneousQuotientComponent
  rw [← Submodule.map_iSup]
  rw [DirectSum.IsInternal.submodule_iSup_eq_top
    (DirectSum.Decomposition.isInternal 𝒜)]
  rw [Submodule.map_top]
  exact LinearMap.range_eq_top.mpr (Ideal.Quotient.mkₐ_surjective R I)

/-- Membership of a sum of homogeneous terms in a homogeneous ideal
can be checked degree by degree. -/
theorem homogeneous_sum_mem_ideal_iff
    (hI : I.IsHomogeneous 𝒜)
    (s : Finset ℕ) (p : ℕ → A)
    (hp : ∀ n ∈ s, p n ∈ 𝒜 n) :
    (∑ n ∈ s, p n) ∈ I ↔ ∀ n ∈ s, p n ∈ I := by
  constructor
  · intro hsum n hn
    have hproj_eq : GradedRing.proj 𝒜 n (∑ j ∈ s, p j) = p n := by
      rw [map_sum]
      calc
        (∑ j ∈ s, GradedRing.proj 𝒜 n (p j)) =
            ∑ j ∈ s, if j = n then p j else 0 := by
          apply Finset.sum_congr rfl
          intro j hj
          by_cases h : j = n
          · subst j
            simp [GradedRing.proj_apply,
              DirectSum.decompose_of_mem_same 𝒜 (hp n hj)]
          · simp [h, GradedRing.proj_apply,
              DirectSum.decompose_of_mem_ne 𝒜 (hp j hj) h]
        _ = p n := by simp [hn]
    have hproj := hI n hsum
    rw [GradedRing.proj_apply] at hproj_eq
    rwa [hproj_eq] at hproj
  · intro h
    exact Ideal.sum_mem _ (fun n hn => h n hn)

/-- Multiplicative structure of the quotient grading. -/
noncomputable def homogeneousQuotientGradedMonoid :
    SetLike.GradedMonoid (homogeneousQuotientComponent 𝒜 I) where
  one_mem := by
    apply Submodule.mem_map.mpr
    refine ⟨1, SetLike.GradedOne.one_mem, ?_⟩
    simp
  mul_mem := by
    intro i j a b ha hb
    obtain ⟨a', ha', rfl⟩ := Submodule.mem_map.mp ha
    obtain ⟨b', hb', rfl⟩ := Submodule.mem_map.mp hb
    apply Submodule.mem_map.mpr
    refine ⟨a' * b', SetLike.GradedMul.mul_mem ha' hb', ?_⟩
    exact map_mul (Ideal.Quotient.mkₐ R I) a' b'

/-- Quotient images of different degrees form an internal direct sum. -/
theorem homogeneousQuotient_isInternal (hI : I.IsHomogeneous 𝒜) :
    DirectSum.IsInternal (homogeneousQuotientComponent 𝒜 I) := by
  classical
  let Q := homogeneousQuotientComponent 𝒜 I
  have hzero (t : DirectSum ℕ (fun n => Q n))
      (ht : (DirectSum.coeAddMonoidHom Q) t = 0) : t = 0 := by
    have hrep (n : ℕ) :
        ∃ p : A, p ∈ 𝒜 n ∧ (Ideal.Quotient.mk I) p = (t n : A ⧸ I) := by
      obtain ⟨p, hp, heq⟩ := Submodule.mem_map.mp (t n).property
      exact ⟨p, hp, heq⟩
    let p : ℕ → A := fun n => Classical.choose (hrep n)
    have hp (n : ℕ) : p n ∈ 𝒜 n :=
      (Classical.choose_spec (hrep n)).1
    have hq (n : ℕ) : (Ideal.Quotient.mk I) (p n) = (t n : A ⧸ I) :=
      (Classical.choose_spec (hrep n)).2
    have hsum : (∑ n ∈ t.support, p n) ∈ I := by
      apply Ideal.Quotient.eq_zero_iff_mem.mp
      rw [map_sum]
      calc
        (∑ n ∈ t.support, (Ideal.Quotient.mk I) (p n)) =
            (DirectSum.coeAddMonoidHom Q) t := by
          rw [DirectSum.coeAddMonoidHom_eq_dfinsupp_sum]
          simp only [DFinsupp.sum, hq]
        _ = 0 := ht
    have hcomponent := (homogeneous_sum_mem_ideal_iff 𝒜 I hI
      t.support p (fun n _ => hp n)).mp hsum
    apply DFinsupp.ext
    intro n
    rw [DFinsupp.zero_apply]
    by_cases hn : n ∈ t.support
    · apply Submodule.coe_eq_zero.mp
      rw [← hq n]
      exact Ideal.Quotient.eq_zero_iff_mem.mpr (hcomponent n hn)
    · exact DFinsupp.not_mem_support_iff.mp hn
  have hinj : Function.Injective (DirectSum.coeAddMonoidHom Q) := by
    intro t₁ t₂ h
    have hdiff : (DirectSum.coeAddMonoidHom Q) (t₁ - t₂) = 0 := by
      rw [map_sub, h, sub_self]
    exact sub_eq_zero.mp (hzero (t₁ - t₂) hdiff)
  have hspan := homogeneousQuotientComponent_iSup_eq_top 𝒜 I
  change (⨆ n, Q n) = ⊤ at hspan
  rw [Submodule.iSup_eq_range_dfinsupp_lsum, LinearMap.range_eq_top] at hspan
  exact ⟨hinj, hspan⟩

/-- The quotient by a homogeneous ideal carries its inherited
`ℕ`-graded algebra structure. -/
noncomputable def homogeneousQuotientGrading (hI : I.IsHomogeneous 𝒜) :
    GradedAlgebra (homogeneousQuotientComponent 𝒜 I) := by
  letI : SetLike.GradedMonoid (homogeneousQuotientComponent 𝒜 I) :=
    homogeneousQuotientGradedMonoid 𝒜 I
  exact DirectSum.IsInternal.gradedAlgebra
    (homogeneousQuotient_isInternal 𝒜 I hI)

/-- A bijection respecting all homogeneous pieces also respects
them in reverse: decompose an inverse image and use uniqueness
of the target's homogeneous decomposition. -/
theorem ringEquiv_symm_mem_grade
    {S B : Type*} [CommRing S] [CommRing B] [Algebra S B]
    (ℬ : ℕ → Submodule S B) [GradedAlgebra ℬ]
    (e : A ≃+* B)
    (he : ∀ n (a : A), a ∈ 𝒜 n → e a ∈ ℬ n)
    (n : ℕ) (b : B) (hb : b ∈ ℬ n) :
    e.symm b ∈ 𝒜 n := by
  classical
  let x := e.symm b
  let s := (DirectSum.decompose 𝒜 x).support
  have hmem (j : ℕ) : GradedRing.proj 𝒜 j x ∈ 𝒜 j := by
    rw [GradedRing.proj_apply]
    exact ((DirectSum.decompose 𝒜 x) j).property
  have hsum : b = ∑ j ∈ s, e (GradedRing.proj 𝒜 j x) := by
    calc
      b = e x := (e.apply_symm_apply b).symm
      _ = e (∑ j ∈ s, GradedRing.proj 𝒜 j x) := by
        exact congrArg e (by
          simpa only [s, GradedRing.proj_apply] using
            (DirectSum.sum_support_decompose 𝒜 x).symm)
      _ = ∑ j ∈ s, e (GradedRing.proj 𝒜 j x) := by rw [map_sum]
  have hsame : GradedRing.proj ℬ n b = b := by
    rw [GradedRing.proj_apply]
    exact DirectSum.decompose_of_mem_same ℬ hb
  have hproj : b = e (GradedRing.proj 𝒜 n x) := by
    calc
      b = GradedRing.proj ℬ n b := hsame.symm
      _ = ∑ j ∈ s, GradedRing.proj ℬ n
          (e (GradedRing.proj 𝒜 j x)) := by rw [hsum, map_sum]
      _ = ∑ j ∈ s, if j = n then
          e (GradedRing.proj 𝒜 j x) else 0 := by
        apply Finset.sum_congr rfl
        intro j hj
        by_cases h : j = n
        · subst j
          simp only [if_pos rfl, GradedRing.proj_apply]
          exact DirectSum.decompose_of_mem_same ℬ (he n _ (hmem n))
        · simp only [if_neg h, GradedRing.proj_apply]
          exact DirectSum.decompose_of_mem_ne ℬ (he j _ (hmem j)) h
      _ = e (GradedRing.proj 𝒜 n x) := by
        by_cases hn : n ∈ s
        · simp [hn]
        · have hzero : GradedRing.proj 𝒜 n x = 0 := by
            rw [GradedRing.proj_apply]
            have hz : (DirectSum.decompose 𝒜 x) n = 0 :=
              DFinsupp.not_mem_support_iff.mp hn
            rw [hz]
            rfl
          simp [hn, hzero]
  have hx : x = GradedRing.proj 𝒜 n x := e.injective
    (by simpa only [x, e.apply_symm_apply] using hproj)
  rw [show e.symm b = x from rfl, hx]
  exact hmem n

end Beal.General

namespace Beal.General

/-- The grading on the quotient of the actual projective coordinate
ring by the image of the base uniformizer. -/
noncomputable def projectiveWeierstrassSpecialFibreComponent
    (W : WeierstrassCurve ℤ_[2]) (n : ℕ) :
    Submodule ℤ_[2] (projectiveWeierstrassCoordinateRing W ⧸
      projectiveWeierstrassSpecialFibreIdeal W) :=
  homogeneousQuotientComponent
    (projectiveWeierstrassQuotientComponent W)
    (projectiveWeierstrassSpecialFibreIdeal W) n

/-- The actual projective special-fibre coordinate quotient has a
genuine inherited graded-algebra structure; this statement does not
identify its `Proj` with a scheme-theoretic base change. -/
noncomputable def projectiveWeierstrassSpecialFibreGrading
    (W : WeierstrassCurve ℤ_[2]) :
    GradedAlgebra (projectiveWeierstrassSpecialFibreComponent W) := by
  letI : GradedAlgebra (projectiveWeierstrassQuotientComponent W) :=
    projectiveWeierstrassQuotientGrading W
  exact homogeneousQuotientGrading
    (projectiveWeierstrassQuotientComponent W)
    (projectiveWeierstrassSpecialFibreIdeal W)
    (projectiveWeierstrassSpecialFibreIdeal_isHomogeneous W)

/-- A Proj can now be formed from the graded algebraic special-fibre
coordinate ring. No isomorphism with the fibre of the integral
projective scheme is asserted. -/
noncomputable def projectiveWeierstrassAlgebraicSpecialFibreProj
    (W : WeierstrassCurve ℤ_[2]) : AlgebraicGeometry.Scheme := by
  letI : GradedAlgebra (projectiveWeierstrassSpecialFibreComponent W) :=
    projectiveWeierstrassSpecialFibreGrading W
  exact AlgebraicGeometry.Proj
    (projectiveWeierstrassSpecialFibreComponent W)

/-- The Proj of the graded algebraic special-fibre coordinate quotient
is irreducible in the split nodal case. A base-change isomorphism is
still needed before this can be called the scheme fibre. -/
theorem splitNode_projectiveAlgebraicSpecialFibre_irreducible
    (W : WeierstrassCurve ℤ_[2])
    (hnode : ReducedNodalPoint (W.map PadicInt.toZMod)
      (PadicInt.toZMod W.a₃)
      (PadicInt.toZMod (W.a₃ ^ 2 + W.a₄)))
    (hsplit : 3 * PadicInt.toZMod W.a₃ +
      (W.map PadicInt.toZMod).a₂ = 0) :
    letI : GradedAlgebra (projectiveWeierstrassSpecialFibreComponent W) :=
      projectiveWeierstrassSpecialFibreGrading W
    IrreducibleSpace (ProjectiveSpectrum
      (projectiveWeierstrassSpecialFibreComponent W)) := by
  letI : GradedAlgebra (projectiveWeierstrassSpecialFibreComponent W) :=
    projectiveWeierstrassSpecialFibreGrading W
  let ℬ := projectiveWeierstrassSpecialFibreComponent W
  let y := (Ideal.Quotient.mk (projectiveWeierstrassSpecialFibreIdeal W))
    ((Ideal.Quotient.mk (Ideal.span {projectiveWeierstrassCubic W}))
      (MvPolynomial.X (1 : Fin 3)))
  haveI : IsDomain (projectiveWeierstrassCoordinateRing W ⧸
      projectiveWeierstrassSpecialFibreIdeal W) := by
    have e := splitNode_projectiveSpecialFibreCoordinateRing_equiv W hnode hsplit
    haveI : IsDomain (MvPolynomial (Fin 3) (ZMod 2) ⧸
        Ideal.span {splitNodeProjectiveCubic}) :=
      splitNodeProjectiveCoordinateRing_isDomain
    exact e.toMulEquiv.isDomain _
  have hydegree : y ∈ ℬ 1 := by
    apply Submodule.mem_map.mpr
    exact ⟨_, projectiveWeierstrassCoordinate_mem_degree_one W 1, rfl⟩
  have hyne : y ≠ 0 := by
    intro hz
    exact projectiveWeierstrassSpecialFibreIdeal_not_Y W
      (Ideal.Quotient.eq_zero_iff_mem.mp hz)
  have hypos : y ∈ HomogeneousIdeal.irrelevant ℬ := by
    rw [HomogeneousIdeal.mem_irrelevant_iff]
    change GradedRing.proj ℬ 0 y = 0
    rw [GradedRing.proj_apply]
    exact DirectSum.decompose_of_mem_ne ℬ hydegree
      (by decide : (1 : ℕ) ≠ 0)
  apply projectiveSpectrum_irreducible_of_domain ℤ_[2]
    (projectiveWeierstrassCoordinateRing W ⧸
      projectiveWeierstrassSpecialFibreIdeal W) ℬ
  intro h
  have hybot : y ∈ (⊥ : HomogeneousIdeal ℬ) := h hypos
  have hyzero : y = 0 := by
    simpa only [HomogeneousIdeal.coe_bot, SetLike.mem_coe,
      Submodule.mem_bot] using hybot
  exact hyne hyzero

/-- The standard total-degree grading over the residue field. -/
noncomputable def splitNodeProjectiveStandardGrading :
    GradedAlgebra
      (MvPolynomial.homogeneousSubmodule (Fin 3) (ZMod 2)) := by
  letI : SetLike.GradedMonoid
      (MvPolynomial.homogeneousSubmodule (Fin 3) (ZMod 2)) :=
    MvPolynomial.HomogeneousSubmodule.gradedMonoid
  letI : DirectSum.Decomposition
      (MvPolynomial.homogeneousSubmodule (Fin 3) (ZMod 2)) :=
    MvPolynomial.decomposition
  exact DirectSum.IsInternal.gradedAlgebra
    (DirectSum.Decomposition.isInternal
      (MvPolynomial.homogeneousSubmodule (Fin 3) (ZMod 2)))

/-- The canonical split projective cubic is homogeneous of degree
three, so its prime defining ideal inherits a quotient grading. -/
theorem splitNodeProjectiveCubic_isHomogeneous :
    splitNodeProjectiveCubic.IsHomogeneous 3 := by
  let U : MvPolynomial (Fin 3) (ZMod 2) := MvPolynomial.X 0
  let V : MvPolynomial (Fin 3) (ZMod 2) := MvPolynomial.X 1
  let Z : MvPolynomial (Fin 3) (ZMod 2) := MvPolynomial.X 2
  have hU : U.IsHomogeneous 1 := MvPolynomial.isHomogeneous_X _ _
  have hV : V.IsHomogeneous 1 := MvPolynomial.isHomogeneous_X _ _
  have hZ : Z.IsHomogeneous 1 := MvPolynomial.isHomogeneous_X _ _
  change (Z * V * (V + U) - U ^ 3).IsHomogeneous 3
  have hleft : (Z * V * (V + U)).IsHomogeneous 3 := by
    simpa using ((hZ.mul hV).mul (hV.add hU))
  have hright : (U ^ 3).IsHomogeneous 3 := by
    simpa using hU.pow 3
  exact hleft.sub hright

theorem splitNodeProjectiveCubic_ideal_isHomogeneous :
    letI : GradedAlgebra
        (MvPolynomial.homogeneousSubmodule (Fin 3) (ZMod 2)) :=
      splitNodeProjectiveStandardGrading
    (Ideal.span {splitNodeProjectiveCubic} :
      Ideal (MvPolynomial (Fin 3) (ZMod 2))).IsHomogeneous
        (MvPolynomial.homogeneousSubmodule (Fin 3) (ZMod 2)) := by
  letI : GradedAlgebra
      (MvPolynomial.homogeneousSubmodule (Fin 3) (ZMod 2)) :=
    splitNodeProjectiveStandardGrading
  apply Ideal.homogeneous_span
  intro f hf
  rcases Set.mem_singleton_iff.mp hf with rfl
  exact ⟨3, splitNodeProjectiveCubic_isHomogeneous⟩

/-- Homogeneous pieces of the canonical split cubic's coordinate
ring, formed by reducing total-degree pieces modulo the cubic. -/
noncomputable def splitNodeProjectiveQuotientComponent (n : ℕ) :
    Submodule (ZMod 2) (MvPolynomial (Fin 3) (ZMod 2) ⧸
      Ideal.span {splitNodeProjectiveCubic}) :=
  homogeneousQuotientComponent
    (MvPolynomial.homogeneousSubmodule (Fin 3) (ZMod 2))
    (Ideal.span {splitNodeProjectiveCubic}) n

noncomputable def splitNodeProjectiveQuotientGrading :
    GradedAlgebra splitNodeProjectiveQuotientComponent := by
  letI : GradedAlgebra
      (MvPolynomial.homogeneousSubmodule (Fin 3) (ZMod 2)) :=
    splitNodeProjectiveStandardGrading
  exact homogeneousQuotientGrading
    (MvPolynomial.homogeneousSubmodule (Fin 3) (ZMod 2))
    (Ideal.span {splitNodeProjectiveCubic})
    splitNodeProjectiveCubic_ideal_isHomogeneous

/-- On polynomial representatives, the ring equivalence is coefficient
reduction followed by the reversible homogeneous translation. -/
theorem splitNode_projectiveSpecialFibreCoordinateRing_equiv_apply
    (W : WeierstrassCurve ℤ_[2])
    (hnode : ReducedNodalPoint (W.map PadicInt.toZMod)
      (PadicInt.toZMod W.a₃)
      (PadicInt.toZMod (W.a₃ ^ 2 + W.a₄)))
    (hsplit : 3 * PadicInt.toZMod W.a₃ +
      (W.map PadicInt.toZMod).a₂ = 0)
    (p : MvPolynomial (Fin 3) ℤ_[2]) :
    (splitNode_projectiveSpecialFibreCoordinateRing_equiv W hnode hsplit)
      ((Ideal.Quotient.mk (projectiveWeierstrassSpecialFibreIdeal W))
        ((Ideal.Quotient.mk (Ideal.span {projectiveWeierstrassCubic W})) p)) =
      (Ideal.Quotient.mk (Ideal.span {splitNodeProjectiveCubic}))
        ((projectivePlaneTranslation (ZMod 2)
          (PadicInt.toZMod W.a₃)
          (PadicInt.toZMod (W.a₃ ^ 2 + W.a₄)))
          (MvPolynomial.map PadicInt.toZMod p)) := by
  simp [splitNode_projectiveSpecialFibreCoordinateRing_equiv,
    splitNode_projectiveCubic_modTwo_quotient_equiv,
    DoubleQuot.quotQuotEquivQuotSup_quotQuotMk,
    Ideal.quotEquivOfEq_mk, Ideal.quotientEquiv_mk]
  rfl

/-- The checked coordinate-ring equivalence preserves every
homogeneous degree. Unlike an ungraded ring equivalence, this is
the algebraic input needed for a Proj comparison. -/
theorem splitNode_projectiveSpecialFibreCoordinateRing_equiv_homogeneous
    (W : WeierstrassCurve ℤ_[2])
    (hnode : ReducedNodalPoint (W.map PadicInt.toZMod)
      (PadicInt.toZMod W.a₃)
      (PadicInt.toZMod (W.a₃ ^ 2 + W.a₄)))
    (hsplit : 3 * PadicInt.toZMod W.a₃ +
      (W.map PadicInt.toZMod).a₂ = 0)
    (n : ℕ) (x : projectiveWeierstrassCoordinateRing W ⧸
      projectiveWeierstrassSpecialFibreIdeal W)
    (hx : x ∈ projectiveWeierstrassSpecialFibreComponent W n) :
    (splitNode_projectiveSpecialFibreCoordinateRing_equiv W hnode hsplit) x ∈
      splitNodeProjectiveQuotientComponent n := by
  obtain ⟨a, ha, rfl⟩ := Submodule.mem_map.mp hx
  obtain ⟨p, hp, rfl⟩ := Submodule.mem_map.mp ha
  change (splitNode_projectiveSpecialFibreCoordinateRing_equiv W hnode hsplit)
    ((Ideal.Quotient.mk (projectiveWeierstrassSpecialFibreIdeal W))
      ((Ideal.Quotient.mk (Ideal.span {projectiveWeierstrassCubic W})) p)) ∈
        splitNodeProjectiveQuotientComponent n
  rw [splitNode_projectiveSpecialFibreCoordinateRing_equiv_apply]
  apply Submodule.mem_map.mpr
  refine ⟨(projectivePlaneTranslation (ZMod 2)
    (PadicInt.toZMod W.a₃)
    (PadicInt.toZMod (W.a₃ ^ 2 + W.a₄)))
      (MvPolynomial.map PadicInt.toZMod p), ?_, rfl⟩
  have hph : p.IsHomogeneous n := hp
  exact projectivePlaneTranslation_isHomogeneous (ZMod 2)
    (PadicInt.toZMod W.a₃) (PadicInt.toZMod (W.a₃ ^ 2 + W.a₄))
    n _ (hph.map PadicInt.toZMod)

/-- The equivalence also preserves homogeneous degrees in reverse:
it is an equivalence of graded coordinate rings, not just rings. -/
theorem splitNode_projectiveSpecialFibreCoordinateRing_equiv_symm_homogeneous
    (W : WeierstrassCurve ℤ_[2])
    (hnode : ReducedNodalPoint (W.map PadicInt.toZMod)
      (PadicInt.toZMod W.a₃)
      (PadicInt.toZMod (W.a₃ ^ 2 + W.a₄)))
    (hsplit : 3 * PadicInt.toZMod W.a₃ +
      (W.map PadicInt.toZMod).a₂ = 0)
    (n : ℕ)
    (y : MvPolynomial (Fin 3) (ZMod 2) ⧸
      Ideal.span {splitNodeProjectiveCubic})
    (hy : y ∈ splitNodeProjectiveQuotientComponent n) :
    (splitNode_projectiveSpecialFibreCoordinateRing_equiv W hnode hsplit).symm y ∈
      projectiveWeierstrassSpecialFibreComponent W n := by
  letI : GradedAlgebra (projectiveWeierstrassSpecialFibreComponent W) :=
    projectiveWeierstrassSpecialFibreGrading W
  letI : GradedAlgebra splitNodeProjectiveQuotientComponent :=
    splitNodeProjectiveQuotientGrading
  exact ringEquiv_symm_mem_grade
    (projectiveWeierstrassSpecialFibreComponent W)
    splitNodeProjectiveQuotientComponent
    (splitNode_projectiveSpecialFibreCoordinateRing_equiv W hnode hsplit)
    (fun m a ha =>
      splitNode_projectiveSpecialFibreCoordinateRing_equiv_homogeneous
        W hnode hsplit m a ha)
    n y hy

/-- The canonical split cubic's Proj as a scheme. -/
noncomputable def splitNodeProjectiveScheme :
    AlgebraicGeometry.Scheme := by
  letI : GradedAlgebra splitNodeProjectiveQuotientComponent :=
    splitNodeProjectiveQuotientGrading
  exact AlgebraicGeometry.Proj splitNodeProjectiveQuotientComponent

/-- The point `[0:1:0]` survives on the canonical cubic. -/
theorem splitNodeProjectiveCoordinate_Y_ne_zero :
    (Ideal.Quotient.mk (Ideal.span {splitNodeProjectiveCubic}))
      (MvPolynomial.X (1 : Fin 3)) ≠ 0 := by
  let S := MvPolynomial (Fin 3) (ZMod 2)
  let I : Ideal S := Ideal.span {splitNodeProjectiveCubic}
  let e : S →+* ZMod 2 :=
    MvPolynomial.eval₂Hom (RingHom.id (ZMod 2)) ![0, 1, 0]
  have hX0 : e (MvPolynomial.X (0 : Fin 3)) = 0 :=
    MvPolynomial.eval₂Hom_X' _ _ _
  have hX1 : e (MvPolynomial.X (1 : Fin 3)) = 1 :=
    MvPolynomial.eval₂Hom_X' _ _ _
  have hX2 : e (MvPolynomial.X (2 : Fin 3)) = 0 :=
    MvPolynomial.eval₂Hom_X' _ _ _
  have hF : e splitNodeProjectiveCubic = 0 := by
    simp only [splitNodeProjectiveCubic, map_sub, map_add,
      map_mul, map_pow, hX0, hX1, hX2]
    ring
  have hI : I ≤ RingHom.ker e := by
    apply Ideal.span_le.mpr
    intro f hf
    rcases Set.mem_singleton_iff.mp hf with rfl
    exact hF
  intro hz
  have hy : e (MvPolynomial.X (1 : Fin 3)) = 0 :=
    hI (Ideal.Quotient.eq_zero_iff_mem.mp hz)
  exact one_ne_zero (hX1.symm.trans hy)

/-- The canonical split cubic's Proj is topologically irreducible.
It is nonempty because its homogeneous infinity coordinate survives. -/
theorem splitNodeProjectiveScheme_irreducible :
    letI : GradedAlgebra splitNodeProjectiveQuotientComponent :=
      splitNodeProjectiveQuotientGrading
    IrreducibleSpace (ProjectiveSpectrum
      splitNodeProjectiveQuotientComponent) := by
  letI : GradedAlgebra splitNodeProjectiveQuotientComponent :=
    splitNodeProjectiveQuotientGrading
  let ℬ := splitNodeProjectiveQuotientComponent
  let y := (Ideal.Quotient.mk (Ideal.span {splitNodeProjectiveCubic}))
    (MvPolynomial.X (1 : Fin 3))
  haveI : IsDomain (MvPolynomial (Fin 3) (ZMod 2) ⧸
      Ideal.span {splitNodeProjectiveCubic}) :=
    splitNodeProjectiveCoordinateRing_isDomain
  have hydegree : y ∈ ℬ 1 := by
    apply Submodule.mem_map.mpr
    exact ⟨_, MvPolynomial.isHomogeneous_X _ _, rfl⟩
  have hypos : y ∈ HomogeneousIdeal.irrelevant ℬ := by
    rw [HomogeneousIdeal.mem_irrelevant_iff]
    change GradedRing.proj ℬ 0 y = 0
    rw [GradedRing.proj_apply]
    exact DirectSum.decompose_of_mem_ne ℬ hydegree
      (by decide : (1 : ℕ) ≠ 0)
  apply projectiveSpectrum_irreducible_of_domain (ZMod 2)
    (MvPolynomial (Fin 3) (ZMod 2) ⧸
      Ideal.span {splitNodeProjectiveCubic}) ℬ
  intro h
  have hybot : y ∈ (⊥ : HomogeneousIdeal ℬ) := h hypos
  have hyzero : y = 0 := by
    simpa only [HomogeneousIdeal.coe_bot, SetLike.mem_coe,
      Submodule.mem_bot] using hybot
  exact splitNodeProjectiveCoordinate_Y_ne_zero hyzero

end Beal.General