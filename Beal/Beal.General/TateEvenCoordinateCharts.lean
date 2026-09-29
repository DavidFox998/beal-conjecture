import Beal.«Beal.General».TateEvenBranch

/-!
Polynomial ratio coordinates on the `Xt` and `Yt` opens of the
surface-centre Rees `Proj`. The quotient relations must be checked
against the surface ring, rather than inferred from the two linear
relations alone.
-/

namespace Beal.General

set_option maxHeartbeats 1000000
open CategoryTheory AlgebraicGeometry

/-- A degree-zero Rees fraction is the corresponding scalar. -/
theorem centreReesNormalizedFraction_scalar
    {R : Type*} [CommRing R] (I : Ideal R)
    (f : R) (hf : f ∈ I) (r : R) :
    letI : GradedAlgebra (centreReesComponent I) := centreReesGrading I
    centreReesNormalizedFraction I f hf 0 r (by simp) =
      homogeneousScalarAwayHom (centreReesComponent I)
        (centreReesDegreeOne I f hf) r := by
  letI : GradedAlgebra (centreReesComponent I) := centreReesGrading I
  let g := centreReesDegreeOne I f hf
  apply HomogeneousLocalization.val_injective (Submonoid.powers g)
  change (centreReesNormalizedFraction I f hf 0 r (by simp)).val =
    (homogeneousScalarAway (centreReesComponent I) g r).val
  rw [homogeneousScalarAway_val]
  change Localization.mk (centreReesMonomial I 0 ⟨r, by simp⟩)
      ⟨g ^ 0, (Submonoid.mem_powers_iff (g ^ 0) g).mpr ⟨0, rfl⟩⟩ =
    algebraMap (reesAlgebra I) (Localization.Away g)
      (algebraMap R (reesAlgebra I) r)
  simp only [pow_zero]
  change Localization.mk (centreReesMonomial I 0 ⟨r, by simp⟩)
    (1 : Submonoid.powers g) = _
  rw [Localization.mk_one_eq_algebraMap]
  congr 1

/-- Ratios of three chosen generators against a chosen degree-one
denominator give an explicit polynomial evaluation map. -/
noncomputable def centreReesRatioPolynomialMap
    {R : Type*} [CommRing R] (I : Ideal R)
    (s : Fin 3 → R) (hs : ∀ i, s i ∈ I)
    (f : R) (hf : f ∈ I) :
    letI : GradedAlgebra (centreReesComponent I) := centreReesGrading I
    MvPolynomial (Fin 3) R →+*
      HomogeneousLocalization.Away (centreReesComponent I)
        (centreReesDegreeOne I f hf) := by
  letI : GradedAlgebra (centreReesComponent I) := centreReesGrading I
  exact MvPolynomial.eval₂Hom
    (homogeneousScalarAwayHom (centreReesComponent I)
      (centreReesDegreeOne I f hf))
    (fun i => centreReesNormalizedFraction I f hf 1 (s i)
      (by simpa only [pow_one] using hs i))

/-- The three ratios and the original surface scalars generate
the entire homogeneous Rees chart when the three elements span
the centre ideal. -/
theorem centreReesRatioPolynomialMap_surjective
    {R : Type*} [CommRing R] (I : Ideal R)
    (s : Fin 3 → R) (hs : ∀ i, s i ∈ I)
    (hspan : I = Ideal.span (Set.range s))
    (f : R) (hf : f ∈ I) :
    letI : GradedAlgebra (centreReesComponent I) := centreReesGrading I
    Function.Surjective (centreReesRatioPolynomialMap I s hs f hf) := by
  letI : GradedAlgebra (centreReesComponent I) := centreReesGrading I
  let φ := centreReesRatioPolynomialMap I s hs f hf
  have hzero (r : R) :
      centreReesNormalizedFraction I f hf 0 r (by simp) ∈ φ.range := by
    refine ⟨MvPolynomial.C r, ?_⟩
    simpa only [φ, centreReesRatioPolynomialMap,
      MvPolynomial.eval₂Hom_C] using
      (centreReesNormalizedFraction_scalar I f hf r).symm
  have hgen (r : R) (hr : r ∈ Set.range s) (hI : r ∈ I) :
      centreReesNormalizedFraction I f hf 1 r
        (by simpa only [pow_one] using hI) ∈ φ.range := by
    obtain ⟨i, rfl⟩ := hr
    refine ⟨MvPolynomial.X i, ?_⟩
    simp [φ, centreReesRatioPolynomialMap]
  have hone := centreReesNormalizedFraction_range_of_span
    I f hf (Set.range s) hspan φ hzero hgen
  intro z
  obtain ⟨n, r, hr, rfl⟩ :=
    centreReesNormalizedFraction_surjective I f hf z
  exact centreReesNormalizedFraction_range_of_zero_one
    I f hf φ hzero hone n r hr

