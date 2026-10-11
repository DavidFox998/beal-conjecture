# Proof outline for `a⁴ + b⁴ = c¹³`

This is a dependency audit of the tree, plus the conditional capstone
`no_solution_4413_of_frontier`. No open proposition on the frontier is
proved here. `#print axioms` lines are the tool's output.

## Capstone

For `a ≠ 0`, `b ≠ 0`, `gcd(|a|, |b|) = 1`, and `c > 0`,

```text
¬ (a ^ 4 + b ^ 4 = c ^ 13)
```

follows from the hypotheses below. `(1, 0, 1)` and `(0, 1, 1)` are proved
solutions with `gcd = 1` and `c > 0`, so the negation does not quantify
over `a = 0` or `b = 0`. `(8, 8, 2)` fails `curve_8_8_2_not_coprime`
(`capstone_excludes_curve_8_8_2`, no axioms).

| Hypothesis | Label |
| --- | --- |
| `components_n_plus_five_open` | OPEN PROP |
| `serre_two_level_open` | OPEN PROP |
| `odd_level_one_open` | OPEN PROP |
| `tate_param_13_dvd_of_coprime` | OPEN PROP, assumed and not used to obtain `False` |
| `no_newform_32_64_open` | OPEN PROP, the missing elimination |
| `frey_qcurve_modular` | AXIOM, a dependency, not a parameter |
| `ribet_level_lowering_4413` | AXIOM, a dependency, not a parameter |
| `RhoE13Open (FreyCurve4413.mk' a b c h)` | SEALED input. The Ribet axiom takes it. Nothing produces a term. `rhoE13_open_of_psi` does not discharge it. |
| `a ≠ 0`, `b ≠ 0`, `gcd(\|a\|, \|b\|) = 1`, `c > 0` | side conditions. Coprimality and the two CM solutions are proved. |

`#print axioms no_solution_4413_of_frontier`:

```text
'no_solution_4413_of_frontier' depends on axioms: [frey_qcurve_modular,
 propext,
 ribet_level_lowering_4413,
 Classical.choice,
 Quot.sound]
```

`pacetti_of_components hcomp` supplies `pacetti_2_8_open`. The axiom is
applied at the shape `N = 32 |c|²`, which is `FreyConductorDivides` and
not a computation of the conductor. `h_n_eq_of_tate` is cased on. That
disjunction is the product of the sealed level functions. It is not
`RibetLevel.n`. Both branches are closed by `no_newform_32_64_open`
applied to the axiom's package and to `Modular E`.

`no_newform_32_64_open` is the statement that such a package is impossible.
`C(5, g) = 0` for both CM newforms, `mazur_trick_4413` gives `13 ∣ 0`, and
`winding_elimination_4413` is the nonvanishing of `(T₅ - 6) e`. The
integral points of `Y² = X³ - X` are a different theorem. None of them is
this `False`. The unconditional negation is not a theorem.

## What is proved

Kernel axioms only (`propext`, `Classical.choice`, `Quot.sound`, or none), except the descent theorems that project `ribet_level_lowering_4413` and use `frey_qcurve_modular`. Those lines are in the ledger. No new `native_decide`.

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
- In `Mathlib/Modular/GL2F13.lean`, kernel axioms only: `order_thirteen` (no positive exponent below `13`), `transvection_classification_13` (an element of order `13` is conjugate to `(1 1; 0 1)`), and `normal_closure_contains_SL2` (every determinant-`1` matrix is a product of ambient conjugates of that transvection).
- In `Mathlib/Modular/ReducibleShape13.lean`, kernel axioms only: the units of `ℤ[√-1]` are `{±1, ±√(-1)}`, they stay distinct modulo `π ^ n` for `n ≥ 3`, a `π`-unit satisfies `z ^ (2 ^ m) ≡ 1 (mod π ^ (m + 1))`, and a multiplicative character of `(ℤ[i] / π ^ n)ˣ` with values in `𝔽₁₃ˣ` has order dividing `4`. The fourth roots are `1`, `5`, `8`, `12`. This is not irreducibility.
- In `Mathlib/Modular/Cyclotomic13.lean`, kernel axioms only: `primitive_root_two` (`2` has order exactly `12` in `𝔽₁₃ˣ`), `shift_no_monic_factor` (`Φ₁₃(x + 1)` has no monic factor of positive degree in `ℤ[x]`), `gauss_period_square` (`η² + η = 3`), `gauss_period_disc` (`(2η + 1)² = 13`), `sqrt13_not_in_qi`, and `cyclotomic_pow_order_div_four` (`(2 ^ e) ^ 4 = 1` if and only if `3 ∣ e`, for `e < 12`). `omega_order_twelve` packages them. Gauss's lemma and the unique quadratic subfield of `ℚ(ζ₁₃)` are not theorems, so `[ℚ(i, ζ₁₃):ℚ(i)] = 12` is not a computed degree.
- `not_three_div_complement` is kernel axioms only: both cyclotomic exponents divisible by `3` force `2 ^ 4 = 1`. `reducible_shape_contradicts_omega` is `False` for a coprime curve with `a ≠ 0` and `b ≠ 0`, conditional on `reducible_shape_13_open`, `ray_class_mod_pi_open`, `inertia_trivial_of_tate_13_open`, and `chars_unramified_above_13_open`. It is not unconditional irreducibility and it does not produce a term of `RhoE13Open`.
- In `Mathlib/Modular/CmVanishing32.lean`: the endomorphisms `(X, Y) ↦ (-X, i Y)` of `Y² = X³ - X` and `Y² = X³ + X` (`cm_endomorphism_x3_sub_x`, `cm_endomorphism_x3_add_x`), so both CM discriminants are `-4`. Inert primes through `19` are `3, 7, 11, 19`. `cm_vanish_32` and `cm_vanish_64` read `a_p = 0` there off `hecke32_eigenvalues` and `hecke64_eigenvalues`; they add no new `native_decide`. The same four primes have trace `0` on both Weierstrass models (`cm_curve_trace_inert_sub`, `cm_curve_trace_inert_add`), with no axioms. `three_not_dvd_c` says a coprime solution is not divisible by `3`. `freyTrace3_not_div_13` is the `𝔽₉` point count: the trace lies in `{-2, 4, 6}`. The comparison is not the residue `0`. `qcurve_isogeny_input` reuses `velu_target_eq_twist_neg_two` and `thirteen_not_dvd_two`: the conjugate is `2`-isogenous to the twist by `-2`, so the cocycle is an extension of `ρ̄_E` to `G_ℚ`. Weil restriction is `4`-dimensional and is not used; its residue would be `10` (`weil_sum_residue_ten`: `2 · 10 ≡ -6 (mod 13)` and `10 ≢ -6`). With `a_3 = 0`, `trace(Frob_3²) = -6` and `-6 ≡ 7 (mod 13)` (`frob_square_trace_at_3`, `neg_six_cong_seven`). `freyTrace3_not_cong_neg_six` says no admissible residue is `-6` or `7` mod `13`. `coefficient_qcurve_misses_neg_six` is `(1, 0, 1)`: `IsQCurve` holds and the trace is `-2`. `modular_package_unresolved` is `rho_E_p = rho_E_p_twisted = unresolved`. The intertwiner scalars are theorems: degree `2`, composition degree `4`, scalar `±2`, and `χ_{-2}(σ)² = 1` (`mu_coefficient_data`, `scalar_of_degree_four`, `intertwiner_endomorphism_scalar`). `(-2 / 3) = 1` (`legendre_neg_two_at_three`). `±2` are not squares in `𝔽₁₃` and do not rescale to `1` (`f13_linear_lift_scalar_fails`). Both are squares in `𝔽₁₃[√2]`, and the rescaling exists there (`f169_linear_lift_scalar_exists`). Frobenius of `𝔽₁₆₉` is conjugation, and the class of `-6` is the fixed prime-field element `(7, 0)` (`f169_frobenius`, `trace_neg_six_in_prime_field`). There is no Tate module. The remaining open is `qcurve_extension_169_open`, the trace of a `GL₂(𝔽₁₆₉)` lift. `qcurve_extension_13_open` is that trace rewritten by `0² - 2·3 = -6`. `H²` is not a second hypothesis. `modular_residual_13_open` is proved by projection of `ribet_level_lowering_4413.gkResidual`. `qcurve_descent_13_of_bridge` is the corrected `qcurve_descent_13_open` on the `𝔽₁₆₉` open. `no_newform_32_64_of_qcurve` is `no_newform_32_64_open` on that same hypothesis. The definition is not rewritten, and it is not a theorem by itself.

