import Beal.«Beal.General».TateEvenGenericFibre

/-!
# Generic fibre of the actual even-branch blow-up

Let `R_Z` be the translated surface ring and `I = (2,X,Y)` its
centre. The pullback of the Rees `Proj` along the base open `D(2)`
is isomorphic to `Spec (R_Z[1/2])` as a scheme over `D(2)`.
These short statements package the previously checked construction
in `TateEvenGenericFibre`; they do not identify the special fibre
or establish minimal regularity.
-/

namespace Beal.General

open CategoryTheory AlgebraicGeometry

/-- The centre of the actual translated surface becomes the unit
ideal when the base scalar `2` is inverted. -/
theorem evenBranchCentre_generic_eq_top
    (W : WeierstrassCurve ℤ_[2]) (x y : ℤ_[2]) :
    let q : MvPolynomial (Fin 2) ℤ_[2] →+*
        localSurfaceCoordinateRing W x y :=
      Ideal.Quotient.mk (Ideal.span {localSurfaceEquation W x y})
    Ideal.map (algebraMap (localSurfaceCoordinateRing W x y)
      (Localization.Away (q (MvPolynomial.C (2 : ℤ_[2])))))
      (localSurfaceClosedPoint W x y) = ⊤ :=
  localSurfaceCentre_generic_eq_top W x y

/-- The actual Rees blow-up over `D(2)` is the localized
translated surface; this is a scheme isomorphism, not merely a
pointwise or chartwise equivalence. -/
noncomputable def evenBranchBlowupGenericFibreIso
    (W : WeierstrassCurve ℤ_[2]) (x y : ℤ_[2]) :
    let q : MvPolynomial (Fin 2) ℤ_[2] →+*
        localSurfaceCoordinateRing W x y :=
      Ideal.Quotient.mk (Ideal.span {localSurfaceEquation W x y})
    Limits.pullback (localSurfaceCentreReesToBase W x y)
      (Scheme.Opens.ι (X := Spec (CommRingCat.of ℤ_[2]))
        (PrimeSpectrum.basicOpen (2 : ℤ_[2]))) ≅
      Spec (CommRingCat.of
        (Localization.Away (q (MvPolynomial.C (2 : ℤ_[2]))))) :=
  localSurfaceCentreGenericFibreSchemeIso W x y

/-- The generic-fibre isomorphism respects the structure maps
to the generic open `D(2)` of the 2-adic base. -/
theorem evenBranchBlowupGenericFibreIso_overBase
    (W : WeierstrassCurve ℤ_[2]) (x y : ℤ_[2]) :
    let U : (Spec (CommRingCat.of ℤ_[2])).Opens :=
      PrimeSpectrum.basicOpen (2 : ℤ_[2])
    (evenBranchBlowupGenericFibreIso W x y).hom ≫
        localSurfaceGenericToBaseOpen W x y =
      Limits.pullback.snd (localSurfaceCentreReesToBase W x y) U.ι :=
  localSurfaceCentreGenericFibreSchemeIso_overBase W x y

#print axioms evenBranchCentre_generic_eq_top
#print axioms evenBranchBlowupGenericFibreIso
#print axioms evenBranchBlowupGenericFibreIso_overBase

end Beal.General