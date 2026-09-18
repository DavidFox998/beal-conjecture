# Honest B0Search slice

Referee map for `Level26/HonestB0Search/` on
`merge-foundations-43735b3-for-v26` at `954be82`.

This directory is the **honest slice** copied from
`DavidFox998/beal-level-26-foundations`
`phase-darmon-merel-4413` at `43735b3`. It is **not** the
vendor kernel [`../BealLevel26Foundations/`](../BealLevel26Foundations/).
There is no nested `Level26/`.

`lake build HonestB0Search` is green. Public roots:

| Module | What a referee can take as proved | What stays `def Prop` |
|---|---|---|
| [`TwoDescent_26a1_26.lean`](TwoDescent_26a1_26.lean) | displayed `|Sel₂|=1`, `3·7=21`, `2⁰=1` (`7c19ad0`) | Selmer ⇒ algebraic rank 0 |
| [`BSD_MordellWeil.lean`](BSD_MordellWeil.lean) | `¬IsRankZero` via `(4,4)` / `(1,0)`; torsion `ℤ/3ℤ` / `ℤ/7ℤ` (`8994d38`) | BSD itself |
| [`Tate_Frey_Conductor_29.lean`](Tate_Frey_Conductor_29.lean) | `Δ=16A⁸B⁸(A⁴+B⁴)²`; residual `32` or `928` | Tate’s algorithm, Néron `N_E` |
| [`Mazur_X0_13_No_Isogeny.lean`](Mazur_X0_13_No_Isogeny.lean) | `|SL₂(𝔽₁₃)|=2184`, `48<2184` | Frey 13-isogeny |
| [`Ribet_Level_Lowering_29_to_32.lean`](Ribet_Level_Lowering_29_to_32.lean) | `928/29=32` | abstract Ribet |
| [`Kolyvagin_MW_Rank0_26a1_26b1.lean`](Kolyvagin_MW_Rank0_26a1_26b1.lean) | `L/Ω=1/3`, `1/7` | `Nonempty (Fintype (E(ℚ)))` |

`IsRankZero` is Mathlib `Subsingleton` of the Mordell–Weil group
(the identity only). Torsion of order 3 and 7 refutes it. That
is **not** a proof of algebraic rank 0.

## Closed import graph

The six roots import the B0Search chain. Those modules are
copied here so the lib builds without a git require of
foundations and without nesting the vendor:

- `BealMatveevBealV25B0Search.lean`
- `LLLTargetB8.lean`, `LLLTargetB8_C1_lower_bound.lean`
- `DarmonMerelFrey4413.lean`
- `Level32Table.lean`, `Level928Table.lean`
- `Ribet29C_Lowering.lean`, `Ribet29C_Residue16.lean`, `Ribet29C_Residue16_L23.lean`
- `MazurIrreducibility13.lean`, `MazurIrreducibilityFull.lean`
- `Inertia29Unramified.lean`, `TateGalois.lean`
- `SerreImage13.lean`, `SerreImageFull.lean`
- `Mazur_X0_13_RationalPoints.lean`
- `Tate_I29_Inertia.lean`
- `Ribet_Level32.lean`
- `Serre_Large_vs_CM_Small.lean`
- `J0_26_BSD_26a1_26b1.lean`
- `X0_26_Full2Torsion.lean`

Not copied: `BealTrueV25`, `Beal/Matveev/*`, Gap1–15, the vendor
tree. Provenance: [`SOURCE.md`](SOURCE.md).

## Documents

- [`X0_26_SECTION_8994d38.md`](X0_26_SECTION_8994d38.md) — González
  even model `Y²=x⁶-8x⁵+8x⁴-18x³+8x²-8x+1`, LMFDB `26.42.2.a.1`
  (modular curve, genus 2) ≠ elliptic `26.a1`/`26.a2`.
- [`docs/roadmap_without_wiles/`](docs/roadmap_without_wiles/) —
  four remaining `def Prop` gaps; no Wiles.

Cremona **26a1** = LMFDB **26.a2** `[1,0,1,-5,-8]` `Δ=-17576`
torsion `ℤ/3ℤ`. Cremona **26b1** = LMFDB **26.b2** `[1,-1,1,-3,3]`
`Δ=-1664` torsion `ℤ/7ℤ`.

Working repo for the last four `def Prop`s:
foundations `43735b3`. Branches `tate-v29`, `mazur-x0-13`,
`ribet-928-32`, `kolyvagin-fintype` are not created.

Concept DOI: [10.5281/zenodo.22379293](https://doi.org/10.5281/zenodo.22379293).
