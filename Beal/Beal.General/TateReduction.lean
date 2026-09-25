import Beal.«Beal.General».Minimal
import Mathlib.AlgebraicGeometry.EllipticCurve.Affine
import Mathlib.FieldTheory.IsAlgClosed.Basic

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

/-- The affine equation over the *integral* base ring. Keeping the
uniformizer in the coefficients is essential for studying the total
surface; its reduction alone cannot detect whether the total surface
is already regular at a node of the special fibre. -/
def localWeierstrassEquation {R : Type*} [CommRing R]
    (W : WeierstrassCurve R) (x y : R) : R :=
  y ^ 2 + W.a₁ * x * y + W.a₃ * y -
    (x ^ 3 + W.a₂ * x ^ 2 + W.a₄ * x + W.a₆)

/-- Exact translated equation before reduction, including the linear
terms which may be divisible by 2 but need not vanish in `ℤ_[2]`. -/
theorem localWeierstrassEquation_shift {R : Type*} [CommRing R]
    (W : WeierstrassCurve R) (x y u v : R) :
    localWeierstrassEquation W (x + u) (y + v) =
      localWeierstrassEquation W x y +
        (W.a₁ * y - (3 * x ^ 2 + 2 * W.a₂ * x + W.a₄)) * u +
        (2 * y + W.a₁ * x + W.a₃) * v +
        (v ^ 2 + W.a₁ * u * v - (3 * x + W.a₂) * u ^ 2) - u ^ 3 := by
  simp only [localWeierstrassEquation]
  ring

/-- Pullback of the total-space equation to the substitution
`X = x + 2u, Y = y + 2v`. This is an exact *chart numerator*, not a
strict transform or a claim that a blow-up lowers `v₂(Δ)`. In
particular the constant and linear terms cannot be dropped merely
because they vanish after reduction modulo 2. -/
theorem localWeierstrassEquation_twoChart
    (W : WeierstrassCurve ℤ_[2]) (x y u v : ℤ_[2]) :
    localWeierstrassEquation W (x + 2 * u) (y + 2 * v) =
      localWeierstrassEquation W x y +
        2 * ((W.a₁ * y - (3 * x ^ 2 + 2 * W.a₂ * x + W.a₄)) * u +
          (2 * y + W.a₁ * x + W.a₃) * v) +
        4 * (v ^ 2 + W.a₁ * u * v - (3 * x + W.a₂) * u ^ 2) -
        8 * u ^ 3 := by
  rw [localWeierstrassEquation_shift]
  ring

/-- Equation numerator on the `u`-chart substitution
`X = x + u, Y = y + u v`. The full blow-up chart additionally
imposes a relation of the form `2 = u w`; no exceptional divisor
or strict transform is inferred from this identity alone. -/
theorem localWeierstrassEquation_uChart
    (W : WeierstrassCurve ℤ_[2]) (x y u v : ℤ_[2]) :
    localWeierstrassEquation W (x + u) (y + u * v) =
      localWeierstrassEquation W x y +
        u * ((W.a₁ * y - (3 * x ^ 2 + 2 * W.a₂ * x + W.a₄)) +
          (2 * y + W.a₁ * x + W.a₃) * v) +
        u ^ 2 * (v ^ 2 + W.a₁ * v - (3 * x + W.a₂)) - u ^ 3 := by
  rw [localWeierstrassEquation_shift]
  ring

/-- Equation numerator on the `v`-chart substitution
`X = x + u v, Y = y + v`. The companion base relation is `2 = v w`;
this identity does not yet construct the strict transform. -/
theorem localWeierstrassEquation_vChart
    (W : WeierstrassCurve ℤ_[2]) (x y u v : ℤ_[2]) :
    localWeierstrassEquation W (x + u * v) (y + v) =
      localWeierstrassEquation W x y +
        v * ((W.a₁ * y - (3 * x ^ 2 + 2 * W.a₂ * x + W.a₄)) * u +
          (2 * y + W.a₁ * x + W.a₃)) +
        v ^ 2 * (1 + W.a₁ * u - (3 * x + W.a₂) * u ^ 2) -
        u ^ 3 * v ^ 3 := by
  rw [localWeierstrassEquation_shift]
  ring

