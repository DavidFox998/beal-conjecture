import Beal.«Beal.General».SplitProjectiveSpecialFibre

/-!
The generic point of the projective spectrum of a graded domain.
This applies to a reduced special fibre only after its quotient
grading and scheme-theoretic base-change comparison are constructed.
-/

namespace Beal.General

/-- The image of the base uniformizer in the actual homogeneous
coordinate ring. Its quotient is the algebraic special-fibre
coordinate ring; identifying the corresponding `Proj` with the
scheme-theoretic fibre remains a separate geometric step. -/
noncomputable def projectiveWeierstrassSpecialFibreIdeal
    (W : WeierstrassCurve ℤ_[2]) :
    Ideal (projectiveWeierstrassCoordinateRing W) :=
  Ideal.map
    (Ideal.Quotient.mk (Ideal.span {projectiveWeierstrassCubic W}))
    (Ideal.span {MvPolynomial.C (2 : ℤ_[2])})

/-- The base uniformizer has degree zero, so the fibre ideal is
homogeneous in the already constructed quotient grading. -/
theorem projectiveWeierstrassSpecialFibreIdeal_isHomogeneous
    (W : WeierstrassCurve ℤ_[2]) :
    letI : GradedAlgebra (projectiveWeierstrassQuotientComponent W) :=
      projectiveWeierstrassQuotientGrading W
    (projectiveWeierstrassSpecialFibreIdeal W).IsHomogeneous
      (projectiveWeierstrassQuotientComponent W) := by
  letI : GradedAlgebra (projectiveWeierstrassQuotientComponent W) :=
    projectiveWeierstrassQuotientGrading W
  rw [show projectiveWeierstrassSpecialFibreIdeal W =
      Ideal.span {(Ideal.Quotient.mk
        (Ideal.span {projectiveWeierstrassCubic W}))
          (MvPolynomial.C (2 : ℤ_[2]))} by
    simp only [projectiveWeierstrassSpecialFibreIdeal,
      Ideal.map_span, Set.image_singleton]]
  apply Ideal.homogeneous_span
  intro f hf
  rcases Set.mem_singleton_iff.mp hf with rfl
  refine ⟨0, ?_⟩
  apply Submodule.mem_map.mpr
  exact ⟨MvPolynomial.C (2 : ℤ_[2]),
    MvPolynomial.isHomogeneous_C _ _, rfl⟩

/-- Quotienting the actual projective coordinate ring by `2`
gives the homogeneous coordinate ring of the canonical split
cubic, as an ungraded ring equivalence. The graded quotient
and `Proj` base-change comparisons are not asserted here. -/
noncomputable def splitNode_projectiveSpecialFibreCoordinateRing_equiv
    (W : WeierstrassCurve ℤ_[2])
    (hnode : ReducedNodalPoint (W.map PadicInt.toZMod)
      (PadicInt.toZMod W.a₃)
      (PadicInt.toZMod (W.a₃ ^ 2 + W.a₄)))
    (hsplit : 3 * PadicInt.toZMod W.a₃ +
      (W.map PadicInt.toZMod).a₂ = 0) :
    (projectiveWeierstrassCoordinateRing W ⧸
      projectiveWeierstrassSpecialFibreIdeal W) ≃+*
      (MvPolynomial (Fin 3) (ZMod 2) ⧸
        Ideal.span {splitNodeProjectiveCubic}) := by
  let S := MvPolynomial (Fin 3) ℤ_[2]
  let T := MvPolynomial (Fin 3) (ZMod 2)
  let I : Ideal S := Ideal.span {projectiveWeierstrassCubic W}
  let K : Ideal S := Ideal.span {MvPolynomial.C (2 : ℤ_[2])}
  let φ : S →+* T := MvPolynomial.map PadicInt.toZMod
  let J : Ideal T :=
    Ideal.span {MvPolynomial.map PadicInt.toZMod
      (projectiveWeierstrassCubic W)}
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
    simp
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
  change (S ⧸ I) ⧸ Ideal.map (Ideal.Quotient.mk I) K ≃+*
    T ⧸ Ideal.span {splitNodeProjectiveCubic}
  exact (((DoubleQuot.quotQuotEquivQuotSup I K).trans
    (Ideal.quotEquivOfEq hker.symm)).trans
      (RingHom.quotientKerEquivOfSurjective hh)).trans
        (splitNode_projectiveCubic_modTwo_quotient_equiv W hnode hsplit)