/-- Forgetting the Rees parameter sends a homogeneous chart
fraction to a fraction of the original surface ring. -/
noncomputable def centreReesAwayToLocalization
    {R : Type*} [CommRing R] (I : Ideal R)
    (f : R) (hf : f ∈ I) :
    letI : GradedAlgebra (centreReesComponent I) := centreReesGrading I
    HomogeneousLocalization.Away (centreReesComponent I)
        (centreReesDegreeOne I f hf) →+*
      Localization.Away f := by
  let A := reesAlgebra I
  let g : A := centreReesDegreeOne I f hf
  letI : GradedAlgebra (centreReesComponent I) := centreReesGrading I
  let e : A →+* R := centreReesEvalOne I
  have he : e g = f := centreReesEvalOne_degreeOne I f hf
  let k : A →+* Localization.Away f :=
    (algebraMap R (Localization.Away f)).comp e
  have hk : ∀ s : Submonoid.powers g, IsUnit (k s) := by
    intro s
    obtain ⟨n, hn⟩ := (Submonoid.mem_powers_iff s.1 g).mp s.2
    have hu : IsUnit (algebraMap R (Localization.Away f) f) :=
      IsLocalization.map_units (Localization.Away f)
        ⟨f, Submonoid.mem_powers f⟩
    change IsUnit ((algebraMap R (Localization.Away f)) (e s))
    rw [← hn, map_pow, he, map_pow]
    exact hu.pow n
  exact (IsLocalization.lift (S := Localization.Away g) (g := k) hk).comp
    (algebraMap (HomogeneousLocalization.Away (centreReesComponent I) g)
      (Localization.Away g))

/-- The comparison evaluates normalized Rees fractions as
ordinary surface fractions. -/
theorem centreReesAwayToLocalization_normalized
    {R : Type*} [CommRing R] (I : Ideal R)
    (f : R) (hf : f ∈ I) (n : ℕ)
    (r : R) (hr : r ∈ I ^ n) :
    letI : GradedAlgebra (centreReesComponent I) := centreReesGrading I
    centreReesAwayToLocalization I f hf
        (centreReesNormalizedFraction I f hf n r hr) =
      Localization.mk r
        ⟨f ^ n, (Submonoid.mem_powers_iff (f ^ n) f).mpr ⟨n, rfl⟩⟩ := by
  letI : GradedAlgebra (centreReesComponent I) := centreReesGrading I
  let g := centreReesDegreeOne I f hf
  let e := centreReesEvalOne I
  let k : reesAlgebra I →+* Localization.Away f :=
    (algebraMap R (Localization.Away f)).comp e
  have hk : ∀ s : Submonoid.powers g, IsUnit (k s) := by
    intro s
    obtain ⟨m, hm⟩ := (Submonoid.mem_powers_iff s.1 g).mp s.2
    change IsUnit ((algebraMap R (Localization.Away f)) (e s))
    rw [← hm, map_pow, centreReesEvalOne_degreeOne, map_pow]
    exact (IsLocalization.map_units (Localization.Away f)
      ⟨f, Submonoid.mem_powers f⟩).pow m
  change (IsLocalization.lift (S := Localization.Away g) (g := k) hk)
      (Localization.mk (centreReesMonomial I n ⟨r, hr⟩)
        ⟨g ^ n, (Submonoid.mem_powers_iff (g ^ n) g).mpr ⟨n, rfl⟩⟩) = _
  rw [Localization.mk_eq_mk', Localization.mk_eq_mk']
  apply (IsLocalization.lift_mk'_spec
    (S := Localization.Away g) (g := k) hk
    (centreReesMonomial I n ⟨r, hr⟩)
    (IsLocalization.mk' (Localization.Away f) r
      ⟨f ^ n, (Submonoid.mem_powers_iff (f ^ n) f).mpr ⟨n, rfl⟩⟩)
    ⟨g ^ n, (Submonoid.mem_powers_iff (g ^ n) g).mpr ⟨n, rfl⟩⟩).mpr
  change (algebraMap R (Localization.Away f))
      (e (centreReesMonomial I n ⟨r, hr⟩)) =
    (algebraMap R (Localization.Away f)) (e (g ^ n)) *
      IsLocalization.mk' (Localization.Away f) r
        ⟨f ^ n, (Submonoid.mem_powers_iff (f ^ n) f).mpr ⟨n, rfl⟩⟩
  have he : e (centreReesMonomial I n ⟨r, hr⟩) = r := by
    simp [e, centreReesEvalOne, centreReesMonomial, Polynomial.eval_monomial]
  rw [he, map_pow, centreReesEvalOne_degreeOne]
  exact (IsLocalization.mk'_spec' (Localization.Away f) r
    ⟨f ^ n, (Submonoid.mem_powers_iff (f ^ n) f).mpr ⟨n, rfl⟩⟩).symm

