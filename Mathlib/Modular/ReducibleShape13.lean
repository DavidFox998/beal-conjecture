import Mathlib.Modular.LevelLowering4413
import Mathlib.Modular.GL2F13
import Mathlib.Modular.Cyclotomic13

open FreyCurve4413

/-!
# Strategy B: a reducible residual representation

Strategy A asks for a transvection in the image of `ρ̄_{E,13}` and then for
`SL₂`. It is blocked on `steinberg_prime_13_open`: no prime of multiplicative
reduction with `13 ∤ tateParameter` is constructed. `tate_param_13_dvd_of_coprime`
asks for the opposite divisibility at every odd prime divisor of `c`. If
`13 ∣ tateParameter` at every bad prime, that transvection does not exist and
strategy A is dead.

This file starts strategy B. It does not prove irreducibility
unconditionally and it does not produce a term of `RhoE13Open`.
`chars_unramified_above_13_open` is retracted: it asks for both cyclotomic
exponents to be divisible by `3`, and `complement_sum` says those same
integers sum to `1` modulo `12`, so the two divisibilities force `3 ∣ 1`.
`reducible_shape_contradicts_omega` is `False` from that inconsistent
package. The `False` is ex falso, not an irreducibility theorem.

`rho_E_13` is `GaloisRepresentation.unresolved`. There is no Galois group, no
Frobenius element, and no residual representation. The shape

```text
ρ̄^ss ≅ χ₁ ⊕ χ₂,    χ₁ χ₂ = cyclotomic character mod 13
```

is the open proposition `reducible_shape_13_open`. Everything after it is
conditional on that proposition or on a named bridge.

What is proved, as algebra in `ℤ[√-1]`, with no project axiom:

* The units are `1`, `-1`, `√(-1)`, `-√(-1)`. Each has fourth power `1`.
  For `n ≥ 3` the four units are distinct modulo `π ^ n`.
* A `π`-unit satisfies `z ^ (2 ^ m) ≡ 1 (mod π ^ (m + 1))`. The group of
  units modulo `π ^ n` is therefore a `2`-group.
* A multiplicative character of that group with values in `𝔽₁₃ˣ` has order
  dividing `4`. The only fourth roots in `𝔽₁₃` are `1`, `5`, `8`, `12`, and
  `5` has order exactly `4`, so the bound is the full `2`-primary part of the
  codomain.
* If two such values multiply to `t` and one of them is a fourth root, their
  sum is one of `1 + t`, `5 + 8 t`, `8 + 5 t`, `12 + 12 t`.

Class number `1` is not a theorem: `ℤ[√-1]` is not proved to be a UFD. The
identification of a Galois character unramified outside `{π}` with a
homomorphism of `(ℤ[i] / π ^ n)ˣ` trivial on the global units is
`ray_class_mod_pi_open`. The order bound does not use it.

The Artin exponent `FTameAtPi + SwanAtPi ∈ {10, 12}` is `pacetti_of_components`,
under `components_n_plus_five_open`. Splitting that exponent across `χ₁` and
`χ₂` is `artin_exponent_of_characters_open`. Unramifiedness at `p ∣ c`, given
`13 ∣ tateParameter`, is `inertia_trivial_of_tate_13_open`. The trace of an
upper-triangular extension of the two characters named by the shape is
`frobenius_trace_sum_open`, and it is a theorem of that shape. The sealed
integer `pointCountTrace` is not that trace: equating them at a norm that
misses `|c|` is `point_count_matches_shape_trace_open`. The Weil bound
`|a_𝔭| ≤ 2 √N(𝔭)` is `weil_bound_open`. A prime where the character
constraint leaves that range is `trace_outside_weil_open`. The live route is
the shape, that point-count identification, and the Weil bound. The
order-`12` packaging does not replace them.
-/

namespace ReducibleShape13

/-- `z` has a multiplicative inverse in `ℤ[√-1]`. -/
def IsGaussUnit (z : GaussInt) : Prop :=
  ∃ w, GaussInt.mul z w = GaussInt.one

theorem norm_one_of_isGaussUnit (z : GaussInt) (h : IsGaussUnit z) :
    GaussInt.norm z = 1 := by
  rcases h with ⟨w, hw⟩
  exact GaussInt.norm_eq_one_of_mul_norm_one z w
    (by rw [hw]; simp [GaussInt.norm, GaussInt.one])

theorem isGaussUnit_one : IsGaussUnit GaussInt.one :=
  ⟨GaussInt.one, GaussInt.mul_one GaussInt.one⟩

theorem isGaussUnit_neg_one : IsGaussUnit ⟨-1, 0⟩ :=
  ⟨⟨-1, 0⟩, by simp [GaussInt.mul, GaussInt.one]⟩

theorem isGaussUnit_i : IsGaussUnit ⟨0, 1⟩ :=
  ⟨⟨0, -1⟩, by simp [GaussInt.mul, GaussInt.one]⟩

theorem isGaussUnit_neg_i : IsGaussUnit ⟨0, -1⟩ :=
  ⟨⟨0, 1⟩, by simp [GaussInt.mul, GaussInt.one]⟩

/-- The unit group of `ℤ[√-1]` is `{±1, ±√(-1)}`. -/
theorem isGaussUnit_iff_four (z : GaussInt) :
    IsGaussUnit z ↔
      z = ⟨1, 0⟩ ∨ z = ⟨-1, 0⟩ ∨ z = ⟨0, 1⟩ ∨ z = ⟨0, -1⟩ := by
  constructor
  · intro h
    exact GaussInt.norm_one_units z (norm_one_of_isGaussUnit z h)
  · intro h
    rcases h with h | h | h | h
    · rw [h]; exact isGaussUnit_one
    · rw [h]; exact isGaussUnit_neg_one
    · rw [h]; exact isGaussUnit_i
    · rw [h]; exact isGaussUnit_neg_i

theorem gauss_unit_fourth (z : GaussInt) (h : IsGaussUnit z) :
    GaussInt.npow z 4 = GaussInt.one := by
  rcases (isGaussUnit_iff_four z).1 h with h | h | h | h
  · rw [h]; decide
  · rw [h]; decide
  · rw [h]; decide
  · rw [h]; decide

theorem not_piDivides_one : ¬ piDivides GaussInt.one := by
  simp [piDivides, GaussInt.one]

theorem piDivides_two : piDivides (GaussInt.ofInt 2) := by
  simp [piDivides, GaussInt.ofInt]

theorem piDivides_piPow_succ (k : Nat) : piDivides (piPow (k + 1)) := by
  rw [piPow_succ_right]
  exact (piDivides_mul (piPow k) pi).2 (Or.inr (by simp [piDivides, pi]))

