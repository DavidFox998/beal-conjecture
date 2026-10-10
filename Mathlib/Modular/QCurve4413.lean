import DarmonMerel.«1_FreyCurve4413»
import Mathlib.Modular.Rank0_32a1

/-!
# ℚ-curve coefficients for `a^4 + b^4 = c^13`

`FreyCurve4413` is Pacetti's model over `ℤ[√-1]`,

```
y² = X³ + (4 a) X² + 2 (a² + b² √(-1)) X.
```

The coefficient of `X²` lies in `ℤ`, so it is fixed by the automorphism
`√(-1) ↦ -√(-1)`. The coefficient of `X` is sent to `2 a² - 2 b² √(-1)`.

Vélu's isogeny with kernel `{(0, 0)}` on `y² = X³ + A X² + B X` has target
coefficients `A' = -2 A` and `B' = A² - 4 B`. On the conjugate those are

```
A' = -8 a,    B' = 8 a² + 8 b² √(-1).
```

The quadratic twist of the original curve by `-2` uses `A ↦ -2 A` and
`B ↦ (-2)² B`, and those are the same two coefficients. That equality is
`velu_target_eq_twist_neg_two`. It is an equality in `ℤ × ℤ`. There is no
`EllipticCurve` type here, and the equality is not a morphism of schemes.

`velu_cleared` is the same formula as a polynomial identity: with
`ξ = x² + A x + B`,

```
(x² - B)² - ξ² - A' ξ x - B' x² = 0.
```

`velu_cleared_gaussian` is that identity for `B ∈ ℤ[√-1]` and `A, x ∈ ℤ`.
Neither identity is a point of `X₀(32)` or `X₀(64)`. Those modular curves
are not constructed.

`discriminant_nonzero_of_ab_ne_zero` says that if `a ≠ 0` and `b ≠ 0`, then
both components of `Δ = 2⁹ (a² + b² √(-1)) c¹³` are nonzero, and so are both
components of the Weierstrass discriminant `16 B² (A² - 4 B)`. The model is
nonsingular. That is not a statement about cusps.

The coefficient shape `Y² = X³ + 2(1+√(-1)) a² X² + (-b⁴ + a⁴ √(-1)) X` is
not the Frey curve of this equation. Pacetti's parameters for
`a⁴ + b⁴ = c¹³` are `4 a` and `2 (a² + b² √(-1))`, because the square
coordinate is `b²`.

`int_points_are_two_torsion` classifies the integral points of the different
model `Y² = X³ - X`. It is restated below so the two models stay distinct.
Cremona `32a1` has torsion `ℤ/4ℤ`. Nothing here proves
`X₀(32)(ℚ)` is the set of cusps, and nothing here proves that
`a⁴ + b⁴ = c¹³` has no nonzero solution.

`frey_qcurve_modular` and `ribet_level_lowering_4413` are not used. The first
returns `Modular E`. The second, given `RhoE13Open` and one conductor shape,
returns one newform. Neither returns a point of `X₀(32)` or `X₀(64)`.
-/

private theorem sq_mul (n : ℤ) : n ^ 2 = n * n := by
  rw [Int.pow_succ, Int.pow_succ]
  simp

private theorem fourth_eq_sq_sq (n : ℤ) : (n ^ 2) ^ 2 = n ^ 4 := by
  grind

private theorem sq_eq_zero (n : ℤ) (h : n ^ 2 = 0) : n = 0 := by
  rw [sq_mul] at h
  rcases Int.mul_eq_zero.mp h with h | h <;> exact h

private theorem fourth_nonneg (n : ℤ) : 0 ≤ n ^ 4 := by
  have hsq : 0 ≤ (n ^ 2) ^ 2 := Int.sq_nonneg (n ^ 2)
  rw [fourth_eq_sq_sq] at hsq
  exact hsq

private theorem fourth_eq_zero (n : ℤ) (h : n ^ 4 = 0) : n = 0 := by
  have heq : (n ^ 2) ^ 2 = n ^ 4 := fourth_eq_sq_sq n
  rw [← heq] at h
  exact sq_eq_zero n (sq_eq_zero (n ^ 2) h)

private theorem add_nonneg_eq_zero {x y : ℤ} (hx : 0 ≤ x) (hy : 0 ≤ y) (h : x + y = 0) :
    x = 0 ∧ y = 0 := by
  have hyx : y = -x := by
    have h1 : -x + (x + y) = -x + 0 := by rw [h]
    rw [← Int.add_assoc] at h1
    rw [Int.add_left_neg] at h1
    rw [Int.zero_add] at h1
    rw [Int.add_zero] at h1
    exact h1
  have hxle : x ≤ 0 := Int.neg_nonneg.mp (by rw [← hyx]; exact hy)
  have hx0 : x = 0 := Int.le_antisymm hxle hx
  refine ⟨hx0, ?_⟩
  rw [hyx, hx0]
  exact Int.neg_zero

