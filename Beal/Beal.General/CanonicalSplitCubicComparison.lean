import Beal.«Beal.General».ProjectiveFibreChartBaseChange

/-!
Scheme-level basic-chart comparisons induced by the degree-preserving
translation from the special-fibre coordinate quotient to the canonical
split cubic. The image of the homogeneous denominator is kept explicit:
the translation need not fix the `Y` coordinate.
-/

namespace Beal.General

open AlgebraicGeometry CategoryTheory

universe u

/-- The degree-zero localization equivalence induced by a graded ring
equivalence lifts through the standard affine charts of both `Proj`s. -/
noncomputable def gradedEquivProjBasicSchemeIso
    {R S A B : Type u} [CommRing R] [CommRing S]
    [CommRing A] [CommRing B] [Algebra R A] [Algebra S B]
    (𝒜 : ℕ → Submodule R A) (ℬ : ℕ → Submodule S B)
    [GradedAlgebra 𝒜] [GradedAlgebra ℬ]
    (e : A ≃+* B)
    (he : ∀ n (a : A), a ∈ 𝒜 n → e a ∈ ℬ n)
    (he' : ∀ n (b : B), b ∈ ℬ n → e.symm b ∈ 𝒜 n)
    (f : A) (d : ℕ) (hf : f ∈ 𝒜 d) (hd : 0 < d) :
    Scheme.Opens.toScheme (X := AlgebraicGeometry.«Proj» 𝒜)
        (ProjectiveSpectrum.basicOpen 𝒜 f) ≅
      Scheme.Opens.toScheme (X := AlgebraicGeometry.«Proj» ℬ)
        (ProjectiveSpectrum.basicOpen ℬ (e f)) := by
  exact (homogeneousProjBasicSchemeIso 𝒜 f d hf hd).trans
    ((Scheme.Spec.mapIso
      ((gradedEquivAway 𝒜 ℬ e he he' f).symm.toCommRingCatIso.op)).trans
        (homogeneousProjBasicSchemeIso ℬ (e f) d (he d f hf) hd).symm)

/-- The graded translation identifies each source projective basic
chart with the canonical split cubic's chart at its translated
coordinate, as schemes. -/
noncomputable def splitNodeProjectiveBasicSchemeIso
    (W : WeierstrassCurve ℤ_[2])
    (hnode : ReducedNodalPoint (W.map PadicInt.toZMod)
      (PadicInt.toZMod W.a₃)
      (PadicInt.toZMod (W.a₃ ^ 2 + W.a₄)))
    (hsplit : 3 * PadicInt.toZMod W.a₃ +
      (W.map PadicInt.toZMod).a₂ = 0)
    (f : projectiveWeierstrassCoordinateRing W ⧸
      projectiveWeierstrassSpecialFibreIdeal W)
    (d : ℕ) (hf : f ∈ projectiveWeierstrassSpecialFibreComponent W d)
    (hd : 0 < d) :
    let e := splitNode_projectiveSpecialFibreCoordinateRing_equiv W hnode hsplit
    letI : GradedAlgebra (projectiveWeierstrassSpecialFibreComponent W) :=
      projectiveWeierstrassSpecialFibreGrading W
    letI : GradedAlgebra splitNodeProjectiveQuotientComponent :=
      splitNodeProjectiveQuotientGrading
    Scheme.Opens.toScheme (X := AlgebraicGeometry.«Proj»
      (projectiveWeierstrassSpecialFibreComponent W))
        (ProjectiveSpectrum.basicOpen
          (projectiveWeierstrassSpecialFibreComponent W) f) ≅
      Scheme.Opens.toScheme (X := AlgebraicGeometry.«Proj»
        splitNodeProjectiveQuotientComponent)
        (ProjectiveSpectrum.basicOpen splitNodeProjectiveQuotientComponent (e f)) := by
  letI : GradedAlgebra (projectiveWeierstrassSpecialFibreComponent W) :=
    projectiveWeierstrassSpecialFibreGrading W
  letI : GradedAlgebra splitNodeProjectiveQuotientComponent :=
    splitNodeProjectiveQuotientGrading
  exact gradedEquivProjBasicSchemeIso
    (projectiveWeierstrassSpecialFibreComponent W)
    splitNodeProjectiveQuotientComponent
    (splitNode_projectiveSpecialFibreCoordinateRing_equiv W hnode hsplit)
    (fun n a ha =>
      splitNode_projectiveSpecialFibreCoordinateRing_equiv_homogeneous
        W hnode hsplit n a ha)
    (fun n b hb =>
      splitNode_projectiveSpecialFibreCoordinateRing_equiv_symm_homogeneous
        W hnode hsplit n b hb) f d hf hd

/-- The chosen `Z` and `Y` charts of the quotient `Proj` are compared
with the canonical cubic at their translated coordinates. -/
noncomputable def splitNodeProjectiveTwoChartSchemeIso
    (W : WeierstrassCurve ℤ_[2])
    (hnode : ReducedNodalPoint (W.map PadicInt.toZMod)
      (PadicInt.toZMod W.a₃)
      (PadicInt.toZMod (W.a₃ ^ 2 + W.a₄)))
    (hsplit : 3 * PadicInt.toZMod W.a₃ +
      (W.map PadicInt.toZMod).a₂ = 0) :
    letI : GradedAlgebra (projectiveWeierstrassQuotientComponent W) :=
      projectiveWeierstrassQuotientGrading W
    letI : GradedAlgebra (projectiveWeierstrassSpecialFibreComponent W) :=
      projectiveWeierstrassSpecialFibreGrading W
    letI : GradedAlgebra splitNodeProjectiveQuotientComponent :=
      splitNodeProjectiveQuotientGrading
    let q := Ideal.Quotient.mk (Ideal.span {projectiveWeierstrassCubic W})
    let r := Ideal.Quotient.mk (projectiveWeierstrassSpecialFibreIdeal W)
    let z := r (q (MvPolynomial.X (2 : Fin 3)))
    let y := r (q (MvPolynomial.X (1 : Fin 3)))
    let e := splitNode_projectiveSpecialFibreCoordinateRing_equiv W hnode hsplit
    ∀ b : Bool,
      Scheme.Opens.toScheme (X := AlgebraicGeometry.«Proj»
        (projectiveWeierstrassSpecialFibreComponent W))
          (ProjectiveSpectrum.basicOpen
            (projectiveWeierstrassSpecialFibreComponent W)
            (if b then z else y)) ≅
        Scheme.Opens.toScheme (X := AlgebraicGeometry.«Proj»
          splitNodeProjectiveQuotientComponent)
          (ProjectiveSpectrum.basicOpen splitNodeProjectiveQuotientComponent
            (e (if b then z else y))) := by
  letI : GradedAlgebra (projectiveWeierstrassQuotientComponent W) :=
    projectiveWeierstrassQuotientGrading W
  letI : GradedAlgebra (projectiveWeierstrassSpecialFibreComponent W) :=
    projectiveWeierstrassSpecialFibreGrading W
  letI : GradedAlgebra splitNodeProjectiveQuotientComponent :=
    splitNodeProjectiveQuotientGrading
  let q := Ideal.Quotient.mk (Ideal.span {projectiveWeierstrassCubic W})
  let r := Ideal.Quotient.mk (projectiveWeierstrassSpecialFibreIdeal W)
  let z := r (q (MvPolynomial.X (2 : Fin 3)))
  let y := r (q (MvPolynomial.X (1 : Fin 3)))
  change ∀ b : Bool,
    Scheme.Opens.toScheme (X := AlgebraicGeometry.«Proj»
      (projectiveWeierstrassSpecialFibreComponent W))
        (ProjectiveSpectrum.basicOpen
          (projectiveWeierstrassSpecialFibreComponent W)
          (if b then z else y)) ≅
      Scheme.Opens.toScheme (X := AlgebraicGeometry.«Proj»
        splitNodeProjectiveQuotientComponent)
        (ProjectiveSpectrum.basicOpen splitNodeProjectiveQuotientComponent
          ((splitNode_projectiveSpecialFibreCoordinateRing_equiv W hnode hsplit)
            (if b then z else y)))
  intro b
  cases b
  · exact splitNodeProjectiveBasicSchemeIso W hnode hsplit y 1
      (Submodule.mem_map.mpr
        ⟨_, projectiveWeierstrassCoordinate_mem_degree_one W 1, rfl⟩)
      (by decide)
  · exact splitNodeProjectiveBasicSchemeIso W hnode hsplit z 1
      (Submodule.mem_map.mpr
        ⟨_, projectiveWeierstrassCoordinate_mem_degree_one W 2, rfl⟩)
      (by decide)

end Beal.General