theorem piDivides_add {z w : GaussInt} (hz : piDivides z) (hw : piDivides w) :
    piDivides (GaussInt.add z w) := by
  cases z with
  | mk xr xi =>
    cases w with
    | mk yr yi =>
      simp [piDivides, GaussInt.add] at hz hw ⊢
      have hsum : xr + yr + (xi + yi) = (xr + xi) + (yr + yi) := by omega
      rw [hsum, Int.add_emod, hz, hw]
      simp

theorem pi_dvd_sub_one (z : GaussInt) (hz : ¬ piDivides z) :
    piDivides (GaussInt.sub z GaussInt.one) := by
  cases z with
  | mk re im =>
    simp [piDivides, GaussInt.sub, GaussInt.one] at hz ⊢
    omega

theorem sub_add_cancel (z w : GaussInt) :
    GaussInt.add (GaussInt.sub z w) w = z := by
  cases z with
  | mk xr xi =>
    cases w with
    | mk yr yi =>
      simp [GaussInt.add, GaussInt.sub]

theorem one_add_one : GaussInt.add GaussInt.one GaussInt.one = GaussInt.ofInt 2 := by
  simp [GaussInt.add, GaussInt.one, GaussInt.ofInt]

theorem diff_of_squares (z : GaussInt) :
    GaussInt.sub (GaussInt.mul z z) GaussInt.one =
      GaussInt.mul (GaussInt.sub z GaussInt.one) (GaussInt.add z GaussInt.one) := by
  cases z with
  | mk x y =>
    simp [GaussInt.sub, GaussInt.mul, GaussInt.add, GaussInt.one]
    constructor <;> grind

/-- `z ^ (2 ^ m)`. -/
def sqPow (z : GaussInt) : Nat → GaussInt
  | 0 => z
  | m + 1 => GaussInt.mul (sqPow z m) (sqPow z m)

/-- A `π`-unit is congruent to `1` modulo `π`, and squaring raises the
valuation of `z - 1` by at least one. Iterating, `z ^ (2 ^ m) ≡ 1`
modulo `π ^ (m + 1)`. -/
theorem sqPow_pi_congr (z : GaussInt) (hz : ¬ piDivides z) (m : Nat) :
    ∃ t, GaussInt.mul t (piPow (m + 1)) =
      GaussInt.sub (sqPow z m) GaussInt.one := by
  induction m with
  | zero =>
    have hp : piDivides (GaussInt.sub z GaussInt.one) := pi_dvd_sub_one z hz
    refine ⟨piQuot (GaussInt.sub z GaussInt.one), ?_⟩
    have hmul := mul_pi_piQuot (GaussInt.sub z GaussInt.one) hp
    have hpi : piPow 1 = pi := by
      simp [piPow, GaussInt.npow, GaussInt.mul_one]
    rw [← hpi] at hmul
    simpa [sqPow] using hmul
  | succ m ih =>
    rcases ih with ⟨t, ht⟩
    let d := GaussInt.sub (sqPow z m) GaussInt.one
    have hd : GaussInt.mul t (piPow (m + 1)) = d := by
      simpa [d] using ht
    have hsq := diff_of_squares (sqPow z m)
    have hrestore : GaussInt.add d GaussInt.one = sqPow z m :=
      sub_add_cancel (sqPow z m) GaussInt.one
    have hplus : GaussInt.add (sqPow z m) GaussInt.one =
        GaussInt.add d (GaussInt.ofInt 2) := by
      rw [← hrestore, GaussInt.add_assoc]
      congr 1
    have hdpi : piDivides d := by
      rw [← hd]
      exact (piDivides_mul t (piPow (m + 1))).2
        (Or.inr (piDivides_piPow_succ m))
    have hsumpi : piDivides (GaussInt.add d (GaussInt.ofInt 2)) :=
      piDivides_add hdpi piDivides_two
    let s := piQuot (GaussInt.add d (GaussInt.ofInt 2))
    have hs : GaussInt.mul s pi = GaussInt.add d (GaussInt.ofInt 2) :=
      mul_pi_piQuot _ hsumpi
    refine ⟨GaussInt.mul t s, ?_⟩
    have hpow : piPow ((m + 1) + 1) = GaussInt.mul (piPow (m + 1)) pi :=
      piPow_succ_right (m + 1)
    calc
      GaussInt.mul (GaussInt.mul t s) (piPow (m + 1 + 1))
          = GaussInt.mul (GaussInt.mul t s) (GaussInt.mul (piPow (m + 1)) pi) := by
            rw [hpow]
      _ = GaussInt.mul (GaussInt.mul (GaussInt.mul t (piPow (m + 1))) s) pi :=
            mul_mul_comm_mid t s (piPow (m + 1)) pi
      _ = GaussInt.mul (GaussInt.mul d s) pi := by rw [hd]
      _ = GaussInt.mul d (GaussInt.mul s pi) := GaussInt.mul_assoc d s pi
      _ = GaussInt.mul d (GaussInt.add (sqPow z m) GaussInt.one) := by
            rw [hs, hplus]
      _ = GaussInt.sub (sqPow z (m + 1)) GaussInt.one := by
            simpa [sqPow, d] using hsq.symm

theorem not_div_of_piPow (z : GaussInt) (hz : z ≠ GaussInt.zero) {n : Nat}
    (hlt : vPi z < n) :
    ¬ ∃ t, GaussInt.mul t (piPow n) = z := by
  intro ⟨t, ht⟩
  have hle := vPi_ge_of_mul_piPow z t n ht hz
  omega

theorem vPi_two : vPi (GaussInt.ofInt 2) = 2 := by
  rcases p2_valuation_of_two_pow 1 with ⟨u, hu, hnu⟩
  have hcast : GaussInt.ofInt ((2 : Int) ^ 1) = GaussInt.ofInt 2 := by simp
  exact vPi_of_shape _ u (2 * 1) hnu (hcast ▸ hu)

theorem vPi_one_sub_i : vPi ⟨1, -1⟩ = 1 := by
  have hmul : GaussInt.mul ⟨0, -1⟩ (piPow 1) = ⟨1, -1⟩ := by
    simp [piPow, pi, GaussInt.npow, GaussInt.mul, GaussInt.one]
  have hnu : ¬ piDivides ⟨0, -1⟩ := by simp [piDivides]
  exact vPi_of_shape _ _ 1 hnu hmul

theorem vPi_neg_one_sub_neg_i : vPi ⟨-1, 1⟩ = 1 := by
  have hmul : GaussInt.mul ⟨0, 1⟩ (piPow 1) = ⟨-1, 1⟩ := by
    simp [piPow, pi, GaussInt.npow, GaussInt.mul, GaussInt.one]
  have hnu : ¬ piDivides ⟨0, 1⟩ := by simp [piDivides]
  exact vPi_of_shape _ _ 1 hnu hmul

theorem vPi_pi_one : vPi pi = 1 :=
  vPi_piPow 1

