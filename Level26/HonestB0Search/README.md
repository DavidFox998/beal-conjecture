# Honest B0Search slice — v29 final algebraic props inhabited

Referee map for `Level26/HonestB0Search/` on
`merge-foundations-v29-final-algebraic-props-for-beal`.

This directory is the **honest slice** ported from
`DavidFox998/beal-level-26-foundations`
`v0.29-mcom-final-algebraic-props-inhabited` at `bc7e93b`
(four `--no-ff` merges from `a93402e`). It is **not** the
vendor kernel [`../BealLevel26Foundations/`](../BealLevel26Foundations/).
There is no nested `Level26/`.

`lake build HonestB0Search` is the slice target. Public roots:

| Module | Packaged theorem | Still `def Prop` |
|---|---|---|
| [`TwoDescent_26a1_26.lean`](TwoDescent_26a1_26.lean) | displayed `|Sel₂|=1`, `3·7=21`, `2⁰=1` (`7c19ad0`) | Selmer ⇒ algebraic rank 0 |
| [`BSD_MordellWeil.lean`](BSD_MordellWeil.lean) | `¬IsRankZero` via `(4,4)` / `(1,0)`; torsion `ℤ/3ℤ` / `ℤ/7ℤ` (`8994d38`) | BSD itself |
| [`Tate_Frey_Conductor_29.lean`](Tate_Frey_Conductor_29.lean) | `Tate_Frey_Conductor_29_inhabited`: `Δ`, `928/29=32` | Tate’s algorithm, Néron `N_E` |
| [`Mazur_X0_13_No_Isogeny.lean`](Mazur_X0_13_No_Isogeny.lean) | `Mazur_X0_13_No_Isogeny_inhabited`: `|SL₂|=2184`, `48<2184`, genus 0, 2 cusps | Frey 13-isogeny |
| [`Ribet_Level_Lowering_29_to_32.lean`](Ribet_Level_Lowering_29_to_32.lean) | `Ribet_Level_Lowering_29_to_32_inhabited`: `928/29=32` | abstract Ribet / no newforms at 32 |
| [`Kolyvagin_MW_Rank0_26a1_26b1.lean`](Kolyvagin_MW_Rank0_26a1_26b1.lean) | `Kolyvagin_MW_Rank0_26a1_26b1_inhabited`: `|Sel₂|=1`, `3·7=21`, `L/Ω=1/3` `1/7` | `Nonempty (Fintype (E(ℚ)))` |
| [`Tate_Frey_Conductor_29_Neron_inhabited.lean`](Tate_Frey_Conductor_29_Neron_inhabited.lean) | `c₄`/`c₆`, `v₂(Δ)=6`, `v₂₉(Δ(29,1))=8`, `928=2⁵·29` | Tate algorithm / Néron `N_E` |
| [`Mazur_X0_13_Cusps_Equals_Rationals_inhabited.lean`](Mazur_X0_13_Cusps_Equals_Rationals_inhabited.lean) | genus 0, cusp Finset `{0,1}` `card=2` | `{2 cusps}=X₀(13)(ℚ)` (literature-false) |
| [`Ribet_No_Newforms_At_32_inhabited.lean`](Ribet_No_Newforms_At_32_inhabited.lean) | `928/29=32`, Sturm `8`, matching Finset `card=0` | Sage `new_subspace dim=0` (LMFDB new dim 1) |
| [`Kolyvagin_Fintype_Subsingleton_inhabited.lean`](Kolyvagin_Fintype_Subsingleton_inhabited.lean) | `Nonempty (Fintype) → Fintype`, `|Sel₂|=1`, `¬IsRankZero` | `MW_rank_zero_fintype` |
| [`Tate_Frey_Conductor_29_Neron_final.lean`](Tate_Frey_Conductor_29_Neron_final.lean) | parent names as theorems; displayed `N_E=928` | parent Tate / Néron `def Prop` |
| [`Mazur_X0_13_No_Isogeny_final.lean`](Mazur_X0_13_No_Isogeny_final.lean) | parent names as theorems; `|SL₂|=2184` | parent Frey 13-isogeny `def Prop` |
| [`Ribet_Level_Lowering_29_to_32_final.lean`](Ribet_Level_Lowering_29_to_32_final.lean) | parent names as theorems; `928/29=32` | parent abstract Ribet `def Prop` |
| [`Kolyvagin_MW_Rank0_26a1_26b1_final.lean`](Kolyvagin_MW_Rank0_26a1_26b1_final.lean) | parent names as theorems; `|Sel₂|=1`, `3·7=21` | parent `MW_rank_zero_fintype` `def Prop` |

