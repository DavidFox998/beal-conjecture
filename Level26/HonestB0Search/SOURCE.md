# Honest B0Search slice (not a vendor nest)

**v30.0.0-level-26-structural-verification — Tate 928=2⁵·29 Neron I0* I8 c4 Δ v2=6 v29=8 Mazur 2184 48<2184 13=2²+3² 288/48=6 card2 genus0 infinite vs2 Ribet 928/29=32 ∅ card0 full1 new1 LMFDB 32a1 Kolyvagin |Sel2|=1 3·7=21 L/Ω=1/3 1/7 rank0 26a1 26b1**

Ported from `DavidFox998/beal-level-26-foundations`
`v0.30-mcom-structural-verification` at `2b60ccd` (Lean from `bc7e93b`)
(`phase-darmon-merel-4413` after four `--no-ff` merges from
`a93402e`: `5a8dbbf`/`11c0ad7`, `3af9424`/`2f4e16e`,
`4f717e0`/`5631fd1`, `bc7e93b`/`fc8c7a1`).

This directory is **not** `Level26/BealLevel26Foundations`.
The relocated v24.4.0 kernel (`db7a556` / `fea0c393`, DOI
`10.5281/zenodo.22732209`) stays untouched in that package.

## Public roots (v27 four props + v28 algebraic props + v29 finals; v30 docs)

- `TwoDescent_26a1_26.lean` (`7c19ad0`) — `|Sel₂|=1`, `3·7=21`
- `BSD_MordellWeil.lean` (`8994d38`) — `¬IsRankZero` via `(4,4)`/`(1,0)`
- `Tate_Frey_Conductor_29.lean` — `Tate_Frey_Conductor_29_inhabited`; Tate/Néron stay `def Prop`
- `Mazur_X0_13_No_Isogeny.lean` — `Mazur_X0_13_No_Isogeny_inhabited`; Frey 13-isogeny stays `def Prop`
- `Ribet_Level_Lowering_29_to_32.lean` — `Ribet_Level_Lowering_29_to_32_inhabited`; abstract Ribet stays `def Prop`
- `Kolyvagin_MW_Rank0_26a1_26b1.lean` — `Kolyvagin_MW_Rank0_26a1_26b1_inhabited`; `Nonempty (Fintype (E(ℚ)))` stays `def Prop`
- `Tate_Frey_Conductor_29_Neron_inhabited.lean` — `928=2⁵·29`; Tate algorithm / Néron stay `def Prop`
- `Mazur_X0_13_Cusps_Equals_Rationals_inhabited.lean` — cusp Finset `card=2`; `{2 cusps}=X₀(13)(ℚ)` is literature-false
- `Ribet_No_Newforms_At_32_inhabited.lean` — matching Finset `card=0`; Sage new dim 0 is not a theorem
- `Kolyvagin_Fintype_Subsingleton_inhabited.lean` — `Nonempty (Fintype) → Fintype`; `MW_rank_zero_fintype` stays `def Prop`
- `Tate_Frey_Conductor_29_Neron_final.lean` — parent names as theorems; displayed `N_E=928`
- `Mazur_X0_13_No_Isogeny_final.lean` — parent names as theorems; `|SL₂|=2184`
- `Ribet_Level_Lowering_29_to_32_final.lean` — parent names as theorems; `928/29=32`
- `Kolyvagin_MW_Rank0_26a1_26b1_final.lean` — parent names as theorems; `|Sel₂|=1`, `3·7=21`

Also copied: `J0_26_BSD_26a1_26b1.lean`, `X0_26_Full2Torsion.lean`,
`X0_26_SECTION_8994d38.md`, `docs/roadmap_without_wiles/`,
v27 / v28 / v29 docs folders, and Tate / Ribet / Kolyvagin Sage pins.

## Closed import graph

The roots `import` the existing B0Search chain
(`BealMatveevBealV25B0Search`, Frey/Tate/Mazur/Ribet/Serre
tables, `LLLTargetB8*`). Those modules stay here so
`lake build HonestB0Search` does not need foundations as a
git package and does not nest `Level26/`.

Not copied: `BealTrueV25`, `Beal/Matveev/*`, Gap1–15, vendor
`Level26/BealLevel26Foundations`. Foundations branches and
tags `v0.27-mcom-four-props-inhabited` /
`v0.28-mcom-algebraic-props-inhabited` /
`v0.29-mcom-final-algebraic-props-inhabited` stay live.
Concept DOI `10.5281/zenodo.22379293`.
