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

The source and replay transcript are pinned in
`docs/X0_26_MODEL_CERTIFICATE.md`.
-/

/-- The right-hand side of the Bruin--Najman integral equation. -/
def X0_26_integralRhs (x : ℚ) : ℚ :=
  -2 * x ^ 5 + 2 * x ^ 4 - 5 * x ^ 3 + 2 * x ^ 2 - 2 * x

/-- Direct arithmetic membership in the affine Bruin--Najman equation. -/
def X0_26_OnIntegralModel (x y : ℚ) : Prop :=
  y ^ 2 - (x ^ 3 + 1) * y = X0_26_integralRhs x

/-- The completed-square sextic in the canonical model of `X₀(26)`. -/
def X0_26_sextic (x : ℚ) : ℚ :=
  x ^ 6 - 8 * x ^ 5 + 8 * x ^ 4 - 18 * x ^ 3 +
    8 * x ^ 2 - 8 * x + 1

/-- Lean checks the polynomial identity behind `Y = 2y - (x³ + 1)`. -/
theorem X0_26_completedSquare_identity (x y : ℚ) :
    (2 * y - (x ^ 3 + 1)) ^ 2 - X0_26_sextic x =
      4 * (y ^ 2 - (x ^ 3 + 1) * y - X0_26_integralRhs x) := by
  simp only [X0_26_sextic, X0_26_integralRhs]
  ring

/-- The displayed change of variable carries every affine point on the
integral equation to the completed-square equation. -/
theorem X0_26_completedSquare_of_onIntegralModel {x y : ℚ}
    (h : X0_26_OnIntegralModel x y) :
    (2 * y - (x ^ 3 + 1)) ^ 2 = X0_26_sextic x := by
  rw [X0_26_OnIntegralModel] at h
  have hid := X0_26_completedSquare_identity x y
  rw [h, sub_self, mul_zero] at hid
  exact sub_eq_zero.mp hid

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

theorem X0_26_discriminant_factorization :
    X0_26_discriminant = 2 ^ 20 * 13 ^ 3 := by
  norm_num [X0_26_discriminant]

/-- The genus read from a nonsingular even-degree hyperelliptic model.

Mathlib 4.12 has no scheme-level hyperelliptic genus API.  This definition
therefore records the standard finite certificate: a nonzero discriminant
and degree `2g+2`, rather than pretending to construct `X₀(26)` as a scheme.
-/
def X0_26_certifiedGenus : Nat :=
  if X0_26_discriminant = 0 then 0 else (X0_26_degree - 2) / 2

theorem X0_26_genus : X0_26_certifiedGenus = 2 := by
  decide

/-! ## Independent modular-curve genus arithmetic

This is the level-26 specialization of the Diamond--Shurman numerical pattern
also used for `X₀(143)` in the Opera Numerorum RH repositories.  It verifies
the arithmetic inputs to the Riemann--Hurwitz formula without pretending that
Mathlib 4.12 already identifies the displayed hyperelliptic model with a
scheme-level modular curve.
-/

/-- `[SL₂(ℤ) : Γ₀(26)] = 26(1+1/2)(1+1/13) = 42`. -/
theorem X0_26_modular_index : 26 * 3 / 2 * 14 / 13 = 42 := by
  decide

/-- The squarefree level `26 = 2·13` has four cusps. -/
theorem X0_26_cusp_term :
    Nat.totient (Nat.gcd 1 26) + Nat.totient (Nat.gcd 2 13) +
      Nat.totient (Nat.gcd 13 2) + Nat.totient (Nat.gcd 26 1) = 4 := by
  decide

/-- Numerical Diamond--Shurman genus formula at level 26:
`g = 1 + μ/12 - ν₂/4 - ν₃/3 - ν∞/2 = 2`, with
`μ=42`, `ν₂=2`, `ν₃=0`, and `ν∞=4`. -/
theorem X0_26_genus_formula_arithmetic :
    (1 : ℚ) + 42 / 12 - 2 / 4 - 0 / 3 - 4 / 2 = 2 := by
  norm_num

/-- The independent modular-curve arithmetic agrees numerically with the
genus certified from the nonsingular sextic model. -/
theorem X0_26_model_genus_agrees_with_formula :
    (X0_26_certifiedGenus : ℚ) =
      1 + 42 / 12 - 2 / 4 - 0 / 3 - 4 / 2 := by
  rw [X0_26_genus]
  norm_num

/-- Points on the even-degree projective hyperelliptic model.

The two infinity constructors distinguish the two rational points at infinity
coming from the square leading coefficient.
-/
inductive X0_26_Model where
  | affine (x y : ℚ)
  | infinity (positiveBranch : Bool)
  deriving DecidableEq, Repr

/-- Direct arithmetic membership in the displayed completed-square model. -/
def X0_26_OnModel : X0_26_Model → Prop
  | .affine x y => y ^ 2 = X0_26_sextic x
  | .infinity positiveBranch =>
      (if positiveBranch then (1 : ℚ) else -1) ^ 2 = 1

instance X0_26_OnModel_decidable (point : X0_26_Model) :
    Decidable (X0_26_OnModel point) := by
  cases point <;> simp only [X0_26_OnModel] <;> infer_instance