theorem vPi_neg_pi : vPi (GaussInt.neg pi) = 1 := by
  have hmul : GaussInt.mul (GaussInt.neg GaussInt.one) (piPow 1) = GaussInt.neg pi := by
    simp [piPow, GaussInt.npow, GaussInt.mul, GaussInt.one, GaussInt.neg]
  have hnu : ¬ piDivides (GaussInt.neg GaussInt.one) := by
    simp [piDivides, GaussInt.neg, GaussInt.one]
  exact vPi_of_shape _ _ 1 hnu hmul

theorem vPi_two_i : vPi ⟨0, 2⟩ = 2 := by
  have hpi : piPow 2 = ⟨0, 2⟩ := by
    simp [piPow, pi, GaussInt.npow, GaussInt.mul, GaussInt.one]
  rw [← hpi]
  exact vPi_piPow 2

/-- For `n ≥ 3` the four units remain distinct modulo `π ^ n`, so the
image of the global units in `(ℤ[i] / π ^ n)ˣ` still has four elements. -/
theorem four_units_distinct (n : Nat) (hn : 3 ≤ n) :
    (¬ ∃ t, GaussInt.mul t (piPow n) = GaussInt.sub ⟨1, 0⟩ ⟨-1, 0⟩) ∧
    (¬ ∃ t, GaussInt.mul t (piPow n) = GaussInt.sub ⟨1, 0⟩ ⟨0, 1⟩) ∧
    (¬ ∃ t, GaussInt.mul t (piPow n) = GaussInt.sub ⟨1, 0⟩ ⟨0, -1⟩) ∧
    (¬ ∃ t, GaussInt.mul t (piPow n) = GaussInt.sub ⟨-1, 0⟩ ⟨0, 1⟩) ∧
    (¬ ∃ t, GaussInt.mul t (piPow n) = GaussInt.sub ⟨-1, 0⟩ ⟨0, -1⟩) ∧
    (¬ ∃ t, GaussInt.mul t (piPow n) = GaussInt.sub ⟨0, 1⟩ ⟨0, -1⟩) := by
  have h2 : GaussInt.sub ⟨1, 0⟩ ⟨-1, 0⟩ = GaussInt.ofInt 2 := by
    simp [GaussInt.sub, GaussInt.ofInt]
  have hi : GaussInt.sub ⟨1, 0⟩ ⟨0, 1⟩ = ⟨1, -1⟩ := by
    simp [GaussInt.sub]
  have hni : GaussInt.sub ⟨1, 0⟩ ⟨0, -1⟩ = pi := by
    simp [GaussInt.sub, pi]
  have hmi : GaussInt.sub ⟨-1, 0⟩ ⟨0, 1⟩ = GaussInt.neg pi := by
    simp [GaussInt.sub, GaussInt.neg, pi]
  have hmn : GaussInt.sub ⟨-1, 0⟩ ⟨0, -1⟩ = ⟨-1, 1⟩ := by
    simp [GaussInt.sub]
  have hii : GaussInt.sub ⟨0, 1⟩ ⟨0, -1⟩ = ⟨0, 2⟩ := by
    simp [GaussInt.sub]
  refine ⟨?_, ?_, ?_, ?_, ?_, ?_⟩
  · rw [h2]
    exact not_div_of_piPow _ (by decide) (by rw [vPi_two]; omega)
  · rw [hi]
    exact not_div_of_piPow _ (by decide) (by rw [vPi_one_sub_i]; omega)
  · rw [hni]
    exact not_div_of_piPow _ (by decide : pi ≠ GaussInt.zero) (by rw [vPi_pi_one]; omega)
  · rw [hmi]
    exact not_div_of_piPow _ (by decide) (by rw [vPi_neg_pi]; omega)
  · rw [hmn]
    exact not_div_of_piPow _ (by decide) (by rw [vPi_neg_one_sub_neg_i]; omega)
  · rw [hii]
    exact not_div_of_piPow _ (by decide) (by rw [vPi_two_i]; omega)

theorem unit_npow_not_div (z : GaussInt) (hz : ¬ piDivides z) (k : Nat) :
    ¬ piDivides (GaussInt.npow z k) := by
  induction k with
  | zero =>
    simpa [GaussInt.npow] using not_piDivides_one
  | succ k ih =>
    rw [GaussInt.npow_succ]
    intro hdiv
    rcases (piDivides_mul z (GaussInt.npow z k)).1 hdiv with h | h
    · exact hz h
    · exact ih h

theorem sqPow_eq_npow (z : GaussInt) (m : Nat) :
    sqPow z m = GaussInt.npow z (2 ^ m) := by
  induction m with
  | zero =>
    simp [sqPow, GaussInt.npow, GaussInt.mul_one]
  | succ m ih =>
    rw [sqPow, ih]
    have h2 : 2 ^ (m + 1) = 2 ^ m * 2 := by
      rw [Nat.pow_succ, Nat.mul_comm]
    rw [h2, ← GaussInt.npow_npow]
    simp [GaussInt.npow, GaussInt.mul_one]

/-- A character of `(ℤ[i] / π ^ n)ˣ` with values in `𝔽₁₃`.

`χ` is multiplicative on `π`-units, sends `1` to `1`, and depends on `z`
only through its class modulo `π ^ n`. This is the unit-group side of a
character unramified outside `{π}`. It is not a character of a Galois group.
-/
structure PiUnitChar (n : Nat) where
  χ : GaussInt → Fin 13
  nonzero : ∀ z, ¬ piDivides z → χ z ≠ 0
  mul : ∀ z w, ¬ piDivides z → ¬ piDivides w →
    χ (GaussInt.mul z w) = χ z * χ w
  cong : ∀ z w, ¬ piDivides z → ¬ piDivides w →
    (∃ t, GaussInt.mul t (piPow n) = GaussInt.sub z w) → χ z = χ w
  one : χ GaussInt.one = 1

/-- Trivial on the four global units. The ray-class quotient is this kernel. -/
def IsRayClassChar (n : Nat) (ε : PiUnitChar n) : Prop :=
  ∀ z, IsGaussUnit z → ε.χ z = 1

theorem fin_pow_succ (a : Fin 13) (n : Nat) : a ^ (n + 1) = a ^ n * a := rfl

theorem fin_pow_zero (a : Fin 13) : a ^ 0 = 1 := rfl

theorem fin_pow_one (a : Fin 13) : a ^ 1 = a := by
  rw [show (1 : Nat) = 0 + 1 by decide, fin_pow_succ, fin_pow_zero, Fin.one_mul]

theorem fin_one_pow (n : Nat) : (1 : Fin 13) ^ n = 1 := by
  induction n with
  | zero => rfl
  | succ n ih => rw [fin_pow_succ, ih, Fin.mul_one]

theorem fin_pow_add (a : Fin 13) (m n : Nat) : a ^ (m + n) = a ^ m * a ^ n := by
  induction n with
  | zero =>
    rw [Nat.add_zero, fin_pow_zero, Fin.mul_one]
  | succ n ih =>
    rw [Nat.add_succ, fin_pow_succ, ih, fin_pow_succ, Fin.mul_assoc]

