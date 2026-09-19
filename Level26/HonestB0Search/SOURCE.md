# Honest B0Search slice (not a vendor nest)

Ported from `DavidFox998/beal-level-26-foundations`
`v0.27-mcom-four-props-inhabited` at `51bba93`
(`phase-darmon-merel-4413` after four `--no-ff` merges from
`43735b3`: `af83281`/`b3348df`, `ae2fa58`/`146d463`,
`e8d7476`/`b61bec2`, `51bba93`/`6e88d94`).

This directory is **not** `Level26/BealLevel26Foundations`.
The relocated v24.4.0 kernel (`db7a556` / `fea0c393`, DOI
`10.5281/zenodo.22732209`) stays untouched in that package.

## Public roots (v27 four props inhabited)

- `TwoDescent_26a1_26.lean` (`7c19ad0`) — `|Sel₂|=1`, `3·7=21`
- `BSD_MordellWeil.lean` (`8994d38`) — `¬IsRankZero` via `(4,4)`/`(1,0)`
- `Tate_Frey_Conductor_29.lean` — `Tate_Frey_Conductor_29_inhabited`; Tate/Néron stay `def Prop`
- `Mazur_X0_13_No_Isogeny.lean` — `Mazur_X0_13_No_Isogeny_inhabited`; Frey 13-isogeny stays `def Prop`
- `Ribet_Level_Lowering_29_to_32.lean` — `Ribet_Level_Lowering_29_to_32_inhabited`; abstract Ribet stays `def Prop`
- `Kolyvagin_MW_Rank0_26a1_26b1.lean` — `Kolyvagin_MW_Rank0_26a1_26b1_inhabited`; `Nonempty (Fintype (E(ℚ)))` stays `def Prop`

Also copied: `J0_26_BSD_26a1_26b1.lean`, `X0_26_Full2Torsion.lean`,
`X0_26_SECTION_8994d38.md`, `docs/roadmap_without_wiles/`,
`docs/tate-v29/`, `docs/mazur-x0-13/`, `docs/ribet-928-32/`,
`docs/kolyvagin-fintype/`.

## Closed import graph

The six roots `import` the existing B0Search chain
(`BealMatveevBealV25B0Search`, Frey/Tate/Mazur/Ribet/Serre
tables, `LLLTargetB8*`). Those modules stay here so
`lake build HonestB0Search` does not need foundations as a
git package and does not nest `Level26/`.

Not copied: `BealTrueV25`, `Beal/Matveev/*`, Gap1–15, vendor
`Level26/BealLevel26Foundations`. Foundations branches and
tag `v0.27-mcom-four-props-inhabited` are not deleted.

`lake build BealMatveevBeal` is a foundations target; it is
not this package.