`pacetti_2_8_open` (the Artin exponent `FTameAtPi + SwanAtPi` lies in `{10, 12}`) is a theorem of `components_n_plus_five_open` alone (`pacetti_of_components`). It is not an independent open proposition.

## What is assumed

Two axioms, unchanged:

- `frey_qcurve_modular` produces `Modular E`.
- `ribet_level_lowering_4413` is still an axiom. The hypotheses of its `level` field are unchanged: conductor shape `N = 32|c|²` or `64|c|²`, a term of `RhoE13Open E`, and `pacetti_2_8_open`. `RibetLevel` has the same fields, including `h_n_eq : n = 32 ∨ n = 64`. `RibetLevel.level_eq` only reads that field. Its `#print axioms` line is empty. The axiom's conclusion is now `RibetLowering`.

Old conclusion:

```lean
axiom ribet_level_lowering_4413 {c : ℤ} {E : FreyCurve4413} (N : ℕ)
    (hCond : FreyConductorDivides c N) (hIrr : RhoE13Open E)
    (hPacetti : pacetti_2_8_open) : RibetLevel c E N
```

New conclusion:

```lean
structure RibetLowering where
  level :
    ∀ {c : ℤ} {E : FreyCurve4413} (N : ℕ),
      FreyConductorDivides c N → RhoE13Open E → pacetti_2_8_open →
        RibetLevel c E N
  gkResidual : GkResidualIso

axiom ribet_level_lowering_4413 : RibetLowering
```

`GkResidualIso` is the statement `modular_residual_13_open` proves. It is the `𝔽₉` congruence `(13 : ℤ) ∣ freyTrace3 (mod3 a) (mod3 b) - (-6)` for a coprime curve with `Modular E` and a `RibetLevel`, together with the antecedents `rho_E_p E = rho_E_p_twisted E = unresolved`. It is not under `hCond`, `hIrr`, or `hPacetti`. Those three stay on `level`. `RibetLevel` itself does not store the isomorphism: `Newform` has no fields, `LevelLowered` is opaque, and `rho_E_p` is `.unresolved`. The axiom claims the congruence for every such package, which is the statement the descent applies. `modular_residual_13_open` is `ribet_level_lowering_4413.gkResidual`.

Four open propositions. They are `def`s of type `Prop`, not axioms and not `sorry`.

| Proposition | Statement that is not a theorem |
| --- | --- |
| `components_n_plus_five_open` | On a minimal `u = 1` translate in the `IsINStar n` range, `NeronSpecialFiberComponents E = n + 5`. |
| `serre_two_level_open` | If the Artin exponent is `10`, the sealed `twoPrimaryLevel` is `32`; if it is `12`, the level is `64`. |
| `odd_level_one_open` | On a coprime curve, the sealed `OddPrimaryLevel` is `1`. |
| `tate_param_13_dvd_of_coprime` | At each odd prime `p ∣ c`, `13` divides the sealed `tateParameter E p`. |

`h_n_eq_of_tate` assumes the first three and concludes that the product of the two sealed level functions is `32` or `64`. The fourth proposition does not appear in that proof. It does not rewrite `OddPrimaryLevel`, and `odd_level_one_open` does not follow from it. A fifth open proposition, `no_newform_32_64_open`, is the missing elimination of a `RibetLevel`. It is used only by `no_solution_4413_of_frontier`. It is not proved.