theorem fin_pow_mul (a : Fin 13) (m n : Nat) : a ^ (m * n) = (a ^ m) ^ n := by
  induction n with
  | zero =>
    rw [Nat.mul_zero, fin_pow_zero, fin_pow_zero]
  | succ n ih =>
    rw [Nat.mul_succ, fin_pow_add, ih, fin_pow_succ]

theorem char_npow {n : Nat} (ε : PiUnitChar n) (z : GaussInt) (hz : ¬ piDivides z)
    (k : Nat) : ε.χ (GaussInt.npow z k) = ε.χ z ^ k := by
  induction k with
  | zero =>
    simp [GaussInt.npow, ε.one]
  | succ k ih =>
    rw [GaussInt.npow_succ, ε.mul z (GaussInt.npow z k) hz (unit_npow_not_div z hz k),
      ih, fin_pow_succ, Fin.mul_comm]

theorem pow_eq_spow (a : Fin 13) (k : Nat) : a ^ k = GL2F13.spow a k := by
  induction k with
  | zero => rfl
  | succ k ih =>
    have hs : GL2F13.spow a (k + 1) = GL2F13.spow a k * a := rfl
    rw [fin_pow_succ, hs, ih]

theorem fin13_pow_twelve (a : Fin 13) (ha : a ≠ 0) : a ^ 12 = 1 := by
  have h13 : a ^ 13 = a := by
    rw [pow_eq_spow, GL2F13.fermat13]
  have hstep : a ^ 13 = a ^ 12 * a := fin_pow_succ a 12
  rw [hstep] at h13
  have hmul := congrArg (fun x : Fin 13 => x * GL2F13.inv a) h13
  rw [Fin.mul_assoc, GL2F13.mul_inv_cancel a ha, Fin.mul_one] at hmul
  exact hmul

theorem two_even_mod_three (k : Nat) : ∃ c : Nat, 2 ^ (2 * k) = 3 * c + 1 := by
  induction k with
  | zero => exact ⟨0, by decide⟩
  | succ k ih =>
    rcases ih with ⟨c, hc⟩
    refine ⟨4 * c + 1, ?_⟩
    calc
      2 ^ (2 * (k + 1)) = 2 ^ (2 * k + 2) := by
        have : 2 * (k + 1) = 2 * k + 2 := by omega
        rw [this]
      _ = 2 ^ (2 * k) * 2 ^ 2 := Nat.pow_add 2 (2 * k) 2
      _ = 2 ^ (2 * k) * 4 := by
        have : 2 ^ 2 = 4 := by decide
        rw [this]
      _ = (3 * c + 1) * 4 := by rw [hc]
      _ = 3 * (4 * c + 1) + 1 := by omega

/-- A value in `𝔽₁₃ˣ` of `2`-power order has order dividing `4`.

`𝔽₁₃ˣ` has order `12`, so the only `2`-power dividing that order is `4`.
-/
theorem fin13_two_pow_fourth (a : Fin 13) (k : Nat) (ha : a ≠ 0)
    (h : a ^ (2 ^ k) = 1) : a ^ 4 = 1 := by
  cases k with
  | zero =>
    have h1 : a = 1 := by
      have h' : a ^ 1 = 1 := by simpa using h
      rw [fin_pow_one] at h'
      exact h'
    rw [h1]
    decide
  | succ k =>
    cases k with
    | zero =>
      have h2 : a ^ 2 = 1 := by simpa using h
      have hsplit : a ^ 4 = a ^ 2 * a ^ 2 := by
        rw [show (4 : Nat) = 2 + 2 by decide, fin_pow_add]
      rw [hsplit, h2, Fin.one_mul]
    | succ j =>
      let b : Fin 13 := a ^ 4
      have hb3 : b ^ 3 = 1 := by
        rw [show b = a ^ 4 from rfl, ← fin_pow_mul]
        have h12 : a ^ (4 * 3) = a ^ 12 := by
          have : 4 * 3 = 12 := by decide
          rw [this]
        rw [h12]
        exact fin13_pow_twelve a ha
      have hidx : 2 ^ (j + 2) = 4 * 2 ^ j := by
        calc
          2 ^ (j + 2) = 2 ^ j * 2 ^ 2 := by
            rw [show j + 2 = j + 2 from rfl, Nat.pow_add]
          _ = 2 ^ j * 4 := by
            have : 2 ^ 2 = 4 := by decide
            rw [this]
          _ = 4 * 2 ^ j := Nat.mul_comm _ _
      have hb2 : b ^ (2 ^ j) = 1 := by
        rw [show b = a ^ 4 from rfl, ← fin_pow_mul, ← hidx]
        exact h
      rcases two_even_mod_three j with ⟨c, hc⟩
      have hsplit : 2 ^ (2 * j) = 2 ^ j * 2 ^ j := by
        rw [show 2 * j = j + j by omega, Nat.pow_add]
      have hb4 : b ^ (2 ^ (2 * j)) = 1 := by
        rw [hsplit, fin_pow_mul, hb2, fin_one_pow]
      have hb1 : b ^ (2 ^ (2 * j)) = b := by
        rw [hc, fin_pow_add, fin_pow_mul, hb3, fin_one_pow, Fin.one_mul, fin_pow_one]
      have hb : b = 1 := hb1.symm.trans hb4
      simpa [b] using hb

theorem sqPow_not_div (z : GaussInt) (hz : ¬ piDivides z) (m : Nat) :
    ¬ piDivides (sqPow z m) := by
  rw [sqPow_eq_npow]
  exact unit_npow_not_div z hz _

/-- The order divides `4`.

The congruence `sqPow_pi_congr` puts `z ^ (2 ^ (n - 1))` in the class of
`1` modulo `π ^ n` when `n ≥ 1`. A character constant on that class sends
the power to `1`. In `𝔽₁₃ˣ` a `2`-power order divides `4`. For `n = 0`
every `π`-unit is congruent to `1` modulo `π ^ 0 = 1`, so the character
is trivial.
-/
theorem piUnitChar_order_div_four {n : Nat} (ε : PiUnitChar n) (z : GaussInt)
    (hz : ¬ piDivides z) : ε.χ z ^ 4 = 1 := by
  cases n with
  | zero =>
    have hcong : ∃ t, GaussInt.mul t (piPow 0) = GaussInt.sub z GaussInt.one := by
      refine ⟨GaussInt.sub z GaussInt.one, ?_⟩
      simp [piPow, GaussInt.npow, GaussInt.mul_one]
    have hz1 := ε.cong z GaussInt.one hz not_piDivides_one hcong
    rw [hz1, ε.one]
    decide
  | succ n =>
    have hdiv := sqPow_pi_congr z hz n
    have hunit : ¬ piDivides (sqPow z n) := sqPow_not_div z hz n
    have hχ := ε.cong (sqPow z n) GaussInt.one hunit not_piDivides_one hdiv
    rw [sqPow_eq_npow, char_npow ε z hz (2 ^ n), ε.one] at hχ
    exact fin13_two_pow_fourth (ε.χ z) n (ε.nonzero z hz) hχ