/-- Rationality on the explicit rational-coordinate model means satisfying
the displayed projective equation. -/
def X0_26_Model.IsRational (point : X0_26_Model) : Prop :=
  X0_26_OnModel point

/-- A rational point carries its equation certificate in its type. -/
def X0_26_RationalPoint :=
  {point : X0_26_Model // point.IsRational}

instance X0_26_RationalPoint_decidableEq :
    DecidableEq X0_26_RationalPoint := fun point₁ point₂ =>
  if h : point₁.1 = point₂.1 then
    isTrue (Subtype.ext h)
  else
    isFalse (fun hpoints => h (congrArg Subtype.val hpoints))

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
  | .divisorOne =>
      ⟨.affine 0 1, by
        norm_num [X0_26_Model.IsRational, X0_26_OnModel, X0_26_sextic]⟩
  | .divisorTwo =>
      ⟨.affine 0 (-1), by
        norm_num [X0_26_Model.IsRational, X0_26_OnModel, X0_26_sextic]⟩
  | .divisorThirteen =>
      ⟨.infinity true, by
        norm_num [X0_26_Model.IsRational, X0_26_OnModel]⟩
  | .divisorTwentySix =>
      ⟨.infinity false, by
        norm_num [X0_26_Model.IsRational, X0_26_OnModel]⟩

def X0_26_cusps : Finset X0_26_RationalPoint :=
  {X0_26_cuspPoint .divisorOne, X0_26_cuspPoint .divisorTwo,
    X0_26_cuspPoint .divisorThirteen, X0_26_cuspPoint .divisorTwentySix}

theorem X0_26_cusp_count : X0_26_cusps.card = 4 := by
  decide

theorem X0_26_cusps_Q_rational :
    ∀ point ∈ X0_26_cusps, point.1.IsRational := by
  intro point _
  exact point.2

theorem X0_26_labeled_cusps_Q_rational :
    ∀ label : X0_26_CuspLabel,
      (X0_26_cuspPoint label).1.IsRational := by
  intro label
  exact (X0_26_cuspPoint label).2

/-- The two finite cusp coordinates also satisfy the source integral model.

The corresponding completed-square coordinates are `(0, 1)` and `(0, -1)`;
the other two cusps are the two points at infinity.
-/
theorem X0_26_finite_cusps_onIntegralModel :
    X0_26_OnIntegralModel 0 1 ∧ X0_26_OnIntegralModel 0 0 := by
  norm_num [X0_26_OnIntegralModel, X0_26_integralRhs]

/-- Evaluate the completed-square sextic over `ZMod p`. -/
def X0_26_sexticMod (p : Nat) (x : ZMod p) : ZMod p :=
  x ^ 6 - 8 * x ^ 5 + 8 * x ^ 4 - 18 * x ^ 3 +
    8 * x ^ 2 - 8 * x + 1

/-- Affine point count over `𝔽_p`, represented by canonical residues.

For the certified odd good primes below, the smooth even-degree completion
has two additional rational points at infinity because the leading
coefficient is the square `1`.
-/
def X0_26_affinePointCount (p : Nat) : Nat :=
  (((Finset.univ : Finset (Fin p)).product
      (Finset.univ : Finset (Fin p))).filter fun xy =>
    (((xy.2 : Nat) : ZMod p) ^ 2 =
      X0_26_sexticMod p ((xy.1 : Nat) : ZMod p))).card

/-- Compact, kernel-checked finite-field certificates. -/
theorem X0_26_affinePointCounts :
    X0_26_affinePointCount 3 = 4 ∧
    X0_26_affinePointCount 5 = 8 ∧
    X0_26_affinePointCount 7 = 6 ∧
    X0_26_affinePointCount 11 = 6 := by
  decide

/-- Completed-model totals obtained from the affine certificates and the two
formally declared infinity branches: `(6,10,8,8)`.

This theorem is deliberately only arithmetic.  It does not construct the
smooth projective curve over a finite field or prove good reduction.
-/
theorem X0_26_completedModelPointCounts :
    X0_26_affinePointCount 3 + 2 = 6 ∧
    X0_26_affinePointCount 5 + 2 = 10 ∧
    X0_26_affinePointCount 7 + 2 = 8 ∧
    X0_26_affinePointCount 11 + 2 = 8 := by
  decide

/-- The deliberately uninhabited identification boundary.

Mathlib 4.12 has no scheme-level `X₀(26)` to put on the left side.  A later
development may instantiate `ModularCurvePoint` with genuine rational points
and construct this equivalence from explicit birational formulas.  This file
does not provide such an inhabitant.
-/
abbrev X0_26ModelIdentificationBoundary (ModularCurvePoint : Type) :=
  ModularCurvePoint ≃ X0_26_RationalPoint

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
#print axioms X0_26_discriminant_factorization
#print axioms X0_26_genus
#print axioms X0_26_cusp_count
#print axioms X0_26_cusps_Q_rational
#print axioms X0_26_labeled_cusps_Q_rational
#print axioms X0_26_completedSquare_identity
#print axioms X0_26_completedSquare_of_onIntegralModel
#print axioms X0_26_finite_cusps_onIntegralModel
#print axioms X0_26_affinePointCounts
#print axioms X0_26_completedModelPointCounts
#print axioms X0_26_knownRationalPoints_card

end Beal17Mazur
