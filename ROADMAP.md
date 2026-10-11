# Proof outline for `a⁴ + b⁴ = c¹³`

This is a dependency audit of the tree at `0b1b9ea` and the commit that adds this file. No new mathematics. `#print axioms` was run with `lake env lean` against the built environment. A line below is the tool's output, not a paraphrase.

`no_solution_4413` is not a theorem. `(1, 0, 1)` and `(0, 1, 1)` are solutions (`rfl` in `DarmonMerel/6_NoSolution4413.lean`). A primitive nonzero solution is not ruled out.

## What is proved

Kernel axioms only (`propext`, `Classical.choice`, `Quot.sound`, or none). None of the theorems in the ledger below depend on `frey_qcurve_modular` or `ribet_level_lowering_4413`.

From `a⁴ + b⁴ = c¹³` on `FreyCurve4413`, with `gcd(|a|, |b|) = 1`:

- `c` is odd (`c_odd_of_coprime`). The model is minimal at `π` (`minimalAt2_of_coprime`).
- `v_π(Δ) = 18` (`delta_p2_exact_eighteen`) and `v_π(c₄) = 10`, so the tame exponent is `FTameAtPi E = 2` (`ftame_two_of_additive`).
- The `u = 1` translates satisfy Dokchitser's numerical bounds `IsINStar` for `n = 4` (even `a`) and `n = 2` (odd `a`). `disc_one_model` puts `v_π(Δ) = 18` and `v_π(d) = n + 6` on that same model. `tate_step7_double_root` is `v(a₂² - 3a₄) = 2`.
- `N(Δ) = 2¹⁸ c³⁹`. At an odd prime `p ∣ c`, `multiplicative_at_dvd_c` gives: `p` misses `2|a||b|`, `v_p(N(c₄)) = 0`, and `v_p(N(Δ)) = 13 · 3 · v_p(|c|) > 0`.
- The three integers attached to an Artin exponent `f ∈ {10, 12}` are distinguished by `half_exponent_is_not_the_norm`, `pi_ten_principal`, and `pi_twelve_principal`. See below.
- `odd_conductor_empty` empties Pacetti's sets of primes dividing `d = 1`.
- `(8, 8, 2)` satisfies `8⁴ + 8⁴ = 2¹³`, has `gcd(8, 8) = 8`, and is not minimal at `π`.
- Mazur's congruence is the divisibility `13 ∣ C(q, g)`. At the newforms `32.2.a.a` and `64.2.a.a` the product `C(5, g)` is `0`, so the divisibility holds and removes neither form.
- `(T₅ - 6){0, ∞} ≢ 0 (mod 13)` at levels `32` and `64`. Those vectors are computed by `native_decide`. The nonvanishing does not contradict the equation.

`pacetti_2_8_open` (the Artin exponent `FTameAtPi + SwanAtPi` lies in `{10, 12}`) is a theorem of `components_n_plus_five_open` alone (`pacetti_of_components`). It is not an independent open proposition.

## What is assumed

Two axioms, unchanged:

- `frey_qcurve_modular` produces `Modular E`.
- `ribet_level_lowering_4413` takes a conductor *shape* `N = 32|c|²` or `N = 64|c|²`, a term of the sealed predicate `RhoE13Open E`, and `pacetti_2_8_open`, and returns a `RibetLevel`. The field `h_n_eq : n = 32 ∨ n = 64` is part of that axiom. `RibetLevel.level_eq` only reads the field. Its `#print axioms` line is empty. Obtaining the package still requires the axiom.

Four open propositions. They are `def`s of type `Prop`, not axioms and not `sorry`.

| Proposition | Statement that is not a theorem |
| --- | --- |
| `components_n_plus_five_open` | On a minimal `u = 1` translate in the `IsINStar n` range, `NeronSpecialFiberComponents E = n + 5`. |
| `serre_two_level_open` | If the Artin exponent is `10`, the sealed `twoPrimaryLevel` is `32`; if it is `12`, the level is `64`. |
| `odd_level_one_open` | On a coprime curve, the sealed `OddPrimaryLevel` is `1`. |
| `tate_param_13_dvd_of_coprime` | At each odd prime `p ∣ c`, `13` divides the sealed `tateParameter E p`. |

`h_n_eq_of_tate` assumes the first three and concludes that the product of the two sealed level functions is `32` or `64`. The fourth proposition does not appear in that proof. It does not rewrite `OddPrimaryLevel`, and `odd_level_one_open` does not follow from it.

