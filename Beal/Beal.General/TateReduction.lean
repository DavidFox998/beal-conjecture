import Beal.«Beal.General».Minimal
import Mathlib.AlgebraicGeometry.EllipticCurve.Affine

/-!
Explicit residue-characteristic-two smoothness and node tests for
unit-scale successors. These check the affine equation, its two
partials, and the quadratic tangent cone. They do not implement
Tate's algorithm or assign a Kodaira type or Néron conductor exponent.
-/

namespace Beal.General

/-- The affine Weierstrass equation over the residue field. -/
def reducedEquation (W : WeierstrassCurve (ZMod 2)) (x y : ZMod 2) : ZMod 2 :=
  y ^ 2 + W.a₁ * x * y + W.a₃ * y -
    (x ^ 3 + W.a₂ * x ^ 2 + W.a₄ * x + W.a₆)

/-- Its formal partial derivative with respect to `x`. -/
def reducedDx (W : WeierstrassCurve (ZMod 2)) (x y : ZMod 2) : ZMod 2 :=
  W.a₁ * y - (3 * x ^ 2 + 2 * W.a₂ * x + W.a₄)

/-- Its formal partial derivative with respect to `y`. -/
def reducedDy (W : WeierstrassCurve (ZMod 2)) (x y : ZMod 2) : ZMod 2 :=
  2 * y + W.a₁ * x + W.a₃

/-- The degree-two part after translating a point of the affine equation
to the origin. Its slope quadratic has linear coefficient `W.a₁`;
in characteristic two, nonzero `W.a₁` makes its tangent directions
distinct over an algebraic closure. -/
def reducedTangentCone (W : WeierstrassCurve (ZMod 2))
    (x u v : ZMod 2) : ZMod 2 :=
  v ^ 2 + W.a₁ * u * v - (3 * x + W.a₂) * u ^ 2

/-- The expansion certifies that `reducedTangentCone` is the actual
quadratic part of the translated Weierstrass equation. -/
theorem reducedEquation_shift (W : WeierstrassCurve (ZMod 2))
    (x y u v : ZMod 2) :
    reducedEquation W (x + u) (y + v) =
      reducedEquation W x y + reducedDx W x y * u + reducedDy W x y * v +
      reducedTangentCone W x u v - u ^ 3 := by
  simp only [reducedEquation, reducedDx, reducedDy, reducedTangentCone]
  ring

/-- A singular point whose translated quadratic term has nonzero
mixed coefficient: the explicit characteristic-two node test. -/
def ReducedNodalPoint (W : WeierstrassCurve (ZMod 2)) (x y : ZMod 2) : Prop :=
  reducedEquation W x y = 0 ∧
    reducedDx W x y = 0 ∧
    reducedDy W x y = 0 ∧
    W.a₁ ≠ 0