theorem char_inv_cube {n : Nat} (ε : PiUnitChar n) (z : GaussInt)
    (hz : ¬ piDivides z) : ε.χ z * ε.χ z ^ 3 = 1 := by
  have h4 := piUnitChar_order_div_four ε z hz
  have hcomm : ε.χ z * ε.χ z ^ 3 = ε.χ z ^ 3 * ε.χ z := Fin.mul_comm _ _
  rw [hcomm, ← fin_pow_succ]
  exact h4

/-- The trivial character. It is a ray-class character. It is not
`reducible_shape_13_open`: the shape still asks for the semisimplification.
-/
def trivialChar (n : Nat) : PiUnitChar n where
  χ _ := 1
  nonzero _ _ := by decide
  mul _ _ _ _ := by decide
  cong _ _ _ _ _ := rfl
  one := rfl

theorem trivialChar_ray (n : Nat) : IsRayClassChar n (trivialChar n) :=
  fun _ _ => rfl

theorem fourth_root_not_0 : ((0 : Fin 13) ^ 4 = 1) → False := by
  decide

theorem fourth_root_1 : (1 : Fin 13) ^ 4 = 1 := by decide
theorem fourth_root_not_2 : ¬ (2 : Fin 13) ^ 4 = 1 := by decide
theorem fourth_root_not_3 : ¬ (3 : Fin 13) ^ 4 = 1 := by decide
theorem fourth_root_not_4 : ¬ (4 : Fin 13) ^ 4 = 1 := by decide
theorem fourth_root_5 : (5 : Fin 13) ^ 4 = 1 := by decide
theorem fourth_root_not_6 : ¬ (6 : Fin 13) ^ 4 = 1 := by decide
theorem fourth_root_not_7 : ¬ (7 : Fin 13) ^ 4 = 1 := by decide
theorem fourth_root_8 : (8 : Fin 13) ^ 4 = 1 := by decide
theorem fourth_root_not_9 : ¬ (9 : Fin 13) ^ 4 = 1 := by decide
theorem fourth_root_not_10 : ¬ (10 : Fin 13) ^ 4 = 1 := by decide
theorem fourth_root_not_11 : ¬ (11 : Fin 13) ^ 4 = 1 := by decide
theorem fourth_root_12 : (12 : Fin 13) ^ 4 = 1 := by decide

/-- The fourth roots in `𝔽₁₃ˣ` are `1`, `5`, `8`, and `12`. -/
theorem fourth_roots (u : Fin 13) (hu : u ≠ 0) (h : u ^ 4 = 1) :
    u = 1 ∨ u = 5 ∨ u = 8 ∨ u = 12 := by
  revert hu h
  refine GL2F13.fin13_cases
    (P := fun u => u ≠ 0 → u ^ 4 = 1 → u = 1 ∨ u = 5 ∨ u = 8 ∨ u = 12)
    ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_ u
  · intro h0 _
    exact absurd rfl h0
  · intro _ _; exact Or.inl rfl
  · intro _ h4; exact absurd h4 fourth_root_not_2
  · intro _ h4; exact absurd h4 fourth_root_not_3
  · intro _ h4; exact absurd h4 fourth_root_not_4
  · intro _ _; exact Or.inr (Or.inl rfl)
  · intro _ h4; exact absurd h4 fourth_root_not_6
  · intro _ h4; exact absurd h4 fourth_root_not_7
  · intro _ _; exact Or.inr (Or.inr (Or.inl rfl))
  · intro _ h4; exact absurd h4 fourth_root_not_9
  · intro _ h4; exact absurd h4 fourth_root_not_10
  · intro _ h4; exact absurd h4 fourth_root_not_11
  · intro _ _; exact Or.inr (Or.inr (Or.inr rfl))

/-- `5` has order `4` in `𝔽₁₃ˣ`, so "dividing `4`" is the full `2`-primary
part of the codomain. -/
theorem five_has_order_four :
    (5 : Fin 13) ^ 2 ≠ 1 ∧ (5 : Fin 13) ^ 4 = 1 := by
  decide

theorem inv_one : GL2F13.inv (1 : Fin 13) = 1 := by decide
theorem inv_five : GL2F13.inv (5 : Fin 13) = 8 := by decide
theorem inv_eight : GL2F13.inv (8 : Fin 13) = 5 := by decide
theorem inv_twelve : GL2F13.inv (12 : Fin 13) = 12 := by decide

/-- If `u` is a fourth root and `u * v = t` is not the statement here:
`v` is `t * u⁻¹`, and the sum `u + v` is one of four linear forms in `t`. -/
theorem trace_residue_four (u t : Fin 13) (hu : u ≠ 0) (h4 : u ^ 4 = 1) :
    u + t * GL2F13.inv u = 1 + t ∨
      u + t * GL2F13.inv u = 5 + 8 * t ∨
        u + t * GL2F13.inv u = 8 + 5 * t ∨
          u + t * GL2F13.inv u = 12 + 12 * t := by
  rcases fourth_roots u hu h4 with h | h | h | h
  · refine Or.inl ?_
    rw [h, inv_one, Fin.mul_one]
  · refine Or.inr (Or.inl ?_)
    rw [h, inv_five, Fin.mul_comm]
  · refine Or.inr (Or.inr (Or.inl ?_))
    rw [h, inv_eight, Fin.mul_comm]
  · refine Or.inr (Or.inr (Or.inr ?_))
    rw [h, inv_twelve, Fin.mul_comm]

/-- The second cyclotomic exponent. `a + complement a ≡ 1 (mod 12)`, which
is `χ₁ χ₂` equal to the cyclotomic character on exponents. -/
def complementExp (a : Fin 12) : Fin 12 :=
  ⟨(13 - a.val) % 12, Nat.mod_lt _ (by decide)⟩

theorem complement_sum (a : Fin 12) :
    (a.val + (complementExp a).val) % 12 = 1 := by
  have hlt : a.val < 12 := a.isLt
  by_cases h0 : a.val = 0
  · simp [complementExp, h0]
  · by_cases h1 : a.val = 1
    · simp [complementExp, h1]
    · have hge : 2 ≤ a.val := by omega
      have hlt2 : 13 - a.val < 12 := by omega
      have hmod : (13 - a.val) % 12 = 13 - a.val := Nat.mod_eq_of_lt hlt2
      have hsum : a.val + (13 - a.val) = 13 := by omega
      simp [complementExp, hmod, hsum]

/-- `u · t ^ a + u⁻¹ · t ^ (1 - a)`. The untwisted sum is the case `a = 0`. -/
def twistedTrace (u t : Fin 13) (a : Fin 12) : Fin 13 :=
  u * t ^ a.val + GL2F13.inv u * t ^ (complementExp a).val