`#print axioms` does not list hypothesis propositions. The ledger records the kernel axioms. The hypotheses are in the theorem statements.

## What would close each gap

- **Components.** A formal Néron special fiber of the `u = 1` translate, with component count `m = n + 5`. That discharges `pacetti_2_8_open`, `swan_of_components` (`SwanAtPi = 12 - n`), and `conductor_of_components` (sum `10` or `12`). It does not identify Ribet's `n`.
- **Serre 2-level.** A proof that the 2-primary part of the Serre conductor of `ρ̄_{E,13}` is `2^(f/2)` when `f = FTameAtPi + SwanAtPi` is even. The ideal norm `2^f` is a different integer (`1024` or `4096`).
- **Tate parameter.** Tate uniformization at odd `ℓ ∣ c`: a parameter `q` with `v(q) = v(Δ)` on a minimal model, and `13 ∣ v(q)`. For `ℓ ≠ 13` that divisibility kills the Kummer class of `q` in `𝔽₁₃ˣ`. At `ℓ = 13` it is the input to finiteness of the group scheme. Neither uniformization nor the Kummer sequence is formalized. The proved input is the norm valuation, not this divisibility.
- **Odd Serre level.** `OddPrimaryLevel E = 1`. The arithmetic lemma `nat_eq_one_of_prime_divisors_removed` needs two facts that are not theorems: every prime divisor of `OddPrimaryLevel` is an odd prime divisor of `c`, and `13 ∣ tateParameter` removes that prime. `odd_conductor_empty` removes primes dividing `d = 1` only.
- **Uneven splitting**, unnamed. There is no fifth open proposition for it. It is why `multiplicative_at_dvd_c` does not prove `tate_param_13_dvd_of_coprime`. See below. Closing it is a theorem that `13 ∣ v_𝔭(Δ)` at each Gaussian prime above `p ∣ c`. That still would not be a Tate parameter.
- **`RhoE13Open`.** A term. `Psi13HasNoQiRoot` (no root of `ψ₁₃` in the fraction field, for `NontrivialFrey`) together with the sealed `ImageContainsSL2` is `RhoE13NeedsSL2`. The implication to `RhoE13Open` is not a lemma. A missing linear factor is not absolute irreducibility. The unrestricted root statement is false for the singular curve `(0, 0, 0)`.
- **Modularity.** Replace `frey_qcurve_modular` by ℚ-curve modularity.
- **Level lowering.** Replace `ribet_level_lowering_4413`. `h_n_eq_of_tate` does not discharge `RibetLevel.h_n_eq`: the conclusion is a product of two sealed functions, not that field.
- **`no_solution_4413`.** Darmon–Merel’s map from `X₀(N)` to the winding quotient (Crelle 490 (1997), Lemma 8.2). The computed nonvanishing of `(T₅ - 6)e` does not produce `False`. Mazur’s products at `q = 5` are zero, so `13 ∣ C(5, g)` does not remove the newform. The two CM solutions must remain solutions.

`FreyConductorDivides c N` is the shape `N = 32|c|²` or `N = 64|c|²`. `thirtyTwo_dvd_of_conductor_shape` proves `32 ∣ N` from the shape. `shape_dvd_does_not_give_thirtyTwo` is the counterexample `c = 1`, `N = 32`, `n = 1`: the shape and `n ∣ N` do not give `32 ∣ n`. `thirtyTwo_dvd_of_tate_bound` and `n_eq_32_or_64_of_tate` read the disjunction stored on `TateAt2LowerBound`. They do not derive it.

## Axiom ledger

`serre_two_level_of_pacetti` does not occur in the repository. The proved implication from the component count to Pacetti's exponent set is `pacetti_of_components`. The Serre identification is the open proposition `serre_two_level_open`.

