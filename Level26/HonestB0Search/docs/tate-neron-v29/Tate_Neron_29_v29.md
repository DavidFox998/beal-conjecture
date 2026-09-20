# Tate / Néron final display (v29)

Parent slice: `Tate_Frey_Conductor_29_Neron_inhabited` on
`tate-neron-v28` at `6f67889`, merged into
`phase-darmon-merel-4413` at `a93402e`. This file is the
**first of four algebraic-prop v29 slices**.

The three remaining parent *names* on
`Tate_Frey_Conductor_29.lean` —

* `Tate_algorithm_at_29`
* `Frey_Neron_conductor`
* `Frey_conductor_29_is_Neron`

— become **theorems** in
`Level26/HonestB0Search/Tate_Frey_Conductor_29_Neron_final.lean`.
Each re-exports `Tate_algorithm_at_2_and_29` (`c₄`/`c₆`,
`v₂(Δ)=6`, `v₂₉(Δ(29,1))=8`, `928 = 2⁵ · 29`).

The parent file keeps those three names as `def Prop`
(aliases of `Tate_uniformization`, `Tate_q`,
`inertia_trivial_mod13_when_13_dvd_v`). This slice does
**not** convert them.

Concept DOI: `10.5281/zenodo.22379293`.

## Final `N_E = 928`

**Final `N_E = 928`** is the displayed numeral

```
928 = 2⁵ · 29 = 32 · 29
928 / 29 = 32
```

It is **not** Mathlib `NeronModel.conductor` and not
Tate’s algorithm as a function on integral models.
Mathlib 4.12 has no `KodairaType` and no `NeronModel`.

`(1,1)` is `y² = x³ − x`, Cremona `32a3`, conductor `32`,
not `928`. The `928` numeral is the `29 ∣ AB` displayed
split, not the conductor of every specialisation.

## What is a theorem

Displayed Frey model

```
y² = x(x − A⁴)(x + B⁴)
   = [0, B⁴−A⁴, 0, −A⁴ B⁴, 0]
```

| Name | Statement |
|---|---|
| `Tate_algorithm_at_29` | `Tate_algorithm_at_2_and_29` |
| `Frey_Neron_conductor` | same conjunction |
| `Frey_conductor_29_is_Neron` | same conjunction |
| `Tate_Frey_Conductor_29_Neron_final` | packaged final |
| `final_N_E_eq_928` | `(2 : ℕ) ^ 5 * 29 = 928` |

Inhabited valuations (from `6f67889`):

* `c₄(1,1) = 48`, `c₆(1,1) = 0`
* `v₂(Δ) = 6` for odd `A,B` (`I₀*` discriminant valuation)
* `v₂₉(Δ(29,1)) = 8` (`I₈`)
* `v₂₉(c₄) = 0` on `(1,1)` and `(29,1)`

## What is not a theorem

* Mathlib Néron `N_E`
* Kodaira symbols as a `KodairaType` inductive
* Parent `Tate_uniformization` / `Tate_q` /
  `inertia_trivial_mod13_when_13_dvd_v`

The short Weierstrass

```
[0, −(A⁴+B⁴), 0, 0, 0]
```

is a **different curve**. Do not treat its conductor as
`N_E` of the Frey model.

## SAGE witness

Unchanged from v28: `sagemath/tate_nero_29.sage` and
`sagemath/certs/tate_nero_29.json` use the displayed Frey
`[0, B⁴−A⁴, 0, −A⁴ B⁴, 0]`. Expected numerals:

* `(A,B)=(1,1)`: conductor `32`
* `(A,B)=(29,1)`: displayed conductor `928 = 2^5 * 29`

No Sage binary is required to compile the Lean.

## Axioms

Lean 4.12 needs explicit theorem types and
`open Nat Finset Classical`. Numeral equalities use
`decide`, not `native_decide`, so there is no
`Lean.ofReduceBool`.

`#print axioms displayed_Neron_conductor` / `final_N_E_eq_928`:

```
[propext]
```

`#print axioms Tate_algorithm_at_29` (valuations via
`padicValNat`):

```
[propext, Classical.choice, Quot.sound]
```

No `sorryAx`. No new axiom.
`BealTrueV25.darmon_merel_4413_axiom` is not imported.

## Lake

```
lake build +Tate_Frey_Conductor_29_Neron_final
lake build HonestB0Search
lake build Level26
```

Incremental `build.yml` only. Do **not** add
`tate-neron-final-v29` to historical `main.yml`.
Do **not** `lake build BealMatveevBeal` on this branch.