Two further open propositions sit beside the sealed irreducibility predicate. They are not hypotheses of the capstone, and they do not produce a term of `RhoE13Open`.

| Proposition | Statement that is not a theorem |
| --- | --- |
| `rhoE13_open_of_psi` | `Psi13HasNoQiRoot` and `ImageContainsSL2` imply `RhoE13Open`. The seal has no equation lemma, so the implication is not proved by unfolding. |
| `GL2F13.dickson_13_open` | An `𝔽₁₃`-irreducible subgroup containing an element of order `13` contains `SL₂(𝔽₁₃)`. `normal_closure_contains_SL2` does not suffice: its conjugates live in the ambient group and do not move the fixed line inside an arbitrary subgroup. |
| `steinberg_prime_13_open` | Some prime of multiplicative reduction has `13 ∤ tateParameter`. No witness is constructed. |

`#print axioms` does not list hypothesis propositions. The ledger records the kernel axioms. The hypotheses are in the theorem statements.

## What would close each gap

- **Components.** A formal Néron special fiber of the `u = 1` translate, with component count `m = n + 5`. That discharges `pacetti_2_8_open`, `swan_of_components` (`SwanAtPi = 12 - n`), and `conductor_of_components` (sum `10` or `12`). It does not identify Ribet's `n`.
- **Serre 2-level.** A proof that the 2-primary part of the Serre conductor of `ρ̄_{E,13}` is `2^(f/2)` when `f = FTameAtPi + SwanAtPi` is even. The ideal norm `2^f` is a different integer (`1024` or `4096`).
- **Tate parameter.** Tate uniformization at odd `ℓ ∣ c`: a parameter `q` with `v(q) = v(Δ)` on a minimal model, and `13 ∣ v(q)`. For `ℓ ≠ 13` that divisibility kills the Kummer class of `q` in `𝔽₁₃ˣ`. At `ℓ = 13` it is the input to finiteness of the group scheme. Neither uniformization nor the Kummer sequence is formalized. The proved input is the norm valuation, not this divisibility.
- **Odd Serre level.** `OddPrimaryLevel E = 1`. The arithmetic lemma `nat_eq_one_of_prime_divisors_removed` needs two facts that are not theorems: every prime divisor of `OddPrimaryLevel` is an odd prime divisor of `c`, and `13 ∣ tateParameter` removes that prime. `odd_conductor_empty` removes primes dividing `d = 1` only.
- **Uneven splitting**, unnamed. It is not a named open proposition. It is why `multiplicative_at_dvd_c` does not prove `tate_param_13_dvd_of_coprime`. See below. Closing it is a theorem that `13 ∣ v_𝔭(Δ)` at each Gaussian prime above `p ∣ c`. That still would not be a Tate parameter.
- **`no_newform_32_64_open`.** Darmon–Merel Lemma 8.2. The existing Mazur products vanish, and the winding nonvanishing does not produce `False`. The extension residue at `𝔭₃` is `-6 ≡ 7 (mod 13)`. A linear rescaling of the intertwiner over `𝔽₁₃` is impossible (`f13_linear_lift_scalar_fails`). The same rescaling exists over `𝔽₁₆₉`, and the trace value `-6` lies in `𝔽₁₃`. `qcurve_extension_169_open` is the unformalized `GL₂(𝔽₁₆₉)` lift. `qcurve_extension_13_open` is a theorem on that open. `modular_residual_13_open` is proved: it is `ribet_level_lowering_4413.gkResidual`. `no_newform_32_64_of_qcurve` is this proposition on `qcurve_extension_169_open` alone. `no_solution_4413_of_frontier` still assumes the proposition itself. The general vanishing `a_p(f) = 0` for every inert prime, past the Hecke range through `19`, is not a theorem.
- **`RhoE13Open`.** A term. The predicate is `opaque`, so there is no equation lemma and the body cannot be unfolded. `rhoE13_open_of_psi` is the open proposition `Psi13HasNoQiRoot → ImageContainsSL2 → RhoE13Open` on a nontrivial solution. It is not a theorem. `Psi13HasNoQiRoot` stays open on `NontrivialFrey`, and it is false for the singular curve `(0, 0, 0)` in the unrestricted form. `GL2F13.order_thirteen` and `GL2F13.transvection_classification_13` prove that a supplied matrix of order `13` is conjugate to `(1 1; 0 1)`, with no smaller positive exponent. `GL2F13.normal_closure_contains_SL2` writes every determinant-`1` matrix as a product of ambient `GL₂`-conjugates of that transvection. That does not move the fixed line inside an arbitrary subgroup, so `GL2F13.dickson_13_open` stays open. `steinberg_prime_13_open` asks for a prime of multiplicative reduction with `13 ∤ tateParameter`. No such prime is constructed, and the classification does not assume the proposition: a prime is not a matrix. `multiplicative_at_dvd_c` does not give `13 ∤ tateParameter`. `tate_param_13_dvd_of_coprime` asserts the opposite divisibility at odd primes dividing `c`. If `13 ∣ tateParameter` at every bad prime, strategy A is dead and irreducibility must come from strategy B. None of this produces a term of `RhoE13Open`. The capstone still takes that term as a hypothesis because `ribet_level_lowering_4413` requires one. Strategy B does not discharge it either. `reducible_shape_contradicts_omega` is a conditional `False` under the reducible shape and three further opens; it is not a term of the seal.
- **Modularity.** Replace `frey_qcurve_modular` by ℚ-curve modularity.
- **Level lowering.** Replace `ribet_level_lowering_4413`. `h_n_eq_of_tate` does not discharge `RibetLevel.h_n_eq`: the conclusion is a product of two sealed functions, not that field.
- **`no_solution_4413`.** The conditional theorem is `no_solution_4413_of_frontier`. The unconditional statement is not a theorem. `(1, 0, 1)` and `(0, 1, 1)` remain solutions.

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
'GL2F13.order_thirteen' depends on axioms: [propext, Classical.choice, Quot.sound]
'GL2F13.transvection_classification_13' depends on axioms: [propext, Classical.choice, Quot.sound]
'GL2F13.normal_closure_contains_SL2' depends on axioms: [propext, Classical.choice, Quot.sound]
'ReducibleShape13.isGaussUnit_iff_four' depends on axioms: [propext, Classical.choice, Quot.sound]
'ReducibleShape13.gauss_unit_fourth' depends on axioms: [propext, Classical.choice, Quot.sound]
'ReducibleShape13.four_units_distinct' depends on axioms: [propext, Classical.choice, Quot.sound]
'ReducibleShape13.sqPow_pi_congr' depends on axioms: [propext, Classical.choice, Quot.sound]
'ReducibleShape13.piUnitChar_order_div_four' depends on axioms: [propext, Classical.choice, Quot.sound]
'ReducibleShape13.fourth_roots' depends on axioms: [propext, Quot.sound]
'ReducibleShape13.trace_residue_four' depends on axioms: [propext, Quot.sound]
'ReducibleShape13.five_has_order_four' depends on axioms: [propext]
'shape_forces_order_div_four' depends on axioms: [propext, Classical.choice, Quot.sound]
'character_sum_matches_pacetti' depends on axioms: [propext, Classical.choice, Quot.sound]
'Cyc13.primitive_root_two' depends on axioms: [propext]
'Cyc13.shift_no_monic_factor' depends on axioms: [propext, Classical.choice, Quot.sound]
'Cyc13.gauss_period_square' depends on axioms: [propext, Quot.sound]
'Cyc13.gauss_period_disc' depends on axioms: [propext, Classical.choice, Quot.sound]
'Cyc13.sqrt13_not_in_qi' depends on axioms: [propext, Classical.choice, Quot.sound]
'Cyc13.cyclotomic_pow_order_div_four' depends on axioms: [propext, Quot.sound]
'Cyc13.omega_order_twelve' depends on axioms: [propext, Classical.choice, Quot.sound]
'not_three_div_complement' depends on axioms: [propext, Classical.choice, Quot.sound]
'reduible_shape_contradicts_omega' depends on axioms: [propext, Classical.choice, Quot.sound]
'Cm32.cm_endomorphism_x3_sub_x' depends on axioms: [propext, Classical.choice, Quot.sound]
'Cm32.cm_endomorphism_x3_add_x' depends on axioms: [propext, Classical.choice, Quot.sound]
'Cm32.splitting_through_19' does not depend on any axioms
'Cm32.cm_vanish_32' depends on axioms: [propext, Quot.sound, hecke32_eigenvalues._native.native_decide.ax_1_1]
'Cm32.cm_vanish_64' depends on axioms: [propext, Quot.sound, hecke64_eigenvalues._native.native_decide.ax_1_1]
'Cm32.cm_curve_trace_inert_sub' does not depend on any axioms
'Cm32.cm_curve_trace_inert_add' does not depend on any axioms
'Cm32.freyTrace3_table' does not depend on any axioms
'Cm32.freyTrace3_not_div_13' depends on axioms: [propext, Quot.sound]
'Cm32.three_not_dvd_c' depends on axioms: [propext, Quot.sound]
'Cm32.frob_square_trace_at_3' does not depend on any axioms
'Cm32.neg_six_cong_seven' depends on axioms: [propext]
'Cm32.weil_sum_residue_ten' depends on axioms: [propext]
'Cm32.not_thirteen_dvd_trace_minus_neg_six' depends on axioms: [propext]
'Cm32.not_thirteen_dvd_trace_minus_ten' depends on axioms: [propext]
'Cm32.freyTrace3_not_cong_neg_six' depends on axioms: [propext, Quot.sound]
'qcurve_isogeny_input' depends on axioms: [propext, Classical.choice, Quot.sound]
'modular_package_unresolved' does not depend on any axioms
'coefficient_qcurve_misses_neg_six' depends on axioms: [propext, Classical.choice, Quot.sound]
'mu_coefficient_data' depends on axioms: [propext, Classical.choice, Quot.sound]
'scalar_of_degree_four' depends on axioms: [propext, Classical.choice, Quot.sound]
'intertwiner_endomorphism_scalar' depends on axioms: [propext, Classical.choice, Quot.sound]
'legendre_neg_two_at_three' does not depend on any axioms
'twisted_frob_square_trace' does not depend on any axioms
'f13_linear_lift_scalar_fails' depends on axioms: [propext, Classical.choice, Quot.sound]
'f169_linear_lift_scalar_exists' does not depend on any axioms
'f169_frobenius_sweep' does not depend on any axioms
'f169_frobenius' depends on axioms: [propext, Quot.sound]
'trace_neg_six_in_prime_field' does not depend on any axioms
'qcurve_extension_13_open' does not depend on any axioms
'modular_residual_13_open' depends on axioms: [ribet_level_lowering_4413]
'qcurve_descent_13_of_bridge' depends on axioms: [frey_qcurve_modular, propext, ribet_level_lowering_4413, Classical.choice, Quot.sound]
'lowered_form_contradicts_trace3' depends on axioms: [frey_qcurve_modular, propext, ribet_level_lowering_4413, Classical.choice, Quot.sound]
'no_newform_32_64_of_qcurve' depends on axioms: [frey_qcurve_modular, propext, ribet_level_lowering_4413, Classical.choice, Quot.sound]
'FreyCurve4413.thirtyTwo_dvd_of_conductor_shape' depends on axioms: [propext]
'FreyCurve4413.shape_dvd_does_not_give_thirtyTwo' depends on axioms: [propext, Quot.sound]
'odd_conductor_empty' depends on axioms: [propext, Quot.sound]
'level_32_or_64' does not depend on any axioms
'not_minimal_even_c' depends on axioms: [propext, Classical.choice, Quot.sound]
```

The `native_decide` axioms are the flag. They are kernel trust of the compiler for the Manin-symbol matrices and for `C(5, g) = 0`. They are not `frey_qcurve_modular` or `ribet_level_lowering_4413`. They do not appear in the conductor chain (`FTameAtPi` through `h_n_eq_of_tate`). `cm_vanish_32` and `cm_vanish_64` depend on the existing Hecke `native_decide` axioms. They do not add one. The point counts `cm_curve_trace_inert_sub`, `cm_curve_trace_inert_add`, and `freyTrace3_table` depend on no axioms. `frob_square_trace_at_3` and `modular_package_unresolved` depend on no axioms. `legendre_neg_two_at_three`, `twisted_frob_square_trace`, `f169_linear_lift_scalar_exists`, `f169_frobenius_sweep`, `trace_neg_six_in_prime_field`, and `qcurve_extension_13_open` depend on no axioms. `mu_coefficient_data`, `scalar_of_degree_four`, `intertwiner_endomorphism_scalar`, and `f13_linear_lift_scalar_fails` depend on `propext`, `Classical.choice`, and `Quot.sound`. `f169_frobenius` depends on `propext` and `Quot.sound`. `modular_residual_13_open` depends only on `ribet_level_lowering_4413`. `qcurve_descent_13_of_bridge`, `lowered_form_contradicts_trace3`, and `no_newform_32_64_of_qcurve` depend on `frey_qcurve_modular`, `ribet_level_lowering_4413`, `propext`, `Classical.choice`, and `Quot.sound`. The hypothesis that remains is `qcurve_extension_169_open`. There is no new `native_decide`.

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

## Strategy A and strategy B

Strategy A is the transvection. `order_thirteen`, `transvection_classification_13`, and `normal_closure_contains_SL2` are proved in `Mathlib/Modular/GL2F13.lean`. Their `#print axioms` lines are kernel axioms only. `dickson_13_open` is not discharged by the normal closure: the conjugates are ambient, and they do not move the fixed line of the transvection inside an arbitrary subgroup. `steinberg_prime_13_open` has no witness. `rhoE13_open_of_psi` is not a theorem, because `RhoE13Open` has no equation lemma.

