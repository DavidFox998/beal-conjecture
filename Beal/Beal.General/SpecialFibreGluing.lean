import Beal.«Beal.General».SpecialFibrePolynomialCover

/-!
The three polynomial spectra form an open cover of the reduced Rees
`Proj`. Six `Spec.map` compatibilities identify their restrictions with
the actual quotient-Rees product restrictions. The cover's abstract
pullback overlaps supply the cocycle and its canonical global gluing.
-/

namespace Beal.General

open AlgebraicGeometry CategoryTheory

set_option synthInstance.maxHeartbeats 200000

/-- An equality of ring maps gives an equality of the corresponding
contravariant affine-scheme maps. -/
theorem specMap_of_ringHom_eq
    {A B : Type} [CommRing A] [CommRing B]
    {f g : A →+* B} (h : f = g) :
    Spec.map (CommRingCat.ofHom f) =
      Spec.map (CommRingCat.ofHom g) :=
  congrArg (fun φ => Spec.map (CommRingCat.ofHom φ)) h

/-- Display a three-step ring restriction square as a square of
separately composed `Spec.map` morphisms. -/
theorem specMap_of_ringHom_triple
    {P S T A B : Type}
    [CommRing P] [CommRing S] [CommRing T] [CommRing A] [CommRing B]
    {c : P →+* S} {f : S →+* A} {g : A →+* B}
    {h : S →+* T} {k : T →+* B}
    (sq : (g.comp f).comp c = (k.comp h).comp c) :
    Spec.map (CommRingCat.ofHom g) ≫
        Spec.map (CommRingCat.ofHom f) ≫
        Spec.map (CommRingCat.ofHom c) =
      Spec.map (CommRingCat.ofHom k) ≫
        Spec.map (CommRingCat.ofHom h) ≫
        Spec.map (CommRingCat.ofHom c) := by
  calc
    _ = Spec.map (CommRingCat.ofHom ((g.comp f).comp c)) := by
      rw [← Spec.map_comp, ← Spec.map_comp]
      rfl
    _ = Spec.map (CommRingCat.ofHom ((k.comp h).comp c)) :=
      specMap_of_ringHom_eq sq
    _ = _ := by
      rw [← Spec.map_comp, ← Spec.map_comp]
      rfl

/-- The `2t → Xt` polynomial-source square on schemes. -/
noncomputable abbrev spec_compat_2t_Xt_left
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
  letI : GradedAlgebra (homogeneousQuotientComponent 𝒜 I) :=
    homogeneousQuotientGrading 𝒜 I
      (localSurfaceCentreReesSpecialIdeal_isHomogeneous W x y)
  exact specMap_of_ringHom_triple
    (compatPolynomial_2t_Xt W x y a b c ha hF hX hY)

/-- The `Xt → 2t` polynomial-source square on schemes. -/
noncomputable abbrev spec_compat_Xt_2t_right
    (W : WeierstrassCurve ℤ_[2]) (x y : ℤ_[2]) := by
  letI : GradedAlgebra
      (centreReesComponent (localSurfaceClosedPoint W x y)) :=
    centreReesGrading (localSurfaceClosedPoint W x y)
  let 𝒜 := centreReesComponent (localSurfaceClosedPoint W x y)
  let I := localSurfaceCentreReesSpecialIdeal W x y
  letI : GradedAlgebra (homogeneousQuotientComponent 𝒜 I) :=
    homogeneousQuotientGrading 𝒜 I
      (localSurfaceCentreReesSpecialIdeal_isHomogeneous W x y)
  exact specMap_of_ringHom_triple (compatPolynomial_Xt_2t W x y)

/-- The `2t → Yt` polynomial-source square on schemes. -/
noncomputable abbrev spec_compat_2t_Yt_left
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
  letI : GradedAlgebra (homogeneousQuotientComponent 𝒜 I) :=
    homogeneousQuotientGrading 𝒜 I
      (localSurfaceCentreReesSpecialIdeal_isHomogeneous W x y)
  exact specMap_of_ringHom_triple
    (compatPolynomial_2t_Yt W x y a b c ha hF hX hY)