/-- The explicit node test is an actual singular point for Mathlib's
affine Weierstrass geometry, not merely a label for the residue data.
The nonzero tangent cross term is retained by `ReducedNodalPoint`. -/
theorem reducedNodalPoint_mathlibSingular
    (W : WeierstrassCurve (ZMod 2)) (x y : ZMod 2)
    (h : ReducedNodalPoint W x y) :
    W.toAffine.Equation x y ∧ ¬ W.toAffine.Nonsingular x y := by
  rcases h with ⟨he, hx, hy, _⟩
  constructor
  · exact (W.toAffine.equation_iff' x y).mpr he
  · intro hs
    rcases (W.toAffine.nonsingular_iff' x y).mp hs with ⟨_, hdx | hdy⟩
    · exact hdx hx
    · exact hdy hy

/-- With a nonzero mixed tangent coefficient, the two partials have
only one common zero even after extending the residue field. This is
the geometric uniqueness of the singular candidate; it does not
resolve the node into components of a minimal regular model. -/
theorem reducedNodalPoint_uniqueGeometricCandidate
    (W : WeierstrassCurve (ZMod 2))
    (hnode : ∃ x y : ZMod 2, ReducedNodalPoint W x y)
    {K : Type*} [Field K] (φ : ZMod 2 →+* K) (x y : K)
    (hx : ((W.map φ).toAffine.polynomialX).evalEval x y = 0)
    (hy : ((W.map φ).toAffine.polynomialY).evalEval x y = 0) :
    x = φ W.a₃ ∧ y = (φ W.a₃) ^ 2 + φ W.a₄ := by
  obtain ⟨_, _, _, _, _, ha⟩ := hnode
  have ha1 : W.a₁ = 1 := by
    have hcases (z : ZMod 2) : z = 0 ∨ z = 1 := by
      fin_cases z <;> simp
    rcases hcases W.a₁ with hz | hone
    · exact (ha hz).elim
    · exact hone
  have htwo : (2 : K) = 0 := by
    have h : (2 : ZMod 2) = 0 := by decide
    have hm := congrArg φ h
    simpa only [map_ofNat, map_zero] using hm
  have hthree : (3 : K) = 1 := by
    calc
      (3 : K) = 2 + 1 := by ring
      _ = 1 := by rw [htwo]; ring
  have hneg (z : K) : -z = z := by
    have hz : (2 : K) * z = 0 := by rw [htwo]; ring
    linear_combination -hz
  have hy' : x + φ W.a₃ = 0 := by
    simpa [WeierstrassCurve.Affine.evalEval_polynomialY,
      WeierstrassCurve.map_a₁, WeierstrassCurve.map_a₃,
      ha1, htwo] using hy
  have hx' : x = φ W.a₃ := by
    have := eq_neg_of_add_eq_zero_left hy'
    simpa [hneg] using this
  have hx'' : y - (x ^ 2 + φ W.a₄) = 0 := by
    simpa [WeierstrassCurve.Affine.evalEval_polynomialX,
      WeierstrassCurve.map_a₁, WeierstrassCurve.map_a₂,
      WeierstrassCurve.map_a₄, ha1, htwo, hthree] using hx
  exact ⟨hx', by rw [hx'] at hx''; exact sub_eq_zero.mp hx''⟩

/-- Nonzero `b₂` and zero discriminant give the singular point
`(a₃, a₃² + a₄)` in characteristic two. The mixed coefficient of
the actual tangent cone is nonzero, so this is a node, not a cusp. -/
theorem reduced_nodal_point_of_delta_zero_b2_ne_zero
    (W : WeierstrassCurve (ZMod 2))
    (hΔ : W.Δ = 0) (hb : W.b₂ ≠ 0) :
    ReducedNodalPoint W W.a₃ (W.a₃ ^ 2 + W.a₄) := by
  have hcases (z : ZMod 2) : z = 0 ∨ z = 1 := by
    fin_cases z <;> simp
  have htwo : (2 : ZMod 2) = 0 := by decide
  have hfour : (4 : ZMod 2) = 0 := by decide
  have ha : W.a₁ = 1 := by
    rcases hcases W.a₁ with hzero | hone
    · have : W.b₂ = 0 := by simp [WeierstrassCurve.b₂, hzero, hfour]
      exact (hb this).elim
    · exact hone
  have hthree : (3 : ZMod 2) = 1 := by decide
  have hid : W.Δ = reducedEquation W W.a₃ (W.a₃ ^ 2 + W.a₄) := by
    rcases hcases W.a₂ with h2 | h2 <;>
      rcases hcases W.a₃ with h3 | h3 <;>
      rcases hcases W.a₄ with h4 | h4 <;>
      rcases hcases W.a₆ with h6 | h6
    all_goals
      simp only [WeierstrassCurve.Δ, WeierstrassCurve.b₂,
        WeierstrassCurve.b₄, WeierstrassCurve.b₆,
        WeierstrassCurve.b₈, reducedEquation, ha, h2, h3, h4, h6]
      decide
  refine ⟨?_, ?_, ?_, ?_⟩
  · rw [← hid]
    exact hΔ
  · simp [reducedDx, ha, htwo, hthree]
  · simp only [reducedDy, ha, htwo, zero_mul, zero_add, one_mul]
    calc W.a₃ + W.a₃ = (2 : ZMod 2) * W.a₃ := by ring
      _ = 0 := by rw [htwo]; ring
  · rw [ha]
    exact one_ne_zero

/-- A nonzero reduced discriminant rules out every simultaneous zero
of the affine equation and both formal partials. The finite residue
field calculation makes this smoothness test independent of an
unavailable geometric Tate-algorithm API. -/
theorem reduced_no_singular_point_of_delta_ne_zero
    (W : WeierstrassCurve (ZMod 2))
    (hΔ : W.Δ ≠ 0) (x y : ZMod 2) :
    ¬(reducedEquation W x y = 0 ∧
      reducedDx W x y = 0 ∧ reducedDy W x y = 0) := by
  have hcases (z : ZMod 2) : z = 0 ∨ z = 1 := by
    fin_cases z <;> simp
  rcases hcases W.a₁ with h1 | h1 <;>
    rcases hcases W.a₂ with h2 | h2 <;>
    rcases hcases W.a₃ with h3 | h3 <;>
    rcases hcases W.a₄ with h4 | h4 <;>
    rcases hcases W.a₆ with h6 | h6 <;>
    rcases hcases x with hx | hx <;>
    rcases hcases y with hy | hy
  all_goals
    simp only [WeierstrassCurve.Δ, WeierstrassCurve.b₂,
      WeierstrassCurve.b₄, WeierstrassCurve.b₆,
      WeierstrassCurve.b₈, reducedEquation, reducedDx, reducedDy,
      h1, h2, h3, h4, h6, hx, hy] at *
    first
    | exact (hΔ (by decide)).elim
    | decide

/-- A unit-discriminant successor has smooth affine reduction. This
does not yet assert Kodaira `I₀` or an actual Néron conductor exponent. -/
theorem LaterNonScalingTateValZeroHasSmoothReduction
    (M : WeierstrassCurve ℤ_[2]) (hM : M.Δ ≠ 0)
    (hval : Padic.valuation (M.Δ : ℚ_[2]) = 0)
    (ε : ℤ_[2]ˣ) (r s t : ℚ_[2]) (N : WeierstrassCurve ℤ_[2])
    (hmodel : (M.map (algebraMap ℤ_[2] ℚ_[2])).variableChange
      (candidateUnitScaleChange ε r s t) =
      N.map (algebraMap ℤ_[2] ℚ_[2])) :
    ∀ x y : ZMod 2,
      ¬(reducedEquation (N.map PadicInt.toZMod) x y = 0 ∧
        reducedDx (N.map PadicInt.toZMod) x y = 0 ∧
        reducedDy (N.map PadicInt.toZMod) x y = 0) := by
  obtain ⟨hunit, _⟩ :=
    LaterNonScalingTateValZeroUnitDiscMinimal M hM hval ε r s t N hmodel
  have hred : (N.map PadicInt.toZMod).Δ ≠ 0 := by
    rw [WeierstrassCurve.map_Δ]
    exact (hunit.map PadicInt.toZMod).ne_zero
  exact reduced_no_singular_point_of_delta_ne_zero
    (N.map PadicInt.toZMod) hred

/-- A unit-discriminant integral Weierstrass equation gives an actual
elliptic curve over `ℤ_[2]`, rather than just a test on its residue
coefficients. This does not construct a Néron model or conductor. -/
theorem integralEllipticModelOfUnitDelta (N : WeierstrassCurve ℤ_[2])
    (hunit : IsUnit N.Δ) :
    ∃ E : EllipticCurve ℤ_[2], E.toWeierstrassCurve = N := by
  exact ⟨⟨N, hunit.unit, hunit.unit_spec⟩, rfl⟩

/-- Unit discriminant rules out singular affine points over *every*
extension of the residue field, not just the two rational residue
coordinates. This uses the Weierstrass discriminant criterion over
the extended field. -/
theorem unitDeltaGeometricallySmooth
    (N : WeierstrassCurve ℤ_[2]) (hunit : IsUnit N.Δ)
    {K : Type*} [Field K] (φ : ZMod 2 →+* K) (x y : K)
    (hpoint : ((N.map PadicInt.toZMod).map φ).toAffine.Equation x y) :
    ((N.map PadicInt.toZMod).map φ).toAffine.Nonsingular x y := by
  apply WeierstrassCurve.Affine.nonsingular_of_Δ_ne_zero _ hpoint
  rw [WeierstrassCurve.map_Δ, WeierstrassCurve.map_Δ]
  exact ((hunit.map PadicInt.toZMod).map φ).ne_zero

/-- The valuation-zero successor is an integral elliptic curve with
geometrically nonsingular reduction. Its Kodaira symbol and local
conductor still require the missing fibre/conductor theorems. -/
theorem LaterNonScalingTateValZeroHasIntegralEllipticModel
    (M : WeierstrassCurve ℤ_[2]) (hM : M.Δ ≠ 0)
    (hval : Padic.valuation (M.Δ : ℚ_[2]) = 0)
    (ε : ℤ_[2]ˣ) (r s t : ℚ_[2]) (N : WeierstrassCurve ℤ_[2])
    (hmodel : (M.map (algebraMap ℤ_[2] ℚ_[2])).variableChange
      (candidateUnitScaleChange ε r s t) =
      N.map (algebraMap ℤ_[2] ℚ_[2])) :
    ∃ E : EllipticCurve ℤ_[2], E.toWeierstrassCurve = N ∧
      ∀ {K : Type*} [Field K] (φ : ZMod 2 →+* K) (x y : K),
        ((N.map PadicInt.toZMod).map φ).toAffine.Equation x y →
          ((N.map PadicInt.toZMod).map φ).toAffine.Nonsingular x y := by
  obtain ⟨hunit, _⟩ :=
    LaterNonScalingTateValZeroUnitDiscMinimal M hM hval ε r s t N hmodel
  obtain ⟨E, hE⟩ := integralEllipticModelOfUnitDelta N hunit
  exact ⟨E, hE, fun φ x y hpoint =>
    unitDeltaGeometricallySmooth N hunit φ x y hpoint⟩

/-- Positive discriminant valuation of a nonzero integral
discriminant forces its image in the residue field to vanish. -/
theorem positive_delta_reduces_zero (N : WeierstrassCurve ℤ_[2])
    (hne : N.Δ ≠ 0) (hpositive : 0 < Padic.valuation (N.Δ : ℚ_[2])) :
    (PadicInt.toZMod : ℤ_[2] →+* ZMod 2) N.Δ = 0 := by
  have hN : (N.Δ : ℚ_[2]) ≠ 0 := (PadicInt.coe_ne_zero N.Δ).mpr hne
  have hnonunit : ¬IsUnit N.Δ := by
    intro h
    have hnorm : ‖(N.Δ : ℚ_[2])‖ = 1 := by
      simpa only [PadicInt.norm_def] using (PadicInt.isUnit_iff.mp h)
    have hpow : (2 : ℝ) ^ (-Padic.valuation (N.Δ : ℚ_[2])) =
        (2 : ℝ) ^ (0 : ℤ) := by
      calc
        _ = ‖(N.Δ : ℚ_[2])‖ := (Padic.norm_eq_pow_val hN).symm
        _ = 1 := hnorm
        _ = (2 : ℝ) ^ (0 : ℤ) := by norm_num
    have hv := (zpow_strictMono (show (1 : ℝ) < 2 by norm_num)).injective hpow
    omega
  have hmem : N.Δ ∈ LocalRing.maximalIdeal ℤ_[2] := by
    simpa only [LocalRing.mem_maximalIdeal, mem_nonunits_iff] using hnonunit
  have hker : N.Δ ∈ RingHom.ker (PadicInt.toZMod : ℤ_[2] →+* ZMod 2) := by
    rw [PadicInt.ker_toZMod]
    exact hmem
  exact RingHom.mem_ker.mp hker

/-- Every positive-discriminant-valuation, unit-`c₄` successor in
the proved branch has a nodal reduced affine Weierstrass equation.
No type `Iₙ` or exponent `f₂=1` is inferred here. -/
theorem LaterNonScalingTatePosValHasNodalReduction
    (M : WeierstrassCurve ℤ_[2]) (hM : M.Δ ≠ 0)
    (hc4 : (M.c₄ : ℚ_[2]) ≠ 0)
    (hc4val : Padic.valuation (M.c₄ : ℚ_[2]) = 0)
    (hpositive : 0 < Padic.valuation (M.Δ : ℚ_[2]))
    (ε : ℤ_[2]ˣ) (r s t : ℚ_[2]) (N : WeierstrassCurve ℤ_[2])
    (hmodel : (M.map (algebraMap ℤ_[2] ℚ_[2])).variableChange
      (candidateUnitScaleChange ε r s t) =
      N.map (algebraMap ℤ_[2] ℚ_[2])) :
    ∃ x y : ZMod 2, ReducedNodalPoint (N.map PadicInt.toZMod) x y := by
  obtain ⟨hN, hNpos, hb, _, _⟩ :=
    LaterNonScalingTatePosValMinimalB2C6Odd
      M hM hc4 hc4val hpositive ε r s t N hmodel
  have hred : (N.map PadicInt.toZMod).Δ = 0 := by
    rw [WeierstrassCurve.map_Δ]
    exact positive_delta_reduces_zero N hN hNpos
  have hb' : (N.map PadicInt.toZMod).b₂ ≠ 0 := by
    simpa only [WeierstrassCurve.map_b₂] using hb
  exact ⟨_, _, reduced_nodal_point_of_delta_zero_b2_ne_zero
    (N.map PadicInt.toZMod) hred hb'⟩

/-- The positive-valuation branch's explicit node is also singular in
the affine Weierstrass API. This does not identify components in the
minimal regular fibre or compute the Néron conductor. -/
theorem LaterNonScalingTatePosValHasSingularAffineFibre
    (M : WeierstrassCurve ℤ_[2]) (hM : M.Δ ≠ 0)
    (hc4 : (M.c₄ : ℚ_[2]) ≠ 0)
    (hc4val : Padic.valuation (M.c₄ : ℚ_[2]) = 0)
    (hpositive : 0 < Padic.valuation (M.Δ : ℚ_[2]))
    (ε : ℤ_[2]ˣ) (r s t : ℚ_[2]) (N : WeierstrassCurve ℤ_[2])
    (hmodel : (M.map (algebraMap ℤ_[2] ℚ_[2])).variableChange
      (candidateUnitScaleChange ε r s t) =
      N.map (algebraMap ℤ_[2] ℚ_[2])) :
    ∃ x y : ZMod 2,
      (N.map PadicInt.toZMod).toAffine.Equation x y ∧
        ¬ (N.map PadicInt.toZMod).toAffine.Nonsingular x y := by
  obtain ⟨x, y, hnode⟩ :=
    LaterNonScalingTatePosValHasNodalReduction
      M hM hc4 hc4val hpositive ε r s t N hmodel
  exact ⟨x, y, reducedNodalPoint_mathlibSingular _ x y hnode⟩

/- TODO post-v31 — TateReductionValZeroIsI0F2Zero:
Construct a genuine Q₂ Kodaira classifier and Néron conductor exponent
for minimal integral models, then prove that the nonzero unit discriminant
and smooth reduction above give type I₀ and f₂ = 0. The valuation-zero
hypothesis alone must not include Δ = 0 (`Padic.valuation 0 = 0` here).

Mathlib at manifest revision 809c3fb has no Tate/Kodaira/Néron bridge.
The foundations tables through v31 have labels, not a theorem taking
these actual curves to fibres or conductor exponents. The conditional
criteria in Conductor.lean do not construct that classifier. -/

/- TODO post-v31 — TateReductionPosValUnitC4IsInF2One:
Prove the minimal-model node-to-fibre theorem for the explicit singular
point and separable tangent cone above: the Kodaira symbol must be Iₙ
with n = v₂(Δ) > 0, and a genuine Néron conductor theorem must give
f₂ = 1. The (U, V) = (32, 1) example is an I₂/f₂=1 obstruction to a
universal I₀ claim, not a replacement for the missing Lean bridge.
Do not assert either requested theorem from the existing residue tests
or from a definition that merely assigns the intended labels. -/

#print axioms reducedNodalPoint_mathlibSingular
#print axioms reducedNodalPoint_uniqueGeometricCandidate
#print axioms integralEllipticModelOfUnitDelta
#print axioms unitDeltaGeometricallySmooth
#print axioms LaterNonScalingTateValZeroHasIntegralEllipticModel
#print axioms LaterNonScalingTatePosValHasSingularAffineFibre

end Beal.General