theorem twistedTrace_zero (u t : Fin 13) :
    twistedTrace u t 0 = u + t * GL2F13.inv u := by
  have hv0 : (0 : Fin 12).val = 0 := rfl
  have hv1 : (complementExp 0).val = 1 := by
    simp [complementExp]
  rw [twistedTrace, hv0, hv1, fin_pow_zero, fin_pow_one, Fin.mul_one, Fin.mul_comm]

end ReducibleShape13

/-- The semisimplification isomorphism is not a theorem.

`rho_E_13` does not store characters. This predicate is sealed. It is not
an axiom, and `rfl` does not prove it. `reducible_shape_13_open` is the
proposition that a ray-class character and a cyclotomic exponent realize it.
-/
opaque RhoSemisimpleMatches (E : FreyCurve4413) (n : Nat)
    (ε : ReducibleShape13.PiUnitChar n) (exp : Fin 12) : Prop

/-- Residual inertia at an odd prime is not formalized.

Sealed. `inertia_trivial_of_tate_13_open` is the passage from
`13 ∣ tateParameter` to this predicate. Tate's Kummer sequence is not a
proof of it.
-/
opaque residualUnramifiedAt (E : FreyCurve4413) (p : Nat) : Prop

/-- Integer trace `a_𝔭` at a prime of norm `normP`.

Sealed. Not a sum of character values, and not a Weil bound. The equation
is hidden, so `0` is not available as a value.
-/
opaque pointCountTrace (E : FreyCurve4413) (normP : Nat) : Int

/-- Sum of the Artin conductors of the two diagonal characters, at `π`.

Sealed. `pacetti_of_components` computes `FTameAtPi + SwanAtPi`. It does
not compute this integer.
-/
opaque characterArtinSum (E : FreyCurve4413) (n : Nat)
    (ε : ReducibleShape13.PiUnitChar n) (exp : Fin 12) : Nat

/-- A Galois character unramified outside `{π}` matches a ray-class character.

Sealed. Class number `1` is not a theorem in this repository, and there is
no Galois group. `piUnitChar_order_div_four` does not use this predicate.
-/
opaque RayClassMatch (n : Nat) (ε : ReducibleShape13.PiUnitChar n) : Prop

/-- If `ρ̄_{E,13}` is reducible, then `ρ̄^ss ≅ χ₁ ⊕ χ₂` with
`χ₁ χ₂` the cyclotomic character mod `13`.

`rho_E_13` is unresolved, so the isomorphism is not stated about matrices.
The data that can be written here are a character of `(ℤ[i] / π ^ n)ˣ`
trivial on the four units, and an exponent `a ∈ ℤ/12ℤ`. The two diagonal
characters are then `ε · χ_cyc ^ a` and `ε⁻¹ · χ_cyc ^ (1 - a)`.
`complement_sum` is `a + (1 - a) ≡ 1 (mod 12)`. `RhoSemisimpleMatches` is
the missing isomorphism. This proposition does not produce `RhoE13Open`
and it is not irreducibility.
-/
def reducible_shape_13_open : Prop :=
  ∀ E : FreyCurve4413, E.a ≠ 0 → E.b ≠ 0 →
    E.a.natAbs.gcd E.b.natAbs = 1 →
      ∃ n, ∃ ε : ReducibleShape13.PiUnitChar n, ∃ exp : Fin 12,
        ReducibleShape13.IsRayClassChar n ε ∧
          RhoSemisimpleMatches E n ε exp

/-- `13 ∣ tateParameter` at `p ∣ c` makes residual inertia trivial.

For a Tate curve the inertia action on `13`-torsion has order
`13 / gcd(13, v(q))`. Divisibility makes that order `1`. The Kummer
sequence is not formalized. `multiplicative_at_dvd_c` does not prove this.
The proposition does not rewrite `OddPrimaryLevel` and it does not rewrite
`tateParameter`.
-/
def inertia_trivial_of_tate_13_open : Prop :=
  ∀ E : FreyCurve4413, E.a.natAbs.gcd E.b.natAbs = 1 →
    ∀ p : Nat, IsPrime p → p ≠ 2 → p ∣ E.c.natAbs →
      13 ∣ tateParameter E p → residualUnramifiedAt E p

/-- The Artin exponent at `π` is the sum of the conductors of `χ₁` and `χ₂`.

`pacetti_of_components` puts `FTameAtPi + SwanAtPi` in `{10, 12}` when the
component count is assumed. It does not distribute that sum across the two
characters of a reducible semisimplification. This proposition is that
distribution. It is not a theorem.
-/
def artin_exponent_of_characters_open : Prop :=
  ∀ E : FreyCurve4413, E.a.natAbs.gcd E.b.natAbs = 1 →
    ∀ n, ∀ ε : ReducibleShape13.PiUnitChar n, ∀ exp : Fin 12,
      RhoSemisimpleMatches E n ε exp →
        characterArtinSum E n ε exp = ConductorExponentAtPrimeAbove2 E

/-- Class field theory for the ray class group modulo a power of `π`.

The four units are a theorem. The class number is not. A character of
`Gal(K̄/K)` unramified outside `{π}` is not constructed; this proposition
says that every ray-class character arises that way. The order bound on
the unit-group side is `piUnitChar_order_div_four`.
-/
def ray_class_mod_pi_open : Prop :=
  ∀ n, ∀ ε : ReducibleShape13.PiUnitChar n,
    ReducibleShape13.IsRayClassChar n ε → RayClassMatch n ε

/-- `13` divides `a - r` in `ℤ`. Negative traces are allowed. -/
def IntCong13 (a : Int) (r : Fin 13) : Prop :=
  ∃ k : Int, a - Int.ofNat r.val = (13 : Int) * k

/-- Trace of the upper-triangular extension of the shape's two characters.

`reducible_shape_13_open` supplies a ray-class character `ε` and an exponent
`a`. The diagonal characters are `ε · χ_cyc ^ a` and `ε⁻¹ · χ_cyc ^ (1 - a)`.
On a `π`-unit the value `u = ε.χ z` satisfies `u ^ 4 = 1`. At cyclotomic
residue `t`, the diagonal entries are `u · t ^ a` and `u⁻¹ · t ^ (1 - a)`.
Their product is `t` when `t ≠ 0`, and the trace of any upper-triangular
matrix with that diagonal is their sum, which is `twistedTrace`. The
off-diagonal entry is the extension class; the trace does not see it.
`pointCountTrace` is not mentioned. That sealed integer is
`point_count_matches_shape_trace_open`.
-/
def frobenius_trace_sum_open : Prop :=
  reducible_shape_13_open →
    ∀ E : FreyCurve4413, E.a ≠ 0 → E.b ≠ 0 →
      E.a.natAbs.gcd E.b.natAbs = 1 →
        ∃ n, ∃ ε : ReducibleShape13.PiUnitChar n, ∃ exp : Fin 12,
          ReducibleShape13.IsRayClassChar n ε ∧
            RhoSemisimpleMatches E n ε exp ∧
              ∀ z, ¬ piDivides z →
                ∀ t : Fin 13, ∀ off : Fin 13,
                  ε.χ z ≠ 0 ∧
                    (ε.χ z) ^ 4 = 1 ∧
                      (t ≠ 0 →
                        (ε.χ z * t ^ exp.val) *
                            (GL2F13.inv (ε.χ z) *
                              t ^ (ReducibleShape13.complementExp exp).val) = t) ∧
                        GL2F13.trace
                            (GL2F13.Mat2.mk
                              (ε.χ z * t ^ exp.val)
                              off
                              0
                              (GL2F13.inv (ε.χ z) *
                                t ^ (ReducibleShape13.complementExp exp).val)) =
                          ReducibleShape13.twistedTrace (ε.χ z) t exp

