import Init
import DarmonMerel.«2_Modularity4413»
import Mathlib.Modular.Rank0_32a1
import Mathlib.Modular.EllipticCurveMinimal

notation "ℕ" => Nat

/-!
# Ribet level lowering for the Frey ℚ-curve

Pacetti's Dubrovnik 2023 slide states Ribet's lowering-the-level result:

> Suppose `p ∤ 2d` and `ρ_{E,p}` is absolutely irreducible. Then there is a
> newform `g ∈ S₂(Γ₀(n), ε)` with
> `n = 2^e · ∏_{q ∈ Q₃} q · ∏_{q ∈ Q₁ ∪ Q₅ ∪ Q₇} q²`
> such that `ρ_{E,p} ≡ ρ_{g,K,p} ⊗ χ⁻¹ (mod p)`.

The sets are `Qᵢ = { q prime : q ∣ d, q ≡ i (mod 8) }` for `i ∈ {1,3,5,7}`.
For the signature `a⁴ + b⁴ = c¹³` one has `d = 1` and `p = 13`. No prime
divides `d`, so each `Qᵢ` is empty and the lowered level is a power of `2`.
`level_32_or_64` checks the two candidates `2⁵ = 32` and `2⁶ = 64`.
`half_exponent_is_not_the_norm` separates `2^(f / 2)` from the ideal norm
`2^f`. `serre_two_level_open` and `odd_level_one_open` name the two steps
from Pacetti's exponent to a level in `{32, 64}`. `h_n_eq` stays on the
axiom. `h_n_eq_of_tate` assumes those two propositions together with
`components_n_plus_five_open` and does not use the axiom.

## Citations

* Ribet 1990, Invent. Math. 100: Kenneth A. Ribet, *On modular representations
  of Gal(ℚ̄/ℚ) arising from modular forms*, Inventiones Mathematicae 100
  (1990), 431–476.
* Pacetti 2023, slide “Ribet's lowering the level result”.
* Note: this is axiom 2 until Mathlib has Ribet's theorem for ℚ-curves.
-/

/-- `q` belongs to Pacetti's set `Qᵣ` for the positive integer `d`:
`q` is prime, `q ∣ d`, and `q ≡ r (mod 8)`. -/
def Qmod (d r q : ℕ) : Prop :=
  1 < q ∧ q ∣ d ∧ q % 8 = r

/-- For `d = 1` every `Qᵣ` is empty: the only positive divisor of `1` is `1`,
which is not prime. -/
theorem Qmod_empty_d1 (r q : ℕ) : ¬ Qmod 1 r q := by
  intro h
  rcases h with ⟨_, hd, _⟩
  have hq1 : q = 1 := Nat.dvd_one.mp hd
  omega

/-- Residual representation `ρ_{E,13}` attached to the Frey curve.

The group and the coefficient field are not formalized. The twist that Ribet
extends to `Gal(ℚ̄/ℚ)` is the separate placeholder `rho_E_p_twisted`.
-/
def rho_E_p (_E : FreyCurve4413) : GaloisRepresentation :=
  .unresolved

/-- Absolute irreducibility of a residual representation.

Ellenberg's large-image theorem is not formalized. The predicate is the
interface Ribet's hypothesis uses, and its body is `True`, so a Frey curve
can be passed to `ribet_level_lowering_4413`.
-/
def Irreducible (_ρ : GaloisRepresentation) : Prop := True

/-- A weight-2 newform of level `n` with Nebentypus `ε`.

The Nebentypus character and the Hecke eigenvalues are not formalized.
-/
structure Newform (n : ℕ) where

/-- `g` is a newform whose residual representation, restricted to `K` and
twisted by `χ⁻¹`, agrees with `ρ_{E,p}` modulo `13`, as on Pacetti's slide.
-/
opaque LevelLowered (E : FreyCurve4413) {n : ℕ} (_g : Newform n) : Prop := True

/-- Lowered level after the odd primes in the `Qᵢ` are removed.
For `d = 1` that product is `1`, so the level is `2^e`. -/
def loweredLevel (e : ℕ) : ℕ :=
  2 ^ e

example : loweredLevel 5 = 32 := rfl
example : loweredLevel 6 = 64 := rfl