```text
'FreyCurve4413.disc_one_model' depends on axioms: [propext, Classical.choice, Quot.sound]
'FreyCurve4413.tate_step7_double_root' depends on axioms: [propext, Classical.choice, Quot.sound]
'FreyCurve4413.tate_step7_inputs' depends on axioms: [propext, Classical.choice, Quot.sound]
'FreyCurve4413.ftame_two_of_additive' depends on axioms: [propext, Classical.choice, Quot.sound]
'FreyCurve4413.swan_of_components' depends on axioms: [propext, Classical.choice, Quot.sound]
'FreyCurve4413.swan_eq_disc_excess' does not depend on any axioms
'FreyCurve4413.conductor_of_components' depends on axioms: [propext, Classical.choice, Quot.sound]
'pacetti_of_components' depends on axioms: [propext, Classical.choice, Quot.sound]
'multiplicative_at_dvd_c' depends on axioms: [propext, Classical.choice, Quot.sound]
'nat_eq_one_of_prime_divisors_removed' depends on axioms: [propext, Classical.choice, Quot.sound]
'h_n_eq_of_tate' depends on axioms: [propext, Classical.choice, Quot.sound]
'FreyCurve4413.curve_8_8_2_not_coprime' does not depend on any axioms
'FreyCurve4413.c_odd_of_coprime' depends on axioms: [propext, Classical.choice, Quot.sound]
'minimalAt2_of_coprime' depends on axioms: [propext, Classical.choice, Quot.sound]
'FreyCurve4413.delta_p2_exact_eighteen' depends on axioms: [propext, Classical.choice, Quot.sound]
'FreyCurve4413.thirtyTwo_dvd_of_tate_bound' depends on axioms: [propext, Classical.choice, Quot.sound]
'FreyCurve4413.n_eq_32_or_64_of_tate' depends on axioms: [propext, Classical.choice, Quot.sound]
'FreyCurve4413.swan_vanishes_contradicts_components' depends on axioms: [propext, Classical.choice, Quot.sound]
'half_exponent_is_not_the_norm' does not depend on any axioms
'FreyCurve4413.pi_ten_principal' depends on axioms: [propext, Classical.choice, Quot.sound]
'FreyCurve4413.pi_twelve_principal' depends on axioms: [propext, Classical.choice, Quot.sound]
'frey_qcurve_modular' depends on axioms: [frey_qcurve_modular]
'ribet_level_lowering_4413' depends on axioms: [ribet_level_lowering_4413]
```

Nothing in that list depends on more than `propext`, `Classical.choice`, and `Quot.sound`, except the two axioms, which depend only on themselves. `h_n_eq_of_tate` does not depend on `ribet_level_lowering_4413`. Its hypotheses are `components_n_plus_five_open`, `serre_two_level_open`, and `odd_level_one_open`.

Nodes outside the requested list, printed the same way, because they sit on the path to `no_solution_4413`:

```text
'solution_modular_and_lowered' depends on axioms: [frey_qcurve_modular, ribet_level_lowering_4413]
'RibetLevel.level_eq' does not depend on any axioms
'mazur_trick_4413' does not depend on any axioms
'winding_quotient_no_g_32' depends on axioms: [winding_quotient_no_g_32._native.native_decide.ax_1_1]
'winding_quotient_no_g_64' depends on axioms: [winding_quotient_no_g_64._native.native_decide.ax_1_1]
'darmon_merel_elimination_4413' depends on axioms: [winding_quotient_no_g_32._native.native_decide.ax_1_1,
 winding_quotient_no_g_64._native.native_decide.ax_1_1]
'solution_meets_winding_test' depends on axioms: [propext,
 Quot.sound,
 T5_32_value._native.native_decide.ax_1_1,
 T5_64_value._native.native_decide.ax_1_1,
 e32_value._native.native_decide.ax_1_1,
 e64_value._native.native_decide.ax_1_1,
 t5_e32_not_zero_mod13._native.native_decide.ax_1_1,
 t5_e64_not_zero_mod13._native.native_decide.ax_1_1]
'winding_elimination_4413' depends on axioms: [propext,
 Quot.sound,
 T5_32_value._native.native_decide.ax_1_1,
 T5_64_value._native.native_decide.ax_1_1,
 e32_value._native.native_decide.ax_1_1,
 e64_value._native.native_decide.ax_1_1,
 t5_e32_not_zero_mod13._native.native_decide.ax_1_1,
 t5_e64_not_zero_mod13._native.native_decide.ax_1_1]
'frey_j_not_in_Q' depends on axioms: [propext]
'FreyCurve4413.discriminant_eq_weierstrass' depends on axioms: [propext, Classical.choice, Quot.sound]
'FreyCurve4413.discriminant_norm' depends on axioms: [propext, Classical.choice, Quot.sound]
'FreyCurve4413.norm_odd_prime_exponent' depends on axioms: [propext, Classical.choice, Quot.sound]
'FreyCurve4413.velu_target_eq_twist_neg_two' depends on axioms: [propext, Classical.choice, Quot.sound]
'FreyCurve4413.qiLocalMinimalAtPi_of_c_odd' depends on axioms: [propext, Classical.choice, Quot.sound]
'FreyCurve4413.gl2_F3_divisible_by_two' depends on axioms: [propext]
'FreyCurve4413.thirtyTwo_dvd_of_conductor_shape' depends on axioms: [propext]
'FreyCurve4413.shape_dvd_does_not_give_thirtyTwo' depends on axioms: [propext, Quot.sound]
'odd_conductor_empty' depends on axioms: [propext, Quot.sound]
'level_32_or_64' does not depend on any axioms
'not_minimal_even_c' depends on axioms: [propext, Classical.choice, Quot.sound]
```

