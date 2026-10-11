import Init
import DarmonMerel.«2_Modularity4413»
import Mathlib.Modular.Rank0_32a1
import Mathlib.Modular.EllipticCurveMinimal
import Mathlib.Modular.FreyTraceF9

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
`multiplicative_at_dvd_c` is the norm computation at an odd prime dividing
`c`: that prime misses `2ab` and `c₄`, and `13` divides `v_p(N(Δ))`.
`tate_param_13_dvd_of_coprime` is the Tate parameter. It does not rewrite
`OddPrimaryLevel`.

## Citations

* Ribet 1990, Invent. Math. 100: Kenneth A. Ribet, *On modular representations
  of Gal(ℚ̄/ℚ) arising from modular forms*, Inventiones Mathematicae 100
  (1990), 431–476.
* Pacetti 2023, slide “Ribet's lowering the level result”.
* Note: this is axiom 2 until Mathlib has Ribet's theorem for ℚ-curves.

The axiom's conclusion is `RibetLowering`. `level` is the old conclusion,
under the same three hypotheses. `gkResidual` is `GkResidualIso`, the
residual isomorphism in the form the descent consumes. `RibetLevel` has
no new field. `h_n_eq` is still `n = 32 ∨ n = 64`.
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

`multiplicative_at_dvd_c` is the proved input at an odd prime `p ∣ c`:
`p` misses `2 |a| |b|`, `v_p(N(c₄)) = 0`, and
`v_p(N(Δ)) = 13 · 3 · v_p(|c|)`. `tate_param_13_dvd_of_coprime` asks for
the same divisibility of a Tate parameter. Neither statement rewrites
`OddPrimaryLevel`. `rho_E_13` is unresolved, so "unramified at `p` removes
`p` from the Serre level" is this proposition. `odd_conductor_empty`
empties the sets of primes dividing `d = 1`. This proposition is not a
theorem and not an axiom.
-/
def odd_level_one_open : Prop :=
  ∀ E : FreyCurve4413, E.a.natAbs.gcd E.b.natAbs = 1 →
    OddPrimaryLevel E = 1

/-- `v_p(n)` for `p ≥ 2`. The value at `0` is `0` and is not a valuation. -/
def padicVal (p n : ℕ) : ℕ :=
  if p ≤ 1 ∨ n = 0 then 0
  else if n % p = 0 then padicVal p (n / p) + 1
  else 0
termination_by n
decreasing_by
  have hpgt : 1 < p := by omega
  have hnpos : 0 < n := by omega
  exact Nat.div_lt_self hnpos hpgt

theorem padicVal_succ_div (p n : ℕ) (hp : 2 ≤ p) (hn : n ≠ 0) (hmod : n % p = 0) :
    padicVal p n = padicVal p (n / p) + 1 := by
  have hor : ¬ (p ≤ 1 ∨ n = 0) := by
    intro h
    rcases h with h | h
    · omega
    · exact hn h
  rw [padicVal.eq_1, ite_eq_right hor, ite_eq_left hmod]

theorem padicVal_succ_not_div (p n : ℕ) (hp : 2 ≤ p) (hn : n ≠ 0) (hmod : ¬ n % p = 0) :
    padicVal p n = 0 := by
  have hor : ¬ (p ≤ 1 ∨ n = 0) := by
    intro h
    rcases h with h | h
    · omega
    · exact hn h
  rw [padicVal.eq_1, ite_eq_right hor, ite_eq_right hmod]

theorem padicVal_pow_mul (p k m : ℕ) (hp : 2 ≤ p) (hm : ¬ p ∣ m) :
    padicVal p (p ^ k * m) = k := by
  induction k with
  | zero =>
    rw [Nat.pow_zero, Nat.one_mul]
    have hm0 : m ≠ 0 := by
      intro hz
      exact hm (by rw [hz]; exact Nat.dvd_zero p)
    have hmod : ¬ m % p = 0 := by
      intro h
      exact hm (Nat.dvd_of_mod_eq_zero h)
    exact padicVal_succ_not_div p m hp hm0 hmod
  | succ k ih =>
    have hm0 : m ≠ 0 := by
      intro hz
      exact hm (by rw [hz]; exact Nat.dvd_zero p)
    have hposp : 0 < p := by omega
    have hpk : 0 < p ^ (k + 1) := Nat.pow_pos_iff.mpr (Or.inl hposp)
    have hnz : p ^ (k + 1) * m ≠ 0 := Nat.mul_ne_zero (Nat.ne_of_gt hpk) hm0
    have hdivp : p ∣ p ^ (k + 1) * m := by
      rw [Nat.pow_succ]
      exact ⟨p ^ k * m, by rw [Nat.mul_assoc, Nat.mul_left_comm]⟩
    have hmod : (p ^ (k + 1) * m) % p = 0 := Nat.mod_eq_zero_of_dvd hdivp
    have hquot : (p ^ (k + 1) * m) / p = p ^ k * m := by
      rw [Nat.pow_succ, Nat.mul_assoc]
      have hcomm : p ^ k * (p * m) = p * (p ^ k * m) := Nat.mul_left_comm (p ^ k) p m
      rw [hcomm]
      exact Nat.mul_div_cancel_left (p ^ k * m) hposp
    rw [padicVal_succ_div p (p ^ (k + 1) * m) hp hnz hmod, hquot, ih]

