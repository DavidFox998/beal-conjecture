# Ribet `928 → 32` / no-newforms final display (v29)

Parent slice: `Ribet_No_Newforms_At_32_inhabited` on
`ribet-no-newforms-v28` at `e80431f`, merged into
`phase-darmon-merel-4413` at `a93402e`. This is the
**third of four algebraic-prop v29 slices**.

The three remaining parent *names* on
`Ribet_Level_Lowering_29_to_32.lean` —

* `Ribet_928_to_32`
* `no_newforms_at_32_mod13`
* `explicit_a29_mod13`

— become **theorems** in
`Level26/HonestB0Search/Ribet_Level_Lowering_29_to_32_final.lean`.
Each re-exports `no_newforms_at_32`.

The parent file keeps those three names as `def Prop`.
This slice does **not** convert them.

Concept DOI: `10.5281/zenodo.22379293`.

## Honest: matching `∅` versus LMFDB dim `1`

LMFDB `32.2.a.a` and `Level32Table` record
`dim S₂(Γ₀(32))` **new** as **`1`** (unique newform
`32a1`, curve `y² = x³ + 4x`). The pasted equality

```
CuspForms(32,2).new_subspace().dimension() = 0
```

is **not** a theorem. The v29 theorems package the
displayed Frey-matching Finset `∅` (`card = 0`) against
that dim-`1` numeral, plus Sturm `8` and old level `16`.
They do not empty `S₂(Γ₀(32))` and are not Kraus
elimination. Mathlib 4.12 has no modular-form dimension
formula.

## What is a theorem (`decide`, not `native_decide`)

| Name | Type / statement |
|---|---|
| `nine_twenty_eight_div_twenty_nine` | `928 / 29 = 32` |
| `thirty_two_mul_twenty_nine` | `(32 : ℕ) * 29 = 928` |
| `twenty_nine_nmid_thirty_two` | `¬ 29 ∣ (32 : ℕ)` |
| `two_pow_four_eq_sixteen` | `(2 : ℕ) ^ 4 = 16` |
| `sixteen_dvd_thirty_two` | `16 ∣ 32` |
| `displayed_S2_Gamma0_32_dim` | `S2_Gamma0_32_dim = 1` |
| `displayed_S2_Gamma0_16_dim` | `S2_Gamma0_16_dim = 0` |
| `displayed_index_sturm_48` | `(32 : ℕ) * 3 / 2 = 48` |
| `displayed_sturm_bound_8` | `(2 : ℕ) * 48 / 12 = 8` |
| `displayed_matching_empty_card` | `(∅ : Finset ℕ).card = 0` |
| `Ribet_928_to_32` (this namespace) | v28 conjunction |
| `Ribet_Level_Lowering_29_to_32_final` | packaged final |

Lean 4.12: explicit types, `open Nat Finset Classical`.

## What is not a theorem

* Sage `CuspForms(32,2).new_subspace().dimension() = 0`
  (LMFDB / JSON pin **`new=1`**, `32a1`)
* Abstract Ribet / Wiles modularity of Frey
* Kraus emptiness of level-`32` newforms mod `13`
* Explicit `a₂₉` computation
* Parent `def Prop` aliases

## SAGE

`sagemath/ribet_no_newforms_32.sage` and static
`sagemath/certs/ribet_no_newforms_32.json` pin

* `full=1` (`CuspForms(32,2).dimension()`)
* `new=1` (`new_subspace().dimension()`, LMFDB `32a1`)
* `level16=0` (`CuspForms(16,2).dimension()`)
* `sturm=8`

Do **not** change the JSON new dim to `0`. Lean does
not import that JSON.

## Axioms

`#print axioms nine_twenty_eight_div_twenty_nine` /
`displayed_matching_empty_card` / `Ribet_928_to_32`:

```
[propext, Quot.sound]
```

or `[propext]` / `[]` on pure `decide` / `rfl` numerals.

`#print axioms LLL_nogo_persists_after_Ribet_928_to_32_v29`:

```
[propext, Classical.choice, Quot.sound]
```

No `sorryAx`. No `Lean.ofReduceBool`. No new axiom.

## Lake

```
lake build +Ribet_Level_Lowering_29_to_32_final
lake build HonestB0Search
lake build Level26
```

Incremental `build.yml` only. Do **not** add
`ribet-928-to-32-final-v29` to historical `main.yml`.
