import Beal.«Beal.General».ProjectiveBaseMorphism

/-!
Affine chart maps induced by a degree-preserving equivalence of
graded coordinate rings. These are the algebraic charts needed for
the eventual scheme isomorphism, not that isomorphism itself.
-/

namespace Beal.General

variable {R S A B : Type*} [CommRing R] [CommRing S]
variable [CommRing A] [CommRing B] [Algebra R A] [Algebra S B]
variable (𝒜 : ℕ → Submodule R A) (ℬ : ℕ → Submodule S B)
variable [GradedAlgebra 𝒜] [GradedAlgebra ℬ]

/-- The homogeneous-localization map for graded rings whose grading
bases may differ (the residue field and the DVR in this application).
The pinned same-base map does not accept these two gradings directly. -/
noncomputable def gradedLocalizationMap
    {P : Submonoid A} {Q : Submonoid B}
    (g : A →+* B) (hP : P ≤ Q.comap g)
    (hg : ∀ n (a : A), a ∈ 𝒜 n → g a ∈ ℬ n) :
    HomogeneousLocalization 𝒜 P →+* HomogeneousLocalization ℬ Q where
  toFun := Quotient.map'
    (fun x => ⟨x.1, ⟨_, hg _ _ x.2.2⟩,
      ⟨_, hg _ _ x.3.2⟩, hP x.4⟩)
    (fun x y (h : x.embedding = y.embedding) => by
      apply_fun IsLocalization.map (Localization Q) g hP at h
      simp_rw [HomogeneousLocalization.NumDenSameDeg.embedding,
        Localization.mk_eq_mk', IsLocalization.map_mk',
        ← Localization.mk_eq_mk'] at h
      exact h)
  map_add' := Quotient.ind₂' fun x y => by
    simp only [← HomogeneousLocalization.mk_add, Quotient.map'_mk'',
      HomogeneousLocalization.NumDenSameDeg.num_add, map_add, map_mul,
      HomogeneousLocalization.NumDenSameDeg.den_add]
    rfl
  map_mul' := Quotient.ind₂' fun x y => by
    simp only [← HomogeneousLocalization.mk_mul, Quotient.map'_mk'',
      HomogeneousLocalization.NumDenSameDeg.num_mul, map_mul,
      HomogeneousLocalization.NumDenSameDeg.den_mul]
    rfl
  map_zero' := by
    simp only [← HomogeneousLocalization.mk_zero (𝒜 := 𝒜),
      Quotient.map'_mk'', HomogeneousLocalization.NumDenSameDeg.deg_zero,
      HomogeneousLocalization.NumDenSameDeg.num_zero,
      ZeroMemClass.coe_zero, map_zero,
      HomogeneousLocalization.NumDenSameDeg.den_zero, map_one]
    rfl
  map_one' := by
    simp only [← HomogeneousLocalization.mk_one (𝒜 := 𝒜),
      Quotient.map'_mk'', HomogeneousLocalization.NumDenSameDeg.deg_one,
      HomogeneousLocalization.NumDenSameDeg.num_one,
      ZeroMemClass.coe_zero, map_zero,
      HomogeneousLocalization.NumDenSameDeg.den_one, map_one]
    rfl

theorem gradedLocalizationMap_mk
    {P : Submonoid A} {Q : Submonoid B}
    (g : A →+* B) (hP : P ≤ Q.comap g)
    (hg : ∀ n (a : A), a ∈ 𝒜 n → g a ∈ ℬ n)
    (x : HomogeneousLocalization.NumDenSameDeg 𝒜 P) :
    gradedLocalizationMap 𝒜 ℬ g hP hg (HomogeneousLocalization.mk x) =
      HomogeneousLocalization.mk
        ⟨x.1, ⟨_, hg _ _ x.2.2⟩, ⟨_, hg _ _ x.3.2⟩, hP x.4⟩ :=
  rfl

/-- Degree-preserving maps commute with enlargement of denominator
submonoids. In particular, the two coordinate chart maps agree on
the double-localization overlap. -/
theorem gradedLocalizationMap_restrict
    {P Q : Submonoid A} {P' Q' : Submonoid B}
    (g : A →+* B) (hPQ : P ≤ Q) (hP'Q' : P' ≤ Q')
    (hP : P ≤ P'.comap g) (hQ : Q ≤ Q'.comap g)
    (hg : ∀ n (a : A), a ∈ 𝒜 n → g a ∈ ℬ n) :
    (HomogeneousLocalization.mapId ℬ hP'Q').comp
        (gradedLocalizationMap 𝒜 ℬ g hP hg) =
      (gradedLocalizationMap 𝒜 ℬ g hQ hg).comp
        (HomogeneousLocalization.mapId 𝒜 hPQ) := by
  apply RingHom.ext
  intro s
  obtain ⟨v, rfl⟩ := HomogeneousLocalization.mk_surjective s
  simp only [RingHom.comp_apply, HomogeneousLocalization.mapId,
    HomogeneousLocalization.map_mk, gradedLocalizationMap_mk]
  rfl

/-- A homogeneous ring equivalence induces the forward degree-zero
localization homomorphism on the chart at `f`. -/
noncomputable def gradedEquivAwayHom (e : A ≃+* B)
    (he : ∀ n (a : A), a ∈ 𝒜 n → e a ∈ ℬ n) (f : A) :
    HomogeneousLocalization.Away 𝒜 f →+*
      HomogeneousLocalization.Away ℬ (e f) :=
  gradedLocalizationMap 𝒜 ℬ e.toRingHom
    (by
      intro a ha
      obtain ⟨n, hn⟩ := (Submonoid.mem_powers_iff a f).mp ha
      apply (Submonoid.mem_powers_iff _ _).mpr
      exact ⟨n, by simpa only [map_pow] using congrArg e hn⟩)
    (fun n a ha => he n a ha)

/-- The degree-zero chart equivalence, with its inverse obtained from
the inverse graded coordinate-ring equivalence. -/
noncomputable def gradedEquivAway (e : A ≃+* B)
    (he : ∀ n (a : A), a ∈ 𝒜 n → e a ∈ ℬ n)
    (he' : ∀ n (b : B), b ∈ ℬ n → e.symm b ∈ 𝒜 n)
    (f : A) :
    HomogeneousLocalization.Away 𝒜 f ≃+*
      HomogeneousLocalization.Away ℬ (e f) := by
  let h := gradedEquivAwayHom 𝒜 ℬ e he f
  let k : HomogeneousLocalization.Away ℬ (e f) →+*
      HomogeneousLocalization.Away 𝒜 f :=
    gradedLocalizationMap ℬ 𝒜 (P := Submonoid.powers (e f))
      (Q := Submonoid.powers f) e.symm.toRingHom
      (by
        intro a ha
        obtain ⟨n, hn⟩ := (Submonoid.mem_powers_iff a (e f)).mp ha
        apply (Submonoid.mem_powers_iff _ _).mpr
        exact ⟨n, by
          simpa only [map_pow, e.symm_apply_apply] using (congrArg e.symm hn)⟩)
      (fun n b hb => he' n b hb)
  refine RingEquiv.ofBijective h ⟨?_, ?_⟩
  · intro x y hxy
    have hx : k (h x) = x := by
      obtain ⟨v, rfl⟩ := HomogeneousLocalization.mk_surjective x
      simp only [h, k, gradedEquivAwayHom, gradedLocalizationMap_mk]
      simp
    have hy : k (h y) = y := by
      obtain ⟨v, rfl⟩ := HomogeneousLocalization.mk_surjective y
      simp only [h, k, gradedEquivAwayHom, gradedLocalizationMap_mk]
      simp
    rw [← hx, ← hy, hxy]
  · intro y
    refine ⟨k y, ?_⟩
    obtain ⟨v, rfl⟩ := HomogeneousLocalization.mk_surjective y
    simp only [h, k, gradedEquivAwayHom, gradedLocalizationMap_mk]
    simp

section SplitCubic

/-- On every homogeneous basic chart, the checked split-cubic
coordinate equivalence gives an actual isomorphism of chart rings.
The image of the denominator is retained explicitly, since the
translation need not fix every coordinate. -/
noncomputable def splitNodeProjectiveChartRingEquiv
    (W : WeierstrassCurve ℤ_[2])
    (hnode : ReducedNodalPoint (W.map PadicInt.toZMod)
      (PadicInt.toZMod W.a₃)
      (PadicInt.toZMod (W.a₃ ^ 2 + W.a₄)))
    (hsplit : 3 * PadicInt.toZMod W.a₃ +
      (W.map PadicInt.toZMod).a₂ = 0)
    (f : projectiveWeierstrassCoordinateRing W ⧸
      projectiveWeierstrassSpecialFibreIdeal W) :
    let e := splitNode_projectiveSpecialFibreCoordinateRing_equiv W hnode hsplit
    letI : GradedAlgebra (projectiveWeierstrassSpecialFibreComponent W) :=
      projectiveWeierstrassSpecialFibreGrading W
    letI : GradedAlgebra splitNodeProjectiveQuotientComponent :=
      splitNodeProjectiveQuotientGrading
    HomogeneousLocalization.Away (projectiveWeierstrassSpecialFibreComponent W) f ≃+*
      HomogeneousLocalization.Away splitNodeProjectiveQuotientComponent (e f) := by
  letI : GradedAlgebra (projectiveWeierstrassSpecialFibreComponent W) :=
    projectiveWeierstrassSpecialFibreGrading W
  letI : GradedAlgebra splitNodeProjectiveQuotientComponent :=
    splitNodeProjectiveQuotientGrading
  exact gradedEquivAway
    (projectiveWeierstrassSpecialFibreComponent W)
    splitNodeProjectiveQuotientComponent
    (splitNode_projectiveSpecialFibreCoordinateRing_equiv W hnode hsplit)
    (fun n a ha =>
      splitNode_projectiveSpecialFibreCoordinateRing_equiv_homogeneous
        W hnode hsplit n a ha)
    (fun n b hb =>
      splitNode_projectiveSpecialFibreCoordinateRing_equiv_symm_homogeneous
        W hnode hsplit n b hb) f

end SplitCubic

end Beal.General