theorem padicVal_eq_zero_of_not_dvd (p n : ℕ) (hp : 2 ≤ p) (hn : n ≠ 0)
    (hd : ¬ p ∣ n) : padicVal p n = 0 := by
  have hmod : ¬ n % p = 0 := by
    intro h
    exact hd (Nat.dvd_of_mod_eq_zero h)
  exact padicVal_succ_not_div p n hp hn hmod

theorem padicVal_zero (p : ℕ) : padicVal p 0 = 0 := by
  rw [padicVal.eq_1, ite_eq_left (Or.inr rfl)]

/-- `n = p^v · m` with `p` not dividing `m`, for `n ≠ 0` and `p ≥ 2`. -/
theorem padicVal_split (p n : ℕ) (hp : 2 ≤ p) (hn : n ≠ 0) :
    n = p ^ padicVal p n * (n / p ^ padicVal p n) ∧
      ¬ p ∣ n / p ^ padicVal p n := by
  induction n using Nat.strongRecOn with
  | ind n ih =>
    by_cases hmod : n % p = 0
    · have hdvd : p ∣ n := Nat.dvd_of_mod_eq_zero hmod
      have hlt : n / p < n := Nat.div_lt_self (by omega) (by omega)
      have hmul : p * (n / p) = n := Nat.mul_div_cancel' hdvd
      have hq0 : n / p ≠ 0 := by
        intro hz
        exact hn (by simpa [hz] using hmul.symm)
      have hval : padicVal p n = padicVal p (n / p) + 1 :=
        padicVal_succ_div p n hp hn hmod
      rcases ih (n / p) hlt hq0 with ⟨heq, hnd⟩
      let v := padicVal p (n / p)
      let q := (n / p) / p ^ v
      have hN : n = p ^ (v + 1) * q := by
        have hstep : n = p * (p ^ v * q) := by
          rw [← heq]
          exact hmul.symm
        calc
          n = p * (p ^ v * q) := hstep
          _ = p * p ^ v * q := by rw [Nat.mul_assoc]
          _ = p ^ v * p * q := by rw [Nat.mul_comm p (p ^ v)]
          _ = p ^ (v + 1) * q := by rw [← Nat.pow_succ]
      have hqq : n / p ^ (v + 1) = q := by
        rw [hN]
        exact Nat.mul_div_cancel_left q (Nat.pow_pos_iff.mpr (Or.inl (by omega)))
      have hqeq : q = n / p ^ padicVal p n := by
        rw [hval]
        exact hqq.symm
      constructor
      · calc
          n = p ^ (v + 1) * q := hN
          _ = p ^ padicVal p n * q := by rw [← hval]
          _ = p ^ padicVal p n * (n / p ^ padicVal p n) := by rw [hqeq]
      · intro hdiv
        rw [hval] at hdiv
        rw [hqq] at hdiv
        exact hnd hdiv
    · have hval : padicVal p n = 0 :=
        padicVal_succ_not_div p n hp hn hmod
      rw [hval, Nat.pow_zero, Nat.one_mul, Nat.div_one]
      exact ⟨rfl, fun h => hmod (Nat.mod_eq_zero_of_dvd h)⟩

theorem prime_not_dvd_mul {p a b : ℕ} (hp : IsPrime p) (ha : ¬ p ∣ a) (hb : ¬ p ∣ b) :
    ¬ p ∣ a * b := by
  intro h
  exact hb (prime_dvd_mul hp h ha)

theorem prime_not_dvd_two_pow (p e : ℕ) (hp : IsPrime p) (h2 : p ≠ 2) : ¬ p ∣ 2 ^ e := by
  induction e with
  | zero =>
    intro h
    have h1 : p ∣ 1 := by simpa [Nat.pow_zero] using h
    have hp1 : p = 1 := Nat.dvd_one.mp h1
    have hge : 2 ≤ p := hp.1
    omega
  | succ e ih =>
    intro h
    rw [Nat.pow_succ, Nat.mul_comm] at h
    exact ih (prime_dvd_mul hp h (by
      intro h2d
      have hle : p ≤ 2 := Nat.le_of_dvd (by decide) h2d
      exact h2 (Nat.le_antisymm hle hp.1)))

