# Mazur `X₀(13)` cusps display (v28)

Parent slice: `Mazur_X0_13_No_Isogeny_inhabited` on
`mazur-x0-13` at `146d463`, merged into
`phase-darmon-merel-4413` at `51bba93`. Second of the
four algebraic-prop v28 slices. Does **not** convert the
four remaining `def Prop` names on
`Mazur_X0_13_No_Isogeny.lean`.

Concept DOI: `10.5281/zenodo.22379293`.
Stone pin: `lean-toolchain` `v4.12.0`, mathlib
`809c3fb3b5c8f5d7dace56e200b426187516535a`.

## What is a theorem

| Object | Theorem |
|---|---|
| genus Nat | `0` |
| displayed cusp count | `2` |
| displayed cusp Finset | `{0, 1}` (labels `{0, ∞}`), `card = 2` |
| cusp Finset vs numeral | `card = X0_13_cusp_count` |
| `|SL₂(𝔽₁₃)|` | `13·12·14 = 2184` |
| image bound numeral | `48 < 2184` |
| `13 = 2²+3²`, `288/48 = 6` | re-exports |

`Mazur_X0_13_Cusps_Equals_Rationals_inhabited` is that
conjunction. The “equals rationals” in the name is the
displayed cusp Finset against the cusp-count numeral.

## What is not a theorem

`X₀(13)` is genus `0` with a rational point (a cusp), so
`X₀(13)(ℚ)` is **infinite** (`ℙ¹` over `ℚ`). The pasted
equality

```
X₀(13)(ℚ) = {2 cusps}
```

is literature-false. Mathlib 4.12 has no `X₀(N)` scheme
object. `X0_13_Q_infinite` stays `def Prop` on the parent.
This file does not inhabit it and does not prove the
false equality.

Mazur’s cyclic-isogeny list **includes** `13`. The needed
gap remains Frey-specific irreducibility of `ρ_{E,13}`.

## Axioms

`#print axioms Mazur_X0_13_Cusps_Equals_Rationals_inhabited`
is

```
[propext, Quot.sound]
```

`displayed_rational_cusps_card` is the same pair.
`LLL_nogo_persists_after_Mazur_Cusps_v28` is

```
[propext, Classical.choice, Quot.sound]
```

No `sorryAx`. No `Lean.ofReduceBool` (`decide`, not
`native_decide`). No new axiom.

## Lake

```
lake build +Mazur_X0_13_Cusps_Equals_Rationals_inhabited
lake build HonestB0Search
lake build Level26
```

Both libraries use `srcDir := "Level26/HonestB0Search"`.
They do not compile the vendor tree.