/-- The sealed point count equals the shape's character sum.

`frobenius_trace_sum_open` does not mention `pointCountTrace`.
`RhoSemisimpleMatches` is an opaque proposition and does not store a
Frobenius element. This proposition is the missing identification: at a
positive norm that does not divide `|c|`, some `π`-unit is the class at
which `ε` is evaluated, and the sealed integer is congruent to
`twistedTrace` of that value. The fourth-power condition is not restated
here. It is the order bound on `ε`. At norm `5`, `5 ∤ |c|` is
`five_not_dvd_c_of_coprime`, so the antecedent is the coprime case.
-/
def point_count_matches_shape_trace_open : Prop :=
  ∀ E : FreyCurve4413, E.a ≠ 0 → E.b ≠ 0 →
    E.a.natAbs.gcd E.b.natAbs = 1 →
      ∀ n, ∀ ε : ReducibleShape13.PiUnitChar n, ∀ exp : Fin 12,
        RhoSemisimpleMatches E n ε exp →
          ∀ normP : Nat, 0 < normP → ¬ normP ∣ E.c.natAbs →
            ∃ z, ¬ piDivides z ∧
              IntCong13 (pointCountTrace E normP)
                (ReducibleShape13.twistedTrace (ε.χ z)
                  ⟨normP % 13, Nat.mod_lt _ (by decide)⟩ exp)

/-- `|a_𝔭| ≤ 2 √N(𝔭)`, written as `a ^ 2 ≤ 4 N` so that no square root is required.

Live hypothesis of the trace route. Not a theorem. `pointCountTrace` is
sealed. The statement quantifies over every positive norm, including norms
of bad reduction. The contradiction at norm `5` is applied only when
`5` misses `|c|`.
-/
def weil_bound_open : Prop :=
  ∀ E : FreyCurve4413, ∀ normP : Nat, 0 < normP →
    (pointCountTrace E normP).natAbs * (pointCountTrace E normP).natAbs ≤ 4 * normP

/-- RETRACTED. False as stated, not an open lemma.

The two integers are `exp.val` and `(complementExp exp).val`, the same pair
`complement_sum` adds. That sum is `1` modulo `12`, hence `1` modulo `3`.
`3 ∣ exp.val` and `3 ∣ (complementExp exp).val` would give `3 ∣ 1`
(`both_exponents_force_three_div_one`). Finite flat of weight `2` would
force the inertial exponents `0` and `1`. Those sum to `1` and do not give
order dividing `4`. The criterion `3 ∣ e` cannot be imposed on both
exponents at once. This definition is kept so the old hypothesis still has
a name. It is not an irreducibility input.
-/
def chars_unramified_above_13_open : Prop :=
  reducible_shape_13_open →
    ray_class_mod_pi_open →
      inertia_trivial_of_tate_13_open →
        ∀ E : FreyCurve4413, E.a ≠ 0 → E.b ≠ 0 →
          E.a.natAbs.gcd E.b.natAbs = 1 →
            ∀ n, ∀ ε : ReducibleShape13.PiUnitChar n, ∀ exp : Fin 12,
              ReducibleShape13.IsRayClassChar n ε →
                RhoSemisimpleMatches E n ε exp →
                  3 ∣ exp.val ∧
                    3 ∣ (ReducibleShape13.complementExp exp).val

/-- The character constraint forces a trace outside the Weil range.

Live route. The witness at norm `5` uses the shape and
`point_count_matches_shape_trace_open`. It does not use the inertia, Artin,
or ray-class antecedents. It is not `False`, it does not negate
`a ^ 4 + b ^ 4 = c ^ 13`, and it does not produce `RhoE13Open`.
-/
def trace_outside_weil_open : Prop :=
  reducible_shape_13_open →
    inertia_trivial_of_tate_13_open →
      artin_exponent_of_characters_open →
        ray_class_mod_pi_open →
          point_count_matches_shape_trace_open →
            ∀ E : FreyCurve4413, E.a ≠ 0 → E.b ≠ 0 →
              E.a.natAbs.gcd E.b.natAbs = 1 →
                ∃ normP : Nat, 0 < normP ∧
                  ¬ (pointCountTrace E normP).natAbs *
                      (pointCountTrace E normP).natAbs ≤ 4 * normP

/-- The character attached to a reducible shape has order dividing `4`.

Conditional on `reducible_shape_13_open`. Not irreducibility.
-/
theorem shape_forces_order_div_four
    (h : reducible_shape_13_open)
    (E : FreyCurve4413) (ha : E.a ≠ 0) (hb : E.b ≠ 0)
    (hcop : E.a.natAbs.gcd E.b.natAbs = 1) :
    ∃ n, ∃ ε : ReducibleShape13.PiUnitChar n, ∃ exp : Fin 12,
      RhoSemisimpleMatches E n ε exp ∧
        ReducibleShape13.IsRayClassChar n ε ∧
          ∀ z, ¬ piDivides z → ε.χ z ^ 4 = 1 := by
  rcases h E ha hb hcop with ⟨n, ε, exp, hray, hmatch⟩
  exact ⟨n, ε, exp, hmatch, hray,
    fun z hz => ReducibleShape13.piUnitChar_order_div_four ε z hz⟩

theorem fin_mul_pow (a b : Fin 13) (n : Nat) : (a * b) ^ n = a ^ n * b ^ n := by
  induction n with
  | zero =>
    rw [ReducibleShape13.fin_pow_zero, ReducibleShape13.fin_pow_zero,
      ReducibleShape13.fin_pow_zero, Fin.one_mul]
  | succ n ih =>
    rw [ReducibleShape13.fin_pow_succ, ih, ReducibleShape13.fin_pow_succ,
      ReducibleShape13.fin_pow_succ]
    grind

/-- Both cyclotomic exponents divisible by `3` force `2 ^ 4 = 1`.

