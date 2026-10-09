import Mathlib.Modular.X0Moduli32
import Mathlib.Modular.Rank0_32a1
import Mathlib.Modular.QCurve4413

/-!
# The equation `y² = x³ + 4x`, and the Frey curve in coordinates

LMFDB records `y² = x³ + 4x` as Cremona `32a1` (label `32.a4`) and says
that equation is a model of the modular curve `X₀(32)`. Cremona `32a2`
(label `32.a3`) is `y² = x³ - x`. This file does not construct
`Γ₀(32)\ℍ*`, and it does not prove those identifications. `native_decide`
is not a Cremona table.

What is proved:

* Vélu's cleared identity at `A = 0`, `B = -1` is the passage from
  `x³ - x` to the target coefficients `A' = 0`, `B' = 4`, that is
  `x³ + 4x`.
* `(0, 0)`, `(2, 4)`, and `(2, -4)` lie on `y² = x³ + 4x`. The
  duplication formula sends `(2, ±4)` to `(0, 0)`. At `(0, 0)` the
  numerator `3x² + 4` is `4` while `2y = 0`.
* The only integer `x` with `x(x² + 4) = 0` is `x = 0`. In particular
  `(2, 4)` is an integral point with nonzero `y`, so
  `int_points_are_two_torsion` does not describe this equation.
* LMFDB also records that `32a1` has rank `0` and torsion `ℤ/4ℤ`.
  Rank is not transported along the polynomial identity, so that record
  is not a theorem here. Four rational cusps of `X₀(32)`, from
  `rational_cusp_divisors_32`, are not identified with these points.

The Frey curve `y² = x³ + (4a) x² + 2(a² + b² √(-1)) x`, written in
coordinates `x = u + v √(-1)` and `y = s + t √(-1)`, splits into two
integer equations. The real part carries `- 2 b² v`. A product
`2 * 2 * 8 = 32` is not a cyclic kernel, and these equations are not a
rational point of `X₀(32)`. `no_solution_4413` is not a theorem.
`frey_qcurve_modular` and `ribet_level_lowering_4413` are unchanged.
-/

def x3_plus_4x_model : WeierstrassModel where
  a1 := 0
  a2 := 0
  a3 := 0
  a4 := 4
  a6 := 0

theorem x3_plus_4x_a4 : x3_plus_4x_model.a4 = 4 := rfl

theorem x3_plus_4x_differs_from_x3_minus_x :
    x3_plus_4x_model.a4 = 4 ∧ X0_32_model.a4 = -1 :=
  ⟨x3_plus_4x_a4, recorded_model_a4⟩

/-- Discriminant `-16 (4A³ + 27 B²)` of `y² = x³ + A x + B`. -/
def discShort (A B : Int) : Int :=
  (-16) * (4 * A ^ 3 + 27 * B ^ 2)

theorem disc_x3_plus_4x : discShort 4 0 = -4096 := by
  decide

theorem disc_x3_plus_4x_ne_zero : discShort 4 0 ≠ 0 := by
  decide

/-- `j = -1728 (4A)³ / Δ` at `A = 4`, `B = 0`. -/
theorem j_x3_plus_4x :
    (-1728 : Int) * (4 * 4) ^ 3 / discShort 4 0 = 1728 := by
  decide

theorem x3_minus_x_shape (x : Int) :
    x ^ 3 - x = x ^ 3 + 0 * x ^ 2 + (-1) * x := by
  grind

theorem x3_plus_4x_shape (x : Int) :
    x ^ 3 + 4 * x = x ^ 3 + 0 * x ^ 2 + 4 * x := by
  grind

/-- Target coefficients of Vélu at `A = 0`, `B = -1`: `A' = 0`, `B' = 4`. -/
theorem velu_target_of_x3_minus_x :
    (-2 : Int) * 0 = 0 ∧ (0 : Int) ^ 2 - 4 * (-1) = 4 := by
  decide

/-- Vélu's cleared identity on `y² = x³ - x`. The target is `y² = x³ + 4x`. -/
theorem velu_minus_x (x : Int) :
    let ξ := x ^ 2 + 0 * x + (-1)
    (x ^ 2 - (-1)) ^ 2 - ξ ^ 2 - (-2 * 0) * ξ * x -
        ((0 : Int) ^ 2 - 4 * (-1)) * x ^ 2 = 0 := by
  exact velu_cleared x 0 (-1)

theorem x3_plus_4x_points :
    onCurve x3_plus_4x_model 0 0 = true ∧
      onCurve x3_plus_4x_model 2 4 = true ∧
        onCurve x3_plus_4x_model 2 (-4) = true := by
  decide

/-- Duplication at `(2, 4)`: slope `16 / 8 = 2`, and the double is `(0, 0)`. -/
theorem double_two_four :
    let lam := (3 * (2 : Int) ^ 2 + 4) / (2 * 4)
    lam = 2 ∧ lam ^ 2 - 2 * 2 = 0 ∧ -lam * ((lam ^ 2 - 2 * 2) - 2) - 4 = 0 := by
  decide