/-- A degree-zero Rees fraction is determined by its image in the
surface localization, even if the chosen denominator is a zero
divisor in the original ring. -/
theorem centreReesAwayToLocalization_injective
    {R : Type*} [CommRing R] (I : Ideal R)
    (f : R) (hf : f ∈ I) :
    letI : GradedAlgebra (centreReesComponent I) := centreReesGrading I
    Function.Injective (centreReesAwayToLocalization I f hf) := by
  letI : GradedAlgebra (centreReesComponent I) := centreReesGrading I
  let g := centreReesDegreeOne I f hf
  apply (RingHom.injective_iff_ker_eq_bot
    (centreReesAwayToLocalization I f hf)).mpr
  apply (RingHom.ker_eq_bot_iff_eq_zero
    (centreReesAwayToLocalization I f hf)).mpr
  intro z hz
  obtain ⟨n, r, hr, rfl⟩ :=
    centreReesNormalizedFraction_surjective I f hf z
  rw [centreReesAwayToLocalization_normalized,
    Localization.mk_eq_mk', IsLocalization.mk'_eq_zero_iff] at hz
  obtain ⟨s, hs⟩ := hz
  obtain ⟨k, hk⟩ := (Submonoid.mem_powers_iff s.1 f).mp s.2
  have hrzero : f ^ k * r = 0 := by simpa only [hk] using hs
  apply HomogeneousLocalization.val_injective (Submonoid.powers g)
  rw [HomogeneousLocalization.val_zero]
  change Localization.mk (centreReesMonomial I n ⟨r, hr⟩)
    ⟨g ^ n, (Submonoid.mem_powers_iff (g ^ n) g).mpr ⟨n, rfl⟩⟩ = 0
  rw [Localization.mk_eq_mk', IsLocalization.mk'_eq_zero_iff]
  refine ⟨⟨g ^ k, (Submonoid.mem_powers_iff (g ^ k) g).mpr ⟨k, rfl⟩⟩, ?_⟩
  apply Subtype.ext
  simp only [Subalgebra.coe_mul, Subalgebra.coe_zero]
  change (Polynomial.monomial 1 f) ^ k *
    Polynomial.monomial n r = 0
  rw [Polynomial.monomial_pow, Polynomial.monomial_mul_monomial,
    hrzero]
  simp

/-- The ideal of explicit rational-substitution relations:
`Tᵢ ↦ sᵢ/f` in the localization of the original surface ring.
This is defined without referring to the Rees algebra. -/
noncomputable def centreReesRatioRelations
    {R : Type*} [CommRing R] (s : Fin 3 → R) (f : R) :
    Ideal (MvPolynomial (Fin 3) R) :=
  RingHom.ker (MvPolynomial.eval₂Hom
    (algebraMap R (Localization.Away f))
    (fun i => Localization.mk (s i)
      ⟨f, Submonoid.mem_powers f⟩))