`tate_param_13_dvd_of_coprime` wants `13 ∣ tateParameter` at every odd prime divisor of `c`. A transvection at a prime of multiplicative reduction needs `13 ∤ tateParameter` somewhere. If `13 ∣ tateParameter` at every bad prime, strategy A is dead and irreducibility must come from strategy B.

Strategy B assumes a reducible residual representation and looks for a contradiction. `rho_E_13` is `GaloisRepresentation.unresolved`, so the representation is not formalized. The single open proposition for the shape is `reducible_shape_13_open`: `ρ̄^ss ≅ χ₁ ⊕ χ₂` with `χ₁ χ₂` the cyclotomic character mod `13`, written as a ray-class character `ε` and an exponent `a` with `a + (1 - a) ≡ 1 (mod 12)`. It is not proved, and it is not irreducibility.

The algebraic core is proved. The units are `{±1, ±√(-1)}`. For `n ≥ 3` they remain distinct modulo `π ^ n`. A `π`-unit satisfies `z ^ (2 ^ m) ≡ 1 (mod π ^ (m + 1))`, so `(ℤ[i] / π ^ n)ˣ` is a `2`-group. A character of that group with values in `𝔽₁₃ˣ` therefore has order dividing `4` (`piUnitChar_order_div_four`). The fourth roots are `1`, `5`, `8`, `12`, and `5` has order exactly `4`. A sum `u + t u⁻¹` with `u` a fourth root is one of `1 + t`, `5 + 8t`, `8 + 5t`, `12 + 12t` (`trace_residue_four`). Class number `1` is not a theorem. `ray_class_mod_pi_open` is the missing identification of a Galois character unramified outside `{π}` with that unit-group character.

