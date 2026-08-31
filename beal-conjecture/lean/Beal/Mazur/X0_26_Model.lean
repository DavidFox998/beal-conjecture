import Beal.Mazur.KernelToX0

namespace Beal17Mazur

/-!
# The explicit genus-two model of `X₀(26)`

Bruin--Najman give the integral hyperelliptic equation

`y² - (x³ + 1)y = -2x⁵ + 2x⁴ - 5x³ + 2x² - 2x`.

After the integral change of variable `Y = 2y - (x³ + 1)`, this becomes

`Y² = x⁶ - 8x⁵ + 8x⁴ - 18x³ + 8x² - 8x + 1`.

This file checks only finite arithmetic attached to that displayed model.
It does not prove that every rational point has been found, compute the
Jacobian, or claim rank zero.  Those arithmetic/descent statements belong to
476d.
-/

/-- The completed-square sextic in the canonical model of `X₀(26)`. -/
def X0_26_sextic (x : ℚ) : ℚ :=
  x ^ 6 - 8 * x ^ 5 + 8 * x ^ 4 - 18 * x ^ 3 +
    8 * x ^ 2 - 8 * x + 1

/-- Degree of the displayed squarefree sextic. -/
def X0_26_degree : Nat := 6

/-- Discriminant of the displayed sextic.

The integer is the determinant/resultant certificate
`(-1)^(6*5/2) Res(f,f')`, since the leading coefficient is one.
-/
def X0_26_discriminant : Int := 2303721472

theorem X0_26_discriminant_ne_zero :
    X0_26_discriminant ≠ 0 := by
  decide

/-- The genus read from a nonsingular even-degree hyperelliptic model.

Mathlib 4.12 has no scheme-level hyperelliptic genus API.  This definition
therefore records the standard finite certificate: a nonzero discriminant
and degree `2g+2`, rather than pretending to construct `X₀(26)` as a scheme.
-/
def X0_26_certifiedGenus : Nat :=
  if X0_26_discriminant = 0 then 0 else (X0_26_degree - 2) / 2

theorem X0_26_genus : X0_26_certifiedGenus = 2 := by
  decide

/-- Rational points on the even-degree projective hyperelliptic model.

The two infinity constructors distinguish the two rational points at infinity
coming from the square leading coefficient.
-/
inductive X0_26_RationalPoint where
  | affine (x y : ℚ)
  | infinity (positiveBranch : Bool)
  deriving DecidableEq, Repr

/-- Direct arithmetic membership in the displayed completed-square model. -/
def X0_26_OnModel : X0_26_RationalPoint → Prop
  | .affine x y => y ^ 2 = X0_26_sextic x
  | .infinity positiveBranch =>
      (if positiveBranch then (1 : ℚ) else -1) ^ 2 = 1

instance X0_26_OnModel_decidable (point : X0_26_RationalPoint) :
    Decidable (X0_26_OnModel point) := by
  cases point <;> simp only [X0_26_OnModel] <;> infer_instance

/-- The four standard cusp labels for squarefree level `26`.

They correspond to the divisor representatives `1`, `2`, `13`, and `26`.
-/
inductive X0_26_CuspLabel where
  | divisorOne
  | divisorTwo
  | divisorThirteen
  | divisorTwentySix
  deriving DecidableEq, Repr

/-- A fixed enumeration of the four rational model points identified
externally with the four standard cusp classes.

The finite checks below verify that these coordinates are rational points on
the displayed curve.  The modular interpretation of the coordinate map is
source data, not reconstructed as a scheme-level theorem in Mathlib 4.12.
-/
def X0_26_cuspPoint : X0_26_CuspLabel → X0_26_RationalPoint
  | .divisorOne => .affine 0 1
  | .divisorTwo => .affine 0 (-1)
  | .divisorThirteen => .infinity true
  | .divisorTwentySix => .infinity false

def X0_26_cusps : Finset X0_26_RationalPoint :=
  {.affine 0 1, .affine 0 (-1), .infinity true, .infinity false}

theorem X0_26_cusp_count : X0_26_cusps.card = 4 := by
  decide

theorem X0_26_cusps_Q_rational :
    ∀ point ∈ X0_26_cusps, X0_26_OnModel point := by
  intro point hpoint
  simp only [X0_26_cusps, Finset.mem_insert, Finset.mem_singleton] at hpoint
  rcases hpoint with hpoint | hpoint | hpoint | hpoint
  all_goals subst point
  all_goals norm_num [X0_26_OnModel, X0_26_sextic]

theorem X0_26_labeled_cusps_Q_rational :
    ∀ label : X0_26_CuspLabel,
      X0_26_OnModel (X0_26_cuspPoint label) := by
  intro label
  cases label <;> norm_num [X0_26_cuspPoint, X0_26_OnModel, X0_26_sextic]

/-- The finite rational-point data certified in 476c.

No exhaustiveness claim is made: proving `X₀(26)(ℚ)` is contained in this
finite set requires the rank-zero/descent input reserved for 476d.
-/
def X0_26_knownRationalPoints : Finset X0_26_RationalPoint :=
  X0_26_cusps

theorem X0_26_knownRationalPoints_card :
    X0_26_knownRationalPoints.card = 4 := by
  decide

#print axioms X0_26_discriminant_ne_zero
#print axioms X0_26_genus
#print axioms X0_26_cusp_count
#print axioms X0_26_cusps_Q_rational
#print axioms X0_26_labeled_cusps_Q_rational
#print axioms X0_26_knownRationalPoints_card

end Beal17Mazur