The `native_decide` axioms are the flag. They are kernel trust of the compiler for the Manin-symbol matrices and for `C(5, g) = 0`. They are not `frey_qcurve_modular` or `ribet_level_lowering_4413`. They do not appear in the conductor chain (`FTameAtPi` through `h_n_eq_of_tate`).

## No cycle in the tame/wild split

`FTameAtPi` and `SwanAtPi` are definitions. The theorems that characterize them unfold the definitions. The definitions do not mention those theorems.

```text
FTameAtPi E =
  if 0 < v_π(Δ) then (if 0 < v_π(c₄) then 2 else 1) else 0

SwanAtPi E =
  v_π(Δ) - NeronSpecialFiberComponents E + 1 - FTameAtPi E
```

`NeronSpecialFiberComponents` is sealed (`opaque`, body `0`, equation hidden).

The dependency order is one way:

1. `ftame_two_of_additive` unfolds `FTameAtPi` using `v_π(Δ) = 18` and `v_π(c₄) = 10`. It does not read `SwanAtPi`.
2. `swan_of_components` assumes `components_n_plus_five_open`, unfolds `SwanAtPi`, and calls `ftame_two_of_additive`.
3. `conductor_of_components` calls both, still under the component hypothesis.
4. `pacetti_of_components` calls `conductor_of_components`.
5. `h_n_eq_of_tate` calls `pacetti_of_components` and the two level propositions.

`swan_eq_disc_excess` is a closed identity in `ℕ`. It does not mention `FTameAtPi` or `SwanAtPi`.

## `swan_vanishes_open` is depended on by nothing positive

`swan_vanishes_open` says that a coprime curve has `SwanAtPi E = 0`. It is not an axiom. The only declaration whose type uses it is

```text
swan_vanishes_contradicts_components
  (hcomp : components_n_plus_five_open)
  (hswan : swan_vanishes_open) : False
```

On the coprime curve `(1, 0, 1)`, `a` is odd, so the `n = 2` row applies. `swan_of_components` gives `SwanAtPi = 10`. The withdrawn claim gives `0`. Other mentions of the name are docstrings.

The argument "wild inertia is pro-2 and `3 ≠ 2`, so the Swan conductor vanishes" is a separate false step. `gl2_F3_divisible_by_two` is `|GL₂(𝔽₃)| = (3²-1)(3²-3) = 48` and `2 ∣ 48`. The image of wild inertia in that group can be nontrivial. That order computation is axiom-free aside from `propext`. It does not evaluate `SwanAtPi`.

## Three integers

For `f = 10` and `f = 12`, `half_exponent_is_not_the_norm` is the pair of numerals, and it depends on no axioms:

| | `f = 10` | `f = 12` |
| --- | --- | --- |
| Generator of the principal ideal `(π)^f`, equal to `2^(f/2)` | `32` | `64` |
| Norm of that ideal, `2^f` | `1024` | `4096` |
| Ribet's level `n` | not this row | not this row |

`pi_ten_principal` is `(-√(-1))⁵ · π¹⁰ = 32` with `N(π¹⁰) = 1024`. `pi_twelve_principal` is `(-√(-1))⁶ · π¹² = 64` with `N(π¹²) = 4096`. `(π)¹⁰ = (32)` as principal ideals. The generator is `32`. The ideal norm is `1024`. Neither equality is `RibetLevel.n`.

`serre_two_level_open` is the claim that the sealed 2-primary Serre level equals the generator `2^(f/2)`. `h_n_eq` on the Ribet axiom is the third integer, stored as `n = 32 ∨ n = 64`. `h_n_eq_of_tate` is a fourth statement again: the product `twoPrimaryLevel E * OddPrimaryLevel E`, under the three open propositions. Both factors are sealed. The product is not the field `h_n_eq`.