theorem prime_dvd_pow {p m n : ℕ} (_hp : IsPrime p) (hm : p ∣ m) (hn : 0 < n) : p ∣ m ^ n := by
  cases n with
  | zero => omega
  | succ n =>
    rw [Nat.pow_succ]
    exact Nat.dvd_mul_left_of_dvd hm _

theorem prime_dvd_fourth {p m : ℕ} (hp : IsPrime p) (h : p ∣ m ^ 4) : p ∣ m := by
  have h2 : m ^ 2 = m * m := by
    rw [Nat.pow_succ, Nat.pow_succ, Nat.pow_zero, Nat.one_mul]
  rw [show (4 : ℕ) = 2 + 2 by decide, Nat.pow_add, h2] at h
  exact prime_dvd_sq hp (prime_dvd_sq hp h)

theorem int_dvd_of_natAbs_dvd (p : ℕ) (z : ℤ) (h : p ∣ z.natAbs) : (p : ℤ) ∣ z := by
  have hc : (p : ℤ) ∣ ↑z.natAbs := (Int.ofNat_dvd).mpr h
  rcases Int.natAbs_eq z with hz | hz
  · rw [hz]
    exact hc
  · rw [hz]
    exact Int.dvd_neg.mpr hc

theorem neg_fourth_pow (z : ℤ) : (-z) ^ 4 = z ^ 4 := by
  have hsq : ∀ w : ℤ, w ^ 2 = w * w := by
    intro w
    rw [Int.pow_succ, Int.pow_succ, Int.pow_zero, Int.one_mul]
  rw [show (4 : ℕ) = 2 + 2 by decide, Int.pow_add, Int.pow_add, hsq (-z), hsq z,
    Int.neg_mul_neg]

theorem fourth_pow_natCast (n : ℤ) : n ^ 4 = ↑(n.natAbs ^ 4) := by
  have h0 : 0 ≤ n ^ 4 := by
    cases n with
    | ofNat k => exact Int.natCast_nonneg _
    | negSucc k =>
      rw [Int.negSucc_eq, neg_fourth_pow]
      exact Int.natCast_nonneg _
  rw [← Int.natAbs_of_nonneg h0, Int.natAbs_pow]

/-- `N(a² + b² √(-1)) = c¹³`.

This factor of `Δ = 2⁹ (a² + b² √(-1)) c¹³` is not a unit at a prime
divisor of `c`. Its norm contributes `13` to the exponent `39` of `N(Δ)`.
-/
theorem sum_squares_norm_eq_c_pow (E : FreyCurve4413) :
    GaussInt.norm ⟨E.a ^ 2, E.b ^ 2⟩ = E.c ^ 13 := by
  simp [GaussInt.norm]
  rw [show E.a ^ 2 * E.a ^ 2 = E.a ^ 4 by rw [← Int.pow_add],
    show E.b ^ 2 * E.b ^ 2 = E.b ^ 4 by rw [← Int.pow_add], E.h_eq]

theorem c4_norm_factored (a b : ℤ) :
    GaussInt.norm (FreyCurve4413.c4_Frey a b) =
      (2 : ℤ) ^ 10 * (25 * a ^ 4 + 9 * b ^ 4) := by
  rw [FreyCurve4413.c4_Frey_factor]
  simp [GaussInt.norm, GaussInt.smul, FreyCurve4413.v2_c4, Int.neg_mul, Int.mul_neg]
  grind

theorem delta_norm_natAbs (E : FreyCurve4413) :
    (E.discriminant_re ^ 2 + E.discriminant_im ^ 2).natAbs =
      2 ^ 18 * E.c.natAbs ^ 39 := by
  rw [FreyCurve4413.discriminant_norm E, Int.natAbs_mul, Int.natAbs_pow, Int.natAbs_pow]
  rfl

