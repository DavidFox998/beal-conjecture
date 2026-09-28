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

/-- Restriction of the graded equivalence to the product chart agrees
with restriction of its degree-zero localization on the first chart.
The product denominator on the target is the product of the translated
denominators. -/
theorem gradedEquivAwayHom_toProduct
    {R S A B : Type u} [CommRing R] [CommRing S]
    [CommRing A] [CommRing B] [Algebra R A] [Algebra S B]
    (𝒜 : ℕ → Submodule R A) (ℬ : ℕ → Submodule S B)
    [GradedAlgebra 𝒜] [GradedAlgebra ℬ]
    (e : A ≃+* B)
    (he : ∀ n (a : A), a ∈ 𝒜 n → e a ∈ ℬ n)
    (f g : A) (d : ℕ) (hf : f ∈ 𝒜 d) (hg : g ∈ 𝒜 d) :
    let hfg : HomogeneousLocalization.Away 𝒜 (f * g) →+*
        HomogeneousLocalization.Away ℬ (e f * e g) :=
      gradedLocalizationMap 𝒜 ℬ e.toRingHom
        (by
          intro a ha
          obtain ⟨n, hn⟩ := (Submonoid.mem_powers_iff a (f * g)).mp ha
          apply (Submonoid.mem_powers_iff _ _).mpr
          exact ⟨n, by
            simpa only [map_pow, e.map_mul] using congrArg e hn⟩)
        he
    (homogeneousLocalization_toProduct ℬ (e f) (e g) d
      (he d f hf) (he d g hg)).comp
        (gradedEquivAwayHom 𝒜 ℬ e he f) =
      hfg.comp (homogeneousLocalization_toProduct 𝒜 f g d hf hg) := by
  let hP : Submonoid.powers f ≤
      (Submonoid.powers (e f)).comap e.toRingHom := by
    intro a ha
    obtain ⟨n, hn⟩ := (Submonoid.mem_powers_iff a f).mp ha
    apply (Submonoid.mem_powers_iff _ _).mpr
    exact ⟨n, by simpa only [map_pow] using congrArg e hn⟩
  let hQ : Submonoid.powers f ⊔ Submonoid.powers g ≤
      (Submonoid.powers (e f) ⊔ Submonoid.powers (e g)).comap e.toRingHom := by
    apply sup_le
    · intro a ha
      exact Submonoid.mem_sup_left (hP ha)
    · intro a ha
      obtain ⟨n, hn⟩ := (Submonoid.mem_powers_iff a g).mp ha
      apply Submonoid.mem_sup_right
      apply (Submonoid.mem_powers_iff _ _).mpr
      exact ⟨n, by simpa only [map_pow] using congrArg e hn⟩
  let hdouble := gradedLocalizationMap 𝒜 ℬ e.toRingHom hQ he
  have hleft :
      (HomogeneousLocalization.mapId ℬ le_sup_left).comp
          (gradedEquivAwayHom 𝒜 ℬ e he f) =
        hdouble.comp (HomogeneousLocalization.mapId 𝒜 le_sup_left) :=
    (gradedLocalizationMap_restrict 𝒜 ℬ e.toRingHom
      le_sup_left le_sup_left hP hQ he)
  have hproduct :
      hdouble.comp (homogeneousLocalization_productToDouble 𝒜 f g) =
        (homogeneousLocalization_productToDouble ℬ (e f) (e g)).comp
          (gradedLocalizationMap 𝒜 ℬ e.toRingHom
            (by
              intro a ha
              obtain ⟨n, hn⟩ := (Submonoid.mem_powers_iff a (f * g)).mp ha
              apply (Submonoid.mem_powers_iff _ _).mpr
              exact ⟨n, by
                simpa only [map_pow, e.map_mul] using congrArg e hn⟩)
            he) := by
    apply RingHom.ext
    intro x
    obtain ⟨v, rfl⟩ := HomogeneousLocalization.mk_surjective x
    simp only [RingHom.comp_apply, gradedLocalizationMap_mk,
      homogeneousLocalization_productToDouble, HomogeneousLocalization.mapId,
      HomogeneousLocalization.map_mk]
    rfl
  apply RingHom.ext
  intro x
  apply homogeneousLocalization_productToDouble_injective ℬ (e f) (e g)
  calc
    _ = (HomogeneousLocalization.mapId ℬ le_sup_left)
          ((gradedEquivAwayHom 𝒜 ℬ e he f) x) := by
      simpa only [RingHom.comp_apply] using congrArg
        (fun h => h ((gradedEquivAwayHom 𝒜 ℬ e he f) x))
        (homogeneousLocalization_toProduct_commutes ℬ (e f) (e g) d
          (he d f hf) (he d g hg))
    _ = hdouble ((HomogeneousLocalization.mapId 𝒜 le_sup_left) x) := by
      exact congrArg (fun h => h x) hleft
    _ = hdouble ((homogeneousLocalization_productToDouble 𝒜 f g)
          ((homogeneousLocalization_toProduct 𝒜 f g d hf hg) x)) := by
      exact congrArg hdouble (by
        simpa only [RingHom.comp_apply] using congrArg (fun h => h x)
          (homogeneousLocalization_toProduct_commutes 𝒜 f g d hf hg).symm)
    _ = _ := by
      simpa only [RingHom.comp_apply] using congrArg
        (fun h => h ((homogeneousLocalization_toProduct 𝒜 f g d hf hg) x))
        hproduct

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