`cyclotomic_pow_order_div_four` turns each divisibility into
`ord(2 ^ e) ∣ 4`. The product of the two powers is `2 ^ 1`, because
`complement_sum` is `a + (1 - a) ≡ 1 (mod 12)` and `2 ^ 12 = 1`. A product
of two elements of order dividing `4` still has order dividing `4`, so
`2 ^ 4 = 1`, which `omega_order_twelve` forbids.
-/
theorem not_three_div_complement (a : Fin 12)
    (h1 : 3 ∣ a.val) (h2 : 3 ∣ (ReducibleShape13.complementExp a).val) : False := by
  have hord := Cyc13.omega_order_twelve
  have h12 : (2 : Fin 13) ^ 12 = 1 := hord.1
  have hnot : (2 : Fin 13) ^ 4 ≠ 1 := hord.2.2.1
  have ha4 : ((2 : Fin 13) ^ a.val) ^ 4 = 1 :=
    (Cyc13.cyclotomic_pow_order_div_four a.val a.isLt).2 h1
  have hc4 : ((2 : Fin 13) ^ (ReducibleShape13.complementExp a).val) ^ 4 = 1 :=
    (Cyc13.cyclotomic_pow_order_div_four _ (ReducibleShape13.complementExp a).isLt).2 h2
  have hprod4 : ((2 : Fin 13) ^ a.val * (2 : Fin 13) ^ (ReducibleShape13.complementExp a).val) ^ 4 = 1 := by
    rw [fin_mul_pow, ha4, hc4, Fin.mul_one]
  generalize hs : a.val + (ReducibleShape13.complementExp a).val = s
  have hmod : s % 12 = 1 := by
    rw [← hs]
    exact ReducibleShape13.complement_sum a
  have hrepr := Nat.div_add_mod s 12
  rw [hmod] at hrepr
  have hsplit : s = 12 * (s / 12) + 1 := hrepr.symm
  have hpows : (2 : Fin 13) ^ s = 2 := by
    rw [hsplit, ReducibleShape13.fin_pow_add, ReducibleShape13.fin_pow_mul, h12,
      ReducibleShape13.fin_one_pow, Fin.one_mul, ReducibleShape13.fin_pow_one]
  have hsumpow : (2 : Fin 13) ^ a.val * (2 : Fin 13) ^ (ReducibleShape13.complementExp a).val =
      (2 : Fin 13) ^ s := by
    rw [← hs, ReducibleShape13.fin_pow_add]
  rw [hsumpow, hpows] at hprod4
  exact hnot hprod4

/-- Both cyclotomic exponents divisible by `3` force `3 ∣ 1`.

`complement_sum` is `(e₁ + e₂) % 12 = 1`, so `e₁ + e₂ = 12 q + 1`.
The same integers are the ones `chars_unramified_above_13_open` divides by
`3`, and `3 ∣ e₁` together with `3 ∣ e₂` gives `3 ∣ (e₁ + e₂)`.
`Nat.dvd_add_right` then sends that divisibility onto the remainder `1`.
-/
theorem both_exponents_force_three_div_one (a : Fin 12)
    (h1 : 3 ∣ a.val) (h2 : 3 ∣ (ReducibleShape13.complementExp a).val) :
    3 ∣ 1 := by
  obtain ⟨k1, hk1⟩ := h1
  obtain ⟨k2, hk2⟩ := h2
  have hmod := ReducibleShape13.complement_sum a
  have hrepr := Nat.div_add_mod (a.val + (ReducibleShape13.complementExp a).val) 12
  rw [hmod] at hrepr
  have hs : a.val + (ReducibleShape13.complementExp a).val =
      12 * ((a.val + (ReducibleShape13.complementExp a).val) / 12) + 1 := hrepr.symm
  rw [hk1, hk2] at hs
  have hadd : 3 * k1 + 3 * k2 = 3 * (k1 + k2) := by omega
  rw [hadd] at hs
  have hq : 12 * ((3 * (k1 + k2)) / 12) =
      3 * (4 * ((3 * (k1 + k2)) / 12)) := by omega
  have hdvdSum : 3 ∣ 12 * ((3 * (k1 + k2)) / 12) + 1 := by
    rw [← hs]
    exact ⟨k1 + k2, rfl⟩
  have hdvd12 : 3 ∣ 12 * ((3 * (k1 + k2)) / 12) := by
    rw [hq]
    exact ⟨4 * ((3 * (k1 + k2)) / 12), rfl⟩
  exact (Nat.dvd_add_right hdvd12).mp hdvdSum

theorem not_both_exponents_div_three (a : Fin 12)
    (h1 : 3 ∣ a.val) (h2 : 3 ∣ (ReducibleShape13.complementExp a).val) : False := by
  have hthree : 3 ∣ 1 := both_exponents_force_three_div_one a h1 h2
  have hnot : ¬ 3 ∣ 1 := by decide
  exact hnot hthree

/-- VACUOUS. Valid ex falso, not an irreducibility result.

`chars_unramified_above_13_open` concludes that both cyclotomic exponents
are divisible by `3`. `complement_sum` says those same integers sum to `1`
modulo `12`. The joint hypotheses imply `3 ∣ 1`. The `False` below is that
arithmetic, not a proof that the residual representation is irreducible.
-/
theorem reducible_shape_contradicts_omega
    (hshape : reducible_shape_13_open)
    (hray : ray_class_mod_pi_open)
    (hinertia : inertia_trivial_of_tate_13_open)
    (h13 : chars_unramified_above_13_open)
    (E : FreyCurve4413) (ha : E.a ≠ 0) (hb : E.b ≠ 0)
    (hcop : E.a.natAbs.gcd E.b.natAbs = 1) : False := by
  rcases hshape E ha hb hcop with ⟨n, ε, exp, hrayc, hmatch⟩
  have hdiv := h13 hshape hray hinertia E ha hb hcop n ε exp hrayc hmatch
  exact not_both_exponents_div_three exp hdiv.1 hdiv.2

/-- Under the component count and the Artin bridge, the character-conductor
sum equals `FTameAtPi + SwanAtPi` and that integer lies in `{10, 12}`.

`pacetti_of_components` is the second conjunct. The first conjunct is the
open `artin_exponent_of_characters_open`, not a computation.
-/
theorem character_sum_matches_pacetti
    (hcomp : FreyCurve4413.components_n_plus_five_open)
    (hartin : artin_exponent_of_characters_open)
    (E : FreyCurve4413) (hcop : E.a.natAbs.gcd E.b.natAbs = 1)
    (n : Nat) (ε : ReducibleShape13.PiUnitChar n) (exp : Fin 12)
    (hmatch : RhoSemisimpleMatches E n ε exp) :
    characterArtinSum E n ε exp = ConductorExponentAtPrimeAbove2 E ∧
      ExponentIn1012 (ConductorExponentAtPrimeAbove2 E) := by
  exact ⟨hartin E hcop n ε exp hmatch, pacetti_of_components hcomp E hcop⟩