The order of the cyclotomic character is `omega_order_twelve`, in `Mathlib/Modular/Cyclotomic13.lean`. `2` is a primitive root modulo `13`, so `𝔽₁₃ˣ` has order exactly `12`, and `2 ^ 4 ≠ 1`. `Φ₁₃(x + 1)` is monic of degree `12` and Eisenstein at `13` in `ℤ[x]` (`shift_no_monic_factor`). The Gauss period satisfies `η² + η = 3`, hence `(2η + 1)² = 13` (`gauss_period_disc`), and `√13` is not in `ℚ(i)` (`sqrt13_not_in_qi`). Two steps of the classical degree `[ℚ(i, ζ₁₃):ℚ(i)] = 12` are not theorems: Gauss's lemma, which would move the Eisenstein irreducibility from `ℤ[x]` to `ℚ[x]`, and the Galois correspondence identifying the fixed field of the unique subgroup of order `6` with `ℚ(√13)`. `cyclotomic_pow_order_div_four` is the order criterion that is proved: for `e < 12`, `(2 ^ e) ^ 4 = 1` if and only if `3 ∣ e`.

The bridges are open propositions, not theorems:

| Proposition | What is not formalized |
| --- | --- |
| `reducible_shape_13_open` | `ρ̄^ss ≅ χ₁ ⊕ χ₂` with product the cyclotomic character. One open, for the shape. |
| `inertia_trivial_of_tate_13_open` | `13 ∣ tateParameter` at `p ∣ c` implies residual inertia is trivial. Conditional on `tate_param_13_dvd_of_coprime` in the sense that the divisibility is the hypothesis. |
| `artin_exponent_of_characters_open` | The Artin exponent `FTameAtPi + SwanAtPi`, which `pacetti_of_components` places in `{10, 12}`, splits as the sum of the conductors of `χ₁` and `χ₂`. |
| `ray_class_mod_pi_open` | Class field theory for the ray class group modulo a power of `π`. |
| `frobenius_trace_sum_open` | At a good prime, `a_𝔭 = χ₁(Frob) + χ₂(Frob)`. |
| `weil_bound_open` | `\|a_𝔭\| ≤ 2 √N(𝔭)`, written `a² ≤ 4 N(𝔭)`. |
| `trace_outside_weil_open` | The character constraint forces a value outside that range. Not `False`, and not `¬ (a⁴ + b⁴ = c¹³)`. |
| `chars_unramified_above_13_open` | OPEN. Under the shape, the ray-class bridge, and inertia trivial at `p ∣ c`, both cyclotomic exponents are divisible by `3`. Finite flat of weight `2` would force the inertial exponents `{0, 1}`. Those sum to `1` and do not give order dividing `4`, hence the order-`4` criterion is `3 ∣ e_i`, not the pair `{0, 1}`. Not assumed. |