/-- A singular point whose translated quadratic term has nonzero
mixed coefficient: the explicit characteristic-two node test. -/
def ReducedNodalPoint (W : WeierstrassCurve (ZMod 2)) (x y : ZMod 2) : Prop :=
  reducedEquation W x y = 0 ∧
    reducedDx W x y = 0 ∧
    reducedDy W x y = 0 ∧
    W.a₁ ≠ 0

/-- Every lift of a node of the special fibre has integral equation
value and both linear coefficients in the maximal ideal of `ℤ_[2]`.
These are *residue* equalities: they do not assert divisibility by 4,
which is needed before dividing the `2`-chart numerator by 4. -/
theorem reducedNodalPoint_liftLocalCoefficients
    (W : WeierstrassCurve ℤ_[2]) (x y : ℤ_[2])
    (hnode : ReducedNodalPoint (W.map PadicInt.toZMod)
      (PadicInt.toZMod x) (PadicInt.toZMod y)) :
    PadicInt.toZMod (localWeierstrassEquation W x y) = 0 ∧
      PadicInt.toZMod
        (W.a₁ * y - (3 * x ^ 2 + 2 * W.a₂ * x + W.a₄)) = 0 ∧
      PadicInt.toZMod (2 * y + W.a₁ * x + W.a₃) = 0 := by
  rcases hnode with ⟨he, hx, hy, _⟩
  constructor
  · simpa [localWeierstrassEquation, reducedEquation, WeierstrassCurve.map] using he
  constructor
  · simp only [map_sub, map_add, map_mul, map_pow, map_ofNat]
    simpa [reducedDx, WeierstrassCurve.map] using hx
  · simp only [map_sub, map_add, map_mul, map_ofNat]
    simpa [reducedDy, WeierstrassCurve.map] using hy

/-- In `ℤ_[2]`, vanishing modulo 2 means actual divisibility by 2. -/
private theorem two_dvd_of_toZMod_eq_zero (a : ℤ_[2])
    (h : PadicInt.toZMod a = (0 : ZMod 2)) : (2 : ℤ_[2]) ∣ a := by
  have hk : a ∈ RingHom.ker (PadicInt.toZMod : ℤ_[2] →+* ZMod 2) :=
    RingHom.mem_ker.mpr h
  rw [PadicInt.ker_toZMod, PadicInt.maximalIdeal_eq_span_p] at hk
  exact Ideal.mem_span_singleton.mp hk

/-- A lifted node makes the constant and linear coefficients of the
translated surface equation divisible by 2. This deliberately makes
no claim that the constant is divisible by 4: a nodal *special
fibre* can occur at a regular point of the total surface. -/
theorem reducedNodalPoint_liftEvenCoefficients
    (W : WeierstrassCurve ℤ_[2]) (x y : ℤ_[2])
    (hnode : ReducedNodalPoint (W.map PadicInt.toZMod)
      (PadicInt.toZMod x) (PadicInt.toZMod y)) :
    ∃ A B C : ℤ_[2],
      localWeierstrassEquation W x y = 2 * A ∧
      W.a₁ * y - (3 * x ^ 2 + 2 * W.a₂ * x + W.a₄) = 2 * B ∧
      2 * y + W.a₁ * x + W.a₃ = 2 * C := by
  obtain ⟨hF, hX, hY⟩ :=
    reducedNodalPoint_liftLocalCoefficients W x y hnode
  obtain ⟨A, hA⟩ := two_dvd_of_toZMod_eq_zero _ hF
  obtain ⟨B, hB⟩ := two_dvd_of_toZMod_eq_zero _ hX
  obtain ⟨C, hC⟩ := two_dvd_of_toZMod_eq_zero _ hY
  exact ⟨A, B, C, hA, hB, hC⟩

