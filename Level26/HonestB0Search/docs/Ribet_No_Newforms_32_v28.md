# Ribet “no newforms at 32” display (v28)

Parent slice: `Ribet_Level_Lowering_29_to_32_inhabited` on
`ribet-928-32` at `b61bec2`, merged into
`phase-darmon-merel-4413` at `51bba93`. Third of the four
algebraic-prop v28 slices. Does **not** convert the remaining
`def Prop` names on `Ribet_Level_Lowering_29_to_32.lean`.

Concept DOI: `10.5281/zenodo.22379293`.
Stone pin: `lean-toolchain` `v4.12.0`, mathlib
`809c3fb3b5c8f5d7dace56e200b426187516535a`.

## What is a theorem

| Object | Theorem |
|---|---|
| residual numeral | `928 / 29 = 32`, `32 · 29 = 928`, `29 ∤ 32` |
| LMFDB `dim S₂(Γ₀(32))` | `1` (re-export; unique `32a1`) |
| displayed old level | `16`, `16 ∣ 32`, `2⁴ = 16` |
| displayed `dim S₂(Γ₀(16))` | `0` |
| index / Sturm | `32 · 3 / 2 = 48`, `2 · 48 / 12 = 8` |
| Frey-matching newform Finset | `∅`, `card = 0` |

`no_newforms_at_32` / `Ribet_No_Newforms_At_32_inhabited` is
that conjunction. The “new dim = 0” in the name is the
**matching** Finset against the Sturm / old-level numerals.

## What is not a theorem

`CuspForms(32, 2).new_subspace().dimension()` is Sage / LMFDB
data. LMFDB `32.2.a.a` and `Level32Table` record that full
new space as dimension **`1`** (newform `32a1`, curve
`y² = x³ + 4x`). The pasted equality

```
CuspForms(32,2).new_subspace().dimension() = 0
```

is **not** a theorem. Mathlib 4.12 has no dimension formula
for `S₂(Γ₀(32))`. `no_newforms_at_32_mod13` /
`level_32_no_newform` stay `def Prop` on the parent (Kraus
emptiness: `l = 3,5` still match, and `29 ∣ ABC` survives).

Oldforms “from 16” is the displayed divisor `16 ∣ 32`. There
is no Mathlib degeneracy map in this file. `S₂(Γ₀(16))`
displayed dim `0` is the genus-`0` numeral.

## SAGE

`sagemath/ribet_no_newforms_32.sage` calls
`CuspForms(32,2)`, `.new_subspace().dimension()`,
`CuspForms(16,2)`, and the Sturm bound when Sage is
present. Static `sagemath/certs/ribet_no_newforms_32.json`
pins the LMFDB / Sage numerals (`full=1`, `new=1`,
`level16=0`, `sturm=8`). Re-run the `.sage` when Sage is
available. Lean does not import that JSON.

## Axioms

`#print axioms no_newforms_at_32` is

```
[propext, Quot.sound]
```

or just `[]` / `[propext]` on the `rfl` conjuncts.
`LLL_nogo_persists_after_Ribet_No_Newforms_v28` is

```
[propext, Classical.choice, Quot.sound]
```

No `sorryAx`. No new axiom.

## Lake

```
lake build +Ribet_No_Newforms_At_32_inhabited
lake build HonestB0Search
lake build Level26
```

Both libraries use `srcDir := "Level26/HonestB0Search"`.
They do not compile the vendor tree.