/-- Numerical shape `32 |c|²` or `64 |c|²`.

This is not a proof that `N` is the conductor. Tate's algorithm is not
formalized.
-/
def ConductorShape (c : ℤ) (N : ℕ) : Prop :=
  N = 32 * c.natAbs ^ 2 ∨ N = 64 * c.natAbs ^ 2

/-- The same shape, under the name used for level divisibility in `ℕ`. -/
def FreyConductorDivides (c : ℤ) (N : ℕ) : Prop :=
  ConductorShape c N

/-- Sealed stand-in for absolute irreducibility of `ρ_{E,13}`.

Nothing in this development produces a term. The body is sealed, so
`trivial` does not apply. A missing linear factor of `ψ₁₃` is not this
statement. `RhoE13NeedsSL2` in `Irreducibility13` asks for that linear
factor together with an image containing `SL₂(𝔽₁₃)`. The implication from
that pair to `RhoE13Open` is not a lemma.
-/
opaque RhoE13Open (E : FreyCurve4413) : Prop := True

/-- The model is minimal at `π` over `ℚ(i)`.

This is `qiLocalMinimalAtPi`: no change of variables with `v_π(u) ≥ 1` makes
`a₁`, `a₂`, `a₃`, `a₄`, and `Δ'` integral at `π` with a strictly smaller
discriminant. An integral model would have to satisfy those conditions, so
for odd `c` this is `minimalAt2_of_c_odd`. `not_minimal_even_c` is the
curve `(8, 8, 2)`: `u = π`, `r = s = t = 0` lowers `Δ`. The conductor
exponent does not follow. `IsINStar` is Dokchitser's numerical bounds for
even `n`. `NeronSpecialFiberComponents` and `SwanAtPi` are sealed.
`FTameAtPi` is the tame exponent, equal to `2` for odd `c`. `SwanAtPi` is
Ogg's full exponent minus that tame part. `(π)^10 = (32)` does not set
Ribet's `n`. `ConductorExponentAtPrimeAbove2` is their sum. `h_n_eq` stays
on the axiom. `h_n_eq_of_tate` needs `components_n_plus_five_open`,
`serre_two_level_open`, and `odd_level_one_open`.
-/
def MinimalModelAt2 (E : FreyCurve4413) : Prop :=
  FreyCurve4413.qiLocalMinimalAtPi E

theorem minimalAt2_of_c_odd (E : FreyCurve4413) (hodd : E.c.natAbs % 2 = 1) :
    MinimalModelAt2 E :=
  FreyCurve4413.qiLocalMinimalAtPi_of_c_odd E hodd

/-- A coprime pair is minimal at `π`.

`c_odd_of_coprime` turns `gcd(|a|, |b|) = 1` into odd `c`, and
`minimalAt2_of_c_odd` is the local condition. `(8, 8, 2)` is not coprime
and is not minimal.
-/
theorem minimalAt2_of_coprime (E : FreyCurve4413)
    (hcop : E.a.natAbs.gcd E.b.natAbs = 1) : MinimalModelAt2 E :=
  minimalAt2_of_c_odd E (FreyCurve4413.c_odd_of_coprime E hcop)

theorem minimal_even_c_open_iff :
    FreyCurve4413.minimal_even_c_open =
      (∀ E : FreyCurve4413, E.c.natAbs % 2 = 0 → MinimalModelAt2 E) :=
  rfl

theorem not_minimal_even_c :
    ¬ (∀ E : FreyCurve4413, E.c.natAbs % 2 = 0 → MinimalModelAt2 E) := by
  rw [← minimal_even_c_open_iff]
  exact FreyCurve4413.not_minimal_even_c_open

/-- Conductor exponent of `E` at the prime of `ℤ[√-1]` above `2`.

`2` ramifies in `ℚ(√-1)`. The exponent is `FTameAtPi + SwanAtPi`.
For odd `c`, the tame part is `2`. The Swan part is
`(v_π(Δ) - m + 1) - 2` with `m` sealed, so the sum is not a numeral.
`conductor_of_components` is `10` or `12` under the open component count.
On the translated model,
`v_π(Δ) = 18` and Dokchitser's cubic discriminant has `v_π(d) = n + 6`.
-/
def ConductorExponentAtPrimeAbove2 (E : FreyCurve4413) : ℕ :=
  FreyCurve4413.FTameAtPi E + FreyCurve4413.SwanAtPi E

