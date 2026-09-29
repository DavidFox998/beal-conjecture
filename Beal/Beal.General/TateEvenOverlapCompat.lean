import Beal.«Beal.General».TateEvenTwoAdicTransport

/-!
The six directed actual 2-adic quotient ring squares for the three
special-fibre Rees generators. The intermediate scalar-quotient
comparison and quotient-ideal transport are proved separately.
Explicit polynomial presentations of product overlaps are not
identified here.
-/

namespace Beal.General

set_option synthInstance.maxHeartbeats 200000
open AlgebraicGeometry CategoryTheory

/-- The already-checked quotient restriction square, specialized to
any ordered pair of the three actual Rees generators. Keeping the
result type inferred avoids expanding dependent quotient rings in a
second statement. -/
noncomputable abbrev localSurfaceCentreReesScalarCompat
    (W : WeierstrassCurve ℤ_[2]) (x y : ℤ_[2])
    (i j : Fin 3) :=
  letI : GradedAlgebra
      (centreReesComponent (localSurfaceClosedPoint W x y)) :=
    centreReesGrading (localSurfaceClosedPoint W x y)
  let q : MvPolynomial (Fin 2) ℤ_[2] →+*
      localSurfaceCoordinateRing W x y :=
    Ideal.Quotient.mk (Ideal.span {localSurfaceEquation W x y})
  homogeneousQuotientChartRestriction_square_any
    (centreReesComponent (localSurfaceClosedPoint W x y))
    (localSurfaceCentreReesSpecialIdeal W x y)
    (localSurfaceCentreReesSpecialIdeal_isHomogeneous W x y)
    (q (MvPolynomial.C 2)) rfl
    (localSurfaceCentreReesGenerator W x y i)
    (localSurfaceCentreReesGenerator W x y j) 1
    (localSurfaceCentreReesGenerator_mem_degree_one W x y i)
    (localSurfaceCentreReesGenerator_mem_degree_one W x y j)

/-- The chosen comparison from actual 2-adic affine quotients to
the matching graded quotient charts commutes with every directed
product-open restriction. -/
noncomputable abbrev localSurfaceCentreReesTwoAdicCompat
    (W : WeierstrassCurve ℤ_[2]) (x y : ℤ_[2])
    (i j : Fin 3) :=
  letI : GradedAlgebra
      (centreReesComponent (localSurfaceClosedPoint W x y)) :=
    centreReesGrading (localSurfaceClosedPoint W x y)
  let q : MvPolynomial (Fin 2) ℤ_[2] →+*
      localSurfaceCoordinateRing W x y :=
    Ideal.Quotient.mk (Ideal.span {localSurfaceEquation W x y})
  homogeneousTwoAdicAwayQuotient_toProduct
    (centreReesComponent (localSurfaceClosedPoint W x y))
    (q.comp MvPolynomial.C)
    (localSurfaceCentreReesSpecialIdeal W x y)
    (localSurfaceCentreReesSpecialIdeal_isHomogeneous W x y)
    (by rfl)
    (localSurfaceCentreReesGenerator W x y i)
    (localSurfaceCentreReesGenerator W x y j) 1
    (localSurfaceCentreReesGenerator_mem_degree_one W x y i)
    (localSurfaceCentreReesGenerator_mem_degree_one W x y j)

/-- The `2t` to `Xt` ring restriction square. -/
noncomputable abbrev compat_2t_Xt_left
    (W : WeierstrassCurve ℤ_[2]) (x y : ℤ_[2]) :=
  localSurfaceCentreReesTwoAdicCompat W x y 0 1

/-- The `Xt` to `2t` ring restriction square. -/
noncomputable abbrev compat_2t_Xt_right
    (W : WeierstrassCurve ℤ_[2]) (x y : ℤ_[2]) :=
  localSurfaceCentreReesTwoAdicCompat W x y 1 0

/-- The `2t` to `Yt` ring restriction square. -/
noncomputable abbrev compat_2t_Yt_left
    (W : WeierstrassCurve ℤ_[2]) (x y : ℤ_[2]) :=
  localSurfaceCentreReesTwoAdicCompat W x y 0 2

/-- The `Yt` to `2t` ring restriction square. -/
noncomputable abbrev compat_2t_Yt_right
    (W : WeierstrassCurve ℤ_[2]) (x y : ℤ_[2]) :=
  localSurfaceCentreReesTwoAdicCompat W x y 2 0

