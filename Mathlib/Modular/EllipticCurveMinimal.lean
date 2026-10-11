import DarmonMerel.«1_FreyCurve4413»
import Mathlib.Modular.QCurve4413
import Mathlib.Modular.DiscriminantNorm

local notation "ℕ" => Nat

/-!
# Minimal Weierstrass model over `ℤ[√-1]`

`Qi` in this file is a pair of integers `re + im √(-1)`. It is the ring
`ℤ[√-1]`, not the field `ℚ(√-1)`. There is no elliptic-curve library
behind these definitions.

`EllipticCurveMinimal.ofFrey` is the model
`y² = x³ + (4a) x² + 2(a² + b² √(-1)) x`. Its discriminant is Pacetti's
`Δ`, and `ofFrey_discriminant_nonzero` is `discriminant_nonzero_of_ab_ne_zero`.
`c4_c6_discriminant` is the identity `c₄³ - c₆² = 1728 Δ`.

`divisionPsi 13` is the classical division polynomial, built from
`ψ₀ = 0`, `ψ₁ = 1`, `ψ₂ = 2y`, `ψ₃`, `ψ₄`, and the recurrence

```
ψ_{2m+1} = ψ_{m+2} ψ_m³ - ψ_{m-1} ψ_{m+1}³
ψ_{2m} ψ₂ = ψ_m (ψ_{m+2} ψ_{m-1}² - ψ_{m-2} ψ_{m+1}²).
```

Odd values lie in `ℤ[√-1][x]`. `divisionDegree_13` is the count
`(13² - 1) / 2 = 84`. On the curve `y² = x³ - x`, the constructed list
has length `85` and leading coefficient `13`.

`psi13_no_integral_root_on_minus_x` is that statement for the single curve
`y² = x³ - x`: the constant term is a unit, so an integral root would be a
unit, and none of `±1`, `±√(-1)` is a root.

On every curve `y² = x³ + a₂ x² + a₄ x`, `psi13_constant_term` says the
constant term of `ψ₁₃` is `a₄ ^ 42`. For the Frey model that element is
`(2 a² + 2 b² √(-1)) ^ 42`. `frey_psi13_constant_norm` says its norm is
`2 ^ 84 * c ^ 546`, which is `2 ^ 84 * (c ^ 42) ^ 13`. This is not
`N(Δ) = 2¹⁸ (c³)¹³`. The odd part of this norm is a thirteenth power.
The exponent of `2` is `84`, and `13` does not divide `84`.
`psi13_no_integral_root_OPEN` is still not a theorem for a Frey
coefficient triple: an integral root divides `a₄ ^ 42`, and that divisor
set depends on `a` and `b`.

`num_divides_const_mul_den_pow` and `den_divides_lead_mul_num_pow` clear a
ratio `num / den`. The second says `den * s = lead * num ^ (length - 1)`.
`ℤ[√-1]` is not proved to be a UFD here, so Euclid's lemma is not
available and the denominator is not forced to divide the leading
coefficient. On `y² = x³ - x` that leading coefficient is `13`. The
divisors of `13` are sixteen elements, classified in `QiDivisors13.lean`.
`psi13_no_Qi_root_Frey_OPEN` is the statement that the Frey polynomial has
no root in the fraction field. It is not a theorem. A root-free division
polynomial is not a Galois representation and not `RhoE13Open`.
`rho_E_13` stays unresolved. `FreyConductor_OPEN` stays a hypothesis.

`norm_two_adic` is the 2-adic valuation of the field norm:
if `|c| = 2^k m` with `m` odd, then `v₂(N(Δ)) = 18 + 39 k`. Tate's
algorithm is not formalized. `c4_Frey` and `c6_Frey` are the invariants of
this model: both components of `c₄` are divisible by `2⁵`, and both
components of `c₆` are divisible by `2⁸`. Those contents are not conductor
exponents. Pacetti's Lemma 2.8, for `2` ramified in `ℚ(√-1)`, states the
exponent at the prime above `2` lies in `{10, 12}`. That case split is not
a theorem here, and it is not the pair `5`, `6`. `FreyConductor_OPEN` has
no proof. `RhoE13Open` has no term.
`ribet_level_lowering_4413` takes `RhoE13Open`, `pacetti_2_8_open`, and one
integer of shape `32 |c|²` or `64 |c|²`, and returns one level dividing
that integer. The returned `RibetLevel` stores `n = 32 ∨ n = 64` as part
of the axiom. `thirtyTwo_dvd_of_tate_bound` turns that disjunction into
`32 ∣ n`. If `c` is odd, `v₂(N(Δ)) = 18`. That is not the conductor
exponent. `delta_p2_exact_eighteen` is the element valuation `v_π(Δ) = 18`,
from `Δ = 2⁹ (a² + b² √(-1)) c¹³`. `a4_p2_exact_two` is `v_π(a₄) = 2`.
The substitution `u = π`, `r = s = t = 0` needs `v_π(a₄) ≥ 4`, so it is
not integral. `pi_scaling_c_invariants_hold` records that the `c₄` and `Δ`
conditions for that scaling do hold: `4 ≤ 10` and `12 ≤ 18`. `b2Frey` is
`16 a`, so `π⁸` divides `b₂`. A translation does not change `c₄`, `c₆`, or
`Δ`. `four_not_dvd_ten_does_not_block_scaling` records that `4 ∤ 10`
is not the scaling test. `a4AfterPi_p2_exact_three_of_a_odd` and
`a6AfterPi_p2_exact_four_of_a_odd` are the valuations after
`x ↦ x + π` when `a` is odd. `translated_a4_splits_on_trivial_curves`
shows `(1, 0, 1)` and `(0, 1, 1)` share `v_π(c₄) = 10` and `v_π(Δ) = 18`
and have translated `a₄` valuations `3` and `6`. `a2AfterPi_p2_exact_one`
is `v_π(a₂') = 1`. `translated_pi_scaling_blocked_by_a2` blocks pure scaling
(`r = s = t = 0`) by `π^k`. The transformed coefficient is
`a₂ + 3 r - s²`. `a2_plus_three_pi_p2_exact_three` is
`v_π(a₂' + 3 π) = 3`, so `r = π` meets the `a₂` slot for `u = π`.
When `c` is odd, `pi_r_pi_a4_numerator_p2_exact_two` is valuation `2`,
below `4`, so that substitution is not integral. `v_π(a₂') = 1` does not
prove `MinimalModelAt2`. `higher_u_blocked_by_delta` is the bound
`12 k ≤ 18` failing for `k ≥ 2`, since `Δ` scales by `u¹²` for every
`r, s, t`. The remaining case `u = π` is not eight residue classes:
`a2_shift_by_pi_same_residue` has `r = 0` and `r = π` congruent modulo `π`,
with `a₂` valuations `1` and `3`. On `(0, 1, 1)`, a pure shift
`a₆ ↦ a₆ - t²` does not reach valuation `6`, because `v_π(a₆') = 5` is odd
(`y_shift_keeps_valuation_five`). On `(0, 1, 1)`, `v_π(a₄') = 6` does not block
`u = π`, and `v_π(a₆') = 5` does. That value `5` is below Dokchitser's
`n = 4` bound `v(a₆) ≥ 7`. `t_zero_and_pi_split_a6` has `t = 0` and
`t = π` congruent modulo `π`, with `a₆` numerators `0` and `-π²`: `π⁶`
divides `0`, and `v_π(-π²) = 2`. `trivialB_a6_splits_mod_pi_sq` has
`r = π` and `r = π + π²` congruent modulo `π²`, with `a₆` valuations `5`
and `8`, so `v ≥ 6` holds for one and fails for the other. Both have
`v_π(a₂) = 1`. Sixteen tuples with `r` modulo `π²` and `s, t` modulo `π`
do not decide integrality. `trivialB_second_pi_shift_a6_stays_five` is a
second translation `x ↦ x + π` on `(0, 1, 1)`: the `a₂` slot has valuation
`3`, the `a₄` numerator has valuation `2`, and `v_π(a₆)` stays `5`.
`no_integral_u_pi_of_c_odd` is the case split on `v_π(r)` and `v_π(t)` for
every `r, s, t`, when `c` is odd: valuation `0` fails `a₃` or `a₄`,
valuation `1` fails `a₂`, and valuation at least `2` fails `a₄`.
`pi_sq_u_blocks_delta` is the case `v_π(u) ≥ 2`. Both quantify over `ℤ[i]`.
`trivialB_dokchitser_n4_inputs` is the shift
`r = π²` on `(0, 1, 1)`, with `v_π(a₆) = 8`. `even_a_dokchitser_n4_inputs`
is the same pair of `x`-shifts for every even `a` when `c` is odd:
`v_π(a₂) = 1`, `v_π(a₄) = 4`, `π⁷` divides `a₆` and `b₆`, and `v_π(D) = 8`.
Those are the numerical inputs for `n = 4`, not a Kodaira symbol, not a wild
part, and not the conductor exponent. When `a` is odd, the further shift
`y ↦ y + π²` gives `v_π(a₃) = 4`, `v_π(a₄) = 3`, and `v_π(a₆) = 5`
(`a_odd_after_pi_sq_valuations`), and `b6AfterPiSq_p2_exact_eight` together
with `quadDiscAfterPiSq_p2_exact_six` give `v_π(b₆) = 8` and `v_π(D) = 6`.
Those are the numerical inputs of Dokchitser's criterion for type `I₂*`.
The criterion is not formalized, and neither is a wild part. They are not
the conductor exponent. Ogg's formula is the tame conductor. On type `I_n*`
the table uses discriminant valuation `n + 6`. `even_a_cubic_ten` and
`a_odd_cubic_eight` put Dokchitser's cubic discriminant and the Weierstrass
discriminant on the translated model: `v_π(d) = n + 6` and `v_π(Δ) = 18`.
`swan_vanishes_open` is the unproved claim that the Swan conductor vanishes,
and `pacetti_2_8_open` is the unproved claim that the sum of the two sealed
parts lies in `{10, 12}`.
`no_qi_integral_change_of_c_odd` quantifies over `ℚ(i)`, not only `ℤ[i]`.
`v_π(a₂) ≥ 4`, so `v_π(s) = -1` is a real case, and a denominator coprime to
`π` is not an element of `ℤ[i]`. For odd `c`, `v_π(u) ≥ 2` makes
`v_π(Δ') < 0`, and `v_π(u) = 1` fails `a₁`, `a₂`, `a₃`, or `a₄`.
`qiLocalMinimalAtPi_of_c_odd` is that split: no change with `v_π(u) ≥ 1` is
integral at `π`, hence none has a smaller discriminant. `MinimalModelAt2` is
this predicate. For odd `c` it is a theorem. `minimal_even_c_open` is false:
`8⁴ + 8⁴ = 2¹³`, and `u = π`, `r = s = t = 0` is integral at `π` and lowers
`Δ`. `c_odd_of_coprime` is `gcd(|a|, |b|) = 1 → c` odd, so a primitive pair
is already covered by the odd-`c` minimality theorem. `(8, 8, 2)` is not
coprime. `IsINStar` records Dokchitser's coefficient bounds for even `n` on a
`u = 1` translate of the Frey equation. `even_a_weierstrass_eq_delta` and
`a_odd_weierstrass_eq_delta` show that this translate has the same
Weierstrass discriminant. For odd `c`, `v_π(Δ) = 18`. Dokchitser's `d` is
the cubic discriminant: `v_π(d) = 10` after the even-`a` shifts
(`even_a_cubic_ten`, and `Δ = 16 d`) and `v_π(d) = 8` after the odd-`a`
shifts (`a_odd_cubic_eight`). Those are the values `n + 6` for `n = 4` and
`n = 2`. Tate's Step 7 is not formalized. `FTameAtPi` and `SwanAtPi` are
sealed. `swan_vanishes_open` is not a theorem.
`pi_ten_principal` is `(-√(-1))^5 · π^10 = 32` with norm `2^10`, and
`pi_twelve_principal` is the same for `64` and `2^12`. The principal
ideals agree. That equality does not produce `n = 32 ∨ n = 64`. The
sufficient test `v(c₄) < 4` or `v(Δ) < 12` does not apply.
`MinimalModelAt2` is `qiLocalMinimalAtPi`, proved for odd `c`. The even-`c`
statement is `not_minimal_even_c_open`.
-/

structure GaussInt where
  re : Int
  im : Int
deriving DecidableEq, Repr

/-- Integral element of `ℤ[√-1]`. Not an element of the field `ℚ(√-1)`. -/
abbrev Qi := GaussInt

namespace GaussInt

instance : Inhabited GaussInt := ⟨⟨0, 0⟩⟩

def zero : GaussInt := ⟨0, 0⟩
def one : GaussInt := ⟨1, 0⟩
def ofInt (n : Int) : GaussInt := ⟨n, 0⟩
def add (z w : GaussInt) : GaussInt := ⟨z.re + w.re, z.im + w.im⟩
def sub (z w : GaussInt) : GaussInt := ⟨z.re - w.re, z.im - w.im⟩
def neg (z : GaussInt) : GaussInt := ⟨-z.re, -z.im⟩
def mul (z w : GaussInt) : GaussInt :=
  ⟨z.re * w.re - z.im * w.im, z.re * w.im + z.im * w.re⟩
def smul (n : Int) (z : GaussInt) : GaussInt := ⟨n * z.re, n * z.im⟩
def norm (z : GaussInt) : Int := z.re * z.re + z.im * z.im

/-- Quotient `z / d` in `ℚ(√-1)`, truncated to `ℤ[√-1]` by integer division.
Exact when `norm d` divides both components of `z * conjugate(d)`. -/
def divExact (z d : GaussInt) : GaussInt :=
  let num := mul z ⟨d.re, -d.im⟩
  let n := norm d
  ⟨num.re / n, num.im / n⟩

theorem mul_neg (z w : GaussInt) : mul z (neg w) = neg (mul z w) := by
  cases z
  cases w
  simp [mul, neg, Int.mul_neg]
  constructor <;> omega

@[simp] theorem zero_add (z : GaussInt) : add zero z = z := by
  cases z
  simp [add, zero]

@[simp] theorem add_zero (z : GaussInt) : add z zero = z := by
  cases z
  simp [add, zero]

@[simp] theorem zero_mul (z : GaussInt) : mul zero z = zero := by
  cases z
  simp [mul, zero]

@[simp] theorem mul_zero (z : GaussInt) : mul z zero = zero := by
  cases z
  simp [mul, zero]

@[simp] theorem one_mul (z : GaussInt) : mul one z = z := by
  cases z
  simp [mul, one]

@[simp] theorem mul_one (z : GaussInt) : mul z one = z := by
  cases z
  simp [mul, one]

@[simp] theorem neg_zero : neg zero = zero := by
  simp [neg, zero]

theorem neg_neg (z : GaussInt) : neg (neg z) = z := by
  cases z
  simp [neg]

theorem neg_mul (z w : GaussInt) : mul (neg z) w = neg (mul z w) := by
  cases z
  cases w
  simp [mul, neg, Int.neg_mul]
  constructor <;> omega

theorem mul_assoc (a b c : GaussInt) : mul (mul a b) c = mul a (mul b c) := by
  cases a
  cases b
  cases c
  simp [mul]
  constructor <;> grind

theorem mul_comm (a b : GaussInt) : mul a b = mul b a := by
  cases a
  cases b
  simp [mul]
  constructor <;> grind

theorem add_assoc (a b c : GaussInt) : add (add a b) c = add a (add b c) := by
  cases a
  cases b
  cases c
  simp [add]
  constructor <;> omega

theorem add_comm (a b : GaussInt) : add a b = add b a := by
  cases a
  cases b
  simp [add]
  constructor <;> omega

theorem sub_eq_add_neg (a b : GaussInt) : sub a b = add a (neg b) := by
  cases a
  cases b
  simp [sub, add, neg, Int.sub_eq_add_neg]

theorem mul_add (a b c : GaussInt) : mul a (add b c) = add (mul a b) (mul a c) := by
  cases a
  cases b
  cases c
  simp [mul, add]
  constructor <;> grind

theorem add_mul (a b c : GaussInt) : mul (add a b) c = add (mul a c) (mul b c) := by
  cases a
  cases b
  cases c
  simp [mul, add]
  constructor <;> grind

/-- `z ^ n` in `ℤ[√-1]`. -/
def npow (z : GaussInt) : Nat → GaussInt
  | 0 => one
  | n + 1 => mul z (npow z n)

theorem npow_zero (z : GaussInt) : npow z 0 = one := rfl

theorem npow_succ (z : GaussInt) (n : Nat) : npow z (n + 1) = mul z (npow z n) := rfl

theorem npow_one (z : GaussInt) : npow z 1 = z := by
  simp [npow, mul_one]

theorem npow_add (z : GaussInt) (m n : Nat) : npow z (m + n) = mul (npow z m) (npow z n) := by
  induction m with
  | zero => simp [npow, one_mul]
  | succ m ih =>
    simp [Nat.succ_add, npow, ih, mul_assoc]

theorem npow_npow (z : GaussInt) (m n : Nat) : npow (npow z m) n = npow z (m * n) := by
  induction n with
  | zero => simp [npow, Nat.mul_zero]
  | succ n ih =>
    rw [npow_succ, ih, ← npow_add, Nat.mul_succ, Nat.add_comm]

theorem npow_neg_three (z : GaussInt) : npow (neg z) 3 = neg (npow z 3) := by
  simp [npow, neg_mul, mul_neg, neg_neg, mul_one]

theorem norm_mul (z w : GaussInt) : norm (mul z w) = norm z * norm w := by
  cases z
  cases w
  simp [norm, mul]
  grind

theorem self_sq_natAbs (n : Int) : n * n = ↑(n.natAbs * n.natAbs) := by
  cases n with
  | ofNat k => rfl
  | negSucc k =>
    rw [Int.negSucc_eq, Int.neg_mul_neg, Int.natAbs_neg]
    have h : (↑(k + 1) : Int) = ↑k + 1 := by simp
    rw [← h, Int.natAbs_natCast]
    rfl

theorem nat_cast_add (a b : Nat) : (↑(a + b) : Int) = ↑a + ↑b := by
  simp

theorem norm_nonneg (z : GaussInt) : 0 ≤ norm z := by
  rw [norm, self_sq_natAbs z.re, self_sq_natAbs z.im, ← nat_cast_add]
  exact Int.natCast_nonneg _

theorem natAbs_sq_sum (re im : Int) :
    re * re + im * im = ↑(re.natAbs * re.natAbs + im.natAbs * im.natAbs) := by
  rw [self_sq_natAbs re, self_sq_natAbs im, nat_cast_add]

theorem norm_eq_zero_iff (z : GaussInt) : norm z = 0 ↔ z = zero := by
  constructor
  · intro h
    cases z with
    | mk re im =>
      have hsum : re.natAbs * re.natAbs + im.natAbs * im.natAbs = 0 := by
        have hcast := natAbs_sq_sum re im
        have hn : re * re + im * im = 0 := by simpa [norm] using h
        rw [hcast] at hn
        exact Int.ofNat.inj hn
      have hre : re.natAbs * re.natAbs = 0 := by
        have hle : re.natAbs * re.natAbs ≤ re.natAbs * re.natAbs + im.natAbs * im.natAbs :=
          Nat.le_add_right _ _
        rw [hsum] at hle
        exact Nat.eq_zero_of_le_zero hle
      have him : im.natAbs * im.natAbs = 0 := by
        have hle : im.natAbs * im.natAbs ≤ re.natAbs * re.natAbs + im.natAbs * im.natAbs :=
          Nat.le_add_left _ _
        rw [hsum] at hle
        exact Nat.eq_zero_of_le_zero hle
      simp [zero, Int.natAbs_eq_zero.mp ((Nat.mul_eq_zero.mp hre).elim id id),
        Int.natAbs_eq_zero.mp ((Nat.mul_eq_zero.mp him).elim id id)]
  · intro h
    simp [h, norm, zero]

theorem norm_npow (z : GaussInt) (n : Nat) : norm (npow z n) = norm z ^ n := by
  induction n with
  | zero => simp [npow, norm, one]
  | succ n ih =>
    rw [npow_succ, norm_mul, ih, Int.pow_succ, Int.mul_comm]

theorem mul_eq_zero {z w : GaussInt} : mul z w = zero ↔ z = zero ∨ w = zero := by
  constructor
  · intro h
    have hn : norm z * norm w = 0 := by
      rw [← norm_mul, h]
      simp [norm, zero]
    rcases Int.mul_eq_zero.mp hn with h0 | h0
    · exact Or.inl ((norm_eq_zero_iff z).mp h0)
    · exact Or.inr ((norm_eq_zero_iff w).mp h0)
  · rintro (h | h) <;> simp [h]

theorem npow_eq_zero {z : GaussInt} {n : Nat} (hn : n ≠ 0) (h : npow z n = zero) :
    z = zero := by
  induction n with
  | zero => exact absurd rfl hn
  | succ n ih =>
    rw [npow_succ, mul_eq_zero] at h
    cases n with
    | zero =>
      rcases h with h | h
      · exact h
      · simp [npow, one, zero] at h
    | succ n =>
      rcases h with h | h
      · exact h
      · exact ih (by omega) h

/-- The only solutions of `re² + im² = 1` in `ℤ` are the four units. -/
theorem norm_one_units (z : GaussInt) (h : norm z = 1) :
    z = ⟨1, 0⟩ ∨ z = ⟨-1, 0⟩ ∨ z = ⟨0, 1⟩ ∨ z = ⟨0, -1⟩ := by
  cases z with
  | mk re im =>
    have hsum : re.natAbs * re.natAbs + im.natAbs * im.natAbs = 1 := by
      have hcast := natAbs_sq_sum re im
      have hn : re * re + im * im = 1 := by simpa [norm] using h
      rw [hcast] at hn
      exact Int.ofNat.inj hn
    have hi2 : im.natAbs * im.natAbs ≤ 1 := by
      have : im.natAbs * im.natAbs ≤ re.natAbs * re.natAbs + im.natAbs * im.natAbs :=
        Nat.le_add_left _ _
      omega
    have hr2 : re.natAbs * re.natAbs ≤ 1 := by
      have : re.natAbs * re.natAbs ≤ re.natAbs * re.natAbs + im.natAbs * im.natAbs :=
        Nat.le_add_right _ _
      omega
    have hi : im.natAbs = 0 ∨ im.natAbs = 1 := by
      match him : im.natAbs with
      | 0 => exact Or.inl rfl
      | 1 => exact Or.inr rfl
      | n + 2 =>
        have h4 : 4 ≤ (n + 2) * (n + 2) :=
          Nat.mul_le_mul (show 2 ≤ n + 2 by omega) (show 2 ≤ n + 2 by omega)
        have hsq : (n + 2) * (n + 2) ≤ 1 := by
          simpa [him] using hi2
        have : 4 ≤ 1 := Nat.le_trans h4 hsq
        omega
    have hr : re.natAbs = 0 ∨ re.natAbs = 1 := by
      match hre : re.natAbs with
      | 0 => exact Or.inl rfl
      | 1 => exact Or.inr rfl
      | n + 2 =>
        have h4 : 4 ≤ (n + 2) * (n + 2) :=
          Nat.mul_le_mul (show 2 ≤ n + 2 by omega) (show 2 ≤ n + 2 by omega)
        have hsq : (n + 2) * (n + 2) ≤ 1 := by
          simpa [hre] using hr2
        have : 4 ≤ 1 := Nat.le_trans h4 hsq
        omega
    have hone (n : Int) (hn : n.natAbs = 1) : n = 1 ∨ n = -1 := by
      cases n with
      | ofNat k =>
        simp [Int.natAbs] at hn
        subst hn
        exact Or.inl rfl
      | negSucc k =>
        simp [Int.natAbs] at hn
        have : k = 0 := by omega
        subst this
        exact Or.inr rfl
    rcases hr with hr | hr <;> rcases hi with hi | hi
    · simp [hr, hi] at hsum
    · have hre0 : re = 0 := Int.natAbs_eq_zero.mp hr
      rcases hone im hi with him | him
      · exact Or.inr (Or.inr (Or.inl (by simp [hre0, him])))
      · exact Or.inr (Or.inr (Or.inr (by simp [hre0, him])))
    · have him0 : im = 0 := Int.natAbs_eq_zero.mp hi
      rcases hone re hr with hre | hre
      · exact Or.inl (by simp [hre, him0])
      · exact Or.inr (Or.inl (by simp [hre, him0]))
    · simp [hr, hi] at hsum

theorem norm_eq_one_of_mul_norm_one (z q : GaussInt) (h : norm (mul z q) = 1) :
    norm z = 1 := by
  rw [norm_mul] at h
  have hz : 0 ≤ norm z := norm_nonneg z
  have hq : 0 ≤ norm q := norm_nonneg q
  have hnat : (norm z).toNat * (norm q).toNat = 1 := by
    have hmul : (norm z).toNat * (norm q).toNat = (norm z * norm q).toNat :=
      (Int.toNat_mul hz hq).symm
    rw [hmul, h]
    rfl
  have hzn : (norm z).toNat = 1 := Nat.eq_one_of_mul_eq_one_right hnat
  have hz' : norm z = ↑(norm z).toNat := (Int.toNat_of_nonneg hz).symm
  simpa [hzn] using hz'

theorem add_eq_zero_neg {c z : GaussInt} (h : add c z = zero) : c = neg z := by
  have hr := congrArg re h
  have hi := congrArg im h
  cases c
  cases z
  simp [add, zero, neg] at hr hi ⊢
  constructor <;> omega

end GaussInt

/-- Drop coefficients of `x^k` for large `k` that are zero. Constant term first. -/
def dropHighZeros : List GaussInt → List GaussInt
  | [] => []
  | a :: p =>
    match dropHighZeros p with
    | [] => if a == GaussInt.zero then [] else [a]
    | b :: t => a :: b :: t

def gaussTrim (p : List GaussInt) : List GaussInt :=
  match dropHighZeros p with
  | [] => [GaussInt.zero]
  | t => t

def gaussAdd : List GaussInt → List GaussInt → List GaussInt
  | [], q => q
  | p, [] => p
  | a :: p, b :: q => GaussInt.add a b :: gaussAdd p q

def gaussPadd (p q : List GaussInt) : List GaussInt :=
  gaussTrim (gaussAdd p q)

def gaussPmul : List GaussInt → List GaussInt → List GaussInt
  | [], _ => [GaussInt.zero]
  | _, [] => [GaussInt.zero]
  | a :: p, q =>
    gaussPadd (q.map (GaussInt.mul a)) (GaussInt.zero :: gaussPmul p q)

/-- Constant term of a polynomial stored constant-first. -/
def ct (p : List GaussInt) : GaussInt := p.headD GaussInt.zero

theorem ct_dropHighZeros (p : List GaussInt) :
    ct (dropHighZeros p) = ct p := by
  induction p with
  | nil => rfl
  | cons a ps ih =>
    cases h : dropHighZeros ps with
    | nil =>
      by_cases ha : a = GaussInt.zero
      · simp [dropHighZeros, h, ha, ct, GaussInt.zero]
      · simp [dropHighZeros, h, ha, ct]
    | cons b t =>
      simp [dropHighZeros, h, ct]

theorem ct_trim (p : List GaussInt) : ct (gaussTrim p) = ct p := by
  cases h : dropHighZeros p with
  | nil =>
    have hct : ct p = GaussInt.zero := by
      have := ct_dropHighZeros p
      rw [h] at this
      simpa [ct] using this.symm
    simpa [gaussTrim, h, ct] using hct.symm
  | cons b t =>
    have hct : ct (b :: t) = ct p := by
      have := ct_dropHighZeros p
      rw [h] at this
      exact this
    simp [gaussTrim, h, hct]

theorem ct_gaussAdd (p q : List GaussInt) : ct (gaussAdd p q) = GaussInt.add (ct p) (ct q) := by
  induction p generalizing q with
  | nil => simp [gaussAdd, ct, GaussInt.zero_add]
  | cons a ps ih =>
    cases q with
    | nil => simp [gaussAdd, ct, GaussInt.add_zero]
    | cons b qs => simp [gaussAdd, ct]

theorem ct_padd (p q : List GaussInt) : ct (gaussPadd p q) = GaussInt.add (ct p) (ct q) := by
  simp [gaussPadd, ct_trim, ct_gaussAdd]

theorem ct_map_mul (a : GaussInt) (q : List GaussInt) :
    ct (q.map (GaussInt.mul a)) = GaussInt.mul a (ct q) := by
  cases q with
  | nil => simp [ct, GaussInt.mul_zero]
  | cons b qs => simp [ct]

theorem ct_map_neg (p : List GaussInt) : ct (p.map GaussInt.neg) = GaussInt.neg (ct p) := by
  cases p with
  | nil => simp [ct, GaussInt.neg_zero]
  | cons a ps => simp [ct]

theorem ct_pmul (p q : List GaussInt) : ct (gaussPmul p q) = GaussInt.mul (ct p) (ct q) := by
  induction p generalizing q with
  | nil => simp [gaussPmul, ct, GaussInt.zero_mul]
  | cons a ps ih =>
    cases q with
    | nil => simp [gaussPmul, ct, GaussInt.mul_zero]
    | cons b qs =>
      have hdef : gaussPmul (a :: ps) (b :: qs) =
          gaussPadd ((b :: qs).map (GaussInt.mul a))
            (GaussInt.zero :: gaussPmul ps (b :: qs)) := rfl
      rw [hdef, ct_padd, ct_map_mul]
      simp [ct, GaussInt.add_zero]

/-- Horner evaluation, constant term first. -/
def evalPoly : List GaussInt → GaussInt → GaussInt
  | [], _ => GaussInt.zero
  | c :: cs, r => GaussInt.add c (GaussInt.mul r (evalPoly cs r))

/-- An integral root divides the constant term.

If `c₀ + r q(r) = 0`, then `r * (-q(r)) = c₀`. This does not bound roots
in `ℚ(√-1)` that are not in `ℤ[√-1]`. -/
theorem integral_root_divides_constant
    (c : GaussInt) (cs : List GaussInt) (r : GaussInt)
    (h : evalPoly (c :: cs) r = GaussInt.zero) :
    GaussInt.mul r (GaussInt.neg (evalPoly cs r)) = c := by
  have h' : GaussInt.add c (GaussInt.mul r (evalPoly cs r)) = GaussInt.zero := by
    simpa [evalPoly] using h
  have hc : c = GaussInt.neg (GaussInt.mul r (evalPoly cs r)) :=
    GaussInt.add_eq_zero_neg h'
  rw [hc, GaussInt.mul_neg]

/-- `den ^ deg * p(num / den)`, constant term first.

The empty list contributes `0`. A cons cell `c :: cs` contributes
`c * den ^ (length cs) + num *` the value on `cs`.
-/
def evalCleared : List GaussInt → GaussInt → GaussInt → GaussInt
  | [], _, _ => GaussInt.zero
  | c :: cs, num, den =>
    GaussInt.add (GaussInt.mul c (GaussInt.npow den cs.length))
      (GaussInt.mul num (evalCleared cs num den))

/-- If the cleared value vanishes, the numerator divides
`constant * den ^ degree`. -/
theorem num_divides_const_mul_den_pow
    (c : GaussInt) (cs : List GaussInt) (num den : GaussInt)
    (h : evalCleared (c :: cs) num den = GaussInt.zero) :
    GaussInt.mul num (GaussInt.neg (evalCleared cs num den)) =
      GaussInt.mul c (GaussInt.npow den cs.length) := by
  have h' : GaussInt.add (GaussInt.mul c (GaussInt.npow den cs.length))
      (GaussInt.mul num (evalCleared cs num den)) = GaussInt.zero := by
    simpa [evalCleared] using h
  have hc := GaussInt.add_eq_zero_neg h'
  rw [GaussInt.mul_neg, ← hc]

/-- Split `evalCleared` into `lead * num ^ (length - 1) + den * r`. -/
theorem evalCleared_split_lead (p : List GaussInt) (num den : GaussInt) (hne : p ≠ []) :
    ∃ r, evalCleared p num den =
      GaussInt.add
        (GaussInt.mul (p.getLastD GaussInt.zero) (GaussInt.npow num (p.length - 1)))
        (GaussInt.mul den r) := by
  induction p with
  | nil => exact absurd rfl hne
  | cons c cs ih =>
    cases cs with
    | nil =>
      refine ⟨GaussInt.zero, ?_⟩
      simp [evalCleared, GaussInt.npow, GaussInt.mul_one, GaussInt.mul_zero,
        GaussInt.add_zero, List.getLastD]
    | cons d ds =>
      rcases ih (by simp) with ⟨r, hr⟩
      have hk : (d :: ds).length = (d :: ds).length - 1 + 1 := by
        have : 0 < (d :: ds).length := by simp
        omega
      have hlast : (c :: d :: ds).getLastD GaussInt.zero =
          (d :: ds).getLastD GaussInt.zero := by
        have h1 : (c :: d :: ds).getLastD GaussInt.zero = (d :: ds).getLastD c :=
          List.getLastD_cons
        have h2 : (d :: ds).getLastD c = ds.getLastD d := List.getLastD_cons
        have h3 : (d :: ds).getLastD GaussInt.zero = ds.getLastD d := List.getLastD_cons
        rw [h1, h2, ← h3]
      have hlenp : (c :: d :: ds).length - 1 = (d :: ds).length := by
        simp [List.length]
      let lead := (d :: ds).getLastD GaussInt.zero
      let k := (d :: ds).length
      let km := k - 1
      have hkpow : k = km + 1 := by
        simpa [k, km] using hk
      refine ⟨GaussInt.add (GaussInt.mul c (GaussInt.npow den km))
          (GaussInt.mul num r), ?_⟩
      rw [evalCleared, hr, hlast, hlenp]
      have hpowNum : GaussInt.npow num k = GaussInt.mul num (GaussInt.npow num km) := by
        rw [hkpow, GaussInt.npow_succ]
      have hpowDen : GaussInt.npow den k = GaussInt.mul den (GaussInt.npow den km) := by
        rw [hkpow, GaussInt.npow_succ]
      let A := GaussInt.mul lead (GaussInt.npow num km)
      let B := GaussInt.mul den r
      let C := GaussInt.mul c (GaussInt.npow den k)
      have hexpand : GaussInt.mul num (GaussInt.add A B) =
          GaussInt.add (GaussInt.mul num A) (GaussInt.mul num B) :=
        GaussInt.mul_add _ _ _
      have hleadPow : GaussInt.mul num A = GaussInt.mul lead (GaussInt.npow num k) := by
        rw [show A = GaussInt.mul lead (GaussInt.npow num km) from rfl]
        rw [← GaussInt.mul_assoc, GaussInt.mul_comm num lead, GaussInt.mul_assoc, ← hpowNum]
      have hC : C = GaussInt.mul den (GaussInt.mul c (GaussInt.npow den km)) := by
        rw [show C = GaussInt.mul c (GaussInt.npow den k) from rfl, hpowDen,
          ← GaussInt.mul_assoc, GaussInt.mul_comm c den, GaussInt.mul_assoc]
      have hB : GaussInt.mul num B = GaussInt.mul den (GaussInt.mul num r) := by
        rw [show B = GaussInt.mul den r from rfl, ← GaussInt.mul_assoc,
          GaussInt.mul_comm num den, GaussInt.mul_assoc]
      have hsum : GaussInt.add C (GaussInt.mul num B) =
          GaussInt.mul den (GaussInt.add (GaussInt.mul c (GaussInt.npow den km))
            (GaussInt.mul num r)) := by
        rw [hC, hB, ← GaussInt.mul_add]
      have hswap : GaussInt.add C (GaussInt.add (GaussInt.mul num A) (GaussInt.mul num B)) =
          GaussInt.add (GaussInt.mul num A)
            (GaussInt.add C (GaussInt.mul num B)) := by
        rw [← GaussInt.add_assoc, GaussInt.add_comm C (GaussInt.mul num A), GaussInt.add_assoc]
      change GaussInt.add C
          (GaussInt.mul num (GaussInt.add
            (GaussInt.mul lead (GaussInt.npow num km)) (GaussInt.mul den r))) =
        GaussInt.add (GaussInt.mul lead (GaussInt.npow num k))
          (GaussInt.mul den (GaussInt.add (GaussInt.mul c (GaussInt.npow den km))
            (GaussInt.mul num r)))
      rw [show GaussInt.mul lead (GaussInt.npow num km) = A from rfl,
        show GaussInt.mul den r = B from rfl, hexpand, hswap, hleadPow, hsum]

/-- If the cleared value vanishes, the denominator divides
`lead * num ^ (length - 1)`.

This is divisibility in `ℤ[√-1]` after clearing. It is not Euclid's lemma,
and it does not conclude that the denominator divides the leading coefficient.
-/
theorem den_divides_lead_mul_num_pow
    (p : List GaussInt) (num den : GaussInt) (hne : p ≠ [])
    (h : evalCleared p num den = GaussInt.zero) :
    ∃ s, GaussInt.mul den s =
      GaussInt.mul (p.getLastD GaussInt.zero) (GaussInt.npow num (p.length - 1)) := by
  rcases evalCleared_split_lead p num den hne with ⟨r, hr⟩
  rw [hr] at h
  have hc := GaussInt.add_eq_zero_neg h
  refine ⟨GaussInt.neg r, ?_⟩
  rw [GaussInt.mul_neg, ← hc]

structure EllipticCurveMinimal where
  a1 : Qi
  a2 : Qi
  a3 : Qi
  a4 : Qi
  a6 : Qi

namespace EllipticCurveMinimal

def ofFrey (E : FreyCurve4413) : EllipticCurveMinimal where
  a1 := GaussInt.zero
  a2 := GaussInt.ofInt E.A_int
  a3 := GaussInt.zero
  a4 := ⟨E.B_re, E.B_im⟩
  a6 := GaussInt.zero

def c6Of (A Br Bi : Int) : GaussInt :=
  ⟨-64 * A ^ 3 + 288 * A * Br, 288 * A * Bi⟩

def gmul (z w : GaussInt) : GaussInt :=
  GaussInt.mul z w

/-- `c₄ = 16 A² - 48 B` for `y² = x³ + A x² + B x`, with `B` in `ℤ[√-1]`. -/
def c4Pair (A Br Bi : Int) : Int × Int :=
  (16 * A ^ 2 - 48 * Br, -48 * Bi)

/-- `Δ = 16 B² (A² - 4 B)`. -/
def discPair (A Br Bi : Int) : Int × Int :=
  let B2 := FreyCurve4413.Zsqrt1_mul Br Bi Br Bi
  let gap := (A ^ 2 - 4 * Br, -(4 * Bi))
  let prod := FreyCurve4413.Zsqrt1_mul B2.1 B2.2 gap.1 gap.2
  (16 * prod.1, 16 * prod.2)

def discOf (A Br Bi : Int) : GaussInt :=
  ⟨(discPair A Br Bi).1, (discPair A Br Bi).2⟩

/-- `c₄³ - c₆² = 1728 Δ` for `y² = x³ + A x² + B x`. -/
theorem c4_c6_discriminant (A Br Bi : Int) :
    GaussInt.sub (gmul (⟨(c4Pair A Br Bi).1, (c4Pair A Br Bi).2⟩)
        (gmul (⟨(c4Pair A Br Bi).1, (c4Pair A Br Bi).2⟩)
          (⟨(c4Pair A Br Bi).1, (c4Pair A Br Bi).2⟩)))
      (gmul (c6Of A Br Bi) (c6Of A Br Bi)) =
        GaussInt.smul 1728 (discOf A Br Bi) := by
  simp [gmul, GaussInt.mul, GaussInt.sub, GaussInt.smul, c6Of, discOf, c4Pair, discPair,
    FreyCurve4413.Zsqrt1_mul]
  constructor <;> grind

/-- Both components of `Δ` are nonzero when `a` and `b` are nonzero. -/
theorem ofFrey_discriminant_nonzero (E : FreyCurve4413) (ha : E.a ≠ 0) (hb : E.b ≠ 0) :
    E.discriminant_re ≠ 0 ∧ E.discriminant_im ≠ 0 :=
  FreyCurve4413.discriminant_nonzero_of_ab_ne_zero E ha hb

end EllipticCurveMinimal

/-- Count `(p² - 1) / 2` of the x-coordinates of the nonzero `p`-torsion. -/
def divisionDegree (p : Nat) : Nat :=
  (p * p - 1) / 2

theorem divisionDegree_13 : divisionDegree 13 = 84 := by
  decide

private def y2Poly (a2 a4 a6 : GaussInt) : List GaussInt :=
  [a6, a4, a2, GaussInt.one]

private def emul (a2 a4 a6 : GaussInt) (p q : List GaussInt × List GaussInt) :
    List GaussInt × List GaussInt :=
  let y2 := y2Poly a2 a4 a6
  let U := gaussPadd (gaussPmul p.1 q.1) (gaussPmul (gaussPmul p.2 q.2) y2)
  let V := gaussPadd (gaussPmul p.1 q.2) (gaussPmul p.2 q.1)
  (U, V)

private def epow (a2 a4 a6 : GaussInt) (p : List GaussInt × List GaussInt) : Nat →
    List GaussInt × List GaussInt
  | 0 => ([GaussInt.one], [GaussInt.zero])
  | n + 1 => emul a2 a4 a6 p (epow a2 a4 a6 p n)

private def polySub (p q : List GaussInt) : List GaussInt :=
  gaussPadd p (q.map GaussInt.neg)

private def shiftOne (shift : Nat) (q : GaussInt) : List GaussInt :=
  List.replicate shift GaussInt.zero ++ [q]

private def shiftMul (shift : Nat) (q : GaussInt) (den : List GaussInt) : List GaussInt :=
  List.replicate shift GaussInt.zero ++ den.map (GaussInt.mul q)

private def polyDivFuel (fuel : Nat) (num den : List GaussInt) : List GaussInt :=
  match fuel with
  | 0 => [GaussInt.zero]
  | fuel + 1 =>
    let num := gaussTrim num
    let den := gaussTrim den
    if num.length < den.length then [GaussInt.zero]
    else
      let q := GaussInt.divExact (num.getLastD GaussInt.zero) (den.getLastD GaussInt.zero)
      let shift := num.length - den.length
      let lower := polyDivFuel fuel (polySub num (shiftMul shift q den)) den
      gaussPadd (shiftOne shift q) lower

private def bInv (a2 a4 a6 : GaussInt) : GaussInt × GaussInt × GaussInt × GaussInt :=
  let b2 := GaussInt.smul 4 a2
  let b4 := GaussInt.smul 2 a4
  let b6 := GaussInt.smul 4 a6
  let b8 := GaussInt.sub (GaussInt.mul (GaussInt.smul 4 a2) a6) (GaussInt.mul a4 a4)
  (b2, b4, b6, b8)

private def psiAt (n : Nat) (prev : List (List GaussInt × List GaussInt))
    (a2 a4 a6 : GaussInt) : List GaussInt × List GaussInt :=
  let get (i : Nat) : List GaussInt × List GaussInt :=
    prev.getD i ([GaussInt.zero], [GaussInt.zero])
  if n == 0 then ([GaussInt.zero], [GaussInt.zero])
  else if n == 1 then ([GaussInt.one], [GaussInt.zero])
  else if n == 2 then ([GaussInt.zero], [GaussInt.ofInt 2])
  else if n == 3 then
    let (b2, b4, b6, b8) := bInv a2 a4 a6
    ([b8, GaussInt.smul 3 b6, GaussInt.smul 3 b4, b2, GaussInt.ofInt 3], [GaussInt.zero])
  else if n == 4 then
    let (b2, b4, b6, b8) := bInv a2 a4 a6
    let poly : List GaussInt :=
      [GaussInt.sub (GaussInt.mul b4 b8) (GaussInt.mul b6 b6),
        GaussInt.sub (GaussInt.mul b2 b8) (GaussInt.mul b4 b6),
        GaussInt.smul 10 b8, GaussInt.smul 10 b6, GaussInt.smul 5 b4, b2,
        GaussInt.ofInt 2]
    emul a2 a4 a6 ([GaussInt.zero], [GaussInt.ofInt 2]) (poly, [GaussInt.zero])
  else if n % 2 == 1 then
    let m := (n - 1) / 2
    let left := emul a2 a4 a6 (get (m + 2)) (epow a2 a4 a6 (get m) 3)
    let right := emul a2 a4 a6 (get (m - 1)) (epow a2 a4 a6 (get (m + 1)) 3)
    (polySub left.1 right.1, polySub left.2 right.2)
  else
    let m := n / 2
    let left := emul a2 a4 a6 (get (m + 2)) (epow a2 a4 a6 (get (m - 1)) 2)
    let right := emul a2 a4 a6 (get (m - 2)) (epow a2 a4 a6 (get (m + 1)) 2)
    let prod := emul a2 a4 a6 (get m) (polySub left.1 right.1, polySub left.2 right.2)
    let den := gaussPmul [GaussInt.ofInt 2] (y2Poly a2 a4 a6)
    ([GaussInt.zero], polyDivFuel (prod.1.length + 2) prod.1 den)

private def divisionTower (n : Nat) (a2 a4 a6 : GaussInt) :
    List (List GaussInt × List GaussInt) :=
  match n with
  | 0 => []
  | n + 1 =>
    let prev := divisionTower n a2 a4 a6
    prev ++ [psiAt n prev a2 a4 a6]

/-- `ψₙ` for `y² = x³ + a₂ x² + a₄ x + a₆`.

For odd `n` this is the polynomial in `x`. For even `n` the returned list is
the coefficient of `y`, and `ψₙ = y *` that polynomial. Coefficients lie in
`ℤ[√-1]`. -/
def divisionPsi (n : Nat) (a2 a4 a6 : GaussInt) : List GaussInt :=
  let tower := divisionTower (n + 1) a2 a4 a6
  let uv := tower.getD n ([GaussInt.zero], [GaussInt.zero])
  if n % 2 == 0 then uv.2 else uv.1

/-- `ψ₁₃` as a list of coefficients in `ℤ[√-1]`, constant term first. -/
def psi13 (a2 a4 a6 : GaussInt) : List Qi :=
  divisionPsi 13 a2 a4 a6

private theorem ct_polySub (p q : List GaussInt) :
    ct (polySub p q) = GaussInt.sub (ct p) (ct q) := by
  rw [polySub, ct_padd, ct_map_neg, GaussInt.sub_eq_add_neg]

private theorem ct_emul_u (a2 a4 : GaussInt) (p q : List GaussInt × List GaussInt) :
    ct (emul a2 a4 GaussInt.zero p q).1 = GaussInt.mul (ct p.1) (ct q.1) := by
  rw [emul, y2Poly, ct_padd, ct_pmul, ct_pmul, ct_pmul]
  simp [ct, GaussInt.mul_zero, GaussInt.add_zero]

private theorem ct_emul_v (a2 a4 : GaussInt) (p q : List GaussInt × List GaussInt) :
    ct (emul a2 a4 GaussInt.zero p q).2 =
      GaussInt.add (GaussInt.mul (ct p.1) (ct q.2)) (GaussInt.mul (ct p.2) (ct q.1)) := by
  rw [emul, ct_padd, ct_pmul, ct_pmul]

private theorem ct_epow_odd (a2 a4 : GaussInt) (uv : List GaussInt × List GaussInt)
    (hv : ct uv.2 = GaussInt.zero) (n : Nat) :
    ct (epow a2 a4 GaussInt.zero uv n).1 = GaussInt.npow (ct uv.1) n ∧
      ct (epow a2 a4 GaussInt.zero uv n).2 = GaussInt.zero := by
  induction n with
  | zero => simp [epow, ct, GaussInt.npow]
  | succ n ih =>
    have hstep : epow a2 a4 GaussInt.zero uv (n + 1) =
        emul a2 a4 GaussInt.zero uv (epow a2 a4 GaussInt.zero uv n) := rfl
    refine ⟨?_, ?_⟩
    · rw [hstep, ct_emul_u, ih.1, GaussInt.npow_succ]
    · rw [hstep, ct_emul_v, ih.2, hv]
      simp

private theorem ct_epow_even_u (a2 a4 : GaussInt) (uv : List GaussInt × List GaussInt)
    (hu : ct uv.1 = GaussInt.zero) (n : Nat) (hn : n ≠ 0) :
    ct (epow a2 a4 GaussInt.zero uv n).1 = GaussInt.zero := by
  cases n with
  | zero => exact absurd rfl hn
  | succ n =>
    have hstep : epow a2 a4 GaussInt.zero uv (n + 1) =
        emul a2 a4 GaussInt.zero uv (epow a2 a4 GaussInt.zero uv n) := rfl
    rw [hstep, ct_emul_u, hu, GaussInt.zero_mul]

private def uvAt (a2 a4 : GaussInt) (k : Nat) : List GaussInt × List GaussInt :=
  (divisionTower (k + 1) a2 a4 GaussInt.zero).getLastD
    ([GaussInt.zero], [GaussInt.zero])

private theorem length_divisionTower (n : Nat) (a2 a4 a6 : GaussInt) :
    (divisionTower n a2 a4 a6).length = n := by
  induction n with
  | zero => rfl
  | succ n ih => simp [divisionTower, ih]

private theorem getD_append_left {α : Type} (l1 l2 : List α) (i : Nat) (d : α)
    (hi : i < l1.length) : (l1 ++ l2).getD i d = l1.getD i d := by
  induction l1 generalizing i with
  | nil => simp at hi
  | cons a l ih =>
    cases i with
    | zero => rfl
    | succ i =>
      have hi' : i < l.length := by
        simp [List.length] at hi
        omega
      simpa [List.getD] using ih i hi'

private theorem getD_last {α : Type} (l : List α) (a d : α) :
    (l ++ [a]).getD l.length d = a := by
  induction l with
  | nil => simp
  | cons b l ih => simp [ih]

private theorem uvAt_eq (a2 a4 : GaussInt) (k : Nat) :
    uvAt a2 a4 k = psiAt k (divisionTower k a2 a4 GaussInt.zero) a2 a4 GaussInt.zero := by
  simp [uvAt, divisionTower, List.getLastD_concat]

private theorem tower_get (a2 a4 : GaussInt) (i k : Nat) (hik : i < k) :
    (divisionTower k a2 a4 GaussInt.zero).getD i ([GaussInt.zero], [GaussInt.zero]) =
      uvAt a2 a4 i := by
  induction k generalizing i with
  | zero => omega
  | succ k ih =>
    rw [divisionTower]
    by_cases h : i = k
    · subst h
      have hlast := getD_last (divisionTower i a2 a4 GaussInt.zero)
        (psiAt i (divisionTower i a2 a4 GaussInt.zero) a2 a4 GaussInt.zero)
        ([GaussInt.zero], [GaussInt.zero])
      rw [length_divisionTower] at hlast
      rw [hlast]
      exact (uvAt_eq a2 a4 i).symm
    · rw [getD_append_left _ _ _ _ (by simpa [length_divisionTower] using (by omega : i < k))]
      exact ih i (by omega)

private theorem tower_get_opt (a2 a4 : GaussInt) (i k : Nat) (hik : i < k) :
    ((divisionTower k a2 a4 GaussInt.zero)[i]?).getD ([GaussInt.zero], [GaussInt.zero]) =
      uvAt a2 a4 i := by
  simpa using tower_get a2 a4 i k hik

private theorem const_shape (a2 a4 : GaussInt) (k : Nat) :
    (k % 2 = 0 → ct (uvAt a2 a4 k).1 = GaussInt.zero) ∧
      (k % 2 = 1 → ct (uvAt a2 a4 k).2 = GaussInt.zero) := by
  induction k using Nat.strongRecOn with
  | ind k ih =>
    rw [uvAt_eq]
    by_cases h0 : k = 0
    · subst h0
      simp [psiAt, ct]
    by_cases h1 : k = 1
    · subst h1
      simp [psiAt, ct]
    by_cases h2 : k = 2
    · subst h2
      simp [psiAt, ct]
    by_cases h3 : k = 3
    · subst h3
      simp [psiAt, ct, bInv]
    by_cases h4 : k = 4
    · subst h4
      simp [psiAt]
      rw [ct_emul_u]
      simp [ct]
    · refine ⟨?_, ?_⟩
      · intro he
        simp [psiAt, h0, h1, h2, h3, h4, he, ct]
      · intro ho
        have hmlt : (k - 1) / 2 < k := by omega
        have hm2 : (k - 1) / 2 + 2 < k := by omega
        have hm1 : (k - 1) / 2 + 1 < k := by omega
        have hmm : (k - 1) / 2 - 1 < k := by omega
        simp [psiAt, h0, h1, h2, h3, h4, ho, ct_polySub, ct_emul_v,
          tower_get_opt a2 a4 ((k - 1) / 2) k hmlt,
          tower_get_opt a2 a4 ((k - 1) / 2 + 2) k hm2,
          tower_get_opt a2 a4 ((k - 1) / 2 + 1) k hm1,
          tower_get_opt a2 a4 ((k - 1) / 2 - 1) k hmm]
        by_cases hme : ((k - 1) / 2) % 2 = 0
        · have hUm2 : ct (uvAt a2 a4 ((k - 1) / 2 + 2)).1 = GaussInt.zero :=
            (ih _ hm2).1 (by omega)
          have hUm : ct (uvAt a2 a4 ((k - 1) / 2)).1 = GaussInt.zero :=
            (ih _ hmlt).1 hme
          have hVm1 : ct (uvAt a2 a4 ((k - 1) / 2 - 1)).2 = GaussInt.zero :=
            (ih _ hmm).2 (by omega)
          have hVp : ct (uvAt a2 a4 ((k - 1) / 2 + 1)).2 = GaussInt.zero :=
            (ih _ hm1).2 (by omega)
          have hEpU : ct (epow a2 a4 GaussInt.zero (uvAt a2 a4 ((k - 1) / 2)) 3).1 =
              GaussInt.zero :=
            ct_epow_even_u a2 a4 _ hUm 3 (by decide)
          have hEpV : ct (epow a2 a4 GaussInt.zero (uvAt a2 a4 ((k - 1) / 2 + 1)) 3).2 =
              GaussInt.zero :=
            (ct_epow_odd a2 a4 _ hVp 3).2
          simp [hUm2, hEpU, hVm1, hEpV, GaussInt.zero_mul, GaussInt.mul_zero,
            GaussInt.add_zero, GaussInt.zero_add, GaussInt.sub_eq_add_neg, GaussInt.neg_zero]
        · have hmo : ((k - 1) / 2) % 2 = 1 := by omega
          have hVm : ct (uvAt a2 a4 ((k - 1) / 2)).2 = GaussInt.zero :=
            (ih _ hmlt).2 hmo
          have hVm2 : ct (uvAt a2 a4 ((k - 1) / 2 + 2)).2 = GaussInt.zero :=
            (ih _ hm2).2 (by omega)
          have hUm1 : ct (uvAt a2 a4 ((k - 1) / 2 - 1)).1 = GaussInt.zero :=
            (ih _ hmm).1 (by omega)
          have hUp : ct (uvAt a2 a4 ((k - 1) / 2 + 1)).1 = GaussInt.zero :=
            (ih _ hm1).1 (by omega)
          have hEpV : ct (epow a2 a4 GaussInt.zero (uvAt a2 a4 ((k - 1) / 2)) 3).2 =
              GaussInt.zero :=
            (ct_epow_odd a2 a4 _ hVm 3).2
          have hEpU : ct (epow a2 a4 GaussInt.zero (uvAt a2 a4 ((k - 1) / 2 + 1)) 3).1 =
              GaussInt.zero :=
            ct_epow_even_u a2 a4 _ hUp 3 (by decide)
          simp [hVm2, hEpV, hUm1, hEpU, GaussInt.zero_mul, GaussInt.mul_zero,
            GaussInt.add_zero, GaussInt.zero_add, GaussInt.sub_eq_add_neg, GaussInt.neg_zero]

private theorem ct_odd_rec (a2 a4 : GaussInt) (k : Nat) (hk : k % 2 = 1) (h5 : 5 ≤ k) :
    ct (uvAt a2 a4 k).1 =
      if ((k - 1) / 2) % 2 = 0 then
        GaussInt.neg (GaussInt.mul (ct (uvAt a2 a4 ((k - 1) / 2 - 1)).1)
          (GaussInt.npow (ct (uvAt a2 a4 ((k - 1) / 2 + 1)).1) 3))
      else
        GaussInt.mul (ct (uvAt a2 a4 ((k - 1) / 2 + 2)).1)
          (GaussInt.npow (ct (uvAt a2 a4 ((k - 1) / 2)).1) 3) := by
  have h0 : k ≠ 0 := by omega
  have h1 : k ≠ 1 := by omega
  have h2 : k ≠ 2 := by omega
  have h3 : k ≠ 3 := by omega
  have h4 : k ≠ 4 := by omega
  have hmlt : (k - 1) / 2 < k := by omega
  have hm2 : (k - 1) / 2 + 2 < k := by omega
  have hm1 : (k - 1) / 2 + 1 < k := by omega
  have hmm : (k - 1) / 2 - 1 < k := by omega
  rw [uvAt_eq]
  simp [psiAt, h0, h1, h2, h3, h4, hk, ct_polySub, ct_emul_u,
    tower_get_opt a2 a4 ((k - 1) / 2) k hmlt,
    tower_get_opt a2 a4 ((k - 1) / 2 + 2) k hm2,
    tower_get_opt a2 a4 ((k - 1) / 2 + 1) k hm1,
    tower_get_opt a2 a4 ((k - 1) / 2 - 1) k hmm]
  by_cases hme : ((k - 1) / 2) % 2 = 0
  · simp [hme]
    have hUm : ct (uvAt a2 a4 ((k - 1) / 2)).1 = GaussInt.zero :=
      (const_shape a2 a4 _).1 hme
    have hVp : ct (uvAt a2 a4 ((k - 1) / 2 + 1)).2 = GaussInt.zero :=
      (const_shape a2 a4 _).2 (by omega)
    have hEpU : ct (epow a2 a4 GaussInt.zero (uvAt a2 a4 ((k - 1) / 2)) 3).1 =
        GaussInt.zero :=
      ct_epow_even_u a2 a4 _ hUm 3 (by decide)
    have hEp := ct_epow_odd a2 a4 (uvAt a2 a4 ((k - 1) / 2 + 1)) hVp 3
    simp [hEpU, hEp.1, GaussInt.mul_zero, GaussInt.sub_eq_add_neg, GaussInt.zero_add,
      GaussInt.npow]
  · have hmo : ((k - 1) / 2) % 2 = 1 := by omega
    simp [hme, hmo]
    have hUp : ct (uvAt a2 a4 ((k - 1) / 2 + 1)).1 = GaussInt.zero :=
      (const_shape a2 a4 _).1 (by omega)
    have hVm : ct (uvAt a2 a4 ((k - 1) / 2)).2 = GaussInt.zero :=
      (const_shape a2 a4 _).2 hmo
    have hEpU : ct (epow a2 a4 GaussInt.zero (uvAt a2 a4 ((k - 1) / 2 + 1)) 3).1 =
        GaussInt.zero :=
      ct_epow_even_u a2 a4 _ hUp 3 (by decide)
    have hEp := ct_epow_odd a2 a4 (uvAt a2 a4 ((k - 1) / 2)) hVm 3
    simp [hEpU, hEp.1, GaussInt.mul_zero, GaussInt.sub_eq_add_neg, GaussInt.add_zero,
      GaussInt.neg_zero, GaussInt.npow]

private theorem ct_divisionPsi_odd (a2 a4 : GaussInt) (n : Nat) (hn : n % 2 = 1) :
    ct (divisionPsi n a2 a4 GaussInt.zero) = ct (uvAt a2 a4 n).1 := by
  have hb : (n % 2 == 0) = false := by
    rw [beq_eq_false_iff_ne]
    omega
  simp [divisionPsi, hb, tower_get_opt a2 a4 n (n + 1) (by omega)]

private theorem ct_at_one (a2 a4 : GaussInt) : ct (uvAt a2 a4 1).1 = GaussInt.one := by
  simp [uvAt_eq, psiAt, ct]

private theorem ct_at_three (a2 a4 : GaussInt) :
    ct (uvAt a2 a4 3).1 = GaussInt.neg (GaussInt.mul a4 a4) := by
  simp [uvAt_eq, psiAt, bInv, ct, GaussInt.sub_eq_add_neg, GaussInt.mul_zero, GaussInt.zero_add]

private theorem npow_sq (z : GaussInt) : GaussInt.npow z 2 = GaussInt.mul z z := by
  rw [GaussInt.npow_succ, GaussInt.npow_one]

/-- On `y² = x³ + a₂ x² + a₄ x`, the constant term of `ψ₁₃` is `a₄ ^ 42`.

The value does not depend on `a₂`. It is not the field norm of the discriminant.
-/
theorem psi13_constant_term (a2 a4 : GaussInt) :
    ct (psi13 a2 a4 GaussInt.zero) = GaussInt.npow a4 42 := by
  have h5 : ct (uvAt a2 a4 5).1 =
      GaussInt.neg (GaussInt.mul (ct (uvAt a2 a4 1).1)
        (GaussInt.npow (ct (uvAt a2 a4 3).1) 3)) := by
    simpa using ct_odd_rec a2 a4 5 (by decide) (by decide)
  have h7 : ct (uvAt a2 a4 7).1 =
      GaussInt.mul (ct (uvAt a2 a4 5).1) (GaussInt.npow (ct (uvAt a2 a4 3).1) 3) := by
    simpa using ct_odd_rec a2 a4 7 (by decide) (by decide)
  have h13 : ct (uvAt a2 a4 13).1 =
      GaussInt.neg (GaussInt.mul (ct (uvAt a2 a4 5).1)
        (GaussInt.npow (ct (uvAt a2 a4 7).1) 3)) := by
    simpa using ct_odd_rec a2 a4 13 (by decide) (by decide)
  have hc3p : ct (uvAt a2 a4 3).1 = GaussInt.neg (GaussInt.npow a4 2) := by
    rw [ct_at_three, ← npow_sq]
  have hc5 : ct (uvAt a2 a4 5).1 = GaussInt.npow a4 6 := by
    rw [h5, ct_at_one, hc3p, GaussInt.one_mul, GaussInt.npow_neg_three, GaussInt.npow_npow,
      GaussInt.neg_neg]
  have hc7 : ct (uvAt a2 a4 7).1 = GaussInt.neg (GaussInt.npow a4 12) := by
    rw [h7, hc5, hc3p, GaussInt.npow_neg_three, GaussInt.npow_npow, GaussInt.mul_neg,
      ← GaussInt.npow_add]
  rw [psi13, ct_divisionPsi_odd a2 a4 13 (by decide), h13, hc5, hc7,
    GaussInt.npow_neg_three, GaussInt.npow_npow, GaussInt.mul_neg, GaussInt.neg_neg,
    ← GaussInt.npow_add]

/-- `ψ₃` has degree 4 and leading coefficient 3. -/
theorem psi3_degree (a2 a4 a6 : GaussInt) :
    (divisionPsi 3 a2 a4 a6).length = 5 ∧
      (divisionPsi 3 a2 a4 a6).getLastD GaussInt.zero = GaussInt.ofInt 3 := by
  simp [divisionPsi, divisionTower, psiAt, bInv]

/-- `psi13_no_integral_root_OPEN`.

The statement that `ψ₁₃` has no root in `ℤ[√-1]`. Proved below only for
`y² = x³ - x`. Not a theorem for a general Frey coefficient triple. A root
in `ℚ(√-1)` that is not integral is a further statement, also not proved.
-/
def psi13_no_integral_root_OPEN (a2 a4 a6 : GaussInt) : Prop :=
  ∀ r : GaussInt, evalPoly (psi13 a2 a4 a6) r ≠ GaussInt.zero

/-- On `y² = x³ - x`, the constructed `ψ₁₃` has degree 84 and leading coefficient 13. -/
theorem psi13_on_minus_x :
    let p := psi13 (GaussInt.ofInt 0) (GaussInt.ofInt (-1)) (GaussInt.ofInt 0)
    p.length = 85 ∧ p.getLastD GaussInt.zero = GaussInt.ofInt 13 := by
  native_decide

/-- Constant term and the four units, on `y² = x³ - x`. -/
theorem psi13_minus_x_units :
    let p := psi13 (GaussInt.ofInt 0) (GaussInt.ofInt (-1)) (GaussInt.ofInt 0)
    (p.headD GaussInt.zero = ⟨1, 0⟩ ∨ p.headD GaussInt.zero = ⟨-1, 0⟩) ∧
      evalPoly p ⟨1, 0⟩ ≠ GaussInt.zero ∧
      evalPoly p ⟨-1, 0⟩ ≠ GaussInt.zero ∧
      evalPoly p ⟨0, 1⟩ ≠ GaussInt.zero ∧
      evalPoly p ⟨0, -1⟩ ≠ GaussInt.zero := by
  native_decide

/-- `13 = (2 + 3√-1)(2 - 3√-1)` in `ℤ[√-1]`.

The leading coefficient of `ψ₁₃` on `y² = x³ - x` is `13`. The factor
`2 + 3√-1` has norm `13`, so it is not a unit. A root in `ℚ(√-1)` whose
denominator is that factor is compatible with the leading coefficient and
need not lie in `ℤ[√-1]`. -/
theorem thirteen_split :
    GaussInt.mul ⟨2, 3⟩ ⟨2, -3⟩ = GaussInt.ofInt 13 := by
  native_decide

theorem thirteen_factor_norm : GaussInt.norm ⟨2, 3⟩ = 13 := by
  native_decide

theorem eval_head (p : List GaussInt) (r : GaussInt) (hne : p ≠ [])
    (h : evalPoly p r = GaussInt.zero) :
    GaussInt.mul r (GaussInt.neg (evalPoly p.tail r)) = p.headD GaussInt.zero := by
  cases p with
  | nil => exact absurd rfl hne
  | cons c cs =>
    simpa [List.headD] using integral_root_divides_constant c cs r h

/-- `ψ₁₃` has no root in `ℤ[√-1]` on `y² = x³ - x`.

The constant term is `±1`, so `integral_root_divides_constant` forces a root
to be a unit. This curve is not the Frey model of a solution of
`a⁴ + b⁴ = c¹³`.
-/
theorem psi13_no_integral_root_on_minus_x :
    psi13_no_integral_root_OPEN (GaussInt.ofInt 0) (GaussInt.ofInt (-1)) (GaussInt.ofInt 0) := by
  intro r hr
  let p := psi13 (GaussInt.ofInt 0) (GaussInt.ofInt (-1)) (GaussInt.ofInt 0)
  have hdata := psi13_minus_x_units
  have hlen : p.length = 85 := psi13_on_minus_x.1
  have hne : p ≠ [] := by
    intro hempty
    simp [hempty] at hlen
  have hdiv := eval_head p r hne hr
  have hc : p.headD GaussInt.zero = ⟨1, 0⟩ ∨
      p.headD GaussInt.zero = ⟨-1, 0⟩ := hdata.1
  have hnorm : GaussInt.norm r = 1 := by
    have hmul : GaussInt.norm (GaussInt.mul r (GaussInt.neg (evalPoly p.tail r))) = 1 := by
      rw [hdiv]
      rcases hc with hc | hc
      · rw [hc]; simp [GaussInt.norm]
      · rw [hc]; simp [GaussInt.norm]
    exact GaussInt.norm_eq_one_of_mul_norm_one r _ hmul
  have hunit := GaussInt.norm_one_units r hnorm
  rcases hunit with h | h | h | h
  · rw [h] at hr
    exact hdata.2.1 hr
  · rw [h] at hr
    exact hdata.2.2.1 hr
  · rw [h] at hr
    exact hdata.2.2.2.1 hr
  · rw [h] at hr
    exact hdata.2.2.2.2 hr

namespace FreyCurve4413

theorem norm_natAbs_local (E : FreyCurve4413) :
    (E.discriminant_re ^ 2 + E.discriminant_im ^ 2).natAbs =
      2 ^ 18 * E.c.natAbs ^ 39 := by
  rw [discriminant_norm E]
  rw [Int.natAbs_mul, Int.natAbs_pow, Int.natAbs_pow]
  rfl

theorem nat_odd_pow (m n : Nat) (h : m % 2 = 1) : m ^ n % 2 = 1 := by
  induction n with
  | zero => simp
  | succ n ih =>
    rw [Nat.pow_succ, Nat.mul_mod, h, ih]

/-- `v₂(N(Δ)) = 18 + 39 k` when `|c| = 2^k m` and `m` is odd.

This is the 2-adic valuation of the field norm `2¹⁸ c³⁹`. It is not the
valuation of a minimal discriminant at the prime `1 + √(-1)`, and it is not
Tate's algorithm. The conductor is not proved to be `32 c²` or `64 c²`.
-/
theorem norm_two_adic (E : FreyCurve4413) (k m : Nat)
    (hc : E.c.natAbs = 2 ^ k * m) (hodd : m % 2 = 1) :
    (E.discriminant_re ^ 2 + E.discriminant_im ^ 2).natAbs =
        2 ^ (18 + 39 * k) * m ^ 39 ∧
      m ^ 39 % 2 = 1 := by
  have hnorm := norm_natAbs_local E
  rw [hc, Nat.mul_pow, ← Nat.pow_mul] at hnorm
  have hcomb : 2 ^ 18 * (2 ^ (k * 39) * m ^ 39) = 2 ^ (18 + k * 39) * m ^ 39 := by
    rw [← Nat.mul_assoc, Nat.pow_add]
  have hexp : 18 + k * 39 = 18 + 39 * k := by
    rw [Nat.mul_comm]
  rw [hcomb, hexp] at hnorm
  exact ⟨hnorm, nat_odd_pow m 39 hodd⟩

/-- The constant term of the Frey `ψ₁₃` is `(2 a² + 2 b² √(-1)) ^ 42`. -/
theorem frey_psi13_constant_term (E : FreyCurve4413) :
    ct (psi13 (GaussInt.ofInt E.A_int) ⟨E.B_re, E.B_im⟩ GaussInt.zero) =
      GaussInt.npow ⟨E.B_re, E.B_im⟩ 42 :=
  psi13_constant_term (GaussInt.ofInt E.A_int) ⟨E.B_re, E.B_im⟩

theorem frey_a4_norm (E : FreyCurve4413) :
    GaussInt.norm ⟨E.B_re, E.B_im⟩ = 4 * E.c ^ 13 := by
  have h : E.a ^ 4 + E.b ^ 4 = E.c ^ 13 := E.h_eq
  simp [GaussInt.norm, E.h_B_re, E.h_B_im]
  grind

/-- `N(a₄ ^ 42) = 2 ^ 84 * c ^ 546`.

This is the field norm of the constant term of `ψ₁₃`, not `N(Δ) = 2¹⁸ c³⁹`.
-/
theorem frey_psi13_constant_norm (E : FreyCurve4413) :
    GaussInt.norm (GaussInt.npow ⟨E.B_re, E.B_im⟩ 42) =
      (2 : Int) ^ 84 * E.c ^ 546 := by
  rw [GaussInt.norm_npow, frey_a4_norm, Int.mul_pow, ← Int.pow_mul]
  rw [show (4 : Int) = (2 : Int) ^ 2 by decide, ← Int.pow_mul]

/-- The odd part of that norm is a thirteenth power. The power of `2` is not. -/
theorem frey_constant_norm_odd_part (E : FreyCurve4413) :
    GaussInt.norm (GaussInt.npow ⟨E.B_re, E.B_im⟩ 42) =
      (2 : Int) ^ 84 * (E.c ^ 42) ^ 13 := by
  rw [frey_psi13_constant_norm, ← Int.pow_mul]

theorem frey_constant_two_exponent_not_divisible_by_thirteen : ¬ (13 ∣ 84) := by
  decide

/-- A Gaussian divisor of the constant term has norm dividing `2 ^ 84 * c ^ 546`. -/
theorem frey_constant_divisor_norm (E : FreyCurve4413) (z w : GaussInt)
    (h : GaussInt.mul z w = GaussInt.npow ⟨E.B_re, E.B_im⟩ 42) :
    GaussInt.norm z ∣ (2 : Int) ^ 84 * E.c ^ 546 := by
  have hn : GaussInt.norm z * GaussInt.norm w =
      (2 : Int) ^ 84 * E.c ^ 546 := by
    rw [← GaussInt.norm_mul, h, frey_psi13_constant_norm]
  exact ⟨GaussInt.norm w, hn.symm⟩

private theorem int_sq (t : Int) : t ^ 2 = t * t := by
  rw [Int.pow_succ, Int.pow_succ]
  simp

theorem frey_a4_eq_zero_iff (E : FreyCurve4413) :
    ⟨E.B_re, E.B_im⟩ = GaussInt.zero ↔ E.a = 0 ∧ E.b = 0 := by
  constructor
  · intro h
    have hre : E.B_re = 0 := by
      have := congrArg GaussInt.re h
      simpa [GaussInt.zero] using this
    have him : E.B_im = 0 := by
      have := congrArg GaussInt.im h
      simpa [GaussInt.zero] using this
    rw [E.h_B_re] at hre
    rw [E.h_B_im] at him
    rcases Int.mul_eq_zero.mp hre with h2 | ha
    · exact absurd h2 (by decide)
    · rcases Int.mul_eq_zero.mp him with h2 | hb
      · exact absurd h2 (by decide)
      · rw [int_sq] at ha
        rw [int_sq] at hb
        exact ⟨(Int.mul_eq_zero.mp ha).elim id id, (Int.mul_eq_zero.mp hb).elim id id⟩
  · intro h
    simp [GaussInt.zero, h.1, h.2, E.h_B_re, E.h_B_im]

theorem frey_psi13_constant_ne_zero (E : FreyCurve4413) (hb : E.b ≠ 0) :
    ct (psi13 (GaussInt.ofInt E.A_int) ⟨E.B_re, E.B_im⟩ GaussInt.zero) ≠
      GaussInt.zero := by
  rw [frey_psi13_constant_term]
  intro h
  have hz : ⟨E.B_re, E.B_im⟩ = GaussInt.zero :=
    GaussInt.npow_eq_zero (by decide) h
  have hb0 : E.b = 0 := ((frey_a4_eq_zero_iff E).mp hz).2
  exact hb hb0

/-- No root of the Frey `ψ₁₃` in the fraction field of `ℤ[√-1]`.

`evalCleared` is `den ^ deg * ψ₁₃(num / den)`. This proposition is not
proved. The constant term is `a₄ ^ 42`, whose norm is `2 ^ 84 * c ^ 546`,
so the numerators are not a finite set independent of `a` and `b`.
`den_divides_lead_mul_num_pow` does not force the denominator to divide
`13`. A vanishing value would not be `RhoE13Open`.
-/
def psi13_no_Qi_root_Frey_OPEN (E : FreyCurve4413) : Prop :=
  ∀ num den : GaussInt, den ≠ GaussInt.zero →
    evalCleared (psi13 (GaussInt.ofInt E.A_int) ⟨E.B_re, E.B_im⟩ GaussInt.zero)
      num den ≠ GaussInt.zero

/-- `c₄` of `y² = x³ + (4a) x² + 2(a² + b² √(-1)) x`.

`c₄ = 160 a² - 96 b² √(-1) = 2⁵ (5 a² - 3 b² √(-1))`. The exponent `5` is
the power of `2` factored out of both components. It is not a conductor
exponent, and it is not `v₂` of either component when `a` is even.
-/
def c4_Frey (a b : ℤ) : GaussInt :=
  ⟨160 * a ^ 2, -96 * b ^ 2⟩

/-- `c₆` of the same model.

`c₆ = -1792 a³ + 2304 a b² √(-1) = 2⁸ a (-7 a² + 9 b² √(-1))`. The exponent
`8` is the power of `2` factored out of both components.
-/
def c6_Frey (a b : ℤ) : GaussInt :=
  ⟨-1792 * a ^ 3, 2304 * a * b ^ 2⟩

/-- Power of `2` factored from both components of `c4_Frey`. -/
def v2_c4 : ℕ := 5

/-- Power of `2` factored from both components of `c6_Frey`. -/
def v2_c6 : ℕ := 8

theorem c4_Frey_eq_c4Pair (a b : ℤ) :
    c4_Frey a b =
      ⟨(EllipticCurveMinimal.c4Pair (4 * a) (2 * a ^ 2) (2 * b ^ 2)).1,
        (EllipticCurveMinimal.c4Pair (4 * a) (2 * a ^ 2) (2 * b ^ 2)).2⟩ := by
  simp [c4_Frey, EllipticCurveMinimal.c4Pair]
  constructor <;> grind

theorem c6_Frey_eq_c6Of (a b : ℤ) :
    c6_Frey a b = EllipticCurveMinimal.c6Of (4 * a) (2 * a ^ 2) (2 * b ^ 2) := by
  simp [c6_Frey, EllipticCurveMinimal.c6Of]
  constructor <;> grind

theorem c4_Frey_factor (a b : ℤ) :
    c4_Frey a b = GaussInt.smul (2 ^ v2_c4) ⟨5 * a ^ 2, -(3 * b ^ 2)⟩ := by
  simp [c4_Frey, v2_c4, GaussInt.smul]
  constructor <;> grind

theorem c6_Frey_factor (a b : ℤ) :
    c6_Frey a b = GaussInt.smul (2 ^ v2_c6) ⟨-(7 * a ^ 3), 9 * a * b ^ 2⟩ := by
  simp [c6_Frey, v2_c6, GaussInt.smul]
  constructor <;> grind

/-- The factored forms of `c₄` and `c₆` on the Frey model.

`2 ^ 5` and `2 ^ 8` are the contents of the two components. They are not
the conductor exponent at the prime above `2`.
-/
theorem c4_c6_valuation (a b : ℤ) :
    c4_Frey a b = GaussInt.smul (2 ^ 5) ⟨5 * a ^ 2, -(3 * b ^ 2)⟩ ∧
      c6_Frey a b =
        GaussInt.smul (2 ^ 8) (GaussInt.mul (GaussInt.ofInt a)
          ⟨-(7 * a ^ 2), 9 * b ^ 2⟩) := by
  have h4 := c4_Frey_factor a b
  have h6 := c6_Frey_factor a b
  simp [v2_c4, v2_c6] at h4 h6
  refine ⟨h4, ?_⟩
  simp [GaussInt.smul, GaussInt.mul, GaussInt.ofInt] at h6 ⊢
  grind

theorem two_pow_v2_c4_dvd (a b : ℤ) :
    (2 : ℤ) ^ v2_c4 ∣ (c4_Frey a b).re ∧ (2 : ℤ) ^ v2_c4 ∣ (c4_Frey a b).im := by
  rw [c4_Frey_factor]
  simp [GaussInt.smul]

theorem two_pow_v2_c6_dvd (a b : ℤ) :
    (2 : ℤ) ^ v2_c6 ∣ (c6_Frey a b).re ∧ (2 : ℤ) ^ v2_c6 ∣ (c6_Frey a b).im := by
  rw [c6_Frey_factor]
  simp [GaussInt.smul]

/-- `n ^ 4` is even if and only if `n` is even. -/
theorem nat_fourth_mod_two (n : ℕ) : n ^ 4 % 2 = n % 2 := by
  have h : n % 2 = 0 ∨ n % 2 = 1 := by omega
  rcases h with h | h
  · have h2 : 2 ∣ n := Nat.dvd_of_mod_eq_zero h
    rcases h2 with ⟨k, hk⟩
    rw [hk, Nat.mul_pow]
    have hpow : 2 ^ 4 * k ^ 4 = 2 * (2 ^ 3 * k ^ 4) := by
      rw [show (2 : ℕ) ^ 4 = 2 * 2 ^ 3 by decide, Nat.mul_assoc]
    rw [hpow, Nat.mul_mod, Nat.mod_self]
    simp
  · rw [nat_odd_pow n 4 h, h]

theorem int_pow_four_eq_natAbs (n : ℤ) : n ^ 4 = ↑(n.natAbs ^ 4) := by
  have h2 : n ^ 2 = ↑(n.natAbs ^ 2) := by
    cases n with
    | ofNat k => simp [Int.natAbs]
    | negSucc k => simp [Int.natAbs, Int.negSucc_pow]
  have h4 : n ^ 4 = (n ^ 2) ^ 2 := by
    rw [← Int.pow_mul]
  rw [h4, h2]
  have hnat : n.natAbs ^ 4 = (n.natAbs ^ 2) ^ 2 := by
    rw [← Nat.pow_mul]
  rw [hnat, ← Int.natCast_pow]

/-- If `c` is odd then exactly one of `|a|`, `|b|` is odd, so `a² + b²` is odd.

`a² + b² √(-1)` is then not divisible by `1 + √(-1)`. The norm computation
`v₂(N(Δ)) = 18` already says the same thing: `N(a² + b² √(-1)) = c¹³` is odd.
-/
theorem odd_c_sum_squares_odd (E : FreyCurve4413) (hodd : E.c.natAbs % 2 = 1) :
    (E.a.natAbs ^ 2 + E.b.natAbs ^ 2) % 2 = 1 := by
  have ha : E.a ^ 4 = ↑(E.a.natAbs ^ 4) := int_pow_four_eq_natAbs E.a
  have hb : E.b ^ 4 = ↑(E.b.natAbs ^ 4) := int_pow_four_eq_natAbs E.b
  have hsum :
      E.a ^ 4 + E.b ^ 4 = ↑(E.a.natAbs ^ 4 + E.b.natAbs ^ 4) := by
    rw [ha, hb, Int.natCast_add]
  have hnonneg : 0 ≤ E.c ^ 13 := by
    rw [← E.h_eq, hsum]
    exact Int.natCast_nonneg _
  have hc13 : E.c ^ 13 = ↑(E.c.natAbs ^ 13) := by
    have hnat : (E.c ^ 13).natAbs = E.c.natAbs ^ 13 := Int.natAbs_pow E.c 13
    rw [← hnat, Int.natAbs_of_nonneg hnonneg]
  have hnat : E.a.natAbs ^ 4 + E.b.natAbs ^ 4 = E.c.natAbs ^ 13 := by
    have hcast :
        (↑(E.a.natAbs ^ 4 + E.b.natAbs ^ 4) : ℤ) = ↑(E.c.natAbs ^ 13) := by
      rw [← hsum, E.h_eq, hc13]
    exact Int.ofNat_inj.mp hcast
  have hmod : (E.a.natAbs ^ 4 + E.b.natAbs ^ 4) % 2 = 1 := by
    rw [hnat, nat_odd_pow E.c.natAbs 13 hodd]
  have hpar :
      (E.a.natAbs ^ 4 + E.b.natAbs ^ 4) % 2 =
        (E.a.natAbs % 2 + E.b.natAbs % 2) % 2 := by
    rw [Nat.add_mod, nat_fourth_mod_two, nat_fourth_mod_two]
  have hsq : ∀ n : ℕ, n ^ 2 % 2 = n % 2 := by
    intro n
    have h : n % 2 = 0 ∨ n % 2 = 1 := by omega
    rcases h with h | h
    · rcases Nat.dvd_of_mod_eq_zero h with ⟨k, hk⟩
      rw [h, hk]
      apply Nat.mod_eq_zero_of_dvd
      refine ⟨2 * k ^ 2, ?_⟩
      calc
        (2 * k) ^ 2 = 2 ^ 2 * k ^ 2 := Nat.mul_pow 2 k 2
        _ = (2 * 2) * k ^ 2 := by rw [show (2 : ℕ) ^ 2 = 2 * 2 by decide]
        _ = 2 * (2 * k ^ 2) := Nat.mul_assoc 2 2 (k ^ 2)
    · rw [nat_odd_pow n 2 h, h]
  rw [hpar] at hmod
  rw [Nat.add_mod, hsq, hsq]
  exact hmod

theorem natAbs_of_two_dvd {n : ℤ} (h : (2 : ℤ) ∣ n) : n.natAbs % 2 = 0 := by
  rcases h with ⟨k, hk⟩
  have hn : n.natAbs = (2 * k).natAbs := congrArg Int.natAbs hk
  rw [Int.natAbs_mul] at hn
  have h2 : ((2 : ℤ).natAbs) = 2 := rfl
  rw [h2] at hn
  rw [hn, Nat.mul_mod, Nat.mod_self]
  simp

theorem odd_mul_mod_two {m n : ℕ} (hm : m % 2 = 1) : (m * n) % 2 = n % 2 := by
  rw [Nat.mul_mod, hm]
  simp

/-- If `c` is odd, `2` does not divide `5 a² - 3 b² √(-1)` in `ℤ[√-1]`.

One of `|a|` and `|b|` is odd, so one component of `⟨5 a², -3 b²⟩` is odd.
`2 = -√(-1) (1 + √(-1))²`, so this also says the element is not divisible
by `(1 + √(-1))²`. It does not compute the conductor exponent.
-/
theorem c4_c6_coprime_to_2_when_c_odd (E : FreyCurve4413)
    (hodd : E.c.natAbs % 2 = 1) :
    ¬ ∃ w : GaussInt,
      GaussInt.mul (GaussInt.ofInt 2) w = ⟨5 * E.a ^ 2, -(3 * E.b ^ 2)⟩ := by
  intro ⟨w, hw⟩
  have hre : 5 * E.a ^ 2 = 2 * w.re := by
    have hcomp := congrArg GaussInt.re hw
    simp [GaussInt.mul, GaussInt.ofInt] at hcomp
    exact hcomp.symm
  have him : -(3 * E.b ^ 2) = 2 * w.im := by
    have hcomp := congrArg GaussInt.im hw
    simp [GaussInt.mul, GaussInt.ofInt] at hcomp
    exact hcomp.symm
  have ha2 : (2 : ℤ) ∣ 5 * E.a ^ 2 := ⟨w.re, hre⟩
  have hb2 : (2 : ℤ) ∣ 3 * E.b ^ 2 := ⟨-w.im, by
    calc
      3 * E.b ^ 2 = -(-(3 * E.b ^ 2)) := (Int.neg_neg (3 * E.b ^ 2)).symm
      _ = -(2 * w.im) := by rw [him]
      _ = 2 * -w.im := (Int.mul_neg 2 w.im).symm⟩
  have haEven : E.a.natAbs % 2 = 0 := by
    have hmod := natAbs_of_two_dvd ha2
    have hnorm : (5 * E.a ^ 2).natAbs = 5 * E.a.natAbs ^ 2 := by
      rw [Int.natAbs_mul, Int.natAbs_pow]
      rfl
    rw [hnorm] at hmod
    have h5 : (5 * E.a.natAbs ^ 2) % 2 = E.a.natAbs ^ 2 % 2 :=
      odd_mul_mod_two (by decide : 5 % 2 = 1)
    rw [h5] at hmod
    have hsq : E.a.natAbs ^ 2 % 2 = E.a.natAbs % 2 := by
      have h : E.a.natAbs % 2 = 0 ∨ E.a.natAbs % 2 = 1 := by omega
      rcases h with h | h
      · rcases Nat.dvd_of_mod_eq_zero h with ⟨k, hk⟩
        rw [h, hk]
        apply Nat.mod_eq_zero_of_dvd
        refine ⟨2 * k ^ 2, ?_⟩
        calc
          (2 * k) ^ 2 = 2 ^ 2 * k ^ 2 := Nat.mul_pow 2 k 2
          _ = (2 * 2) * k ^ 2 := by rw [show (2 : ℕ) ^ 2 = 2 * 2 by decide]
          _ = 2 * (2 * k ^ 2) := Nat.mul_assoc 2 2 (k ^ 2)
      · rw [nat_odd_pow E.a.natAbs 2 h, h]
    rw [hsq] at hmod
    exact hmod
  have hbEven : E.b.natAbs % 2 = 0 := by
    have hmod := natAbs_of_two_dvd hb2
    have hnorm : (3 * E.b ^ 2).natAbs = 3 * E.b.natAbs ^ 2 := by
      rw [Int.natAbs_mul, Int.natAbs_pow]
      rfl
    rw [hnorm] at hmod
    have h3 : (3 * E.b.natAbs ^ 2) % 2 = E.b.natAbs ^ 2 % 2 :=
      odd_mul_mod_two (by decide : 3 % 2 = 1)
    rw [h3] at hmod
    have hsq : E.b.natAbs ^ 2 % 2 = E.b.natAbs % 2 := by
      have h : E.b.natAbs % 2 = 0 ∨ E.b.natAbs % 2 = 1 := by omega
      rcases h with h | h
      · rcases Nat.dvd_of_mod_eq_zero h with ⟨k, hk⟩
        rw [h, hk]
        apply Nat.mod_eq_zero_of_dvd
        refine ⟨2 * k ^ 2, ?_⟩
        calc
          (2 * k) ^ 2 = 2 ^ 2 * k ^ 2 := Nat.mul_pow 2 k 2
          _ = (2 * 2) * k ^ 2 := by rw [show (2 : ℕ) ^ 2 = 2 * 2 by decide]
          _ = 2 * (2 * k ^ 2) := Nat.mul_assoc 2 2 (k ^ 2)
      · rw [nat_odd_pow E.b.natAbs 2 h, h]
    rw [hsq] at hmod
    exact hmod
  have hsum := odd_c_sum_squares_odd E hodd
  have haSq : E.a.natAbs ^ 2 % 2 = 0 := by
    rcases Nat.dvd_of_mod_eq_zero haEven with ⟨k, hk⟩
    rw [hk]
    apply Nat.mod_eq_zero_of_dvd
    refine ⟨2 * k ^ 2, ?_⟩
    calc
      (2 * k) ^ 2 = 2 ^ 2 * k ^ 2 := Nat.mul_pow 2 k 2
      _ = (2 * 2) * k ^ 2 := by rw [show (2 : ℕ) ^ 2 = 2 * 2 by decide]
      _ = 2 * (2 * k ^ 2) := Nat.mul_assoc 2 2 (k ^ 2)
  have hbSq : E.b.natAbs ^ 2 % 2 = 0 := by
    rcases Nat.dvd_of_mod_eq_zero hbEven with ⟨k, hk⟩
    rw [hk]
    apply Nat.mod_eq_zero_of_dvd
    refine ⟨2 * k ^ 2, ?_⟩
    calc
      (2 * k) ^ 2 = 2 ^ 2 * k ^ 2 := Nat.mul_pow 2 k 2
      _ = (2 * 2) * k ^ 2 := by rw [show (2 : ℕ) ^ 2 = 2 * 2 by decide]
      _ = 2 * (2 * k ^ 2) := Nat.mul_assoc 2 2 (k ^ 2)
  rw [Nat.add_mod, haSq, hbSq] at hsum
  simp at hsum

/-- `π = 1 + √(-1)`, the prime of `ℤ[√-1]` above `2`. -/
def pi : GaussInt := ⟨1, 1⟩

def piPow (k : ℕ) : GaussInt :=
  GaussInt.npow pi k

/-- Divisible by `π`. Equivalent to `re + im` even. -/
def piDivides (z : GaussInt) : Prop :=
  (z.re + z.im) % 2 = 0

/-- `z = u π^k` with `π` not dividing `u`. This is `v_π(z) = k`. -/
def P2Exact (z : GaussInt) (k : ℕ) : Prop :=
  ∃ u, GaussInt.mul u (piPow k) = z ∧ ¬ piDivides u

/-- Unit `-√(-1)` raised to `k`. `2 = (-√(-1)) π²`. -/
def twoUnit : ℕ → GaussInt
  | 0 => ⟨1, 0⟩
  | n + 1 => GaussInt.mul ⟨0, -1⟩ (twoUnit n)

theorem pi_pow_norm (k : ℕ) : GaussInt.norm (piPow k) = (2 : ℤ) ^ k := by
  rw [piPow, GaussInt.norm_npow]
  have hpi : GaussInt.norm pi = 2 := by simp [pi, GaussInt.norm]
  rw [hpi]

theorem two_eq_neg_i_mul_pi_sq : GaussInt.mul ⟨0, -1⟩ (piPow 2) = GaussInt.ofInt 2 := by
  simp [piPow, pi, GaussInt.npow, GaussInt.one, GaussInt.mul, GaussInt.ofInt]

theorem smul_eq_mul_ofInt (n : ℤ) (z : GaussInt) :
    GaussInt.smul n z = GaussInt.mul (GaussInt.ofInt n) z := by
  cases z with
  | mk x y =>
    simp [GaussInt.smul, GaussInt.mul, GaussInt.ofInt]

theorem mul_mul_comm_mid (a u p q : GaussInt) :
    GaussInt.mul (GaussInt.mul a u) (GaussInt.mul p q) =
      GaussInt.mul (GaussInt.mul (GaussInt.mul a p) u) q := by
  rw [← GaussInt.mul_assoc (GaussInt.mul a u) p q,
    GaussInt.mul_assoc a u p, GaussInt.mul_comm u p,
    ← GaussInt.mul_assoc a p u]

theorem mul_mul_swap (a b c : GaussInt) :
    GaussInt.mul (GaussInt.mul a b) c = GaussInt.mul (GaussInt.mul a c) b := by
  rw [GaussInt.mul_assoc a b c, GaussInt.mul_comm b c, ← GaussInt.mul_assoc a c b]

theorem neg_i_preserves_pi (z : GaussInt) :
    piDivides (GaussInt.mul ⟨0, -1⟩ z) ↔ piDivides z := by
  cases z with
  | mk x y =>
    simp [piDivides, GaussInt.mul]
    have hsum : y + -x = (x + y) + -(2 * x) := by omega
    rw [hsum]
    have hrewrite : (x + y) + -(2 * x) = (x + y) + 2 * -x := by
      rw [Int.neg_mul_eq_mul_neg]
    rw [hrewrite, Int.add_mul_emod_self_left]

theorem twoUnit_preserves_pi (k : ℕ) (z : GaussInt) :
    piDivides (GaussInt.mul (twoUnit k) z) ↔ piDivides z := by
  induction k with
  | zero =>
    simp [twoUnit, piDivides, GaussInt.mul, Int.one_mul, Int.zero_mul, Int.sub_zero,
      Int.add_zero]
  | succ k ih =>
    simp only [twoUnit]
    rw [GaussInt.mul_assoc, neg_i_preserves_pi, ih]

theorem two_pow_as_pi (k : ℕ) :
    GaussInt.mul (twoUnit k) (piPow (2 * k)) = GaussInt.ofInt ((2 : ℤ) ^ k) := by
  induction k with
  | zero =>
    simp [twoUnit, piPow, GaussInt.npow, GaussInt.one, GaussInt.mul, GaussInt.ofInt]
  | succ k ih =>
    have hunit : twoUnit (k + 1) = GaussInt.mul ⟨0, -1⟩ (twoUnit k) := rfl
    have hidx : 2 * (k + 1) = 2 + 2 * k := by omega
    have hpow : piPow (2 * (k + 1)) = GaussInt.mul (piPow 2) (piPow (2 * k)) := by
      rw [hidx]
      unfold piPow
      rw [GaussInt.npow_add]
    rw [hunit, hpow, mul_mul_comm_mid ⟨0, -1⟩ (twoUnit k) (piPow 2) (piPow (2 * k)),
      two_eq_neg_i_mul_pi_sq,
      GaussInt.mul_assoc (GaussInt.ofInt 2) (twoUnit k) (piPow (2 * k)), ih]
    simp [GaussInt.mul, GaussInt.ofInt, Int.pow_succ']

/-- `v_π(2^k) = 2k`. `N(π^k) = 2^k`, so `N(π^10) = 2^10` and `N(π^12) = 2^12`. -/
theorem p2_valuation_of_two_pow (k : ℕ) :
    P2Exact (GaussInt.ofInt ((2 : ℤ) ^ k)) (2 * k) := by
  refine ⟨twoUnit k, two_pow_as_pi k, ?_⟩
  intro hdiv
  have h1 : piDivides GaussInt.one :=
    (twoUnit_preserves_pi k GaussInt.one).mp
      (by simpa [GaussInt.mul_one] using hdiv)
  simp [piDivides, GaussInt.one] at h1

theorem int_sq_as_natAbs (n : ℤ) : n ^ 2 = ↑(n.natAbs ^ 2) := by
  cases n with
  | ofNat k => simp [Int.natAbs]
  | negSucc k => simp [Int.natAbs, Int.negSucc_pow]

theorem nat_sub_emod_two (A B : ℕ) : ((↑A : ℤ) - ↑B) % 2 = ↑((A + B) % 2) := by
  have hA : A % 2 = 0 ∨ A % 2 = 1 := by omega
  have hB : B % 2 = 0 ∨ B % 2 = 1 := by omega
  have hAB : (A + B) % 2 = (A % 2 + B % 2) % 2 := Nat.add_mod A B 2
  rcases hA with hA | hA <;> rcases hB with hB | hB
  · rcases Nat.dvd_of_mod_eq_zero hA with ⟨k, hk⟩
    rcases Nat.dvd_of_mod_eq_zero hB with ⟨m, hm⟩
    have hdiff : ((↑A : ℤ) - ↑B) = (2 : ℤ) * (↑k - ↑m) := by
      rw [hk, hm, Int.natCast_mul, Int.natCast_mul]
      omega
    rw [hdiff, Int.mul_emod_right, hAB, hA, hB]
    simp
  · rcases Nat.dvd_of_mod_eq_zero hA with ⟨k, hk⟩
    have hBform : B = 2 * (B / 2) + 1 := by
      have hdiv := Nat.div_add_mod B 2
      rw [hB] at hdiv
      omega
    have hdiff : ((↑A : ℤ) - ↑B) = (2 : ℤ) * (↑k - ↑(B / 2)) + -1 := by
      rw [hk, hBform, Int.natCast_mul, Int.natCast_add, Int.natCast_mul]
      omega
    have hmod : ((2 : ℤ) * (↑k - ↑(B / 2)) + -1) % 2 = (-1 : ℤ) % 2 := by
      rw [Int.add_comm, Int.add_mul_emod_self_left]
    have hneg : (-1 : ℤ) % 2 = 1 := by decide
    rw [hdiff, hmod, hneg, hAB, hA, hB]
    simp
  · rcases Nat.dvd_of_mod_eq_zero hB with ⟨m, hm⟩
    have hAform : A = 2 * (A / 2) + 1 := by
      have hdiv := Nat.div_add_mod A 2
      rw [hA] at hdiv
      omega
    have hdiff : ((↑A : ℤ) - ↑B) = (2 : ℤ) * (↑(A / 2) - ↑m) + 1 := by
      rw [hAform, hm, Int.natCast_add, Int.natCast_mul, Int.natCast_mul]
      omega
    have hmod : ((2 : ℤ) * (↑(A / 2) - ↑m) + 1) % 2 = (1 : ℤ) % 2 := by
      rw [Int.add_comm, Int.add_mul_emod_self_left]
    rw [hdiff, hmod, hAB, hA, hB]
    simp
  · have hAform : A = 2 * (A / 2) + 1 := by
      have hdiv := Nat.div_add_mod A 2
      rw [hA] at hdiv
      omega
    have hBform : B = 2 * (B / 2) + 1 := by
      have hdiv := Nat.div_add_mod B 2
      rw [hB] at hdiv
      omega
    have hdiff : ((↑A : ℤ) - ↑B) = (2 : ℤ) * (↑(A / 2) - ↑(B / 2)) := by
      rw [hAform, hBform, Int.natCast_add, Int.natCast_add, Int.natCast_mul, Int.natCast_mul]
      omega
    rw [hdiff, Int.mul_emod_right, hAB, hA, hB]
    simp

/-- If `c` is odd, `π` does not divide `5 a² - 3 b² √(-1)`.

`c4_c6_coprime_to_2_when_c_odd` is the weaker statement that `2 = -√(-1) π²`
does not divide this factor. Here the factor is not divisible by `π` itself.
-/
theorem c4_cofactor_not_pi (E : FreyCurve4413) (hodd : E.c.natAbs % 2 = 1) :
    ¬ piDivides ⟨5 * E.a ^ 2, -(3 * E.b ^ 2)⟩ := by
  have hsum := odd_c_sum_squares_odd E hodd
  have ha : E.a ^ 2 = ↑(E.a.natAbs ^ 2) := int_sq_as_natAbs E.a
  have hb : E.b ^ 2 = ↑(E.b.natAbs ^ 2) := int_sq_as_natAbs E.b
  have hA : (5 * E.a.natAbs ^ 2) % 2 = E.a.natAbs ^ 2 % 2 :=
    odd_mul_mod_two (by decide : (5 : ℕ) % 2 = 1)
  have hB : (3 * E.b.natAbs ^ 2) % 2 = E.b.natAbs ^ 2 % 2 :=
    odd_mul_mod_two (by decide : (3 : ℕ) % 2 = 1)
  have hsq : (E.a.natAbs ^ 2 + E.b.natAbs ^ 2) % 2 =
      (5 * E.a.natAbs ^ 2 + 3 * E.b.natAbs ^ 2) % 2 := by
    rw [Nat.add_mod (E.a.natAbs ^ 2) (E.b.natAbs ^ 2) 2,
      Nat.add_mod (5 * E.a.natAbs ^ 2) (3 * E.b.natAbs ^ 2) 2, hA, hB]
  rw [hsq] at hsum
  have hdiff := nat_sub_emod_two (5 * E.a.natAbs ^ 2) (3 * E.b.natAbs ^ 2)
  have hcast : 5 * E.a ^ 2 + -(3 * E.b ^ 2) =
      ((5 * E.a.natAbs ^ 2 : ℕ) : ℤ) - ((3 * E.b.natAbs ^ 2 : ℕ) : ℤ) := by
    rw [ha, hb, Int.natCast_mul, Int.natCast_mul, Int.sub_eq_add_neg]
    have h5 : ((5 : ℕ) : ℤ) = 5 := by decide
    have h3 : ((3 : ℕ) : ℤ) = 3 := by decide
    rw [h5, h3]
  intro hdiv
  simp [piDivides] at hdiv
  rw [hcast, hdiff, hsum] at hdiv
  omega

/-- If `c` is odd, `v_π(c₄) = 10`.

`c₄ = 2⁵ (5 a² - 3 b² √(-1))` and `v_π(2⁵) = 10`, while the second factor
is not divisible by `π`. This is the valuation of `c₄`. It is not the
conductor exponent at `π`, and it does not give `32 ∣ n`.
-/
theorem c4_p2_exact_ten (E : FreyCurve4413) (hodd : E.c.natAbs % 2 = 1) :
    P2Exact (c4_Frey E.a E.b) 10 := by
  let z : GaussInt := ⟨5 * E.a ^ 2, -(3 * E.b ^ 2)⟩
  have h2 := two_pow_as_pi 5
  have h4 := (c4_c6_valuation E.a E.b).1
  have hsmul : GaussInt.smul ((2 : ℤ) ^ 5) z =
      GaussInt.mul (GaussInt.ofInt ((2 : ℤ) ^ 5)) z :=
    smul_eq_mul_ofInt _ _
  rw [hsmul] at h4
  refine ⟨GaussInt.mul (twoUnit 5) z, ?_, ?_⟩
  · rw [mul_mul_swap (twoUnit 5) z (piPow 10), h2]
    exact h4.symm
  · intro hdiv
    exact c4_cofactor_not_pi E hodd ((twoUnit_preserves_pi 5 z).mp hdiv)

/-- `π^16` divides `c₆`, because `c₆` is divisible by `2⁸` and `v_π(2⁸) = 16`.

The cofactor may still be divisible by `π`, so this is a lower bound, not
`v_π(c₆)`.
-/
theorem c6_p2_divisible_by_sixteen (a b : ℤ) :
    ∃ u, GaussInt.mul u (piPow 16) = c6_Frey a b := by
  let cof := GaussInt.mul (GaussInt.ofInt a) ⟨-(7 * a ^ 2), 9 * b ^ 2⟩
  have h2 := two_pow_as_pi 8
  have h6 := (c4_c6_valuation a b).2
  refine ⟨GaussInt.mul (twoUnit 8) cof, ?_⟩
  rw [h6]
  have hsmul : GaussInt.smul ((2 : ℤ) ^ 8) cof =
      GaussInt.mul (GaussInt.ofInt ((2 : ℤ) ^ 8)) cof :=
    smul_eq_mul_ofInt _ _
  rw [hsmul, ← h2, mul_mul_swap (twoUnit 8) cof (piPow 16)]

theorem int_mod_two (t : ℤ) : t % 2 = 0 ∨ t % 2 = 1 := by
  have hnn : 0 ≤ t % 2 := Int.emod_nonneg t (by decide : (2 : ℤ) ≠ 0)
  have hlt : t % 2 < 2 := Int.emod_lt_of_pos t (by decide : (0 : ℤ) < 2)
  omega

/-- `π` is prime for this parity: it divides a product iff it divides a factor. -/
theorem piDivides_mul (z w : GaussInt) :
    piDivides (GaussInt.mul z w) ↔ piDivides z ∨ piDivides w := by
  cases z with
  | mk xr xi =>
    cases w with
    | mk yr yi =>
      simp [piDivides, GaussInt.mul]
      have hs : xr * yr - xi * yi + (xr * yi + xi * yr) =
          (xr + xi) * (yr + yi) + -(2 * xi * yi) := by
        grind
      rw [hs]
      have hneg : -(2 * xi * yi) = 2 * -(xi * yi) := by
        rw [Int.mul_assoc 2 xi yi, Int.neg_mul_eq_mul_neg]
      rw [hneg, Int.add_mul_emod_self_left, Int.mul_emod]
      rcases int_mod_two (xr + xi) with hzx | hzx <;>
        rcases int_mod_two (yr + yi) with hwy | hwy
      · simp [hzx, hwy]
      · simp [hzx, hwy]
      · simp [hzx, hwy]
      · simp [hzx, hwy]

theorem P2Exact_mul {z w : GaussInt} {m n : ℕ}
    (hz : P2Exact z m) (hw : P2Exact w n) :
    P2Exact (GaussInt.mul z w) (m + n) := by
  rcases hz with ⟨u, hu, hnu⟩
  rcases hw with ⟨v, hv, hnv⟩
  refine ⟨GaussInt.mul u v, ?_, ?_⟩
  · have hp : piPow (m + n) = GaussInt.mul (piPow m) (piPow n) := by
      unfold piPow
      exact GaussInt.npow_add pi m n
    rw [hp, mul_mul_comm_mid u v (piPow m) (piPow n), hu,
      GaussInt.mul_assoc z v (piPow n), hv]
  · intro hdiv
    rcases (piDivides_mul u v).1 hdiv with h | h
    · exact hnu h
    · exact hnv h

theorem P2Exact_zero_of_not_pi {z : GaussInt} (h : ¬ piDivides z) : P2Exact z 0 := by
  refine ⟨z, ?_, h⟩
  simp [piPow, GaussInt.npow, GaussInt.mul_one]

theorem piDivides_ofInt_iff (n : ℤ) :
    piDivides (GaussInt.ofInt n) ↔ n % 2 = 0 := by
  simp [piDivides, GaussInt.ofInt]

theorem not_piDivides_ofInt_of_natAbs_odd {n : ℤ} (h : n.natAbs % 2 = 1) :
    ¬ piDivides (GaussInt.ofInt n) := by
  intro hdiv
  have hmod : n % 2 = 0 := (piDivides_ofInt_iff n).1 hdiv
  have heven : n.natAbs % 2 = 0 :=
    natAbs_of_two_dvd (Int.dvd_of_emod_eq_zero hmod)
  omega

theorem nat_odd_cast_mod_two {n : ℕ} (h : n % 2 = 1) : ((n : ℤ) % 2) = 1 := by
  have hform : n = 2 * (n / 2) + 1 := by
    have hdiv := Nat.div_add_mod n 2
    rw [h] at hdiv
    exact hdiv.symm
  rw [hform]
  have hcast : ((2 * (n / 2) + 1 : ℕ) : ℤ) = (2 : ℤ) * ↑(n / 2) + 1 := by
    rw [Int.natCast_add, Int.natCast_mul]
    have h2 : ((2 : ℕ) : ℤ) = 2 := by decide
    have h1 : ((1 : ℕ) : ℤ) = 1 := by decide
    rw [h2, h1]
  rw [hcast]
  have hmod : ((2 : ℤ) * ↑(n / 2) + 1) % 2 = (1 : ℤ) % 2 := by
    rw [Int.add_comm, Int.add_mul_emod_self_left]
  rw [hmod]
  decide

theorem c_pow_not_pi (E : FreyCurve4413) (hodd : E.c.natAbs % 2 = 1) :
    ¬ piDivides (GaussInt.ofInt (E.c ^ 13)) := by
  apply not_piDivides_ofInt_of_natAbs_odd
  rw [Int.natAbs_pow]
  exact nat_odd_pow E.c.natAbs 13 hodd

/-- If `c` is odd, exactly one of `a²`, `b²` is odd, so `π` misses `a² + b² √(-1)`. -/
theorem sum_squares_not_pi (E : FreyCurve4413) (hodd : E.c.natAbs % 2 = 1) :
    ¬ piDivides ⟨E.a ^ 2, E.b ^ 2⟩ := by
  have hsum := odd_c_sum_squares_odd E hodd
  have ha := int_sq_as_natAbs E.a
  have hb := int_sq_as_natAbs E.b
  intro hdiv
  simp [piDivides] at hdiv
  rw [ha, hb, ← Int.natCast_add] at hdiv
  rw [nat_odd_cast_mod_two hsum] at hdiv
  omega

/-- Pacetti's `Δ = 2⁹ (a² + b² √(-1)) c¹³` as an element of `ℤ[√-1]`. -/
def deltaGauss (E : FreyCurve4413) : GaussInt :=
  ⟨E.discriminant_re, E.discriminant_im⟩

theorem deltaGauss_factor (E : FreyCurve4413) :
    deltaGauss E =
      GaussInt.mul (GaussInt.ofInt ((2 : ℤ) ^ 9))
        (GaussInt.mul ⟨E.a ^ 2, E.b ^ 2⟩ (GaussInt.ofInt (E.c ^ 13))) := by
  unfold deltaGauss discriminant_re discriminant_im
  simp [GaussInt.mul, GaussInt.ofInt, Int.mul_zero, Int.zero_mul, Int.sub_zero, Int.add_zero]
  constructor <;> grind

theorem deltaGauss_eq_weierstrass (E : FreyCurve4413) :
    deltaGauss E = ⟨E.Δ.1, E.Δ.2⟩ := by
  have h := discriminant_eq_weierstrass E
  simp [deltaGauss, h.1, h.2]

/-- If `c` is odd, `v_π(Δ) = 18`.

`v_π(2⁹) = 18`, and neither `a² + b² √(-1)` nor `c¹³` is divisible by `π`.
`v₂(N(Δ)) = 18` is the field norm. Here the exponent `18` is `v_π` of the
element `Δ` itself. It is not a conductor exponent.
-/
theorem delta_p2_exact_eighteen (E : FreyCurve4413) (hodd : E.c.natAbs % 2 = 1) :
    P2Exact (deltaGauss E) 18 := by
  rw [deltaGauss_factor]
  exact P2Exact_mul (p2_valuation_of_two_pow 9)
    (P2Exact_mul (P2Exact_zero_of_not_pi (sum_squares_not_pi E hodd))
      (P2Exact_zero_of_not_pi (c_pow_not_pi E hodd)))

theorem a4_factor (E : FreyCurve4413) :
    ⟨E.B_re, E.B_im⟩ =
      GaussInt.mul (GaussInt.ofInt 2) ⟨E.a ^ 2, E.b ^ 2⟩ := by
  rw [E.h_B_re, E.h_B_im]
  simp [GaussInt.mul, GaussInt.ofInt]

/-- If `c` is odd, `v_π(a₄) = 2`.

`a₄ = 2 (a² + b² √(-1))`. The substitution `x = π² x'`, `y = π³ y'` divides
`a₄` by `π⁴` and needs valuation at least `4`. Valuation `2` blocks that
substitution. A translation `x = x' + r` is not this substitution, so this
does not produce a term of `MinimalModelAt2`.
-/
theorem a4_p2_exact_two (E : FreyCurve4413) (hodd : E.c.natAbs % 2 = 1) :
    P2Exact ⟨E.B_re, E.B_im⟩ 2 := by
  have h2 : P2Exact (GaussInt.ofInt 2) 2 := by
    simpa [Int.pow_one] using p2_valuation_of_two_pow 1
  rw [a4_factor]
  exact P2Exact_mul h2 (P2Exact_zero_of_not_pi (sum_squares_not_pi E hodd))

/-- The sufficient minimality test does not apply to this model when `c` is odd.

A model is minimal at `π` if `v_π(c₄) < 4` or `v_π(Δ) < 12`. The Frey
valuations are `10` and `18`. The bounds `12`, `18`, and `24` are the
divisibilities for scaling by `π³`. `v_π(c₄) = 10` does not give
`MinimalModelAt2`. `FTameAtPi` and `SwanAtPi` stay sealed, so their sum is
not a numeral.
-/
theorem silverman_test_does_not_apply (E : FreyCurve4413) (hodd : E.c.natAbs % 2 = 1) :
    P2Exact (c4_Frey E.a E.b) 10 ∧ P2Exact (deltaGauss E) 18 ∧
      ¬ (10 < 4) ∧ ¬ (18 < 12) :=
  ⟨c4_p2_exact_ten E hodd, delta_p2_exact_eighteen E hodd, by decide, by decide⟩

theorem ofInt_mul (m n : ℤ) :
    GaussInt.mul (GaussInt.ofInt m) (GaussInt.ofInt n) = GaussInt.ofInt (m * n) := by
  simp [GaussInt.mul, GaussInt.ofInt, Int.mul_zero, Int.zero_mul, Int.sub_zero, Int.add_zero]

theorem piDivides_neg (z : GaussInt) :
    piDivides (GaussInt.neg z) ↔ piDivides z := by
  cases z with
  | mk x y =>
    simp [piDivides, GaussInt.neg]
    have hsum : -x + -y = -(x + y) := by omega
    have ht : -(x + y) = (x + y) + 2 * -(x + y) := by omega
    rw [hsum, ht, Int.add_mul_emod_self_left]

theorem P2Exact_neg {z : GaussInt} {k : ℕ} (h : P2Exact z k) :
    P2Exact (GaussInt.neg z) k := by
  rcases h with ⟨u, hu, hnu⟩
  refine ⟨GaussInt.neg u, ?_, ?_⟩
  · rw [GaussInt.neg_mul, hu]
  · intro hdiv
    exact hnu ((piDivides_neg u).1 hdiv)

/-- `b₂ = a₁² + 4 a₂ = 16 a` on the Frey model. `a₁ = 0` and `a₂ = 4 a`. -/
def b2Frey (E : FreyCurve4413) : GaussInt :=
  GaussInt.ofInt (16 * E.a)

/-- `b₄ = 2 a₄ + a₁ a₃ = 2 a₄`. -/
def b4Frey (E : FreyCurve4413) : GaussInt :=
  GaussInt.smul 2 ⟨E.B_re, E.B_im⟩

/-- `b₆ = a₃² + 4 a₆ = 0`. -/
def b6Frey (_E : FreyCurve4413) : GaussInt :=
  GaussInt.zero

/-- `b₈ = -a₄²` when `a₁ = a₃ = a₆ = 0`. -/
def b8Frey (E : FreyCurve4413) : GaussInt :=
  GaussInt.neg (GaussInt.mul ⟨E.B_re, E.B_im⟩ ⟨E.B_re, E.B_im⟩)

theorem b2Frey_from_a2 (E : FreyCurve4413) :
    b2Frey E = GaussInt.smul 4 (GaussInt.ofInt E.A_int) := by
  rw [E.h_A]
  simp [b2Frey, GaussInt.smul, GaussInt.ofInt]
  omega

/-- `π⁸` divides `b₂`, because `b₂ = 2⁴ a` and `v_π(2⁴) = 8`.

`a` may still be divisible by `π`. Equality `v_π(b₂) = 8` needs `a` odd,
which is stronger than `c` odd.
-/
theorem b2_divisible_by_pi_eight (E : FreyCurve4413) :
    ∃ u, GaussInt.mul u (piPow 8) = b2Frey E := by
  have h2 := two_pow_as_pi 4
  have hpow : (2 : ℤ) ^ 4 = 16 := by decide
  refine ⟨GaussInt.mul (twoUnit 4) (GaussInt.ofInt E.a), ?_⟩
  rw [mul_mul_swap (twoUnit 4) (GaussInt.ofInt E.a) (piPow 8), h2, ofInt_mul, hpow]
  rfl

theorem b2_p2_exact_eight_of_a_odd (E : FreyCurve4413) (ha : E.a.natAbs % 2 = 1) :
    P2Exact (b2Frey E) 8 := by
  have hform : b2Frey E =
      GaussInt.mul (GaussInt.ofInt ((2 : ℤ) ^ 4)) (GaussInt.ofInt E.a) := by
    rw [ofInt_mul]
    have hpow : (2 : ℤ) ^ 4 = 16 := by decide
    simp [b2Frey, hpow]
  rw [hform]
  exact P2Exact_mul (p2_valuation_of_two_pow 4)
    (P2Exact_zero_of_not_pi (not_piDivides_ofInt_of_natAbs_odd ha))

/-- If `c` is odd, `v_π(b₄) = 4`. `b₄ = 2 a₄` and `v_π(a₄) = 2`. -/
theorem b4_p2_exact_four (E : FreyCurve4413) (hodd : E.c.natAbs % 2 = 1) :
    P2Exact (b4Frey E) 4 := by
  have h2 : P2Exact (GaussInt.ofInt 2) 2 := by
    simpa [Int.pow_one] using p2_valuation_of_two_pow 1
  rw [show b4Frey E = GaussInt.mul (GaussInt.ofInt 2) ⟨E.B_re, E.B_im⟩ from
    smul_eq_mul_ofInt 2 ⟨E.B_re, E.B_im⟩]
  exact P2Exact_mul h2 (a4_p2_exact_two E hodd)

theorem b6Frey_zero (E : FreyCurve4413) : b6Frey E = GaussInt.zero := rfl

/-- If `c` is odd, `v_π(b₈) = 4`. `b₈ = -a₄²`. -/
theorem b8_p2_exact_four (E : FreyCurve4413) (hodd : E.c.natAbs % 2 = 1) :
    P2Exact (b8Frey E) 4 := by
  exact P2Exact_neg (P2Exact_mul (a4_p2_exact_two E hodd) (a4_p2_exact_two E hodd))

/-- Scaling by `u = π` meets the `c₄` and `Δ` divisibility conditions.

`c₄' = c₄ / π⁴` and `Δ' = Δ / π¹²` are integral in those two invariants
when `4 ≤ v_π(c₄)` and `12 ≤ v_π(Δ)`. The valuations are `10` and `18`,
so both inequalities hold. `4 ∣ 10` is not this comparison. The same
substitution divides `a₄` by `π⁴`, and `v_π(a₄) = 2` is below `4`, so
`u = π` with `r = s = t = 0` is not an integral model. Scaling by `π²`
asks for `v_π(Δ) ≥ 24`, and `18` is below `24`.

A translation `x = x' + r` does not change `c₄`, `c₆`, or `Δ`, so it
leaves these valuations in place. Ogg's formula `v(Δ) - m + 1` is the
tame conductor. At `π` the wild part is the open statement
`pacetti_2_8_open`. This theorem does not produce `MinimalModelAt2`.
-/
theorem pi_scaling_c_invariants_hold (E : FreyCurve4413) (hodd : E.c.natAbs % 2 = 1) :
    P2Exact (c4_Frey E.a E.b) 10 ∧ P2Exact (deltaGauss E) 18 ∧
      P2Exact ⟨E.B_re, E.B_im⟩ 2 ∧ 4 ≤ 10 ∧ 12 ≤ 18 ∧ ¬ (24 ≤ 18) :=
  ⟨c4_p2_exact_ten E hodd, delta_p2_exact_eighteen E hodd, a4_p2_exact_two E hodd,
    by decide, by decide, by decide⟩

/-- `4 ∤ 10` is true, and it is not the scaling test.

Scaling by `u = π` asks for `4 ≤ v_π(c₄)` and `12 ≤ v_π(Δ)`. Both hold
when those valuations are `10` and `18`. A model is not proved minimal
by the failure of `4 ∣ 10`.
-/
theorem four_not_dvd_ten_does_not_block_scaling :
    (4 ≤ 10) ∧ (12 ≤ 18) ∧ ¬ (4 ∣ (10 : ℕ)) := by
  decide

theorem int_odd_of_natAbs_odd {n : ℤ} (h : n.natAbs % 2 = 1) : n % 2 = 1 := by
  rcases int_mod_two n with hz | ho
  · have heven : n.natAbs % 2 = 0 := natAbs_of_two_dvd (Int.dvd_of_emod_eq_zero hz)
    omega
  · exact ho

theorem int_even_of_natAbs_even {n : ℤ} (h : n.natAbs % 2 = 0) : n % 2 = 0 := by
  rcases Nat.dvd_of_mod_eq_zero h with ⟨k, hk⟩
  cases n with
  | ofNat m =>
    simp [Int.natAbs] at hk
    rw [hk]
    change ((2 * k : ℕ) : ℤ) % 2 = 0
    rw [Int.natCast_mul]
    have h2 : ((2 : ℕ) : ℤ) = 2 := by decide
    rw [h2]
    exact Int.mul_emod_right 2 ↑k
  | negSucc m =>
    simp [Int.natAbs] at hk
    rw [Int.negSucc_eq]
    have happ : ↑m + 1 = ((m + 1 : ℕ) : ℤ) := by omega
    have hcast : ((m + 1 : ℕ) : ℤ) = (2 : ℤ) * ↑k := by
      rw [hk, Int.natCast_mul]
      have h2 : ((2 : ℕ) : ℤ) = 2 := by decide
      rw [h2]
    rw [happ, hcast, Int.neg_mul_eq_mul_neg, Int.mul_emod_right]

theorem int_even_split {n : ℤ} (h : n % 2 = 0) : n = 2 * (n / 2) :=
  (Int.mul_ediv_cancel' (Int.dvd_of_emod_eq_zero h)).symm

theorem int_odd_split {n : ℤ} (h : n % 2 = 1) : n = 2 * ((n - 1) / 2) + 1 := by
  have hsub : (n - 1) % 2 = (n % 2 - (1 : ℤ) % 2) % 2 := Int.sub_emod n 1 2
  rw [h] at hsub
  have hone : ((1 : ℤ) % 2) = 1 := by decide
  rw [hone] at hsub
  have hzero : ((1 : ℤ) - 1) % 2 = 0 := by decide
  rw [hzero] at hsub
  have hcancel := Int.mul_ediv_cancel' (Int.dvd_of_emod_eq_zero hsub)
  omega

theorem sq_mod_two_of_even {n : ℤ} (h : n % 2 = 0) : n ^ 2 % 2 = 0 := by
  rw [int_even_split h]
  have hexp : (2 * (n / 2)) ^ 2 = 2 * (2 * (n / 2) ^ 2) := by
    grind
  rw [hexp, Int.mul_emod_right]

theorem sq_mod_two_of_odd {n : ℤ} (h : n % 2 = 1) : n ^ 2 % 2 = 1 := by
  rw [int_odd_split h]
  have hexp : (2 * ((n - 1) / 2) + 1) ^ 2 =
      2 * (2 * ((n - 1) / 2) ^ 2 + 2 * ((n - 1) / 2)) + 1 := by
    grind
  rw [hexp]
  have hmod :
      (2 * (2 * ((n - 1) / 2) ^ 2 + 2 * ((n - 1) / 2)) + 1) % 2 = (1 : ℤ) % 2 := by
    rw [Int.add_comm, Int.add_mul_emod_self_left]
  rw [hmod]
  decide

theorem fourth_mod_four_of_odd {n : ℤ} (h : n % 2 = 1) : n ^ 4 % 4 = 1 := by
  rw [int_odd_split h]
  have hpoly :
      (2 * ((n - 1) / 2) + 1) ^ 4 =
        4 * (4 * ((n - 1) / 2) ^ 4 + 8 * ((n - 1) / 2) ^ 3 +
          6 * ((n - 1) / 2) ^ 2 + 2 * ((n - 1) / 2)) + 1 := by
    grind
  rw [hpoly, Int.add_comm, Int.add_mul_emod_self_left]
  decide

theorem fourth_mod_four_of_even {n : ℤ} (h : n % 2 = 0) : n ^ 4 % 4 = 0 := by
  rw [int_even_split h]
  have hpoly : (2 * (n / 2)) ^ 4 = 4 * (4 * (n / 2) ^ 4) := by grind
  rw [hpoly, Int.mul_emod_right]

theorem sq_div_four_of_even {n : ℤ} (h : n % 2 = 0) : (4 : ℤ) ∣ n ^ 2 := by
  rw [int_even_split h]
  refine ⟨(n / 2) ^ 2, ?_⟩
  grind

theorem thirteen_mod_four_of_even {n : ℤ} (h : n % 2 = 0) : n ^ 13 % 4 = 0 := by
  rcases sq_div_four_of_even h with ⟨m, hm⟩
  have hpow : n ^ 13 = n ^ 2 * n ^ 11 := by
    rw [show (13 : ℕ) = 2 + 11 by decide, Int.pow_add]
  rw [hpow, hm, Int.mul_assoc]
  exact Int.mul_emod_right 4 (m * n ^ 11)

/-- If `c` is even then both `a` and `b` are even.

An odd fourth power is `1` mod `4`, so two odd fourth powers sum to `2` mod
`4`. An even integer has square divisible by `4`, so `c¹³` is `0` mod `4`.
-/
theorem both_even_of_c_even (E : FreyCurve4413) (heven : E.c.natAbs % 2 = 0) :
    E.a % 2 = 0 ∧ E.b % 2 = 0 := by
  have hc : E.c % 2 = 0 := int_even_of_natAbs_even heven
  have hsum : (E.a ^ 4 + E.b ^ 4) % 4 = 0 := by
    rw [E.h_eq]
    exact thirteen_mod_four_of_even hc
  have hmod : (E.a ^ 4 % 4 + E.b ^ 4 % 4) % 4 = 0 := by
    rw [← Int.add_emod, hsum]
  rcases int_mod_two E.a with ha | ha
  · rcases int_mod_two E.b with hb | hb
    · exact ⟨ha, hb⟩
    · have hne : (E.a ^ 4 % 4 + E.b ^ 4 % 4) % 4 = 1 := by
        rw [fourth_mod_four_of_even ha, fourth_mod_four_of_odd hb]
        decide
      rw [hne] at hmod
      omega
  · rcases int_mod_two E.b with hb | hb
    · have hne : (E.a ^ 4 % 4 + E.b ^ 4 % 4) % 4 = 1 := by
        rw [fourth_mod_four_of_odd ha, fourth_mod_four_of_even hb]
        decide
      rw [hne] at hmod
      omega
    · have hne : (E.a ^ 4 % 4 + E.b ^ 4 % 4) % 4 = 2 := by
        rw [fourth_mod_four_of_odd ha, fourth_mod_four_of_odd hb]
        decide
      rw [hne] at hmod
      omega

/-- If `c` is odd and `a` is odd, then `b` is even. -/
theorem b_even_of_a_odd (E : FreyCurve4413) (hodd : E.c.natAbs % 2 = 1)
    (ha : E.a.natAbs % 2 = 1) : E.b.natAbs % 2 = 0 := by
  have hsum := odd_c_sum_squares_odd E hodd
  have ha2 : E.a.natAbs ^ 2 % 2 = 1 := nat_odd_pow E.a.natAbs 2 ha
  have hb2 : E.b.natAbs ^ 2 % 2 = 0 := by
    have hmod := Nat.add_mod (E.a.natAbs ^ 2) (E.b.natAbs ^ 2) 2
    rw [hsum] at hmod
    have hpair : E.b.natAbs ^ 2 % 2 = 0 ∨ E.b.natAbs ^ 2 % 2 = 1 := by omega
    rcases hpair with hb | hb
    · exact hb
    · rw [Nat.add_mod, ha2, hb] at hsum
      omega
  have hoddB : E.b.natAbs % 2 ≠ 1 := by
    intro hb
    have h1 := nat_odd_pow E.b.natAbs 2 hb
    omega
  have hpair : E.b.natAbs % 2 = 0 ∨ E.b.natAbs % 2 = 1 := by omega
  rcases hpair with hb | hb
  · exact hb
  · exact absurd hb hoddB

/-- If `c` is odd and `a` is even, then `b` is odd. -/
theorem b_odd_of_a_even (E : FreyCurve4413) (hodd : E.c.natAbs % 2 = 1)
    (ha : E.a.natAbs % 2 = 0) : E.b.natAbs % 2 = 1 := by
  have hsum := odd_c_sum_squares_odd E hodd
  have ha2 : E.a.natAbs ^ 2 % 2 = 0 := by
    rw [Nat.pow_succ, Nat.pow_one, Nat.mul_mod, ha]
  have hb2 : E.b.natAbs ^ 2 % 2 = 1 := by
    have hmod := Nat.add_mod (E.a.natAbs ^ 2) (E.b.natAbs ^ 2) 2
    rw [ha2, hsum] at hmod
    omega
  have hpair : E.b.natAbs % 2 = 0 ∨ E.b.natAbs % 2 = 1 := by omega
  rcases hpair with hb | hb
  · have h0 : E.b.natAbs ^ 2 % 2 = 0 := by
      rw [Nat.pow_succ, Nat.pow_one, Nat.mul_mod, hb]
    omega
  · exact hb

/-- If `c` is odd and `b` is odd, then `a` is even. -/
theorem a_even_of_b_odd (E : FreyCurve4413) (hodd : E.c.natAbs % 2 = 1)
    (hb : E.b.natAbs % 2 = 1) : E.a.natAbs % 2 = 0 := by
  have hsum := odd_c_sum_squares_odd E hodd
  have hb2 : E.b.natAbs ^ 2 % 2 = 1 := nat_odd_pow E.b.natAbs 2 hb
  have ha2 : E.a.natAbs ^ 2 % 2 = 0 := by
    have hmod := Nat.add_mod (E.a.natAbs ^ 2) (E.b.natAbs ^ 2) 2
    rw [hsum] at hmod
    have hpair : E.a.natAbs ^ 2 % 2 = 0 ∨ E.a.natAbs ^ 2 % 2 = 1 := by omega
    rcases hpair with ha | ha
    · exact ha
    · rw [Nat.add_mod, ha, hb2] at hsum
      omega
  have hoddA : E.a.natAbs % 2 ≠ 1 := by
    intro ha
    have h1 := nat_odd_pow E.a.natAbs 2 ha
    omega
  have hpair : E.a.natAbs % 2 = 0 ∨ E.a.natAbs % 2 = 1 := by omega
  rcases hpair with ha | ha
  · exact ha
  · exact absurd ha hoddA

/-- `π³ = -2 + 2 √(-1)`. -/
theorem piPow_three : piPow 3 = ⟨-2, 2⟩ := by
  simp [piPow, pi, GaussInt.npow, GaussInt.mul, GaussInt.one]

/-- `π⁴ = -4`. -/
theorem piPow_four : piPow 4 = ⟨-4, 0⟩ := by
  simp [piPow, pi, GaussInt.npow, GaussInt.mul, GaussInt.one]

/-- `π⁵ = -4 - 4 √(-1)`. -/
theorem piPow_five : piPow 5 = ⟨-4, -4⟩ := by
  simp [piPow, pi, GaussInt.npow, GaussInt.mul, GaussInt.one]

/-- `π⁶ = -8 √(-1)`. -/
theorem piPow_six : piPow 6 = ⟨0, -8⟩ := by
  simp [piPow, pi, GaussInt.npow, GaussInt.mul, GaussInt.one]

/-- `π⁷ = 8 - 8 √(-1)`. -/
theorem piPow_seven : piPow 7 = ⟨8, -8⟩ := by
  simp [piPow, pi, GaussInt.npow, GaussInt.mul, GaussInt.one]

/-- `π⁸ = 16`. -/
theorem piPow_eight : piPow 8 = ⟨16, 0⟩ := by
  simp [piPow, pi, GaussInt.npow, GaussInt.mul, GaussInt.one]

/-- Coefficients after Pacetti's translation `x = x' + π` on
`y² = x³ + 4 a x² + 2 (a² + b² √(-1)) x`.

`a₂' = 4 a + 3 π`, `a₄' = 3 π² + 8 a π + 2 (a² + b² √(-1))`, and
`a₆' = π³ + 4 a π² + 2 (a² + b² √(-1)) π`. A shift of `x` does not
change `c₄`, `c₆`, or `Δ`.
-/
def a2AfterPi (E : FreyCurve4413) : GaussInt :=
  ⟨4 * E.a + 3, 3⟩

def a4AfterPi (E : FreyCurve4413) : GaussInt :=
  ⟨2 * E.a ^ 2 + 8 * E.a, 2 * E.b ^ 2 + 8 * E.a + 6⟩

def a6AfterPi (E : FreyCurve4413) : GaussInt :=
  ⟨2 * E.a ^ 2 - 2 * E.b ^ 2 - 2, 2 * E.a ^ 2 + 2 * E.b ^ 2 + 8 * E.a + 2⟩

theorem a2AfterPi_p2_exact_one (E : FreyCurve4413) : P2Exact (a2AfterPi E) 1 := by
  refine ⟨⟨2 * E.a + 3, -(2 * E.a)⟩, ?_, ?_⟩
  · simp [a2AfterPi, piPow, pi, GaussInt.npow, GaussInt.mul, GaussInt.one]
    constructor <;> omega
  · intro hdiv
    simp [piDivides] at hdiv

theorem two_dvd_b_sq_sub_a_sq_add_three {a b : ℤ} (ha : a % 2 = 1) (hb : b % 2 = 0) :
    (2 : ℤ) ∣ b ^ 2 - a ^ 2 + 3 := by
  let p := (a - 1) / 2
  let q := b / 2
  have ha' : a = 2 * p + 1 := int_odd_split ha
  have hb' : b = 2 * q := int_even_split hb
  refine ⟨2 * q ^ 2 - 2 * p ^ 2 - 2 * p + 1, ?_⟩
  rw [ha', hb']
  grind

theorem two_dvd_a_sq_add_b_sq_add_eight_a_add_three {a b : ℤ}
    (ha : a % 2 = 1) (hb : b % 2 = 0) :
    (2 : ℤ) ∣ a ^ 2 + b ^ 2 + 8 * a + 3 := by
  let p := (a - 1) / 2
  let q := b / 2
  have ha' : a = 2 * p + 1 := int_odd_split ha
  have hb' : b = 2 * q := int_even_split hb
  refine ⟨2 * p ^ 2 + 10 * p + 2 * q ^ 2 + 6, ?_⟩
  rw [ha', hb']
  grind

theorem two_dvd_a_sq_sub_b_sq_sub_one {a b : ℤ} (ha : a % 2 = 1) (hb : b % 2 = 0) :
    (2 : ℤ) ∣ a ^ 2 - b ^ 2 - 1 := by
  let p := (a - 1) / 2
  let q := b / 2
  have ha' : a = 2 * p + 1 := int_odd_split ha
  have hb' : b = 2 * q := int_even_split hb
  refine ⟨2 * p ^ 2 + 2 * p - 2 * q ^ 2, ?_⟩
  rw [ha', hb']
  grind

theorem two_dvd_a_sq_add_b_sq_add_four_a_add_one {a b : ℤ}
    (ha : a % 2 = 1) (hb : b % 2 = 0) :
    (2 : ℤ) ∣ a ^ 2 + b ^ 2 + 4 * a + 1 := by
  let p := (a - 1) / 2
  let q := b / 2
  have ha' : a = 2 * p + 1 := int_odd_split ha
  have hb' : b = 2 * q := int_even_split hb
  refine ⟨2 * p ^ 2 + 6 * p + 2 * q ^ 2 + 3, ?_⟩
  rw [ha', hb']
  grind

/-- If `c` is odd and `a` is odd, then `v_π(a₄') = 3` after `x ↦ x + π`.

`b` is even. Pacetti's `b`-even branch of Lemma 2.8(2) starts from this
valuation together with `v_π(a₆') = 4`. It is not `v_π(a₄') = 4`.
-/
theorem a4AfterPi_p2_exact_three_of_a_odd (E : FreyCurve4413)
    (hodd : E.c.natAbs % 2 = 1) (ha : E.a.natAbs % 2 = 1) :
    P2Exact (a4AfterPi E) 3 := by
  have hb0 := b_even_of_a_odd E hodd ha
  have ha2 := int_odd_of_natAbs_odd ha
  have hb2 := int_even_of_natAbs_even hb0
  have hure2 := two_dvd_b_sq_sub_a_sq_add_three ha2 hb2
  have huim2 := two_dvd_a_sq_add_b_sq_add_eight_a_add_three ha2 hb2
  let ure := (E.b ^ 2 - E.a ^ 2 + 3) / 2
  let uim := -((E.a ^ 2 + E.b ^ 2 + 8 * E.a + 3) / 2)
  have hure : (2 : ℤ) * ure = E.b ^ 2 - E.a ^ 2 + 3 :=
    Int.mul_ediv_cancel' hure2
  have huim : (2 : ℤ) * uim = -(E.a ^ 2 + E.b ^ 2 + 8 * E.a + 3) := by
    have hpos := Int.mul_ediv_cancel' huim2
    calc
      (2 : ℤ) * uim =
          (2 : ℤ) * (-((E.a ^ 2 + E.b ^ 2 + 8 * E.a + 3) / 2)) := rfl
      _ = -((2 : ℤ) * ((E.a ^ 2 + E.b ^ 2 + 8 * E.a + 3) / 2)) := by
        rw [Int.mul_neg]
      _ = -(E.a ^ 2 + E.b ^ 2 + 8 * E.a + 3) := by rw [hpos]
  refine ⟨⟨ure, uim⟩, ?_, ?_⟩
  · rw [piPow_three]
    simp [a4AfterPi, GaussInt.mul]
    constructor
    · have hlin : ure * -2 - uim * 2 = -(2 * ure + 2 * uim) := by grind
      rw [hlin, hure, huim]
      grind
    · have hlin : ure * 2 + uim * -2 = 2 * ure - 2 * uim := by grind
      rw [hlin, hure, huim]
      grind
  · intro hdiv
    have hsum : ure + uim = -(E.a * (E.a + 4)) := by
      have htwice : (2 : ℤ) * (ure + uim) = 2 * ure + 2 * uim := by grind
      rw [hure, huim] at htwice
      have hred : (2 : ℤ) * (ure + uim) = (2 : ℤ) * (-(E.a * (E.a + 4))) := by
        grind
      exact Int.eq_of_mul_eq_mul_left (by decide) hred
    simp [piDivides] at hdiv
    rw [hsum] at hdiv
    have hprod : (E.a * (E.a + 4)) % 2 = 1 := by
      have ha' := int_odd_split ha2
      rw [ha']
      have hexp : (2 * ((E.a - 1) / 2) + 1) * (2 * ((E.a - 1) / 2) + 1 + 4) =
          2 * ((2 * ((E.a - 1) / 2) + 1) * ((E.a - 1) / 2 + 2)) + 1 := by
        grind
      rw [hexp]
      have hmod : (2 * ((2 * ((E.a - 1) / 2) + 1) * ((E.a - 1) / 2 + 2)) + 1) % 2 =
          (1 : ℤ) % 2 := by
        rw [Int.add_comm, Int.add_mul_emod_self_left]
      rw [hmod]
      decide
    have hnd : ¬ (2 : ℤ) ∣ E.a * (E.a + 4) := by
      intro hd
      rw [Int.emod_eq_zero_of_dvd hd] at hprod
      omega
    have hneg := Int.neg_emod (a := E.a * (E.a + 4)) (b := 2)
    rw [ite_eq_right hnd, hprod] at hneg
    rw [hneg] at hdiv
    omega

/-- If `c` is odd and `a` is odd, then `v_π(a₆') = 4` after `x ↦ x + π`. -/
theorem a6AfterPi_p2_exact_four_of_a_odd (E : FreyCurve4413)
    (hodd : E.c.natAbs % 2 = 1) (ha : E.a.natAbs % 2 = 1) :
    P2Exact (a6AfterPi E) 4 := by
  have hb0 := b_even_of_a_odd E hodd ha
  have ha2 := int_odd_of_natAbs_odd ha
  have hb2 := int_even_of_natAbs_even hb0
  have hre2 := two_dvd_a_sq_sub_b_sq_sub_one ha2 hb2
  have him2 := two_dvd_a_sq_add_b_sq_add_four_a_add_one ha2 hb2
  let ure := -((E.a ^ 2 - E.b ^ 2 - 1) / 2)
  let uim := -((E.a ^ 2 + E.b ^ 2 + 4 * E.a + 1) / 2)
  have hure : (2 : ℤ) * ure = -(E.a ^ 2 - E.b ^ 2 - 1) := by
    have hpos := Int.mul_ediv_cancel' hre2
    calc
      (2 : ℤ) * ure = (2 : ℤ) * (-((E.a ^ 2 - E.b ^ 2 - 1) / 2)) := rfl
      _ = -((2 : ℤ) * ((E.a ^ 2 - E.b ^ 2 - 1) / 2)) := by rw [Int.mul_neg]
      _ = -(E.a ^ 2 - E.b ^ 2 - 1) := by rw [hpos]
  have huim : (2 : ℤ) * uim = -(E.a ^ 2 + E.b ^ 2 + 4 * E.a + 1) := by
    have hpos := Int.mul_ediv_cancel' him2
    calc
      (2 : ℤ) * uim = (2 : ℤ) * (-((E.a ^ 2 + E.b ^ 2 + 4 * E.a + 1) / 2)) := rfl
      _ = -((2 : ℤ) * ((E.a ^ 2 + E.b ^ 2 + 4 * E.a + 1) / 2)) := by rw [Int.mul_neg]
      _ = -(E.a ^ 2 + E.b ^ 2 + 4 * E.a + 1) := by rw [hpos]
  refine ⟨⟨ure, uim⟩, ?_, ?_⟩
  · rw [piPow_four]
    simp [a6AfterPi, GaussInt.mul]
    constructor
    · have hlin : ure * -4 = -(2 * (2 * ure)) := by grind
      rw [hlin, hure]
      grind
    · have hlin : uim * -4 = -(2 * (2 * uim)) := by grind
      rw [hlin, huim]
      grind
  · intro hdiv
    have hsum : ure + uim = -(E.a * (E.a + 2)) := by
      have htwice : (2 : ℤ) * (ure + uim) = 2 * ure + 2 * uim := by grind
      rw [hure, huim] at htwice
      have hred : (2 : ℤ) * (ure + uim) = (2 : ℤ) * (-(E.a * (E.a + 2))) := by
        grind
      exact Int.eq_of_mul_eq_mul_left (by decide) hred
    simp [piDivides] at hdiv
    rw [hsum] at hdiv
    have hprod : (E.a * (E.a + 2)) % 2 = 1 := by
      have ha' := int_odd_split ha2
      rw [ha']
      have hexp : (2 * ((E.a - 1) / 2) + 1) * (2 * ((E.a - 1) / 2) + 1 + 2) =
          2 * ((2 * ((E.a - 1) / 2) + 1) * ((E.a - 1) / 2 + 1)) + 1 := by
        grind
      rw [hexp]
      have hmod : (2 * ((2 * ((E.a - 1) / 2) + 1) * ((E.a - 1) / 2 + 1)) + 1) % 2 =
          (1 : ℤ) % 2 := by
        rw [Int.add_comm, Int.add_mul_emod_self_left]
      rw [hmod]
      decide
    have hnd : ¬ (2 : ℤ) ∣ E.a * (E.a + 2) := by
      intro hd
      rw [Int.emod_eq_zero_of_dvd hd] at hprod
      omega
    have hneg := Int.neg_emod (a := E.a * (E.a + 2)) (b := 2)
    rw [ite_eq_right hnd, hprod] at hneg
    rw [hneg] at hdiv
    omega

/-- `(1, 0, 1)` and `(0, 1, 1)` have the same `v_π(c₄)` and `v_π(Δ)`, and
different valuations of the translated `a₄`.

Both have odd `c`. After `x ↦ x + π`, `v_π(a₄') = 3` on `(1, 0, 1)` and
`v_π(a₄') = 6` on `(0, 1, 1)`. `v_π(a₆')` is `4` and `5`. A single
`decide` on `v_π(c₄) = 10` and `v_π(Δ) = 18` does not choose one
conductor exponent. `MinimalModelAt2` is `qiLocalMinimalAtPi`. `FTameAtPi`
and `SwanAtPi` stay sealed.
-/
theorem translated_a4_splits_on_trivial_curves :
    P2Exact (c4_Frey trivial.a trivial.b) 10 ∧
      P2Exact (deltaGauss trivial) 18 ∧
      P2Exact (a4AfterPi trivial) 3 ∧
      P2Exact (a6AfterPi trivial) 4 ∧
      P2Exact (c4_Frey trivialB.a trivialB.b) 10 ∧
      P2Exact (deltaGauss trivialB) 18 ∧
      P2Exact (a4AfterPi trivialB) 6 ∧
      P2Exact (a6AfterPi trivialB) 5 := by
  have hodd : trivial.c.natAbs % 2 = 1 := by decide
  have hoddB : trivialB.c.natAbs % 2 = 1 := by decide
  have ha : trivial.a.natAbs % 2 = 1 := by decide
  refine ⟨c4_p2_exact_ten trivial hodd, delta_p2_exact_eighteen trivial hodd,
    a4AfterPi_p2_exact_three_of_a_odd trivial hodd ha,
    a6AfterPi_p2_exact_four_of_a_odd trivial hodd ha,
    c4_p2_exact_ten trivialB hoddB, delta_p2_exact_eighteen trivialB hoddB, ?_, ?_⟩
  · refine ⟨⟨-1, 0⟩, ?_, ?_⟩
    · rw [piPow_six]
      simp [a4AfterPi, trivialB, mk', GaussInt.mul]
    · intro hdiv
      simp [piDivides] at hdiv
  · refine ⟨⟨0, -1⟩, ?_, ?_⟩
    · rw [piPow_five]
      simp [a6AfterPi, trivialB, mk', GaussInt.mul]
    · intro hdiv
      simp [piDivides] at hdiv

/-- `ℤ[√(-1)] / (π)` has two classes. A non-multiple of `π` is congruent to `1`. -/
theorem not_pi_means_congruent_one (u : GaussInt) (h : ¬ piDivides u) :
    piDivides (GaussInt.add u (GaussInt.ofInt (-1))) := by
  simp [piDivides, GaussInt.add, GaussInt.ofInt] at h ⊢
  have hpair := int_mod_two (u.re + u.im)
  have hone : (u.re + u.im) % 2 = 1 := by
    rcases hpair with h0 | h1
    · exact absurd h0 h
    · exact h1
  have hsum : u.re + -1 + u.im = (u.re + u.im) - 1 := by omega
  rw [hsum]
  have hsub : ((u.re + u.im) - 1) % 2 =
      ((u.re + u.im) % 2 - (1 : ℤ) % 2) % 2 :=
    Int.sub_emod (u.re + u.im) 1 2
  rw [hsub, hone]
  decide

/-- `v_π(a₂') = 1` blocks scaling the model after `x ↦ x + π` by `π^k`, `k ≥ 1`.

Scaling by `u = π^k` needs `v_π(a₂) ≥ 2k`. Here `2k ≥ 2` and the valuation
is `1`. The inequalities `4 ≤ v_π(c₄)` and `12 ≤ v_π(Δ)` still hold, with
values `10` and `18`, so `c₄` and `Δ` do not block `u = π`. A later
translation changes `a₂`. This theorem does not produce `MinimalModelAt2`.
-/
theorem translated_pi_scaling_blocked_by_a2 (E : FreyCurve4413)
    (hodd : E.c.natAbs % 2 = 1) (k : ℕ) (hk : 1 ≤ k) :
    P2Exact (a2AfterPi E) 1 ∧ P2Exact (c4_Frey E.a E.b) 10 ∧
      P2Exact (deltaGauss E) 18 ∧ (4 ≤ 10) ∧ (12 ≤ 18) ∧ ¬ (2 * k ≤ 1) := by
  refine ⟨a2AfterPi_p2_exact_one E, c4_p2_exact_ten E hodd,
    delta_p2_exact_eighteen E hodd, by decide, by decide, ?_⟩
  omega

/-- If `c` is odd and `a` is odd, the translated `aᵢ` block `u = π`.

`v_π(a₂') = 1 < 2`, `v_π(a₄') = 3 < 4`, and `v_π(a₆') = 4 < 6`.
`4 ≤ 10` and `12 ≤ 18` still hold for `c₄` and `Δ`.
-/
theorem a_odd_ai_block_pi_scaling (E : FreyCurve4413)
    (hodd : E.c.natAbs % 2 = 1) (ha : E.a.natAbs % 2 = 1) :
    P2Exact (a2AfterPi E) 1 ∧ P2Exact (a4AfterPi E) 3 ∧
      P2Exact (a6AfterPi E) 4 ∧ ¬ (2 ≤ 1) ∧ ¬ (4 ≤ 3) ∧ ¬ (6 ≤ 4) ∧
      (4 ≤ 10) ∧ (12 ≤ 18) :=
  ⟨a2AfterPi_p2_exact_one E, a4AfterPi_p2_exact_three_of_a_odd E hodd ha,
    a6AfterPi_p2_exact_four_of_a_odd E hodd ha, by decide, by decide, by decide,
    by decide, by decide⟩

/-- On `(0, 1, 1)`, `v_π(a₄') = 6` does not block `u = π`, and `a₆'` does.

`4 ≤ 6`, so the `a₄` condition for scaling by `π` holds. `v_π(a₆') = 5`
is below `6`, and `v_π(a₂') = 1` is below `2`. This is the second parity
case. It is not a proof that every further translate is minimal.
-/
theorem trivialB_a6_blocks_pi_scaling :
    P2Exact (a2AfterPi trivialB) 1 ∧ P2Exact (a4AfterPi trivialB) 6 ∧
      (4 ≤ 6) ∧ P2Exact (a6AfterPi trivialB) 5 ∧ ¬ (6 ≤ 5) ∧ ¬ (2 ≤ 1) := by
  have h := translated_a4_splits_on_trivial_curves
  exact ⟨a2AfterPi_p2_exact_one trivialB, h.2.2.2.2.2.2.1, by decide,
    h.2.2.2.2.2.2.2, by decide, by decide⟩

/-- The cofactor of `a₆'` at valuation `4` is congruent to `1` modulo `π`.

That is the residue which makes `t = π²` the square-root translation on
the `a`-odd branch. It is not the `b`-odd subalgorithm.
-/
theorem a6AfterPi_cofactor_congruent_one (E : FreyCurve4413)
    (hodd : E.c.natAbs % 2 = 1) (ha : E.a.natAbs % 2 = 1) :
    ∃ u, GaussInt.mul u (piPow 4) = a6AfterPi E ∧
      piDivides (GaussInt.add u (GaussInt.ofInt (-1))) := by
  rcases a6AfterPi_p2_exact_four_of_a_odd E hodd ha with ⟨u, hu, hnot⟩
  exact ⟨u, hu, not_pi_means_congruent_one u hnot⟩

/-- `π² = 2 √(-1)`. -/
theorem piPow_two : piPow 2 = ⟨0, 2⟩ := by
  simp [piPow, pi, GaussInt.npow, GaussInt.mul, GaussInt.one]

/-- `a₃` after `y ↦ y + π²` on the model with `a₁ = a₃ = 0`. It is `2 π²`. -/
def a3AfterPiSq : GaussInt :=
  ⟨0, 4⟩

/-- `a₆` after `x ↦ x + π` and `y ↦ y + π²`. This is `a₆' - π⁴`. -/
def a6AfterPiSq (E : FreyCurve4413) : GaussInt :=
  ⟨2 * E.a ^ 2 - 2 * E.b ^ 2 + 2, 2 * E.a ^ 2 + 2 * E.b ^ 2 + 8 * E.a + 2⟩

theorem a3AfterPiSq_from_shift : a3AfterPiSq = GaussInt.smul 2 (piPow 2) := by
  rw [piPow_two]
  simp [a3AfterPiSq, GaussInt.smul]

theorem a6AfterPiSq_from_shift (E : FreyCurve4413) :
    a6AfterPiSq E = GaussInt.sub (a6AfterPi E) (piPow 4) := by
  rw [piPow_four]
  simp [a6AfterPiSq, a6AfterPi, GaussInt.sub]
  omega

theorem a3AfterPiSq_p2_exact_four : P2Exact a3AfterPiSq 4 := by
  refine ⟨⟨0, -1⟩, ?_, ?_⟩
  · rw [piPow_four]
    simp [a3AfterPiSq, GaussInt.mul]
  · intro hdiv
    simp [piDivides] at hdiv

theorem two_dvd_sq_succ_of_odd {a : ℤ} (ha : a % 2 = 1) :
    (2 : ℤ) ∣ (a + 1) ^ 2 := by
  let p := (a - 1) / 2
  have ha' : a = 2 * p + 1 := int_odd_split ha
  refine ⟨2 * (p + 1) ^ 2, ?_⟩
  rw [ha']
  grind

theorem two_dvd_b_sq_add_two_a {a b : ℤ} (ha : a % 2 = 1) (hb : b % 2 = 0) :
    (2 : ℤ) ∣ b ^ 2 + 2 * a := by
  let p := (a - 1) / 2
  let q := b / 2
  have ha' : a = 2 * p + 1 := int_odd_split ha
  have hb' : b = 2 * q := int_even_split hb
  refine ⟨2 * q ^ 2 + 2 * p + 1, ?_⟩
  rw [ha', hb']
  grind

/-- If `c` is odd and `a` is odd, then `v_π(a₆) = 5` after `y ↦ y + π²`. -/
theorem a6AfterPiSq_p2_exact_five_of_a_odd (E : FreyCurve4413)
    (hodd : E.c.natAbs % 2 = 1) (ha : E.a.natAbs % 2 = 1) :
    P2Exact (a6AfterPiSq E) 5 := by
  have hb0 := b_even_of_a_odd E hodd ha
  have ha2 := int_odd_of_natAbs_odd ha
  have hb2 := int_even_of_natAbs_even hb0
  have hre2 := two_dvd_sq_succ_of_odd ha2
  have him2 := two_dvd_b_sq_add_two_a ha2 hb2
  let ure := -(((E.a + 1) ^ 2) / 2)
  let uim := -((E.b ^ 2 + 2 * E.a) / 2)
  have hure : (2 : ℤ) * ure = -((E.a + 1) ^ 2) := by
    have hpos := Int.mul_ediv_cancel' hre2
    calc
      (2 : ℤ) * ure = (2 : ℤ) * (-(((E.a + 1) ^ 2) / 2)) := rfl
      _ = -((2 : ℤ) * (((E.a + 1) ^ 2) / 2)) := by rw [Int.mul_neg]
      _ = -((E.a + 1) ^ 2) := by rw [hpos]
  have huim : (2 : ℤ) * uim = -(E.b ^ 2 + 2 * E.a) := by
    have hpos := Int.mul_ediv_cancel' him2
    calc
      (2 : ℤ) * uim = (2 : ℤ) * (-((E.b ^ 2 + 2 * E.a) / 2)) := rfl
      _ = -((2 : ℤ) * ((E.b ^ 2 + 2 * E.a) / 2)) := by rw [Int.mul_neg]
      _ = -(E.b ^ 2 + 2 * E.a) := by rw [hpos]
  refine ⟨⟨ure, uim⟩, ?_, ?_⟩
  · rw [piPow_five]
    simp [a6AfterPiSq, GaussInt.mul]
    constructor
    · have hlin : ure * -4 - uim * -4 = 2 * (2 * uim) - 2 * (2 * ure) := by grind
      rw [hlin, hure, huim]
      grind
    · have hlin : ure * -4 + uim * -4 = -(2 * (2 * ure + 2 * uim)) := by grind
      rw [hlin, hure, huim]
      grind
  · intro hdiv
    have hpoly : (2 : ℤ) * (ure + uim) =
        -(((E.a + 1) ^ 2) + E.b ^ 2 + 2 * E.a) := by
      have htwice : (2 : ℤ) * (ure + uim) = 2 * ure + 2 * uim := by grind
      rw [htwice, hure, huim]
      grind
    let p := (E.a - 1) / 2
    let q := E.b / 2
    have ha' : E.a = 2 * p + 1 := int_odd_split ha2
    have hb' : E.b = 2 * q := int_even_split hb2
    have hs : ((E.a + 1) ^ 2) + E.b ^ 2 + 2 * E.a =
        2 * (2 * p ^ 2 + 2 * q ^ 2 + 6 * p + 3) := by
      rw [ha', hb']
      grind
    have hoddS : (2 * p ^ 2 + 2 * q ^ 2 + 6 * p + 3) % 2 = 1 := by
      have hexp : 2 * p ^ 2 + 2 * q ^ 2 + 6 * p + 3 =
          2 * (p ^ 2 + q ^ 2 + 3 * p) + 3 := by grind
      rw [hexp]
      have hmod : (2 * (p ^ 2 + q ^ 2 + 3 * p) + 3) % 2 = (3 : ℤ) % 2 := by
        rw [Int.add_comm, Int.add_mul_emod_self_left]
      rw [hmod]
      decide
    have hred : (2 : ℤ) * (ure + uim) =
        (2 : ℤ) * (-(2 * p ^ 2 + 2 * q ^ 2 + 6 * p + 3)) := by
      rw [hpoly, hs]
      grind
    have hsum := Int.eq_of_mul_eq_mul_left (by decide) hred
    simp [piDivides] at hdiv
    rw [hsum] at hdiv
    have hnd : ¬ (2 : ℤ) ∣ 2 * p ^ 2 + 2 * q ^ 2 + 6 * p + 3 := by
      intro hd
      rw [Int.emod_eq_zero_of_dvd hd] at hoddS
      omega
    have hneg := Int.neg_emod (a := 2 * p ^ 2 + 2 * q ^ 2 + 6 * p + 3) (b := 2)
    rw [ite_eq_right hnd, hoddS] at hneg
    rw [hneg] at hdiv
    omega

/-- After `x ↦ x + π` and `y ↦ y + π²`, with `c` odd and `a` odd.

`a₂` is unchanged and `v_π(a₂) = 1`. `a₃ = 2 π²` and `v_π(a₃) = 4`.
`a₄` is unchanged and `v_π(a₄) = 3`. `a₆ = a₆' - π⁴` and `v_π(a₆) = 5`.
Dokchitser's bounds for a minimal model of type `I₂*` ask for
`v(a₂) = 1`, `v(a₃) ≥ 3`, `v(a₄) ≥ 3`, and `v(a₆) ≥ 5`. These
valuations meet the bounds. The converse, Tate's exit
`f = v(Δ) - 4 - n`, and the wild Swan conductor are not theorems.
`a_odd_cubic_eight` is `v_π(d) = 8` and `v_π(Δ) = 18` on this translate.
`FTameAtPi` and `SwanAtPi` stay sealed. Pacetti's Lemma 2.8(2)
prints type `I₂*` and exponent `12` for the even-`b` branch, which is
this `a`-odd case, and type `I₄*` and exponent `10` for odd `b`.
The printed value `v(a₄') = 4` on that second branch does not hold:
`(0, 1, 1)` has `v_π(a₄') = 6`. The odd-`b` subalgorithm is not run here.
-/
theorem a_odd_after_pi_sq_valuations (E : FreyCurve4413)
    (hodd : E.c.natAbs % 2 = 1) (ha : E.a.natAbs % 2 = 1) :
    P2Exact (a2AfterPi E) 1 ∧ P2Exact a3AfterPiSq 4 ∧
      P2Exact (a4AfterPi E) 3 ∧ P2Exact (a6AfterPiSq E) 5 :=
  ⟨a2AfterPi_p2_exact_one E, a3AfterPiSq_p2_exact_four,
    a4AfterPi_p2_exact_three_of_a_odd E hodd ha,
    a6AfterPiSq_p2_exact_five_of_a_odd E hodd ha⟩

/-- `(-√(-1))^5 · π^10 = 32`, and `N(π^10) = 2^10 = 1024`.

`2 = -√(-1) · π²`, so `(π)^10` and `(2)^5 = (32)` are the same principal
ideal. The norm of that ideal is `2^10`, not `32`. This is not a Ribet
level, and it does not prove `n = 32 ∨ n = 64`.
-/
theorem pi_ten_principal :
    GaussInt.mul (twoUnit 5) (piPow (2 * 5)) = GaussInt.ofInt 32 ∧
      GaussInt.norm (piPow 10) = 1024 := by
  constructor
  · have h := two_pow_as_pi 5
    rw [show (2 : ℤ) ^ 5 = 32 by decide] at h
    exact h
  · have h := pi_pow_norm 10
    rw [show (2 : ℤ) ^ 10 = 1024 by decide] at h
    exact h

/-- `(-√(-1))^6 · π^12 = 64`, and `N(π^12) = 2^12 = 4096`.

`(π)^12` and `(2)^6 = (64)` are the same principal ideal. The norm of
that ideal is `2^12`, not `64`.
-/
theorem pi_twelve_principal :
    GaussInt.mul (twoUnit 6) (piPow (2 * 6)) = GaussInt.ofInt 64 ∧
      GaussInt.norm (piPow 12) = 4096 := by
  constructor
  · have h := two_pow_as_pi 6
    rw [show (2 : ℤ) ^ 6 = 64 by decide] at h
    exact h
  · have h := pi_pow_norm 12
    rw [show (2 : ℤ) ^ 12 = 4096 by decide] at h
    exact h

/-- `v_π(a₂' + 3 π) = 3`.

With `a₁ = 0` and `s = 0`, the change of variables `x = u² x' + r` asks
for `v_π(a₂ + 3 r) ≥ 2 v_π(u)`. Here `r = π` and the valuation is `3`,
so the `a₂` slot of `u = π` is integral. `v_π(a₂') = 1` does not forbid
that substitution.
-/
theorem a2_plus_three_pi_p2_exact_three (E : FreyCurve4413) :
    P2Exact ⟨4 * E.a + 6, 6⟩ 3 := by
  refine ⟨⟨-E.a, -E.a - 3⟩, ?_, ?_⟩
  · rw [piPow_three]
    simp [GaussInt.mul]
    constructor <;> omega
  · intro hdiv
    have hsum : -E.a + (-E.a - 3) = -(2 * E.a + 3) := by grind
    simp [piDivides] at hdiv
    rw [hsum] at hdiv
    have hprod : (2 * E.a + 3) % 2 = 1 := by
      have hexp : 2 * E.a + 3 = 2 * (E.a + 1) + 1 := by grind
      rw [hexp]
      have hmod : (2 * (E.a + 1) + 1) % 2 = (1 : ℤ) % 2 := by
        rw [Int.add_comm, Int.add_mul_emod_self_left]
      rw [hmod]
      decide
    have hnd : ¬ (2 : ℤ) ∣ 2 * E.a + 3 := by
      intro hd
      rw [Int.emod_eq_zero_of_dvd hd] at hprod
      omega
    have hneg := Int.neg_emod (a := 2 * E.a + 3) (b := 2)
    rw [ite_eq_right hnd, hprod] at hneg
    rw [hneg] at hdiv
    omega

theorem a2_numerator_at_r_pi (E : FreyCurve4413) :
    GaussInt.add (a2AfterPi E) (GaussInt.smul 3 pi) = ⟨4 * E.a + 6, 6⟩ := by
  simp [a2AfterPi, pi, GaussInt.add, GaussInt.smul]
  omega

/-- If `c` is odd, the `a₄` numerator of `u = π`, `r = π`, `s = t = 0` has
valuation `2`.

The transformed coefficient is `a₄ + 2 r a₂ + 3 r²`. Integrality for
`u = π` needs valuation at least `4`. The value `2` is below `4`, so this
substitution is not an integral model. Together with
`a2_plus_three_pi_p2_exact_three`, the `a₂` slot does not give the
obstruction and the `a₄` slot does, for this one substitution.
This one substitution is not `MinimalModelAt2`.
-/
theorem pi_r_pi_a4_numerator_p2_exact_two (E : FreyCurve4413)
    (hodd : E.c.natAbs % 2 = 1) :
    P2Exact ⟨2 * E.a ^ 2 + 16 * E.a, 2 * E.b ^ 2 + 16 * E.a + 24⟩ 2 := by
  let re := E.a ^ 2 + 8 * E.a
  let im := E.b ^ 2 + 8 * E.a + 12
  have h2 : P2Exact (GaussInt.ofInt 2) 2 := by
    simpa [Int.pow_one] using p2_valuation_of_two_pow 1
  have hform : ⟨2 * E.a ^ 2 + 16 * E.a, 2 * E.b ^ 2 + 16 * E.a + 24⟩ =
      GaussInt.mul (GaussInt.ofInt 2) ⟨re, im⟩ := by
    rw [← smul_eq_mul_ofInt]
    simp [GaussInt.smul]
    grind
  have hsq : E.a ^ 2 + E.b ^ 2 = ↑(E.a.natAbs ^ 2 + E.b.natAbs ^ 2) := by
    rw [int_sq_as_natAbs E.a, int_sq_as_natAbs E.b, Int.natCast_add]
  have hcast : (↑(E.a.natAbs ^ 2 + E.b.natAbs ^ 2) : ℤ) % 2 = 1 :=
    nat_odd_cast_mod_two (odd_c_sum_squares_odd E hodd)
  have hsumSq : (E.a ^ 2 + E.b ^ 2) % 2 = 1 := by
    rw [hsq, hcast]
  have hnot : ¬ piDivides ⟨re, im⟩ := by
    intro hdiv
    simp [piDivides] at hdiv
    have hexp : re + im = (E.a ^ 2 + E.b ^ 2) + 2 * (8 * E.a + 6) := by
      grind
    rw [hexp] at hdiv
    have hmod : ((E.a ^ 2 + E.b ^ 2) + 2 * (8 * E.a + 6)) % 2 =
        (E.a ^ 2 + E.b ^ 2) % 2 := by
      rw [Int.add_mul_emod_self_left]
    rw [hmod, hsumSq] at hdiv
    omega
  have hcof : P2Exact ⟨re, im⟩ 0 := by
    refine ⟨⟨re, im⟩, ?_, hnot⟩
    simp [piPow, GaussInt.npow, GaussInt.mul_one]
  rw [hform]
  exact P2Exact_mul h2 hcof

theorem a4_numerator_at_r_pi (E : FreyCurve4413) :
    GaussInt.add (a4AfterPi E)
        (GaussInt.add (GaussInt.smul 2 (GaussInt.mul pi (a2AfterPi E)))
          (GaussInt.smul 3 (GaussInt.mul pi pi))) =
      ⟨2 * E.a ^ 2 + 16 * E.a, 2 * E.b ^ 2 + 16 * E.a + 24⟩ := by
  simp [a4AfterPi, a2AfterPi, pi, GaussInt.add, GaussInt.mul, GaussInt.smul]
  grind

/-- `v_π(a₂') = 1` does not prove minimality.

`v_π(a₂' + 3 π) = 3 ≥ 2`, so the `a₂` condition for `u = π` and `r = π`
holds. When `c` is odd the `a₄` numerator of that substitution has
valuation `2 < 4`. `MinimalModelAt2` is not produced.
-/
theorem a2_one_does_not_prove_minimal (E : FreyCurve4413)
    (hodd : E.c.natAbs % 2 = 1) :
    P2Exact (a2AfterPi E) 1 ∧ P2Exact ⟨4 * E.a + 6, 6⟩ 3 ∧ (2 ≤ 3) ∧
      P2Exact ⟨2 * E.a ^ 2 + 16 * E.a, 2 * E.b ^ 2 + 16 * E.a + 24⟩ 2 ∧
      ¬ (4 ≤ 2) :=
  ⟨a2AfterPi_p2_exact_one E, a2_plus_three_pi_p2_exact_three E, by decide,
    pi_r_pi_a4_numerator_p2_exact_two E hodd, by decide⟩

/-- For `k ≥ 2`, `u = π^k` does not give an integral discriminant.

A Weierstrass change multiplies `Δ` by `u⁻¹²` and does not use `r`, `s`, or
`t`. Here `v_π(Δ) = 18`, and `12 k ≥ 24`. The new discriminant would have
negative valuation. This leaves `k = 1`. It does not settle that case, and
it does not produce `MinimalModelAt2`.
-/
theorem higher_u_blocked_by_delta (E : FreyCurve4413) (hodd : E.c.natAbs % 2 = 1)
    (k : ℕ) (hk : 2 ≤ k) :
    P2Exact (deltaGauss E) 18 ∧ ¬ (12 * k ≤ 18) :=
  ⟨delta_p2_exact_eighteen E hodd, by omega⟩

/-- `r = 0` and `r = π` are the same class modulo `π`, with different `a₂` valuations.

Both numerators `a₂'` and `a₂' + 3 π` differ by `3 π`, so `π` divides the
difference. Their valuations are `1` and `3`. The residue ring
`ℤ[√(-1)] / (π)` has two classes, and these two translations lie in one
class. An eight-element check of `(r, s, t)` modulo `π` does not compute
the valuations, and it is not `MinimalModelAt2`.
-/
theorem a2_shift_by_pi_same_residue (E : FreyCurve4413) :
    piDivides (GaussInt.sub ⟨4 * E.a + 6, 6⟩ (a2AfterPi E)) ∧
      P2Exact (a2AfterPi E) 1 ∧ P2Exact ⟨4 * E.a + 6, 6⟩ 3 ∧ (1 : ℕ) ≠ 3 := by
  refine ⟨?_, a2AfterPi_p2_exact_one E, a2_plus_three_pi_p2_exact_three E, by decide⟩
  have hsub : GaussInt.sub ⟨4 * E.a + 6, 6⟩ (a2AfterPi E) =
      GaussInt.mul (GaussInt.ofInt 3) pi := by
    simp [a2AfterPi, pi, GaussInt.sub, GaussInt.mul, GaussInt.ofInt]
    grind
  have hp : piDivides pi := by
    simp [piDivides, pi]
  rw [hsub]
  exact (piDivides_mul (GaussInt.ofInt 3) pi).2 (Or.inr hp)

/-- Quotient by `π` when `re + im` is even. -/
def piQuot (z : GaussInt) : GaussInt :=
  ⟨(z.re + z.im) / 2, (z.im - z.re) / 2⟩

theorem mul_pi_piQuot (z : GaussInt) (h : piDivides z) :
    GaussInt.mul (piQuot z) pi = z := by
  have hsum : (2 : ℤ) ∣ z.re + z.im := Int.dvd_of_emod_eq_zero (by simpa [piDivides] using h)
  rcases hsum with ⟨s, hs⟩
  have hdiff : z.im - z.re = 2 * (s - z.re) := by
    omega
  have hq : (z.re + z.im) / 2 = s := by
    have hdvdSum : (2 : ℤ) ∣ z.re + z.im := ⟨s, hs⟩
    have hmul := Int.mul_ediv_cancel' hdvdSum
    rw [hs] at hmul
    have hdiv : (2 * s) / 2 = s :=
      Int.eq_of_mul_eq_mul_left (by decide : (2 : ℤ) ≠ 0) hmul
    rw [hs]
    exact hdiv
  have hdvd : (2 : ℤ) ∣ z.im - z.re := ⟨s - z.re, hdiff⟩
  have hqi : (z.im - z.re) / 2 = s - z.re := by
    have hmul := Int.mul_ediv_cancel' hdvd
    rw [hdiff] at hmul
    have hdiv : (2 * (s - z.re)) / 2 = s - z.re :=
      Int.eq_of_mul_eq_mul_left (by decide : (2 : ℤ) ≠ 0) hmul
    rw [hdiff]
    exact hdiv
  have hprod : GaussInt.mul (piQuot z) pi = ⟨z.re, z.im⟩ := by
    simp [piQuot, pi, GaussInt.mul, hq, hqi]
    constructor <;> omega
  simpa using hprod

theorem piPow_succ_right (k : ℕ) : piPow (k + 1) = GaussInt.mul (piPow k) pi := by
  unfold piPow
  rw [GaussInt.npow_succ, GaussInt.mul_comm]

theorem piPow_ne_zero (k : ℕ) : piPow k ≠ GaussInt.zero := by
  intro h
  have hn : GaussInt.norm (piPow k) = (2 : ℤ) ^ k := by
    rw [piPow, GaussInt.norm_npow]
    have hpi : GaussInt.norm pi = 2 := by simp [pi, GaussInt.norm]
    rw [hpi]
  rw [h] at hn
  simp [GaussInt.norm, GaussInt.zero] at hn
  have hpos : (0 : ℤ) < (2 : ℤ) ^ k := Int.pow_pos (by decide)
  omega

theorem add_neg_self (z : GaussInt) : GaussInt.add z (GaussInt.neg z) = GaussInt.zero := by
  cases z
  simp [GaussInt.add, GaussInt.neg, GaussInt.zero]
  constructor <;> omega

theorem mul_left_cancel {a b c : GaussInt} (ha : a ≠ GaussInt.zero)
    (h : GaussInt.mul a b = GaussInt.mul a c) : b = c := by
  have hzero : GaussInt.mul a (GaussInt.sub b c) = GaussInt.zero := by
    rw [GaussInt.sub_eq_add_neg, GaussInt.mul_add, GaussInt.mul_neg, h,
      add_neg_self]
  rcases (GaussInt.mul_eq_zero.mp hzero) with ha0 | hs
  · exact absurd ha0 ha
  · have hb := GaussInt.add_eq_zero_neg (c := b) (z := GaussInt.neg c)
      (by rw [← GaussInt.sub_eq_add_neg]; exact hs)
    rw [GaussInt.neg_neg] at hb
    exact hb

theorem mul_right_cancel {a b c : GaussInt} (ha : a ≠ GaussInt.zero)
    (h : GaussInt.mul b a = GaussInt.mul c a) : b = c := by
  have h' : GaussInt.mul a b = GaussInt.mul a c := by
    rw [GaussInt.mul_comm a b, GaussInt.mul_comm a c, h]
  exact mul_left_cancel ha h'

theorem not_piPowDvd_succ_of_exact {z : GaussInt} {k : ℕ} (h : P2Exact z k) :
    ¬ ∃ u, GaussInt.mul u (piPow (k + 1)) = z := by
  intro ⟨u, hu⟩
  rcases h with ⟨v, hv, hnv⟩
  have hpSucc : piPow (k + 1) = GaussInt.mul pi (piPow k) := by
    unfold piPow
    rw [GaussInt.npow_succ]
  rw [hpSucc] at hu
  have hu' : GaussInt.mul (GaussInt.mul u pi) (piPow k) = z := by
    rw [← GaussInt.mul_assoc] at hu
    exact hu
  have hv' : GaussInt.mul (GaussInt.mul u pi) (piPow k) = GaussInt.mul v (piPow k) := by
    rw [hu', hv]
  have hcancel := mul_right_cancel (piPow_ne_zero k) hv'
  have hp : piDivides pi := by
    simp [piDivides, pi]
  have hdiv : piDivides (GaussInt.mul u pi) := (piDivides_mul u pi).2 (Or.inr hp)
  rw [hcancel] at hdiv
  exact hnv hdiv

theorem square_as_quot (t : GaussInt) (h : piDivides t) :
    GaussInt.mul t t =
      GaussInt.mul (GaussInt.mul (piQuot t) (piQuot t)) (piPow 2) := by
  let q := piQuot t
  have htq : t = GaussInt.mul q pi := (mul_pi_piQuot t h).symm
  have h2 : piPow 2 = GaussInt.mul pi pi := by
    simp [piPow, pi, GaussInt.npow, GaussInt.mul, GaussInt.one]
  have hstep : GaussInt.mul t t = GaussInt.mul (GaussInt.mul q pi) (GaussInt.mul q pi) := by
    rw [htq]
  rw [hstep, mul_mul_comm_mid q pi q pi, GaussInt.mul_assoc, ← h2]

theorem piDivides_sq_of_pi (t : GaussInt) (h : piDivides (GaussInt.mul t t)) : piDivides t :=
  Or.elim ((piDivides_mul t t).1 h) id id

/-- `π⁵ ∣ t²` implies `π⁶ ∣ t²`. The valuation of a square is even. -/
theorem square_pi_five_gives_six (t : GaussInt)
    (h : ∃ u, GaussInt.mul u (piPow 5) = GaussInt.mul t t) :
    ∃ u, GaussInt.mul u (piPow 6) = GaussInt.mul t t := by
  rcases h with ⟨u, hu⟩
  have hp : piDivides pi := by
    simp [piDivides, pi]
  have hdivt : piDivides t := by
    have hsq : piDivides (GaussInt.mul t t) := by
      rw [← hu, piPow_succ_right, ← GaussInt.mul_assoc]
      exact (piDivides_mul (GaussInt.mul u (piPow 4)) pi).2 (Or.inr hp)
    exact piDivides_sq_of_pi t hsq
  let t1 := piQuot t
  have hsq1 := square_as_quot t hdivt
  have hpow5 : piPow 5 = GaussInt.mul (piPow 3) (piPow 2) := by
    unfold piPow
    rw [show (5 : ℕ) = 3 + 2 by decide, GaussInt.npow_add]
  have ht1 : GaussInt.mul t1 t1 = GaussInt.mul u (piPow 3) := by
    have hboth : GaussInt.mul (GaussInt.mul t1 t1) (piPow 2) =
        GaussInt.mul (GaussInt.mul u (piPow 3)) (piPow 2) := by
      rw [← hsq1, ← hu, hpow5, GaussInt.mul_assoc]
    exact mul_right_cancel (piPow_ne_zero 2) hboth
  have hdiv1 : piDivides t1 := by
    have hsq : piDivides (GaussInt.mul t1 t1) := by
      rw [ht1, piPow_succ_right, ← GaussInt.mul_assoc]
      exact (piDivides_mul (GaussInt.mul u (piPow 2)) pi).2 (Or.inr hp)
    exact piDivides_sq_of_pi t1 hsq
  let t2 := piQuot t1
  have hsq2 := square_as_quot t1 hdiv1
  have hpow3 : piPow 3 = GaussInt.mul pi (piPow 2) := by
    unfold piPow
    rw [show (3 : ℕ) = 1 + 2 by decide, GaussInt.npow_add, GaussInt.npow_one]
  have ht2 : GaussInt.mul t2 t2 = GaussInt.mul u pi := by
    have hboth : GaussInt.mul (GaussInt.mul t2 t2) (piPow 2) =
        GaussInt.mul (GaussInt.mul u pi) (piPow 2) := by
      rw [← hsq2, ht1, hpow3, GaussInt.mul_assoc]
    exact mul_right_cancel (piPow_ne_zero 2) hboth
  have hdiv2 : piDivides t2 :=
    piDivides_sq_of_pi t2 (by
      rw [ht2]
      exact (piDivides_mul u pi).2 (Or.inr hp))
  let t3 := piQuot t2
  have ht3 : GaussInt.mul t3 pi = t2 := mul_pi_piQuot t2 hdiv2
  have hu_fac : u = GaussInt.mul (GaussInt.mul t3 t3) pi := by
    have hsq : GaussInt.mul t2 t2 =
        GaussInt.mul (GaussInt.mul t3 t3) (GaussInt.mul pi pi) := by
      rw [← ht3, mul_mul_comm_mid t3 pi t3 pi, GaussInt.mul_assoc]
    rw [ht2] at hsq
    have hne : pi ≠ GaussInt.zero := by
      have h1 : piPow 1 = pi := by
        unfold piPow
        exact GaussInt.npow_one pi
      rw [← h1]
      exact piPow_ne_zero 1
    have hboth : GaussInt.mul (GaussInt.mul (GaussInt.mul t3 t3) pi) pi = GaussInt.mul u pi := by
      rw [GaussInt.mul_assoc, ← hsq]
    exact (mul_right_cancel hne hboth).symm
  refine ⟨GaussInt.mul t3 t3, ?_⟩
  have hp6 : piPow 6 = GaussInt.mul pi (piPow 5) := by
    unfold piPow
    rw [GaussInt.npow_succ]
  rw [← hu, hu_fac, hp6, ← GaussInt.mul_assoc]

/-- If `v_π(z) = 5`, no square `t²` makes `v_π(z - t²) ≥ 6`.

`v_π(t²)` is even, so it is never `5`. Subtracting a square cannot clear
an odd valuation. On the model with `a₁ = a₃ = 0`, the pure shift
`y ↦ y + t` sends `a₆` to `a₆ - t²`. This does not reach Dokchitser's
`n = 4` bound `v(a₆) ≥ 7`.
-/
theorem y_shift_keeps_valuation_five {z t : GaussInt} (h : P2Exact z 5) :
    ¬ ∃ u, GaussInt.mul u (piPow 6) = GaussInt.sub z (GaussInt.mul t t) := by
  intro ⟨u, hu⟩
  let tt := GaussInt.mul t t
  have hback : GaussInt.add (GaussInt.sub z tt) tt = z := by
    rw [GaussInt.sub_eq_add_neg, GaussInt.add_assoc]
    have h0 : GaussInt.add (GaussInt.neg tt) tt = GaussInt.zero := by
      rw [GaussInt.add_comm, add_neg_self]
    rw [h0, GaussInt.add_zero]
  have htt5 : ∃ w, GaussInt.mul w (piPow 5) = tt := by
    rcases h with ⟨v, hv, _⟩
    refine ⟨GaussInt.sub v (GaussInt.mul u pi), ?_⟩
    rw [GaussInt.sub_eq_add_neg, GaussInt.add_mul, GaussInt.neg_mul, hv]
    have hsub : GaussInt.mul (GaussInt.mul u pi) (piPow 5) = GaussInt.sub z tt := by
      have hp6 : piPow 6 = GaussInt.mul pi (piPow 5) := by
        unfold piPow
        rw [GaussInt.npow_succ]
      rw [GaussInt.mul_assoc, ← hp6, hu]
    rw [hsub, ← GaussInt.sub_eq_add_neg]
    have hdiff : GaussInt.sub z (GaussInt.sub z tt) = tt := by
      cases z with
      | mk zr zi =>
        cases tt with
        | mk tr ti =>
          simp [GaussInt.sub]
          constructor <;> omega
    exact hdiff
  have htt6 := square_pi_five_gives_six t htt5
  have hz6 : ∃ w, GaussInt.mul w (piPow 6) = z := by
    rcases htt6 with ⟨s, hs⟩
    refine ⟨GaussInt.add u s, ?_⟩
    rw [GaussInt.add_mul, hu, hs, hback]
  exact not_piPowDvd_succ_of_exact h hz6

/-- `(0, 1, 1)` has `v_π(a₆') = 5`, below Dokchitser's `n = 4` bound `7`.

The bound for type `I₄*` asks `v(a₆) ≥ 7`. These valuations do not meet
it. Type `I₄*` and exponent `10` are not theorems.
-/
theorem trivialB_a6_below_dokchitser_I4 :
    P2Exact (a6AfterPi trivialB) 5 ∧ ¬ (7 ≤ (5 : ℕ)) := by
  have h := translated_a4_splits_on_trivial_curves
  exact ⟨h.2.2.2.2.2.2.2, by decide⟩

/-- On `(0, 1, 1)`, `y ↦ y + t` does not make `v_π(a₆) ≥ 6`.

The translated model still has `a₃ = 0`, so this shift sends `a₆'` to
`a₆' - t²`. Valuation `5` stays below `6`, and below the `n = 4` bound `7`.
-/
theorem trivialB_y_shift_stays_below_six (t : GaussInt) :
    ¬ ∃ u, GaussInt.mul u (piPow 6) =
      GaussInt.sub (a6AfterPi trivialB) (GaussInt.mul t t) :=
  y_shift_keeps_valuation_five trivialB_a6_below_dokchitser_I4.1

/-- `a₆` numerator of `x ↦ x + r`, `y ↦ y + t` on the Frey model.

`a₁ = a₃ = a₆ = 0` and `s = 0`, so Silverman's formula is
`r a₄ + r² a₂ + r³ - t²`.
-/
def a6Numerator (E : FreyCurve4413) (r t : GaussInt) : GaussInt :=
  GaussInt.sub
    (GaussInt.add
      (GaussInt.add (GaussInt.mul r ⟨E.B_re, E.B_im⟩)
        (GaussInt.mul (GaussInt.mul r r) (GaussInt.ofInt E.A_int)))
      (GaussInt.mul (GaussInt.mul r r) r))
    (GaussInt.mul t t)

theorem a6Numerator_at_r_zero (E : FreyCurve4413) (t : GaussInt) :
    a6Numerator E GaussInt.zero t = GaussInt.neg (GaussInt.mul t t) := by
  simp [a6Numerator, GaussInt.zero_mul, GaussInt.mul_zero, GaussInt.zero_add,
    GaussInt.add_zero, GaussInt.sub_eq_add_neg, GaussInt.add_zero]

theorem piPow_two_exact : P2Exact (piPow 2) 2 := by
  refine ⟨GaussInt.one, GaussInt.one_mul (piPow 2), ?_⟩
  simp [piDivides, GaussInt.one]

/-- `t = 0` and `t = π` are the same class modulo `π`, and the `a₆` slot splits.

With `r = s = 0`, the numerator is `-t²`. It is `0` at `t = 0`, and `π⁶`
divides `0`. It is `-π²` at `t = π`, with valuation `2`, so `π⁶` does not
divide it. Integrality for `u = π` needs valuation at least `6`. One
representative of this class does not decide the slot, and it is not
`MinimalModelAt2`.
-/
theorem t_zero_and_pi_split_a6 (E : FreyCurve4413) :
    piDivides (GaussInt.sub pi GaussInt.zero) ∧
      a6Numerator E GaussInt.zero GaussInt.zero = GaussInt.zero ∧
      (∃ u, GaussInt.mul u (piPow 6) = a6Numerator E GaussInt.zero GaussInt.zero) ∧
      a6Numerator E GaussInt.zero pi = GaussInt.neg (piPow 2) ∧
      P2Exact (GaussInt.neg (piPow 2)) 2 ∧
      ¬ ∃ u, GaussInt.mul u (piPow 6) = GaussInt.neg (piPow 2) := by
  refine ⟨?_, ?_, ?_, ?_, P2Exact_neg piPow_two_exact, ?_⟩
  · simp [piDivides, pi, GaussInt.sub, GaussInt.zero]
  · rw [a6Numerator_at_r_zero]
    simp [GaussInt.mul_zero, GaussInt.neg_zero]
  · exact ⟨GaussInt.zero, by rw [a6Numerator_at_r_zero]; simp [GaussInt.mul_zero, GaussInt.neg_zero, GaussInt.zero_mul]⟩
  · rw [a6Numerator_at_r_zero]
    have hsq : piPow 2 = GaussInt.mul pi pi := by
      simp [piPow, GaussInt.npow, GaussInt.mul_one]
    rw [hsq]
  · intro ⟨u, hu⟩
    have hnot := not_piPowDvd_succ_of_exact (P2Exact_neg piPow_two_exact)
    apply hnot
    refine ⟨GaussInt.mul u (piPow 3), ?_⟩
    have h6 : piPow 6 = GaussInt.mul (piPow 3) (piPow 3) := by
      unfold piPow
      rw [show (6 : ℕ) = 3 + 3 by decide, GaussInt.npow_add]
    rw [h6, ← GaussInt.mul_assoc] at hu
    exact hu

theorem a6Numerator_pi_trivialB :
    a6Numerator trivialB pi GaussInt.zero = a6AfterPi trivialB := by
  simp [a6Numerator, a6AfterPi, trivialB, mk', pi, GaussInt.sub, GaussInt.add,
    GaussInt.mul, GaussInt.ofInt, GaussInt.zero]

theorem a6Numerator_pi_plus_pi_sq_trivialB :
    a6Numerator trivialB (GaussInt.add pi (piPow 2)) GaussInt.zero = ⟨-32, -16⟩ := by
  rw [piPow_two]
  simp [a6Numerator, trivialB, mk', pi, GaussInt.sub, GaussInt.add, GaussInt.mul,
    GaussInt.ofInt, GaussInt.zero]

/-- On `(0, 1, 1)`, `r = π` and `r = π + π²` are one class modulo `π²`.

The `a₆` valuations are `5` and `8`. The inequality `v ≥ 6` fails for `r = π`
and holds for `r = π + π²`. Both `a₂` numerators have valuation `1`, below
the integrality bound `2`, so neither change is an integral model. A list of
four representatives modulo `π²` does not compute this slot, and it is not
`MinimalModelAt2`.
-/
theorem trivialB_a6_splits_mod_pi_sq :
    GaussInt.sub (GaussInt.add pi (piPow 2)) pi = piPow 2 ∧
      a6Numerator trivialB pi GaussInt.zero = a6AfterPi trivialB ∧
      P2Exact (a6AfterPi trivialB) 5 ∧ ¬ (6 ≤ (5 : ℕ)) ∧
      a6Numerator trivialB (GaussInt.add pi (piPow 2)) GaussInt.zero = ⟨-32, -16⟩ ∧
      P2Exact ⟨-32, -16⟩ 8 ∧ (6 ≤ (8 : ℕ)) ∧
      P2Exact (a2AfterPi trivialB) 1 ∧ ¬ (2 ≤ (1 : ℕ)) ∧
      GaussInt.add (GaussInt.ofInt trivialB.A_int)
        (GaussInt.smul 3 (GaussInt.add pi (piPow 2))) = ⟨3, 9⟩ ∧
      P2Exact ⟨3, 9⟩ 1 ∧ ¬ (2 ≤ (1 : ℕ)) := by
  refine ⟨?_, a6Numerator_pi_trivialB, trivialB_a6_below_dokchitser_I4.1, by decide,
    a6Numerator_pi_plus_pi_sq_trivialB, ?_, by decide, a2AfterPi_p2_exact_one trivialB,
    by decide, ?_, ?_, by decide⟩
  · rw [piPow_two]
    simp [pi, GaussInt.sub, GaussInt.add]
  · refine ⟨⟨-2, -1⟩, ?_, ?_⟩
    · have h8 : piPow 8 = ⟨16, 0⟩ := by
        simp [piPow, pi, GaussInt.npow, GaussInt.mul, GaussInt.one]
      rw [h8]
      simp [GaussInt.mul]
    · intro hdiv
      simp [piDivides] at hdiv
  · rw [piPow_two]
    simp [trivialB, mk', pi, GaussInt.add, GaussInt.smul, GaussInt.ofInt]
  · refine ⟨⟨6, 3⟩, ?_, ?_⟩
    · have hp : piPow 1 = pi := by
        simp [piPow, GaussInt.npow, GaussInt.mul_one]
      rw [hp]
      simp [pi, GaussInt.mul]
    · intro hdiv
      simp [piDivides] at hdiv

/-- `a₆` after a second translation `x ↦ x + π` of the model `x ↦ x + π`. -/
def a6AfterSecondPi (E : FreyCurve4413) : GaussInt :=
  GaussInt.add (a6AfterPi E)
    (GaussInt.add (GaussInt.mul pi (a4AfterPi E))
      (GaussInt.add (GaussInt.mul (piPow 2) (a2AfterPi E)) (piPow 3)))

theorem trivialB_a6AfterSecondPi_value :
    a6AfterSecondPi trivialB = ⟨-20, 20⟩ := by
  simp [a6AfterSecondPi, a6AfterPi, a4AfterPi, a2AfterPi, trivialB, mk', pi, piPow,
    GaussInt.add, GaussInt.mul, GaussInt.npow, GaussInt.one]

/-- On `(0, 1, 1)`, `x ↦ x + π` a second time does not raise `v_π(a₆)` to `7`.

The `a₂` numerator `a₂' + 3 π` has valuation `3`, so that slot meets `≥ 2`.
The `a₄` numerator has valuation `2`, below `4`. The `a₆` numerator has
valuation `5`. The term `π a₄'` has valuation `7`, and `π² a₂'` together
with `π³` has valuation `3` before cancellation; the sum stays at `5`.
This is below `6` and below Dokchitser's `n = 4` bound `7`. Type `I₄*` and
exponent `10` are not theorems.
-/
theorem trivialB_second_pi_shift_a6_stays_five :
    GaussInt.add (a2AfterPi trivialB) (GaussInt.smul 3 pi) = ⟨6, 6⟩ ∧
      P2Exact ⟨6, 6⟩ 3 ∧ (2 ≤ (3 : ℕ)) ∧
      P2Exact ⟨0, 26⟩ 2 ∧ ¬ (4 ≤ (2 : ℕ)) ∧
      a6AfterSecondPi trivialB = ⟨-20, 20⟩ ∧
      P2Exact ⟨-20, 20⟩ 5 ∧ ¬ (6 ≤ (5 : ℕ)) ∧ ¬ (7 ≤ (5 : ℕ)) := by
  have hodd : trivialB.c.natAbs % 2 = 1 := by decide
  have ha2eq : GaussInt.add (a2AfterPi trivialB) (GaussInt.smul 3 pi) = ⟨6, 6⟩ := by
    rw [a2_numerator_at_r_pi]
    simp [trivialB, mk']
  have hv3 : P2Exact ⟨6, 6⟩ 3 := by
    simpa [trivialB, mk'] using a2_plus_three_pi_p2_exact_three trivialB
  have ha4eq : (⟨2 * trivialB.a ^ 2 + 16 * trivialB.a,
      2 * trivialB.b ^ 2 + 16 * trivialB.a + 24⟩ : GaussInt) = ⟨0, 26⟩ := by
    simp [trivialB, mk']
  have hv2 : P2Exact ⟨0, 26⟩ 2 := by
    simpa [ha4eq] using pi_r_pi_a4_numerator_p2_exact_two trivialB hodd
  refine ⟨ha2eq, hv3, by decide, hv2, by decide, trivialB_a6AfterSecondPi_value, ?_, by decide, by decide⟩
  · refine ⟨⟨0, -5⟩, ?_, ?_⟩
    · rw [piPow_five]
      simp [GaussInt.mul]
    · intro hdiv
      simp [piDivides] at hdiv

/-- `b₆ = a₃² + 4 a₆` after `y ↦ y + π²`. -/
def b6AfterPiSq (E : FreyCurve4413) : GaussInt :=
  GaussInt.add (GaussInt.mul a3AfterPiSq a3AfterPiSq)
    (GaussInt.smul 4 (a6AfterPiSq E))

/-- `D = a₄² - 4 a₂ a₆` after `y ↦ y + π²`. -/
def quadDiscAfterPiSq (E : FreyCurve4413) : GaussInt :=
  GaussInt.sub (GaussInt.mul (a4AfterPi E) (a4AfterPi E))
    (GaussInt.smul 4 (GaussInt.mul (a2AfterPi E) (a6AfterPiSq E)))

theorem b6AfterPiSq_expand (E : FreyCurve4413) :
    b6AfterPiSq E =
      ⟨8 * (E.a ^ 2 - E.b ^ 2 - 1), 8 * (E.a ^ 2 + E.b ^ 2 + 4 * E.a + 1)⟩ := by
  simp [b6AfterPiSq, a3AfterPiSq, a6AfterPiSq, GaussInt.mul, GaussInt.smul, GaussInt.add]
  grind

/-- If `c` is odd and `a` is odd, then `v_π(b₆) = 8` after `y ↦ y + π²`.

Dokchitser's even-`n` bound for `n = 2` asks `v(b₆) ≥ 5`. The value `8`
meets that inequality. It is not a Kodaira type.
-/
theorem b6AfterPiSq_p2_exact_eight (E : FreyCurve4413)
    (hodd : E.c.natAbs % 2 = 1) (ha : E.a.natAbs % 2 = 1) :
    P2Exact (b6AfterPiSq E) 8 := by
  have hb0 := b_even_of_a_odd E hodd ha
  have ha2 := int_odd_of_natAbs_odd ha
  have hb2 := int_even_of_natAbs_even hb0
  let p := (E.a - 1) / 2
  let q := E.b / 2
  have ha' : E.a = 2 * p + 1 := int_odd_split ha2
  have hb' : E.b = 2 * q := int_even_split hb2
  let R := p * (p + 1) - q ^ 2
  let S := 2 * p ^ 2 + 2 * q ^ 2 + 6 * p + 3
  have hR : 4 * R = E.a ^ 2 - E.b ^ 2 - 1 := by
    rw [ha', hb']
    grind
  have hS : 2 * S = E.a ^ 2 + E.b ^ 2 + 4 * E.a + 1 := by
    rw [ha', hb']
    grind
  have hw : P2Exact ⟨E.a ^ 2 - E.b ^ 2 - 1, E.a ^ 2 + E.b ^ 2 + 4 * E.a + 1⟩ 2 := by
    refine ⟨⟨S, -(2 * R)⟩, ?_, ?_⟩
    · rw [piPow_two]
      simp [GaussInt.mul]
      constructor <;> grind
    · intro hdiv
      have hSmod : S % 2 = 1 := by
        have hexp : S = 2 * (p ^ 2 + q ^ 2 + 3 * p) + 3 := by grind
        rw [hexp]
        have hmod : (2 * (p ^ 2 + q ^ 2 + 3 * p) + 3) % 2 = (3 : ℤ) % 2 := by
          rw [Int.add_comm, Int.add_mul_emod_self_left]
        rw [hmod]
        decide
      simp [piDivides] at hdiv
      rw [hSmod] at hdiv
      omega
  have h8 : P2Exact (GaussInt.ofInt 8) 6 := by
    have hpow : (2 : ℤ) ^ 3 = 8 := by decide
    simpa [hpow] using p2_valuation_of_two_pow 3
  have hform : b6AfterPiSq E =
      GaussInt.mul (GaussInt.ofInt 8)
        ⟨E.a ^ 2 - E.b ^ 2 - 1, E.a ^ 2 + E.b ^ 2 + 4 * E.a + 1⟩ := by
    rw [b6AfterPiSq_expand, ← smul_eq_mul_ofInt]
    simp [GaussInt.smul]
  rw [hform]
  exact P2Exact_mul h8 hw

/-- If `c` is odd and `a` is odd, then `v_π(D) = 6` after `y ↦ y + π²`.

`D = a₄² - 4 a₂ a₆`. Dokchitser's count for `n = 2` is `v(D) = n + 4 = 6`.
This equality meets that count. It does not prove the model has type `I₂*`
and it does not set a wild part to `0`.
-/
theorem quadDiscAfterPiSq_p2_exact_six (E : FreyCurve4413)
    (hodd : E.c.natAbs % 2 = 1) (ha : E.a.natAbs % 2 = 1) :
    P2Exact (quadDiscAfterPiSq E) 6 := by
  have hb0 := b_even_of_a_odd E hodd ha
  have ha2 := int_odd_of_natAbs_odd ha
  have hb2 := int_even_of_natAbs_even hb0
  let p := (E.a - 1) / 2
  let q := E.b / 2
  have ha' : E.a = 2 * p + 1 := int_odd_split ha2
  have hb' : E.b = 2 * q := int_even_split hb2
  let ure := 12 * p ^ 2 + 20 * p + 13 - 4 * q ^ 2 * (2 * p + 1) ^ 2
  let uim := 8 * p ^ 4 + 16 * p ^ 3 + 12 * p ^ 2 - 4 * p - 8 + 12 * q ^ 2 - 8 * q ^ 4
  refine ⟨⟨ure, uim⟩, ?_, ?_⟩
  · rw [piPow_six]
    simp [quadDiscAfterPiSq, a4AfterPi, a2AfterPi, a6AfterPiSq, GaussInt.mul,
      GaussInt.sub, GaussInt.smul, ha', hb']
    grind
  · intro hdiv
    have hure : ure % 2 = 1 := by
      have hexp : ure =
          2 * (6 * p ^ 2 + 10 * p + 6 - 2 * q ^ 2 * (2 * p + 1) ^ 2) + 1 := by
        grind
      rw [hexp]
      have hmod : (2 * (6 * p ^ 2 + 10 * p + 6 - 2 * q ^ 2 * (2 * p + 1) ^ 2) + 1) % 2 =
          (1 : ℤ) % 2 := by
        rw [Int.add_comm, Int.add_mul_emod_self_left]
      rw [hmod]
      decide
    have huim : uim % 2 = 0 := by
      have hexp : uim =
          2 * (4 * p ^ 4 + 8 * p ^ 3 + 6 * p ^ 2 - 2 * p - 4 + 6 * q ^ 2 - 4 * q ^ 4) := by
        grind
      rw [hexp, Int.mul_emod_right]
    have hsum : (ure + uim) % 2 = 1 := by
      rw [Int.add_emod, hure, huim]
      decide
    simp [piDivides] at hdiv
    rw [hsum] at hdiv
    omega

/-- The `a`-odd model after `y ↦ y + π²` meets Dokchitser's numerical inputs
for `n = 2`.

The inputs are `v(a₂) = 1`, `v(a₃) = 4 ≥ 3`, `v(a₄) = 3`, `v(a₆) = 5`,
`v(b₆) = 8 ≥ 5`, and `v(D) = 6`. Dokchitser's proposition is not
formalized. These valuations do not produce a Kodaira symbol, a conductor
exponent, or a wild part. `FTameAtPi` and `SwanAtPi` stay sealed. The
proved value `v_π(D) = 6` is not `v_π(Δ) = 18`.
-/
theorem piDivides_add_left {a b : GaussInt} (hb : piDivides b) :
    piDivides (GaussInt.add a b) ↔ piDivides a := by
  cases a with
  | mk ar ai =>
    cases b with
    | mk br bi =>
      simp [piDivides, GaussInt.add] at hb ⊢
      have hsum : ar + br + (ai + bi) = (ar + ai) + (br + bi) := by omega
      rw [hsum, Int.add_emod, hb, Int.add_zero, Int.emod_emod]

theorem not_piDivides_add_of_right {a b : GaussInt} (ha : ¬ piDivides a) (hb : piDivides b) :
    ¬ piDivides (GaussInt.add a b) :=
  fun h => ha ((piDivides_add_left hb).1 h)

theorem not_piDivides_add_of_left {a b : GaussInt} (ha : piDivides a) (hb : ¬ piDivides b) :
    ¬ piDivides (GaussInt.add a b) := by
  intro h
  have hcomm : piDivides (GaussInt.add b a) := by
    rw [GaussInt.add_comm]
    exact h
  exact hb ((piDivides_add_left ha).1 hcomm)

theorem not_piPowDvd_of_exact_lt {z : GaussInt} {k m : ℕ}
    (hk : k < m) (h : P2Exact z k) :
    ¬ ∃ u, GaussInt.mul u (piPow m) = z := by
  intro ⟨u, hu⟩
  have hnot := not_piPowDvd_succ_of_exact h
  apply hnot
  have hle : k + 1 ≤ m := Nat.succ_le_of_lt hk
  refine ⟨GaussInt.mul u (piPow (m - (k + 1))), ?_⟩
  have hsum : m = m - (k + 1) + (k + 1) := (Nat.sub_add_cancel hle).symm
  have hsplit : piPow m =
      GaussInt.mul (piPow (m - (k + 1))) (piPow (k + 1)) := by
    unfold piPow
    exact (congrArg (GaussInt.npow pi) hsum).trans
      (GaussInt.npow_add pi (m - (k + 1)) (k + 1))
  rw [hsplit] at hu
  rw [← GaussInt.mul_assoc] at hu
  exact hu

theorem P2Exact_add_of_higher {x y : GaussInt} {k : ℕ}
    (hx : P2Exact x k) (hy : ∃ w, GaussInt.mul w (piPow (k + 1)) = y) :
    P2Exact (GaussInt.add x y) k := by
  rcases hx with ⟨u, hu, hnu⟩
  rcases hy with ⟨w, hw⟩
  have hp : piPow (k + 1) = GaussInt.mul pi (piPow k) := by
    unfold piPow
    rw [GaussInt.npow_succ]
  refine ⟨GaussInt.add u (GaussInt.mul w pi), ?_, ?_⟩
  · rw [GaussInt.add_mul, hu]
    have hy' : y = GaussInt.mul (GaussInt.mul w pi) (piPow k) := by
      rw [← hw, hp, ← GaussInt.mul_assoc]
    rw [hy']
  · intro hdiv
    have hpiv : piDivides pi := by simp [piDivides, pi]
    have hwp : piDivides (GaussInt.mul w pi) :=
      (piDivides_mul w pi).2 (Or.inr hpiv)
    exact hnu ((piDivides_add_left hwp).1 hdiv)

/-- `a₂ + 3 r - s²` on the Frey model. -/
def a2ChangeNum (E : FreyCurve4413) (r s : GaussInt) : GaussInt :=
  GaussInt.sub (GaussInt.add (GaussInt.ofInt E.A_int) (GaussInt.smul 3 r))
    (GaussInt.mul s s)

/-- `2 t` on the Frey model, where `a₃ = 0`. -/
def a3ChangeNum (t : GaussInt) : GaussInt :=
  GaussInt.smul 2 t

/-- `a₄ + 2 r a₂ + 3 r² - 2 s t` on the Frey model. -/
def a4ChangeNum (E : FreyCurve4413) (r s t : GaussInt) : GaussInt :=
  GaussInt.sub
    (GaussInt.add
      (GaussInt.add ⟨E.B_re, E.B_im⟩
        (GaussInt.smul 2 (GaussInt.mul r (GaussInt.ofInt E.A_int))))
      (GaussInt.smul 3 (GaussInt.mul r r)))
    (GaussInt.smul 2 (GaussInt.mul s t))

theorem a2_change_pi_four (E : FreyCurve4413) :
    ∃ u, GaussInt.mul u (piPow 4) = GaussInt.ofInt E.A_int := by
  have h4 : P2Exact (GaussInt.ofInt ((2 : ℤ) ^ 2)) 4 := p2_valuation_of_two_pow 2
  have hpow : (2 : ℤ) ^ 2 = 4 := by decide
  rw [hpow] at h4
  rcases h4 with ⟨u, hu, _⟩
  refine ⟨GaussInt.mul u (GaussInt.ofInt E.a), ?_⟩
  rw [E.h_A, ← ofInt_mul, ← hu]
  exact mul_mul_swap u (GaussInt.ofInt E.a) (piPow 4)

theorem a3_change_fails_below_pi (t : GaussInt) (ht : ¬ piDivides t) :
    ¬ ∃ u, GaussInt.mul u (piPow 3) = a3ChangeNum t := by
  have h2 : P2Exact (GaussInt.ofInt 2) 2 := by
    simpa [Int.pow_one] using p2_valuation_of_two_pow 1
  have hexact : P2Exact (a3ChangeNum t) 2 := by
    rw [a3ChangeNum, smul_eq_mul_ofInt]
    exact P2Exact_mul h2 (P2Exact_zero_of_not_pi ht)
  exact not_piPowDvd_succ_of_exact hexact

theorem a4_change_fails_of_unit_r (E : FreyCurve4413) (r s t : GaussInt)
    (hr : ¬ piDivides r) (ht : piDivides t) :
    ¬ ∃ u, GaussInt.mul u (piPow 4) = a4ChangeNum E r s t := by
  intro ⟨u, hu⟩
  have hthree : ¬ piDivides (GaussInt.ofInt 3) :=
    not_piDivides_ofInt_of_natAbs_odd (by decide : (3 : ℤ).natAbs % 2 = 1)
  have hrr : ¬ piDivides (GaussInt.mul r r) := by
    intro hdiv
    rcases (piDivides_mul r r).1 hdiv with h | h
    · exact hr h
    · exact hr h
  have hT3 : ¬ piDivides (GaussInt.smul 3 (GaussInt.mul r r)) := by
    rw [smul_eq_mul_ofInt]
    intro hdiv
    rcases (piDivides_mul (GaussInt.ofInt 3) (GaussInt.mul r r)).1 hdiv with h | h
    · exact hthree h
    · exact hrr h
  have hA4 : piDivides ⟨E.B_re, E.B_im⟩ := by
    rw [a4_factor]
    exact (piDivides_mul (GaussInt.ofInt 2) ⟨E.a ^ 2, E.b ^ 2⟩).2
      (Or.inl ((piDivides_ofInt_iff 2).2 (by decide)))
  have hA2 : piDivides (GaussInt.ofInt E.A_int) := by
    rcases a2_change_pi_four E with ⟨w, hw⟩
    rw [← hw, piPow_succ_right, ← GaussInt.mul_assoc]
    exact (piDivides_mul (GaussInt.mul w (piPow 3)) pi).2
      (Or.inr (by simp [piDivides, pi]))
  have hT2 : piDivides (GaussInt.smul 2 (GaussInt.mul r (GaussInt.ofInt E.A_int))) := by
    rw [smul_eq_mul_ofInt]
    exact (piDivides_mul (GaussInt.ofInt 2) _).2
      (Or.inr ((piDivides_mul r _).2 (Or.inr hA2)))
  have hT4 : piDivides (GaussInt.smul 2 (GaussInt.mul s t)) := by
    rw [smul_eq_mul_ofInt]
    exact (piDivides_mul (GaussInt.ofInt 2) _).2
      (Or.inr ((piDivides_mul s t).2 (Or.inr ht)))
  have hsum : piDivides
      (GaussInt.add ⟨E.B_re, E.B_im⟩
        (GaussInt.smul 2 (GaussInt.mul r (GaussInt.ofInt E.A_int)))) :=
    (piDivides_add_left hT2).2 hA4
  have hnot : ¬ piDivides
      (GaussInt.add
        (GaussInt.add ⟨E.B_re, E.B_im⟩
          (GaussInt.smul 2 (GaussInt.mul r (GaussInt.ofInt E.A_int))))
        (GaussInt.smul 3 (GaussInt.mul r r))) :=
    not_piDivides_add_of_left hsum hT3
  have hneg : piDivides (GaussInt.neg (GaussInt.smul 2 (GaussInt.mul s t))) :=
    (piDivides_neg _).2 hT4
  have hwhole : ¬ piDivides (a4ChangeNum E r s t) := by
    rw [a4ChangeNum, GaussInt.sub_eq_add_neg]
    exact not_piDivides_add_of_right hnot hneg
  have hpi4 : piDivides (piPow 4) := by
    rw [piPow_four]
    simp [piDivides]
  have hdvd : piDivides (GaussInt.mul u (piPow 4)) :=
    (piDivides_mul u (piPow 4)).2 (Or.inr hpi4)
  rw [hu] at hdvd
  exact hwhole hdvd

theorem a2_change_fails_of_val_one (E : FreyCurve4413) (r s : GaussInt)
    (hr : piDivides r) (hr1 : ¬ piDivides (piQuot r)) :
    ¬ ∃ u, GaussInt.mul u (piPow 2) = a2ChangeNum E r s := by
  let r1 := piQuot r
  have hrEq : r = GaussInt.mul r1 pi := (mul_pi_piQuot r hr).symm
  have h3 : ¬ piDivides (GaussInt.ofInt 3) :=
    not_piDivides_ofInt_of_natAbs_odd (by decide : (3 : ℤ).natAbs % 2 = 1)
  have hcof : ¬ piDivides (GaussInt.mul (GaussInt.ofInt 3) r1) := by
    intro hdiv
    rcases (piDivides_mul (GaussInt.ofInt 3) r1).1 hdiv with h | h
    · exact h3 h
    · exact hr1 h
  have h3r : P2Exact (GaussInt.smul 3 r) 1 := by
    refine ⟨GaussInt.mul (GaussInt.ofInt 3) r1, ?_, hcof⟩
    have hp : piPow 1 = pi := by
      unfold piPow
      exact GaussInt.npow_one pi
    rw [smul_eq_mul_ofInt, hp, hrEq, GaussInt.mul_assoc]
  have hA2 : ∃ w, GaussInt.mul w (piPow 2) = GaussInt.ofInt E.A_int := by
    rcases a2_change_pi_four E with ⟨w, hw⟩
    refine ⟨GaussInt.mul w (piPow 2), ?_⟩
    have hp : piPow 4 = GaussInt.mul (piPow 2) (piPow 2) := by
      unfold piPow
      rw [show (4 : ℕ) = 2 + 2 by decide, GaussInt.npow_add]
    rw [← hw, hp, GaussInt.mul_assoc]
  by_cases hs : piDivides s
  · let s1 := piQuot s
    have hsEq : s = GaussInt.mul s1 pi := (mul_pi_piQuot s hs).symm
    have hs2 : ∃ w, GaussInt.mul w (piPow 2) = GaussInt.mul s s := by
      refine ⟨GaussInt.mul s1 s1, ?_⟩
      have hp2 : GaussInt.mul pi pi = piPow 2 := by
        simp [piPow, GaussInt.npow, GaussInt.mul_one]
      rw [hsEq, mul_mul_comm_mid s1 pi s1 pi,
        GaussInt.mul_assoc (GaussInt.mul s1 s1) pi pi, hp2]
    have hrest : ∃ w, GaussInt.mul w (piPow 2) =
        GaussInt.sub (GaussInt.ofInt E.A_int) (GaussInt.mul s s) := by
      rcases hA2 with ⟨wa, hwa⟩
      rcases hs2 with ⟨ws, hws⟩
      refine ⟨GaussInt.sub wa ws, ?_⟩
      rw [GaussInt.sub_eq_add_neg, GaussInt.add_mul, GaussInt.neg_mul, hwa, hws,
        ← GaussInt.sub_eq_add_neg]
    have hexact : P2Exact (a2ChangeNum E r s) 1 := by
      have horder : a2ChangeNum E r s =
          GaussInt.add (GaussInt.smul 3 r)
            (GaussInt.sub (GaussInt.ofInt E.A_int) (GaussInt.mul s s)) := by
        rw [a2ChangeNum, GaussInt.sub_eq_add_neg, GaussInt.sub_eq_add_neg,
          ← GaussInt.add_assoc, GaussInt.add_comm (GaussInt.smul 3 r) (GaussInt.ofInt E.A_int),
          GaussInt.add_assoc]
      rw [horder]
      exact P2Exact_add_of_higher h3r hrest
    exact not_piPowDvd_succ_of_exact hexact
  · intro ⟨u, hu⟩
    have hs2 : ¬ piDivides (GaussInt.mul s s) := by
      intro hdiv
      rcases (piDivides_mul s s).1 hdiv with h | h
      · exact hs h
      · exact hs h
    have hpos : piDivides (GaussInt.add (GaussInt.ofInt E.A_int) (GaussInt.smul 3 r)) := by
      have h3div : piDivides (GaussInt.smul 3 r) := by
        rcases h3r with ⟨c, hc, _⟩
        rw [← hc]
        unfold piPow
        rw [GaussInt.npow_one]
        exact (piDivides_mul c pi).2 (Or.inr (by simp [piDivides, pi]))
      exact (piDivides_add_left h3div).2 (by
        rcases hA2 with ⟨w, hw⟩
        rw [← hw]
        exact (piDivides_mul w (piPow 2)).2
          (Or.inr (by rw [piPow_two]; simp [piDivides])))
    have hwhole : ¬ piDivides (a2ChangeNum E r s) := by
      rw [a2ChangeNum, GaussInt.sub_eq_add_neg]
      apply not_piDivides_add_of_left hpos
      intro hdiv
      exact hs2 ((piDivides_neg _).1 hdiv)
    have hpi2 : piDivides (piPow 2) := by
      rw [piPow_two]
      simp [piDivides]
    have hdvd : piDivides (GaussInt.mul u (piPow 2)) :=
      (piDivides_mul u (piPow 2)).2 (Or.inr hpi2)
    rw [hu] at hdvd
    exact hwhole hdvd

theorem a4_change_fails_of_val_ge_two (E : FreyCurve4413) (hodd : E.c.natAbs % 2 = 1)
    (r s t : GaussInt) (hr : piDivides r) (hr2 : piDivides (piQuot r))
    (ht : piDivides t) :
    ¬ ∃ u, GaussInt.mul u (piPow 4) = a4ChangeNum E r s t := by
  let r1 := piQuot r
  let r2 := piQuot r1
  have hrEq : r = GaussInt.mul r1 pi := (mul_pi_piQuot r hr).symm
  have hr1Eq : r1 = GaussInt.mul r2 pi := (mul_pi_piQuot r1 hr2).symm
  have hrSq : r = GaussInt.mul r2 (piPow 2) := by
    rw [hrEq, hr1Eq, GaussInt.mul_assoc]
    simp [piPow, GaussInt.npow, GaussInt.mul_one]
  have hrr : GaussInt.mul r r = GaussInt.mul (GaussInt.mul r2 r2) (piPow 4) := by
    rw [hrSq, mul_mul_comm_mid r2 (piPow 2) r2 (piPow 2), GaussInt.mul_assoc]
    have hp4 : piPow 4 = GaussInt.mul (piPow 2) (piPow 2) := by
      unfold piPow
      rw [show (4 : ℕ) = 2 + 2 by decide, GaussInt.npow_add]
    rw [hp4]
  have hthree : ∃ w, GaussInt.mul w (piPow 3) =
      GaussInt.smul 3 (GaussInt.mul r r) := by
    refine ⟨GaussInt.mul (GaussInt.mul (GaussInt.ofInt 3) (GaussInt.mul r2 r2)) pi, ?_⟩
    rw [smul_eq_mul_ofInt, hrr]
    have hp : piPow 4 = GaussInt.mul pi (piPow 3) := by
      unfold piPow
      rw [GaussInt.npow_succ]
    rw [hp,
      ← GaussInt.mul_assoc (GaussInt.ofInt 3) (GaussInt.mul r2 r2) (GaussInt.mul pi (piPow 3)),
      ← GaussInt.mul_assoc (GaussInt.mul (GaussInt.ofInt 3) (GaussInt.mul r2 r2)) pi (piPow 3)]
  have htwo : ∃ w, GaussInt.mul w (piPow 3) =
      GaussInt.smul 2 (GaussInt.mul r (GaussInt.ofInt E.A_int)) := by
    rcases a2_change_pi_four E with ⟨wa, hwa⟩
    refine ⟨GaussInt.mul (GaussInt.mul (GaussInt.ofInt 2) (GaussInt.mul r2 wa)) (piPow 3), ?_⟩
    rw [smul_eq_mul_ofInt, hrSq, ← hwa,
      mul_mul_comm_mid r2 (piPow 2) wa (piPow 4),
      GaussInt.mul_assoc (GaussInt.mul r2 wa) (piPow 2) (piPow 4)]
    have hp6 : piPow 6 = GaussInt.mul (piPow 2) (piPow 4) := by
      unfold piPow
      rw [show (6 : ℕ) = 2 + 4 by decide, GaussInt.npow_add]
    have hp63 : piPow 6 = GaussInt.mul (piPow 3) (piPow 3) := by
      unfold piPow
      rw [show (6 : ℕ) = 3 + 3 by decide, GaussInt.npow_add]
    rw [← hp6, hp63,
      GaussInt.mul_assoc (GaussInt.mul (GaussInt.ofInt 2) (GaussInt.mul r2 wa)) (piPow 3)
        (piPow 3),
      GaussInt.mul_assoc (GaussInt.ofInt 2) (GaussInt.mul r2 wa)
        (GaussInt.mul (piPow 3) (piPow 3))]
  have hst : ∃ w, GaussInt.mul w (piPow 3) =
      GaussInt.smul 2 (GaussInt.mul s t) := by
    let t1 := piQuot t
    have htEq : t = GaussInt.mul t1 pi := (mul_pi_piQuot t ht).symm
    refine ⟨GaussInt.mul ⟨0, -1⟩ (GaussInt.mul s t1), ?_⟩
    rw [smul_eq_mul_ofInt, htEq, ← two_eq_neg_i_mul_pi_sq, ← GaussInt.mul_assoc s t1 pi,
      mul_mul_comm_mid ⟨0, -1⟩ (piPow 2) (GaussInt.mul s t1) pi]
    have hp3 : piPow 3 = GaussInt.mul (piPow 2) pi := by
      rw [piPow_succ_right]
    rw [GaussInt.mul_assoc (GaussInt.mul ⟨0, -1⟩ (GaussInt.mul s t1)) (piPow 2) pi, ← hp3]
  have hcorr : ∃ w, GaussInt.mul w (piPow 3) =
      GaussInt.sub
        (GaussInt.add
          (GaussInt.smul 2 (GaussInt.mul r (GaussInt.ofInt E.A_int)))
          (GaussInt.smul 3 (GaussInt.mul r r)))
        (GaussInt.smul 2 (GaussInt.mul s t)) := by
    rcases htwo with ⟨w2, hw2⟩
    rcases hthree with ⟨w3, hw3⟩
    rcases hst with ⟨w4, hw4⟩
    refine ⟨GaussInt.sub (GaussInt.add w2 w3) w4, ?_⟩
    rw [GaussInt.sub_eq_add_neg, GaussInt.add_mul, GaussInt.add_mul, GaussInt.neg_mul,
      hw2, hw3, hw4, ← GaussInt.sub_eq_add_neg]
  have hexact : P2Exact (a4ChangeNum E r s t) 2 := by
    have horder : a4ChangeNum E r s t =
        GaussInt.add ⟨E.B_re, E.B_im⟩
          (GaussInt.sub
            (GaussInt.add
              (GaussInt.smul 2 (GaussInt.mul r (GaussInt.ofInt E.A_int)))
              (GaussInt.smul 3 (GaussInt.mul r r)))
            (GaussInt.smul 2 (GaussInt.mul s t))) := by
      simp [a4ChangeNum, GaussInt.sub_eq_add_neg, GaussInt.add_assoc]
    rw [horder]
    exact P2Exact_add_of_higher (a4_p2_exact_two E hodd) hcorr
  exact not_piPowDvd_of_exact_lt (by decide : 2 < 4) hexact

/-- For odd `c`, no `r, s, t` makes the `u = π` change integral.

`v_π(t) = 0` fails `a₃`, since `v_π(2 t) = 2 < 3`. `v_π(r) = 0` fails `a₄`:
`3 r²` is the only term of valuation `0`. `v_π(r) = 1` fails `a₂`: the
numerator has valuation `0` or `1`. `v_π(r) ≥ 2` fails `a₄`, because
`v_π(a₄) = 2` and every correction has valuation at least `3`. These four
cases cover every `r, s, t` in `ℤ[i]`. This is the obstruction at valuation
`1` inside that ring. `MinimalModelAt2` is the `ℚ(i)` statement, and the
conductor exponent is not a consequence.
-/
theorem no_integral_u_pi_of_c_odd (E : FreyCurve4413) (hodd : E.c.natAbs % 2 = 1)
    (r s t : GaussInt) :
    ¬ ((∃ u, GaussInt.mul u (piPow 2) = a2ChangeNum E r s) ∧
        (∃ u, GaussInt.mul u (piPow 3) = a3ChangeNum t) ∧
        (∃ u, GaussInt.mul u (piPow 4) = a4ChangeNum E r s t)) := by
  intro ⟨ha2, ha3, ha4⟩
  by_cases ht : piDivides t
  · by_cases hr : piDivides r
    · by_cases hr2 : piDivides (piQuot r)
      · exact a4_change_fails_of_val_ge_two E hodd r s t hr hr2 ht ha4
      · exact a2_change_fails_of_val_one E r s hr hr2 ha2
    · exact a4_change_fails_of_unit_r E r s t hr ht ha4
  · exact a3_change_fails_below_pi t ht ha3

theorem gauss_npow_mul_piPow (q : GaussInt) (k n : ℕ) :
    GaussInt.npow (GaussInt.mul q (piPow k)) n =
      GaussInt.mul (GaussInt.npow q n) (piPow (k * n)) := by
  induction n with
  | zero =>
    simp [GaussInt.npow, piPow]
  | succ n ih =>
    rw [GaussInt.npow_succ, ih, mul_mul_comm_mid q (piPow k) (GaussInt.npow q n) (piPow (k * n)),
      GaussInt.mul_assoc]
    have hidx : k * (n + 1) = k + k * n := by
      rw [Nat.mul_succ, Nat.add_comm]
    have hp : piPow (k * (n + 1)) = GaussInt.mul (piPow k) (piPow (k * n)) := by
      rw [hidx]
      unfold piPow
      exact GaussInt.npow_add pi k (k * n)
    rw [← hp, GaussInt.npow_succ]

theorem delta_not_divisible_by_pi_twentyFour (E : FreyCurve4413) (hodd : E.c.natAbs % 2 = 1) :
    ¬ ∃ w, GaussInt.mul w (piPow 24) = deltaGauss E := by
  intro ⟨w, hw⟩
  have hnot := not_piPowDvd_succ_of_exact (delta_p2_exact_eighteen E hodd)
  apply hnot
  refine ⟨GaussInt.mul w (piPow 5), ?_⟩
  have hsplit : piPow 24 = GaussInt.mul (piPow 5) (piPow 19) := by
    unfold piPow
    rw [show (24 : ℕ) = 5 + 19 by decide, GaussInt.npow_add]
  rw [hsplit, ← GaussInt.mul_assoc] at hw
  exact hw

/-- If `π²` divides `u`, then `u¹²` does not divide `Δ` when `c` is odd.

`v_π(Δ) = 18` and `v_π(u¹²) ≥ 24`. This is the case `v_π(u) ≥ 2`. Together
with `no_integral_u_pi_of_c_odd`, no integral change with `v_π(u) ≥ 1` lowers
the discriminant. The conductor exponent stays open.
-/
theorem pi_sq_u_blocks_delta (E : FreyCurve4413) (hodd : E.c.natAbs % 2 = 1)
    (u q : GaussInt) (hu : GaussInt.mul q (piPow 2) = u) :
    ¬ ∃ w, GaussInt.mul w (GaussInt.npow u 12) = deltaGauss E := by
  intro ⟨w, hw⟩
  have hpow : GaussInt.npow u 12 = GaussInt.mul (GaussInt.npow q 12) (piPow 24) := by
    rw [← hu, gauss_npow_mul_piPow]
  rw [hpow, ← GaussInt.mul_assoc] at hw
  exact delta_not_divisible_by_pi_twentyFour E hodd ⟨GaussInt.mul w (GaussInt.npow q 12), hw⟩

theorem a_odd_dokchitser_n2_inputs (E : FreyCurve4413)
    (hodd : E.c.natAbs % 2 = 1) (ha : E.a.natAbs % 2 = 1) :
    P2Exact (a2AfterPi E) 1 ∧ P2Exact a3AfterPiSq 4 ∧
      P2Exact (a4AfterPi E) 3 ∧ P2Exact (a6AfterPiSq E) 5 ∧
      P2Exact (b6AfterPiSq E) 8 ∧ P2Exact (quadDiscAfterPiSq E) 6 :=
  ⟨a2AfterPi_p2_exact_one E, a3AfterPiSq_p2_exact_four,
    a4AfterPi_p2_exact_three_of_a_odd E hodd ha,
    a6AfterPiSq_p2_exact_five_of_a_odd E hodd ha,
    b6AfterPiSq_p2_exact_eight E hodd ha,
    quadDiscAfterPiSq_p2_exact_six E hodd ha⟩

/-- Coefficients after `x ↦ x + π²` on the model already shifted by `π`. -/
def a2AfterPiThenPiSq (E : FreyCurve4413) : GaussInt :=
  GaussInt.add (a2AfterPi E) (GaussInt.smul 3 (piPow 2))

def a4AfterPiThenPiSq (E : FreyCurve4413) : GaussInt :=
  GaussInt.add (a4AfterPi E)
    (GaussInt.add (GaussInt.smul 2 (GaussInt.mul (piPow 2) (a2AfterPi E)))
      (GaussInt.smul 3 (GaussInt.mul (piPow 2) (piPow 2))))

def a6AfterPiThenPiSq (E : FreyCurve4413) : GaussInt :=
  GaussInt.add (a6AfterPi E)
    (GaussInt.add (GaussInt.mul (piPow 2) (a4AfterPi E))
      (GaussInt.add (GaussInt.mul (GaussInt.mul (piPow 2) (piPow 2)) (a2AfterPi E))
        (GaussInt.mul (piPow 2) (GaussInt.mul (piPow 2) (piPow 2)))))

/-- `b₆ = 4 a₆` after `x ↦ x + π²`. The curve starts with `a₃ = 0`, and an
`x`-shift does not change `a₃`. -/
def b6AfterPiThenPiSq (E : FreyCurve4413) : GaussInt :=
  GaussInt.smul 4 (a6AfterPiThenPiSq E)

/-- `D = a₄² - 4 a₂ a₆` after `x ↦ x + π²`. -/
def quadDiscAfterPiThenPiSq (E : FreyCurve4413) : GaussInt :=
  GaussInt.sub (GaussInt.mul (a4AfterPiThenPiSq E) (a4AfterPiThenPiSq E))
    (GaussInt.smul 4 (GaussInt.mul (a2AfterPiThenPiSq E) (a6AfterPiThenPiSq E)))

theorem trivialB_pi_sq_shift_values :
    a2AfterPiThenPiSq trivialB = ⟨3, 9⟩ ∧
      a4AfterPiThenPiSq trivialB = ⟨-24, 20⟩ ∧
      a6AfterPiThenPiSq trivialB = ⟨-32, -16⟩ := by
  simp [a2AfterPiThenPiSq, a4AfterPiThenPiSq, a6AfterPiThenPiSq, a2AfterPi, a4AfterPi,
    a6AfterPi, trivialB, mk', piPow_two, GaussInt.add, GaussInt.mul, GaussInt.smul]

/-- On `(0, 1, 1)`, `x ↦ x + π²` meets the numerical inputs for `n = 4`.

`s` does not appear in `a₆` when `a₁ = a₃ = 0`. The pure shift `r = π` leaves
`v_π(a₆) = 5`. This shift has `r = π²` and `s = t = 0`: `v_π(a₂) = 1`,
`v_π(a₄) = 4`, `v_π(a₆) = 8`, `v_π(b₆) = 12`, and `v_π(D) = 8`. Dokchitser's
`n = 4` bounds ask `v(a₆) ≥ 7`, `v(a₄) ≥ 4`, `v(b₆) ≥ 7`, and `v(D) = 8`.
These equalities are the inputs. They are not the Kodaira symbol, not a wild
part, and not the conductor exponent.
-/
theorem trivialB_dokchitser_n4_inputs :
    P2Exact (a2AfterPiThenPiSq trivialB) 1 ∧
      P2Exact (a4AfterPiThenPiSq trivialB) 4 ∧
      P2Exact (a6AfterPiThenPiSq trivialB) 8 ∧
      P2Exact (b6AfterPiThenPiSq trivialB) 12 ∧
      P2Exact (quadDiscAfterPiThenPiSq trivialB) 8 := by
  have hv := trivialB_pi_sq_shift_values
  have hb6 : b6AfterPiThenPiSq trivialB = ⟨-128, -64⟩ := by
    rw [b6AfterPiThenPiSq, hv.2.2]
    simp [GaussInt.smul]
  have hD : quadDiscAfterPiThenPiSq trivialB = ⟨-16, 384⟩ := by
    rw [quadDiscAfterPiThenPiSq, hv.1, hv.2.1, hv.2.2]
    simp [GaussInt.mul, GaussInt.smul, GaussInt.sub]
  rw [hv.1, hv.2.1, hv.2.2, hb6, hD]
  refine ⟨?_, ?_, ?_, ?_, ?_⟩
  · refine ⟨⟨6, 3⟩, ?_, ?_⟩
    · have hp : piPow 1 = pi := by
        unfold piPow
        exact GaussInt.npow_one pi
      rw [hp]
      simp [pi, GaussInt.mul]
    · intro hdiv
      simp [piDivides] at hdiv
  · refine ⟨⟨6, -5⟩, ?_, ?_⟩
    · rw [piPow_four]
      simp [GaussInt.mul]
    · intro hdiv
      simp [piDivides] at hdiv
  · refine ⟨⟨-2, -1⟩, ?_, ?_⟩
    · have h8 : piPow 8 = ⟨16, 0⟩ := by
        simp [piPow, pi, GaussInt.npow, GaussInt.mul, GaussInt.one]
      rw [h8]
      simp [GaussInt.mul]
    · intro hdiv
      simp [piDivides] at hdiv
  · refine ⟨⟨2, 1⟩, ?_, ?_⟩
    · have h12 : piPow 12 = ⟨-64, 0⟩ := by
        simp [piPow, pi, GaussInt.npow, GaussInt.mul, GaussInt.one]
      rw [h12]
      simp [GaussInt.mul]
    · intro hdiv
      simp [piDivides] at hdiv
  · refine ⟨⟨-1, 24⟩, ?_, ?_⟩
    · have h8 : piPow 8 = ⟨16, 0⟩ := by
        simp [piPow, pi, GaussInt.npow, GaussInt.mul, GaussInt.one]
      rw [h8]
      simp [GaussInt.mul]
    · intro hdiv
      simp [piDivides] at hdiv

theorem a2AfterPiThenPiSq_expand (E : FreyCurve4413) :
    a2AfterPiThenPiSq E = ⟨4 * E.a + 3, 9⟩ := by
  simp [a2AfterPiThenPiSq, a2AfterPi, piPow_two, GaussInt.add, GaussInt.smul]

theorem a4AfterPiThenPiSq_expand (E : FreyCurve4413) :
    a4AfterPiThenPiSq E =
      ⟨2 * E.a ^ 2 + 8 * E.a - 24, 2 * E.b ^ 2 + 24 * E.a + 18⟩ := by
  simp [a4AfterPiThenPiSq, a4AfterPi, a2AfterPi, piPow_two, GaussInt.add, GaussInt.mul,
    GaussInt.smul]
  grind

theorem a6AfterPiThenPiSq_expand (E : FreyCurve4413) :
    a6AfterPiThenPiSq E =
      ⟨2 * E.a ^ 2 - 6 * E.b ^ 2 - 32 * E.a - 26,
        6 * E.a ^ 2 + 2 * E.b ^ 2 + 24 * E.a - 18⟩ := by
  simp [a6AfterPiThenPiSq, a6AfterPi, a4AfterPi, a2AfterPi, piPow_two, GaussInt.add,
    GaussInt.mul]
  grind

theorem quadDiscAfterPiThenPiSq_expand (E : FreyCurve4413) :
    quadDiscAfterPiThenPiSq E =
      ⟨4 * E.a ^ 4 - 4 * E.b ^ 4 + 96 * E.a ^ 2 + 72 * E.b ^ 2 + 416 * E.a - 84,
        8 * E.a ^ 2 * E.b ^ 2 - 72 * E.a ^ 2 + 96 * E.b ^ 2 + 288 * E.a + 288⟩ := by
  rw [quadDiscAfterPiThenPiSq, a2AfterPiThenPiSq_expand, a4AfterPiThenPiSq_expand,
    a6AfterPiThenPiSq_expand]
  simp [GaussInt.mul, GaussInt.smul, GaussInt.sub]
  grind

theorem a2AfterPiThenPiSq_p2_exact_one (E : FreyCurve4413) :
    P2Exact (a2AfterPiThenPiSq E) 1 := by
  rw [a2AfterPiThenPiSq_expand]
  refine ⟨⟨2 * E.a + 6, 3 - 2 * E.a⟩, ?_, ?_⟩
  · have hp : piPow 1 = pi := by
      unfold piPow
      exact GaussInt.npow_one pi
    rw [hp]
    simp [pi, GaussInt.mul]
    constructor <;> omega
  · intro hdiv
    simp [piDivides] at hdiv
    omega

/-- If `c` is odd and `a` is even, `x ↦ x + π²` on the `π`-translate has
`v_π(a₄) = 4`. -/
theorem a4AfterPiThenPiSq_p2_exact_four_of_a_even (E : FreyCurve4413)
    (hodd : E.c.natAbs % 2 = 1) (ha : E.a.natAbs % 2 = 0) :
    P2Exact (a4AfterPiThenPiSq E) 4 := by
  have hb0 := b_odd_of_a_even E hodd ha
  have ha2 := int_even_of_natAbs_even ha
  have hb2 := int_odd_of_natAbs_odd hb0
  rw [a4AfterPiThenPiSq_expand]
  let p := E.a / 2
  let q := (E.b - 1) / 2
  have ha' : E.a = 2 * p := int_even_split ha2
  have hb' : E.b = 2 * q + 1 := int_odd_split hb2
  let ure := -2 * p ^ 2 - 4 * p + 6
  let uim := -(2 * q ^ 2 + 2 * q + 12 * p + 5)
  refine ⟨⟨ure, uim⟩, ?_, ?_⟩
  · rw [piPow_four]
    simp [GaussInt.mul]
    constructor
    · rw [ha']
      grind
    · rw [ha', hb']
      grind
  · intro hdiv
    have hsum : ure + uim = 2 * (-(p ^ 2) - q ^ 2 - 8 * p - q) + 1 := by grind
    simp [piDivides] at hdiv
    rw [hsum] at hdiv
    have hoddSum : (2 * (-(p ^ 2) - q ^ 2 - 8 * p - q) + 1) % 2 = 1 := by
      rw [Int.add_comm, Int.add_mul_emod_self_left]
      decide
    rw [hoddSum] at hdiv
    omega

/-- If `c` is odd and `a` is even, `π⁷` divides `a₆` after `x ↦ x + π`
and `x ↦ x + π²`. The valuation is at least `7`. It is `7` for some curves
and greater for others, so this is not an exact valuation. -/
theorem a6AfterPiThenPiSq_pi_seven_of_a_even (E : FreyCurve4413)
    (hodd : E.c.natAbs % 2 = 1) (ha : E.a.natAbs % 2 = 0) :
    ∃ u, GaussInt.mul u (piPow 7) = a6AfterPiThenPiSq E := by
  have hb0 := b_odd_of_a_even E hodd ha
  have ha2 := int_even_of_natAbs_even ha
  have hb2 := int_odd_of_natAbs_odd hb0
  rw [a6AfterPiThenPiSq_expand]
  let p := E.a / 2
  let q := (E.b - 1) / 2
  have ha' : E.a = 2 * p := int_even_split ha2
  have hb' : E.b = 2 * q + 1 := int_odd_split hb2
  let ure := -(p ^ 2) - 2 * q ^ 2 - 2 * q - 7 * p - 1
  let uim := 2 * p ^ 2 - q ^ 2 - q - p - 3
  refine ⟨⟨ure, uim⟩, ?_⟩
  rw [piPow_seven]
  simp [GaussInt.mul]
  constructor
  · have h16 : (16 : ℤ) * ure =
        (2 * E.a ^ 2 - 6 * E.b ^ 2 - 32 * E.a - 26) -
          (6 * E.a ^ 2 + 2 * E.b ^ 2 + 24 * E.a - 18) := by
      rw [ha', hb']
      grind
    have h8 : (8 : ℤ) * ure + 8 * uim =
        2 * E.a ^ 2 - 6 * E.b ^ 2 - 32 * E.a - 26 := by
      have hsum : (16 : ℤ) * (ure + uim) =
          ((2 * E.a ^ 2 - 6 * E.b ^ 2 - 32 * E.a - 26) -
            (6 * E.a ^ 2 + 2 * E.b ^ 2 + 24 * E.a - 18)) +
          ((2 * E.a ^ 2 - 6 * E.b ^ 2 - 32 * E.a - 26) +
            (6 * E.a ^ 2 + 2 * E.b ^ 2 + 24 * E.a - 18)) := by
        have him : (16 : ℤ) * uim =
            (2 * E.a ^ 2 - 6 * E.b ^ 2 - 32 * E.a - 26) +
              (6 * E.a ^ 2 + 2 * E.b ^ 2 + 24 * E.a - 18) := by
          rw [ha', hb']
          grind
        grind
      grind
    have hcomm : ure * 8 - uim * -8 = 8 * ure + 8 * uim := by grind
    rw [hcomm]
    exact h8
  · have h8 : (8 : ℤ) * uim - 8 * ure =
        6 * E.a ^ 2 + 2 * E.b ^ 2 + 24 * E.a - 18 := by
      have hdiff : (16 : ℤ) * (uim - ure) =
          ((2 * E.a ^ 2 - 6 * E.b ^ 2 - 32 * E.a - 26) +
            (6 * E.a ^ 2 + 2 * E.b ^ 2 + 24 * E.a - 18)) -
          ((2 * E.a ^ 2 - 6 * E.b ^ 2 - 32 * E.a - 26) -
            (6 * E.a ^ 2 + 2 * E.b ^ 2 + 24 * E.a - 18)) := by
        have hre : (16 : ℤ) * ure =
            (2 * E.a ^ 2 - 6 * E.b ^ 2 - 32 * E.a - 26) -
              (6 * E.a ^ 2 + 2 * E.b ^ 2 + 24 * E.a - 18) := by
          rw [ha', hb']
          grind
        have him : (16 : ℤ) * uim =
            (2 * E.a ^ 2 - 6 * E.b ^ 2 - 32 * E.a - 26) +
              (6 * E.a ^ 2 + 2 * E.b ^ 2 + 24 * E.a - 18) := by
          rw [ha', hb']
          grind
        grind
      grind
    grind

/-- If `c` is odd and `a` is even, `v_π(D) = 8` after the same two
translations. `D = a₄² - 4 a₂ a₆`. -/
theorem quadDiscAfterPiThenPiSq_p2_exact_eight_of_a_even (E : FreyCurve4413)
    (hodd : E.c.natAbs % 2 = 1) (ha : E.a.natAbs % 2 = 0) :
    P2Exact (quadDiscAfterPiThenPiSq E) 8 := by
  have hb0 := b_odd_of_a_even E hodd ha
  have ha2 := int_even_of_natAbs_even ha
  have hb2 := int_odd_of_natAbs_odd hb0
  rw [quadDiscAfterPiThenPiSq_expand]
  let p := E.a / 2
  let q := (E.b - 1) / 2
  have ha' : E.a = 2 * p := int_even_split ha2
  have hb' : E.b = 2 * q + 1 := int_odd_split hb2
  let ure := 4 * p ^ 4 + 24 * p ^ 2 + 52 * p - 4 * q ^ 4 - 8 * q ^ 3 + 12 * q ^ 2 + 16 * q - 1
  let uim := 8 * p ^ 2 * q ^ 2 + 8 * p ^ 2 * q - 16 * p ^ 2 + 36 * p + 24 * q ^ 2 + 24 * q + 24
  refine ⟨⟨ure, uim⟩, ?_, ?_⟩
  · rw [piPow_eight]
    simp [GaussInt.mul]
    constructor
    · have h16 : (16 : ℤ) * ure =
          4 * E.a ^ 4 - 4 * E.b ^ 4 + 96 * E.a ^ 2 + 72 * E.b ^ 2 + 416 * E.a - 84 := by
        rw [ha', hb']
        grind
      grind
    · have h16 : (16 : ℤ) * uim =
          8 * E.a ^ 2 * E.b ^ 2 - 72 * E.a ^ 2 + 96 * E.b ^ 2 + 288 * E.a + 288 := by
        rw [ha', hb']
        grind
      grind
  · intro hdiv
    have hsum : ure + uim =
        2 * (2 * p ^ 4 + 4 * p ^ 2 * q ^ 2 + 4 * p ^ 2 * q + 4 * p ^ 2 + 44 * p -
          2 * q ^ 4 - 4 * q ^ 3 + 18 * q ^ 2 + 20 * q + 11) + 1 := by
      grind
    simp [piDivides] at hdiv
    rw [hsum] at hdiv
    have hoddSum :
        (2 * (2 * p ^ 4 + 4 * p ^ 2 * q ^ 2 + 4 * p ^ 2 * q + 4 * p ^ 2 + 44 * p -
          2 * q ^ 4 - 4 * q ^ 3 + 18 * q ^ 2 + 20 * q + 11) + 1) % 2 = 1 := by
      rw [Int.add_comm, Int.add_mul_emod_self_left]
      decide
    rw [hoddSum] at hdiv
    omega

/-- If `c` is odd and `a` is even, the two translations meet the numerical
inputs for `n = 4` on every such curve.

`v_π(a₂) = 1`, `v_π(a₄) = 4`, `π⁷` divides `a₆` and `b₆`, and `v_π(D) = 8`.
Both translations are pure `x`-shifts, so `a₃` stays `0`. Dokchitser's `n = 4`
bounds ask `v(a₆) ≥ 7`, `v(a₄) ≥ 4`, `v(b₆) ≥ 7`, and `v(D) = 8`. `(0, 1, 1)`
is the case `v_π(a₆) = 8`. These are the inputs. They are not a Kodaira
symbol, not a wild part, and not the conductor exponent.
-/
theorem even_a_dokchitser_n4_inputs (E : FreyCurve4413)
    (hodd : E.c.natAbs % 2 = 1) (ha : E.a.natAbs % 2 = 0) :
    P2Exact (a2AfterPiThenPiSq E) 1 ∧
      P2Exact (a4AfterPiThenPiSq E) 4 ∧
      (∃ u, GaussInt.mul u (piPow 7) = a6AfterPiThenPiSq E) ∧
      (∃ u, GaussInt.mul u (piPow 7) = b6AfterPiThenPiSq E) ∧
      P2Exact (quadDiscAfterPiThenPiSq E) 8 := by
  refine ⟨a2AfterPiThenPiSq_p2_exact_one E,
    a4AfterPiThenPiSq_p2_exact_four_of_a_even E hodd ha,
    a6AfterPiThenPiSq_pi_seven_of_a_even E hodd ha, ?_,
    quadDiscAfterPiThenPiSq_p2_exact_eight_of_a_even E hodd ha⟩
  rcases a6AfterPiThenPiSq_pi_seven_of_a_even E hodd ha with ⟨u, hu⟩
  refine ⟨GaussInt.smul 4 u, ?_⟩
  rw [b6AfterPiThenPiSq, ← hu, piPow_seven]
  simp [GaussInt.smul, GaussInt.mul]
  constructor <;> grind

/-- `π^k` divides `z`, with zero counted as divisible by every power. -/
def valAtLeast (z : GaussInt) (k : ℕ) : Prop :=
  z = GaussInt.zero ∨ ∃ u, GaussInt.mul u (piPow k) = z

theorem valAtLeast_of_dvd {z u : GaussInt} {k : ℕ}
    (h : GaussInt.mul u (piPow k) = z) : valAtLeast z k :=
  Or.inr ⟨u, h⟩

theorem valAtLeast_of_P2Exact {z : GaussInt} {m k : ℕ}
    (h : P2Exact z m) (hk : k ≤ m) : valAtLeast z k := by
  rcases h with ⟨u, hu, _⟩
  have hsum : (m - k) + k = m := by omega
  have hpow : piPow ((m - k) + k) =
      GaussInt.mul (piPow (m - k)) (piPow k) := by
    unfold piPow
    exact GaussInt.npow_add pi (m - k) k
  rw [hsum] at hpow
  refine Or.inr ⟨GaussInt.mul u (piPow (m - k)), ?_⟩
  calc
    GaussInt.mul (GaussInt.mul u (piPow (m - k))) (piPow k)
        = GaussInt.mul u (GaussInt.mul (piPow (m - k)) (piPow k)) := by
          rw [GaussInt.mul_assoc]
    _ = GaussInt.mul u (piPow m) := by rw [← hpow]
    _ = z := hu

/-- Dokchitser's numerical bounds for type `I_n*` at `π`, for positive even `n`.

`v_π(a₂) = 1`, `v_π(a₃)` and `v_π(a₄)` are at least `(n + 4) / 2`,
`v_π(a₆)` and `v_π(b₆)` are at least `n + 3`, and `v_π(D) = n + 4`, where
`D = a₄² - 4 a₂ a₆`. Zero has infinite valuation, so it meets a lower bound.
For `n = 2` the bounds are `3, 3, 5, 5` and `v(D) = 6`. For `n = 4` they are
`4, 4, 7, 7` and `v(D) = 8`. These inequalities are not a Kodaira symbol.
They are conditions on a `u = 1` translate, whose Weierstrass discriminant
is still `deltaGauss`. Dokchitser's `d` on that translate has valuation
`n + 6`, while `v_π(Δ) = 18`. `SwanAtPi` is not part of this predicate,
and `f` is not computed.
-/
def IsINStar (n : ℕ) (a1 a2 a3 a4 a6 b6 D : GaussInt) : Prop :=
  0 < n ∧ n % 2 = 0 ∧
    valAtLeast a1 1 ∧
    P2Exact a2 1 ∧
    valAtLeast a3 ((n + 4) / 2) ∧
    valAtLeast a4 ((n + 4) / 2) ∧
    valAtLeast a6 (n + 3) ∧
    valAtLeast b6 (n + 3) ∧
    P2Exact D (n + 4)

/-- Swan conductor at `π`.

The equation is hidden, so this is not the integer `0`. Nothing proves that
it vanishes. `swan_vanishes_open` asks for that vanishing on a coprime curve
and is not a theorem: the argument that the `3`-division field is tamely
ramified at `π`, using `ℓ = 3 ≠ p = 2`, is not formalized.
-/
opaque SwanAtPi (E : FreyCurve4413) : ℕ := 0

/-- Tame part of the conductor exponent at `π`.

The equation is hidden. This is not defined to be `2`, `10`, or `12`, and
it is not `v_π(Δ) - 4 - n`. `ogg_tame_of_INStar_discriminant` is the table
arithmetic `(n + 6) - 4 - n = 2`. `ogg_count_if_components` is
`18 - (n + 5) + 1`, equal to `10` or `12`: Ogg's expression when a minimal
special fiber has `m = n + 5` components. `tate_step7_inputs` is the
valuation data of the row. It does not count those components, so this
sealed value is not that expression.
-/
opaque FTameAtPi (E : FreyCurve4413) : ℕ := 0

theorem a_odd_IsINStar (E : FreyCurve4413)
    (hodd : E.c.natAbs % 2 = 1) (ha : E.a.natAbs % 2 = 1) :
    IsINStar 2 GaussInt.zero (a2AfterPi E) a3AfterPiSq (a4AfterPi E)
      (a6AfterPiSq E) (b6AfterPiSq E) (quadDiscAfterPiSq E) := by
  have h := a_odd_dokchitser_n2_inputs E hodd ha
  refine ⟨by decide, by decide, Or.inl rfl, h.1,
    valAtLeast_of_P2Exact h.2.1 (by decide),
    valAtLeast_of_P2Exact h.2.2.1 (by decide),
    valAtLeast_of_P2Exact h.2.2.2.1 (by decide),
    valAtLeast_of_P2Exact h.2.2.2.2.1 (by decide),
    h.2.2.2.2.2⟩

theorem even_a_IsINStar (E : FreyCurve4413)
    (hodd : E.c.natAbs % 2 = 1) (ha : E.a.natAbs % 2 = 0) :
    IsINStar 4 GaussInt.zero (a2AfterPiThenPiSq E) GaussInt.zero
      (a4AfterPiThenPiSq E) (a6AfterPiThenPiSq E) (b6AfterPiThenPiSq E)
      (quadDiscAfterPiThenPiSq E) := by
  have h := even_a_dokchitser_n4_inputs E hodd ha
  rcases h.2.2.1 with ⟨ua6, hua6⟩
  rcases h.2.2.2.1 with ⟨ub6, hub6⟩
  refine ⟨by decide, by decide, Or.inl rfl, h.1, Or.inl rfl,
    valAtLeast_of_P2Exact h.2.1 (by decide),
    valAtLeast_of_dvd hua6,
    valAtLeast_of_dvd hub6,
    h.2.2.2.2⟩

theorem GaussInt.npow_one_nat (n : ℕ) : GaussInt.npow GaussInt.one n = GaussInt.one := by
  induction n with
  | zero => rfl
  | succ n ih => simp [GaussInt.npow, ih, GaussInt.mul_one]

theorem evalPoly_zero (p : List GaussInt) : evalPoly p GaussInt.zero = ct p := by
  cases p with
  | nil => simp [evalPoly, ct]
  | cons c cs => simp [evalPoly, ct, GaussInt.add_zero]

theorem evalCleared_zero_den_one (p : List GaussInt) :
    evalCleared p GaussInt.zero GaussInt.one = ct p := by
  cases p with
  | nil => simp [evalCleared, ct]
  | cons c cs =>
    simp [evalCleared, ct, GaussInt.zero_mul, GaussInt.add_zero, GaussInt.npow_one_nat]

/-- The curve of `(0, 0, 0)` is singular, and `ψ₁₃` vanishes at `0`.

`Psi13HasNoQiRoot` is therefore false for this curve. It is not a theorem
for every `FreyCurve4413`. For a curve with `b ≠ 0` the constant term is
nonzero, so `0` is not a root, and the other candidates still depend on
`a` and `b`.
-/
theorem psi13_vanishes_on_zero_curve :
    evalCleared
        (psi13 (GaussInt.ofInt 0) ⟨0, 0⟩ GaussInt.zero)
        GaussInt.zero GaussInt.one =
      GaussInt.zero := by
  rw [evalCleared_zero_den_one, psi13_constant_term]
  rw [show (42 : ℕ) = Nat.succ 41 by decide]
  simp [GaussInt.npow, GaussInt.mul, GaussInt.zero]

instance (z : GaussInt) : Decidable (piDivides z) :=
  inferInstanceAs (Decidable ((z.re + z.im) % 2 = 0))

/-- Peel factors of `π`. `fuel = 0` stops. -/
def vPiFuel : Nat → GaussInt → Nat
  | 0, _ => 0
  | n + 1, z =>
      if z = GaussInt.zero then 0
      else if piDivides z then vPiFuel n (piQuot z) + 1
      else 0

/-- `v_π` on `ℤ[i]`. The zero element is sent to `0` and is not a valuation. -/
def vPi (z : GaussInt) : Nat :=
  vPiFuel ((GaussInt.norm z).toNat + 1) z

theorem vPiFuel_zero (n : Nat) : vPiFuel (n + 1) GaussInt.zero = 0 := by
  simp [vPiFuel]

theorem vPiFuel_not_div (n : Nat) (z : GaussInt) (hz : z ≠ GaussInt.zero)
    (hp : ¬ piDivides z) : vPiFuel (n + 1) z = 0 := by
  simp [vPiFuel, hz, hp]

theorem vPiFuel_div (n : Nat) (z : GaussInt) (hz : z ≠ GaussInt.zero)
    (hp : piDivides z) : vPiFuel (n + 1) z = vPiFuel n (piQuot z) + 1 := by
  simp [vPiFuel, hz, hp]

theorem norm_piQuot (z : GaussInt) (h : piDivides z) :
    GaussInt.norm z = 2 * GaussInt.norm (piQuot z) := by
  have hmul := mul_pi_piQuot z h
  have hn := GaussInt.norm_mul (piQuot z) pi
  rw [hmul] at hn
  have hpi : GaussInt.norm pi = 2 := by simp [pi, GaussInt.norm]
  rw [hpi, Int.mul_comm] at hn
  exact hn

theorem piQuot_ne_zero (z : GaussInt) (hz : z ≠ GaussInt.zero) (hp : piDivides z) :
    piQuot z ≠ GaussInt.zero := by
  intro hq
  have hmul := mul_pi_piQuot z hp
  rw [hq, GaussInt.zero_mul] at hmul
  exact hz hmul.symm

theorem norm_piQuot_lt (z : GaussInt) (hz : z ≠ GaussInt.zero) (hp : piDivides z) :
    (GaussInt.norm (piQuot z)).toNat < (GaussInt.norm z).toNat := by
  have hn := norm_piQuot z hp
  have hpos : 0 < GaussInt.norm z := by
    have hnn := GaussInt.norm_nonneg z
    have hne : GaussInt.norm z ≠ 0 := by
      intro h0
      exact hz ((GaussInt.norm_eq_zero_iff z).1 h0)
    omega
  have hhalf : GaussInt.norm (piQuot z) * 2 = GaussInt.norm z := by
    rw [Int.mul_comm]
    exact hn.symm
  have hnat : (GaussInt.norm z).toNat = (GaussInt.norm (piQuot z)).toNat * 2 := by
    have hnn := GaussInt.norm_nonneg (piQuot z)
    have h2 : (0 : Int) ≤ 2 := by decide
    rw [← hhalf, Int.toNat_mul hnn h2]
    simp
  omega

theorem vPi_zero : vPi GaussInt.zero = 0 := by
  simp [vPi, GaussInt.zero, vPiFuel]

theorem vPi_not_div (z : GaussInt) (hz : z ≠ GaussInt.zero) (hp : ¬ piDivides z) :
    vPi z = 0 := by
  simp [vPi, vPiFuel, hz, hp]

theorem exists_pi_shape_fuel (n : Nat) (z : GaussInt) (hz : z ≠ GaussInt.zero)
    (hn : (GaussInt.norm z).toNat < n) :
    ∃ u, ¬ piDivides u ∧ GaussInt.mul u (piPow (vPiFuel n z)) = z := by
  match n with
  | 0 => omega
  | n + 1 =>
    by_cases hp : piDivides z
    · have hzq := piQuot_ne_zero z hz hp
      have hlt := norm_piQuot_lt z hz hp
      have hn' : (GaussInt.norm (piQuot z)).toNat < n := by omega
      rcases exists_pi_shape_fuel n (piQuot z) hzq hn' with ⟨u, hu, heq⟩
      refine ⟨u, hu, ?_⟩
      have hv : vPiFuel (n + 1) z = vPiFuel n (piQuot z) + 1 := vPiFuel_div n z hz hp
      rw [hv]
      have hpow : piPow (vPiFuel n (piQuot z) + 1) =
          GaussInt.mul (piPow (vPiFuel n (piQuot z))) pi := by
        rw [piPow_succ_right]
      rw [hpow, ← GaussInt.mul_assoc, heq]
      exact mul_pi_piQuot z hp
    · refine ⟨z, hp, ?_⟩
      rw [vPiFuel_not_div n z hz hp]
      simp [piPow, GaussInt.npow, GaussInt.mul_one]

theorem exists_pi_shape (z : GaussInt) (hz : z ≠ GaussInt.zero) :
    ∃ u, ¬ piDivides u ∧ GaussInt.mul u (piPow (vPi z)) = z := by
  have hn : (GaussInt.norm z).toNat < (GaussInt.norm z).toNat + 1 := by omega
  simpa [vPi] using exists_pi_shape_fuel ((GaussInt.norm z).toNat + 1) z hz hn

theorem not_piDivides_ne_zero {u : GaussInt} (hu : ¬ piDivides u) : u ≠ GaussInt.zero := by
  intro h0
  exact hu (by rw [h0]; simp [piDivides, GaussInt.zero])

theorem vPiFuel_shape (n k : Nat) (z u : GaussInt) (hu : ¬ piDivides u)
    (hk : GaussInt.mul u (piPow k) = z) (hn : k < n) : vPiFuel n z = k := by
  match n with
  | 0 => omega
  | n + 1 =>
    have hz : z ≠ GaussInt.zero := by
      intro hz
      rw [hz] at hk
      rcases (GaussInt.mul_eq_zero.mp hk) with hu0 | hp
      · exact hu (by rw [hu0]; simp [piDivides, GaussInt.zero])
      · exact piPow_ne_zero k hp
    cases k with
    | zero =>
      rw [piPow, GaussInt.npow_zero, GaussInt.mul_one] at hk
      have hpz : ¬ piDivides z := by
        rw [← hk]
        exact hu
      exact vPiFuel_not_div n z hz hpz
    | succ k =>
      have hp : piDivides z := by
        rw [← hk, piPow_succ_right, ← GaussInt.mul_assoc]
        exact (piDivides_mul (GaussInt.mul u (piPow k)) pi).2
          (Or.inr (by simp [piDivides, pi]))
      rw [vPiFuel_div n z hz hp]
      have hquot : GaussInt.mul u (piPow k) = piQuot z := by
        have hmul := mul_pi_piQuot z hp
        have hright : z = GaussInt.mul (GaussInt.mul u (piPow k)) pi := by
          rw [← hk, piPow_succ_right, ← GaussInt.mul_assoc]
        exact (mul_right_cancel (by decide : pi ≠ GaussInt.zero) (hmul.trans hright)).symm
      have hklt : k < n := by omega
      rw [vPiFuel_shape n k (piQuot z) u hu hquot hklt]

theorem norm_piPow (k : Nat) : GaussInt.norm (piPow k) = (2 : Int) ^ k := by
  simpa [piPow] using pi_pow_norm k

theorem two_pow_le_norm_of_shape (z u : GaussInt) (k : Nat) (hu : ¬ piDivides u)
    (hk : GaussInt.mul u (piPow k) = z) : (2 : Nat) ^ k ≤ (GaussInt.norm z).toNat := by
  induction k generalizing z u with
  | zero =>
    rw [piPow, GaussInt.npow_zero, GaussInt.mul_one] at hk
    rw [← hk]
    have hne : GaussInt.norm u ≠ 0 := by
      intro h0
      exact not_piDivides_ne_zero hu ((GaussInt.norm_eq_zero_iff u).1 h0)
    have hnn := GaussInt.norm_nonneg u
    omega
  | succ k ih =>
    have hp : piDivides z := by
      rw [← hk, piPow_succ_right, ← GaussInt.mul_assoc]
      exact (piDivides_mul (GaussInt.mul u (piPow k)) pi).2
        (Or.inr (by simp [piDivides, pi]))
    have hquot : GaussInt.mul u (piPow k) = piQuot z := by
      have hmul := mul_pi_piQuot z hp
      have hright : z = GaussInt.mul (GaussInt.mul u (piPow k)) pi := by
        rw [← hk, piPow_succ_right, ← GaussInt.mul_assoc]
      exact (mul_right_cancel (by decide : pi ≠ GaussInt.zero) (hmul.trans hright)).symm
    have ihk := ih (piQuot z) u hu hquot
    have hn := norm_piQuot z hp
    have hnn := GaussInt.norm_nonneg (piQuot z)
    have hto : (GaussInt.norm z).toNat = (GaussInt.norm (piQuot z)).toNat * 2 := by
      rw [hn, Int.toNat_mul (by decide : (0 : Int) ≤ 2) hnn]
      have h2 : Int.toNat (2 : Int) = 2 := by decide
      rw [h2, Nat.mul_comm]
    have hpow : (2 : Nat) ^ (k + 1) = (2 : Nat) ^ k * 2 := by
      rw [Nat.pow_succ, Nat.mul_comm]
    omega

theorem k_lt_two_pow (k : Nat) : k < (2 : Nat) ^ k := by
  induction k with
  | zero => decide
  | succ k ih =>
    rw [Nat.pow_succ]
    omega

theorem vPi_of_shape (z u : GaussInt) (k : Nat) (hu : ¬ piDivides u)
    (hk : GaussInt.mul u (piPow k) = z) : vPi z = k := by
  have hle := two_pow_le_norm_of_shape z u k hu hk
  have hpow : k < (GaussInt.norm z).toNat + 1 := by
    have hlt := k_lt_two_pow k
    omega
  exact vPiFuel_shape ((GaussInt.norm z).toNat + 1) k z u hu hk hpow

theorem vPi_piPow (k : Nat) : vPi (piPow k) = k := by
  have h1 : ¬ piDivides GaussInt.one := by
    decide
  exact vPi_of_shape (piPow k) GaussInt.one k h1 (GaussInt.one_mul (piPow k))

theorem vPi_mul (x y : GaussInt) (hx : x ≠ GaussInt.zero) (hy : y ≠ GaussInt.zero) :
    vPi (GaussInt.mul x y) = vPi x + vPi y := by
  rcases exists_pi_shape x hx with ⟨ux, hux, hex⟩
  rcases exists_pi_shape y hy with ⟨uy, huy, hey⟩
  have hcof : ¬ piDivides (GaussInt.mul ux uy) := by
    intro hdiv
    rcases (piDivides_mul ux uy).1 hdiv with h | h
    · exact hux h
    · exact huy h
  have hpow : piPow (vPi x + vPi y) =
      GaussInt.mul (piPow (vPi x)) (piPow (vPi y)) := by
    unfold piPow
    exact GaussInt.npow_add pi (vPi x) (vPi y)
  have hxy : GaussInt.mul (GaussInt.mul ux uy) (piPow (vPi x + vPi y)) =
      GaussInt.mul x y := by
    calc
      GaussInt.mul (GaussInt.mul ux uy) (piPow (vPi x + vPi y))
          = GaussInt.mul (GaussInt.mul ux uy)
              (GaussInt.mul (piPow (vPi x)) (piPow (vPi y))) := by rw [hpow]
      _ = GaussInt.mul (GaussInt.mul (GaussInt.mul ux uy) (piPow (vPi x)))
            (piPow (vPi y)) := by
          rw [← GaussInt.mul_assoc (GaussInt.mul ux uy) (piPow (vPi x)) (piPow (vPi y))]
      _ = GaussInt.mul (GaussInt.mul (GaussInt.mul ux (piPow (vPi x))) uy)
            (piPow (vPi y)) := by rw [mul_mul_swap ux uy (piPow (vPi x))]
      _ = GaussInt.mul (GaussInt.mul ux (piPow (vPi x)))
            (GaussInt.mul uy (piPow (vPi y))) := by
          rw [← GaussInt.mul_assoc (GaussInt.mul ux (piPow (vPi x))) uy (piPow (vPi y))]
      _ = GaussInt.mul x y := by rw [hex, hey]
  exact vPi_of_shape _ _ _ hcof hxy

theorem vPi_add_lt (x y : GaussInt) (hx : x ≠ GaussInt.zero) (hy : y ≠ GaussInt.zero)
    (hlt : vPi x < vPi y) :
    GaussInt.add x y ≠ GaussInt.zero ∧ vPi (GaussInt.add x y) = vPi x := by
  rcases exists_pi_shape x hx with ⟨ux, hux, hex⟩
  rcases exists_pi_shape y hy with ⟨uy, huy, hey⟩
  let m := vPi y - vPi x
  have hm : vPi y = vPi x + m := by omega
  have hm1 : 1 ≤ m := by omega
  have hpow : piPow (vPi y) = GaussInt.mul (piPow m) (piPow (vPi x)) := by
    rw [hm]
    unfold piPow
    rw [GaussInt.npow_add pi (vPi x) m, GaussInt.mul_comm]
  have hy' : GaussInt.mul (GaussInt.mul uy (piPow m)) (piPow (vPi x)) = y := by
    calc
      GaussInt.mul (GaussInt.mul uy (piPow m)) (piPow (vPi x))
          = GaussInt.mul uy (GaussInt.mul (piPow m) (piPow (vPi x))) := by
            rw [GaussInt.mul_assoc uy (piPow m) (piPow (vPi x))]
      _ = GaussInt.mul uy (piPow (vPi y)) := by rw [← hpow]
      _ = y := hey
  have hpm : piDivides (piPow m) := by
    have hm' : m = (m - 1) + 1 := by omega
    rw [hm', piPow_succ_right]
    exact (piDivides_mul (piPow (m - 1)) pi).2 (Or.inr (by simp [piDivides, pi]))
  have hcof : ¬ piDivides (GaussInt.add ux (GaussInt.mul uy (piPow m))) :=
    not_piDivides_add_of_right hux ((piDivides_mul uy (piPow m)).2 (Or.inr hpm))
  have hsum : GaussInt.mul (GaussInt.add ux (GaussInt.mul uy (piPow m))) (piPow (vPi x)) =
      GaussInt.add x y := by
    calc
      GaussInt.mul (GaussInt.add ux (GaussInt.mul uy (piPow m))) (piPow (vPi x))
          = GaussInt.add (GaussInt.mul ux (piPow (vPi x)))
              (GaussInt.mul (GaussInt.mul uy (piPow m)) (piPow (vPi x))) := by
            rw [GaussInt.add_mul]
      _ = GaussInt.add x y := by rw [hex, hy']
  have hne : GaussInt.add x y ≠ GaussInt.zero := by
    intro hz
    have hmul0 : GaussInt.mul (GaussInt.add ux (GaussInt.mul uy (piPow m))) (piPow (vPi x)) =
        GaussInt.zero := hsum.trans hz
    rcases (GaussInt.mul_eq_zero.mp hmul0) with hc | hp
    · exact hcof (by rw [hc]; simp [piDivides, GaussInt.zero])
    · exact piPow_ne_zero (vPi x) hp
  exact ⟨hne, vPi_of_shape _ _ _ hcof hsum⟩

/-- An element of `ℚ(i)`, as a ratio of Gaussian integers. -/
structure GRat where
  num : GaussInt
  den : GaussInt
  den_ne : den ≠ GaussInt.zero

def gOf (z : GaussInt) : GRat where
  num := z
  den := GaussInt.one
  den_ne := by decide

/-- `none` is the zero element, whose valuation is infinite. -/
def vRat? (x : GRat) : Option Int :=
  if x.num = GaussInt.zero then none
  else some ((vPi x.num : Int) - (vPi x.den : Int))

def gmul (x y : GRat) : GRat where
  num := GaussInt.mul x.num y.num
  den := GaussInt.mul x.den y.den
  den_ne := by
    intro h
    rcases (GaussInt.mul_eq_zero.mp h) with h | h
    · exact x.den_ne h
    · exact y.den_ne h

def gadd (x y : GRat) : GRat where
  num := GaussInt.add (GaussInt.mul x.num y.den) (GaussInt.mul y.num x.den)
  den := GaussInt.mul x.den y.den
  den_ne := by
    intro h
    rcases (GaussInt.mul_eq_zero.mp h) with h | h
    · exact x.den_ne h
    · exact y.den_ne h

def gneg (x : GRat) : GRat where
  num := GaussInt.neg x.num
  den := x.den
  den_ne := x.den_ne

def valGe (x : GRat) (n : Int) : Prop :=
  match vRat? x with
  | none => True
  | some k => n ≤ k

theorem valGe_of_none {x : GRat} {n : Int} (h : vRat? x = none) : valGe x n := by
  simp [valGe, h]

theorem valGe_of_le {x : GRat} {n k : Int} (hk : vRat? x = some k) (hle : n ≤ k) :
    valGe x n := by
  simp [valGe, hk, hle]

theorem vRat?_gOf_zero (z : GaussInt) (hz : z = GaussInt.zero) : vRat? (gOf z) = none := by
  simp [vRat?, gOf, hz]

theorem vRat?_gOf_ne (z : GaussInt) (hz : z ≠ GaussInt.zero) :
    vRat? (gOf z) = some (vPi z) := by
  simp [vRat?, gOf, hz, vPi_not_div GaussInt.one (by decide) (by simp [piDivides, GaussInt.one])]

theorem v_gmul (x y : GRat) {a b : Int} (hx : vRat? x = some a) (hy : vRat? y = some b) :
    vRat? (gmul x y) = some (a + b) := by
  have hx0 : x.num ≠ GaussInt.zero := by
    intro h
    simp [vRat?, h] at hx
  have hy0 : y.num ≠ GaussInt.zero := by
    intro h
    simp [vRat?, h] at hy
  have hxm : (vPi x.num : Int) - vPi x.den = a := by
    simp [vRat?, hx0] at hx
    exact hx
  have hym : (vPi y.num : Int) - vPi y.den = b := by
    simp [vRat?, hy0] at hy
    exact hy
  have hprod : GaussInt.mul x.num y.num ≠ GaussInt.zero := by
    intro h
    rcases (GaussInt.mul_eq_zero.mp h) with h | h
    · exact hx0 h
    · exact hy0 h
  simp [vRat?, gmul, hprod, vPi_mul x.num y.num hx0 hy0, vPi_mul x.den y.den x.den_ne y.den_ne]
  omega

theorem v_gneg (x : GRat) : vRat? (gneg x) = vRat? x := by
  by_cases hx : x.num = GaussInt.zero
  · simp [vRat?, gneg, hx, GaussInt.neg_zero]
  · have hne : GaussInt.neg x.num ≠ GaussInt.zero := by
      intro h
      apply hx
      have := congrArg GaussInt.neg h
      simpa [GaussInt.neg_neg, GaussInt.neg_zero] using this
    have hv : vPi (GaussInt.neg x.num) = vPi x.num := by
      rcases exists_pi_shape x.num hx with ⟨u, hu, heq⟩
      have hneg : GaussInt.mul (GaussInt.neg u) (piPow (vPi x.num)) = GaussInt.neg x.num := by
        calc
          GaussInt.mul (GaussInt.neg u) (piPow (vPi x.num))
              = GaussInt.neg (GaussInt.mul u (piPow (vPi x.num))) := by rw [GaussInt.neg_mul]
          _ = GaussInt.neg x.num := by rw [heq]
      have hu' : ¬ piDivides (GaussInt.neg u) := by
        intro hdiv
        exact hu ((piDivides_neg u).1 hdiv)
      exact vPi_of_shape _ _ _ hu' hneg
    simp [vRat?, gneg, hx, hne, hv]

theorem v_gadd_zero_right (x y : GRat) (hy : y.num = GaussInt.zero) :
    vRat? (gadd x y) = vRat? x := by
  simp [gadd, vRat?, hy, GaussInt.add_zero]
  by_cases hx : x.num = GaussInt.zero
  · simp [hx]
  · have hden : GaussInt.mul x.num y.den ≠ GaussInt.zero := by
      intro h
      rcases (GaussInt.mul_eq_zero.mp h) with h | h
      · exact hx h
      · exact y.den_ne h
    simp [hx, hden, vPi_mul x.num y.den hx y.den_ne, vPi_mul x.den y.den x.den_ne y.den_ne]
    omega

theorem v_gadd_lt (x y : GRat) {a b : Int} (hx : vRat? x = some a) (hy : vRat? y = some b)
    (hlt : a < b) : vRat? (gadd x y) = some a := by
  have hx0 : x.num ≠ GaussInt.zero := by intro h; simp [vRat?, h] at hx
  have hy0 : y.num ≠ GaussInt.zero := by intro h; simp [vRat?, h] at hy
  have hxa : (vPi x.num : Int) - vPi x.den = a := by simp [vRat?, hx0] at hx; exact hx
  have hyb : (vPi y.num : Int) - vPi y.den = b := by simp [vRat?, hy0] at hy; exact hy
  have hnx0 : GaussInt.mul x.num y.den ≠ GaussInt.zero := by
    intro h
    rcases (GaussInt.mul_eq_zero.mp h) with h | h
    · exact hx0 h
    · exact y.den_ne h
  have hny0 : GaussInt.mul y.num x.den ≠ GaussInt.zero := by
    intro h
    rcases (GaussInt.mul_eq_zero.mp h) with h | h
    · exact hy0 h
    · exact x.den_ne h
  have hltN : vPi (GaussInt.mul x.num y.den) < vPi (GaussInt.mul y.num x.den) := by
    have hnx := vPi_mul x.num y.den hx0 y.den_ne
    have hny := vPi_mul y.num x.den hy0 x.den_ne
    omega
  have hadd := vPi_add_lt (GaussInt.mul x.num y.den) (GaussInt.mul y.num x.den) hnx0 hny0 hltN
  simp [gadd, vRat?, hadd.1, hadd.2, vPi_mul x.den y.den x.den_ne y.den_ne,
    vPi_mul x.num y.den hx0 y.den_ne]
  omega

theorem vPi_ge_of_mul_piPow (z u : GaussInt) (k : Nat)
    (hk : GaussInt.mul u (piPow k) = z) (hz : z ≠ GaussInt.zero) : k ≤ vPi z := by
  have hu : u ≠ GaussInt.zero := by
    intro h0
    exact hz (hk.symm.trans (by rw [h0, GaussInt.zero_mul]))
  rcases exists_pi_shape u hu with ⟨u', hu', heq⟩
  have hpow : piPow (vPi u + k) =
      GaussInt.mul (piPow (vPi u)) (piPow k) := by
    unfold piPow
    exact GaussInt.npow_add pi (vPi u) k
  have hz' : GaussInt.mul u' (piPow (vPi u + k)) = z := by
    calc
      GaussInt.mul u' (piPow (vPi u + k))
          = GaussInt.mul u' (GaussInt.mul (piPow (vPi u)) (piPow k)) := by rw [hpow]
      _ = GaussInt.mul (GaussInt.mul u' (piPow (vPi u))) (piPow k) := by
          rw [← GaussInt.mul_assoc u' (piPow (vPi u)) (piPow k)]
      _ = GaussInt.mul u (piPow k) := by rw [heq]
      _ = z := hk
  have hv := vPi_of_shape z u' (vPi u + k) hu' hz'
  omega

theorem vPi_one : vPi GaussInt.one = 0 :=
  vPi_not_div GaussInt.one (by decide) (by decide)

theorem vPi_ofInt_two : vPi (GaussInt.ofInt 2) = 2 :=
  vPi_of_shape (GaussInt.ofInt 2) ⟨0, -1⟩ 2 (by decide) two_eq_neg_i_mul_pi_sq

theorem vPi_ofInt_three : vPi (GaussInt.ofInt 3) = 0 :=
  vPi_not_div (GaussInt.ofInt 3) (by decide)
    (not_piDivides_ofInt_of_natAbs_odd (by decide : (3 : ℤ).natAbs % 2 = 1))

theorem vPi_a4 (E : FreyCurve4413) (hodd : E.c.natAbs % 2 = 1) :
    vPi ⟨E.B_re, E.B_im⟩ = 2 := by
  rcases a4_p2_exact_two E hodd with ⟨u, hu, hnu⟩
  exact vPi_of_shape _ u 2 hnu hu

theorem vPi_a2_ge (E : FreyCurve4413) (hne : GaussInt.ofInt E.A_int ≠ GaussInt.zero) :
    4 ≤ vPi (GaussInt.ofInt E.A_int) := by
  rcases a2_change_pi_four E with ⟨u, hu⟩
  exact vPi_ge_of_mul_piPow _ u 4 hu hne

theorem vPi_delta (E : FreyCurve4413) (hodd : E.c.natAbs % 2 = 1) :
    vPi (deltaGauss E) = 18 := by
  rcases delta_p2_exact_eighteen E hodd with ⟨u, hu, hnu⟩
  exact vPi_of_shape _ u 18 hnu hu

theorem vPi_add_ge (x y : GaussInt) (hx : x ≠ GaussInt.zero) (hy : y ≠ GaussInt.zero) :
    GaussInt.add x y = GaussInt.zero ∨
      (GaussInt.add x y ≠ GaussInt.zero ∧
        min (vPi x) (vPi y) ≤ vPi (GaussInt.add x y)) := by
  rcases exists_pi_shape x hx with ⟨ux, hux, hex⟩
  rcases exists_pi_shape y hy with ⟨uy, huy, hey⟩
  by_cases hlt : vPi x < vPi y
  · have h := vPi_add_lt x y hx hy hlt
    refine Or.inr ⟨h.1, ?_⟩
    rw [h.2]
    exact Nat.min_le_left (vPi x) (vPi y)
  · by_cases hgt : vPi y < vPi x
    · have h := vPi_add_lt y x hy hx hgt
      refine Or.inr ⟨?_, ?_⟩
      · intro hz
        exact h.1 (by rw [GaussInt.add_comm]; exact hz)
      · have hcomm : vPi (GaussInt.add x y) = vPi y := by
          rw [GaussInt.add_comm x y, h.2]
        rw [hcomm]
        exact Nat.min_le_right (vPi x) (vPi y)
    · have heqv : vPi x = vPi y := by omega
      have hsum : GaussInt.add x y =
          GaussInt.mul (GaussInt.add ux uy) (piPow (vPi x)) := by
        calc
          GaussInt.add x y
              = GaussInt.add (GaussInt.mul ux (piPow (vPi x))) y :=
                congrArg (fun z => GaussInt.add z y) hex.symm
          _ = GaussInt.add (GaussInt.mul ux (piPow (vPi x)))
                (GaussInt.mul uy (piPow (vPi y))) :=
                congrArg (fun z => GaussInt.add (GaussInt.mul ux (piPow (vPi x))) z) hey.symm
          _ = GaussInt.add (GaussInt.mul ux (piPow (vPi x)))
                (GaussInt.mul uy (piPow (vPi x))) := by rw [heqv]
          _ = GaussInt.mul (GaussInt.add ux uy) (piPow (vPi x)) :=
                (GaussInt.add_mul ux uy (piPow (vPi x))).symm
      by_cases hzu : GaussInt.add ux uy = GaussInt.zero
      · exact Or.inl (hsum.trans (by rw [hzu, GaussInt.zero_mul]))
      · refine Or.inr ?_
        rcases exists_pi_shape (GaussInt.add ux uy) hzu with ⟨u', hu', heq'⟩
        have hpow : piPow (vPi (GaussInt.add ux uy) + vPi x) =
            GaussInt.mul (piPow (vPi (GaussInt.add ux uy))) (piPow (vPi x)) := by
          unfold piPow
          exact GaussInt.npow_add pi (vPi (GaussInt.add ux uy)) (vPi x)
        have hz' : GaussInt.mul u' (piPow (vPi (GaussInt.add ux uy) + vPi x)) =
            GaussInt.add x y := by
          calc
            GaussInt.mul u' (piPow (vPi (GaussInt.add ux uy) + vPi x))
                = GaussInt.mul u'
                    (GaussInt.mul (piPow (vPi (GaussInt.add ux uy))) (piPow (vPi x))) := by
                  rw [hpow]
            _ = GaussInt.mul (GaussInt.mul u' (piPow (vPi (GaussInt.add ux uy))))
                  (piPow (vPi x)) := by
                rw [← GaussInt.mul_assoc u' (piPow (vPi (GaussInt.add ux uy))) (piPow (vPi x))]
            _ = GaussInt.mul (GaussInt.add ux uy) (piPow (vPi x)) := by rw [heq']
            _ = GaussInt.add x y := hsum.symm
        have hv := vPi_of_shape _ _ _ hu' hz'
        have hne : GaussInt.add x y ≠ GaussInt.zero := by
          intro hz
          have hmul0 := hz'.trans hz
          rcases (GaussInt.mul_eq_zero.mp hmul0) with hc | hp
          · exact hu' (by rw [hc]; simp [piDivides, GaussInt.zero])
          · exact piPow_ne_zero _ hp
        refine ⟨hne, ?_⟩
        rw [heqv]
        exact Nat.le_trans (Nat.min_le_left (vPi y) (vPi y)) (by
          rw [← heqv, hv]
          omega)

theorem num_eq_zero_of_vRat?_none (x : GRat) (h : vRat? x = none) : x.num = GaussInt.zero := by
  by_cases hz : x.num = GaussInt.zero
  · exact hz
  · simp [vRat?, hz] at h

theorem v_gadd_zero_left (x y : GRat) (hx : x.num = GaussInt.zero) :
    vRat? (gadd x y) = vRat? y := by
  simp [gadd, vRat?, hx, GaussInt.zero_mul, GaussInt.zero_add]
  by_cases hy : y.num = GaussInt.zero
  · simp [hy]
  · have hden : GaussInt.mul y.num x.den ≠ GaussInt.zero := by
      intro h
      rcases (GaussInt.mul_eq_zero.mp h) with h | h
      · exact hy h
      · exact x.den_ne h
    simp [hy, hden, vPi_mul y.num x.den hy x.den_ne, vPi_mul x.den y.den x.den_ne y.den_ne]
    omega

theorem vRat?_gadd_comm (x y : GRat) : vRat? (gadd x y) = vRat? (gadd y x) := by
  have hnum : (gadd x y).num = (gadd y x).num := by
    simp [gadd, GaussInt.add_comm]
  have hden : (gadd x y).den = (gadd y x).den := by
    simp [gadd, GaussInt.mul_comm]
  simp [vRat?, hnum, hden]

/-- `v_π(x) > k`, with `none` the zero element. -/
def ValAbove (x : GRat) (k : Int) : Prop :=
  ∀ a, vRat? x = some a → k < a

theorem valAbove_of_none (x : GRat) (k : Int) (h : vRat? x = none) : ValAbove x k := by
  intro a ha
  rw [h] at ha
  cases ha

theorem v_gadd_ge_eq (x y : GRat) {a : Int} (hx : vRat? x = some a) (hy : vRat? y = some a) :
    vRat? (gadd x y) = none ∨ ∃ c, vRat? (gadd x y) = some c ∧ a ≤ c := by
  have hx0 : x.num ≠ GaussInt.zero := by intro h; simp [vRat?, h] at hx
  have hy0 : y.num ≠ GaussInt.zero := by intro h; simp [vRat?, h] at hy
  have hxa : (vPi x.num : Int) - (vPi x.den : Int) = a := by
    simp [vRat?, hx0] at hx
    exact hx
  have hyb : (vPi y.num : Int) - (vPi y.den : Int) = a := by
    simp [vRat?, hy0] at hy
    exact hy
  have hnx0 : GaussInt.mul x.num y.den ≠ GaussInt.zero := by
    intro h
    rcases (GaussInt.mul_eq_zero.mp h) with h | h
    · exact hx0 h
    · exact y.den_ne h
  have hny0 : GaussInt.mul y.num x.den ≠ GaussInt.zero := by
    intro h
    rcases (GaussInt.mul_eq_zero.mp h) with h | h
    · exact hy0 h
    · exact x.den_ne h
  have hvx := vPi_mul x.num y.den hx0 y.den_ne
  have hvy := vPi_mul y.num x.den hy0 x.den_ne
  have hvd := vPi_mul x.den y.den x.den_ne y.den_ne
  have hveq : vPi (GaussInt.mul x.num y.den) = vPi (GaussInt.mul y.num x.den) := by
    omega
  have hge := vPi_add_ge (GaussInt.mul x.num y.den) (GaussInt.mul y.num x.den) hnx0 hny0
  rcases hge with h0 | ⟨hne, hmin⟩
  · left
    simp [gadd, vRat?, h0]
  · right
    have hv : vRat? (gadd x y) =
        some ((vPi (GaussInt.add (GaussInt.mul x.num y.den) (GaussInt.mul y.num x.den)) : Int) -
          (vPi (GaussInt.mul x.den y.den) : Int)) := by
      simp [gadd, vRat?, hne]
    refine ⟨_, hv, ?_⟩
    have hmin' : vPi (GaussInt.mul y.num x.den) ≤
        vPi (GaussInt.add (GaussInt.mul x.num y.den) (GaussInt.mul y.num x.den)) := by
      rw [hveq] at hmin
      have hself : min (vPi (GaussInt.mul y.num x.den)) (vPi (GaussInt.mul y.num x.den)) =
          vPi (GaussInt.mul y.num x.den) := by
        rw [Nat.min_def, ite_eq_left (Nat.le_refl _)]
      rw [hself] at hmin
      exact hmin
    have hay : (vPi (GaussInt.mul y.num x.den) : Int) -
        (vPi (GaussInt.mul x.den y.den) : Int) = a := by
      rw [hvy, hvd]
      omega
    omega

theorem valAbove_gadd (x y : GRat) (k : Int) (hx : ValAbove x k) (hy : ValAbove y k) :
    ValAbove (gadd x y) k := by
  intro c hc
  match hxv : vRat? x with
  | none =>
    have hval := v_gadd_zero_left x y (num_eq_zero_of_vRat?_none x hxv)
    rw [hval] at hc
    exact hy c hc
  | some a =>
    match hyv : vRat? y with
    | none =>
      have hval := v_gadd_zero_right x y (num_eq_zero_of_vRat?_none y hyv)
      rw [hval] at hc
      exact hx c hc
    | some b =>
      by_cases hlt : a < b
      · have hv := v_gadd_lt x y hxv hyv hlt
        rw [hv] at hc
        injection hc with heq
        have ha : k < a := hx a hxv
        omega
      · by_cases hgt : b < a
        · have hv := v_gadd_lt y x hyv hxv hgt
          rw [vRat?_gadd_comm y x] at hv
          rw [hv] at hc
          injection hc with heq
          have hb : k < b := hy b hyv
          omega
        · have heqa : a = b := by omega
          rw [heqa] at hxv
          rcases v_gadd_ge_eq x y hxv hyv with hnone | ⟨d, hd, hle⟩
          · rw [hnone] at hc
            cases hc
          · rw [hd] at hc
            injection hc with heq
            have hb : k < b := hy b hyv
            omega

theorem v_gadd_left_min (x y : GRat) {a : Int} (hx : vRat? x = some a) (hy : ValAbove y a) :
    vRat? (gadd x y) = some a := by
  match hyv : vRat? y with
  | none =>
    rw [v_gadd_zero_right x y (num_eq_zero_of_vRat?_none y hyv), hx]
  | some b =>
    exact v_gadd_lt x y hx hyv (hy b hyv)

theorem v_gadd_right_min (x y : GRat) {b : Int} (hy : vRat? y = some b) (hx : ValAbove x b) :
    vRat? (gadd x y) = some b := by
  match hxv : vRat? x with
  | none =>
    rw [v_gadd_zero_left x y (num_eq_zero_of_vRat?_none x hxv), hy]
  | some a =>
    have hv := v_gadd_lt y x hy hxv (hx a hxv)
    rw [vRat?_gadd_comm y x] at hv
    exact hv

theorem not_valGe_of_eq {x : GRat} {n k : Int} (hk : vRat? x = some k) (hlt : k < n) :
    ¬ valGe x n := by
  intro h
  simp [valGe, hk] at h
  omega

def twoG : GRat := gOf (GaussInt.ofInt 2)

def threeG : GRat := gOf (GaussInt.ofInt 3)

theorem v_twoG : vRat? twoG = some 2 := by
  simpa [twoG, vPi_ofInt_two] using
    vRat?_gOf_ne (GaussInt.ofInt 2) (by decide)

theorem v_threeG : vRat? threeG = some 0 := by
  simpa [threeG, vPi_ofInt_three] using
    vRat?_gOf_ne (GaussInt.ofInt 3) (by decide)

def a1Slot (s : GRat) : GRat := gmul twoG s

def a3Slot (t : GRat) : GRat := gmul twoG t

def a2Orig (E : FreyCurve4413) : GRat := gOf (GaussInt.ofInt E.A_int)

def a4Orig (E : FreyCurve4413) : GRat := gOf ⟨E.B_re, E.B_im⟩

def term3r (r : GRat) : GRat := gmul threeG r

def termSsq (s : GRat) : GRat := gneg (gmul s s)

def term2rA2 (E : FreyCurve4413) (r : GRat) : GRat :=
  gmul (gmul twoG r) (a2Orig E)

def term3rr (r : GRat) : GRat := gmul threeG (gmul r r)

def term2st (s t : GRat) : GRat := gneg (gmul (gmul twoG s) t)

def a2Slot (E : FreyCurve4413) (r s : GRat) : GRat :=
  gadd (gadd (a2Orig E) (term3r r)) (termSsq s)

def a4Slot (E : FreyCurve4413) (r s t : GRat) : GRat :=
  gadd (gadd (gadd (a4Orig E) (term2rA2 E r)) (term3rr r)) (term2st s t)

theorem v_a4Orig (E : FreyCurve4413) (hodd : E.c.natAbs % 2 = 1) :
    vRat? (a4Orig E) = some 2 := by
  have hv := vPi_a4 E hodd
  have hne : ⟨E.B_re, E.B_im⟩ ≠ GaussInt.zero := by
    intro h
    rw [h, vPi_zero] at hv
    omega
  simpa [a4Orig, hv] using vRat?_gOf_ne ⟨E.B_re, E.B_im⟩ hne

theorem valAbove_a4Orig (E : FreyCurve4413) (hodd : E.c.natAbs % 2 = 1) (k : Int)
    (hk : k < 2) : ValAbove (a4Orig E) k := by
  intro c hc
  rw [v_a4Orig E hodd] at hc
  injection hc with heq
  omega

theorem valAbove_a2Orig (E : FreyCurve4413) (k : Int) (hk : k < 4) :
    ValAbove (a2Orig E) k := by
  intro c hc
  by_cases h0 : GaussInt.ofInt E.A_int = GaussInt.zero
  · rw [a2Orig, vRat?_gOf_zero _ h0] at hc
    cases hc
  · have hge := vPi_a2_ge E h0
    rw [a2Orig, vRat?_gOf_ne _ h0] at hc
    injection hc with heq
    omega

theorem v_term3r_none (r : GRat) (hr : vRat? r = none) : vRat? (term3r r) = none := by
  simp [term3r, gmul, vRat?, num_eq_zero_of_vRat?_none r hr]

theorem v_term3r_some (r : GRat) {a : Int} (hr : vRat? r = some a) :
    vRat? (term3r r) = some a := by
  have h := v_gmul threeG r v_threeG hr
  rw [Int.zero_add] at h
  simpa [term3r] using h

theorem v_termSsq_none (s : GRat) (hs : vRat? s = none) : vRat? (termSsq s) = none := by
  simp [termSsq, gneg, gmul, vRat?, num_eq_zero_of_vRat?_none s hs, GaussInt.mul_zero]

theorem v_termSsq_some (s : GRat) {a : Int} (hs : vRat? s = some a) :
    vRat? (termSsq s) = some (a + a) := by
  rw [termSsq, v_gneg]
  exact v_gmul s s hs hs

theorem v_term3rr_none (r : GRat) (hr : r.num = GaussInt.zero) : vRat? (term3rr r) = none := by
  simp [term3rr, gmul, vRat?, hr, GaussInt.mul_zero]

theorem v_term3rr_some (r : GRat) {a : Int} (hr : vRat? r = some a) :
    vRat? (term3rr r) = some (a + a) := by
  have hs := v_gmul r r hr hr
  have h := v_gmul threeG (gmul r r) v_threeG hs
  rw [Int.zero_add] at h
  simpa [term3rr] using h

theorem v_term2st_none_s (s t : GRat) (hs : s.num = GaussInt.zero) :
    vRat? (term2st s t) = none := by
  simp [term2st, gneg, gmul, vRat?, hs, GaussInt.mul_zero]

theorem v_term2st_none_t (s t : GRat) (ht : t.num = GaussInt.zero) :
    vRat? (term2st s t) = none := by
  simp [term2st, gneg, gmul, vRat?, ht, GaussInt.mul_zero]

theorem v_term2st_some (s t : GRat) {vs vt : Int}
    (hs : vRat? s = some vs) (ht : vRat? t = some vt) :
    vRat? (term2st s t) = some ((2 + vs) + vt) := by
  have hs2 := v_gmul twoG s v_twoG hs
  rw [term2st, v_gneg]
  exact v_gmul (gmul twoG s) t hs2 ht

theorem v_term2rA2_none (E : FreyCurve4413) (r : GRat) (hr : r.num = GaussInt.zero) :
    vRat? (term2rA2 E r) = none := by
  simp [term2rA2, gmul, vRat?, hr, GaussInt.mul_zero]

theorem valAbove_term2rA2 (E : FreyCurve4413) (r : GRat) {vr : Int}
    (hr : vRat? r = some vr) (k : Int) (hk : k < (2 + vr) + 4) :
    ValAbove (term2rA2 E r) k := by
  intro c hc
  by_cases h0 : GaussInt.ofInt E.A_int = GaussInt.zero
  · have hnone : vRat? (term2rA2 E r) = none := by
      simp [term2rA2, a2Orig, gOf, gmul, vRat?, h0, GaussInt.mul_zero]
    rw [hnone] at hc
    cases hc
  · have hge := vPi_a2_ge E h0
    have hr2 := v_gmul twoG r v_twoG hr
    have hva := vRat?_gOf_ne _ h0
    have hprod := v_gmul (gmul twoG r) (gOf (GaussInt.ofInt E.A_int)) hr2 hva
    rw [term2rA2, a2Orig, hprod] at hc
    injection hc with heq
    omega

theorem valAbove_term2st (s t : GRat) (k : Int)
    (hs : vRat? s = none ∨ ∃ vs, vRat? s = some vs ∧ (0 : Int) ≤ vs)
    (ht : vRat? t = none ∨ ∃ vt, vRat? t = some vt ∧ (1 : Int) ≤ vt)
    (hk : k < 3) : ValAbove (term2st s t) k := by
  rcases hs with hs | ⟨vs, hsv, hvs⟩
  · exact valAbove_of_none _ _ (v_term2st_none_s s t (num_eq_zero_of_vRat?_none s hs))
  · rcases ht with ht | ⟨vt, hvt, hvt1⟩
    · exact valAbove_of_none _ _ (v_term2st_none_t s t (num_eq_zero_of_vRat?_none t ht))
    · have hv := v_term2st_some s t hsv hvt
      intro c hc
      rw [hv] at hc
      injection hc with heq
      omega

def gpow (x : GRat) : Nat → GRat
  | 0 => gOf GaussInt.one
  | n + 1 => gmul x (gpow x n)

theorem gpow_num_ne (x : GRat) (n : Nat) (hx : x.num ≠ GaussInt.zero) :
    (gpow x n).num ≠ GaussInt.zero := by
  induction n with
  | zero =>
    simp [gpow, gOf, GaussInt.one, GaussInt.zero]
  | succ n ih =>
    intro h
    simp [gpow, gmul] at h
    rcases (GaussInt.mul_eq_zero.mp h) with h | h
    · exact hx h
    · exact ih h

theorem v_gpow (x : GRat) {a : Int} (hx : vRat? x = some a) (n : Nat) :
    vRat? (gpow x n) = some ((n : Int) * a) := by
  induction n with
  | zero =>
    simp [gpow, vRat?, gOf, GaussInt.one, GaussInt.zero, Int.zero_mul]
  | succ n ih =>
    have h := v_gmul x (gpow x n) hx ih
    have hcast : ((n + 1 : Nat) : Int) = (n : Int) + 1 := by simp
    have hcoeff : a + (n : Int) * a = ((n + 1 : Nat) : Int) * a := by
      rw [hcast, Int.add_mul, Int.one_mul, Int.add_comm]
    rw [hcoeff] at h
    simpa [gpow] using h

def ginv (x : GRat) (h : x.num ≠ GaussInt.zero) : GRat where
  num := x.den
  den := x.num
  den_ne := h

theorem v_ginv (x : GRat) {a : Int} (hx : vRat? x = some a) (h : x.num ≠ GaussInt.zero) :
    vRat? (ginv x h) = some (-a) := by
  simp [vRat?, ginv, x.den_ne]
  have hxa : (vPi x.num : Int) - (vPi x.den : Int) = a := by
    simp [vRat?, h] at hx
    exact hx
  omega

def deltaSlot (E : FreyCurve4413) (u : GRat) (hu : (gpow u 12).num ≠ GaussInt.zero) : GRat :=
  gmul (gOf (deltaGauss E)) (ginv (gpow u 12) hu)

theorem v_deltaSlot (E : FreyCurve4413) (hodd : E.c.natAbs % 2 = 1) (u : GRat) {a : Int}
    (hu : u.num ≠ GaussInt.zero) (hvu : vRat? u = some a) :
    vRat? (deltaSlot E u (gpow_num_ne u 12 hu)) =
      some (18 + -(((12 : Nat) : Int) * a)) := by
  have hdne : deltaGauss E ≠ GaussInt.zero := by
    intro h
    have hv := vPi_delta E hodd
    rw [h, vPi_zero] at hv
    omega
  have hd := vRat?_gOf_ne (deltaGauss E) hdne
  rw [vPi_delta E hodd] at hd
  have hpow := v_gpow u hvu 12
  have hinv := v_ginv (gpow u 12) hpow (gpow_num_ne u 12 hu)
  simpa [deltaSlot] using v_gmul (gOf (deltaGauss E)) _ hd hinv

theorem deltaSlot_fails_of_val_ge_two (E : FreyCurve4413) (hodd : E.c.natAbs % 2 = 1)
    (u : GRat) {a : Int} (hu : u.num ≠ GaussInt.zero) (hvu : vRat? u = some a)
    (ha : 2 ≤ a) :
    ¬ valGe (deltaSlot E u (gpow_num_ne u 12 hu)) 0 := by
  have hv := v_deltaSlot E hodd u hu hvu
  apply not_valGe_of_eq hv
  omega

theorem a3_fails_of_nonpos (t : GRat) {vt : Int} (ht : vRat? t = some vt) (hv : vt ≤ 0) :
    ¬ valGe (a3Slot t) 3 := by
  have hv3 := v_gmul twoG t v_twoG ht
  exact not_valGe_of_eq (by simpa [a3Slot] using hv3) (by omega)

theorem a1_fails_of_le_neg_two (s : GRat) {vs : Int} (hs : vRat? s = some vs) (hv : vs ≤ -2) :
    ¬ valGe (a1Slot s) 1 := by
  have hv1 := v_gmul twoG s v_twoG hs
  exact not_valGe_of_eq (by simpa [a1Slot] using hv1) (by omega)

theorem a4_fails_s_neg_one_r_neg_two (E : FreyCurve4413) (hodd : E.c.natAbs % 2 = 1)
    (r s t : GRat) (hr : vRat? r = some (-2)) (hs : vRat? s = some (-1))
    (ht : vRat? t = none ∨ ∃ vt, vRat? t = some vt ∧ 1 ≤ vt) :
    ¬ valGe (a4Slot E r s t) 4 := by
  have hrr := v_term3rr_some r hr
  have hA4 : ValAbove (a4Orig E) ((-2) + (-2)) :=
    valAbove_a4Orig E hodd _ (by omega)
  have hR : ValAbove (term2rA2 E r) ((-2) + (-2)) :=
    valAbove_term2rA2 E r hr _ (by omega)
  have hleft := valAbove_gadd (a4Orig E) (term2rA2 E r) _ hA4 hR
  have hmid := v_gadd_right_min (gadd (a4Orig E) (term2rA2 E r)) (term3rr r) hrr hleft
  have hST : ValAbove (term2st s t) ((-2) + (-2)) := by
    rcases ht with ht | ⟨vt, hvt, hge⟩
    · exact valAbove_of_none _ _
        (v_term2st_none_t s t (num_eq_zero_of_vRat?_none t ht))
    · have hvst := v_term2st_some s t hs hvt
      intro c hc
      rw [hvst] at hc
      injection hc with heq
      omega
  have hfin :=
    v_gadd_left_min (gadd (gadd (a4Orig E) (term2rA2 E r)) (term3rr r)) (term2st s t) hmid hST
  exact not_valGe_of_eq hfin (by omega)

theorem a2_fails_s_neg_one (E : FreyCurve4413) (r s : GRat) (hs : vRat? s = some (-1))
    (hr : vRat? r = none ∨ ∃ vr, vRat? r = some vr ∧ vr ≠ -2) :
    ¬ valGe (a2Slot E r s) 2 := by
  have hss := v_termSsq_some s hs
  rcases hr with hr | ⟨vr, hvr, hne⟩
  · have h3 := v_term3r_none r hr
    have ha := valAbove_a2Orig E ((-1) + (-1)) (by omega)
    have h3a := valAbove_of_none (term3r r) ((-1) + (-1)) h3
    have hsum := valAbove_gadd (a2Orig E) (term3r r) ((-1) + (-1)) ha h3a
    have hfin := v_gadd_right_min (gadd (a2Orig E) (term3r r)) (termSsq s) hss hsum
    exact not_valGe_of_eq hfin (by omega)
  · by_cases hlt : vr < -2
    · have h3 := v_term3r_some r hvr
      have ha := valAbove_a2Orig E vr (by omega)
      have hmid := v_gadd_right_min (a2Orig E) (term3r r) h3 ha
      have hssA : ValAbove (termSsq s) vr := by
        intro c hc
        rw [hss] at hc
        injection hc with heq
        omega
      have hfin := v_gadd_left_min (gadd (a2Orig E) (term3r r)) (termSsq s) hmid hssA
      exact not_valGe_of_eq hfin (by omega)
    · have hgt : -2 < vr := by omega
      have h3 := v_term3r_some r hvr
      have ha := valAbove_a2Orig E ((-1) + (-1)) (by omega)
      have h3a : ValAbove (term3r r) ((-1) + (-1)) := by
        intro c hc
        rw [h3] at hc
        injection hc with heq
        omega
      have hsum := valAbove_gadd (a2Orig E) (term3r r) ((-1) + (-1)) ha h3a
      have hfin := v_gadd_right_min (gadd (a2Orig E) (term3r r)) (termSsq s) hss hsum
      exact not_valGe_of_eq hfin (by omega)

theorem a2_fails_r_le_neg_one (E : FreyCurve4413) (r s : GRat) {vr : Int}
    (hr : vRat? r = some vr) (hvr : vr ≤ -1)
    (hs : vRat? s = none ∨ ∃ vs, vRat? s = some vs ∧ (0 : Int) ≤ vs) :
    ¬ valGe (a2Slot E r s) 2 := by
  have h3 := v_term3r_some r hr
  have ha := valAbove_a2Orig E vr (by omega)
  have hmid := v_gadd_right_min (a2Orig E) (term3r r) h3 ha
  have hss : ValAbove (termSsq s) vr := by
    rcases hs with hs | ⟨vs, hsv, hvs⟩
    · exact valAbove_of_none _ _ (v_termSsq_none s hs)
    · have hsq := v_termSsq_some s hsv
      intro c hc
      rw [hsq] at hc
      injection hc with heq
      omega
  have hfin := v_gadd_left_min (gadd (a2Orig E) (term3r r)) (termSsq s) hmid hss
  exact not_valGe_of_eq hfin (by omega)

theorem a2_fails_r_one (E : FreyCurve4413) (r s : GRat) (hr : vRat? r = some 1)
    (hs : vRat? s = none ∨ ∃ vs, vRat? s = some vs ∧ (0 : Int) ≤ vs) :
    ¬ valGe (a2Slot E r s) 2 := by
  rcases hs with hs | ⟨vs, hsv, hvs⟩
  · have h3 := v_term3r_some r hr
    have ha := valAbove_a2Orig E 1 (by omega)
    have hmid := v_gadd_right_min (a2Orig E) (term3r r) h3 ha
    have hss := valAbove_of_none (termSsq s) 1 (v_termSsq_none s hs)
    have hfin := v_gadd_left_min (gadd (a2Orig E) (term3r r)) (termSsq s) hmid hss
    exact not_valGe_of_eq hfin (by omega)
  · by_cases h0 : vs = 0
    · have hsq := v_termSsq_some s hsv
      rw [h0] at hsq
      have ha := valAbove_a2Orig E (0 + 0) (by omega)
      have h3 : ValAbove (term3r r) (0 + 0) := by
        intro c hc
        rw [v_term3r_some r hr] at hc
        injection hc with heq
        omega
      have hsum := valAbove_gadd (a2Orig E) (term3r r) (0 + 0) ha h3
      have hfin := v_gadd_right_min (gadd (a2Orig E) (term3r r)) (termSsq s) hsq hsum
      exact not_valGe_of_eq hfin (by omega)
    · have hvs1 : 1 ≤ vs := by omega
      have h3 := v_term3r_some r hr
      have ha := valAbove_a2Orig E 1 (by omega)
      have hmid := v_gadd_right_min (a2Orig E) (term3r r) h3 ha
      have hss : ValAbove (termSsq s) 1 := by
        have hsq := v_termSsq_some s hsv
        intro c hc
        rw [hsq] at hc
        injection hc with heq
        omega
      have hfin := v_gadd_left_min (gadd (a2Orig E) (term3r r)) (termSsq s) hmid hss
      exact not_valGe_of_eq hfin (by omega)

theorem a4_fails_r_zero (E : FreyCurve4413) (hodd : E.c.natAbs % 2 = 1) (r s t : GRat)
    (hr : vRat? r = some 0)
    (hs : vRat? s = none ∨ ∃ vs, vRat? s = some vs ∧ (0 : Int) ≤ vs)
    (ht : vRat? t = none ∨ ∃ vt, vRat? t = some vt ∧ (1 : Int) ≤ vt) :
    ¬ valGe (a4Slot E r s t) 4 := by
  have hrr := v_term3rr_some r hr
  have hA4 := valAbove_a4Orig E hodd (0 + 0) (by omega)
  have hR := valAbove_term2rA2 E r hr (0 + 0) (by omega)
  have hleft := valAbove_gadd (a4Orig E) (term2rA2 E r) _ hA4 hR
  have hmid := v_gadd_right_min (gadd (a4Orig E) (term2rA2 E r)) (term3rr r) hrr hleft
  have hST := valAbove_term2st s t (0 + 0) hs ht (by omega)
  have hfin :=
    v_gadd_left_min (gadd (gadd (a4Orig E) (term2rA2 E r)) (term3rr r)) (term2st s t) hmid hST
  exact not_valGe_of_eq hfin (by omega)

theorem a4_fails_r_high (E : FreyCurve4413) (hodd : E.c.natAbs % 2 = 1) (r s t : GRat)
    (hr : vRat? r = none ∨ ∃ vr, vRat? r = some vr ∧ 2 ≤ vr)
    (hs : vRat? s = none ∨ ∃ vs, vRat? s = some vs ∧ (0 : Int) ≤ vs)
    (ht : vRat? t = none ∨ ∃ vt, vRat? t = some vt ∧ (1 : Int) ≤ vt) :
    ¬ valGe (a4Slot E r s t) 4 := by
  have hA4 := v_a4Orig E hodd
  have hR : ValAbove (term2rA2 E r) 2 := by
    rcases hr with hr | ⟨vr, hvr, hge⟩
    · exact valAbove_of_none _ _ (v_term2rA2_none E r (num_eq_zero_of_vRat?_none r hr))
    · exact valAbove_term2rA2 E r hvr 2 (by omega)
  have hRR : ValAbove (term3rr r) 2 := by
    rcases hr with hr | ⟨vr, hvr, hge⟩
    · exact valAbove_of_none _ _ (v_term3rr_none r (num_eq_zero_of_vRat?_none r hr))
    · have hv := v_term3rr_some r hvr
      intro c hc
      rw [hv] at hc
      injection hc with heq
      omega
  have hST := valAbove_term2st s t 2 hs ht (by omega)
  have h1 := v_gadd_left_min (a4Orig E) (term2rA2 E r) hA4 hR
  have h2 := v_gadd_left_min (gadd (a4Orig E) (term2rA2 E r)) (term3rr r) h1 hRR
  have hfin :=
    v_gadd_left_min (gadd (gadd (a4Orig E) (term2rA2 E r)) (term3rr r)) (term2st s t) h2 hST
  exact not_valGe_of_eq hfin (by decide)

/-- The `a₁`, `a₂`, `a₃`, `a₄`, and `Δ'` integrality conditions after the change
of variables with denominator `u`. An integral model would also have to satisfy
the `a₆` bound. Failure of this conjunction already blocks that model.
-/
def integralSlotsAtPi (E : FreyCurve4413) (u r s t : GRat) (hu : u.num ≠ GaussInt.zero) :
    Prop :=
  valGe (a1Slot s) ((vPi u.num : Int) - (vPi u.den : Int)) ∧
    valGe (a2Slot E r s) (2 * ((vPi u.num : Int) - (vPi u.den : Int))) ∧
    valGe (a3Slot t) (3 * ((vPi u.num : Int) - (vPi u.den : Int))) ∧
    valGe (a4Slot E r s t) (4 * ((vPi u.num : Int) - (vPi u.den : Int))) ∧
    valGe (deltaSlot E u (gpow_num_ne u 12 hu)) 0

/-- `v_π(Δ') < v_π(Δ)` for the scaled discriminant. -/
def smallerDeltaAtPi (E : FreyCurve4413) (u : GRat) (hu : u.num ≠ GaussInt.zero) : Prop :=
  ∃ k d, vRat? (deltaSlot E u (gpow_num_ne u 12 hu)) = some k ∧
    vRat? (gOf (deltaGauss E)) = some d ∧ k < d

/-- No change of variables with `v_π(u) ≥ 1` is integral at `π` and has a
strictly smaller discriminant.

For `v_π(u) ≥ 1` the scaling `Δ' = u⁻¹² Δ` lowers the valuation whenever `Δ'`
is integral, so the content is that no such change is integral. `MinimalModelAt2`
is this predicate. For odd `c` it is `qiLocalMinimalAtPi_of_c_odd`.
`not_minimal_even_c_open` is the curve `(8, 8, 2)`. The conductor exponent
does not follow.
-/
def qiLocalMinimalAtPi (E : FreyCurve4413) : Prop :=
  ∀ (u r s t : GRat) (hu : u.num ≠ GaussInt.zero),
    (1 : Int) ≤ (vPi u.num : Int) - (vPi u.den : Int) →
      ¬ (integralSlotsAtPi E u r s t hu ∧ smallerDeltaAtPi E u hu)

/-- For odd `c`, no `u, r, s, t` in `ℚ(i)` with `v_π(u) ≥ 1` makes the changed
model integral at `π`.

`v_π(a₂) ≥ 4`, so the `a₂` slot does not force `v_π(s) ≥ 0`: `v_π(s) = -1`
is a separate case. A denominator coprime to `π`, such as `3`, is not an
element of `ℤ[i]`, so `no_integral_u_pi_of_c_odd` does not cover this
statement. `v_π(u) ≥ 2` makes `v_π(Δ') = 18 - 12 v_π(u) < 0`. `v_π(u) = 1`
fails `a₁`, `a₂`, `a₃`, or `a₄`. For odd `c` this is `MinimalModelAt2`. It is
not the conductor exponent.
-/
theorem no_qi_integral_change_of_c_odd (E : FreyCurve4413) (hodd : E.c.natAbs % 2 = 1)
    (u r s t : GRat) (hu : u.num ≠ GaussInt.zero)
    (hv : (1 : Int) ≤ (vPi u.num : Int) - (vPi u.den : Int)) :
    ¬ integralSlotsAtPi E u r s t hu := by
  unfold integralSlotsAtPi
  intro hbad
  let vu : Int := (vPi u.num : Int) - (vPi u.den : Int)
  have hvuEq : vu = (vPi u.num : Int) - (vPi u.den : Int) := rfl
  rw [← hvuEq] at hbad
  rcases hbad with ⟨h1, h2, h3, h4, hΔ⟩
  have hsome : vRat? u = some vu := by
    simp [vRat?, hu, hvuEq]
  by_cases h2le : 2 ≤ vu
  · exact deltaSlot_fails_of_val_ge_two E hodd u hu hsome h2le hΔ
  · have hvu1 : vu = 1 := by omega
    have h1' : valGe (a1Slot s) 1 := by
      rw [hvu1] at h1
      exact h1
    have h2' : valGe (a2Slot E r s) 2 := by
      rw [hvu1] at h2
      simpa [Int.mul_one] using h2
    have h3' : valGe (a3Slot t) 3 := by
      rw [hvu1] at h3
      simpa [Int.mul_one] using h3
    have h4' : valGe (a4Slot E r s t) 4 := by
      rw [hvu1] at h4
      simpa [Int.mul_one] using h4
    have hT : vRat? t = none ∨ ∃ vt, vRat? t = some vt ∧ 1 ≤ vt := by
      by_cases ht0 : t.num = GaussInt.zero
      · exact Or.inl (by simp [vRat?, ht0])
      · right
        refine ⟨(vPi t.num : Int) - (vPi t.den : Int), ?_, ?_⟩
        · simp [vRat?, ht0]
        · by_cases hle : (vPi t.num : Int) - (vPi t.den : Int) ≤ 0
          · exact False.elim (a3_fails_of_nonpos t (by simp [vRat?, ht0]) hle h3')
          · omega
    have hS : vRat? s = none ∨ ∃ vs, vRat? s = some vs ∧ -1 ≤ vs := by
      by_cases hs0 : s.num = GaussInt.zero
      · exact Or.inl (by simp [vRat?, hs0])
      · right
        refine ⟨(vPi s.num : Int) - (vPi s.den : Int), ?_, ?_⟩
        · simp [vRat?, hs0]
        · by_cases hle : (vPi s.num : Int) - (vPi s.den : Int) ≤ -2
          · exact False.elim (a1_fails_of_le_neg_two s (by simp [vRat?, hs0]) hle h1')
          · omega
    have hSnonnegOrNeg :
        vRat? s = none ∨
          (∃ vs, vRat? s = some vs ∧ 0 ≤ vs) ∨
            (∃ vs, vRat? s = some vs ∧ vs = -1) := by
      rcases hS with hs | ⟨vs, hsv, hge⟩
      · exact Or.inl hs
      · by_cases hneg : vs = -1
        · exact Or.inr (Or.inr ⟨vs, hsv, hneg⟩)
        · exact Or.inr (Or.inl ⟨vs, hsv, by omega⟩)
    rcases hSnonnegOrNeg with hs | hrest
    · have hs' : vRat? s = none ∨ ∃ vs, vRat? s = some vs ∧ (0 : Int) ≤ vs := Or.inl hs
      by_cases hr0 : r.num = GaussInt.zero
      · exact a4_fails_r_high E hodd r s t (Or.inl (by simp [vRat?, hr0])) hs' hT h4'
      · let vr : Int := (vPi r.num : Int) - (vPi r.den : Int)
        have hvr : vRat? r = some vr := by simp [vRat?, hr0, vr]
        by_cases hrneg : vr ≤ -1
        · exact a2_fails_r_le_neg_one E r s hvr hrneg hs' h2'
        · by_cases hrzero : vr = 0
          · exact a4_fails_r_zero E hodd r s t (by rw [hrzero] at hvr; exact hvr) hs' hT h4'
          · by_cases hrone : vr = 1
            · exact a2_fails_r_one E r s (by rw [hrone] at hvr; exact hvr) hs' h2'
            · have hrge : 2 ≤ vr := by omega
              exact a4_fails_r_high E hodd r s t (Or.inr ⟨vr, hvr, hrge⟩) hs' hT h4'
    · rcases hrest with ⟨vs, hsv, hvs⟩ | ⟨vs, hsv, hneg⟩
      · have hs' : vRat? s = none ∨ ∃ vs, vRat? s = some vs ∧ (0 : Int) ≤ vs :=
          Or.inr ⟨vs, hsv, hvs⟩
        by_cases hr0 : r.num = GaussInt.zero
        · exact a4_fails_r_high E hodd r s t (Or.inl (by simp [vRat?, hr0])) hs' hT h4'
        · let vr : Int := (vPi r.num : Int) - (vPi r.den : Int)
          have hvr : vRat? r = some vr := by simp [vRat?, hr0, vr]
          by_cases hrneg : vr ≤ -1
          · exact a2_fails_r_le_neg_one E r s hvr hrneg hs' h2'
          · by_cases hrzero : vr = 0
            · exact a4_fails_r_zero E hodd r s t (by rw [hrzero] at hvr; exact hvr) hs' hT h4'
            · by_cases hrone : vr = 1
              · exact a2_fails_r_one E r s (by rw [hrone] at hvr; exact hvr) hs' h2'
              · have hrge : 2 ≤ vr := by omega
                exact a4_fails_r_high E hodd r s t (Or.inr ⟨vr, hvr, hrge⟩) hs' hT h4'
      · rw [hneg] at hsv
        by_cases hr0 : r.num = GaussInt.zero
        · exact a2_fails_s_neg_one E r s hsv (Or.inl (by simp [vRat?, hr0])) h2'
        · let vr : Int := (vPi r.num : Int) - (vPi r.den : Int)
          have hvr : vRat? r = some vr := by simp [vRat?, hr0, vr]
          by_cases hrm2 : vr = -2
          · exact a4_fails_s_neg_one_r_neg_two E hodd r s t
              (by rw [hrm2] at hvr; exact hvr) hsv hT h4'
          · exact a2_fails_s_neg_one E r s hsv (Or.inr ⟨vr, hvr, hrm2⟩) h2'

theorem qiLocalMinimalAtPi_of_c_odd (E : FreyCurve4413) (hodd : E.c.natAbs % 2 = 1) :
    qiLocalMinimalAtPi E := by
  intro u r s t hu hv hboth
  exact no_qi_integral_change_of_c_odd E hodd u r s t hu hv hboth.1

/-- The same local condition for even `c`.

False. `not_minimal_even_c_open` is the witness `(8, 8, 2)`. The odd-`c`
case split uses `v_π(a₄) = 2` and `v_π(Δ) = 18`, and both fail when `c` is
even. `v_π(s) = -1` is already a case of `no_qi_integral_change_of_c_odd`.
-/
def minimal_even_c_open : Prop :=
  ∀ E : FreyCurve4413, E.c.natAbs % 2 = 0 → qiLocalMinimalAtPi E

/-- `8⁴ + 8⁴ = 2¹³`. Both `a` and `b` are even, and `c` is even. -/
def curve_8_8_2 : FreyCurve4413 := mk' 8 8 2 (by decide)

theorem vPi_a2_8_8_2 : vPi (GaussInt.ofInt curve_8_8_2.A_int) = 10 := by
  have h32 : (2 : ℤ) ^ 5 = 32 := by decide
  have hA : curve_8_8_2.A_int = 32 := rfl
  rcases p2_valuation_of_two_pow 5 with ⟨u, hu, hnu⟩
  rw [h32] at hu
  exact vPi_of_shape (GaussInt.ofInt curve_8_8_2.A_int) u 10 hnu
    (by rw [hA]; exact hu)

theorem vPi_a4_8_8_2 : vPi ⟨curve_8_8_2.B_re, curve_8_8_2.B_im⟩ = 15 := by
  have h128 : (2 : ℤ) ^ 7 = 128 := by decide
  have hB : ⟨curve_8_8_2.B_re, curve_8_8_2.B_im⟩ =
      GaussInt.mul (GaussInt.ofInt 128) pi := by
    simp [curve_8_8_2, mk', pi, GaussInt.mul, GaussInt.ofInt]
  rcases p2_valuation_of_two_pow 7 with ⟨u, hu, hnu⟩
  rw [h128] at hu
  have hprod : GaussInt.mul u (piPow 15) =
      GaussInt.mul (GaussInt.ofInt 128) pi := by
    have hpow : piPow 15 = GaussInt.mul (piPow 14) pi := by
      rw [show (15 : ℕ) = 14 + 1 by decide]
      exact piPow_succ_right 14
    calc
      GaussInt.mul u (piPow 15)
          = GaussInt.mul u (GaussInt.mul (piPow 14) pi) := by rw [hpow]
      _ = GaussInt.mul (GaussInt.mul u (piPow 14)) pi := by
          rw [← GaussInt.mul_assoc]
      _ = GaussInt.mul (GaussInt.ofInt 128) pi := by rw [hu]
  exact vPi_of_shape _ u 15 hnu (hprod.trans hB)

theorem vPi_delta_8_8_2 : vPi (deltaGauss curve_8_8_2) = 57 := by
  have hΔ : deltaGauss curve_8_8_2 =
      GaussInt.mul (GaussInt.ofInt ((2 : ℤ) ^ 28)) pi := by
    simp [deltaGauss, discriminant_re, discriminant_im, curve_8_8_2, mk', pi,
      GaussInt.mul, GaussInt.ofInt]
  rcases p2_valuation_of_two_pow 28 with ⟨u, hu, hnu⟩
  have hprod : GaussInt.mul u (piPow 57) =
      GaussInt.mul (GaussInt.ofInt ((2 : ℤ) ^ 28)) pi := by
    have hpow : piPow 57 = GaussInt.mul (piPow 56) pi := by
      rw [show (57 : ℕ) = 56 + 1 by decide]
      exact piPow_succ_right 56
    calc
      GaussInt.mul u (piPow 57)
          = GaussInt.mul u (GaussInt.mul (piPow 56) pi) := by rw [hpow]
      _ = GaussInt.mul (GaussInt.mul u (piPow 56)) pi := by
          rw [← GaussInt.mul_assoc]
      _ = GaussInt.mul (GaussInt.ofInt ((2 : ℤ) ^ 28)) pi := by rw [hu]
  exact vPi_of_shape _ u 57 hnu (hprod.trans hΔ)

/-- `(8, 8, 2)` is not minimal at `π`.

`u = π` and `r = s = t = 0` leaves `a₁` and `a₃` zero, `v_π(a₂) = 10`,
`v_π(a₄) = 15`, and `v_π(Δ') = 57 - 12 = 45`, which is nonnegative and
strictly smaller than `57`. The odd-`c` argument does not apply: it needs
`v_π(Δ) = 18`.
-/
theorem not_qiLocalMinimal_8_8_2 : ¬ qiLocalMinimalAtPi curve_8_8_2 := by
  intro hmin
  let u : GRat := gOf pi
  let z : GRat := gOf GaussInt.zero
  have hu : u.num ≠ GaussInt.zero := by
    simp [u, gOf, pi, GaussInt.zero]
  have hpi : vPi pi = 1 := by
    have hp : piPow 1 = pi := by
      unfold piPow
      exact GaussInt.npow_one pi
    rw [← hp]
    exact vPi_piPow 1
  have hvu : vRat? u = some 1 := by
    simpa [u, hpi] using vRat?_gOf_ne pi (by decide)
  have hv : (1 : Int) ≤ (vPi u.num : Int) - (vPi u.den : Int) := by
    have hden : vPi u.den = 0 := by
      simpa [u, gOf] using vPi_one
    have hnum : vPi u.num = 1 := by
      simpa [u, gOf] using hpi
    omega
  apply hmin u z z z hu hv
  have h3 : (term3r z).num = GaussInt.zero := by
    simp [term3r, gmul, z, gOf, GaussInt.mul_zero]
  have hss : (termSsq z).num = GaussInt.zero := by
    simp [termSsq, gneg, gmul, z, gOf, GaussInt.mul_zero, GaussInt.neg_zero]
  have hr : (term2rA2 curve_8_8_2 z).num = GaussInt.zero := by
    simp [term2rA2, gmul, z, gOf, GaussInt.mul_zero]
  have hrr : (term3rr z).num = GaussInt.zero := by
    simp [term3rr, gmul, z, gOf, GaussInt.mul_zero]
  have hst : (term2st z z).num = GaussInt.zero := by
    simp [term2st, gneg, gmul, z, gOf, GaussInt.mul_zero, GaussInt.neg_zero]
  have ha2v : vRat? (a2Slot curve_8_8_2 z z) = some 10 := by
    have hstep := v_gadd_zero_right (a2Orig curve_8_8_2) (term3r z) h3
    have hfin :=
      v_gadd_zero_right (gadd (a2Orig curve_8_8_2) (term3r z)) (termSsq z) hss
    have hne : GaussInt.ofInt curve_8_8_2.A_int ≠ GaussInt.zero := by decide
    rw [a2Slot, hfin, hstep, a2Orig]
    simpa [vPi_a2_8_8_2] using
      vRat?_gOf_ne (GaussInt.ofInt curve_8_8_2.A_int) hne
  have ha4v : vRat? (a4Slot curve_8_8_2 z z z) = some 15 := by
    have h1 := v_gadd_zero_right (a4Orig curve_8_8_2) (term2rA2 curve_8_8_2 z) hr
    have h2 :=
      v_gadd_zero_right (gadd (a4Orig curve_8_8_2) (term2rA2 curve_8_8_2 z))
        (term3rr z) hrr
    have h3s :=
      v_gadd_zero_right
        (gadd (gadd (a4Orig curve_8_8_2) (term2rA2 curve_8_8_2 z)) (term3rr z))
        (term2st z z) hst
    have hne : ⟨curve_8_8_2.B_re, curve_8_8_2.B_im⟩ ≠ GaussInt.zero := by
      decide
    rw [a4Slot, h3s, h2, h1, a4Orig]
    simpa [vPi_a4_8_8_2] using
      vRat?_gOf_ne ⟨curve_8_8_2.B_re, curve_8_8_2.B_im⟩ hne
  have hdne : deltaGauss curve_8_8_2 ≠ GaussInt.zero := by
    intro hz
    have hv0 := vPi_delta_8_8_2
    rw [hz, vPi_zero] at hv0
    omega
  have hd := vRat?_gOf_ne (deltaGauss curve_8_8_2) hdne
  rw [vPi_delta_8_8_2] at hd
  have hpow := v_gpow u hvu 12
  have hinv := v_ginv (gpow u 12) hpow (gpow_num_ne u 12 hu)
  have hslot := v_gmul (gOf (deltaGauss curve_8_8_2)) (ginv (gpow u 12) (gpow_num_ne u 12 hu))
    hd hinv
  have hΔv : vRat? (deltaSlot curve_8_8_2 u (gpow_num_ne u 12 hu)) = some 45 := by
    simpa [deltaSlot] using hslot
  have ha1 : vRat? (a1Slot z) = none := by
    simp [a1Slot, gmul, vRat?, z, gOf, GaussInt.mul_zero]
  have ha3 : vRat? (a3Slot z) = none := by
    simp [a3Slot, gmul, vRat?, z, gOf, GaussInt.mul_zero]
  have hvuEq : (vPi u.num : Int) - (vPi u.den : Int) = 1 := by
    simp [vRat?, hu] at hvu
    exact hvu
  constructor
  · unfold integralSlotsAtPi
    rw [hvuEq]
    constructor
    · exact valGe_of_none ha1
    constructor
    · simpa [Int.mul_one] using valGe_of_le ha2v (by decide)
    constructor
    · exact valGe_of_none ha3
    constructor
    · simpa [Int.mul_one] using valGe_of_le ha4v (by decide)
    · exact valGe_of_le hΔv (by decide)
  · unfold smallerDeltaAtPi
    exact ⟨↑45, ↑57, hΔv, hd, by decide⟩

theorem not_minimal_even_c_open : ¬ minimal_even_c_open := by
  intro h
  exact not_qiLocalMinimal_8_8_2 (h curve_8_8_2 (by decide))

/-- `(8, 8, 2)` is not a primitive pair. `gcd(8, 8) = 8`. -/
theorem curve_8_8_2_not_coprime :
    curve_8_8_2.a.natAbs.gcd curve_8_8_2.b.natAbs ≠ 1 := by
  decide

/-- `gcd(|a|, |b|) = 1` forces `c` odd.

If `c` is even then `both_even_of_c_even` gives `2 ∣ |a|` and `2 ∣ |b|`, so
`2` divides the gcd. `(8, 8, 2)` is the even-`c` witness and is not coprime.
-/
theorem c_odd_of_coprime (E : FreyCurve4413)
    (hcop : E.a.natAbs.gcd E.b.natAbs = 1) : E.c.natAbs % 2 = 1 := by
  have hpair : E.c.natAbs % 2 = 0 ∨ E.c.natAbs % 2 = 1 := by omega
  rcases hpair with heven | hone
  · rcases both_even_of_c_even E heven with ⟨ha, hb⟩
    have haN : E.a.natAbs % 2 = 0 := natAbs_of_two_dvd (Int.dvd_of_emod_eq_zero ha)
    have hbN : E.b.natAbs % 2 = 0 := natAbs_of_two_dvd (Int.dvd_of_emod_eq_zero hb)
    have hdg : 2 ∣ E.a.natAbs.gcd E.b.natAbs :=
      Nat.dvd_gcd (Nat.dvd_of_mod_eq_zero haN) (Nat.dvd_of_mod_eq_zero hbN)
    rw [hcop] at hdg
    have hle : 2 ≤ 1 := Nat.le_of_dvd (by decide) hdg
    omega
  · exact hone

/-- Arithmetic form of Ogg's expression when the discriminant slot is `n + 6`.

`(n + 6) - 4 - n = 2`. On the translated Frey model the Weierstrass
valuation is `18` and Dokchitser's cubic discriminant has valuation `n + 6`.
This identity is not a value of `FTameAtPi`.
-/
theorem ogg_tame_of_INStar_discriminant (n : ℕ) : (n + 6) - 4 - n = 2 := by
  have h : n + 6 = (n + 2) + 4 := by omega
  rw [h, Nat.add_sub_cancel, Nat.add_sub_cancel_left]

/-- The subtractions `18 - 4 - 4` and `18 - 4 - 2`.

These are equalities in `ℕ`. They are not values of `FTameAtPi`.
-/
theorem arith_eighteen_minus_four_minus_n :
    18 - 4 - 4 = 10 ∧ 18 - 4 - 2 = 12 := by
  decide

/-- When `c` is odd, the Weierstrass valuation is `18`, not `8` or `10`.

`8 = 2 + 6` and `10 = 4 + 6` are the cubic-discriminant slots `v(d)`.
`even_a_cubic_ten` and `a_odd_cubic_eight` are those slots. `18` is `v_π(Δ)`.
-/
theorem frey_delta_not_INStar_discriminant (E : FreyCurve4413)
    (hodd : E.c.natAbs % 2 = 1) :
    vPi (deltaGauss E) = 18 ∧ 18 ≠ 2 + 6 ∧ 18 ≠ 4 + 6 :=
  ⟨vPi_delta E hodd, by decide, by decide⟩

/-- A coprime pair has odd `c`, so the same discriminant obstruction applies. -/
theorem frey_delta_not_INStar_discriminant_of_coprime (E : FreyCurve4413)
    (hcop : E.a.natAbs.gcd E.b.natAbs = 1) :
    vPi (deltaGauss E) = 18 ∧ 18 ≠ 2 + 6 ∧ 18 ≠ 4 + 6 :=
  frey_delta_not_INStar_discriminant E (c_odd_of_coprime E hcop)

/-- The even-`a` shift has `v_π(D) = 8` and `v_π(Δ) = 18`.

`v(D) + 2 = 10` is `v_π(d)`, not `v_π(Δ)`. `even_a_cubic_ten` is
`Δ = 16 d` with `v_π(16) = 8` and `v_π(d) = 10`.
-/
theorem even_a_disc_mismatch (E : FreyCurve4413)
    (hodd : E.c.natAbs % 2 = 1) (ha : E.a.natAbs % 2 = 0) :
    P2Exact (quadDiscAfterPiThenPiSq E) 8 ∧
      vPi (deltaGauss E) = 18 ∧ 8 + 2 ≠ 18 := by
  rcases even_a_dokchitser_n4_inputs E hodd ha with ⟨_, _, _, _, hD⟩
  exact ⟨hD, vPi_delta E hodd, by decide⟩

/-- The odd-`a` shift has `v_π(D) = 6` and `v_π(Δ) = 18`.

`v(D) + 2 = 8` is `v_π(d)`. The model has `a₃ = 2 π²`, so `Δ` is not `16 d`.
`a_odd_cubic_eight` records both valuations.
-/
theorem a_odd_disc_mismatch (E : FreyCurve4413)
    (hodd : E.c.natAbs % 2 = 1) (ha : E.a.natAbs % 2 = 1) :
    P2Exact (quadDiscAfterPiSq E) 6 ∧
      vPi (deltaGauss E) = 18 ∧ 6 + 2 ≠ 18 := by
  rcases a_odd_dokchitser_n2_inputs E hodd ha with ⟨_, _, _, _, _, hD⟩
  exact ⟨hD, vPi_delta E hodd, by decide⟩

/-- Open: the Swan conductor vanishes on a coprime Frey curve.

This needs the argument that the `3`-division field is tamely ramified at
`π`, using `ℓ = 3 ≠ p = 2`. It is not a theorem and not an axiom. `SwanAtPi`
stays sealed. `weierstrass_cubic_gap` is the arithmetic `18 - (n + 6)`,
equal to `8` for `n = 4` and `10` for `n = 2`. On the even-`a` translate
that gap is `v_π(16)`, because `Δ = 16 d`. It is not `SwanAtPi`. Ogg's
count on this model uses `v(Δ) = 18`, so `v(Δ) - 4 - n` is `10` or `12`
before any Swan conductor. `ogg_count_if_components` is that arithmetic
written as `18 - (n + 5) + 1`. The component count `m = n + 5` is not
`IsINStar`, and `FTameAtPi` is not set to `10` or `12`. This statement
remains the open claim that `SwanAtPi` is `0`.
-/
def swan_vanishes_open : Prop :=
  ∀ E : FreyCurve4413, E.a.natAbs.gcd E.b.natAbs = 1 → SwanAtPi E = 0

/-- `b₂ = a₁² + 4 a₂`. -/
def b2Of (a1 a2 : GaussInt) : GaussInt :=
  GaussInt.add (GaussInt.mul a1 a1) (GaussInt.smul 4 a2)

/-- `b₄ = 2 a₄ + a₁ a₃`. -/
def b4Of (a1 a3 a4 : GaussInt) : GaussInt :=
  GaussInt.add (GaussInt.smul 2 a4) (GaussInt.mul a1 a3)

/-- `b₆ = a₃² + 4 a₆`. -/
def b6Of (a3 a6 : GaussInt) : GaussInt :=
  GaussInt.add (GaussInt.mul a3 a3) (GaussInt.smul 4 a6)

/-- `b₈ = a₁² a₆ + 4 a₂ a₆ - a₁ a₃ a₄ + a₂ a₃² - a₄²`. -/
def b8Of (a1 a2 a3 a4 a6 : GaussInt) : GaussInt :=
  GaussInt.sub
    (GaussInt.add
      (GaussInt.add (GaussInt.mul (GaussInt.mul a1 a1) a6)
        (GaussInt.smul 4 (GaussInt.mul a2 a6)))
      (GaussInt.add (GaussInt.neg (GaussInt.mul (GaussInt.mul a1 a3) a4))
        (GaussInt.mul a2 (GaussInt.mul a3 a3))))
    (GaussInt.mul a4 a4)

/-- Weierstrass discriminant `-b₂² b₈ - 8 b₄³ - 27 b₆² + 9 b₂ b₄ b₆`. -/
def weierstrassDisc (a1 a2 a3 a4 a6 : GaussInt) : GaussInt :=
  let b2 := b2Of a1 a2
  let b4 := b4Of a1 a3 a4
  let b6 := b6Of a3 a6
  let b8 := b8Of a1 a2 a3 a4 a6
  GaussInt.add
    (GaussInt.add
      (GaussInt.neg (GaussInt.mul (GaussInt.mul b2 b2) b8))
      (GaussInt.neg (GaussInt.smul 8 (GaussInt.mul b4 (GaussInt.mul b4 b4)))))
    (GaussInt.add
      (GaussInt.neg (GaussInt.smul 27 (GaussInt.mul b6 b6)))
      (GaussInt.smul 9 (GaussInt.mul b2 (GaussInt.mul b4 b6))))

/-- Discriminant of the monic cubic `x³ + a₂ x² + a₄ x + a₆`.

This is Dokchitser's `d`, not the Weierstrass discriminant.
-/
def cubicDisc (a2 a4 a6 : GaussInt) : GaussInt :=
  GaussInt.add
    (GaussInt.add
      (GaussInt.smul 18 (GaussInt.mul a2 (GaussInt.mul a4 a6)))
      (GaussInt.neg (GaussInt.smul 4
        (GaussInt.mul (GaussInt.mul (GaussInt.mul a2 a2) a2) a6))))
    (GaussInt.add
      (GaussInt.add
        (GaussInt.mul (GaussInt.mul a2 a2) (GaussInt.mul a4 a4))
        (GaussInt.neg (GaussInt.smul 4 (GaussInt.mul a4 (GaussInt.mul a4 a4)))))
      (GaussInt.neg (GaussInt.smul 27 (GaussInt.mul a6 a6))))

/-- `D = a₄² - 4 a₂ a₆`, the discriminant of `a₂ x² + a₄ x + a₆`. -/
def quadDisc (a2 a4 a6 : GaussInt) : GaussInt :=
  GaussInt.sub (GaussInt.mul a4 a4) (GaussInt.smul 4 (GaussInt.mul a2 a6))

/-- The terms in `d - a₂² D`. -/
def cubicError (a2 a4 a6 : GaussInt) : GaussInt :=
  GaussInt.add
    (GaussInt.add
      (GaussInt.neg (GaussInt.smul 4 (GaussInt.mul a4 (GaussInt.mul a4 a4))))
      (GaussInt.neg (GaussInt.smul 27 (GaussInt.mul a6 a6))))
    (GaussInt.smul 18 (GaussInt.mul a2 (GaussInt.mul a4 a6)))

theorem cubicDisc_split (a2 a4 a6 : GaussInt) :
    cubicDisc a2 a4 a6 =
      GaussInt.add (GaussInt.mul (GaussInt.mul a2 a2) (quadDisc a2 a4 a6))
        (cubicError a2 a4 a6) := by
  cases a2
  cases a4
  cases a6
  simp [cubicDisc, quadDisc, cubicError, GaussInt.mul, GaussInt.add, GaussInt.sub,
    GaussInt.smul, GaussInt.neg]
  constructor <;> grind

/-- For `a₁ = a₃ = 0`, `Δ = 16 d`. -/
theorem weierstrassDisc_eq_sixteen_cubic (a2 a4 a6 : GaussInt) :
    weierstrassDisc GaussInt.zero a2 GaussInt.zero a4 a6 =
      GaussInt.smul 16 (cubicDisc a2 a4 a6) := by
  cases a2
  cases a4
  cases a6
  simp [weierstrassDisc, cubicDisc, b2Of, b4Of, b6Of, b8Of, GaussInt.mul, GaussInt.add,
    GaussInt.sub, GaussInt.smul, GaussInt.neg, GaussInt.zero]
  constructor <;> grind

/-- Pure `x`-shift by `r`, with `u = 1` and `s = t = 0`. -/
def xShiftA2 (r a2 : GaussInt) : GaussInt :=
  GaussInt.add a2 (GaussInt.smul 3 r)

def xShiftA4 (r a2 a4 : GaussInt) : GaussInt :=
  GaussInt.add a4
    (GaussInt.add (GaussInt.smul 2 (GaussInt.mul r a2))
      (GaussInt.smul 3 (GaussInt.mul r r)))

def xShiftA6 (r a2 a4 a6 : GaussInt) : GaussInt :=
  GaussInt.add a6
    (GaussInt.add (GaussInt.mul r a4)
      (GaussInt.add (GaussInt.mul (GaussInt.mul r r) a2)
        (GaussInt.mul r (GaussInt.mul r r))))

/-- An `x`-shift does not change the Weierstrass discriminant when `a₁ = a₃ = 0`. -/
theorem weierstrassDisc_xShift (r a2 a4 a6 : GaussInt) :
    weierstrassDisc GaussInt.zero (xShiftA2 r a2) GaussInt.zero
      (xShiftA4 r a2 a4) (xShiftA6 r a2 a4 a6) =
    weierstrassDisc GaussInt.zero a2 GaussInt.zero a4 a6 := by
  cases r
  cases a2
  cases a4
  cases a6
  simp [weierstrassDisc, b2Of, b4Of, b6Of, b8Of, xShiftA2, xShiftA4, xShiftA6,
    GaussInt.mul, GaussInt.add, GaussInt.sub, GaussInt.smul, GaussInt.neg, GaussInt.zero]
  constructor <;> grind

/-- A `y`-shift `y ↦ y + t` does not change the Weierstrass discriminant when `a₁ = 0`. -/
theorem weierstrassDisc_yShift (t a2 a3 a4 a6 : GaussInt) :
    weierstrassDisc GaussInt.zero a2 (GaussInt.add a3 (GaussInt.smul 2 t)) a4
      (GaussInt.sub (GaussInt.sub a6 (GaussInt.mul t a3)) (GaussInt.mul t t)) =
    weierstrassDisc GaussInt.zero a2 a3 a4 a6 := by
  cases t
  cases a2
  cases a3
  cases a4
  cases a6
  simp [weierstrassDisc, b2Of, b4Of, b6Of, b8Of, GaussInt.mul, GaussInt.add, GaussInt.sub,
    GaussInt.smul, GaussInt.neg, GaussInt.zero]
  constructor <;> grind

theorem cubicDisc_a6_zero (a2 a4 : GaussInt) :
    cubicDisc a2 a4 GaussInt.zero =
      GaussInt.mul (GaussInt.mul a4 a4)
        (GaussInt.sub (GaussInt.mul a2 a2) (GaussInt.smul 4 a4)) := by
  cases a2
  cases a4
  simp [cubicDisc, GaussInt.mul, GaussInt.add, GaussInt.sub, GaussInt.smul, GaussInt.neg,
    GaussInt.zero]
  constructor <;> grind

theorem frey_weierstrassDisc (E : FreyCurve4413) :
    weierstrassDisc GaussInt.zero (GaussInt.ofInt E.A_int) GaussInt.zero
      ⟨E.B_re, E.B_im⟩ GaussInt.zero =
    deltaGauss E := by
  rw [weierstrassDisc_eq_sixteen_cubic, deltaGauss_eq_weierstrass, cubicDisc_a6_zero]
  simp [delta_weierstrass, weierstrass_product, B_sq, A_sq_sub_4B, Zsqrt1_mul,
    GaussInt.mul, GaussInt.sub, GaussInt.smul, GaussInt.ofInt, Δ]
  rw [E.h_A, E.h_B_re, E.h_B_im]
  constructor <;> grind -lia -linarith -ac

theorem a2AfterPi_xShift (E : FreyCurve4413) :
    a2AfterPi E = xShiftA2 pi (GaussInt.ofInt E.A_int) := by
  rw [E.h_A]
  simp [a2AfterPi, xShiftA2, pi, GaussInt.add, GaussInt.smul, GaussInt.ofInt]

theorem a4AfterPi_xShift (E : FreyCurve4413) :
    a4AfterPi E = xShiftA4 pi (GaussInt.ofInt E.A_int) ⟨E.B_re, E.B_im⟩ := by
  rw [E.h_A, E.h_B_re, E.h_B_im]
  simp [a4AfterPi, xShiftA4, pi, GaussInt.add, GaussInt.mul, GaussInt.smul, GaussInt.ofInt]
  constructor <;> omega

theorem a6AfterPi_xShift (E : FreyCurve4413) :
    a6AfterPi E = xShiftA6 pi (GaussInt.ofInt E.A_int) ⟨E.B_re, E.B_im⟩ GaussInt.zero := by
  rw [E.h_A, E.h_B_re, E.h_B_im]
  simp [a6AfterPi, xShiftA6, pi, GaussInt.add, GaussInt.mul, GaussInt.ofInt, GaussInt.zero]
  constructor <;> omega

theorem P2Exact_ne_zero {z : GaussInt} {k : ℕ} (h : P2Exact z k) : z ≠ GaussInt.zero := by
  rcases h with ⟨u, hu, hnu⟩
  intro hz
  have hmul : GaussInt.mul u (piPow k) = GaussInt.zero := by rw [hu, hz]
  rcases GaussInt.mul_eq_zero.mp hmul with hu0 | hk
  · have hzdiv : piDivides GaussInt.zero := by decide
    exact hnu (hu0 ▸ hzdiv)
  · exact piPow_ne_zero k hk

theorem vPi_of_P2Exact {z : GaussInt} {k : ℕ} (h : P2Exact z k) : vPi z = k := by
  rcases h with ⟨u, hu, hnu⟩
  exact vPi_of_shape z u k hnu hu

theorem vPi_neg {z : GaussInt} (hz : z ≠ GaussInt.zero) :
    vPi (GaussInt.neg z) = vPi z := by
  rcases exists_pi_shape z hz with ⟨u, hnu, hu⟩
  have hneg : ¬ piDivides (GaussInt.neg u) := by
    intro hdiv
    exact hnu ((piDivides_neg u).1 hdiv)
  apply vPi_of_shape (GaussInt.neg z) (GaussInt.neg u) (vPi z) hneg
  rw [GaussInt.neg_mul, hu]

theorem vPi_ofInt_sixteen : vPi (GaussInt.ofInt 16) = 8 := by
  have h16 : (2 : ℤ) ^ 4 = 16 := by decide
  have h := p2_valuation_of_two_pow 4
  rw [h16] at h
  exact vPi_of_P2Exact h

/-- The two `x`-shifts are `u = 1` translations of the Frey equation.

`IsINStar 4` is a condition on this translated model. Its Weierstrass
discriminant is `deltaGauss`, so the model is minimal at `π` whenever the
original model is. `v_π(Δ) = 18` and `v_π(D) = 8` are valuations of this
same equation.
-/
theorem even_a_weierstrass_eq_delta (E : FreyCurve4413) :
    weierstrassDisc GaussInt.zero (a2AfterPiThenPiSq E) GaussInt.zero
      (a4AfterPiThenPiSq E) (a6AfterPiThenPiSq E) = deltaGauss E := by
  have hfirst := weierstrassDisc_xShift pi (GaussInt.ofInt E.A_int)
    ⟨E.B_re, E.B_im⟩ GaussInt.zero
  rw [← a2AfterPi_xShift E, ← a4AfterPi_xShift E, ← a6AfterPi_xShift E] at hfirst
  have hsecond := weierstrassDisc_xShift (piPow 2) (a2AfterPi E) (a4AfterPi E) (a6AfterPi E)
  have ha2 : a2AfterPiThenPiSq E = xShiftA2 (piPow 2) (a2AfterPi E) := rfl
  have ha4 : a4AfterPiThenPiSq E = xShiftA4 (piPow 2) (a2AfterPi E) (a4AfterPi E) := rfl
  have ha6 : a6AfterPiThenPiSq E =
      xShiftA6 (piPow 2) (a2AfterPi E) (a4AfterPi E) (a6AfterPi E) := rfl
  rw [ha2, ha4, ha6, hsecond, hfirst, frey_weierstrassDisc]

/-- On the even-`a` translate, `Δ = 16 d` and `v_π(d) = 10`.

`d` is the cubic discriminant. `v_π(16) = 8` and `v_π(Δ) = 18`, so
`18 = 8 + 10`. Dokchitser's row for `n = 4` asks for `v(d) = 10` and
`v(D) = 8`. Both hold on this model. Tate's Step 7 is not formalized, and
neither is the conductor exponent.
-/
theorem even_a_cubic_ten (E : FreyCurve4413)
    (hodd : E.c.natAbs % 2 = 1) (ha : E.a.natAbs % 2 = 0) :
    deltaGauss E =
      GaussInt.smul 16 (cubicDisc (a2AfterPiThenPiSq E) (a4AfterPiThenPiSq E)
        (a6AfterPiThenPiSq E)) ∧
    vPi (GaussInt.ofInt 16) = 8 ∧
    vPi (cubicDisc (a2AfterPiThenPiSq E) (a4AfterPiThenPiSq E)
      (a6AfterPiThenPiSq E)) = 10 ∧
    vPi (deltaGauss E) = 18 ∧
    P2Exact (quadDiscAfterPiThenPiSq E) 8 := by
  have hΔ := even_a_weierstrass_eq_delta E
  have h16 := weierstrassDisc_eq_sixteen_cubic (a2AfterPiThenPiSq E)
    (a4AfterPiThenPiSq E) (a6AfterPiThenPiSq E)
  have heq : deltaGauss E =
      GaussInt.smul 16 (cubicDisc (a2AfterPiThenPiSq E) (a4AfterPiThenPiSq E)
        (a6AfterPiThenPiSq E)) := by
    rw [← hΔ, h16]
  have hmul : deltaGauss E =
      GaussInt.mul (GaussInt.ofInt 16)
        (cubicDisc (a2AfterPiThenPiSq E) (a4AfterPiThenPiSq E)
          (a6AfterPiThenPiSq E)) := by
    rw [heq, smul_eq_mul_ofInt]
  have hd16 : P2Exact (deltaGauss E) 18 := delta_p2_exact_eighteen E hodd
  have hne16 : GaussInt.ofInt 16 ≠ GaussInt.zero := by decide
  have hned : cubicDisc (a2AfterPiThenPiSq E) (a4AfterPiThenPiSq E)
      (a6AfterPiThenPiSq E) ≠ GaussInt.zero := by
    intro hz
    have hzero : deltaGauss E = GaussInt.zero := by
      rw [hmul, hz, GaussInt.mul_zero]
    exact P2Exact_ne_zero hd16 hzero
  have hv := vPi_mul (GaussInt.ofInt 16)
    (cubicDisc (a2AfterPiThenPiSq E) (a4AfterPiThenPiSq E) (a6AfterPiThenPiSq E))
    hne16 hned
  rw [← hmul, vPi_ofInt_sixteen, vPi_delta E hodd] at hv
  have hten : vPi (cubicDisc (a2AfterPiThenPiSq E) (a4AfterPiThenPiSq E)
      (a6AfterPiThenPiSq E)) = 10 := by omega
  exact ⟨heq, vPi_ofInt_sixteen, hten, vPi_delta E hodd,
    (even_a_dokchitser_n4_inputs E hodd ha).2.2.2.2⟩

theorem a3AfterPiSq_yShift :
    a3AfterPiSq = GaussInt.add GaussInt.zero (GaussInt.smul 2 (piPow 2)) := by
  rw [a3AfterPiSq_from_shift]
  simp [GaussInt.add, GaussInt.zero, GaussInt.smul]

theorem a6AfterPiSq_yShift (E : FreyCurve4413) :
    a6AfterPiSq E =
      GaussInt.sub (GaussInt.sub (a6AfterPi E) (GaussInt.mul (piPow 2) GaussInt.zero))
        (GaussInt.mul (piPow 2) (piPow 2)) := by
  rw [a6AfterPiSq_from_shift]
  have hpow : piPow 4 = GaussInt.mul (piPow 2) (piPow 2) := by
    unfold piPow
    rw [show (4 : ℕ) = 2 + 2 by decide, GaussInt.npow_add]
  rw [hpow]
  simp [GaussInt.sub, GaussInt.mul, GaussInt.zero]

/-- The odd-`a` model is an `x`-shift by `π` followed by a `y`-shift by `π²`.

Both have `u = 1`, so the Weierstrass discriminant stays `deltaGauss`.
`IsINStar 2` is a condition on this translated model, and `v_π(Δ) = 18`
is the valuation of that same discriminant.
-/
theorem a_odd_weierstrass_eq_delta (E : FreyCurve4413) :
    weierstrassDisc GaussInt.zero (a2AfterPi E) a3AfterPiSq (a4AfterPi E)
      (a6AfterPiSq E) = deltaGauss E := by
  have hfirst := weierstrassDisc_xShift pi (GaussInt.ofInt E.A_int)
    ⟨E.B_re, E.B_im⟩ GaussInt.zero
  rw [← a2AfterPi_xShift E, ← a4AfterPi_xShift E, ← a6AfterPi_xShift E] at hfirst
  have hy := weierstrassDisc_yShift (piPow 2) (a2AfterPi E) GaussInt.zero
    (a4AfterPi E) (a6AfterPi E)
  rw [← a3AfterPiSq_yShift, ← a6AfterPiSq_yShift E] at hy
  rw [hy, hfirst, frey_weierstrassDisc]

theorem P2Exact_ofInt_nine : P2Exact (GaussInt.ofInt 9) 0 :=
  P2Exact_zero_of_not_pi
    (not_piDivides_ofInt_of_natAbs_odd (by decide : (9 : ℤ).natAbs % 2 = 1))

theorem P2Exact_ofInt_twentySeven : P2Exact (GaussInt.ofInt 27) 0 :=
  P2Exact_zero_of_not_pi
    (not_piDivides_ofInt_of_natAbs_odd (by decide : (27 : ℤ).natAbs % 2 = 1))

theorem P2Exact_ofInt_eighteen : P2Exact (GaussInt.ofInt 18) 2 := by
  have hform : GaussInt.ofInt 18 =
      GaussInt.mul (GaussInt.ofInt 2) (GaussInt.ofInt 9) := by
    simp [GaussInt.mul, GaussInt.ofInt]
  rw [hform]
  exact P2Exact_mul (by simpa [Int.pow_one] using p2_valuation_of_two_pow 1)
    P2Exact_ofInt_nine

theorem P2Exact_smul_of {n : ℤ} {z : GaussInt} {k m : ℕ}
    (hn : P2Exact (GaussInt.ofInt n) k) (hz : P2Exact z m) :
    P2Exact (GaussInt.smul n z) (k + m) := by
  rw [smul_eq_mul_ofInt]
  exact P2Exact_mul hn hz

/-- On the odd-`a` translate, `v_π(d) = 8` and `v_π(Δ) = 18`.

`a₃ = 2 π²`, so this model is not of the shape `a₁ = a₃ = 0` and `Δ` is
not `16 d`. The cubic discriminant still satisfies `v(d) = 8 = v(D) + 2`,
because `d - a₂² D` has valuation `10` and `v(a₂² D) = 8`. Dokchitser's
row for `n = 2` asks for `v(d) = 8` and `v(D) = 6`. Tate's Step 7 is not
formalized.
-/
theorem a_odd_cubic_eight (E : FreyCurve4413)
    (hodd : E.c.natAbs % 2 = 1) (ha : E.a.natAbs % 2 = 1) :
    weierstrassDisc GaussInt.zero (a2AfterPi E) a3AfterPiSq (a4AfterPi E)
      (a6AfterPiSq E) = deltaGauss E ∧
    vPi (deltaGauss E) = 18 ∧
    vPi (cubicDisc (a2AfterPi E) (a4AfterPi E) (a6AfterPiSq E)) = 8 ∧
    P2Exact (quadDiscAfterPiSq E) 6 := by
  have hΔ := a_odd_weierstrass_eq_delta E
  have hvΔ := vPi_delta E hodd
  have hD := quadDiscAfterPiSq_p2_exact_six E hodd ha
  have ha2 := a2AfterPi_p2_exact_one E
  have ha4 := a4AfterPi_p2_exact_three_of_a_odd E hodd ha
  have ha6 := a6AfterPiSq_p2_exact_five_of_a_odd E hodd ha
  have hsq : P2Exact (GaussInt.mul (a2AfterPi E) (a2AfterPi E)) 2 :=
    P2Exact_mul ha2 ha2
  have hmain : P2Exact
      (GaussInt.mul (GaussInt.mul (a2AfterPi E) (a2AfterPi E)) (quadDiscAfterPiSq E)) 8 :=
    P2Exact_mul hsq hD
  let a2 := a2AfterPi E
  let a4 := a4AfterPi E
  let a6 := a6AfterPiSq E
  have herr4 : P2Exact
      (GaussInt.neg (GaussInt.smul 4 (GaussInt.mul a4 (GaussInt.mul a4 a4)))) 13 := by
    have h4 : P2Exact (GaussInt.ofInt 4) 4 := by
      have hpow : (2 : ℤ) ^ 2 = 4 := by decide
      simpa [hpow] using p2_valuation_of_two_pow 2
    have hcube := P2Exact_mul ha4 (P2Exact_mul ha4 ha4)
    have hsum : 4 + (3 + (3 + 3)) = 13 := by decide
    have hs := P2Exact_neg (P2Exact_smul_of h4 hcube)
    simpa [hsum] using hs
  have herr27 : P2Exact
      (GaussInt.neg (GaussInt.smul 27 (GaussInt.mul a6 a6))) 10 := by
    have hs := P2Exact_neg (P2Exact_smul_of P2Exact_ofInt_twentySeven (P2Exact_mul ha6 ha6))
    have hsum : 0 + (5 + 5) = 10 := by decide
    simpa [hsum] using hs
  have herr18 : P2Exact
      (GaussInt.smul 18 (GaussInt.mul a2 (GaussInt.mul a4 a6))) 11 := by
    have hprod := P2Exact_mul ha2 (P2Exact_mul ha4 ha6)
    have hs := P2Exact_smul_of P2Exact_ofInt_eighteen hprod
    have hsum : 2 + (1 + (3 + 5)) = 11 := by decide
    simpa [hsum] using hs
  have hpair := vPi_add_lt
    (GaussInt.neg (GaussInt.smul 27 (GaussInt.mul a6 a6)))
    (GaussInt.neg (GaussInt.smul 4 (GaussInt.mul a4 (GaussInt.mul a4 a4))))
    (P2Exact_ne_zero herr27) (P2Exact_ne_zero herr4)
    (by rw [vPi_of_P2Exact herr27, vPi_of_P2Exact herr4]; decide)
  have hpairV : vPi (GaussInt.add
      (GaussInt.neg (GaussInt.smul 4 (GaussInt.mul a4 (GaussInt.mul a4 a4))))
      (GaussInt.neg (GaussInt.smul 27 (GaussInt.mul a6 a6)))) = 10 := by
    rw [GaussInt.add_comm, hpair.2, vPi_of_P2Exact herr27]
  have herrMid := vPi_add_lt
    (GaussInt.add
      (GaussInt.neg (GaussInt.smul 4 (GaussInt.mul a4 (GaussInt.mul a4 a4))))
      (GaussInt.neg (GaussInt.smul 27 (GaussInt.mul a6 a6))))
    (GaussInt.smul 18 (GaussInt.mul a2 (GaussInt.mul a4 a6)))
    (by
      rw [GaussInt.add_comm]
      exact hpair.1) (P2Exact_ne_zero herr18)
    (by rw [hpairV, vPi_of_P2Exact herr18]; decide)
  have herrV : vPi (cubicError a2 a4 a6) = 10 := by
    rw [cubicError, herrMid.2, hpairV]
  have hmainV : vPi (GaussInt.mul (GaussInt.mul a2 a2) (quadDiscAfterPiSq E)) = 8 :=
    vPi_of_P2Exact hmain
  have hjoin := vPi_add_lt
    (GaussInt.mul (GaussInt.mul a2 a2) (quadDiscAfterPiSq E))
    (cubicError a2 a4 a6)
    (P2Exact_ne_zero hmain) herrMid.1
    (by rw [hmainV, herrV]; decide)
  have hcub : vPi (cubicDisc a2 a4 a6) = 8 := by
    have hsplit := cubicDisc_split a2 a4 a6
    have hDdef : quadDisc a2 a4 a6 = quadDiscAfterPiSq E := rfl
    rw [hsplit, hDdef, hjoin.2, hmainV]
  exact ⟨hΔ, hvΔ, hcub, hD⟩

/-- Tate's Step 7 root test, read off the `IsINStar` bounds.

`v(a₂) = 1`, so `v(a₂²) = 2`. Positive even `n` gives `(n + 4) / 2 ≥ 3`,
so `v(3 a₄) > 2` whenever `a₄ ≠ 0`. Therefore `v(a₂² - 3 a₄) = 2`.
Dokchitser uses this valuation to say that
`x³ + (a₂/π) x² + (a₄/π²) x + a₆/π³` has a double root that is not a triple
root. The Kodaira symbol and `FTameAtPi` are not conclusions of this lemma.
-/
theorem tate_step7_double_root {n : ℕ} {a1 a2 a3 a4 a6 b6 D : GaussInt}
    (h : IsINStar n a1 a2 a3 a4 a6 b6 D) :
    vPi (GaussInt.sub (GaussInt.mul a2 a2) (GaussInt.smul 3 a4)) = 2 := by
  rcases h with ⟨hn, heven, _, ha2, _, ha4, _, _, _⟩
  have hk : 3 ≤ (n + 4) / 2 := by omega
  have hsq : P2Exact (GaussInt.mul a2 a2) 2 := P2Exact_mul ha2 ha2
  have hv2 : vPi (GaussInt.mul a2 a2) = 2 := vPi_of_P2Exact hsq
  have hsub : GaussInt.sub (GaussInt.mul a2 a2) (GaussInt.smul 3 a4) =
      GaussInt.add (GaussInt.mul a2 a2) (GaussInt.neg (GaussInt.smul 3 a4)) :=
    GaussInt.sub_eq_add_neg _ _
  by_cases hzero : a4 = GaussInt.zero
  · have h3z : GaussInt.smul 3 GaussInt.zero = GaussInt.zero := by
      simp [GaussInt.smul, GaussInt.zero]
    rw [hsub, hzero, h3z, GaussInt.neg_zero, GaussInt.add_zero]
    exact hv2
  · rcases ha4 with hz | ⟨u, hu⟩
    · exact absurd hz hzero
    · have hv4 : (n + 4) / 2 ≤ vPi a4 :=
        vPi_ge_of_mul_piPow a4 u ((n + 4) / 2) hu hzero
      have h3ne : GaussInt.ofInt 3 ≠ GaussInt.zero := by decide
      have hv3 : vPi (GaussInt.smul 3 a4) = vPi a4 := by
        rw [smul_eq_mul_ofInt, vPi_mul (GaussInt.ofInt 3) a4 h3ne hzero,
          vPi_ofInt_three, Nat.zero_add]
      have hne3 : GaussInt.smul 3 a4 ≠ GaussInt.zero := by
        intro hz3
        rw [smul_eq_mul_ofInt] at hz3
        rcases GaussInt.mul_eq_zero.mp hz3 with h3 | ha
        · exact h3ne h3
        · exact hzero ha
      have hvn : vPi (GaussInt.neg (GaussInt.smul 3 a4)) =
          vPi (GaussInt.smul 3 a4) :=
        vPi_neg hne3
      have hlt : vPi (GaussInt.mul a2 a2) <
          vPi (GaussInt.neg (GaussInt.smul 3 a4)) := by
        rw [hv2, hvn, hv3]
        exact Nat.lt_of_lt_of_le (by decide : 2 < 3) (Nat.le_trans hk hv4)
      have hadd := vPi_add_lt (GaussInt.mul a2 a2)
        (GaussInt.neg (GaussInt.smul 3 a4)) (P2Exact_ne_zero hsq) (by
          intro hz
          exact hne3 (by
            rw [← GaussInt.neg_neg (GaussInt.smul 3 a4), hz, GaussInt.neg_zero]))
        hlt
      rw [hsub, hadd.2, hv2]

/-- `v(Δ) = 18` and `v(d) = n + 6` belong to one translate.

The even-`a` shifts and the odd-`a` shifts are `u = 1`, so their Weierstrass
discriminant is `deltaGauss`. The cubic discriminant on those same
coefficients has valuation `10` or `8`.
-/
theorem disc_one_model (E : FreyCurve4413) (hodd : E.c.natAbs % 2 = 1) :
    (E.a.natAbs % 2 = 0 →
      weierstrassDisc GaussInt.zero (a2AfterPiThenPiSq E) GaussInt.zero
        (a4AfterPiThenPiSq E) (a6AfterPiThenPiSq E) = deltaGauss E ∧
      vPi (deltaGauss E) = 18 ∧
      vPi (cubicDisc (a2AfterPiThenPiSq E) (a4AfterPiThenPiSq E)
        (a6AfterPiThenPiSq E)) = 4 + 6) ∧
    (E.a.natAbs % 2 = 1 →
      weierstrassDisc GaussInt.zero (a2AfterPi E) a3AfterPiSq (a4AfterPi E)
        (a6AfterPiSq E) = deltaGauss E ∧
      vPi (deltaGauss E) = 18 ∧
      vPi (cubicDisc (a2AfterPi E) (a4AfterPi E) (a6AfterPiSq E)) = 2 + 6) := by
  constructor
  · intro ha
    rcases even_a_cubic_ten E hodd ha with ⟨_, _, hd, hv, _⟩
    exact ⟨even_a_weierstrass_eq_delta E, hv, hd⟩
  · intro ha
    rcases a_odd_cubic_eight E hodd ha with ⟨hw, hv, hd, _⟩
    exact ⟨hw, hv, hd⟩

/-- The gap `18 - (n + 6)` for the two rows, and what it adds to the table value `2`.

For `n = 4` the gap is `8` and `2 + 8 = 18 - 4 - 4`. For `n = 2` the gap is
`10` and `2 + 10 = 18 - 4 - 2`. On the even-`a` translate the gap equals
`v_π(16)`, since `Δ = 16 d`. This arithmetic is not `SwanAtPi`. Ogg's
expression on the translate uses the Weierstrass valuation `18`.
-/
theorem weierstrass_cubic_gap :
    (18 - (4 + 6) = 8 ∧ 2 + 8 = 18 - 4 - 4) ∧
    (18 - (2 + 6) = 10 ∧ 2 + 10 = 18 - 4 - 2) := by
  decide

/-- Valuation data Tate's Step 7 reads on an `IsINStar` row.

`tate_step7_double_root` is `v(a₂² - 3 a₄) = 2`. The same hypothesis gives
`v_π(D) = n + 4` and `π^(n + 3) ∣ b₆`, with `n` positive and even. A minimal
model of type `I_n*` has `m = n + 5` irreducible components, and Ogg's
formula then returns `v(Δ) - m + 1`. These valuations do not produce that
component count, and they do not evaluate `FTameAtPi`.
-/
theorem tate_step7_inputs {n : ℕ} {a1 a2 a3 a4 a6 b6 D : GaussInt}
    (h : IsINStar n a1 a2 a3 a4 a6 b6 D) :
    vPi (GaussInt.sub (GaussInt.mul a2 a2) (GaussInt.smul 3 a4)) = 2 ∧
      P2Exact D (n + 4) ∧
      valAtLeast b6 (n + 3) ∧
      0 < n ∧ n % 2 = 0 := by
  have hroot := tate_step7_double_root h
  rcases h with ⟨hn, heven, _, _, _, _, _, hb6, hD⟩
  exact ⟨hroot, hD, hb6, hn, heven⟩

/-- Ogg's numbers if the special fiber had `m = n + 5` components and `v(Δ) = 18`.

`18 - (4 + 5) + 1 = 10` and `18 - (2 + 5) + 1 = 12`, the same values as
`18 - 4 - 4` and `18 - 4 - 2`. `m = n + 5` is the component count of type
`I_n*`. `tate_step7_inputs` does not prove that count. `FTameAtPi` is sealed
and is not `10` or `12`. For odd `c`, minimality is `qiLocalMinimalAtPi_of_c_odd`.
It is a hypothesis of the formula and not a value of `FTameAtPi`.
-/
theorem ogg_count_if_components :
    (18 - (4 + 5) + 1 = 18 - 4 - 4 ∧ 18 - 4 - 4 = 10) ∧
    (18 - (2 + 5) + 1 = 18 - 4 - 2 ∧ 18 - 4 - 2 = 12) := by
  decide

/-- On a coprime curve, `v_π(Δ) = 18`, so the same two expressions are `10` and `12`.

`c_odd_of_coprime` supplies odd `c`, and `vPi_delta` supplies the valuation.
The subtractions use `m = 9` and `m = 7`. They are not `FTameAtPi`.
-/
theorem ogg_numbers_of_coprime (E : FreyCurve4413)
    (hcop : E.a.natAbs.gcd E.b.natAbs = 1) :
    vPi (deltaGauss E) = 18 ∧
      vPi (deltaGauss E) - (4 + 5) + 1 = 10 ∧
      vPi (deltaGauss E) - (2 + 5) + 1 = 12 := by
  have hv := vPi_delta E (c_odd_of_coprime E hcop)
  refine ⟨hv, ?_, ?_⟩
  · rw [hv]
  · rw [hv]

end FreyCurve4413