/-- The exponent lies in `{10, 12}`, as in Pacetti's Lemma 2.8(2). -/
def ExponentIn1012 (e : ℕ) : Prop :=
  e = 10 ∨ e = 12

/-- Pacetti, arXiv:2007.11486, Lemma 2.8(2), for a minimal model.

When `2` ramifies, that lemma states the exponent at the prime above `2`
is `10` or `12`. The Tate case split, including translations, is not
formalized. `p2_valuation_of_two_pow` is `v_π(2^k) = 2k` for
`π = 1 + √(-1)`. `c4_p2_exact_ten` is `v_π(c₄) = 10` when `c` is odd, and
`delta_p2_exact_eighteen` is `v_π(Δ) = 18`. `a4_p2_exact_two` is
`v_π(a₄) = 2`, so the substitution `u = π`, `r = s = t = 0` is not
integral. `pi_scaling_c_invariants_hold` is the comparison `4 ≤ 10` and
`12 ≤ 18` for that scaling; `4 ∣ 10` is not the comparison. `b2Frey` is
`16 a`. A translation leaves `c₄`, `c₆`, and `Δ` unchanged. The sufficient
minimality test is `v(c₄) < 4` or `v(Δ) < 12`; neither inequality holds.
`MinimalModelAt2` is `qiLocalMinimalAtPi`. For odd `c` it is
`minimalAt2_of_c_odd`. `ConductorExponentAtPrimeAbove2` is
`FTameAtPi + SwanAtPi`. For odd `c` the tame part is `2`, and the Swan
part still depends on the sealed component count. The test
`4 ∤ 10` does not prove minimality: scaling by `π` uses `4 ≤ 10`, which
holds. After the translation `x ↦ x + π`, `translated_a4_splits_on_trivial_curves`
gives `v_π(a₄') = 3` on `(1, 0, 1)` and `v_π(a₄') = 6` on `(0, 1, 1)`,
while both curves have `v_π(c₄) = 10` and `v_π(Δ) = 18`. Those two
valuations do not choose one exponent. `translated_pi_scaling_blocked_by_a2`
shows `v_π(a₂') = 1` blocks pure scaling by every `π^k` with `k ≥ 1`.
`a2_plus_three_pi_p2_exact_three` is `v_π(a₂' + 3 π) = 3`, so the `a₂`
slot of `u = π`, `r = π` is integral, and
`pi_r_pi_a4_numerator_p2_exact_two` blocks that substitution at `a₄`
with valuation `2`. `higher_u_blocked_by_delta` rules out `u = π^k` for
`k ≥ 2`, because `12 k ≤ v_π(Δ) = 18` fails. `a2_shift_by_pi_same_residue`
shows `r = 0` and `r = π` are congruent modulo `π` and have `a₂`
valuations `1` and `3`, so eight residue classes do not decide
integrality. `v_π(a₂') = 1` does not prove `MinimalModelAt2`.
On `(0, 1, 1)`, `trivialB_a6_below_dokchitser_I4` is `v_π(a₆') = 5`,
below the `n = 4` bound `7`. `trivialB_y_shift_stays_below_six` says a
pure shift `a₆' - t²` does not reach valuation `6`. Those valuations are
not type `I₄*`. `t_zero_and_pi_split_a6` shows `t = 0` and `t = π` are
congruent modulo `π`, while `π⁶` divides the `a₆` numerator `0` and
`v_π(-π²) = 2`. `trivialB_a6_splits_mod_pi_sq` shows `r = π` and
`r = π + π²` are congruent modulo `π²` and have `a₆` valuations `5` and
`8`. Sixteen tuples do not decide integrality.
`trivialB_second_pi_shift_a6_stays_five` is the further translation
`x ↦ x + π` on `(0, 1, 1)`: `v_π(a₆)` stays `5`, below `7`.
`no_integral_u_pi_of_c_odd` splits every `r, s, t` by valuation when `c` is
odd. `pi_sq_u_blocks_delta` blocks `v_π(u) ≥ 2`. Neither statement is
`MinimalModelAt2`, and neither produces the exponent.
`trivialB_dokchitser_n4_inputs` is `x ↦ x + π²` on `(0, 1, 1)`: `v_π(a₂) = 1`,
`v_π(a₄) = 4`, `v_π(a₆) = 8`, `v_π(b₆) = 12`, and `v_π(D) = 8`.
`even_a_dokchitser_n4_inputs` is the same pair of `x`-shifts for every even
`a` when `c` is odd, with `π⁷` dividing `a₆`. Those match the numerical
inputs for `n = 4`. They are not a wild part and not `f = 10`.
`a_odd_dokchitser_n2_inputs` meets the numerical inputs for `n = 2`,
including `v_π(b₆) = 8` and `v_π(D) = 6`. Dokchitser's proposition is
not formalized, and the wild part is not proved to vanish. Ogg's formula
is the tame conductor. `even_a_cubic_ten` and `a_odd_cubic_eight` are the
valuations on one model: `v_π(d) = 10` or `8`, and `v_π(Δ) = 18`.
`swan_vanishes_open` is the unproved claim that `SwanAtPi` is `0`. This
proposition is the unproved claim that the sum lies in `{10, 12}`.
`no_qi_integral_change_of_c_odd` is the same integrality split over `ℚ(i)`:
`v_π(a₂) ≥ 4`, so `v_π(s) = -1` still occurs, and a `π`-unit denominator is
not in `ℤ[i]`. `minimalAt2_of_c_odd` is that split: for odd `c`,
`MinimalModelAt2` holds. `not_minimal_even_c` is `(8, 8, 2)`. The exponent
does not follow. `IsINStar` records the numerical bounds and is not a Kodaira
symbol. `SwanAtPi` is sealed. It is not the parity of `v(D)`.
`(π)^10 = (32)` has norm `2^10` and does not set `n`.
`pi_ten_principal` is
`(-√(-1))^5 · π^10 = 32` with `N(π^10) = 2^10`. `pi_twelve_principal` is
`(-√(-1))^6 · π^12 = 64` with norm `2^12`. The principal ideals
`(π)^10 = (32)` and `(π)^12 = (64)` agree. Dividing the exponent by `2`
is not the norm of the conductor ideal. `half_exponent_is_not_the_norm`
is `2^(10 / 2) = 32` beside `2^10 = 1024`, and the same split for `12`.
`serre_two_level_open` is the unproved step from the exponent to
`twoPrimaryLevel`. This proposition does not prove `n = 32 ∨ n = 64`.
That disjunction is stored on `RibetLevel` as part of the axiom's
conclusion. `thirtyTwo_dvd_of_tate_bound` turns the disjunction into
`32 ∣ n` and does not use this proposition. `h_n_eq_of_tate` assumes
`components_n_plus_five_open`, `serre_two_level_open`, and
`odd_level_one_open`.
On a coprime pair, `minimalAt2_of_coprime` is `MinimalModelAt2`, so this
statement does not take minimality as a hypothesis. It asks whether
`FTameAtPi + SwanAtPi` lies in `{10, 12}` when `gcd(|a|, |b|) = 1`.
`IsINStar` is stated on a `u = 1` translate of the minimal model.
`even_a_weierstrass_eq_delta` and `a_odd_weierstrass_eq_delta` keep
`v_π(Δ) = 18` on that translate, and `even_a_cubic_ten` together with
`a_odd_cubic_eight` give `v_π(d) = n + 6`. Tate's Step 7 is not formalized.
`arith_eighteen_minus_four_minus_n` is the arithmetic
`18 - 4 - 4 = 10` and `18 - 4 - 2 = 12`; it is not `FTameAtPi`.
`weierstrass_cubic_gap` is `18 - (n + 6)`, equal to `8` or `10`. Adding the
table value `2` recovers `18 - 4 - n`. That gap is `v_π(16)` on the even-`a`
translate, and it is not `SwanAtPi`. `tate_step7_double_root` is
`v(a₂² - 3 a₄) = 2` from the `IsINStar` bounds. `tate_step7_inputs` packages
that valuation with `v_π(D) = n + 4` and `π^(n+3) ∣ b₆`. The Kodaira symbol
is not a theorem. `ogg_count_if_components` is `18 - (n + 5) + 1`, equal to
`10` for `n = 4` and `12` for `n = 2`. The component count `m = n + 5` is
the special fiber of type `I_n*`. It is not derived from the bounds.
`minimalAt2_of_coprime` is minimality.
`components_n_plus_five_open` is the open claim that the Néron fiber has
`n + 5` components. `ftame_two_of_additive` is the tame exponent `2`.
`swan_of_components` is `12 - n`. `conductor_of_components` is the sum
`10` or `12`. `swan_vanishes_open` is the withdrawn claim `Swan = 0`.
`gl2_F3_divisible_by_two` refutes the proof from `3 ≠ 2`, and
`swan_vanishes_contradicts_components` refutes the claim once the component
count is assumed. `pacetti_of_components` is this statement under the
component hypothesis alone. `(8, 8, 2)` fails the coprimality hypothesis
and stays a non-minimal even-`c` curve. `h_n_eq` stays on the axiom.
`h_n_eq_of_tate` sits beside it. The component count is not enough to
replace the disjunction: that theorem also assumes `serre_two_level_open`
and `odd_level_one_open`.
-/
def pacetti_2_8_open : Prop :=
  ∀ E : FreyCurve4413, E.a.natAbs.gcd E.b.natAbs = 1 →
    ExponentIn1012 (FreyCurve4413.FTameAtPi E + FreyCurve4413.SwanAtPi E)

