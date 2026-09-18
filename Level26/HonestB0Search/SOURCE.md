# Honest B0Search slice (not a vendor nest)

Copied from `DavidFox998/beal-level-26-foundations`
`phase-darmon-merel-4413` at `43735b3` (parent `ac82fbd`).

This directory is **not** `Level26/BealLevel26Foundations`.
The relocated v24.4.0 kernel (`db7a556` / `fea0c393`, DOI
`10.5281/zenodo.22732209`) stays untouched in that package.

## Public roots (v26 honest slice)

- `TwoDescent_26a1_26.lean` (`7c19ad0`) — `|Sel₂|=1`, `3·7=21`
- `BSD_MordellWeil.lean` (`8994d38`) — `¬IsRankZero` via `(4,4)`/`(1,0)`
- `Tate_Frey_Conductor_29.lean` — `Δ=16A⁸B⁸(A⁴+B⁴)²`; Tate/Néron stay `def Prop`
- `Mazur_X0_13_No_Isogeny.lean` — `|SL₂(𝔽₁₃)|=2184`, `48<2184`; Frey 13-isogeny stays `def Prop`
- `Ribet_Level_Lowering_29_to_32.lean` — `928/29=32`; abstract Ribet stays `def Prop`
- `Kolyvagin_MW_Rank0_26a1_26b1.lean` — `Nonempty (Fintype (E(ℚ)))`, not Subsingleton

Also copied (used by those roots): `J0_26_BSD_26a1_26b1.lean`,
`X0_26_Full2Torsion.lean`, `X0_26_SECTION_8994d38.md`,
`docs/roadmap_without_wiles/`.

## Closed import graph

The six roots `import` the existing B0Search chain
(`BealMatveevBealV25B0Search`, Frey/Tate/Mazur/Ribet/Serre
tables, `LLLTargetB8*`). Those modules are copied here so
`lake build HonestB0Search` does not need foundations as a
git package and does not nest `Level26/`.

Not copied: `BealTrueV25`, `Beal/Matveev/*`, Gap1–15, vendor
`Level26/BealLevel26Foundations`. Working repo for the last
four `def Prop`s remains foundations `phase-darmon-merel-4413`.

`lake build BealMatveevBeal` is a foundations target; it is
not this package.
