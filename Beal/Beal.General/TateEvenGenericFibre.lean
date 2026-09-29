import Beal.«Beal.General».TateEvenCoordinateCharts

/-!
The generic comparison for the Rees blow-up. In this project
`ℤ_[2]` denotes the 2-adic integers; its generic field is `ℚ_[2]`.
The algebraic chart comparison below works for any commutative
surface ring, without requiring the chosen denominator to be regular.
-/

namespace Beal.General

open CategoryTheory AlgebraicGeometry

universe u

/-- In a graded `Proj`, the basic open of a scalar as a global
section is the projective basic open of the same degree-zero element. -/
theorem projectiveScalarSection_basicOpen
    {R A : Type*} [CommRing R] [CommRing A] [Algebra R A]
    (𝒜 : ℕ → Submodule R A) [GradedAlgebra 𝒜] (r : R) :
    (AlgebraicGeometry.«Proj» 𝒜).basicOpen
        (projectiveScalarSection 𝒜 r) =
      ProjectiveSpectrum.basicOpen 𝒜 (algebraMap R A r) := by
  ext p
  change p ∈ (AlgebraicGeometry.«Proj» 𝒜).basicOpen
      (projectiveScalarSection 𝒜 r) ↔
    p ∈ ProjectiveSpectrum.basicOpen 𝒜 (algebraMap R A r)
  rw [Scheme.mem_basicOpen_top, ProjectiveSpectrum.mem_basicOpen]
  change IsUnit
      ((ProjectiveSpectrum.Proj.structureSheaf 𝒜).presheaf.germ
        (⟨p, trivial⟩ : (⊤ : (AlgebraicGeometry.«Proj» 𝒜).Opens))
        (projectiveScalarSection 𝒜 r)) ↔
    algebraMap R A r ∉ p.asHomogeneousIdeal
  rw [← (AlgebraicGeometry.Proj.stalkIso' 𝒜 p).isUnit_iff]
  rw [AlgebraicGeometry.Proj.stalkIso'_germ 𝒜
    (⊤ : TopologicalSpace.Opens (ProjectiveSpectrum.top 𝒜))
    ⟨p, trivial⟩ (projectiveScalarSection 𝒜 r)]
  change IsUnit (projectiveScalarAtPrime 𝒜 p r) ↔ _
  rw [← HomogeneousLocalization.isUnit_iff_isUnit_val,
    projectiveScalarAtPrime_val]
  exact IsLocalization.AtPrime.isUnit_to_map_iff
    (Localization p.asHomogeneousIdeal.toIdeal.primeCompl)
    p.asHomogeneousIdeal.toIdeal (algebraMap R A r)

/-- The structural map from a graded `Proj` pulls back the
base basic open to the basic open of the degree-zero scalar. -/
theorem projectiveScalar_baseOpen_preimage
    {R A : Type u} [CommRing R] [CommRing A] [Algebra R A]
    (𝒜 : ℕ → Submodule R A) [GradedAlgebra 𝒜] (r : R) :
    let X := AlgebraicGeometry.«Proj» 𝒜
    let π : X ⟶ Spec (CommRingCat.of R) :=
      (ΓSpec.adjunction.homEquiv X
        (Opposite.op (CommRingCat.of R)))
        (CommRingCat.ofHom (projectiveScalarToGamma 𝒜)).op
    π ⁻¹ᵁ PrimeSpectrum.basicOpen r =
      ProjectiveSpectrum.basicOpen 𝒜 (algebraMap R A r) := by
  let X := AlgebraicGeometry.«Proj» 𝒜
  let π : X ⟶ Spec (CommRingCat.of R) :=
    (ΓSpec.adjunction.homEquiv X
      (Opposite.op (CommRingCat.of R)))
      (CommRingCat.ofHom (projectiveScalarToGamma 𝒜)).op
  change π ⁻¹ᵁ PrimeSpectrum.basicOpen r =
    ProjectiveSpectrum.basicOpen 𝒜 (algebraMap R A r)
  have happ : π.app ⊤ ((Scheme.ΓSpecIso (CommRingCat.of R)).inv r) =
      projectiveScalarSection 𝒜 r := by
    have h := ΓSpec.toOpen_comp_locallyRingedSpaceAdjunction_homEquiv_app
      (X := X.toLocallyRingedSpace)
      (CommRingCat.ofHom (projectiveScalarToGamma 𝒜)).op
      (Opposite.op (⊤ : (Spec (CommRingCat.of R)).Opens))
    have h' := congrArg (fun g => g r) h
    rw [Scheme.ΓSpecIso_inv]
    simpa only [Category.id_comp] using h'
  calc
    π ⁻¹ᵁ PrimeSpectrum.basicOpen r =
        π ⁻¹ᵁ (Spec (CommRingCat.of R)).basicOpen
          ((Scheme.ΓSpecIso (CommRingCat.of R)).inv r) :=
      congrArg (fun U : (Spec (CommRingCat.of R)).Opens => π ⁻¹ᵁ U)
        (basicOpen_eq_of_affine (R := CommRingCat.of R) r).symm
    _ = ProjectiveSpectrum.basicOpen 𝒜 (algebraMap R A r) := by
      rw [Scheme.preimage_basicOpen, happ,
        projectiveScalarSection_basicOpen]

/-- An ideal containing `f` becomes the unit ideal after inverting `f`. -/
theorem centreReesIdeal_localized_eq_top
    {R : Type*} [CommRing R] (I : Ideal R) (f : R) (hf : f ∈ I) :
    Ideal.map (algebraMap R (Localization.Away f)) I = ⊤ := by
  apply Ideal.eq_top_of_isUnit_mem
  · exact Ideal.mem_map_of_mem (algebraMap R (Localization.Away f)) hf
  · exact IsLocalization.map_units (Localization.Away f)
      ⟨f, Submonoid.mem_powers f⟩

/-- The degree-zero `D₊(ft)` chart becomes the original surface
coordinate ring after the surface scalar `f` is inverted. -/
noncomputable def centreReesGenericChartEquiv
    {R : Type*} [CommRing R] (I : Ideal R)
    (f : R) (hf : f ∈ I) :
    letI : GradedAlgebra (centreReesComponent I) := centreReesGrading I
    Localization.Away
      (homogeneousScalarAwayHom (centreReesComponent I)
        (centreReesDegreeOne I f hf) f) ≃+*
      Localization.Away f := by
  letI : GradedAlgebra (centreReesComponent I) := centreReesGrading I
  let B := HomogeneousLocalization.Away (centreReesComponent I)
    (centreReesDegreeOne I f hf)
  let h : R →+* B :=
    homogeneousScalarAwayHom (centreReesComponent I)
      (centreReesDegreeOne I f hf)
  let t : B := h f
  let D := Localization.Away t
  let L := Localization.Away f
  let φ : B →+* L := centreReesAwayToLocalization I f hf
  have hφ (r : R) : φ (h r) = algebraMap R L r :=
    centreReesAwayToLocalization_scalar I f hf r
  have ht : φ t = algebraMap R L f := hφ f
  have hu : IsUnit (φ t) := by
    rw [ht]
    exact IsLocalization.map_units L ⟨f, Submonoid.mem_powers f⟩
  have hg (m : Submonoid.powers t) : IsUnit (φ m.1) := by
    obtain ⟨n, hn⟩ := (Submonoid.mem_powers_iff m.1 t).mp m.2
    rw [← hn, map_pow]
    exact hu.pow n
  let ψ : D →+* L := IsLocalization.lift (S := D) (g := φ) hg
  have hψ (b : B) : ψ (algebraMap B D b) = φ b := by
    exact congrArg (fun v : B →+* L => v b)
      (IsLocalization.lift_comp hg)
  have hinj : Function.Injective ψ := by
    apply (RingHom.injective_iff_ker_eq_bot ψ).mpr
    apply (RingHom.ker_eq_bot_iff_eq_zero ψ).mpr
    intro z hz
    obtain ⟨⟨b, m⟩, hm⟩ := IsLocalization.surj (Submonoid.powers t) z
    have hb : φ b = 0 := by
      have heq := congrArg ψ hm
      simp only [map_mul, hψ, hz, zero_mul, map_zero] at heq
      exact heq.symm
    have hbzero : b = 0 := by
      apply centreReesAwayToLocalization_injective I f hf
      simpa only [map_zero] using hb
    apply (IsLocalization.map_units D m).mul_right_cancel
    simpa only [hbzero, map_zero, zero_mul] using hm
  have hsurj : Function.Surjective ψ := by
    intro z
    obtain ⟨⟨r, m⟩, hm⟩ := IsLocalization.surj (Submonoid.powers f) z
    obtain ⟨n, hn⟩ := (Submonoid.mem_powers_iff m.1 f).mp m.2
    let v : Submonoid.powers t :=
      ⟨t ^ n, (Submonoid.mem_powers_iff (t ^ n) t).mpr ⟨n, rfl⟩⟩
    refine ⟨IsLocalization.mk' D (h r) v, ?_⟩
    apply (IsLocalization.lift_mk'_spec hg (h r) z v).mpr
    change φ (h r) = φ (t ^ n) * z
    rw [hφ, map_pow, ht, ← map_pow, hn]
    simpa only [mul_comm] using hm.symm
  exact RingEquiv.ofBijective ψ ⟨hinj, hsurj⟩

/-- The generic chart equivalence fixes every surface scalar.
In particular it is an equivalence over the localized 2-adic
base, not merely an equivalence of abstract rings. -/
theorem centreReesGenericChartEquiv_scalar
    {R : Type*} [CommRing R] (I : Ideal R)
    (f : R) (hf : f ∈ I) (r : R) :
    letI : GradedAlgebra (centreReesComponent I) := centreReesGrading I
    let B := HomogeneousLocalization.Away (centreReesComponent I)
      (centreReesDegreeOne I f hf)
    let h : R →+* B :=
      homogeneousScalarAwayHom (centreReesComponent I)
        (centreReesDegreeOne I f hf)
    centreReesGenericChartEquiv I f hf
      (algebraMap B (Localization.Away (h f)) (h r)) =
        algebraMap R (Localization.Away f) r := by
  letI : GradedAlgebra (centreReesComponent I) := centreReesGrading I
  let B := HomogeneousLocalization.Away (centreReesComponent I)
    (centreReesDegreeOne I f hf)
  let h : R →+* B :=
    homogeneousScalarAwayHom (centreReesComponent I)
      (centreReesDegreeOne I f hf)
  let φ : B →+* Localization.Away f := centreReesAwayToLocalization I f hf
  have hu : IsUnit (φ (h f)) := by
    rw [centreReesAwayToLocalization_scalar I f hf f]
    exact IsLocalization.map_units (Localization.Away f)
      ⟨f, Submonoid.mem_powers f⟩
  have hg (m : Submonoid.powers (h f)) : IsUnit (φ m.1) := by
    obtain ⟨n, hn⟩ := (Submonoid.mem_powers_iff m.1 (h f)).mp m.2
    rw [← hn, map_pow]
    exact hu.pow n
  change (IsLocalization.lift (S := Localization.Away (h f))
    (g := φ) hg) (algebraMap B (Localization.Away (h f)) (h r)) =
      algebraMap R (Localization.Away f) r
  have hcomp := congrArg (fun g : B →+* Localization.Away f => g (h r))
    (IsLocalization.lift_comp (S := Localization.Away (h f)) hg)
  simpa only [RingHom.comp_apply] using
    hcomp.trans (centreReesAwayToLocalization_scalar I f hf r)

/-- The generic chart equivalence, as an algebra equivalence over
the original surface coordinate ring. -/
noncomputable def centreReesGenericChartAlgEquiv
    {R : Type*} [CommRing R] (I : Ideal R)
    (f : R) (hf : f ∈ I) :
    letI : GradedAlgebra (centreReesComponent I) := centreReesGrading I
    let B := HomogeneousLocalization.Away (centreReesComponent I)
      (centreReesDegreeOne I f hf)
    let h : R →+* B :=
      homogeneousScalarAwayHom (centreReesComponent I)
        (centreReesDegreeOne I f hf)
    letI : Algebra R (Localization.Away (h f)) :=
      ((algebraMap B (Localization.Away (h f))).comp h).toAlgebra
    Localization.Away (h f) ≃ₐ[R] Localization.Away f := by
  letI : GradedAlgebra (centreReesComponent I) := centreReesGrading I
  let B := HomogeneousLocalization.Away (centreReesComponent I)
    (centreReesDegreeOne I f hf)
  let h : R →+* B :=
    homogeneousScalarAwayHom (centreReesComponent I)
      (centreReesDegreeOne I f hf)
  letI : Algebra R (Localization.Away (h f)) :=
    ((algebraMap B (Localization.Away (h f))).comp h).toAlgebra
  exact { centreReesGenericChartEquiv I f hf with
    commutes' := centreReesGenericChartEquiv_scalar I f hf }

/-- The centre `(2,X,Y)` becomes the unit ideal on the generic
surface after inverting its scalar `2`. -/
theorem localSurfaceCentre_generic_eq_top
    (W : WeierstrassCurve ℤ_[2]) (x y : ℤ_[2]) :
    let q : MvPolynomial (Fin 2) ℤ_[2] →+*
        localSurfaceCoordinateRing W x y :=
      Ideal.Quotient.mk (Ideal.span {localSurfaceEquation W x y})
    Ideal.map (algebraMap (localSurfaceCoordinateRing W x y)
      (Localization.Away (q (MvPolynomial.C (2 : ℤ_[2])))))
      (localSurfaceClosedPoint W x y) = ⊤ := by
  let q : MvPolynomial (Fin 2) ℤ_[2] →+*
      localSurfaceCoordinateRing W x y :=
    Ideal.Quotient.mk (Ideal.span {localSurfaceEquation W x y})
  apply centreReesIdeal_localized_eq_top
  exact Ideal.mem_map_of_mem q
    (Ideal.subset_span (by simp [localSurfaceCentre]))

/-- The generic part of `D₊(2t)` has exactly the generic surface
coordinate ring; the isomorphism uses the actual Rees denominator. -/
noncomputable def localSurfaceCentreTwoGenericRingEquiv
    (W : WeierstrassCurve ℤ_[2]) (x y : ℤ_[2]) :
    let q : MvPolynomial (Fin 2) ℤ_[2] →+*
        localSurfaceCoordinateRing W x y :=
      Ideal.Quotient.mk (Ideal.span {localSurfaceEquation W x y})
    letI : GradedAlgebra
        (centreReesComponent (localSurfaceClosedPoint W x y)) :=
      centreReesGrading (localSurfaceClosedPoint W x y)
    Localization.Away
      (homogeneousScalarAwayHom
        (centreReesComponent (localSurfaceClosedPoint W x y))
        (localSurfaceCentreReesTwo W x y)
        (q (MvPolynomial.C (2 : ℤ_[2])))) ≃+*
      Localization.Away (q (MvPolynomial.C (2 : ℤ_[2]))) := by
  let q : MvPolynomial (Fin 2) ℤ_[2] →+*
      localSurfaceCoordinateRing W x y :=
    Ideal.Quotient.mk (Ideal.span {localSurfaceEquation W x y})
  exact centreReesGenericChartEquiv (localSurfaceClosedPoint W x y)
    (q (MvPolynomial.C (2 : ℤ_[2])))
    (Ideal.mem_map_of_mem q
      (Ideal.subset_span (by simp [localSurfaceCentre])))

/-- Away from the surface scalar `2`, no point of the Rees `Proj`
can be outside `D₊(2t)`. This uses the cover by the three actual
degree-one generators, not a claim about a glued candidate. -/
theorem localSurfaceCentre_genericScalarOpen_le_two
    (W : WeierstrassCurve ℤ_[2]) (x y : ℤ_[2]) :
    let R := localSurfaceCoordinateRing W x y
    let q : MvPolynomial (Fin 2) ℤ_[2] →+* R :=
      Ideal.Quotient.mk (Ideal.span {localSurfaceEquation W x y})
    letI : GradedAlgebra (centreReesComponent (localSurfaceClosedPoint W x y)) :=
      centreReesGrading (localSurfaceClosedPoint W x y)
    ProjectiveSpectrum.basicOpen (centreReesComponent (localSurfaceClosedPoint W x y))
        (algebraMap R (localSurfaceCentreRees W x y)
          (q (MvPolynomial.C (2 : ℤ_[2])))) ≤
      ProjectiveSpectrum.basicOpen (centreReesComponent (localSurfaceClosedPoint W x y))
        (localSurfaceCentreReesTwo W x y) := by
  let R := localSurfaceCoordinateRing W x y
  let I := localSurfaceClosedPoint W x y
  let A := localSurfaceCentreRees W x y
  let 𝒜 := centreReesComponent I
  letI : GradedAlgebra 𝒜 := centreReesGrading I
  let q : MvPolynomial (Fin 2) ℤ_[2] →+* R :=
    Ideal.Quotient.mk (Ideal.span {localSurfaceEquation W x y})
  change ProjectiveSpectrum.basicOpen 𝒜
      (algebraMap R A (q (MvPolynomial.C (2 : ℤ_[2])))) ≤
    ProjectiveSpectrum.basicOpen 𝒜 (localSurfaceCentreReesTwo W x y)
  intro p hp
  rw [ProjectiveSpectrum.mem_coe_basicOpen] at hp ⊢
  intro htwo
  have hcoord (i : Fin 2) :
      localSurfaceCentreReesCoordinate W x y i ∈
        p.asHomogeneousIdeal.toIdeal := by
    have hprod :
        algebraMap R A (q (MvPolynomial.C (2 : ℤ_[2]))) *
          localSurfaceCentreReesCoordinate W x y i ∈
            p.asHomogeneousIdeal.toIdeal := by
      rw [localSurfaceCentreRees_relation W x y i]
      exact p.asHomogeneousIdeal.toIdeal.mul_mem_left _ htwo
    exact ((p.isPrime.mem_or_mem hprod).resolve_left hp)
  have hgen (i : Fin 3) :
      localSurfaceCentreReesGenerator W x y i ∈
        p.asHomogeneousIdeal.toIdeal := by
    fin_cases i
    · exact htwo
    · exact hcoord 0
    · exact hcoord 1
  have hcover :
      p ∈ ⨆ i : Fin 3, ProjectiveSpectrum.basicOpen 𝒜
        (localSurfaceCentreReesGenerator W x y i) := by
    rw [localSurfaceCentreReesGenerator_cover W x y]
    trivial
  obtain ⟨i, hi⟩ := TopologicalSpace.Opens.mem_iSup.mp hcover
  exact (ProjectiveSpectrum.mem_basicOpen 𝒜 _ p).mp hi (hgen i)

/-- The structure map of the *actual* surface-centre Rees `Proj`
to the 2-adic base, obtained by composing its surface map with the
surface's structural map. -/
noncomputable def localSurfaceCentreReesToBase
    (W : WeierstrassCurve ℤ_[2]) (x y : ℤ_[2]) :
    localSurfaceCentreReesProj W x y ⟶
      Spec (CommRingCat.of ℤ_[2]) := by
  let q : MvPolynomial (Fin 2) ℤ_[2] →+*
      localSurfaceCoordinateRing W x y :=
    Ideal.Quotient.mk (Ideal.span {localSurfaceEquation W x y})
  exact localSurfaceCentreReesToSurface W x y ≫
    Spec.map (CommRingCat.ofHom (q.comp MvPolynomial.C))

/-- The scheme-theoretic inverse image of the base `D(2)` is
exactly the scalar-`2` projective basic open, not merely a subset
detected by the chart equations. -/
theorem localSurfaceCentre_genericOpen_eq_scalarOpen
    (W : WeierstrassCurve ℤ_[2]) (x y : ℤ_[2]) :
    let R := localSurfaceCoordinateRing W x y
    let q : MvPolynomial (Fin 2) ℤ_[2] →+* R :=
      Ideal.Quotient.mk (Ideal.span {localSurfaceEquation W x y})
    letI : GradedAlgebra
        (centreReesComponent (localSurfaceClosedPoint W x y)) :=
      centreReesGrading (localSurfaceClosedPoint W x y)
    (localSurfaceCentreReesToBase W x y) ⁻¹ᵁ
        PrimeSpectrum.basicOpen (2 : ℤ_[2]) =
      ProjectiveSpectrum.basicOpen
        (centreReesComponent (localSurfaceClosedPoint W x y))
        (algebraMap R (localSurfaceCentreRees W x y)
          (q (MvPolynomial.C (2 : ℤ_[2])))) := by
  let R := localSurfaceCoordinateRing W x y
  let q : MvPolynomial (Fin 2) ℤ_[2] →+* R :=
    Ideal.Quotient.mk (Ideal.span {localSurfaceEquation W x y})
  letI : GradedAlgebra
      (centreReesComponent (localSurfaceClosedPoint W x y)) :=
    centreReesGrading (localSurfaceClosedPoint W x y)
  change (localSurfaceCentreReesToBase W x y) ⁻¹ᵁ
      PrimeSpectrum.basicOpen (2 : ℤ_[2]) = _
  unfold localSurfaceCentreReesToBase
  rw [Scheme.preimage_comp]
  have hpre :
      (Spec.map (CommRingCat.ofHom (q.comp MvPolynomial.C))) ⁻¹ᵁ
          PrimeSpectrum.basicOpen (2 : ℤ_[2]) =
        PrimeSpectrum.basicOpen (q (MvPolynomial.C (2 : ℤ_[2]))) := by
    simpa only [RingHom.comp_apply] using
      (PrimeSpectrum.comap_basicOpen (q.comp MvPolynomial.C)
        (2 : ℤ_[2]))
  rw [hpre]
  exact projectiveScalar_baseOpen_preimage
    (centreReesComponent (localSurfaceClosedPoint W x y))
    (q (MvPolynomial.C (2 : ℤ_[2])))

/-- Restricting an open inside a larger open does not change its
scheme, including its structure sheaf. -/
noncomputable def schemeRestrictOpenOfLE
    {X : Scheme} {U V : X.Opens} (h : U ≤ V) :
    U.toScheme ≅ (V.ι ⁻¹ᵁ U).toScheme := by
  have he : V.ι ''ᵁ (V.ι ⁻¹ᵁ U) = U := by
    apply TopologicalSpace.Opens.ext
    change V.ι.val.base '' (V.ι.val.base ⁻¹' (U : Set X)) = (U : Set X)
    rw [Set.image_preimage_eq_inter_range, Scheme.Opens.range_ι]
    exact Set.inter_eq_left.mpr h
  exact ((X.restrictRestrict V (V.ι ⁻¹ᵁ U)) ≪≫
    (X.restrictIsoOfEq he)).symm

theorem schemeRestrictOpenOfLE_fac
    {X : Scheme} {U V : X.Opens} (h : U ≤ V) :
    (schemeRestrictOpenOfLE h).hom ≫
        (V.ι ⁻¹ᵁ U).ι ≫ V.ι = U.ι := by
  unfold schemeRestrictOpenOfLE
  simp only [Iso.symm_hom, Iso.trans_inv, Category.assoc,
    Scheme.restrictRestrict_inv_restrict_restrict,
    IsOpenImmersion.isoOfRangeEq_inv_fac]
  exact IsOpenImmersion.isoOfRangeEq_inv_fac _ _ _

/-- The principal basic open in an affine spectrum is the spectrum
of the localization. The isomorphism is over the original spectrum. -/
noncomputable def specBasicOpenAwayIso
    {R : Type*} [CommRing R] (r : R) :
    Scheme.Opens.toScheme (X := Spec (CommRingCat.of R))
      (PrimeSpectrum.basicOpen r) ≅
        Spec (CommRingCat.of (Localization.Away r)) := by
  let U : (Spec (CommRingCat.of R)).Opens := PrimeSpectrum.basicOpen r
  let j : Spec (CommRingCat.of (Localization.Away r)) ⟶
      Spec (CommRingCat.of R) :=
    Spec.map (CommRingCat.ofHom (algebraMap R (Localization.Away r)))
  have he : Set.range U.ι.val.base = Set.range j.val.base := by
    rw [Scheme.Opens.range_ι]
    exact (PrimeSpectrum.localization_away_comap_range
      (Localization.Away r) r).symm
  exact IsOpenImmersion.isoOfRangeEq U.ι j he

theorem specBasicOpenAwayIso_fac
    {R : Type*} [CommRing R] (r : R) :
    (specBasicOpenAwayIso r).hom ≫
        Spec.map (CommRingCat.ofHom
          (algebraMap R (Localization.Away r))) =
      (Scheme.Opens.ι (X := Spec (CommRingCat.of R))
        (PrimeSpectrum.basicOpen r)) := by
  unfold specBasicOpenAwayIso
  exact IsOpenImmersion.isoOfRangeEq_hom_fac _ _ _

/-- The localized affine `D₊(2t)` chart and the localized original
surface have isomorphic spectra. The separate identification of the
whole blow-up's base-changed scheme with this open is not asserted. -/
noncomputable def localSurfaceCentreTwoGenericSpecIso
    (W : WeierstrassCurve ℤ_[2]) (x y : ℤ_[2]) :
    let q : MvPolynomial (Fin 2) ℤ_[2] →+*
        localSurfaceCoordinateRing W x y :=
      Ideal.Quotient.mk (Ideal.span {localSurfaceEquation W x y})
    letI : GradedAlgebra
        (centreReesComponent (localSurfaceClosedPoint W x y)) :=
      centreReesGrading (localSurfaceClosedPoint W x y)
    Spec (CommRingCat.of (Localization.Away
      (homogeneousScalarAwayHom
        (centreReesComponent (localSurfaceClosedPoint W x y))
        (localSurfaceCentreReesTwo W x y)
        (q (MvPolynomial.C (2 : ℤ_[2])))))) ≅
      Spec (CommRingCat.of
        (Localization.Away (q (MvPolynomial.C (2 : ℤ_[2]))))) := by
  letI : GradedAlgebra
      (centreReesComponent (localSurfaceClosedPoint W x y)) :=
    centreReesGrading (localSurfaceClosedPoint W x y)
  exact (Scheme.Spec.mapIso
    (localSurfaceCentreTwoGenericRingEquiv W x y).toCommRingCatIso.op).symm

/-- The affine generic comparison respects the surface-coordinate
structure maps. -/
theorem localSurfaceCentreTwoGenericSpecIso_fac
    (W : WeierstrassCurve ℤ_[2]) (x y : ℤ_[2]) :
    let R := localSurfaceCoordinateRing W x y
    let q : MvPolynomial (Fin 2) ℤ_[2] →+* R :=
      Ideal.Quotient.mk (Ideal.span {localSurfaceEquation W x y})
    let f : R := q (MvPolynomial.C (2 : ℤ_[2]))
    letI : GradedAlgebra
        (centreReesComponent (localSurfaceClosedPoint W x y)) :=
      centreReesGrading (localSurfaceClosedPoint W x y)
    let B := localSurfaceCentreTwoAway W x y
    let h : R →+* B :=
      homogeneousScalarAwayHom
        (centreReesComponent (localSurfaceClosedPoint W x y))
        (localSurfaceCentreReesTwo W x y)
    (localSurfaceCentreTwoGenericSpecIso W x y).hom ≫
        Spec.map (CommRingCat.ofHom
          (algebraMap R (Localization.Away f))) =
      Spec.map (CommRingCat.ofHom
          (algebraMap B (Localization.Away (h f)))) ≫
        Spec.map (CommRingCat.ofHom h) := by
  let R := localSurfaceCoordinateRing W x y
  let q : MvPolynomial (Fin 2) ℤ_[2] →+* R :=
    Ideal.Quotient.mk (Ideal.span {localSurfaceEquation W x y})
  let f : R := q (MvPolynomial.C (2 : ℤ_[2]))
  let I := localSurfaceClosedPoint W x y
  letI : GradedAlgebra (centreReesComponent I) := centreReesGrading I
  let B := localSurfaceCentreTwoAway W x y
  let h : R →+* B :=
    homogeneousScalarAwayHom (centreReesComponent I)
      (localSurfaceCentreReesTwo W x y)
  let D := Localization.Away (h f)
  let L := Localization.Away f
  let e : D ≃+* L := localSurfaceCentreTwoGenericRingEquiv W x y
  have hr : (e.symm.toRingHom).comp (algebraMap R L) =
      (algebraMap B D).comp h := by
    apply RingHom.ext
    intro r
    apply e.injective
    change e (e.symm ((algebraMap R L) r)) =
      e ((algebraMap B D) (h r))
    rw [e.apply_symm_apply]
    exact (centreReesGenericChartEquiv_scalar I f
      (Ideal.mem_map_of_mem q
        (Ideal.subset_span (by simp [localSurfaceCentre]))) r).symm
  change (localSurfaceCentreTwoGenericSpecIso W x y).hom ≫
      Spec.map (CommRingCat.ofHom (algebraMap R L)) =
    Spec.map (CommRingCat.ofHom (algebraMap B D)) ≫
      Spec.map (CommRingCat.ofHom h)
  change Spec.map (CommRingCat.ofHom e.symm.toRingHom) ≫
      Spec.map (CommRingCat.ofHom (algebraMap R L)) =
    Spec.map (CommRingCat.ofHom (algebraMap B D)) ≫
      Spec.map (CommRingCat.ofHom h)
  rw [← Spec.map_comp, ← Spec.map_comp]
  exact congrArg (fun k => Spec.map (CommRingCat.ofHom k)) hr

/-- The actual inverse-image open over the surface's `D(2)` is
the spectrum of the localized surface ring. The chart identification
and the restriction of the structure map are used in constructing
this isomorphism. -/
noncomputable def localSurfaceCentreGenericSurfaceSchemeIso
    (W : WeierstrassCurve ℤ_[2]) (x y : ℤ_[2]) :
    let q : MvPolynomial (Fin 2) ℤ_[2] →+*
        localSurfaceCoordinateRing W x y :=
      Ideal.Quotient.mk (Ideal.span {localSurfaceEquation W x y})
    Scheme.Opens.toScheme (X := localSurfaceCentreReesProj W x y)
      ((localSurfaceCentreReesToSurface W x y) ⁻¹ᵁ
        PrimeSpectrum.basicOpen (q (MvPolynomial.C (2 : ℤ_[2])))) ≅
      Spec (CommRingCat.of
        (Localization.Away (q (MvPolynomial.C (2 : ℤ_[2]))))) := by
  let R := localSurfaceCoordinateRing W x y
  let q : MvPolynomial (Fin 2) ℤ_[2] →+* R :=
    Ideal.Quotient.mk (Ideal.span {localSurfaceEquation W x y})
  let f : R := q (MvPolynomial.C (2 : ℤ_[2]))
  let I := localSurfaceClosedPoint W x y
  let 𝒜 := centreReesComponent I
  letI : GradedAlgebra 𝒜 := centreReesGrading I
  let X := localSurfaceCentreReesProj W x y
  let g := localSurfaceCentreReesTwo W x y
  let B := localSurfaceCentreTwoAway W x y
  let h : R →+* B := homogeneousScalarAwayHom 𝒜 g
  let V : X.Opens := ProjectiveSpectrum.basicOpen 𝒜 g
  let G : X.Opens :=
    (localSurfaceCentreReesToSurface W x y) ⁻¹ᵁ
      PrimeSpectrum.basicOpen f
  let U : (Spec (CommRingCat.of B)).Opens := PrimeSpectrum.basicOpen (h f)
  let E : V.toScheme ≅ Spec (CommRingCat.of B) :=
    localSurfaceCentreTwoBasicSchemeIso W x y
  let j : Spec (CommRingCat.of B) ⟶ Spec (CommRingCat.of R) :=
    Spec.map (CommRingCat.ofHom h)
  change G.toScheme ≅ Spec (CommRingCat.of (Localization.Away f))
  have hG : G ≤ V := by
    have hs : G = ProjectiveSpectrum.basicOpen 𝒜
        (algebraMap R (localSurfaceCentreRees W x y) f) :=
      projectiveScalar_baseOpen_preimage 𝒜 f
    rw [hs]
    exact localSurfaceCentre_genericScalarOpen_le_two W x y
  have hj : j ⁻¹ᵁ PrimeSpectrum.basicOpen f = U := by
    exact PrimeSpectrum.comap_basicOpen h f
  have hK : V.ι ⁻¹ᵁ G = E.hom ⁻¹ᵁ U := by
    calc
      V.ι ⁻¹ᵁ G =
          (V.ι ≫ localSurfaceCentreReesToSurface W x y) ⁻¹ᵁ
            PrimeSpectrum.basicOpen f :=
        (Scheme.preimage_comp _ _ _).symm
      _ = (E.hom ≫ j) ⁻¹ᵁ PrimeSpectrum.basicOpen f := by
        rw [localSurfaceCentreReesToSurface_onTwo W x y]
      _ = E.hom ⁻¹ᵁ U := by
        rw [Scheme.preimage_comp, hj]
  exact (schemeRestrictOpenOfLE hG) ≪≫
    (V.toScheme.restrictIsoOfEq hK) ≪≫
    (Scheme.restrictMapIso E.hom U) ≪≫
    (specBasicOpenAwayIso (h f)) ≪≫
    (localSurfaceCentreTwoGenericSpecIso W x y)

set_option maxHeartbeats 1000000

/-- The generic scheme isomorphism intertwines the *actual*
blow-up map and localization of the translated surface. -/
theorem localSurfaceCentreGenericSurfaceSchemeIso_fac
    (W : WeierstrassCurve ℤ_[2]) (x y : ℤ_[2]) :
    let R := localSurfaceCoordinateRing W x y
    let q : MvPolynomial (Fin 2) ℤ_[2] →+* R :=
      Ideal.Quotient.mk (Ideal.span {localSurfaceEquation W x y})
    let f : R := q (MvPolynomial.C (2 : ℤ_[2]))
    (localSurfaceCentreGenericSurfaceSchemeIso W x y).hom ≫
        Spec.map (CommRingCat.ofHom
          (algebraMap R (Localization.Away f))) =
      (Scheme.Opens.ι (X := localSurfaceCentreReesProj W x y)
        ((localSurfaceCentreReesToSurface W x y) ⁻¹ᵁ
          PrimeSpectrum.basicOpen f)) ≫
        localSurfaceCentreReesToSurface W x y := by
  let R := localSurfaceCoordinateRing W x y
  let q : MvPolynomial (Fin 2) ℤ_[2] →+* R :=
    Ideal.Quotient.mk (Ideal.span {localSurfaceEquation W x y})
  let f : R := q (MvPolynomial.C (2 : ℤ_[2]))
  let I := localSurfaceClosedPoint W x y
  let 𝒜 := centreReesComponent I
  letI : GradedAlgebra 𝒜 := centreReesGrading I
  let X := localSurfaceCentreReesProj W x y
  let g := localSurfaceCentreReesTwo W x y
  let B := localSurfaceCentreTwoAway W x y
  let h : R →+* B := homogeneousScalarAwayHom 𝒜 g
  let V : X.Opens := ProjectiveSpectrum.basicOpen 𝒜 g
  let G : X.Opens :=
    (localSurfaceCentreReesToSurface W x y) ⁻¹ᵁ
      PrimeSpectrum.basicOpen f
  let U : (Spec (CommRingCat.of B)).Opens := PrimeSpectrum.basicOpen (h f)
  let E : V.toScheme ≅ Spec (CommRingCat.of B) :=
    localSurfaceCentreTwoBasicSchemeIso W x y
  have hG : G ≤ V := by
    have hs : G = ProjectiveSpectrum.basicOpen 𝒜
        (algebraMap R (localSurfaceCentreRees W x y) f) :=
      projectiveScalar_baseOpen_preimage 𝒜 f
    rw [hs]
    exact localSurfaceCentre_genericScalarOpen_le_two W x y
  have hK : V.ι ⁻¹ᵁ G = E.hom ⁻¹ᵁ U := by
    calc
      V.ι ⁻¹ᵁ G =
          (V.ι ≫ localSurfaceCentreReesToSurface W x y) ⁻¹ᵁ
            PrimeSpectrum.basicOpen f :=
        (Scheme.preimage_comp _ _ _).symm
      _ = (E.hom ≫ Spec.map (CommRingCat.ofHom h)) ⁻¹ᵁ
          PrimeSpectrum.basicOpen f := by
        rw [localSurfaceCentreReesToSurface_onTwo W x y]
      _ = E.hom ⁻¹ᵁ U := by
        rw [Scheme.preimage_comp]
        exact congrArg (fun U : (Spec (CommRingCat.of B)).Opens =>
          E.hom ⁻¹ᵁ U) (PrimeSpectrum.comap_basicOpen h f)
  let a := schemeRestrictOpenOfLE hG
  let b := V.toScheme.restrictIsoOfEq hK
  let c := Scheme.restrictMapIso E.hom U
  let d := specBasicOpenAwayIso (h f)
  let e := localSurfaceCentreTwoGenericSpecIso W x y
  have hb : b.hom ≫ (E.hom ⁻¹ᵁ U).ι = (V.ι ⁻¹ᵁ G).ι :=
    IsOpenImmersion.isoOfRangeEq_hom_fac _ _ _
  have hc : c.hom ≫ U.ι = (E.hom ⁻¹ᵁ U).ι ≫ E.hom :=
    IsOpenImmersion.isoOfRangeEq_hom_fac _ _ _
  change (a ≪≫ b ≪≫ c ≪≫ d ≪≫ e).hom ≫
      Spec.map (CommRingCat.ofHom
        (algebraMap R (Localization.Away f))) =
    G.ι ≫ localSurfaceCentreReesToSurface W x y
  simp only [Iso.trans_hom, Category.assoc]
  rw [localSurfaceCentreTwoGenericSpecIso_fac W x y]
  rw [← Category.assoc d.hom
    (Spec.map (CommRingCat.ofHom
      (algebraMap B (Localization.Away (h f)))))
    (Spec.map (CommRingCat.ofHom h)),
    specBasicOpenAwayIso_fac (h f)]
  rw [← Category.assoc c.hom U.ι
    (Spec.map (CommRingCat.ofHom h)), hc]
  rw [Category.assoc (E.hom ⁻¹ᵁ U).ι E.hom
    (Spec.map (CommRingCat.ofHom h))]
  rw [← Category.assoc b.hom (E.hom ⁻¹ᵁ U).ι
    (E.hom ≫ Spec.map (CommRingCat.ofHom h)), hb]
  rw [← localSurfaceCentreReesToSurface_onTwo W x y]
  simp only [← Category.assoc]
  rw [Category.assoc a.hom (V.ι ⁻¹ᵁ G).ι V.ι,
    schemeRestrictOpenOfLE_fac hG]

/-- The same open, now presented as the inverse image of the
generic basic open in the 2-adic base. -/
noncomputable def localSurfaceCentreGenericBaseSchemeIso
    (W : WeierstrassCurve ℤ_[2]) (x y : ℤ_[2]) :
    let q : MvPolynomial (Fin 2) ℤ_[2] →+*
        localSurfaceCoordinateRing W x y :=
      Ideal.Quotient.mk (Ideal.span {localSurfaceEquation W x y})
    Scheme.Opens.toScheme (X := localSurfaceCentreReesProj W x y)
      ((localSurfaceCentreReesToBase W x y) ⁻¹ᵁ
        PrimeSpectrum.basicOpen (2 : ℤ_[2])) ≅
      Spec (CommRingCat.of
        (Localization.Away (q (MvPolynomial.C (2 : ℤ_[2]))))) := by
  let R := localSurfaceCoordinateRing W x y
  let q : MvPolynomial (Fin 2) ℤ_[2] →+* R :=
    Ideal.Quotient.mk (Ideal.span {localSurfaceEquation W x y})
  let I := localSurfaceClosedPoint W x y
  let 𝒜 := centreReesComponent I
  letI : GradedAlgebra 𝒜 := centreReesGrading I
  let X := localSurfaceCentreReesProj W x y
  let f : R := q (MvPolynomial.C (2 : ℤ_[2]))
  let Gbase : X.Opens := (localSurfaceCentreReesToBase W x y) ⁻¹ᵁ
    PrimeSpectrum.basicOpen (2 : ℤ_[2])
  let Gsurface : X.Opens := (localSurfaceCentreReesToSurface W x y) ⁻¹ᵁ
    PrimeSpectrum.basicOpen f
  change Gbase.toScheme ≅ Spec (CommRingCat.of (Localization.Away f))
  have he : Gbase = Gsurface := by
    calc
      Gbase = ProjectiveSpectrum.basicOpen 𝒜
          (algebraMap R (localSurfaceCentreRees W x y) f) :=
        localSurfaceCentre_genericOpen_eq_scalarOpen W x y
      _ = Gsurface :=
        (projectiveScalar_baseOpen_preimage 𝒜 f).symm
  exact (X.restrictIsoOfEq he) ≪≫
    (localSurfaceCentreGenericSurfaceSchemeIso W x y)

/-- The base-open comparison is compatible with the map from the
actual Rees blow-up to the original 2-adic base. -/
theorem localSurfaceCentreGenericBaseSchemeIso_fac
    (W : WeierstrassCurve ℤ_[2]) (x y : ℤ_[2]) :
    let R := localSurfaceCoordinateRing W x y
    let q : MvPolynomial (Fin 2) ℤ_[2] →+* R :=
      Ideal.Quotient.mk (Ideal.span {localSurfaceEquation W x y})
    let f : R := q (MvPolynomial.C (2 : ℤ_[2]))
    (localSurfaceCentreGenericBaseSchemeIso W x y).hom ≫
        Spec.map (CommRingCat.ofHom
          ((algebraMap R (Localization.Away f)).comp
            (q.comp MvPolynomial.C))) =
      (Scheme.Opens.ι (X := localSurfaceCentreReesProj W x y)
        ((localSurfaceCentreReesToBase W x y) ⁻¹ᵁ
          PrimeSpectrum.basicOpen (2 : ℤ_[2]))) ≫
        localSurfaceCentreReesToBase W x y := by
  let R := localSurfaceCoordinateRing W x y
  let q : MvPolynomial (Fin 2) ℤ_[2] →+* R :=
    Ideal.Quotient.mk (Ideal.span {localSurfaceEquation W x y})
  let f : R := q (MvPolynomial.C (2 : ℤ_[2]))
  let X := localSurfaceCentreReesProj W x y
  let U : (Spec (CommRingCat.of ℤ_[2])).Opens :=
    PrimeSpectrum.basicOpen (2 : ℤ_[2])
  let Gbase : X.Opens := localSurfaceCentreReesToBase W x y ⁻¹ᵁ U
  let Gsurface : X.Opens := localSurfaceCentreReesToSurface W x y ⁻¹ᵁ
    PrimeSpectrum.basicOpen f
  let j : Spec (CommRingCat.of R) ⟶ Spec (CommRingCat.of ℤ_[2]) :=
    Spec.map (CommRingCat.ofHom (q.comp MvPolynomial.C))
  let k : Spec (CommRingCat.of (Localization.Away f)) ⟶
      Spec (CommRingCat.of R) :=
    Spec.map (CommRingCat.ofHom (algebraMap R (Localization.Away f)))
  letI : GradedAlgebra
      (centreReesComponent (localSurfaceClosedPoint W x y)) :=
    centreReesGrading (localSurfaceClosedPoint W x y)
  have he : Gbase = Gsurface := by
    calc
      Gbase = ProjectiveSpectrum.basicOpen
          (centreReesComponent (localSurfaceClosedPoint W x y))
          (algebraMap R (localSurfaceCentreRees W x y) f) :=
        localSurfaceCentre_genericOpen_eq_scalarOpen W x y
      _ = Gsurface :=
        (projectiveScalar_baseOpen_preimage
          (centreReesComponent (localSurfaceClosedPoint W x y)) f).symm
  have hk : Spec.map (CommRingCat.ofHom
        ((algebraMap R (Localization.Away f)).comp
          (q.comp MvPolynomial.C))) = k ≫ j := by
    rw [← Spec.map_comp]
    rfl
  have hre : (X.restrictIsoOfEq he).hom ≫ Gsurface.ι = Gbase.ι :=
    IsOpenImmersion.isoOfRangeEq_hom_fac _ _ _
  change ((X.restrictIsoOfEq he ≪≫
      localSurfaceCentreGenericSurfaceSchemeIso W x y).hom ≫
        Spec.map (CommRingCat.ofHom
          ((algebraMap R (Localization.Away f)).comp
            (q.comp MvPolynomial.C)))) =
    Gbase.ι ≫ (localSurfaceCentreReesToSurface W x y ≫ j)
  rw [hk]
  simp only [Iso.trans_hom, Category.assoc]
  rw [← Category.assoc
    (localSurfaceCentreGenericSurfaceSchemeIso W x y).hom k j,
    localSurfaceCentreGenericSurfaceSchemeIso_fac W x y]
  rw [Category.assoc Gsurface.ι
    (localSurfaceCentreReesToSurface W x y) j,
    ← Category.assoc (X.restrictIsoOfEq he).hom Gsurface.ι
      (localSurfaceCentreReesToSurface W x y ≫ j), hre]

/-- The pullback defining the generic fibre of the actual Rees
blow-up is isomorphic, as a scheme, to the localized translated
surface. The comparison with base structure maps is checked
separately. -/
noncomputable def localSurfaceCentreGenericFibreSchemeIso
    (W : WeierstrassCurve ℤ_[2]) (x y : ℤ_[2]) :
    let q : MvPolynomial (Fin 2) ℤ_[2] →+*
        localSurfaceCoordinateRing W x y :=
      Ideal.Quotient.mk (Ideal.span {localSurfaceEquation W x y})
    Limits.pullback (localSurfaceCentreReesToBase W x y)
      (Scheme.Opens.ι (X := Spec (CommRingCat.of ℤ_[2]))
        (PrimeSpectrum.basicOpen (2 : ℤ_[2]))) ≅
      Spec (CommRingCat.of
        (Localization.Away (q (MvPolynomial.C (2 : ℤ_[2]))))) := by
  exact (pullbackRestrictIsoRestrict
    (localSurfaceCentreReesToBase W x y)
    (PrimeSpectrum.basicOpen (2 : ℤ_[2]))) ≪≫
    (localSurfaceCentreGenericBaseSchemeIso W x y)

/-- The generic-fibre comparison commutes with the two morphisms
to the original 2-adic base. -/
theorem localSurfaceCentreGenericFibreSchemeIso_fac
    (W : WeierstrassCurve ℤ_[2]) (x y : ℤ_[2]) :
    let R := localSurfaceCoordinateRing W x y
    let q : MvPolynomial (Fin 2) ℤ_[2] →+* R :=
      Ideal.Quotient.mk (Ideal.span {localSurfaceEquation W x y})
    let f : R := q (MvPolynomial.C (2 : ℤ_[2]))
    let U : (Spec (CommRingCat.of ℤ_[2])).Opens :=
      PrimeSpectrum.basicOpen (2 : ℤ_[2])
    (localSurfaceCentreGenericFibreSchemeIso W x y).hom ≫
        Spec.map (CommRingCat.ofHom
          ((algebraMap R (Localization.Away f)).comp
            (q.comp MvPolynomial.C))) =
      Limits.pullback.snd (localSurfaceCentreReesToBase W x y) U.ι ≫
        U.ι := by
  let R := localSurfaceCoordinateRing W x y
  let q : MvPolynomial (Fin 2) ℤ_[2] →+* R :=
    Ideal.Quotient.mk (Ideal.span {localSurfaceEquation W x y})
  let f : R := q (MvPolynomial.C (2 : ℤ_[2]))
  let F := localSurfaceCentreReesToBase W x y
  let U : (Spec (CommRingCat.of ℤ_[2])).Opens :=
    PrimeSpectrum.basicOpen (2 : ℤ_[2])
  let a := pullbackRestrictIsoRestrict F U
  let b := localSurfaceCentreGenericBaseSchemeIso W x y
  change (a ≪≫ b).hom ≫
      Spec.map (CommRingCat.ofHom
        ((algebraMap R (Localization.Away f)).comp
          (q.comp MvPolynomial.C))) =
    Limits.pullback.snd F U.ι ≫ U.ι
  calc
    (a ≪≫ b).hom ≫
        Spec.map (CommRingCat.ofHom
          ((algebraMap R (Localization.Away f)).comp
            (q.comp MvPolynomial.C))) =
      a.hom ≫ (b.hom ≫
        Spec.map (CommRingCat.ofHom
          ((algebraMap R (Localization.Away f)).comp
            (q.comp MvPolynomial.C)))) := by
        simp only [Iso.trans_hom, Category.assoc]
    _ = a.hom ≫
        ((F ⁻¹ᵁ U).ι ≫ F) := by
      rw [localSurfaceCentreGenericBaseSchemeIso_fac W x y]
    _ = Limits.pullback.fst F U.ι ≫ F := by
      rw [← Category.assoc, pullbackRestrictIsoRestrict_hom_restrict]
    _ = Limits.pullback.snd F U.ι ≫ U.ι :=
      Limits.pullback.condition

/-- The translated surface localized at `2` receives the
localized 2-adic base through its original scalar map. -/
noncomputable def localSurfaceGenericBaseHom
    (W : WeierstrassCurve ℤ_[2]) (x y : ℤ_[2]) :
    let q : MvPolynomial (Fin 2) ℤ_[2] →+*
        localSurfaceCoordinateRing W x y :=
      Ideal.Quotient.mk (Ideal.span {localSurfaceEquation W x y})
    Localization.Away (2 : ℤ_[2]) →+*
      Localization.Away (q (MvPolynomial.C (2 : ℤ_[2]))) := by
  let R := localSurfaceCoordinateRing W x y
  let q : MvPolynomial (Fin 2) ℤ_[2] →+* R :=
    Ideal.Quotient.mk (Ideal.span {localSurfaceEquation W x y})
  let f : R := q (MvPolynomial.C (2 : ℤ_[2]))
  let L := Localization.Away f
  let β : ℤ_[2] →+* L := (algebraMap R L).comp (q.comp MvPolynomial.C)
  have hu : IsUnit (β (2 : ℤ_[2])) := by
    change IsUnit (algebraMap R L f)
    exact IsLocalization.map_units L ⟨f, Submonoid.mem_powers f⟩
  have hp (m : Submonoid.powers (2 : ℤ_[2])) : IsUnit (β m.1) := by
    obtain ⟨n, hn⟩ := (Submonoid.mem_powers_iff m.1 (2 : ℤ_[2])).mp m.2
    rw [← hn, map_pow]
    exact hu.pow n
  exact IsLocalization.lift (S := Localization.Away (2 : ℤ_[2])) (g := β) hp

/-- On 2-adic scalars, the localized base map is the original
surface scalar map followed by localization. -/
theorem localSurfaceGenericBaseHom_comp
    (W : WeierstrassCurve ℤ_[2]) (x y : ℤ_[2]) :
    let R := localSurfaceCoordinateRing W x y
    let q : MvPolynomial (Fin 2) ℤ_[2] →+* R :=
      Ideal.Quotient.mk (Ideal.span {localSurfaceEquation W x y})
    let f : R := q (MvPolynomial.C (2 : ℤ_[2]))
    (localSurfaceGenericBaseHom W x y).comp
        (algebraMap ℤ_[2] (Localization.Away (2 : ℤ_[2]))) =
      (algebraMap R (Localization.Away f)).comp
        (q.comp MvPolynomial.C) := by
  let R := localSurfaceCoordinateRing W x y
  let q : MvPolynomial (Fin 2) ℤ_[2] →+* R :=
    Ideal.Quotient.mk (Ideal.span {localSurfaceEquation W x y})
  let f : R := q (MvPolynomial.C (2 : ℤ_[2]))
  let L := Localization.Away f
  let β : ℤ_[2] →+* L := (algebraMap R L).comp (q.comp MvPolynomial.C)
  have hu : IsUnit (β (2 : ℤ_[2])) := by
    change IsUnit (algebraMap R L f)
    exact IsLocalization.map_units L ⟨f, Submonoid.mem_powers f⟩
  have hp (m : Submonoid.powers (2 : ℤ_[2])) : IsUnit (β m.1) := by
    obtain ⟨n, hn⟩ := (Submonoid.mem_powers_iff m.1 (2 : ℤ_[2])).mp m.2
    rw [← hn, map_pow]
    exact hu.pow n
  change (IsLocalization.lift (S := Localization.Away (2 : ℤ_[2]))
      (g := β) hp).comp
      (algebraMap ℤ_[2] (Localization.Away (2 : ℤ_[2]))) = β
  exact IsLocalization.lift_comp (S := Localization.Away (2 : ℤ_[2])) hp

/-- The localized surface, viewed as a scheme over the actual
generic open `D(2)` of the 2-adic base. -/
noncomputable def localSurfaceGenericToBaseOpen
    (W : WeierstrassCurve ℤ_[2]) (x y : ℤ_[2]) :
    let q : MvPolynomial (Fin 2) ℤ_[2] →+*
        localSurfaceCoordinateRing W x y :=
      Ideal.Quotient.mk (Ideal.span {localSurfaceEquation W x y})
    Spec (CommRingCat.of
        (Localization.Away (q (MvPolynomial.C (2 : ℤ_[2]))))) ⟶
      Scheme.Opens.toScheme (X := Spec (CommRingCat.of ℤ_[2]))
        (PrimeSpectrum.basicOpen (2 : ℤ_[2])) := by
  exact Spec.map (CommRingCat.ofHom
      (localSurfaceGenericBaseHom W x y)) ≫
    (specBasicOpenAwayIso (2 : ℤ_[2])).inv

theorem localSurfaceGenericToBaseOpen_fac
    (W : WeierstrassCurve ℤ_[2]) (x y : ℤ_[2]) :
    let R := localSurfaceCoordinateRing W x y
    let q : MvPolynomial (Fin 2) ℤ_[2] →+* R :=
      Ideal.Quotient.mk (Ideal.span {localSurfaceEquation W x y})
    let f : R := q (MvPolynomial.C (2 : ℤ_[2]))
    let U : (Spec (CommRingCat.of ℤ_[2])).Opens :=
      PrimeSpectrum.basicOpen (2 : ℤ_[2])
    localSurfaceGenericToBaseOpen W x y ≫ U.ι =
      Spec.map (CommRingCat.ofHom
        ((algebraMap R (Localization.Away f)).comp
          (q.comp MvPolynomial.C))) := by
  let R := localSurfaceCoordinateRing W x y
  let q : MvPolynomial (Fin 2) ℤ_[2] →+* R :=
    Ideal.Quotient.mk (Ideal.span {localSurfaceEquation W x y})
  let f : R := q (MvPolynomial.C (2 : ℤ_[2]))
  let U : (Spec (CommRingCat.of ℤ_[2])).Opens :=
    PrimeSpectrum.basicOpen (2 : ℤ_[2])
  let D := Localization.Away (2 : ℤ_[2])
  let b := localSurfaceGenericBaseHom W x y
  let j := Spec.map (CommRingCat.ofHom b)
  let k := Spec.map (CommRingCat.ofHom (algebraMap ℤ_[2] D))
  have hd : (specBasicOpenAwayIso (2 : ℤ_[2])).inv ≫ U.ι = k := by
    unfold specBasicOpenAwayIso
    exact IsOpenImmersion.isoOfRangeEq_inv_fac _ _ _
  change (j ≫ (specBasicOpenAwayIso (2 : ℤ_[2])).inv) ≫ U.ι =
    Spec.map (CommRingCat.ofHom
      ((algebraMap R (Localization.Away f)).comp
        (q.comp MvPolynomial.C)))
  rw [Category.assoc, hd, ← Spec.map_comp]
  exact congrArg (fun t => Spec.map (CommRingCat.ofHom t))
    (localSurfaceGenericBaseHom_comp W x y)

/-- The generic-fibre scheme isomorphism is over `D(2)` itself,
not only an abstract isomorphism of schemes or a comparison over
the ambient 2-adic base. -/
theorem localSurfaceCentreGenericFibreSchemeIso_overBase
    (W : WeierstrassCurve ℤ_[2]) (x y : ℤ_[2]) :
    let U : (Spec (CommRingCat.of ℤ_[2])).Opens :=
      PrimeSpectrum.basicOpen (2 : ℤ_[2])
    (localSurfaceCentreGenericFibreSchemeIso W x y).hom ≫
        localSurfaceGenericToBaseOpen W x y =
      Limits.pullback.snd (localSurfaceCentreReesToBase W x y) U.ι := by
  let U : (Spec (CommRingCat.of ℤ_[2])).Opens :=
    PrimeSpectrum.basicOpen (2 : ℤ_[2])
  apply (cancel_mono U.ι).mp
  rw [Category.assoc, localSurfaceGenericToBaseOpen_fac W x y,
    localSurfaceCentreGenericFibreSchemeIso_fac W x y]

#print axioms centreReesIdeal_localized_eq_top
#print axioms projectiveScalarSection_basicOpen
#print axioms projectiveScalar_baseOpen_preimage
#print axioms centreReesGenericChartEquiv
#print axioms centreReesGenericChartEquiv_scalar
#print axioms centreReesGenericChartAlgEquiv
#print axioms localSurfaceCentre_generic_eq_top
#print axioms localSurfaceCentreTwoGenericRingEquiv
#print axioms localSurfaceCentre_genericScalarOpen_le_two
#print axioms localSurfaceCentre_genericOpen_eq_scalarOpen
#print axioms schemeRestrictOpenOfLE
#print axioms specBasicOpenAwayIso
#print axioms schemeRestrictOpenOfLE_fac
#print axioms specBasicOpenAwayIso_fac
#print axioms localSurfaceCentreTwoGenericSpecIso
#print axioms localSurfaceCentreTwoGenericSpecIso_fac
#print axioms localSurfaceCentreGenericSurfaceSchemeIso
#print axioms localSurfaceCentreGenericSurfaceSchemeIso_fac
#print axioms localSurfaceCentreGenericBaseSchemeIso
#print axioms localSurfaceCentreGenericBaseSchemeIso_fac
#print axioms localSurfaceCentreGenericFibreSchemeIso
#print axioms localSurfaceCentreGenericFibreSchemeIso_fac
#print axioms localSurfaceGenericBaseHom_comp
#print axioms localSurfaceGenericToBaseOpen_fac
#print axioms localSurfaceCentreGenericFibreSchemeIso_overBase

end Beal.General