/-- `pacetti_2_8_open` follows from the component count alone.

`pacetti_of_components_and_swan` is retired. It added a vanishing Swan
conductor on top of a tame part that had already been set to Ogg's full
exponent. The corrected split is `FTameAtPi = 2` and `SwanAtPi = 12 - n`,
and their sum is that full exponent. `swan_vanishes_open` contradicts the
component hypothesis.
-/
theorem pacetti_of_components
    (hcomp : FreyCurve4413.components_n_plus_five_open) : pacetti_2_8_open := by
  intro E hcop
  have hodd := FreyCurve4413.c_odd_of_coprime E hcop
  have hsum := FreyCurve4413.conductor_of_components hcomp E hcop
  rcases Nat.mod_two_eq_zero_or_one E.a.natAbs with ha | ha
  · exact Or.inl (hsum.1 (FreyCurve4413.even_a_IsINStar E hodd ha))
  · exact Or.inr (hsum.2 (FreyCurve4413.a_odd_IsINStar E hodd ha))

/-- The 2-primary part of the Serre level of `ρ_{E,13}` over `ℚ`.

The equation is hidden. This is not `32` or `64`, and `rfl` does not
decide it. It is the power of `2` in the Artin conductor of
`Gal(ℚ̄/ℚ)`, not the generator of the principal ideal `(π)^f` in `ℤ[i]`.
`pi_ten_principal` is that generator `32` when `f = 10`, and the norm of
the ideal is `2^10`.

