import Beal.«Beal.General».CompatPolynomialRestrictions

/-!
An open cover of the reduced Rees `Proj` with the three polynomial
chart spectra as its literal objects. Its overlaps remain abstract
pullbacks of the chart inclusions.
-/

namespace Beal.General

open AlgebraicGeometry CategoryTheory

set_option synthInstance.maxHeartbeats 200000

/-- Convert a polynomial ring equivalence into a basic-open isomorphism. -/
noncomputable def polynomialBasicOpenIso
    {R A P : Type} [CommRing R] [CommRing A] [CommRing P]
    [Algebra R A] (ℬ : ℕ → Submodule R A) [GradedAlgebra ℬ]
    (f : A) (d : ℕ) (hf : f ∈ ℬ d) (hd : 0 < d)
    (e : P ≃+* HomogeneousLocalization.Away ℬ f) :
    let U : (AlgebraicGeometry.«Proj» ℬ).Opens :=
      ProjectiveSpectrum.basicOpen ℬ f
    Spec (CommRingCat.of P) ≅ U.toScheme := by
  exact (Scheme.Spec.mapIso e.toCommRingCatIso.op).symm.trans
    (homogeneousProjBasicSchemeIso ℬ f d hf hd).symm

/-- The divided-equation polynomial scheme is the first reduced basic open. -/
noncomputable def specialFibreTwoPolynomialOpenIso
    (W : WeierstrassCurve ℤ_[2]) (x y a b c : ℤ_[2])
    (ha : PadicInt.toZMod W.a₁ = 1)
    (hF : localWeierstrassEquation W x y = 4 * a)
    (hX : W.a₁ * y - (3 * x ^ 2 + 2 * W.a₂ * x + W.a₄) = 2 * b)
    (hY : 2 * y + W.a₁ * x + W.a₃ = 2 * c) := by
  letI : GradedAlgebra
      (centreReesComponent (localSurfaceClosedPoint W x y)) :=
    centreReesGrading (localSurfaceClosedPoint W x y)
  let 𝒜 := centreReesComponent (localSurfaceClosedPoint W x y)
  let I := localSurfaceCentreReesSpecialIdeal W x y
  let ℬ := homogeneousQuotientComponent 𝒜 I
  letI : GradedAlgebra ℬ :=
    homogeneousQuotientGrading 𝒜 I
      (localSurfaceCentreReesSpecialIdeal_isHomogeneous W x y)
  let f := (Ideal.Quotient.mk I) (localSurfaceCentreReesGenerator W x y 0)
  have hf : f ∈ ℬ 1 :=
    Submodule.mem_map.mpr
      ⟨_, localSurfaceCentreReesGenerator_mem_degree_one W x y 0, rfl⟩
  exact polynomialBasicOpenIso
    (R := localSurfaceCoordinateRing W x y)
    (A := localSurfaceCentreRees W x y ⧸ I)
    (P := evenNodeTwoChartMod2Ring W x a b c) ℬ
    f 1 hf (by decide)
    (evenNodeTwoChartMod2Equiv W x y a b c ha hF hX hY)

/-- Each saturated coordinate-polynomial scheme is its reduced basic open. -/
noncomputable def specialFibreCoordinatePolynomialOpenIso
    (W : WeierstrassCurve ℤ_[2]) (x y : ℤ_[2]) (i : Fin 2) := by
  letI : GradedAlgebra
      (centreReesComponent (localSurfaceClosedPoint W x y)) :=
    centreReesGrading (localSurfaceClosedPoint W x y)
  let 𝒜 := centreReesComponent (localSurfaceClosedPoint W x y)
  let I := localSurfaceCentreReesSpecialIdeal W x y
  let ℬ := homogeneousQuotientComponent 𝒜 I
  letI : GradedAlgebra ℬ :=
    homogeneousQuotientGrading 𝒜 I
      (localSurfaceCentreReesSpecialIdeal_isHomogeneous W x y)
  let f := (Ideal.Quotient.mk I)
    (localSurfaceCentreReesGenerator W x y i.succ)
  have hf : f ∈ ℬ 1 :=
    Submodule.mem_map.mpr
      ⟨_, localSurfaceCentreReesGenerator_mem_degree_one W x y i.succ, rfl⟩
  exact polynomialBasicOpenIso
    (R := localSurfaceCoordinateRing W x y)
    (A := localSurfaceCentreRees W x y ⧸ I)
    (P := localSurfaceCentreCoordinateMod2Ring W x y i) ℬ
    f 1 hf (by decide) (localSurfaceCentreCoordinateMod2Equiv W x y i)

/-- The three explicit polynomial-source chart schemes. -/
noncomputable def specialFibrePolynomialObj
    (W : WeierstrassCurve ℤ_[2]) (x y a b c : ℤ_[2])
    (i : Fin 3) : Scheme :=
  if i = 0 then Spec (CommRingCat.of (evenNodeTwoChartMod2Ring W x a b c))
  else if i = 1 then
    Spec (CommRingCat.of (localSurfaceCentreCoordinateMod2Ring W x y 0))
  else Spec (CommRingCat.of (localSurfaceCentreCoordinateMod2Ring W x y 1))

/-- The chosen chartwise identifications with the original basic-open cover. -/
noncomputable def specialFibrePolynomialChartIso
    (W : WeierstrassCurve ℤ_[2]) (x y a b c : ℤ_[2])
    (ha : PadicInt.toZMod W.a₁ = 1)
    (hF : localWeierstrassEquation W x y = 4 * a)
    (hX : W.a₁ * y - (3 * x ^ 2 + 2 * W.a₂ * x + W.a₄) = 2 * b)
    (hY : 2 * y + W.a₁ * x + W.a₃ = 2 * c)
    (i : Fin 3) :
    specialFibrePolynomialObj W x y a b c i ≅
      (localSurfaceCentreReesSpecialProjOpenCover W x y).obj i := by
  cases i using Fin.cases with
  | zero =>
      exact specialFibreTwoPolynomialOpenIso W x y a b c ha hF hX hY
  | succ j =>
      cases j using Fin.cases with
      | zero =>
          exact specialFibreCoordinatePolynomialOpenIso W x y 0
      | succ k =>
          cases k using Fin.cases with
          | zero =>
              exact specialFibreCoordinatePolynomialOpenIso W x y 1
          | succ k => exact Fin.elim0 k

/-- Copy the checked `Proj` cover along the three polynomial-chart
isomorphisms; the gluing objects are now literally polynomial spectra. -/
noncomputable def specialFibrePolynomialOpenCover
    (W : WeierstrassCurve ℤ_[2]) (x y a b c : ℤ_[2])
    (ha : PadicInt.toZMod W.a₁ = 1)
    (hF : localWeierstrassEquation W x y = 4 * a)
    (hX : W.a₁ * y - (3 * x ^ 2 + 2 * W.a₂ * x + W.a₄) = 2 * b)
    (hY : 2 * y + W.a₁ * x + W.a₃ = 2 * c) := by
  let C := localSurfaceCentreReesSpecialProjOpenCover W x y
  let e := specialFibrePolynomialChartIso W x y a b c ha hF hX hY
  exact C.copy (Fin 3) (specialFibrePolynomialObj W x y a b c)
    (fun i => (e i).hom ≫ C.map i) (Equiv.refl (Fin 3))
    e (fun _ => rfl)

#print axioms specialFibrePolynomialOpenCover

end Beal.General