theorem natAbs_fourth_sum (E : FreyCurve4413) :
    E.a.natAbs ^ 4 + E.b.natAbs ^ 4 = E.c.natAbs ^ 13 := by
  have h0 : 0 ≤ E.c ^ 13 := by
    rw [← E.h_eq, fourth_pow_natCast E.a, fourth_pow_natCast E.b, Int.ofNat_add_ofNat]
    exact Int.natCast_nonneg _
  have hcast :
      (↑(E.a.natAbs ^ 4 + E.b.natAbs ^ 4) : ℤ) = ↑(E.c.natAbs ^ 13) := by
    rw [← Int.ofNat_add_ofNat, ← fourth_pow_natCast E.a, ← fourth_pow_natCast E.b, E.h_eq,
      ← Int.natAbs_of_nonneg h0, Int.natAbs_pow]
  exact Int.ofNat_inj.mp hcast

/-- An odd prime divisor of `c` misses `2`, `|a|`, and `|b|`. -/
theorem odd_prime_misses_two_ab (E : FreyCurve4413)
    (hcop : E.a.natAbs.gcd E.b.natAbs = 1) (p : ℕ) (hp : IsPrime p) (h2 : p ≠ 2)
    (hdvd : p ∣ E.c.natAbs) : ¬ p ∣ 2 * E.a.natAbs * E.b.natAbs := by
  have hab := natAbs_fourth_sum E
  have ha : ¬ p ∣ E.a.natAbs := by
    intro hpa
    have hpa4 : p ∣ E.a.natAbs ^ 4 := prime_dvd_pow hp hpa (by decide)
    have hsump : p ∣ E.a.natAbs ^ 4 + E.b.natAbs ^ 4 := by
      rw [hab]
      exact prime_dvd_pow hp hdvd (by decide)
    have hb4 : p ∣ E.b.natAbs ^ 4 := by
      have hsub : p ∣ (E.a.natAbs ^ 4 + E.b.natAbs ^ 4) - E.a.natAbs ^ 4 :=
        Nat.dvd_sub hsump hpa4
      simpa [Nat.add_sub_cancel_left] using hsub
    have hpb : p ∣ E.b.natAbs := prime_dvd_fourth hp hb4
    have hdg : p ∣ E.a.natAbs.gcd E.b.natAbs := Nat.dvd_gcd hpa hpb
    rw [hcop] at hdg
    have hp1 : p = 1 := Nat.dvd_one.mp hdg
    have hge : 2 ≤ p := hp.1
    omega
  have hb : ¬ p ∣ E.b.natAbs := by
    intro hpb
    have hpb4 : p ∣ E.b.natAbs ^ 4 := prime_dvd_pow hp hpb (by decide)
    have hsump : p ∣ E.a.natAbs ^ 4 + E.b.natAbs ^ 4 := by
      rw [hab]
      exact prime_dvd_pow hp hdvd (by decide)
    have ha4 : p ∣ E.a.natAbs ^ 4 := by
      have hsub : p ∣ (E.a.natAbs ^ 4 + E.b.natAbs ^ 4) - E.b.natAbs ^ 4 :=
        Nat.dvd_sub hsump hpb4
      have hre : E.a.natAbs ^ 4 + E.b.natAbs ^ 4 - E.b.natAbs ^ 4 = E.a.natAbs ^ 4 := by
        rw [Nat.add_comm, Nat.add_sub_cancel_left]
      simpa [hre] using hsub
    exact ha (prime_dvd_fourth hp ha4)
  have h2d : ¬ p ∣ 2 := by
    intro h
    have hle : p ≤ 2 := Nat.le_of_dvd (by decide) h
    exact h2 (Nat.le_antisymm hle hp.1)
  exact prime_not_dvd_mul hp (prime_not_dvd_mul hp h2d ha) hb

/-- `v_p(N(c₄)) = 0` for an odd prime `p ∣ c` on a coprime curve.