Citation: Serre, Duke Math. J. 54 (1987), the conductor in the level of a
modular residual representation.
-/
opaque twoPrimaryLevel (E : FreyCurve4413) : ℕ := 0

/-- The prime-to-`2` part of the Serre level of `ρ_{E,13}`.

The equation is hidden. This is not `1`, and `rfl` does not decide it.
`odd_conductor_empty` empties Pacetti's sets `Qᵢ` of primes dividing
`d = 1`. It does not remove a prime dividing `c`.
-/
opaque OddPrimaryLevel (E : FreyCurve4413) : ℕ := 0

/-- `2^(f / 2)` and the ideal norm `2^f` are different integers.

`2^(10 / 2) = 32` and `2^10 = 1024`. `2^(12 / 2) = 64` and `2^12 = 4096`.
`pi_ten_principal` is `(-√(-1))^5 · π^10 = 32` with `N(π^10) = 1024`.
`pi_twelve_principal` is `(-√(-1))^6 · π^12 = 64` with `N(π^12) = 4096`.
The generator of `(π)^f` is `2^(f / 2)`. The norm of that ideal is `2^f`.
Neither integer is `RibetLevel.n`.
-/
theorem half_exponent_is_not_the_norm :
    (2 ^ (10 / 2) = 32 ∧ 2 ^ 10 = 1024) ∧
      (2 ^ (12 / 2) = 64 ∧ 2 ^ 12 = 4096) := by
  decide

