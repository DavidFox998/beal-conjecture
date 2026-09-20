# `ribet-928-32` — residual `928 / 29 = 32`

**v30.0.0-level-26-structural-verification — Tate 928=2⁵·29 Neron I0* I8 c4 Δ v2=6 v29=8 Mazur 2184 48<2184 13=2²+3² 288/48=6 card2 genus0 infinite vs2 Ribet 928/29=32 ∅ card0 full1 new1 LMFDB 32a1 Kolyvagin |Sel2|=1 3·7=21 L/Ω=1/3 1/7 rank0 26a1 26b1**


Working branch of **beal-level-26-foundations**, cut from
`phase-darmon-merel-4413` at `43735b3`. Not cut from `main`.
Do **not** merge back until asked.

beal-conjecture v26 at `5e2906b` (badge `5806dad`, DOI
`10.5281/zenodo.22832505`) stays untouched.

## Inhabited on this branch

From `Ribet_Level_Lowering_29_to_32.lean` (reuses
`Ribet_Level32` `a234427`, `Level32Table`, `Level928Table`):

- Numeral `928 / 29 = 32` and `32 · 29 = 928`.
- `928 ≠ 32` and `29 ∤ 32`.
- Displayed residual `level_after_ribet_29 = 32` when
  `29 ∤ AB`, else `928`.
- Package `Ribet_Level_Lowering_29_to_32_inhabited`.

Level `32` as a displayed table lives on `Level32Table`.
Serre numerics live on `Serre_Large_vs_CM_Small`.

## Still `def Prop`

- `Ribet_928_to_32` — abstract Ribet / Galois isomorphism
  `ρ_{E,13} ≅ ρ_{E',13}`. Not the numeral.
- `no_newforms_at_32_mod13`
- `explicit_a29_mod13`

`928/29=32` is **not** Néron `N_E`. No Wiles. No new axiom.
No `sorry`. No `Prop := True`.

## Build

```bash
lake build +Ribet_Level_Lowering_29_to_32
./scripts/verify-matveev-beal.sh
```