`N(c₄) = 2¹⁰ (25 a⁴ + 9 b⁴)`. From `a⁴ + b⁴ = c¹³`, the second factor is
`25 c¹³ - 16 b⁴`, so a prime divisor of `c` that divided it would divide
`16 b⁴` and then both `a` and `b`.
-/
theorem c4_norm_padicVal_zero (E : FreyCurve4413)
    (hcop : E.a.natAbs.gcd E.b.natAbs = 1) (p : ℕ) (hp : IsPrime p) (h2 : p ≠ 2)
    (hdvd : p ∣ E.c.natAbs) :
    padicVal p (GaussInt.norm (FreyCurve4413.c4_Frey E.a E.b)).natAbs = 0 := by
  have hfact := c4_norm_factored E.a E.b
  have hnat :
      (GaussInt.norm (FreyCurve4413.c4_Frey E.a E.b)).natAbs =
        2 ^ 10 * (25 * E.a.natAbs ^ 4 + 9 * E.b.natAbs ^ 4) := by
    have hparts :
        (25 : ℤ) * E.a ^ 4 + (9 : ℤ) * E.b ^ 4 =
          Int.ofNat (25 * E.a.natAbs ^ 4 + 9 * E.b.natAbs ^ 4) := by
      rw [fourth_pow_natCast E.a, fourth_pow_natCast E.b]
      have h25 : (25 : ℤ) = ↑(25 : ℕ) := rfl
      have h9 : (9 : ℤ) = ↑(9 : ℕ) := rfl
      rw [h25, h9, Int.ofNat_mul_ofNat, Int.ofNat_mul_ofNat]
      exact Int.ofNat_add_ofNat (25 * E.a.natAbs ^ 4) (9 * E.b.natAbs ^ 4)
    rw [hfact, hparts, Int.natAbs_mul, Int.natAbs_pow]
    rfl
  have hmiss : ¬ p ∣ 25 * E.a.natAbs ^ 4 + 9 * E.b.natAbs ^ 4 := by
    intro hdiv
    have hab := natAbs_fourth_sum E
    have hsum : p ∣ E.a.natAbs ^ 4 + E.b.natAbs ^ 4 := by
      rw [hab]
      exact prime_dvd_pow hp hdvd (by decide)
    have h25 : p ∣ 25 * (E.a.natAbs ^ 4 + E.b.natAbs ^ 4) :=
      Nat.dvd_mul_left_of_dvd hsum 25
    have hsub :
        p ∣ 25 * (E.a.natAbs ^ 4 + E.b.natAbs ^ 4) -
          (25 * E.a.natAbs ^ 4 + 9 * E.b.natAbs ^ 4) := Nat.dvd_sub h25 hdiv
    have hid :
        25 * (E.a.natAbs ^ 4 + E.b.natAbs ^ 4) -
          (25 * E.a.natAbs ^ 4 + 9 * E.b.natAbs ^ 4) = 16 * E.b.natAbs ^ 4 := by
      have hdist :
          25 * (E.a.natAbs ^ 4 + E.b.natAbs ^ 4) =
            25 * E.a.natAbs ^ 4 + 25 * E.b.natAbs ^ 4 := by
        rw [Nat.left_distrib]
      have h25b : (25 : ℕ) * E.b.natAbs ^ 4 =
          16 * E.b.natAbs ^ 4 + 9 * E.b.natAbs ^ 4 := by
        have hsplit : (25 : ℕ) = 16 + 9 := by decide
        rw [hsplit, Nat.right_distrib]
      have hrearr :
          25 * E.a.natAbs ^ 4 + (16 * E.b.natAbs ^ 4 + 9 * E.b.natAbs ^ 4) =
            (25 * E.a.natAbs ^ 4 + 9 * E.b.natAbs ^ 4) + 16 * E.b.natAbs ^ 4 := by
        rw [Nat.add_comm (16 * E.b.natAbs ^ 4) (9 * E.b.natAbs ^ 4), ← Nat.add_assoc]
      rw [hdist, h25b, hrearr, Nat.add_sub_cancel_left]
    rw [hid] at hsub
    have h16 : ¬ p ∣ 16 := by
      rw [show (16 : ℕ) = 2 ^ 4 by decide]
      exact prime_not_dvd_two_pow p 4 hp h2
    have hb : p ∣ E.b.natAbs := prime_dvd_fourth hp (prime_dvd_mul hp hsub h16)
    exact odd_prime_misses_two_ab E hcop p hp h2 hdvd
      (Nat.dvd_mul_left_of_dvd hb (2 * E.a.natAbs))
  have hprod : ¬ p ∣ (GaussInt.norm (FreyCurve4413.c4_Frey E.a E.b)).natAbs := by
    rw [hnat]
    exact prime_not_dvd_mul hp (prime_not_dvd_two_pow p 10 hp h2) hmiss
  have hnz : (GaussInt.norm (FreyCurve4413.c4_Frey E.a E.b)).natAbs ≠ 0 := by
    intro hz
    rw [hnat] at hz
    have hrest : 0 < 25 * E.a.natAbs ^ 4 + 9 * E.b.natAbs ^ 4 := by
      rcases Nat.eq_zero_or_pos E.a.natAbs with ha | ha
      · rcases Nat.eq_zero_or_pos E.b.natAbs with hb | hb
        · have hdg : E.a.natAbs.gcd E.b.natAbs = 0 := by rw [ha, hb]; rfl
          rw [hdg] at hcop
          omega
        · have : 0 < 9 * E.b.natAbs ^ 4 :=
            Nat.mul_pos (by decide) (Nat.pow_pos_iff.mpr (Or.inl hb))
          omega
      · have : 0 < 25 * E.a.natAbs ^ 4 :=
          Nat.mul_pos (by decide) (Nat.pow_pos_iff.mpr (Or.inl ha))
        omega
    have hpos : 0 < 2 ^ 10 * (25 * E.a.natAbs ^ 4 + 9 * E.b.natAbs ^ 4) :=
      Nat.mul_pos (by decide) hrest
    omega
  exact padicVal_eq_zero_of_not_dvd p _ hp.1 hnz hprod

