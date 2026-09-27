import Beal.«Beal.General».YChartAllPrimeParameters

/-!
Comparison of stalks on the quotient projective cubic with the prime
localizations of its two actual affine chart rings.
-/

namespace Beal.General

open AlgebraicGeometry CategoryTheory Opposite

set_option maxHeartbeats 1000000

/-- A point of an affine open restriction has the same stalk as its
image in the ambient locally ringed space, and the explicit
isomorphism to a spectrum identifies it with a prime localization. -/
private theorem openChart_stalk_equiv
    (X : LocallyRingedSpace) (R : Type*) [CommRing R]
    {U : TopCat} {f : U ⟶ X.toTopCat}
    (h : OpenEmbedding f)
    (i : X.restrict h ≅
      Spec.toLocallyRingedSpace.obj (op (CommRingCat.of R)))
    (x : U) :
    ∃ P : Ideal R, ∃ _ : P.IsPrime,
      Nonempty (X.presheaf.stalk (f x) ≃+* Localization.AtPrime P) := by
  let p : PrimeSpectrum.Top R := i.hom.val.base x
  let e₁ := (X.restrictStalkIso h x).symm
  let e₂ := (asIso (i.hom.stalkMap x)).symm
  let e₃ := StructureSheaf.stalkIso R p
  refine ⟨p.asIdeal, inferInstance, ?_⟩
  exact ⟨((e₁.trans e₂).trans e₃).commRingCatIsoToRingEquiv⟩

/-- Stalks in the `Z ≠ 0` projective basic open are prime
localizations of the actual `Z = 1` affine quotient ring. -/
theorem projectiveWeierstrass_Z_open_stalk_equiv
    (W : WeierstrassCurve ℤ_[2]) :
    letI : GradedAlgebra (projectiveWeierstrassQuotientComponent W) :=
      projectiveWeierstrassQuotientGrading W
    let U : (projectiveWeierstrassScheme W).Opens :=
      ProjectiveSpectrum.basicOpen
        (projectiveWeierstrassQuotientComponent W)
        ((Ideal.Quotient.mk (Ideal.span {projectiveWeierstrassCubic W}))
          (MvPolynomial.X (2 : Fin 3)))
    ∀ x : ↥(U : Set (projectiveWeierstrassScheme W)),
      ∃ P : Ideal (projectiveWeierstrassZChartRing W),
        ∃ _ : P.IsPrime,
          Nonempty
            ((projectiveWeierstrassScheme W).presheaf.stalk
              (x : projectiveWeierstrassScheme W) ≃+*
                Localization.AtPrime P) := by
  letI : GradedAlgebra (projectiveWeierstrassQuotientComponent W) :=
    projectiveWeierstrassQuotientGrading W
  intro U x
  let X := (projectiveWeierstrassScheme W).toLocallyRingedSpace
  exact openChart_stalk_equiv X (projectiveWeierstrassZChartRing W)
    U.openEmbedding (projectiveWeierstrassExplicitZChartIso W) x

/-- Stalks in the `Y ≠ 0` projective basic open are prime
localizations of the actual `Y = 1` affine quotient ring. -/
theorem projectiveWeierstrass_Y_open_stalk_equiv
    (W : WeierstrassCurve ℤ_[2]) :
    letI : GradedAlgebra (projectiveWeierstrassQuotientComponent W) :=
      projectiveWeierstrassQuotientGrading W
    let U : (projectiveWeierstrassScheme W).Opens :=
      ProjectiveSpectrum.basicOpen
        (projectiveWeierstrassQuotientComponent W)
        ((Ideal.Quotient.mk (Ideal.span {projectiveWeierstrassCubic W}))
          (MvPolynomial.X (1 : Fin 3)))
    ∀ x : ↥(U : Set (projectiveWeierstrassScheme W)),
      ∃ P : Ideal (projectiveWeierstrassYChartRing W),
        ∃ _ : P.IsPrime,
          Nonempty
            ((projectiveWeierstrassScheme W).presheaf.stalk
              (x : projectiveWeierstrassScheme W) ≃+*
                Localization.AtPrime P) := by
  letI : GradedAlgebra (projectiveWeierstrassQuotientComponent W) :=
    projectiveWeierstrassQuotientGrading W
  intro U x
  let X := (projectiveWeierstrassScheme W).toLocallyRingedSpace
  exact openChart_stalk_equiv X (projectiveWeierstrassYChartRing W)
    U.openEmbedding (projectiveWeierstrassExplicitYChartIso W) x

/-- Every stalk of the actual quotient `Proj` carries the local
Noetherian/dimension/generator certificate in the split
valuation-one nodal case. This does not assert properness or
minimality of the model. -/
theorem valOne_splitNode_projective_allStalk_parameters
    (W : WeierstrassCurve ℤ_[2])
    (hnode : ReducedNodalPoint (W.map PadicInt.toZMod)
      (PadicInt.toZMod W.a₃)
      (PadicInt.toZMod (W.a₃ ^ 2 + W.a₄)))
    (hsplit : 3 * PadicInt.toZMod W.a₃ +
      (W.map PadicInt.toZMod).a₂ = 0)
    (hΔ : W.Δ ≠ 0)
    (hval : Padic.valuation (W.Δ : ℚ_[2]) = 1)
    (x : projectiveWeierstrassScheme W) :
    let L := (projectiveWeierstrassScheme W).presheaf.stalk x
    IsNoetherianRing L ∧
      ((Ring.DimensionLEOne L ∧
        (LocalRing.maximalIdeal L).IsPrincipal) ∨
       (ringKrullDim L = 1 ∧
        (LocalRing.maximalIdeal L).IsPrincipal) ∨
       (ringKrullDim L = 2 ∧
        ∃ a b : L, LocalRing.maximalIdeal L = Ideal.span {a, b})) := by
  letI : GradedAlgebra (projectiveWeierstrassQuotientComponent W) :=
    projectiveWeierstrassQuotientGrading W
  let ℬ := projectiveWeierstrassQuotientComponent W
  let q : MvPolynomial (Fin 3) ℤ_[2] →+* projectiveWeierstrassCoordinateRing W :=
    Ideal.Quotient.mk (Ideal.span {projectiveWeierstrassCubic W})
  let UZ : (projectiveWeierstrassScheme W).Opens :=
    ProjectiveSpectrum.basicOpen ℬ (q (MvPolynomial.X 2))
  let UY : (projectiveWeierstrassScheme W).Opens :=
    ProjectiveSpectrum.basicOpen ℬ (q (MvPolynomial.X 1))
  have hcover : UZ ⊔ UY = ⊤ :=
    projectiveWeierstrassQuotientBasicOpen_Z_sup_Y W
  have hm : x ∈ UZ ∨ x ∈ UY := by
    have h : x ∈ UZ ⊔ UY := by
      rw [hcover]
      trivial
    exact h
  rcases hm with hz | hy
  · obtain ⟨P, hP, ⟨e⟩⟩ :=
      projectiveWeierstrass_Z_open_stalk_equiv W ⟨x, hz⟩
    letI : P.IsPrime := hP
    exact localParameters_of_ringEquiv e
      (valOne_splitNode_ZChart_allPrime_parameters
        W hnode hsplit hΔ hval P)
  · obtain ⟨P, hP, ⟨e⟩⟩ :=
      projectiveWeierstrass_Y_open_stalk_equiv W ⟨x, hy⟩
    letI : P.IsPrime := hP
    exact localParameters_of_ringEquiv e
      (valOne_splitNode_YChart_allPrime_parameters
        W hnode hsplit hΔ hval P)

end Beal.General