private theorem sum_fourth_eq_zero {a b : ℤ} (h : a ^ 4 + b ^ 4 = 0) : a = 0 ∧ b = 0 := by
  have hz := add_nonneg_eq_zero (fourth_nonneg a) (fourth_nonneg b) h
  exact ⟨fourth_eq_zero a hz.1, fourth_eq_zero b hz.2⟩

private theorem int_pow_ne_zero (n : ℤ) (hn : n ≠ 0) (k : Nat) : n ^ k ≠ 0 := by
  induction k with
  | zero =>
    intro h
    simp [Int.pow_zero] at h
  | succ k ih =>
    rw [Int.pow_succ]
    exact Int.mul_ne_zero ih hn

private theorem zero_pow_thirteen : (0 : ℤ) ^ 13 = 0 := by
  decide

/-- Vélu's formula for `y² = x³ + A x² + B x`, cleared of denominators.

`ξ = x² + A x + B`, `A' = -2 A`, and `B' = A² - 4 B`. The identity is what
remains of `Y² = X³ + A' X² + B' X` after substituting
`X = ξ / x` and `Y = y (x² - B) / x²` and using `y² = x ξ`. It holds in `ℤ`
for every `x`, `A`, and `B`, including the zeros of the denominator. -/
theorem velu_cleared (x A B : ℤ) :
    let ξ := x ^ 2 + A * x + B
    (x ^ 2 - B) ^ 2 - ξ ^ 2 - (-2 * A) * ξ * x - (A ^ 2 - 4 * B) * x ^ 2 = 0 := by
  grind

/-- The same cleared identity for `B = Br + Bi √(-1)` and `A, x ∈ ℤ`.

Squares in `ℤ[√-1]` use `FreyCurve4413.Zsqrt1_mul`. The target is still
`A' = -2 A` and `B' = A² - 4 B`, so the imaginary part of `B'` is `-4 Bi`. -/
theorem velu_cleared_gaussian (x A Br Bi : ℤ) :
    let ξr := x ^ 2 + A * x + Br
    let ξi := Bi
    let A' := -2 * A
    let B'r := A ^ 2 - 4 * Br
    let B'i := -4 * Bi
    let d := FreyCurve4413.Zsqrt1_mul (x ^ 2 - Br) (-Bi) (x ^ 2 - Br) (-Bi)
    let s := FreyCurve4413.Zsqrt1_mul ξr ξi ξr ξi
    d.1 - s.1 - A' * ξr * x - B'r * x ^ 2 = 0 ∧
      d.2 - s.2 - A' * ξi * x - B'i * x ^ 2 = 0 := by
  unfold FreyCurve4413.Zsqrt1_mul
  grind

namespace FreyCurve4413

/-- Image of `B_re + B_im √(-1)` under `√(-1) ↦ -√(-1)`. -/
def conj_B (E : FreyCurve4413) : ℤ × ℤ :=
  (E.B_re, -E.B_im)

/-- `σ(B) = 2 a² - 2 b² √(-1)`. -/
theorem conj_B_expand (E : FreyCurve4413) :
    conj_B E = (2 * E.a ^ 2, -(2 * E.b ^ 2)) := by
  unfold conj_B
  rw [E.h_B_re, E.h_B_im]

/-- `A'` for the Vélu target of the conjugate. `A` is fixed by `σ`. -/
def velu_target_A (E : FreyCurve4413) : ℤ :=
  -2 * E.A_int

/-- `B' = A² - 4 σ(B)` in `ℤ[√-1]`. -/
def velu_target_B (E : FreyCurve4413) : ℤ × ℤ :=
  (E.A_int ^ 2 - 4 * (conj_B E).1, -(4 * (conj_B E).2))

/-- Coefficient of `X²` on the quadratic twist by `-2`. -/
def twist_neg_two_A (E : FreyCurve4413) : ℤ :=
  -2 * E.A_int

/-- Coefficient of `X` on the quadratic twist by `-2`: `(-2)² B`. -/
def twist_neg_two_B (E : FreyCurve4413) : ℤ × ℤ :=
  (4 * E.B_re, 4 * E.B_im)