`IsRankZero` is Mathlib `Subsingleton` of the Mordell–Weil group
(the identity only). Torsion of order 3 and 7 refutes it. That
is **not** a proof of algebraic rank 0. Mazur does **not** claim
`X₀(13)(ℚ) = {2 cusps}` (genus 0 ⇒ infinitely many rational points).

## Closed import graph

The roots import the B0Search chain. Those modules stay
here so the lib builds without a git require of foundations
and without nesting the vendor:

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
  even model `Y²=x⁶-8x⁵+8x⁴-18x³+8x²-8x+1`, LMFDB `26.42.2.a.1`.
- [`docs/tate-neron-v29/`](docs/tate-neron-v29/), [`docs/mazur-cusps-v29/`](docs/mazur-cusps-v29/),
  [`docs/ribet-no-newforms-v29/`](docs/ribet-no-newforms-v29/),
  [`docs/kolyvagin-rank0-v29/`](docs/kolyvagin-rank0-v29/)
  — v29 final algebraic-prop notes from foundations `bc7e93b`.
- [`docs/tate-neron-v28/`](docs/tate-neron-v28/), [`docs/mazur-cusps-v28/`](docs/mazur-cusps-v28/),
  [`docs/ribet-no-newforms-v28/`](docs/ribet-no-newforms-v28/),
  [`docs/kolyvagin-fintype-subsingleton-v28/`](docs/kolyvagin-fintype-subsingleton-v28/)
  — v28 algebraic-prop notes from foundations `a93402e`.
- [`docs/tate-v29/`](docs/tate-v29/), [`docs/mazur-x0-13/`](docs/mazur-x0-13/),
  [`docs/ribet-928-32/`](docs/ribet-928-32/), [`docs/kolyvagin-fintype/`](docs/kolyvagin-fintype/)
  — v27 four-slice notes from foundations `51bba93`.
- [`docs/roadmap_without_wiles/`](docs/roadmap_without_wiles/) —
  remaining algebraic `def Prop` gaps; no Wiles.
- [`certs/`](certs/), [`sagemath/`](sagemath/), [`scripts/`](scripts/) —
  PARI four-cusp JSON, Sage `certified_mwrank` display `0`, PARI `ellrank [0,0]`,
  plus v28/v29 Tate / Ribet / Kolyvagin Sage pins.

Cremona **26a1** = LMFDB **26.a2** `[1,0,1,-5,-8]` `Δ=-17576`
torsion `ℤ/3ℤ`. Cremona **26b1** = LMFDB **26.b2** `[1,-1,1,-3,3]`
`Δ=-1664` torsion `ℤ/7ℤ`.

Foundations branches `tate-v29`, `mazur-x0-13`, `ribet-928-32`,
`kolyvagin-fintype`, `tate-neron-v28`, `mazur-cusps-v28`,
`ribet-no-newforms-v28`, `kolyvagin-fintype-subsingleton-v28`,
`tate-neron-final-v29`, `mazur-no-isogeny-final-v29`,
`ribet-928-to-32-final-v29`, `kolyvagin-rank0-final-v29`,
`phase-darmon-merel-4413` and tags `v0.27-mcom-four-props-inhabited`,
`v0.28-mcom-algebraic-props-inhabited`,
`v0.29-mcom-final-algebraic-props-inhabited` stay live. They
are not deleted.

Concept DOI: [10.5281/zenodo.22379293](https://doi.org/10.5281/zenodo.22379293).