/-- If the lifted constant term is divisible by 4 as well as the
linear terms by 2, the `2`-chart equation has a factor of 4 with
this explicit quotient. The extra divisibility is a hypothesis,
not a consequence of the residue node. This still does not assert
that the quotient defines the strict transform of a blow-up. -/
theorem localWeierstrassEquation_twoChart_factor
    (W : WeierstrassCurve ℤ_[2]) (x y u v A B C : ℤ_[2])
    (hF : localWeierstrassEquation W x y = 4 * A)
    (hX : W.a₁ * y - (3 * x ^ 2 + 2 * W.a₂ * x + W.a₄) = 2 * B)
    (hY : 2 * y + W.a₁ * x + W.a₃ = 2 * C) :
    localWeierstrassEquation W (x + 2 * u) (y + 2 * v) =
      4 * (A + B * u + C * v +
        (v ^ 2 + W.a₁ * u * v - (3 * x + W.a₂) * u ^ 2) -
        2 * u ^ 3) := by
  rw [localWeierstrassEquation_twoChart, hF, hX, hY]
  ring

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

/-- Over an algebraically closed residue extension, the quadratic
tangent cone at the explicit node is a product of two *distinct*
linear directions. This concerns the singular cubic, not the
components of its minimal regular resolution. -/
theorem reducedNodalPoint_geometricallyDistinctTangents
    (W : WeierstrassCurve (ZMod 2)) (x y : ZMod 2)
    (hnode : ReducedNodalPoint W x y)
    {K : Type*} [Field K] [IsAlgClosed K] (φ : ZMod 2 →+* K) :
    ∃ slope other : K, slope ≠ other ∧ ∀ u v : K,
      v ^ 2 + φ W.a₁ * u * v - φ (3 * x + W.a₂) * u ^ 2 =
        (v - slope * u) * (v - other * u) := by
  have ha1 : W.a₁ = 1 := by
    have hcases (z : ZMod 2) : z = 0 ∨ z = 1 := by
      fin_cases z <;> simp
    rcases hcases W.a₁ with hz | hone
    · exact (hnode.2.2.2 hz).elim
    · exact hone
  have htwo : (2 : K) = 0 := by
    have hm := congrArg φ (show (2 : ZMod 2) = 0 by decide)
    simpa only [map_ofNat, map_zero] using hm
  let c : K := φ (3 * x + W.a₂)
  let p : Polynomial K := Polynomial.X ^ 2 + Polynomial.X - Polynomial.C c
  have hcoeff : p.coeff 2 = 1 := by
    simp [p, Polynomial.coeff_X]
  have hpdeg : p.degree ≠ 0 := by
    intro hd
    have hlt : p.degree < (2 : WithBot ℕ) := by rw [hd]; decide
    have hz := Polynomial.coeff_eq_zero_of_degree_lt hlt
    exact one_ne_zero (hcoeff.symm.trans hz)
  obtain ⟨slope, hslope⟩ := IsAlgClosed.exists_root p hpdeg
  have hroot : slope ^ 2 + slope - c = 0 := by
    simpa [Polynomial.IsRoot, p] using hslope
  refine ⟨slope, slope + 1, ?_, ?_⟩
  · intro h
    have h' : slope + (0 : K) = slope + 1 := by simpa using h
    have hzero : (1 : K) = 0 := (add_left_cancel h').symm
    exact one_ne_zero hzero
  · intro u v
    rw [ha1, map_one]
    change v ^ 2 + (1 : K) * u * v - c * u ^ 2 =
      (v - slope * u) * (v - (slope + 1) * u)
    linear_combination -hroot * u ^ 2 +
      htwo * ((slope + 1) * u * v - c * u ^ 2)

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
#print axioms reducedNodalPoint_geometricallyDistinctTangents
#print axioms localWeierstrassEquation_twoChart
#print axioms localWeierstrassEquation_uChart
#print axioms localWeierstrassEquation_vChart
#print axioms reducedNodalPoint_liftEvenCoefficients
#print axioms localWeierstrassEquation_twoChart_factor
#print axioms integralEllipticModelOfUnitDelta
#print axioms unitDeltaGeometricallySmooth
#print axioms LaterNonScalingTateValZeroHasIntegralEllipticModel
#print axioms LaterNonScalingTatePosValHasSingularAffineFibre

end Beal.General