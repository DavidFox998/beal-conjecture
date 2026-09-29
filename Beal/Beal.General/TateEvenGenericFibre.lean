import Beal.«Beal.General».TateEvenCoordinateCharts

/-!
The generic comparison for the Rees blow-up. In this project
`ℤ_[2]` denotes the 2-adic integers; its generic field is `ℚ_[2]`.
The algebraic chart comparison below works for any commutative
surface ring, without requiring the chosen denominator to be regular.
-/

namespace Beal.General

open CategoryTheory AlgebraicGeometry

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

#print axioms centreReesIdeal_localized_eq_top
#print axioms centreReesGenericChartEquiv
#print axioms localSurfaceCentre_generic_eq_top
#print axioms localSurfaceCentreTwoGenericRingEquiv
#print axioms localSurfaceCentre_genericScalarOpen_le_two
#print axioms localSurfaceCentreTwoGenericSpecIso

end Beal.General