/-- The `Xt` to `Yt` ring restriction square. -/
noncomputable abbrev compat_Xt_Yt_left
    (W : WeierstrassCurve ℤ_[2]) (x y : ℤ_[2]) :=
  localSurfaceCentreReesTwoAdicCompat W x y 1 2

/-- The `Yt` to `Xt` ring restriction square. -/
noncomputable abbrev compat_Xt_Yt_right
    (W : WeierstrassCurve ℤ_[2]) (x y : ℤ_[2]) :=
  localSurfaceCentreReesTwoAdicCompat W x y 2 1

/-- The contravariant affine-scheme square associated with a ring
compatibility. -/
theorem specMap_of_ringHom_square
    {A B C D : Type} [CommRing A] [CommRing B]
    [CommRing C] [CommRing D]
    {u : A →+* B} {v : C →+* D}
    {s : A →+* C} {t : B →+* D}
    (h : t.comp u = v.comp s) :
    Spec.map (CommRingCat.ofHom t) ≫
        Spec.map (CommRingCat.ofHom u) =
      Spec.map (CommRingCat.ofHom v) ≫
        Spec.map (CommRingCat.ofHom s) := by
  rw [← Spec.map_comp, ← Spec.map_comp]
  exact congrArg (fun φ => Spec.map (CommRingCat.ofHom φ)) h

/-- The affine-scheme image of the actual-fibre ring square. -/
noncomputable abbrev localSurfaceCentreReesTwoAdicCompat_spec
    (W : WeierstrassCurve ℤ_[2]) (x y : ℤ_[2])
    (i j : Fin 3) :=
  letI : GradedAlgebra
      (centreReesComponent (localSurfaceClosedPoint W x y)) :=
    centreReesGrading (localSurfaceClosedPoint W x y)
  let 𝒜 := centreReesComponent (localSurfaceClosedPoint W x y)
  let I := localSurfaceCentreReesSpecialIdeal W x y
  letI : GradedAlgebra (homogeneousQuotientComponent 𝒜 I) :=
    homogeneousQuotientGrading 𝒜 I
      (localSurfaceCentreReesSpecialIdeal_isHomogeneous W x y)
  specMap_of_ringHom_square
    (localSurfaceCentreReesTwoAdicCompat W x y i j)

noncomputable abbrev compat_2t_Xt_left_spec
    (W : WeierstrassCurve ℤ_[2]) (x y : ℤ_[2]) :=
  localSurfaceCentreReesTwoAdicCompat_spec W x y 0 1

noncomputable abbrev compat_2t_Xt_right_spec
    (W : WeierstrassCurve ℤ_[2]) (x y : ℤ_[2]) :=
  localSurfaceCentreReesTwoAdicCompat_spec W x y 1 0

noncomputable abbrev compat_2t_Yt_left_spec
    (W : WeierstrassCurve ℤ_[2]) (x y : ℤ_[2]) :=
  localSurfaceCentreReesTwoAdicCompat_spec W x y 0 2

noncomputable abbrev compat_2t_Yt_right_spec
    (W : WeierstrassCurve ℤ_[2]) (x y : ℤ_[2]) :=
  localSurfaceCentreReesTwoAdicCompat_spec W x y 2 0

noncomputable abbrev compat_Xt_Yt_left_spec
    (W : WeierstrassCurve ℤ_[2]) (x y : ℤ_[2]) :=
  localSurfaceCentreReesTwoAdicCompat_spec W x y 1 2

noncomputable abbrev compat_Xt_Yt_right_spec
    (W : WeierstrassCurve ℤ_[2]) (x y : ℤ_[2]) :=
  localSurfaceCentreReesTwoAdicCompat_spec W x y 2 1

#print axioms compat_2t_Xt_left
#print axioms compat_2t_Xt_right
#print axioms compat_2t_Yt_left
#print axioms compat_2t_Yt_right
#print axioms compat_Xt_Yt_left
#print axioms compat_Xt_Yt_right
#print axioms compat_2t_Xt_left_spec
#print axioms compat_2t_Xt_right_spec
#print axioms compat_2t_Yt_left_spec
#print axioms compat_2t_Yt_right_spec
#print axioms compat_Xt_Yt_left_spec
#print axioms compat_Xt_Yt_right_spec

end Beal.General