/-- The localization comparison fixes all surface scalars. -/
theorem centreReesAwayToLocalization_scalar
    {R : Type*} [CommRing R] (I : Ideal R)
    (f : R) (hf : f ∈ I) (r : R) :
    letI : GradedAlgebra (centreReesComponent I) := centreReesGrading I
    centreReesAwayToLocalization I f hf
      (homogeneousScalarAwayHom (centreReesComponent I)
        (centreReesDegreeOne I f hf) r) =
      algebraMap R (Localization.Away f) r := by
  letI : GradedAlgebra (centreReesComponent I) := centreReesGrading I
  rw [← centreReesNormalizedFraction_scalar I f hf r,
    centreReesAwayToLocalization_normalized]
  simpa only [pow_zero] using
    (Localization.mk_one_eq_algebraMap r :
      Localization.mk r (1 : Submonoid.powers f) =
        algebraMap R (Localization.Away f) r)

/-- Evaluation of the Rees ratios in the surface localization is
the ordinary polynomial substitution `Tᵢ ↦ sᵢ/f`. -/
theorem centreReesRatioPolynomialMap_toLocalization
    {R : Type*} [CommRing R] (I : Ideal R)
    (s : Fin 3 → R) (hs : ∀ i, s i ∈ I)
    (f : R) (hf : f ∈ I) :
    letI : GradedAlgebra (centreReesComponent I) := centreReesGrading I
    (centreReesAwayToLocalization I f hf).comp
        (centreReesRatioPolynomialMap I s hs f hf) =
      MvPolynomial.eval₂Hom
        (algebraMap R (Localization.Away f))
        (fun i => Localization.mk (s i)
          ⟨f, Submonoid.mem_powers f⟩) := by
  letI : GradedAlgebra (centreReesComponent I) := centreReesGrading I
  apply MvPolynomial.ringHom_ext
  · intro r
    simpa only [RingHom.comp_apply, centreReesRatioPolynomialMap,
      MvPolynomial.eval₂Hom_C] using
      centreReesAwayToLocalization_scalar I f hf r
  · intro i
    simpa only [RingHom.comp_apply, centreReesRatioPolynomialMap,
      MvPolynomial.eval₂Hom_X', pow_one] using
      centreReesAwayToLocalization_normalized
        I f hf 1 (s i) (by simpa only [pow_one] using hs i)

/-- The Rees chart has exactly the rational-substitution relations
in the original surface localization, rather than merely the two
obvious linear graph relations. -/
theorem centreReesRatioPolynomialMap_kernel
    {R : Type*} [CommRing R] (I : Ideal R)
    (s : Fin 3 → R) (hs : ∀ i, s i ∈ I)
    (f : R) (hf : f ∈ I) :
    letI : GradedAlgebra (centreReesComponent I) := centreReesGrading I
    RingHom.ker (centreReesRatioPolynomialMap I s hs f hf) =
      centreReesRatioRelations s f := by
  letI : GradedAlgebra (centreReesComponent I) := centreReesGrading I
  ext p
  change centreReesRatioPolynomialMap I s hs f hf p = 0 ↔
    (MvPolynomial.eval₂Hom
      (algebraMap R (Localization.Away f))
      (fun i => Localization.mk (s i)
        ⟨f, Submonoid.mem_powers f⟩)) p = 0
  rw [← centreReesRatioPolynomialMap_toLocalization I s hs f hf]
  simp only [RingHom.comp_apply]
  have hinj :
      centreReesAwayToLocalization I f hf
          (centreReesRatioPolynomialMap I s hs f hf p) =
        centreReesAwayToLocalization I f hf 0 ↔
      centreReesRatioPolynomialMap I s hs f hf p = 0 :=
    (centreReesAwayToLocalization_injective I f hf).eq_iff
  simpa only [map_zero] using hinj.symm

/-- The degree-zero Rees chart is explicitly a quotient of a
polynomial ring over the original surface coordinate ring by the
rational-substitution ideal. -/
noncomputable def centreReesRatioQuotientEquiv
    {R : Type*} [CommRing R] (I : Ideal R)
    (s : Fin 3 → R) (hs : ∀ i, s i ∈ I)
    (hspan : I = Ideal.span (Set.range s))
    (f : R) (hf : f ∈ I) :
    letI : GradedAlgebra (centreReesComponent I) := centreReesGrading I
    (MvPolynomial (Fin 3) R ⧸ centreReesRatioRelations s f) ≃+*
      HomogeneousLocalization.Away (centreReesComponent I)
        (centreReesDegreeOne I f hf) := by
  letI : GradedAlgebra (centreReesComponent I) := centreReesGrading I
  exact (Ideal.quotEquivOfEq
      (centreReesRatioPolynomialMap_kernel I s hs f hf).symm).trans
    (RingHom.quotientKerEquivOfSurjective
      (centreReesRatioPolynomialMap_surjective I s hs hspan f hf))

/-- The quotient equivalence sends each polynomial to its actual
ratio evaluation in the homogeneous Rees chart. -/
theorem centreReesRatioQuotientEquiv_mk
    {R : Type*} [CommRing R] (I : Ideal R)
    (s : Fin 3 → R) (hs : ∀ i, s i ∈ I)
    (hspan : I = Ideal.span (Set.range s))
    (f : R) (hf : f ∈ I) (p : MvPolynomial (Fin 3) R) :
    letI : GradedAlgebra (centreReesComponent I) := centreReesGrading I
    centreReesRatioQuotientEquiv I s hs hspan f hf
      (Ideal.Quotient.mk (centreReesRatioRelations s f) p) =
        centreReesRatioPolynomialMap I s hs f hf p := by
  letI : GradedAlgebra (centreReesComponent I) := centreReesGrading I
  simp only [centreReesRatioQuotientEquiv, RingEquiv.trans_apply,
    Ideal.quotEquivOfEq_mk, RingHom.quotientKerEquivOfSurjective,
    RingHom.quotientKerEquivOfRightInverse.apply, RingHom.kerLift_mk]

/-- The quotient's scalar coordinates are exactly the original
surface scalars in the Rees homogeneous localization. -/
theorem centreReesRatioQuotientEquiv_scalar
    {R : Type*} [CommRing R] (I : Ideal R)
    (s : Fin 3 → R) (hs : ∀ i, s i ∈ I)
    (hspan : I = Ideal.span (Set.range s))
    (f : R) (hf : f ∈ I) (r : R) :
    letI : GradedAlgebra (centreReesComponent I) := centreReesGrading I
    centreReesRatioQuotientEquiv I s hs hspan f hf
      (Ideal.Quotient.mk (centreReesRatioRelations s f)
        (MvPolynomial.C r)) =
      homogeneousScalarAwayHom (centreReesComponent I)
        (centreReesDegreeOne I f hf) r := by
  letI : GradedAlgebra (centreReesComponent I) := centreReesGrading I
  rw [centreReesRatioQuotientEquiv_mk]
  simp [centreReesRatioPolynomialMap]

/-- Each graph equation holds in the exact quotient ideal. No
claim is made here that the unsaturated graph equations generate
all its relations. -/
theorem centreReesRatioRelations_graph
    {R : Type*} [CommRing R] (s : Fin 3 → R) (f : R) (j : Fin 3) :
    MvPolynomial.C f * MvPolynomial.X j - MvPolynomial.C (s j) ∈
      centreReesRatioRelations s f := by
  change (MvPolynomial.eval₂Hom
    (algebraMap R (Localization.Away f))
    (fun i => Localization.mk (s i)
      ⟨f, Submonoid.mem_powers f⟩))
    (MvPolynomial.C f * MvPolynomial.X j - MvPolynomial.C (s j)) = 0
  simp only [map_sub, map_mul, MvPolynomial.eval₂Hom_C,
    MvPolynomial.eval₂Hom_X']
  apply sub_eq_zero.mpr
  rw [Localization.mk_eq_mk']
  exact IsLocalization.mk'_spec' (Localization.Away f) (s j)
    ⟨f, Submonoid.mem_powers f⟩

/-- The three centre generators in the translated surface ring. -/
noncomputable def localSurfaceCentreScalars
    (W : WeierstrassCurve ℤ_[2]) (x y : ℤ_[2]) :
    Fin 3 → localSurfaceCoordinateRing W x y :=
  let q : MvPolynomial (Fin 2) ℤ_[2] →+*
      localSurfaceCoordinateRing W x y :=
    Ideal.Quotient.mk (Ideal.span {localSurfaceEquation W x y})
  Fin.cases (q (MvPolynomial.C (2 : ℤ_[2])))
    (fun i : Fin 2 => q (MvPolynomial.X i))

theorem localSurfaceCentreScalars_span
    (W : WeierstrassCurve ℤ_[2]) (x y : ℤ_[2]) :
    localSurfaceClosedPoint W x y =
      Ideal.span (Set.range (localSurfaceCentreScalars W x y)) := by
  let q : MvPolynomial (Fin 2) ℤ_[2] →+*
      localSurfaceCoordinateRing W x y :=
    Ideal.Quotient.mk (Ideal.span {localSurfaceEquation W x y})
  rw [localSurfaceClosedPoint_span_generators W x y]
  congr 1
  ext r
  constructor
  · intro hr
    simp only [Set.mem_insert_iff, Set.mem_singleton_iff] at hr
    rcases hr with h | h | h
    · exact ⟨0, by simpa [localSurfaceCentreScalars, q] using h.symm⟩
    · exact ⟨1, by simpa [localSurfaceCentreScalars, q] using h.symm⟩
    · exact ⟨2, by simpa [localSurfaceCentreScalars, q] using h.symm⟩
  · rintro ⟨i, rfl⟩
    fin_cases i
    · exact Or.inl rfl
    · exact Or.inr (Or.inl rfl)
    · exact Or.inr (Or.inr rfl)

/-- Relations for either coordinate chart are evaluated by
substituting `(2,X,Y)/Xᵢ` in the localized surface ring. -/
noncomputable def localSurfaceCentreCoordinateRelations
    (W : WeierstrassCurve ℤ_[2]) (x y : ℤ_[2]) (i : Fin 2) :
    Ideal (MvPolynomial (Fin 3) (localSurfaceCoordinateRing W x y)) :=
  let q : MvPolynomial (Fin 2) ℤ_[2] →+*
      localSurfaceCoordinateRing W x y :=
    Ideal.Quotient.mk (Ideal.span {localSurfaceEquation W x y})
  centreReesRatioRelations (localSurfaceCentreScalars W x y)
    (q (MvPolynomial.X i))

/-- Polynomial-quotient presentations of `D₊(Xt)` and `D₊(Yt)`.
The relation ideal is computed in the original surface localization
and does not refer to the Rees chart. -/
noncomputable def localSurfaceCentreCoordinateQuotientEquiv
    (W : WeierstrassCurve ℤ_[2]) (x y : ℤ_[2]) (i : Fin 2) :
    letI : GradedAlgebra
        (centreReesComponent (localSurfaceClosedPoint W x y)) :=
      centreReesGrading (localSurfaceClosedPoint W x y)
    (MvPolynomial (Fin 3) (localSurfaceCoordinateRing W x y) ⧸
        localSurfaceCentreCoordinateRelations W x y i) ≃+*
      HomogeneousLocalization.Away
        (centreReesComponent (localSurfaceClosedPoint W x y))
        (localSurfaceCentreReesCoordinate W x y i) := by
  let I := localSurfaceClosedPoint W x y
  let s := localSurfaceCentreScalars W x y
  letI : GradedAlgebra (centreReesComponent I) := centreReesGrading I
  have hspan : I = Ideal.span (Set.range s) :=
    localSurfaceCentreScalars_span W x y
  have hs (j : Fin 3) : s j ∈ I := by
    rw [hspan]
    exact Ideal.subset_span ⟨j, rfl⟩
  let q : MvPolynomial (Fin 2) ℤ_[2] →+*
      localSurfaceCoordinateRing W x y :=
    Ideal.Quotient.mk (Ideal.span {localSurfaceEquation W x y})
  exact centreReesRatioQuotientEquiv I s hs hspan
    (q (MvPolynomial.X i)) (by
      simpa [s, localSurfaceCentreScalars, q] using hs i.succ)

/-- The original surface scalar map into either polynomial quotient. -/
noncomputable def localSurfaceCentreCoordinateToSurfaceRing
    (W : WeierstrassCurve ℤ_[2]) (x y : ℤ_[2]) (i : Fin 2) :
    localSurfaceCoordinateRing W x y →+*
      (MvPolynomial (Fin 3) (localSurfaceCoordinateRing W x y) ⧸
        localSurfaceCentreCoordinateRelations W x y i) :=
  (Ideal.Quotient.mk (localSurfaceCentreCoordinateRelations W x y i)).comp
    MvPolynomial.C

/-- The coordinate quotient carries the restriction of the
surface scalar map used by the existing three-chart cover. -/
theorem localSurfaceCentreCoordinateQuotientEquiv_surface
    (W : WeierstrassCurve ℤ_[2]) (x y : ℤ_[2]) (i : Fin 2) :
    letI : GradedAlgebra
        (centreReesComponent (localSurfaceClosedPoint W x y)) :=
      centreReesGrading (localSurfaceClosedPoint W x y)
    (localSurfaceCentreCoordinateQuotientEquiv W x y i).toRingHom.comp
        (localSurfaceCentreCoordinateToSurfaceRing W x y i) =
      homogeneousScalarAwayHom
        (centreReesComponent (localSurfaceClosedPoint W x y))
        (localSurfaceCentreReesCoordinate W x y i) := by
  letI : GradedAlgebra
      (centreReesComponent (localSurfaceClosedPoint W x y)) :=
    centreReesGrading (localSurfaceClosedPoint W x y)
  apply RingHom.ext
  intro r
  change (localSurfaceCentreCoordinateQuotientEquiv W x y i)
      (Ideal.Quotient.mk (localSurfaceCentreCoordinateRelations W x y i)
        (MvPolynomial.C r)) =
    homogeneousScalarAwayHom
      (centreReesComponent (localSurfaceClosedPoint W x y))
      (localSurfaceCentreReesCoordinate W x y i) r
  exact centreReesRatioQuotientEquiv_scalar
    (localSurfaceClosedPoint W x y)
    (localSurfaceCentreScalars W x y)
    (fun j => by
      rw [localSurfaceCentreScalars_span W x y]
      exact Ideal.subset_span ⟨j, rfl⟩)
    (localSurfaceCentreScalars_span W x y)
    ((Ideal.Quotient.mk (Ideal.span {localSurfaceEquation W x y}))
      (MvPolynomial.X i))
    (by
      have hs := localSurfaceCentreScalars_span W x y
      rw [hs]
      exact Ideal.subset_span ⟨i.succ, rfl⟩)
    r

/-- The coordinate basic open `D₊(Xᵢt)` is the spectrum of its
explicit rational-substitution polynomial quotient. -/
noncomputable def localSurfaceCentreCoordinateBasicSchemeIso
    (W : WeierstrassCurve ℤ_[2]) (x y : ℤ_[2]) (i : Fin 2) :
    letI : GradedAlgebra
        (centreReesComponent (localSurfaceClosedPoint W x y)) :=
      centreReesGrading (localSurfaceClosedPoint W x y)
    Scheme.Opens.toScheme (X := localSurfaceCentreReesProj W x y)
        (ProjectiveSpectrum.basicOpen
          (centreReesComponent (localSurfaceClosedPoint W x y))
          (localSurfaceCentreReesCoordinate W x y i)) ≅
      Spec (CommRingCat.of
        (MvPolynomial (Fin 3) (localSurfaceCoordinateRing W x y) ⧸
          localSurfaceCentreCoordinateRelations W x y i)) := by
  letI : GradedAlgebra
      (centreReesComponent (localSurfaceClosedPoint W x y)) :=
    centreReesGrading (localSurfaceClosedPoint W x y)
  let e := localSurfaceCentreCoordinateQuotientEquiv W x y i
  exact (localSurfaceCentreGeneratorBasicSchemeIso W x y i.succ).trans
    (Scheme.Spec.mapIso e.toCommRingCatIso.op)

/-- Under the polynomial-quotient presentation, each coordinate
chart's map to the translated surface is still the restriction of
the global Rees `Proj` structure map. -/
theorem localSurfaceCentreCoordinateBasicSchemeIso_surface
    (W : WeierstrassCurve ℤ_[2]) (x y : ℤ_[2]) (i : Fin 2) :
    letI : GradedAlgebra
        (centreReesComponent (localSurfaceClosedPoint W x y)) :=
      centreReesGrading (localSurfaceClosedPoint W x y)
    let U : (localSurfaceCentreReesProj W x y).Opens :=
      ProjectiveSpectrum.basicOpen
        (centreReesComponent (localSurfaceClosedPoint W x y))
        (localSurfaceCentreReesCoordinate W x y i)
    U.ι ≫ localSurfaceCentreReesToSurface W x y =
      (localSurfaceCentreCoordinateBasicSchemeIso W x y i).hom ≫
        Spec.map (CommRingCat.ofHom
          (localSurfaceCentreCoordinateToSurfaceRing W x y i)) := by
  letI : GradedAlgebra
      (centreReesComponent (localSurfaceClosedPoint W x y)) :=
    centreReesGrading (localSurfaceClosedPoint W x y)
  let e := localSurfaceCentreCoordinateQuotientEquiv W x y i
  let H := homogeneousScalarAwayHom
    (centreReesComponent (localSurfaceClosedPoint W x y))
    (localSurfaceCentreReesCoordinate W x y i)
  let g := localSurfaceCentreCoordinateToSurfaceRing W x y i
  have hring : H = e.toRingHom.comp g :=
    (localSurfaceCentreCoordinateQuotientEquiv_surface W x y i).symm
  have hspec :
      Spec.map (CommRingCat.ofHom H) =
        (Scheme.Spec.mapIso e.toCommRingCatIso.op).hom ≫
          Spec.map (CommRingCat.ofHom g) := by
    change Spec.map (CommRingCat.ofHom H) =
      Spec.map (CommRingCat.ofHom e.toRingHom) ≫
        Spec.map (CommRingCat.ofHom g)
    rw [← Spec.map_comp]
    exact congrArg (fun h => Spec.map (CommRingCat.ofHom h)) hring
  calc
    _ = (localSurfaceCentreGeneratorBasicSchemeIso W x y i.succ).hom ≫
        Spec.map (CommRingCat.ofHom H) :=
      localSurfaceCentreGeneratorBasicSchemeIso_baseMap W x y i.succ
    _ = (localSurfaceCentreCoordinateBasicSchemeIso W x y i).hom ≫
        Spec.map (CommRingCat.ofHom g) := by
      change (localSurfaceCentreGeneratorBasicSchemeIso W x y i.succ).hom ≫
          Spec.map (CommRingCat.ofHom H) =
        ((localSurfaceCentreGeneratorBasicSchemeIso W x y i.succ).trans
          (Scheme.Spec.mapIso e.toCommRingCatIso.op)).hom ≫
          Spec.map (CommRingCat.ofHom g)
      rw [Iso.trans_hom, Category.assoc, ← hspec]

#print axioms centreReesNormalizedFraction_scalar
#print axioms centreReesRatioPolynomialMap_surjective
#print axioms centreReesAwayToLocalization_normalized
#print axioms centreReesAwayToLocalization_injective
#print axioms centreReesAwayToLocalization_scalar
#print axioms centreReesRatioPolynomialMap_kernel
#print axioms centreReesRatioQuotientEquiv
#print axioms centreReesRatioQuotientEquiv_mk
#print axioms centreReesRatioQuotientEquiv_scalar
#print axioms centreReesRatioRelations_graph
#print axioms localSurfaceCentreCoordinateQuotientEquiv
#print axioms localSurfaceCentreCoordinateQuotientEquiv_surface
#print axioms localSurfaceCentreCoordinateBasicSchemeIso
#print axioms localSurfaceCentreCoordinateBasicSchemeIso_surface

end Beal.General