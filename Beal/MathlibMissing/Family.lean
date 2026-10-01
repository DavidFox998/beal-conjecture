import Beal.«Beal.General».TateEvenReesChart
import Mathlib.AlgebraicGeometry.ProjectiveSpectrum.Scheme

/-!
# Isolated gap: the family `Bl_{I_{a,b}}`

`BealEven` does not import this file. `lake build BealEven` does not
elaborate it.

`S = ℤ_[2][a,b]`. `surfaceRing` is the Weierstrass coordinate ring
`R_{a,b}` over `S`. `centreIdeal` is `(2, X - a^p, Y - b^q)` in that
ring. `familyBlowup` is `Proj` of the Rees algebra of that ideal.

`coprimeBealSolution_to_family_point` is uninhabited. A numeral solution
`(a,b,p,q)` is not a constructed point of this `Proj`: evaluating the
indeterminates `a,b` is not a homogeneous prime. No `sorry` is used.
-/

namespace Beal.MathlibMissing

open Beal.General

/-- `S = ℤ_[2][a, b]`. -/
abbrev S : Type := MvPolynomial (Fin 2) ℤ_[2]

/-- The indeterminate `a`. -/
noncomputable def paramA : S := MvPolynomial.X 0

/-- The indeterminate `b`. -/
noncomputable def paramB : S := MvPolynomial.X 1

/-- The Weierstrass polynomial in `S[X, Y]`. -/
noncomputable def surfacePolynomial (W : WeierstrassCurve ℤ_[2]) :
    MvPolynomial (Fin 2) S :=
  let φ : ℤ_[2] →+* MvPolynomial (Fin 2) S :=
    MvPolynomial.C.comp (MvPolynomial.C : ℤ_[2] →+* S)
  localWeierstrassEquation (W.map φ) (MvPolynomial.X 0) (MvPolynomial.X 1)

/-- `R_{a,b} = S[X, Y] / (Weierstrass)`. -/
abbrev surfaceRing (W : WeierstrassCurve ℤ_[2]) : Type :=
  MvPolynomial (Fin 2) S ⧸ Ideal.span {surfacePolynomial W}

/-- `I_{a,b} = (2, X - a^p, Y - b^q)` in `R_{a,b}`. -/
noncomputable def centreIdeal (W : WeierstrassCurve ℤ_[2]) (p q : ℕ) :
    Ideal (surfaceRing W) :=
  Ideal.map (Ideal.Quotient.mk (Ideal.span {surfacePolynomial W}))
    (Ideal.span {
      MvPolynomial.C (MvPolynomial.C (2 : ℤ_[2])),
      MvPolynomial.X (0 : Fin 2) - MvPolynomial.C (paramA ^ p),
      MvPolynomial.X (1 : Fin 2) - MvPolynomial.C (paramB ^ q) })

/-- `Bl_{I_{a,b}} = Proj(Rees(I_{a,b}))`. -/
noncomputable def familyBlowup (W : WeierstrassCurve ℤ_[2]) (p q : ℕ) :
    AlgebraicGeometry.Scheme :=
  let I := centreIdeal W p q
  letI : GradedAlgebra (centreReesComponent I) := centreReesGrading I
  AlgebraicGeometry.«Proj» (centreReesComponent I)

/-- Points of `Bl_{I_{a,b}}`. -/
noncomputable def familyBlowupPoint (W : WeierstrassCurve ℤ_[2]) (p q : ℕ) :
    Type _ :=
  let I := centreIdeal W p q
  letI : GradedAlgebra (centreReesComponent I) := centreReesGrading I
  ProjectiveSpectrum (centreReesComponent I)

/-- OPEN. A coprime Beal tuple `(a, b, p, q)` should determine a point of
`Bl_{I_{a,b}}`. The scheme above depends on the exponents `p, q` and on
the indeterminates `a, b` of `S`. No specialization of those
indeterminates at numerals, and no homogeneous prime, is constructed.
An inhabitant would not yet be the arithmetic statement
`even_solution_implies_two_divides`. -/
def coprimeBealSolution_to_family_point : Prop :=
  ∀ (W : WeierstrassCurve ℤ_[2]) (a b c p q r : ℕ),
    0 < a → 0 < b → 0 < c →
    1 < p → 1 < q → 1 < r →
    Nat.Coprime a b →
    a ^ p + b ^ q = c ^ r →
    Nonempty (familyBlowupPoint W p q)

end Beal.MathlibMissing

#print axioms Beal.MathlibMissing.familyBlowup
#print axioms Beal.MathlibMissing.coprimeBealSolution_to_family_point