/-- The uniformizer cuts out an integral homogeneous coordinate
ring in the actual projective cubic quotient. This is a statement
about the coordinate ideal, not yet about the scheme fibre. -/
theorem projectiveWeierstrassSpecialFibreIdeal_isPrime
    (W : WeierstrassCurve ℤ_[2])
    (hnode : ReducedNodalPoint (W.map PadicInt.toZMod)
      (PadicInt.toZMod W.a₃)
      (PadicInt.toZMod (W.a₃ ^ 2 + W.a₄)))
    (hsplit : 3 * PadicInt.toZMod W.a₃ +
      (W.map PadicInt.toZMod).a₂ = 0) :
    (projectiveWeierstrassSpecialFibreIdeal W).IsPrime := by
  let e := splitNode_projectiveSpecialFibreCoordinateRing_equiv W hnode hsplit
  haveI : IsDomain (MvPolynomial (Fin 3) (ZMod 2) ⧸
      Ideal.span {splitNodeProjectiveCubic}) :=
    splitNodeProjectiveCoordinateRing_isDomain
  have hdomain : IsDomain (projectiveWeierstrassCoordinateRing W ⧸
      projectiveWeierstrassSpecialFibreIdeal W) :=
    e.toMulEquiv.isDomain _
  exact (Ideal.Quotient.isDomain_iff_prime _).mp hdomain

/-- The point at infinity `[0:1:0]` on the reduced cubic shows that
the homogeneous coordinate `Y` does not vanish in the special-fibre
coordinate ring, for any integral Weierstrass equation. -/
theorem projectiveWeierstrassSpecialFibreIdeal_not_Y
    (W : WeierstrassCurve ℤ_[2]) :
    (Ideal.Quotient.mk (Ideal.span {projectiveWeierstrassCubic W}))
      (MvPolynomial.X (1 : Fin 3)) ∉
        projectiveWeierstrassSpecialFibreIdeal W := by
  let S := MvPolynomial (Fin 3) ℤ_[2]
  let I : Ideal S := Ideal.span {projectiveWeierstrassCubic W}
  let K : Ideal S := Ideal.span {MvPolynomial.C (2 : ℤ_[2])}
  let q : S →+* S ⧸ I := Ideal.Quotient.mk I
  let e : S →+* ZMod 2 :=
    MvPolynomial.eval₂Hom PadicInt.toZMod ![0, 1, 0]
  have hX0 : e (MvPolynomial.X (0 : Fin 3)) = 0 :=
    MvPolynomial.eval₂Hom_X' _ _ _
  have hX1 : e (MvPolynomial.X (1 : Fin 3)) = 1 :=
    MvPolynomial.eval₂Hom_X' _ _ _
  have hX2 : e (MvPolynomial.X (2 : Fin 3)) = 0 :=
    MvPolynomial.eval₂Hom_X' _ _ _
  have hF : e (projectiveWeierstrassCubic W) = 0 := by
    simp only [projectiveWeierstrassCubic, map_add, map_sub,
      map_mul, map_pow, hX0, hX1, hX2]
    ring
  have htwo : e (MvPolynomial.C (2 : ℤ_[2])) = 0 := by
    rw [show e (MvPolynomial.C (2 : ℤ_[2])) =
      PadicInt.toZMod (2 : ℤ_[2]) from MvPolynomial.eval₂Hom_C _ _ _]
    simpa only [map_ofNat] using (show (2 : ZMod 2) = 0 by decide)
  have hI : I ≤ RingHom.ker e := by
    apply Ideal.span_le.mpr
    intro f hf
    rcases Set.mem_singleton_iff.mp hf with rfl
    exact hF
  have hK : K ≤ RingHom.ker e := by
    apply Ideal.span_le.mpr
    intro f hf
    rcases Set.mem_singleton_iff.mp hf with rfl
    exact htwo
  intro hm
  obtain ⟨a, ha, heq⟩ :=
    (Ideal.mem_map_iff_of_surjective q Ideal.Quotient.mk_surjective).mp hm
  have hdiff : MvPolynomial.X (1 : Fin 3) - a ∈ I :=
    Ideal.Quotient.eq.mp heq.symm
  have hz : (1 : ZMod 2) = 0 := by
    calc
      1 = e (MvPolynomial.X (1 : Fin 3)) := hX1.symm
      _ = e (MvPolynomial.X (1 : Fin 3) - a) + e a := by simp
      _ = 0 := by rw [hI hdiff, hK ha]; ring
  exact one_ne_zero hz