## Uneven splitting at odd primes dividing `c`

`Δ = 2⁹ (a² + b² √(-1)) c¹³`. Write `α = a² + b² √(-1)`. `sum_squares_norm_eq_c_pow` is `N(α) = c¹³`, so `α` is not a unit at a prime divisor of `c`. The field norm is `N(Δ) = 2¹⁸ c³⁹`, and

```text
v_p(N(Δ)) = v_p(N(α)) + v_p(N(c¹³)) = 13 v_p(|c|) + 26 v_p(|c|) = 13 · 3 · v_p(|c|).
```

That is `delta_norm_padicVal` and the third conjunct of `multiplicative_at_dvd_c`. It is a rational valuation of a field norm.

`ℤ[√-1]` is not proved to be a UFD in this repository (stated in the module comment of `Mathlib/Modular/EllipticCurveMinimal.lean`), so a prime of `ℤ` is not split into Gaussian primes inside the proofs. The boolean `inertInK` is `q % 4 == 3`. It is not a divisibility theorem. The obstruction, which is not a named proposition, is the passage from the norm to one prime `𝔭` of `ℤ[i]`:

- An inert prime dividing `α` divides both rational components, hence divides `gcd(|a|, |b|)`. A coprime solution is not expected to be divisible by an inert prime. The primes of bad reduction above odd `p ∣ c` are the split ones.
- After a split `p = 𝔭 𝔭̄`, the norm adds the two valuations: `v_𝔭(α) + v_𝔭̄(α) = 13 v_p(|c|)`. The summands can be unequal.
- `α` and `ᾱ` are expected to be coprime away from `2`, because a common prime divisor divides `2a²` and `2b²`. In a UFD each factor of a 13th power is a 13th power, so `13` divides each valuation and therefore `v_𝔭(Δ)`. That factorization is not formalized.

`multiplicative_at_dvd_c` stops at the sum. `tate_param_13_dvd_of_coprime` asks whether `13` divides a different sealed integer, `tateParameter E p`. The docstring of that proposition records that the norm divisibility does not prove it.

## Corrected tame/wild accounting

Ogg's full exponent is `f = v_π(Δ) - m + 1 = ε + δ`.

- `ε = FTameAtPi`. For odd `c` this is `2`, from `v_π(Δ) > 0` and `v_π(c₄) > 0` on a minimal model. Proved, with no open proposition (`ftame_two_of_additive`).
- `δ = SwanAtPi = (v_π(Δ) - m + 1) - ε`. The component count `m` is sealed.
- Under `components_n_plus_five_open`, `m = n + 5` and `v_π(Δ) = 18`, so `δ = 12 - n` (`swan_of_components`).

The two rows on a coprime curve:

| `a` | `IsINStar` | `v_π(d)` | `m` if the open holds | `ε` | `δ` | `f = ε + δ` |
| --- | --- | --- | --- | --- | --- | --- |
| even | `n = 4` | `10` | `9` | `2` | `8` | `10` |
| odd | `n = 2` | `8` | `7` | `2` | `10` | `12` |

`swan_eq_disc_excess` is the numerical check that `δ` equals the excess `18 - (n + 6)` of the Weierstrass valuation over the cubic slot. On the even-`a` translate `Δ = 16 d`, and `v_π(16) = 8` is that excess for `n = 4`. The full exponent remains `ε + δ`. It is not `f + δ`.

`conductor_of_components` is the two sums `10` and `12` under the component hypothesis and the corresponding `IsINStar` row. `pacetti_of_components` packages them as `pacetti_2_8_open`. `serre_two_level_open` would then send `10` to `32` and `12` to `64`. That last arrow is open.

## Dependency tree

Labels: **PROVED** (no project axiom; kernel axioms as in the ledger), **OPEN PROP**, **AXIOM**, **WITHDRAWN**, **SEALED** (opaque definition, equation hidden, not an axiom and not an open proposition).

