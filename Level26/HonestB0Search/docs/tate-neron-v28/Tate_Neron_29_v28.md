# Tate / Néron display at `2` and `29` (v28)

Parent slice: `Tate_Frey_Conductor_29_inhabited` on
`tate-v29` at `b3348df`, merged into
`phase-darmon-merel-4413` at `51bba93`. This file is the
**first of four algebraic-prop v28 slices**. It does **not**
convert the three remaining `def Prop` names on
`Tate_Frey_Conductor_29.lean`
(`Tate_algorithm_at_29`, `Frey_Neron_conductor`,
`Frey_conductor_29_is_Neron`).

Concept DOI: `10.5281/zenodo.22379293`.

## What is a theorem

Displayed Frey model

```
y² = x(x − A⁴)(x + B⁴)
   = x³ + (B⁴ − A⁴)x² − A⁴ B⁴ x
```

Weierstrass `[0, B⁴−A⁴, 0, −A⁴ B⁴, 0]`. Mathlib `Δ` on that
model is the **positive** identity

```
Δ = 16 A⁸ B⁸ (A⁴ + B⁴)²
```

On a gap-3 solution `A⁴+B⁴=C¹³` with `C=B+3` and `29 ∤ AB`,

```
v₂₉(Δ) = 26 v₂₉(C)
```

(`padic_valuation_Delta_eq_26_vC` / the v28 re-export).

Tate input that is now inhabited:

| Object | Theorem |
|---|---|
| `c₄` | `16(A⁸+B⁸+A⁴B⁴)`; instance `(1,1)` is `48` |
| `c₆` | `−64(B⁴−A⁴)³ − 288(B⁴−A⁴)A⁴B⁴`; instance `(1,1)` is `0` |
| `v₂(Δ)` for odd `A,B` | `6` (`I₀*` discriminant valuation) |
| `v₂₉(Δ(29,1))` | `8` (`I₈` valuation; `29 ∤ 29⁴+1`) |
| `v₂₉(c₄)` | `0` on `(1,1)` and on `(29,1)` |
| displayed Néron numeral | `928 = 2⁵ · 29 = 32 · 29` and `928/29 = 32` |

`A⁴ ≡ 1 (mod 16)` for odd `A`, so `A⁴+B⁴ ≡ 2 (mod 16)` and
`v₂(A⁴+B⁴)=1`. Then

```
v₂(Δ) = v₂(16) + 2 v₂(A⁴+B⁴) = 4 + 2 = 6
```

because `A` and `B` odd contribute `v₂(A⁸)=v₂(B⁸)=0`. Silverman
records Kodaira `I₀*` at a prime of valuation `6` with the
usual Tate `c₄`/`c₆` tests. Wild conductor at `2` may be
`f₂=5`, which is why the displayed 2-power is `2⁵` rather
than `2¹`.

Instance `(29,1)` is the `29 ∣ A` split: `Δ` is divisible by
`29⁸` and not by a higher power of `29` from the
`(A⁴+B⁴)²` factor, so `v₂₉=8` (`I₈`). Combined with the
displayed `2⁵` this is the numeral `928`.

## What is not a theorem

Mathlib 4.12 has no `KodairaType` and no `NeronModel`. The
name `Tate_algorithm_at_2_and_29` packages **valuations and
numerals**. It is not Tate’s algorithm as a function on
integral models, and it is not `N_E` of a Néron model.

`(1,1)` is `y²=x³−x`, Cremona `32a3`, conductor `32`, not
`928`. The `928` numeral is the `29 ∣ AB` displayed split,
not the conductor of every specialisation.

## SAGE witness

`sagemath/tate_nero_29.sage` builds the **displayed Frey
model**

```
E = EllipticCurve([0, B**4 - A**4, 0, -A**4 * B**4, 0])
```

and writes `sagemath/certs/tate_nero_29.json`. Expected
numerals:

* `(A,B)=(1,1)`: conductor `32`, `c₄=48`, `c₆=0`, `Δ=64`
* `(A,B)=(29,1)`: displayed conductor `928 = 2^5 * 29`

The short Weierstrass

```
EllipticCurve([0, -(A**4 + B**4), 0, 0, 0])
```

is a **different curve**. The script records it as a
non-Frey comparison only. Do not treat its conductor as
`N_E` of the Frey model.

No Sage binary is required to compile the Lean. The JSON
pins the numerals the Lean already proves.

## Axioms

`#print axioms Tate_algorithm_at_2_and_29` is the
`native_decide` triple

```
[propext, Classical.choice, Quot.sound]
```

coming from `Lean.ofReduceBool` on the small instances
`Δ(1,1)`, `c₄(1,1)`, `c₆(1,1)`, and `¬ 29 ∣ c₄(29,1)`.
No new axiom. `BealTrueV25.darmon_merel_4413_axiom` is not
imported.

## Lake

```
lake build HonestB0Search
lake build Level26
```

Both libraries use `srcDir := "Level26/HonestB0Search"` and
the single glob `Tate_Frey_Conductor_29_Neron_inhabited`.
They do **not** enter `.submodules Beal.Matveev` and do
**not** compile the vendor tree
`Level26/BealLevel26Foundations`.
