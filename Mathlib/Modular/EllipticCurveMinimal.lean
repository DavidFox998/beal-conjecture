import DarmonMerel.«1_FreyCurve4413»
import Mathlib.Modular.QCurve4413
import Mathlib.Modular.DiscriminantNorm
import Mathlib.Modular.X0_32_Construction

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
that integer. `n = 32 ∨ n = 64` is `n_eq_32_or_64_of_tate`, not a component
of the axiom. If `c` is odd, `v₂(N(Δ)) = 18`. That is not the conductor
exponent. `delta_p2_exact_eighteen` is the element valuation `v_π(Δ) = 18`,
from `Δ = 2⁹ (a² + b² √(-1)) c¹³`. `a4_p2_exact_two` is `v_π(a₄) = 2`.
The substitution `u = π`, `r = s = t = 0` needs `v_π(a₄) ≥ 4`, so it is
not integral. The sufficient test `v(c₄) < 4` or `v(Δ) < 12` does not
apply. `MinimalModelAt2` stays opaque.
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
      ⟨(c4Pair (4 * a) (2 * a ^ 2) (2 * b ^ 2)).1,
        (c4Pair (4 * a) (2 * a ^ 2) (2 * b ^ 2)).2⟩ := by
  simp [c4_Frey, c4Pair]
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
`MinimalModelAt2`, and `ConductorExponentAtPrimeAbove2` stays opaque.
-/
theorem silverman_test_does_not_apply (E : FreyCurve4413) (hodd : E.c.natAbs % 2 = 1) :
    P2Exact (c4_Frey E.a E.b) 10 ∧ P2Exact (deltaGauss E) 18 ∧
      ¬ (10 < 4) ∧ ¬ (18 < 12) :=
  ⟨c4_p2_exact_ten E hodd, delta_p2_exact_eighteen E hodd, by decide, by decide⟩

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

end FreyCurve4413