`shape_forces_order_div_four` is the order bound conditional on `reducible_shape_13_open`. `character_sum_matches_pacetti` is the Artin sum conditional on `components_n_plus_five_open` and `artin_exponent_of_characters_open`. `reducible_shape_contradicts_omega` is `False` for a coprime curve with `a ≠ 0` and `b ≠ 0`, conditional on `reducible_shape_13_open`, `ray_class_mod_pi_open`, `inertia_trivial_of_tate_13_open`, and `chars_unramified_above_13_open`. The proof is `not_three_div_complement`: each exponent divisible by `3` makes `2 ^ e` a fourth root, the two powers multiply to `2` because the exponents sum to `1` modulo `12`, and a product of fourth roots is a fourth root, so `2 ^ 4 = 1`, which `omega_order_twelve` forbids. None of these claims unconditional irreducibility.

## CM vanishing at levels 32 and 64

`no_newform_32_64_open` is Darmon–Merel Lemma 8.2. `C(5, g) = 0` and `(T₅ - 6) e ≢ 0 (mod 13)` are not recomputed. Both rational newforms have CM discriminant `-4`. The models `Y² = X³ - X` and `Y² = X³ + X` admit `(X, Y) ↦ (-X, i Y)`. Primes inert in `ℚ(i)` through `19` are `3, 7, 11, 19` (`splitting_through_19`). `cm_vanish_32` and `cm_vanish_64` are `a_p = 0` there, taken from the existing Hecke matrices, and the split eigenvalues `a_5`, `a_13`, `a_17` are not zero. The same four inert primes have trace `0` on both curves. Vanishing for every inert prime is not a theorem: the matrices stop at `19`, and `Newform` stores no eigenvalues.

A coprime solution has `3 ∤ c` (`three_not_dvd_c`). Over `𝔽₉` the Frey trace is in `{-2, 4, 6}` (`freyTrace3_table`).

The residue is recomputed from the ℚ-curve input, not taken to be `0`. `qcurve_isogeny_input` is `velu_target_eq_twist_neg_two` together with `13 ∤ 2`. That identity is a `2`-isogeny from `E^σ` onto the twist of `E` by `-2`. The cocycle of a projective representation of `G_ℚ` is the extension: a `2`-dimensional `ρ̄` with `ρ̄ |_{G_K} ≅ ρ̄_E`. Weil restriction `Res_{K/ℚ} E` is an abelian surface, and `ρ̄_f |_{G_K} ≅ ρ̄_E ⊕ ρ̄_{E^σ}` would be `4`-dimensional, so it is not the residual representation of a weight-`2` newform. There is no `weil_restriction_13_open`. The class that comparison would have given is `10`, since `2 · 10 ≡ -6 (mod 13)`, and `weil_sum_residue_ten` records `10 ≢ -6`. The dimension statement is not a formal theorem. The choice of formalism is the isogeny, not disjointness: `not_thirteen_dvd_trace_minus_ten` says `10` is also disjoint from `{-2, 4, 6}`.

For the extension, `3` is inert, so `Frob_𝔭₃ = Frob_3²`. On a weight-`2` form, `trace(Frob_p²) = a_p² - 2p`. The eigenlines have `a_3 = 0`, hence the trace is `-6` (`frob_square_trace_at_3`), and `-6 ≡ 7 (mod 13)` (`neg_six_cong_seven`). The `-2`-twist does not change this trace: `Frob_𝔭₃` is a square, and `(-2 / 3) = 1`. `freyTrace3_not_cong_neg_six` is the point count against that class. `coefficient_qcurve_misses_neg_six` is `(1, 0, 1)`, whose trace is `-2`: `IsQCurve` is true for every Frey curve and does not imply the congruence.

The intertwiner is a scalar computation, not a Tate module. `mu_coefficient_data` packages the twist `-2`, the Vélu numerator degree `2`, the equality of the target with that twist, and `13 ∤ 2`. The target is `E^{(-2)}`, not `E`. `isogeny_composition_degree` is `2 · 2 = 4`. `scalar_of_degree_four` says `n² = 4` forces `n = ±2`. `chi_neg_two_square` says a value in `{±1}` squares to `1`, and `twist_factor_fixes_scalar` says this factor does not move `n`. `intertwiner_endomorphism_scalar` is that composition: the scalar is still `±2`.

`(-1 / 3) = -1`, `(2 / 3) = -1`, and `3 ≡ 3 (mod 8)`, so `(-2 / 3) = 1` (`legendre_neg_one_at_three`, `legendre_two_at_three`, `three_mod_eight`, `legendre_neg_two_at_three`). `twisted_frob_square_trace` multiplies `0² - 2·3` by `χ(Frob_3)²`. `trace_unmoved_by_legendre` multiplies it by the Legendre value. Both equal `-6`.

Nonzero squares modulo `13` are `{1, 3, 4, 9, 10, 12}` (`unit_square_residues`). `2` and `11` are not squares (`two_and_eleven_not_squares`), and `(-2) % 13 = 11` (`neg_two_residue`). `f13_no_rescale` says no residue `c` has `c² · 2 ≡ 1` or `c² · 11 ≡ 1`. `f13_linear_lift_scalar_fails` is this together with `u = ±2`. A linear rescaling over `𝔽₁₃` of an intertwiner with `M₀² = u I` does not exist. That is a theorem. It does not say every homomorphism `G_ℚ → GL₂(𝔽₁₃)` is absent.

