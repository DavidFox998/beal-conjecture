# `mazur-x0-13` — Mazur via `X₀(13)`

Working branch of **beal-level-26-foundations**, cut from
`phase-darmon-merel-4413` at `43735b3`. Not cut from `main`.
Do **not** merge back until asked.

beal-conjecture v26 at `5e2906b` (badge `5806dad`, DOI
`10.5281/zenodo.22832505`) stays untouched.

## Inhabited on this branch

From `Mazur_X0_13_No_Isogeny.lean` (reuses
`Mazur_X0_13_RationalPoints` `1d28dc1` and
`Serre_Large_vs_CM_Small` `e726c51`):

- Displayed genus Nat `0` and cusp count `2` (numerals, not
  a modular-curve object).
- `|SL₂(𝔽₁₃)| = 13 · 12 · 14 = 2184`.
- `13 = 2² + 3²`, split-Cartan `288 / 48 = 6`, `48 < 2184`.
- Package `Mazur_X0_13_No_Isogeny_inhabited`.

Roadmap: [`docs/roadmap_without_wiles/README.md`](../roadmap_without_wiles/README.md).

## Deliberately not a theorem

`X₀(13)(ℚ) = {2 cusps}` is literature-false: `X₀(13)` is
genus `0`, so once a rational point exists the rational
points are infinite. Mazur’s cyclic-isogeny list **includes**
degree `13`. The needed gap is Frey-specific irreducibility
of `ρ_{E,13}`.

## Still `def Prop`

- `X0_13_Q_infinite`
- `frey_no_rational_13_isogeny`
- `Serre_non_Borel_mod13`
- `mazur_no_Frey_13_isogeny`

No new axiom. No Wiles. No `sorry`. No `Prop := True`.

## Build

```bash
lake build +Mazur_X0_13_No_Isogeny
./scripts/verify-matveev-beal.sh
```