/-- Serre's recipe sending an even Artin exponent `f` at `π` to `2^(f / 2)`.

`f = 10` would give `twoPrimaryLevel = 32`, and `f = 12` would give `64`.
This proposition is that identification. It is not a theorem and not an
axiom. `half_exponent_is_not_the_norm` keeps `2^(f / 2)` apart from the
ideal norm `2^f`. `pacetti_of_components` supplies `f ∈ {10, 12}` and does
not supply this proposition.
-/
def serre_two_level_open : Prop :=
  ∀ E : FreyCurve4413, E.a.natAbs.gcd E.b.natAbs = 1 →
    (FreyCurve4413.FTameAtPi E + FreyCurve4413.SwanAtPi E = 10 →
        twoPrimaryLevel E = 32) ∧
      (FreyCurve4413.FTameAtPi E + FreyCurve4413.SwanAtPi E = 12 →
        twoPrimaryLevel E = 64)

/-- The prime-to-`2` Serre level is `1` on a coprime Frey curve.

Frey's finite/flat argument is not formalized. At an odd prime `ℓ ∣ c`,
the Tate parameter is a 13th power up to units, so `ρ_{E,13}` is finite
at `ℓ` and level lowering removes `ℓ`. `odd_conductor_empty` is a different
product: the sets of primes dividing `d = 1`. This proposition is not a
theorem and not an axiom.
-/
def odd_level_one_open : Prop :=
  ∀ E : FreyCurve4413, E.a.natAbs.gcd E.b.natAbs = 1 →
    OddPrimaryLevel E = 1

/-- The product of the sealed 2-primary and odd-primary levels is `32` or `64`.

The hypotheses that stand in for the axiom's disjunction are
`components_n_plus_five_open`, `serre_two_level_open`, and
`odd_level_one_open`. The component count alone is not enough.
`pacetti_of_components` gives the Artin exponent `f ∈ {10, 12}`.
`serre_two_level_open` rewrites the 2-primary part, and
`odd_level_one_open` rewrites the odd part to `1`. This theorem does not
use `ribet_level_lowering_4413`. The conclusion is a product of two sealed
functions. It is not the field `RibetLevel.h_n_eq`, and it does not
discharge that field.
-/
theorem h_n_eq_of_tate
    (hcomp : FreyCurve4413.components_n_plus_five_open)
    (hserre : serre_two_level_open)
    (hodd : odd_level_one_open)
    (E : FreyCurve4413) (hcop : E.a.natAbs.gcd E.b.natAbs = 1) :
    twoPrimaryLevel E * OddPrimaryLevel E = 32 ∨
      twoPrimaryLevel E * OddPrimaryLevel E = 64 := by
  have hf := pacetti_of_components hcomp E hcop
  have hs := hserre E hcop
  have ho := hodd E hcop
  rcases hf with h10 | h12
  · have h2 := hs.1 h10
    left
    rw [h2, ho, Nat.mul_one]
  · have h2 := hs.2 h12
    right
    rw [h2, ho, Nat.mul_one]

/-- Minimal model, Pacetti's exponent in `{10, 12}`, and `n = 32 ∨ n = 64`.

The disjunction is a conjunct. It is not derived from the exponent.
`thirtyTwo_dvd_of_tate_bound` turns it into `32 ∣ n`.
`shape_dvd_does_not_give_thirtyTwo` shows `n ∣ N` does not give `32 ∣ n`.
`thirtyTwo_dvd_of_conductor_shape` is the divisibility for `N`.
-/
def TateAt2LowerBound (E : FreyCurve4413) (n : ℕ) : Prop :=
  MinimalModelAt2 E ∧
    ExponentIn1012 (ConductorExponentAtPrimeAbove2 E) ∧
    (n = 32 ∨ n = 64)

/-- One lowered newform at level `n`, with `n ∣ N` stored on the structure. -/
structure RibetOutput (E : FreyCurve4413) (N n : ℕ) where
  h_n_dvd_N : n ∣ N
  g : Newform n
  lowered : LevelLowered E g