/-- The `Yt → 2t` polynomial-source square on schemes. -/
noncomputable abbrev spec_compat_Yt_2t_right
    (W : WeierstrassCurve ℤ_[2]) (x y : ℤ_[2]) := by
  letI : GradedAlgebra
      (centreReesComponent (localSurfaceClosedPoint W x y)) :=
    centreReesGrading (localSurfaceClosedPoint W x y)
  let 𝒜 := centreReesComponent (localSurfaceClosedPoint W x y)
  let I := localSurfaceCentreReesSpecialIdeal W x y
  letI : GradedAlgebra (homogeneousQuotientComponent 𝒜 I) :=
    homogeneousQuotientGrading 𝒜 I
      (localSurfaceCentreReesSpecialIdeal_isHomogeneous W x y)
  exact specMap_of_ringHom_triple (compatPolynomial_Yt_2t W x y)

/-- The `Xt → Yt` polynomial-source square on schemes. -/
noncomputable abbrev spec_compat_Xt_Yt_left
    (W : WeierstrassCurve ℤ_[2]) (x y : ℤ_[2]) := by
  letI : GradedAlgebra
      (centreReesComponent (localSurfaceClosedPoint W x y)) :=
    centreReesGrading (localSurfaceClosedPoint W x y)
  let 𝒜 := centreReesComponent (localSurfaceClosedPoint W x y)
  let I := localSurfaceCentreReesSpecialIdeal W x y
  letI : GradedAlgebra (homogeneousQuotientComponent 𝒜 I) :=
    homogeneousQuotientGrading 𝒜 I
      (localSurfaceCentreReesSpecialIdeal_isHomogeneous W x y)
  exact specMap_of_ringHom_triple (compatPolynomial_Xt_Yt W x y)

/-- The `Yt → Xt` polynomial-source square on schemes. -/
noncomputable abbrev spec_compat_Yt_Xt_right
    (W : WeierstrassCurve ℤ_[2]) (x y : ℤ_[2]) := by
  letI : GradedAlgebra
      (centreReesComponent (localSurfaceClosedPoint W x y)) :=
    centreReesGrading (localSurfaceClosedPoint W x y)
  let 𝒜 := centreReesComponent (localSurfaceClosedPoint W x y)
  let I := localSurfaceCentreReesSpecialIdeal W x y
  letI : GradedAlgebra (homogeneousQuotientComponent 𝒜 I) :=
    homogeneousQuotientGrading 𝒜 I
      (localSurfaceCentreReesSpecialIdeal_isHomogeneous W x y)
  exact specMap_of_ringHom_triple (compatPolynomial_Yt_Xt W x y)

/-- The triple cocycle of the three polynomial-spectrum opens,
with overlaps kept as pullbacks over the quotient `Proj`. -/
noncomputable abbrev specialFibreAbstractTripleCocycle
    (W : WeierstrassCurve ℤ_[2]) (x y a b c : ℤ_[2])
    (ha : PadicInt.toZMod W.a₁ = 1)
    (hF : localWeierstrassEquation W x y = 4 * a)
    (hX : W.a₁ * y - (3 * x ^ 2 + 2 * W.a₂ * x + W.a₄) = 2 * b)
    (hY : 2 * y + W.a₁ * x + W.a₃ = 2 * c)
    (i j k : Fin 3) :=
  (specialFibrePolynomialOpenCover W x y a b c ha hF hX hY).gluedCover.cocycle i j k

/-- The global isomorphism from the reduced Rees `Proj` to the
gluing of its three explicit polynomial-chart spectra. -/
noncomputable def specialFibreProjPolynomialGlueIso
    (W : WeierstrassCurve ℤ_[2]) (x y a b c : ℤ_[2])
    (ha : PadicInt.toZMod W.a₁ = 1)
    (hF : localWeierstrassEquation W x y = 4 * a)
    (hX : W.a₁ * y - (3 * x ^ 2 + 2 * W.a₂ * x + W.a₄) = 2 * b)
    (hY : 2 * y + W.a₁ * x + W.a₃ = 2 * c) := by
  let C := specialFibrePolynomialOpenCover W x y a b c ha hF hX hY
  exact (asIso C.fromGlued).symm

#print axioms spec_compat_2t_Xt_left
#print axioms spec_compat_Xt_2t_right
#print axioms spec_compat_2t_Yt_left
#print axioms spec_compat_Yt_2t_right
#print axioms spec_compat_Xt_Yt_left
#print axioms spec_compat_Yt_Xt_right
#print axioms specialFibreAbstractTripleCocycle
#print axioms specialFibreProjPolynomialGlueIso

end Beal.General