/-- The closed locus cut out by `2` *inside the actual quotient
Proj* is irreducible in the split nodal case. This identifies its
generic point topologically but does not construct a base-change
isomorphism or identify the scheme structure of the fibre. -/
theorem splitNode_projective_twoZeroLocus_irreducible
    (W : WeierstrassCurve ℤ_[2])
    (hnode : ReducedNodalPoint (W.map PadicInt.toZMod)
      (PadicInt.toZMod W.a₃)
      (PadicInt.toZMod (W.a₃ ^ 2 + W.a₄)))
    (hsplit : 3 * PadicInt.toZMod W.a₃ +
      (W.map PadicInt.toZMod).a₂ = 0) :
    letI : GradedAlgebra (projectiveWeierstrassQuotientComponent W) :=
      projectiveWeierstrassQuotientGrading W
    IsIrreducible (ProjectiveSpectrum.zeroLocus
      (projectiveWeierstrassQuotientComponent W)
      (projectiveWeierstrassSpecialFibreIdeal W :
        Set (projectiveWeierstrassCoordinateRing W))) := by
  letI : GradedAlgebra (projectiveWeierstrassQuotientComponent W) :=
    projectiveWeierstrassQuotientGrading W
  let ℬ := projectiveWeierstrassQuotientComponent W
  let I := projectiveWeierstrassSpecialFibreIdeal W
  let P : HomogeneousIdeal ℬ := I.homogeneousCore ℬ
  have hP : P.toIdeal = I :=
    (projectiveWeierstrassSpecialFibreIdeal_isHomogeneous W).toIdeal_homogeneousCore_eq_self
  have hp : P.toIdeal.IsPrime := by
    rw [hP]
    exact projectiveWeierstrassSpecialFibreIdeal_isPrime W hnode hsplit
  let q : MvPolynomial (Fin 3) ℤ_[2] →+* projectiveWeierstrassCoordinateRing W :=
    Ideal.Quotient.mk (Ideal.span {projectiveWeierstrassCubic W})
  have hYpos : q (MvPolynomial.X (1 : Fin 3)) ∈
      HomogeneousIdeal.irrelevant ℬ := by
    rw [HomogeneousIdeal.mem_irrelevant_iff]
    change GradedRing.proj ℬ 0 (q (MvPolynomial.X (1 : Fin 3))) = 0
    rw [GradedRing.proj_apply]
    exact DirectSum.decompose_of_mem_ne ℬ
      (projectiveWeierstrassCoordinate_mem_degree_one W 1)
      (by decide : (1 : ℕ) ≠ 0)
  have hnot : ¬HomogeneousIdeal.irrelevant ℬ ≤ P := by
    intro h
    have hy : q (MvPolynomial.X (1 : Fin 3)) ∈ I := by
      rw [← hP]
      exact h hYpos
    exact projectiveWeierstrassSpecialFibreIdeal_not_Y W hy
  let η : ProjectiveSpectrum ℬ := ⟨P, hp, hnot⟩
  have hclosure :
      closure ({η} : Set (ProjectiveSpectrum ℬ)) =
        ProjectiveSpectrum.zeroLocus ℬ
          (I : Set (projectiveWeierstrassCoordinateRing W)) := by
    rw [← ProjectiveSpectrum.zeroLocus_vanishingIdeal_eq_closure,
      ProjectiveSpectrum.vanishingIdeal_singleton]
    change ProjectiveSpectrum.zeroLocus ℬ (P : Set _) =
      ProjectiveSpectrum.zeroLocus ℬ (I : Set _)
    rw [← hP]
    rfl
  change IsIrreducible (ProjectiveSpectrum.zeroLocus ℬ (I : Set _))
  rw [← hclosure]
  exact isIrreducible_singleton.closure

/-- A graded domain has irreducible projective spectrum provided
its irrelevant ideal is nonzero. The zero homogeneous ideal is then
a relevant prime, and its closure is the entire projective spectrum. -/
theorem projectiveSpectrum_irreducible_of_domain
    (R A : Type*) [CommRing R] [CommRing A] [Algebra R A]
    (𝒜 : ℕ → Submodule R A) [GradedAlgebra 𝒜] [IsDomain A]
    (hpositive : ¬HomogeneousIdeal.irrelevant 𝒜 ≤
      (⊥ : HomogeneousIdeal 𝒜)) :
    IrreducibleSpace (ProjectiveSpectrum 𝒜) := by
  let η : ProjectiveSpectrum 𝒜 :=
    ⟨⊥, by simpa only [HomogeneousIdeal.toIdeal_bot] using
      (Ideal.bot_prime : (⊥ : Ideal A).IsPrime), hpositive⟩
  have hclosure :
      closure ({η} : Set (ProjectiveSpectrum 𝒜)) = Set.univ := by
    calc
      closure ({η} : Set (ProjectiveSpectrum 𝒜)) =
          ProjectiveSpectrum.zeroLocus 𝒜
            (ProjectiveSpectrum.vanishingIdeal ({η} : Set (ProjectiveSpectrum 𝒜))) :=
        (ProjectiveSpectrum.zeroLocus_vanishingIdeal_eq_closure 𝒜 _).symm
      _ = Set.univ := by
        simpa only [ProjectiveSpectrum.vanishingIdeal_singleton,
          HomogeneousIdeal.coe_bot] using ProjectiveSpectrum.zeroLocus_bot 𝒜
  apply (irreducibleSpace_def _).mpr
  change IsIrreducible (Set.univ : Set (ProjectiveSpectrum 𝒜))
  rw [← hclosure]
  exact isIrreducible_singleton.closure

end Beal.General