`𝔽₁₆₉` is modeled as `𝔽₁₃[√2]`. `(√2)² = 2` and `(5 √2)² = 11` (`f169_two_is_square`, `f169_neg_two_is_square`). `c = 7 √2` rescales `2`, and `c = 4 √2` rescales `11` (`f169_rescale_two`, `f169_rescale_neg_two`). `(√2)¹³ = -√2` because `2⁶ ≡ 12 (mod 13)` (`sqrt_two_frobenius`). `f169_frobenius` checks all `169` classes: `z¹³` equals the conjugate. `conj_fixed_is_prime_field` says a fixed class has `√2`-coefficient `0`. `trace_neg_six_in_prime_field` says `-6 ≡ 7 (mod 13)` is the class `(7, 0)`, fixed by Frobenius, so the trace value lies in `𝔽₁₃`.

One step is not formalized. `qcurve_extension_169_open` asks for the trace at `Frob_3²` to equal `-6`, which is what a representation `G_ℚ → GL₂(𝔽₁₆₉)` restricting to `ρ̄_E` up to `χ_{-2}` would give. The representation is not constructed. `H²(G_ℚ, 𝔽₁₆₉ˣ)` is not defined in this repository. The local class on the conjugation is the class of `±2`, and `f169_linear_lift_scalar_exists` shows that class is a coboundary over `𝔽₁₆₉`. Tate's vanishing theorem is not proved, and it is not a second hypothesis. `qcurve_extension_13_open` is a theorem on this open: `frob_square_trace_at_3` rewrites `-6` as `0² - 2·3`. `modular_residual_13_open` is proved. It is the projection `ribet_level_lowering_4413.gkResidual`, and its statement is `GkResidualIso`. `modular_package_unresolved` remains true: both placeholders are `.unresolved`. `Newform` has no eigenvalue field. `LevelLowered` is opaque. `ResidualEqual` is not a field of `RibetOutput`. The newform counts are the numeral `1`, not an identification of `RibetOutput.g` with `eig32` or `eig64`. The axiom states the `-6` congruence directly, as `GkResidualIso`, rather than storing it on `RibetLevel`. `qcurve_descent_13_of_bridge` rewrites `0² - 6` to `-6` and is the corrected `qcurve_descent_13_open` on `qcurve_extension_169_open`. `lowered_form_contradicts_trace3` is `False` for a coprime curve with `a ≠ 0`, `b ≠ 0`, `Modular E`, and a `RibetLevel`, on that hypothesis. `no_newform_32_64_of_qcurve` is `no_newform_32_64_open` on that hypothesis. The frontier definition is unchanged. `no_solution_4413_of_frontier` still takes the frontier proposition as a hypothesis. The closure is not unconditional.

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
├─ RhoE13Open                                          SEALED  no term, no equation lemma
│    rhoE13_open_of_psi                                OPEN PROP  seal does not unfold
│    Psi13HasNoQiRoot                                  OPEN PROP  on NontrivialFrey only
│    ImageContainsSL2                                  SEALED
│    strategy A
│    │  order exactly 13                               PROVED  order_thirteen
│    │  order-13 matrix ⇒ conjugate to (1 1; 0 1)      PROVED  transvection_classification_13
│    │  normal closure in GL₂ contains SL₂             PROVED  normal_closure_contains_SL2
│    │       ambient conjugates; does not move the fixed line
│    │       inside an arbitrary subgroup
│    │  irreducible subgroup + order 13 ⇒ SL₂          OPEN PROP  dickson_13_open
│    │  Steinberg prime, 13 ∤ tateParameter            OPEN PROP  steinberg_prime_13_open
│    │       no witness
│    │       not a hypothesis of the classification
│    │       multiplicative_at_dvd_c does not supply it
│    │  if 13 ∣ tateParameter at every bad prime       strategy A is dead
│    strategy B  (does not claim irreducibility)
│    │  ρ̄^ss ≅ χ₁ ⊕ χ₂, product cyclotomic             OPEN PROP  reducible_shape_13_open
│    │  units {±1, ±√(-1)}, order dividing 4           PROVED  piUnitChar_order_div_four
│    │  fourth-root traces                             PROVED  trace_residue_four
│    │  shape forces the unit character order | 4      PROVED from the shape open
│    │       shape_forces_order_div_four
│    │  ray class group modulo π^n                     OPEN PROP  ray_class_mod_pi_open
│    │  Artin 10/12 splits across χ₁, χ₂               OPEN PROP  artin_exponent_of_characters_open
│    │       pacetti_of_components is the 10/12 input
│    │       character_sum_matches_pacetti
│    │  unramified at p∣c from the Tate divisibility   OPEN PROP  inertia_trivial_of_tate_13_open
│    │  a_𝔭 = χ₁(Frob) + χ₂(Frob)                      OPEN PROP  frobenius_trace_sum_open
│    │  |a_𝔭| ≤ 2√N(𝔭)                                 OPEN PROP  weil_bound_open
│    │  character value outside that range             OPEN PROP  trace_outside_weil_open
│    │  2 has order exactly 12 in F₁₃ˣ                 PROVED  primitive_root_two
│    │       omega_order_twelve
│    │  Φ₁₃(x+1) has no monic factor in Z[x]           PROVED  shift_no_monic_factor
│    │       Gauss's lemma for Q[x]                     not a theorem
│    │  η² + η = 3 and (2η+1)² = 13                     PROVED  gauss_period_square
│    │       gauss_period_disc
│    │  √13 ∉ Q(i)                                      PROVED  sqrt13_not_in_qi
│    │  unique quadratic subfield of Q(ζ₁₃)             not a theorem
│    │       Galois correspondence is not formalized
│    │  ord(2^e) | 4 iff 3 | e                          PROVED  cyclotomic_pow_order_div_four
│    │  both exponents divisible by 3                   OPEN PROP  chars_unramified_above_13_open
│    │       finite flat would give exponents {0, 1}
│    │       those sum to 1 and do not give order | 4
│    │       hence the criterion is 3 ∣ e_i
│    │       not assumed
│    │  both such exponents force 2^4 = 1              PROVED  not_three_div_complement
│    │  reducible shape contradicts order 12           CONDITIONAL
│    │       reducible_shape_contradicts_omega
│    │       on the shape, ray class, inertia, and the 13-open
│    │       not unconditional irreducibility
│    │       does not produce a term of RhoE13Open
├─ RibetLevel, with h_n_eq : n = 32 ∨ n = 64           AXIOM  ribet_level_lowering_4413
│    also needs a conductor shape and pacetti_2_8_open
│    level_eq reads the field                          PROVED projection, no axioms
├─ solution_modular_and_lowered                        uses both axioms
│    N = 32|c|² is the shape hypothesis, not the conductor
├─ C(5, g) = 0 at both CM newforms                     native_decide
│    mazur_trick_4413 : 13 ∣ 0                         PROVED, removes nothing
├─ (T₅ - 6) e ≢ 0 (mod 13)                             native_decide
│    winding_elimination_4413
│    the map X₀(N) → J_e is not formalized
├─ no_newform_32_64_open                               OPEN PROP
│    RibetLevel of a modular curve with a ≠ 0, b ≠ 0 is impossible
│    CM discriminant -4                                PROVED  (X,Y) ↦ (-X, i Y)
│         Y² = X³ - X and Y² = X³ + X
│    inert primes 3, 7, 11, 19                         PROVED  splitting_through_19
│    a_p(eig) = 0 at those primes                      PROVED  cm_vanish_32, cm_vanish_64
│         read from hecke32_eigenvalues, hecke64_eigenvalues
│         split a_5, a_13, a_17 are not 0
│         a_p = 0 for every inert p                    not a theorem
│    trace 0 on both CM models at those primes        PROVED  no axioms
│    3 ∤ c for a coprime solution                      PROVED  three_not_dvd_c
│    Frey trace over F₉ is in {-2, 4, 6}               PROVED  freyTrace3_table
│    2-isogeny to the −2-twist, 13 ∤ 2                 PROVED  qcurve_isogeny_input
│         selects the extension, not Weil restriction
│         Weil residue 10 is a different class         PROVED  weil_sum_residue_ten
│         10 is also disjoint from {-2, 4, 6}          PROVED  not used
│         there is no weil_restriction_13_open
│    μ lands on the −2-twist, degree 2                 PROVED  mu_coefficient_data
│         not a Tate-module map
│    composition degree 4, scalar ±2                   PROVED  scalar_of_degree_four
│    χ_{−2}(σ)² = 1, scalar stays ±2                   PROVED  intertwiner_endomorphism_scalar
│    (−2 / 3) = 1, trace stays −6                      PROVED  legendre_neg_two_at_three
│    trace(Frob_3²) = 0² − 2·3 = −6                    PROVED  frob_square_trace_at_3
│    −6 ≡ 7 (mod 13)                                   PROVED  neg_six_cong_seven
│    ±2 are residues 2 and 11, not squares             PROVED  f13_linear_lift_scalar_fails
│         no c in F₁₃ with c² · u = 1
│         this is the F₁₃ rescaling, not every GL₂ map
│    both scalars are squares in F₁₃[√2]               PROVED  f169_linear_lift_scalar_exists
│         c = 7√2 rescales 2, c = 4√2 rescales 11
│    Frobenius of F₁₆₉ is conjugation                  PROVED  f169_frobenius
│    −6 is the fixed class (7, 0) in F₁₃               PROVED  trace_neg_six_in_prime_field
│    {-2, 4, 6} misses −6 and 7                        PROVED  freyTrace3_not_cong_neg_six
│    IsQCurve does not force −6                        PROVED  coefficient_qcurve_misses_neg_six
│         (1, 0, 1) has trace −2
│    rho_E_p and rho_E_p_twisted are unresolved        PROVED  modular_package_unresolved
│    Ribet lowering concludes GkResidualIso            AXIOM  ribet_level_lowering_4413
│         level field keeps the three hypotheses
│         RibetLevel gains no field
│         h_n_eq stays n = 32 or n = 64
│    modular_residual_13_open                          PROVED  projection gkResidual
│    GL₂(F₁₆₉) lift, trace(Frob_3²) = −6               OPEN PROP  qcurve_extension_169_open
│         H² is not defined and is not a second open
│         local class of ±2 is a coboundary over F₁₆₉
│    trace = 0² − 6                                    PROVED from that open
│         qcurve_extension_13_open
│    descent is trace ≡ −6 (mod 13)                    FROM THE 169 OPEN
│         qcurve_descent_13_of_bridge
│         and from the projected isomorphism
│    lowered form contradicts that trace               FROM THE 169 OPEN
│         lowered_form_contradicts_trace3
│    no_newform_32_64_open                             FROM THE 169 OPEN
│         no_newform_32_64_of_qcurve
│         also uses both project axioms
│         the definition is not a theorem by itself
│         no_solution_4413_of_frontier still assumes it
└─ no_solution_4413_of_frontier                        PROVED from the five opens,
     the two axioms, and a term of RhoE13Open
     a ≠ 0, b ≠ 0, gcd = 1, c > 0
     unconditional no_solution_4413                     not a theorem
```

`swan_eq_disc_excess` sits beside `swan_of_components` as a numeral identity: the excess `18 - (n + 6)` equals `12 - n` after subtracting the tame `2` from Ogg's count. It has no hypotheses and no axioms.

The generator/norm/level distinction sits beside `serre_two_level_open`: `(π)^f = (2^(f/2))` and `N((π)^f) = 2^f` are proved, and neither is `RibetLevel.n`.