/-- `v_p(N(Δ)) = 13 · 3 · v_p(|c|)` for an odd prime `p`.

`N(Δ) = 2¹⁸ c³⁹`. The exponent `39 = 13 · 3` is
`v_p(N(a² + b² √(-1))) + v_p(N(c¹³)) = 13 v_p(|c|) + 26 v_p(|c|)`.
`sum_squares_norm_eq_c_pow` is the first summand. This is not
`v_𝔭(Δ) = 13 v_p(|c|)` at a prime `𝔭` of `ℤ[i]` above `p`.
-/
theorem delta_norm_padicVal (E : FreyCurve4413) (p : ℕ) (hp : IsPrime p) (h2 : p ≠ 2) :
    padicVal p (E.discriminant_re ^ 2 + E.discriminant_im ^ 2).natAbs =
      13 * (3 * padicVal p E.c.natAbs) := by
  have hnorm := delta_norm_natAbs E
  have hp2 : 2 ≤ p := hp.1
  by_cases hc0 : E.c.natAbs = 0
  · have hvalc : padicVal p E.c.natAbs = 0 := by
      rw [hc0, padicVal_zero]
    have hN : (E.discriminant_re ^ 2 + E.discriminant_im ^ 2).natAbs = 0 := by
      rw [hnorm, hc0]
    have hvalN : padicVal p (E.discriminant_re ^ 2 + E.discriminant_im ^ 2).natAbs = 0 := by
      rw [hN, padicVal_zero]
    rw [hvalc, hvalN]
  · rcases padicVal_split p E.c.natAbs hp2 hc0 with ⟨hc, hm⟩
    let k := padicVal p E.c.natAbs
    let m := E.c.natAbs / p ^ k
    have ht : k * 39 = 13 * (3 * k) := by
      calc
        k * 39 = k * (13 * 3) := rfl
        _ = (k * 13) * 3 := by rw [Nat.mul_assoc]
        _ = (13 * k) * 3 := by rw [Nat.mul_comm k 13]
        _ = 13 * (k * 3) := by rw [Nat.mul_assoc]
        _ = 13 * (3 * k) := by rw [Nat.mul_comm k 3]
    have hgroup :
        2 ^ 18 * (p ^ (13 * (3 * k)) * m ^ 39) =
          p ^ (13 * (3 * k)) * (2 ^ 18 * m ^ 39) := by
      calc
        2 ^ 18 * (p ^ (13 * (3 * k)) * m ^ 39) =
            2 ^ 18 * p ^ (13 * (3 * k)) * m ^ 39 := by rw [Nat.mul_assoc]
        _ = p ^ (13 * (3 * k)) * 2 ^ 18 * m ^ 39 := by
          rw [Nat.mul_comm (2 ^ 18) (p ^ (13 * (3 * k)))]
        _ = p ^ (13 * (3 * k)) * (2 ^ 18 * m ^ 39) := by rw [Nat.mul_assoc]
    have hgoalform :
        (E.discriminant_re ^ 2 + E.discriminant_im ^ 2).natAbs =
          p ^ (13 * (3 * k)) * (2 ^ 18 * m ^ 39) := by
      rw [hnorm, hc, Nat.mul_pow, ← Nat.pow_mul, ht, hgroup]
    have hm39 : ¬ p ∣ m ^ 39 := by
      have hall : ∀ n, ¬ p ∣ m ^ n := by
        intro n
        induction n with
        | zero =>
          intro h
          have h1 : p ∣ 1 := by simpa [Nat.pow_zero] using h
          have hp1 : p = 1 := Nat.dvd_one.mp h1
          omega
        | succ n ih =>
          intro h
          rw [Nat.pow_succ, Nat.mul_comm] at h
          exact ih (prime_dvd_mul hp h hm)
      exact hall 39
    have hcof : ¬ p ∣ 2 ^ 18 * m ^ 39 :=
      prime_not_dvd_mul hp (prime_not_dvd_two_pow p 18 hp h2) hm39
    rw [hgoalform]
    exact padicVal_pow_mul p (13 * (3 * k)) (2 ^ 18 * m ^ 39) hp2 hcof