theorem double_two_neg_four :
    let lam := (3 * (2 : Int) ^ 2 + 4) / (2 * (-4))
    lam = -2 ∧ lam ^ 2 - 2 * 2 = 0 ∧ -lam * ((lam ^ 2 - 2 * 2) - 2) - (-4) = 0 := by
  decide

theorem vertical_numerator_at_zero : 3 * (0 : Int) ^ 2 + 4 = 4 := by
  decide

theorem x3_plus_4x_factor (x : Int) : x ^ 3 + 4 * x = x * (x ^ 2 + 4) := by
  grind

theorem x_sq_add_four_ne_zero (x : Int) : x ^ 2 + 4 ≠ 0 := by
  have h : 0 ≤ x ^ 2 := Int.sq_nonneg x
  have h4 : 4 ≤ x ^ 2 + 4 := by
    have h0 : (0 : Int) + 4 ≤ x ^ 2 + 4 := Int.add_le_add_right h 4
    simpa using h0
  omega

theorem only_integral_y_zero_on_x3_plus_4x (x y : Int)
    (hcurve : y * y = x ^ 3 + 4 * x) (hy : y = 0) : x = 0 := by
  have h0 : x ^ 3 + 4 * x = 0 := by
    rw [← hcurve, hy]
    simp
  rw [x3_plus_4x_factor] at h0
  rcases Int.mul_eq_zero.mp h0 with hx | hx
  · exact hx
  · exact absurd hx (x_sq_add_four_ne_zero x)

/-- `(2, 4)` lies on `y² = x³ + 4x` and `y` is not `0`. -/
theorem x3_plus_4x_has_nonzero_y :
    (4 : Int) * 4 = 2 ^ 3 + 4 * 2 ∧ (4 : Int) ≠ 0 := by
  decide

/-- Integral points of `y² = x³ - x` still have `y = 0`. The point `(2, 4)` shows
that this classification does not apply to `y² = x³ + 4x`. -/
theorem x3_minus_x_integral_points (x y : Int) (hcurve : y * y = x ^ 3 - x) :
    y = 0 ∧ (x = -1 ∨ x = 0 ∨ x = 1) :=
  int_points_are_two_torsion x y hcurve

/-- Real part of `(u + v √(-1))³ + 4 a (u + v √(-1))² + 2(a² + b² √(-1))(u + v √(-1))`. -/
def freyReal (a b u v : Int) : Int :=
  u ^ 3 - 3 * u * v ^ 2 + 4 * a * (u ^ 2 - v ^ 2) + 2 * a ^ 2 * u - 2 * b ^ 2 * v

/-- Imaginary part of the same product. -/
def freyImag (a b u v : Int) : Int :=
  3 * u ^ 2 * v - v ^ 3 + 8 * a * u * v + 2 * a ^ 2 * v + 2 * b ^ 2 * u

def freyRhs (a b u v : Int) : Int × Int :=
  let x2 := FreyCurve4413.Zsqrt1_mul u v u v
  let x3 := FreyCurve4413.Zsqrt1_mul u v x2.1 x2.2
  let bTerm := FreyCurve4413.Zsqrt1_mul (2 * a ^ 2) (2 * b ^ 2) u v
  (x3.1 + 4 * a * x2.1 + bTerm.1, x3.2 + 4 * a * x2.2 + bTerm.2)

def freyLhs (s t : Int) : Int × Int :=
  FreyCurve4413.Zsqrt1_mul s t s t

theorem freyRhs_expand (a b u v : Int) :
    freyRhs a b u v = (freyReal a b u v, freyImag a b u v) := by
  unfold freyRhs freyReal freyImag FreyCurve4413.Zsqrt1_mul
  apply Prod.ext <;> grind

theorem freyLhs_expand (s t : Int) :
    freyLhs s t = (s ^ 2 - t ^ 2, 2 * s * t) := by
  unfold freyLhs FreyCurve4413.Zsqrt1_mul
  apply Prod.ext <;> grind

/-- The Frey equation after `x = u + v √(-1)` and `y = s + t √(-1)`. -/
def freyOnQi (a b u v s t : Int) : Prop :=
  freyLhs s t = freyRhs a b u v

theorem freyOnQi_expanded (a b u v s t : Int) :
    freyOnQi a b u v s t ↔
      s ^ 2 - t ^ 2 = freyReal a b u v ∧ 2 * s * t = freyImag a b u v := by
  unfold freyOnQi
  constructor
  · intro h
    rw [freyLhs_expand, freyRhs_expand] at h
    exact Prod.ext_iff.mp h
  · intro h
    rw [freyLhs_expand, freyRhs_expand]
    exact Prod.ext h.1 h.2

/-- The four rational cusp divisors of `X₀(32)` and the eight geometric cusps. -/
theorem cusps_32_from_divisor_formula :
    rationalCuspDivisors 32 = [1, 2, 16, 32] ∧ geometricCuspCount 32 = 8 :=
  ⟨rational_cusp_divisors_32, geometric_cusps_32⟩

theorem cusps_64_from_divisor_formula :
    rationalCuspDivisors 64 = [1, 2, 32, 64] ∧ geometricCuspCount 64 = 12 :=
  ⟨rational_cusp_divisors_64, geometric_cusps_64⟩