/-- The conjugate's Vélu target has `A' = -8 a`. -/
theorem velu_target_A_eq (E : FreyCurve4413) : velu_target_A E = -8 * E.a := by
  unfold velu_target_A
  rw [E.h_A]
  grind -lia -linarith -ac

/-- The conjugate's Vélu target has `B' = 8 a² + 8 b² √(-1)`. -/
theorem velu_target_B_eq (E : FreyCurve4413) :
    velu_target_B E = (8 * E.a ^ 2, 8 * E.b ^ 2) := by
  unfold velu_target_B conj_B
  rw [E.h_A, E.h_B_re, E.h_B_im]
  apply Prod.ext <;> grind -lia -linarith -ac

/-- The twist by `-2` has `A = -8 a`. -/
theorem twist_neg_two_A_eq (E : FreyCurve4413) : twist_neg_two_A E = -8 * E.a := by
  unfold twist_neg_two_A
  rw [E.h_A]
  grind -lia -linarith -ac

/-- The twist by `-2` has `B = 8 a² + 8 b² √(-1)`. -/
theorem twist_neg_two_B_eq (E : FreyCurve4413) :
    twist_neg_two_B E = (8 * E.a ^ 2, 8 * E.b ^ 2) := by
  unfold twist_neg_two_B
  rw [E.h_B_re, E.h_B_im]
  apply Prod.ext <;> grind -lia -linarith -ac

/-- The 2-isogeny target of the Galois conjugate equals the twist by `-2`.

Both sides are the pair `(-8 a, 8 a² + 8 b² √(-1))`. This is the coefficient
form of the ℚ-curve relation in `DarmonMerel.«1_FreyCurve4413»`. -/
theorem velu_target_eq_twist_neg_two (E : FreyCurve4413) :
    velu_target_A E = twist_neg_two_A E ∧ velu_target_B E = twist_neg_two_B E := by
  refine ⟨?_, ?_⟩
  · rw [velu_target_A_eq E, twist_neg_two_A_eq E]
  · rw [velu_target_B_eq E, twist_neg_two_B_eq E]

/-- If `a ≠ 0` and `b ≠ 0`, both components of `Δ = 2⁹ (a² + b² √(-1)) c¹³`
are nonzero.

A vanishing thirteenth power would force `c = 0`, hence `a⁴ + b⁴ = 0`.
Fourth powers of integers are nonnegative, so both `a` and `b` would vanish. -/
theorem discriminant_nonzero_of_ab_ne_zero (E : FreyCurve4413) (ha : E.a ≠ 0) (hb : E.b ≠ 0) :
    E.discriminant_re ≠ 0 ∧ E.discriminant_im ≠ 0 := by
  have hc : E.c ≠ 0 := by
    intro hz
    have hpow : E.a ^ 4 + E.b ^ 4 = 0 := by
      rw [E.h_eq, hz, zero_pow_thirteen]
    exact ha (sum_fourth_eq_zero hpow).1
  unfold discriminant_re discriminant_im
  refine ⟨?_, ?_⟩
  · exact Int.mul_ne_zero
      (Int.mul_ne_zero (int_pow_ne_zero (2 : ℤ) (by decide) 9) (int_pow_ne_zero E.a ha 2))
      (int_pow_ne_zero E.c hc 13)
  · exact Int.mul_ne_zero
      (Int.mul_ne_zero (int_pow_ne_zero (2 : ℤ) (by decide) 9) (int_pow_ne_zero E.b hb 2))
      (int_pow_ne_zero E.c hc 13)

/-- The same nonvanishing for `Δ = 16 B² (A² - 4 B)`. -/
theorem weierstrass_discriminant_nonzero_of_ab_ne_zero (E : FreyCurve4413)
    (ha : E.a ≠ 0) (hb : E.b ≠ 0) :
    (delta_weierstrass E).1 ≠ 0 ∧ (delta_weierstrass E).2 ≠ 0 := by
  have h := discriminant_eq_weierstrass E
  have hn := discriminant_nonzero_of_ab_ne_zero E ha hb
  refine ⟨?_, ?_⟩
  · rw [← h.1]
    exact hn.1
  · rw [← h.2]
    exact hn.2

end FreyCurve4413

/-- Integral points of `Y² = X³ - X` have `Y = 0` and `X ∈ {-1, 0, 1}`.

This is `int_points_are_two_torsion`. The curve is not `FreyCurve4413`, and
it is not Cremona `32a1`. The three points are not identified with cusps. -/
theorem integral_points_y_cubed_minus_y (x y : ℤ) (hcurve : y * y = x ^ 3 - x) :
    y = 0 ∧ (x = -1 ∨ x = 0 ∨ x = 1) :=
  int_points_are_two_torsion x y hcurve