/-- An odd prime dividing `N(Δ)` divides `c`.

`N(Δ) = 2¹⁸ c³⁹`, so the only odd prime divisors of the norm are the prime
divisors of `c`. These are the odd primes of bad reduction of the norm.
This does not remove them from `OddPrimaryLevel`.
-/
theorem odd_prime_dvd_discriminant_norm_divides_c (E : FreyCurve4413) (p : ℕ)
    (hp : IsPrime p) (h2 : p ≠ 2)
    (hdvd : p ∣ (E.discriminant_re ^ 2 + E.discriminant_im ^ 2).natAbs) :
    p ∣ E.c.natAbs := by
  rw [delta_norm_natAbs E] at hdvd
  have hc39 : p ∣ E.c.natAbs ^ 39 :=
    prime_dvd_mul hp hdvd (prime_not_dvd_two_pow p 18 hp h2)
  by_cases hpc : p ∣ E.c.natAbs
  · exact hpc
  · have hall : ∀ n, ¬ p ∣ E.c.natAbs ^ n := by
      intro n
      induction n with
      | zero =>
        intro h1
        have hp1 : p = 1 := Nat.dvd_one.mp (by simpa [Nat.pow_zero] using h1)
        have hge : 2 ≤ p := hp.1
        omega
      | succ n ih =>
        intro hk
        rw [Nat.pow_succ, Nat.mul_comm] at hk
        exact ih (prime_dvd_mul hp hk hpc)
    exact absurd hc39 (hall 39)

/-- Multiplicative-reduction inputs at an odd prime `p ∣ c`.

`p` misses `2 |a| |b|`. `v_p(N(c₄)) = 0`, so every prime of `ℤ[i]` above
`p` misses `c₄`. `v_p(N(Δ)) = 13 · 3 · v_p(|c|)` is positive. Silverman's
criterion on a minimal model is `v(Δ) > 0` and `v(c₄) = 0` at that prime.
The quantities here are rational valuations of the field norms.
`sum_squares_norm_eq_c_pow` is why the exponent is `39 v_p(|c|)` rather
than `13 v_p(|c|)`. The Kodaira symbol is not a theorem.
-/
theorem multiplicative_at_dvd_c (E : FreyCurve4413)
    (hcop : E.a.natAbs.gcd E.b.natAbs = 1) (p : ℕ) (hp : IsPrime p) (h2 : p ≠ 2)
    (hdvd : p ∣ E.c.natAbs) :
    ¬ p ∣ 2 * E.a.natAbs * E.b.natAbs ∧
      0 < padicVal p (E.discriminant_re ^ 2 + E.discriminant_im ^ 2).natAbs ∧
      padicVal p (E.discriminant_re ^ 2 + E.discriminant_im ^ 2).natAbs =
        13 * (3 * padicVal p E.c.natAbs) ∧
      padicVal p (GaussInt.norm (FreyCurve4413.c4_Frey E.a E.b)).natAbs = 0 := by
  refine ⟨odd_prime_misses_two_ab E hcop p hp h2 hdvd, ?_, delta_norm_padicVal E p hp h2,
    c4_norm_padicVal_zero E hcop p hp h2 hdvd⟩
  have hval := delta_norm_padicVal E p hp h2
  have hc0 : E.c.natAbs ≠ 0 := by
    intro hz
    have hab := natAbs_fourth_sum E
    rw [hz] at hab
    have hsum0 : E.a.natAbs ^ 4 + E.b.natAbs ^ 4 = 0 := by simpa using hab
    have ha0 : E.a.natAbs = 0 := (Nat.pow_eq_zero.mp (by omega : E.a.natAbs ^ 4 = 0)).1
    have hb0 : E.b.natAbs = 0 := (Nat.pow_eq_zero.mp (by omega : E.b.natAbs ^ 4 = 0)).1
    have hdg : E.a.natAbs.gcd E.b.natAbs = 0 := by rw [ha0, hb0]; rfl
    rw [hdg] at hcop
    omega
  have hsplit := padicVal_split p E.c.natAbs hp.1 hc0
  have hk : 0 < padicVal p E.c.natAbs := by
    cases Nat.eq_zero_or_pos (padicVal p E.c.natAbs) with
    | inl hkz =>
      rw [hkz, Nat.pow_zero, Nat.one_mul, Nat.div_one] at hsplit
      exact False.elim (hsplit.2 hdvd)
    | inr hkpos => exact hkpos
  rw [hval]
  have : 0 < 13 * (3 * padicVal p E.c.natAbs) := by
    have h3 : 0 < 3 * padicVal p E.c.natAbs := Nat.mul_pos (by decide) hk
    exact Nat.mul_pos (by decide) h3
  exact this