```text
a⁴ + b⁴ = c¹³                                          PROVED data on FreyCurve4413
├─ discriminant_eq_weierstrass                         PROVED
├─ N(Δ) = 2¹⁸ c³⁹                                      PROVED  discriminant_norm
├─ velu_target_eq_twist_neg_two                        PROVED  coefficient identity
│    (not a scheme isogeny, not Modular E)
├─ j(1, 1) = -3328 - 3008 √(-1) is not rational       PROVED  frey_j_not_in_Q
│    1⁴ + 1⁴ = 2 is not a thirteenth power
├─ (1, 0, 1) and (0, 1, 1) are solutions               PROVED  rfl
│
├─ gcd(|a|, |b|) = 1
│   ├─ c odd                                           PROVED  c_odd_of_coprime
│   ├─ minimal at π                                    PROVED  minimalAt2_of_coprime
│   ├─ v_π(Δ) = 18                                     PROVED  delta_p2_exact_eighteen
│   ├─ ε = FTameAtPi = 2                               PROVED  ftame_two_of_additive
│   ├─ IsINStar n = 4 or n = 2                         PROVED  even_a_IsINStar, a_odd_IsINStar
│   │    disc_one_model, tate_step7_double_root        PROVED
│   │    tate_step7_inputs                             PROVED
│   ├─ m = NeronSpecialFiberComponents                 SEALED
│   ├─ m = n + 5                                       OPEN PROP  components_n_plus_five_open
│   │    ├─ δ = SwanAtPi = 12 - n                      PROVED from that open
│   │    ├─ f = ε + δ ∈ {10, 12}                       PROVED from that open
│   │    │    pacetti_of_components → pacetti_2_8_open
│   │    └─ SwanAtPi = 0                               WITHDRAWN  swan_vanishes_open
│   │         refuted by swan_vanishes_contradicts_components
│   │         on (1, 0, 1), assuming the component open
│   ├─ twoPrimaryLevel = 2^(f/2)                       OPEN PROP  serre_two_level_open
│   ├─ OddPrimaryLevel = 1                             OPEN PROP  odd_level_one_open
│   └─ twoPrimaryLevel * OddPrimaryLevel ∈ {32, 64}   PROVED from the three opens
│        h_n_eq_of_tate
│        does not read ribet_level_lowering_4413
│        does not discharge RibetLevel.h_n_eq
│
├─ odd prime p ∣ c
│   ├─ p misses 2|a||b|, v_p(N(c₄)) = 0                PROVED  multiplicative_at_dvd_c
│   ├─ v_p(N(Δ)) = 13 · 3 · v_p(|c|)                   PROVED  same theorem
│   ├─ 13 ∣ v_𝔭(Δ) at each 𝔭 above p                   not a theorem and not an open Prop
│   │    uneven-splitting obstruction; UFD of ℤ[i] missing
│   ├─ 13 ∣ tateParameter E p                          OPEN PROP  tate_param_13_dvd_of_coprime
│   │    does not imply odd_level_one_open
│   └─ nat_eq_one_of_prime_divisors_removed            PROVED arithmetic
│        not applied to OddPrimaryLevel
│
├─ primes dividing d = 1                               PROVED  odd_conductor_empty
│    does not empty the primes dividing c
│
├─ (8, 8, 2)                                           PROVED  curve_8_8_2_not_coprime
│    not minimal                                       PROVED  not_minimal_even_c
│
├─ Modular E                                           AXIOM  frey_qcurve_modular
├─ RhoE13Open                                          SEALED  no term
│    Psi13HasNoQiRoot                                  OPEN PROP  on NontrivialFrey only
│    ImageContainsSL2                                  SEALED
│    RhoE13NeedsSL2 does not produce RhoE13Open
├─ RibetLevel, with h_n_eq : n = 32 ∨ n = 64           AXIOM  ribet_level_lowering_4413
│    also needs a conductor shape and pacetti_2_8_open
│    level_eq reads the field                          PROVED projection, no axioms
├─ solution_modular_and_lowered                        uses both axioms
│    N = 32|c|² is the shape hypothesis, not the conductor
├─ C(5, g) = 0 at both CM newforms                     native_decide
│    mazur_trick_4413 : 13 ∣ 0                         PROVED, removes nothing
└─ (T₅ - 6) e ≢ 0 (mod 13)                             native_decide
     winding_elimination_4413
     the map X₀(N) → J_e is not formalized
     no_solution_4413                                   not a theorem
```

`swan_eq_disc_excess` sits beside `swan_of_components` as a numeral identity: the excess `18 - (n + 6)` equals `12 - n` after subtracting the tame `2` from Ogg's count. It has no hypotheses and no axioms.

The generator/norm/level distinction sits beside `serre_two_level_open`: `(π)^f = (2^(f/2))` and `N((π)^f) = 2^f` are proved, and neither is `RibetLevel.n`.
