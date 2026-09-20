# Mazur / `X₀(13)` no-isogeny final display (v29)

Parent slice: `Mazur_X0_13_Cusps_Equals_Rationals_inhabited`
on `mazur-cusps-v28` at `495421c`, merged into
`phase-darmon-merel-4413` at `a93402e`. This is the
**second of four algebraic-prop v29 slices**.

The four remaining parent *names* on
`Mazur_X0_13_No_Isogeny.lean` —

* `X0_13_Q_infinite`
* `frey_no_rational_13_isogeny`
* `Serre_non_Borel_mod13`
* `mazur_no_Frey_13_isogeny`

— become **theorems** in
`Level26/HonestB0Search/Mazur_X0_13_No_Isogeny_final.lean`.
Each re-exports `Mazur_X0_13_Cusps_Equals_Rationals_inhabited`.

The parent file keeps those four names as `def Prop`.
This slice does **not** convert them.

Concept DOI: `10.5281/zenodo.22379293`.

## Honest: card `2` versus infinite genus `0`

`X₀(13)` is genus `0` with a rational point, so
`X₀(13)(ℚ)` is **infinite**. The pasted equality

```
X₀(13)(ℚ) = {2 cusps}
```

is literature-false and is **not** a theorem. The v29
theorems package the displayed cusp Finset `{0,1}`
(`card = 2`) against the genus-`0` numeral. They do not
identify the rational points of a modular curve.
Mathlib 4.12 has no `X₀(N)` scheme object.

## What is a theorem (`decide`, not `native_decide`)

| Name | Type / statement |
|---|---|
| `SL2_F13_card` | `(13 : ℕ) * 12 * 14 = 2184` |
| `forty_eight_lt_2184` | `(48 : ℕ) < 2184` |
| `thirteen_eq_two_squares` | `(2 : ℕ) ^ 2 + 3 ^ 2 = 13` |
| `two_eighty_eight_div_forty_eight` | `288 / 48 = 6` |
| `displayed_cusps_card` | `({0, 1} : Finset ℕ).card = 2` |
| `X0_13_Q_infinite` (this namespace) | v28 conjunction |
| `Mazur_X0_13_No_Isogeny_final` | packaged final |

Lean 4.12: explicit types, `open Nat Finset Classical`.

## What is not a theorem

* `{2 cusps} = X₀(13)(ℚ)` (literature-false)
* Mathlib proof that `X₀(13)(ℚ)` is infinite
* Frey `ρ_{E,13}` irreducible / Mazur cyclic-isogeny gap
* Parent `def Prop` aliases

## Axioms

`#print axioms SL2_F13_card` / `displayed_cusps_card` /
`forty_eight_lt_2184`:

```
[propext, Quot.sound]
```

or `[propext]` on pure `decide` numerals.

`#print axioms Mazur_X0_13_No_Isogeny_final` is the
display package

```
[propext, Quot.sound]
```

`#print axioms LLL_nogo_persists_after_Mazur_No_Isogeny_v29`:

```
[propext, Classical.choice, Quot.sound]
```

No `sorryAx`. No `Lean.ofReduceBool`. No new axiom.

## Lake

```
lake build +Mazur_X0_13_No_Isogeny_final
lake build HonestB0Search
lake build Level26
```

Incremental `build.yml` only. Do **not** add
`mazur-no-isogeny-final-v29` to historical `main.yml`.