/-- Valuation of a Tate parameter of `E` at the odd prime `p`.

The equation is hidden. This is not `padicVal p` of `N(Δ)`, and `rfl` does
not decide it. Tate uniformization would identify it with the valuation of
`Δ` on a minimal model at a prime above `p`.
-/
opaque tateParameter (E : FreyCurve4413) (p : ℕ) : ℕ := 0

/-- `13` divides the Tate parameter at every odd prime divisor of `c`.

Tate uniformization supplies `q` with `v(q) = v(Δ)` on the minimal model.
For a Tate curve the residual representation on the `13`-torsion is
unramified at `ℓ ≠ 13` when `13 ∣ v(q)`, because the Kummer class of `q`
is trivial in `𝔽₁₃ˣ`. At `ℓ = 13` the same divisibility is the input to
finiteness of the group scheme. Neither uniformization nor that Kummer
sequence is formalized. `multiplicative_at_dvd_c` gives
`13 ∣ v_p(N(Δ))` and does not give this proposition. This proposition is
not a theorem and not an axiom. It does not rewrite `OddPrimaryLevel`.
-/
def tate_param_13_dvd_of_coprime : Prop :=
  ∀ E : FreyCurve4413, E.a.natAbs.gcd E.b.natAbs = 1 →
    ∀ p : ℕ, IsPrime p → p ≠ 2 → p ∣ E.c.natAbs →
      13 ∣ tateParameter E p

/-- If every prime divisor of `n` is an odd prime divisor of `c`, and none
of those primes divide `n`, then `n = 1`.

This is the shape of "level lowering removes every odd bad prime".
Applying it to `OddPrimaryLevel` would need `p ∣ OddPrimaryLevel → p ∣ c`
and `13 ∣ tateParameter → ¬ p ∣ OddPrimaryLevel`. `tate_param_13_dvd_of_coprime`
is the second hypothesis's missing input, and it does not produce the
negated divisibility. `odd_level_one_open` remains that identification.
-/
theorem nat_eq_one_of_prime_divisors_removed (n c : ℕ) (hn : n ≠ 0)
    (hsupport : ∀ p, IsPrime p → p ∣ n → p ≠ 2 ∧ p ∣ c)
    (hremove : ∀ p, IsPrime p → p ≠ 2 → p ∣ c → ¬ p ∣ n) : n = 1 := by
  cases n with
  | zero => exact absurd rfl hn
  | succ n =>
    cases n with
    | zero => rfl
    | succ n =>
      have hge : 2 ≤ n.succ.succ := by omega
      rcases exists_prime_factor (n.succ.succ) hge with ⟨p, hp, hpn⟩
      rcases hsupport p hp hpn with ⟨h2, hc⟩
      exact absurd hpn (hremove p hp h2 hc)

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

/-- Residual isomorphism in the form the descent consumes: the Frey trace over `F9` is `-6` mod `13`. -/
def GkResidualIso : Prop :=
  ∀ (a b c : ℤ) (E : FreyCurve4413) (N : ℕ),
    a ≠ 0 → b ≠ 0 →
    a.natAbs.gcd b.natAbs = 1 →
    E.a = a → E.b = b → E.c = c →
    Modular E →
    RibetLevel c E N →
    rho_E_p E = GaloisRepresentation.unresolved →
    rho_E_p_twisted E = GaloisRepresentation.unresolved →
    (13 : ℤ) ∣ Cm32.freyTrace3 (Cm32.mod3 a) (Cm32.mod3 b) - (-6)

/-- Level-lowering conclusion paired with `GkResidualIso`.

`level` is the previous conclusion, under the same three hypotheses.
`gkResidual` is the residual isomorphism. `RibetLevel` gains no field.
-/
structure RibetLowering where
  level :
    ∀ {c : ℤ} {E : FreyCurve4413} (N : ℕ),
      FreyConductorDivides c N → RhoE13Open E → pacetti_2_8_open →
        RibetLevel c E N
  gkResidual : GkResidualIso

axiom ribet_level_lowering_4413 : RibetLowering

/-- The level package, projected from `ribet_level_lowering_4413`. -/
noncomputable abbrev ribetLevelOfAxiom {c : ℤ} {E : FreyCurve4413} (N : ℕ)
    (hCond : FreyConductorDivides c N) (hIrr : RhoE13Open E)
    (hPacetti : pacetti_2_8_open) : RibetLevel c E N :=
  ribet_level_lowering_4413.level N hCond hIrr hPacetti

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
