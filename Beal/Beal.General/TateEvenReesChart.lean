import Beal.«Beal.General».TateReduction
import Mathlib.RingTheory.ReesAlgebra

/-!
The degree-one elements of the actual Rees algebra of the centre on
the translated surface. Constructing `Proj` and identifying its
`D₊(2t)` coordinate ring are separate steps.
-/

namespace Beal.General

open Polynomial

/-- The Rees algebra of the image of `(2,X,Y)` in the local surface
coordinate ring, rather than the Rees algebra of the ambient plane. -/
abbrev localSurfaceCentreRees (W : WeierstrassCurve ℤ_[2])
    (x y : ℤ_[2]) : Type :=
  reesAlgebra (localSurfaceClosedPoint W x y)

/-- A homogeneous degree-one Rees element corresponding to `r ∈ I`. -/
noncomputable def centreReesDegreeOne {R : Type*} [CommRing R]
    (I : Ideal R) (r : R) (hr : r ∈ I) : reesAlgebra I :=
  ⟨Polynomial.monomial 1 r,
    (reesAlgebra.monomial_mem).mpr (by simpa only [pow_one] using hr)⟩

/-- A ring map sends a Rees algebra to the Rees algebra of the image
ideal, coefficient by coefficient. This records the graded-compatible
map algebraically; a map on `Proj` is not yet constructed. -/
noncomputable def centreReesMap {R S : Type*} [CommRing R] [CommRing S]
    (f : R →+* S) (I : Ideal R) :
    reesAlgebra I →+* reesAlgebra (Ideal.map f I) where
  toFun p :=
    ⟨Polynomial.map f p.1, by
      intro n
      rw [Polynomial.coeff_map, ← Ideal.map_pow]
      exact Ideal.mem_map_of_mem f (p.2 n)⟩
  map_one' := Subtype.ext (by simp)
  map_mul' p q := Subtype.ext (by simp)
  map_zero' := Subtype.ext (by simp)
  map_add' p q := Subtype.ext (by simp)

/-- The coefficientwise Rees map preserves degree-one generators. -/
theorem centreReesMap_degreeOne {R S : Type*} [CommRing R] [CommRing S]
    (f : R →+* S) (I : Ideal R) (r : R) (hr : r ∈ I) :
    centreReesMap f I (centreReesDegreeOne I r hr) =
      centreReesDegreeOne (Ideal.map f I) (f r)
        (Ideal.mem_map_of_mem f hr) := by
  apply Subtype.ext
  simp [centreReesMap, centreReesDegreeOne]

/-- The degree-one element `2t` of the Rees algebra of the surface
centre. This is the prospective denominator for the `D₊(2t)` chart. -/
noncomputable def localSurfaceCentreReesTwo
    (W : WeierstrassCurve ℤ_[2]) (x y : ℤ_[2]) :
    localSurfaceCentreRees W x y := by
  let q : MvPolynomial (Fin 2) ℤ_[2] →+*
      localSurfaceCoordinateRing W x y :=
    Ideal.Quotient.mk (Ideal.span {localSurfaceEquation W x y})
  apply centreReesDegreeOne (localSurfaceClosedPoint W x y)
    (q (MvPolynomial.C (2 : ℤ_[2])))
  exact Ideal.mem_map_of_mem q
    (Ideal.subset_span (by simp [localSurfaceCentre]))

/-- The degree-one Rees element `Xᵢt`, for the two translated
coordinates `X₀=X` and `X₁=Y`. -/
noncomputable def localSurfaceCentreReesCoordinate
    (W : WeierstrassCurve ℤ_[2]) (x y : ℤ_[2]) (i : Fin 2) :
    localSurfaceCentreRees W x y := by
  let q : MvPolynomial (Fin 2) ℤ_[2] →+*
      localSurfaceCoordinateRing W x y :=
    Ideal.Quotient.mk (Ideal.span {localSurfaceEquation W x y})
  apply centreReesDegreeOne (localSurfaceClosedPoint W x y)
    (q (MvPolynomial.X i))
  exact Ideal.mem_map_of_mem q
    (Ideal.subset_span (by fin_cases i <;> simp [localSurfaceCentre]))

/-- The Rees generators satisfy `2 · (Xᵢt) = Xᵢ · (2t)`.
After the missing graded chart construction, these are the
relations that give the ratios `X/2` and `Y/2`. -/
theorem localSurfaceCentreRees_relation
    (W : WeierstrassCurve ℤ_[2]) (x y : ℤ_[2]) (i : Fin 2) :
    let R := localSurfaceCoordinateRing W x y
    let q : MvPolynomial (Fin 2) ℤ_[2] →+* R :=
      Ideal.Quotient.mk (Ideal.span {localSurfaceEquation W x y})
    algebraMap R (localSurfaceCentreRees W x y)
        (q (MvPolynomial.C (2 : ℤ_[2]))) *
      localSurfaceCentreReesCoordinate W x y i =
    algebraMap R (localSurfaceCentreRees W x y)
        (q (MvPolynomial.X i)) *
      localSurfaceCentreReesTwo W x y := by
  let R := localSurfaceCoordinateRing W x y
  let q : MvPolynomial (Fin 2) ℤ_[2] →+* R :=
    Ideal.Quotient.mk (Ideal.span {localSurfaceEquation W x y})
  apply Subtype.ext
  change Polynomial.C (q (MvPolynomial.C (2 : ℤ_[2]))) *
      Polynomial.monomial 1 (q (MvPolynomial.X i)) =
    Polynomial.C (q (MvPolynomial.X i)) *
      Polynomial.monomial 1 (q (MvPolynomial.C (2 : ℤ_[2])))
  simp only [Polynomial.C_mul_monomial]
  congr 1
  ring

#print axioms localSurfaceCentreReesTwo
#print axioms localSurfaceCentreReesCoordinate
#print axioms localSurfaceCentreRees_relation
#print axioms centreReesMap
#print axioms centreReesMap_degreeOne

end Beal.General