/-- One Ribet output at one level.

`h_n_eq` is `n = 32 ∨ n = 64`. The axiom supplies it. It is not a theorem
from `pacetti_2_8_open`, and `components_n_plus_five_open` alone does not
replace it. The further hypotheses are `serre_two_level_open` and
`odd_level_one_open`. `h_n_eq_of_tate` is the product of the sealed levels
under those three hypotheses. It does not discharge this field.
`h_dvd` is `n ∣ N`. `h_coprime` uses `IsPrime`.
`thirtyTwo_dvd_of_eq` turns `h_n_eq` into `32 ∣ n`.
-/
structure RibetLevel (c : ℤ) (E : FreyCurve4413) (N : ℕ) where
  n : ℕ
  h_n_eq : n = 32 ∨ n = 64
  h_dvd : n ∣ N
  h_coprime : ∀ p, IsPrime p → p ∣ c.natAbs → ¬ p ∣ n
  output : RibetOutput E N n

/-- Ribet's lowering-the-level theorem for `d = 1`, `p = 13`, at one `N`.

`hCond` says `N` equals `32 |c|²` or `64 |c|²`. It does not prove that this
`N` is the conductor. `hIrr` is `RhoE13Open`; there is no term of that type.
`hPacetti` is `pacetti_2_8_open`. The result stores `n = 32 ∨ n = 64`,
`n ∣ N`, and the prime-coprimality condition. The disjunction is part of
this axiom. `h_n_eq_of_tate` does not replace it: that theorem assumes
`components_n_plus_five_open`, `serre_two_level_open`, and
`odd_level_one_open`, and it concludes a product of sealed levels.
`32 ∣ n` is `RibetLevel.thirtyTwo_dvd`, from the disjunction.

Citation: Ribet 1990, Invent. Math. 100, and Pacetti's slide
“Ribet's lowering the level result”.
Note: this is axiom 2 until Mathlib has Ribet's theorem for ℚ-curves.
-/
axiom ribet_level_lowering_4413 {c : ℤ} {E : FreyCurve4413} (N : ℕ)
    (hCond : FreyConductorDivides c N) (hIrr : RhoE13Open E)
    (hPacetti : pacetti_2_8_open) : RibetLevel c E N

abbrev RibetLevel.level {c : ℤ} {E : FreyCurve4413} {N : ℕ}
    (p : RibetLevel c E N) : ℕ :=
  p.n

theorem RibetLevel.dvd {c : ℤ} {E : FreyCurve4413} {N : ℕ}
    (p : RibetLevel c E N) : p.level ∣ N :=
  p.h_dvd

theorem RibetLevel.coprime {c : ℤ} {E : FreyCurve4413} {N : ℕ}
    (p : RibetLevel c E N) : ∀ q, IsPrime q → q ∣ c.natAbs → ¬ q ∣ p.level :=
  p.h_coprime

theorem RibetLevel.level_eq {c : ℤ} {E : FreyCurve4413} {N : ℕ}
    (p : RibetLevel c E N) : p.n = 32 ∨ p.n = 64 :=
  p.h_n_eq

/-- For `d = 1` every odd slot `Q₁, Q₃, Q₅, Q₇` is empty, so Pacetti's
odd part of the lowered level is `1` and the level is a power of `2`. -/
theorem odd_conductor_empty (q : ℕ) :
    ¬ Qmod 1 1 q ∧ ¬ Qmod 1 3 q ∧ ¬ Qmod 1 5 q ∧ ¬ Qmod 1 7 q :=
  ⟨Qmod_empty_d1 1 q, Qmod_empty_d1 3 q, Qmod_empty_d1 5 q, Qmod_empty_d1 7 q⟩

/-- The two 2-power candidates are `2⁵ = 32` and `2⁶ = 64`.

`odd_conductor_empty` removes every odd prime from Pacetti's product.
Darmon–Merel §4 gives level `32` for their equations `(1)` and `(2)`;
`64 = 2⁶` is the other power in the conductor range used for `d = 1`.
-/
theorem level_32_or_64 : loweredLevel 5 = 32 ∧ loweredLevel 6 = 64 := by
  decide
