# Formal Verification of the Level 26 Foundations for Signature (4,4,13): Algebraic Props Inhabited

[![Concept DOI](https://zenodo.org/badge/DOI/10.5281/zenodo.22379293.svg)](https://doi.org/10.5281/zenodo.22379293)

This directory is the Level 26 chamber of `beal-conjecture` on
`merge-foundations-v28-algebraic-props-for-beal`. It holds two
sibling trees and one wiring file. It does **not** nest
`Level26/BealLevel26Foundations/Level26`.

> **v28.0.0 — Formal Verification of the Level 26 Foundations for Signature (4,4,13): Certified Mordell-Weil Rank Zero for X₀(26), Descent, Torsion, Conductor, Isogeny, Level Lowering — Algebraic Props Inhabited**

The title is deposit metadata. Algebraic Mordell–Weil rank 0 as
`Nonempty (Fintype (E(ℚ)))` remains a `def Prop` on the honest
slice. What is inhabited is recorded below.

## Layout

| Path | Role |
|---|---|
| [`BealLevel26Foundations/`](BealLevel26Foundations/) | Vendor pin `db7a556` / `fea0c393`. 83-module Matveev / Baker / Bugeaud kernel. Unchanged. No nested `Level26/`. |
| [`HonestB0Search/`](HonestB0Search/) | Honest slice from foundations `a93402e` / `v0.28-mcom-algebraic-props-inhabited`. Six v27 roots + four v28 algebraic-prop modules. |
| [`BakerBoundGap3Holds.lean`](BakerBoundGap3Holds.lean) | Gap-3 wiring: `C1_floor=143186215390`, `B0=10^6`. `hGen` / `hLLL` stay `def Prop`. |
| [`mcom-draft.tex`](mcom-draft.tex) | Draft notes for the gap-3 Baker `B0` wiring. |
| [`beal_level26_v24_4_0.bib`](beal_level26_v24_4_0.bib) | BibTeX for the v24.4.0 vendor pin. |
| [`CITATION.cff`](CITATION.cff) | Preferred citation: concept DOI `10.5281/zenodo.22379293`, version `v28.0.0-level-26-algebraic-props-inhabited`. |

Two lakefiles are intentional: the root package `beal_conjecture`
path-requires `./Level26/BealLevel26Foundations`. The `v1.2.1`
git require is gone.

```
lake build HonestB0Search
lake -d Level26/BealLevel26Foundations build
lake build Level26
```

On a clean runner, build the path package first so FullProof
oleans land in `Level26/BealLevel26Foundations/.lake/build`.
A bare `lake build Level26` can steal
`BealBakerB0ReductionCertificate` into the root build dir.

`lake build BealMatveevBeal` is a foundations-only target. It is
not this package.

## Honest slice — six public roots plus v28 algebraic props

Ported from `DavidFox998/beal-level-26-foundations` at `a93402e`.
See [`HonestB0Search/README.md`](HonestB0Search/README.md) and
[`HonestB0Search/SOURCE.md`](HonestB0Search/SOURCE.md).

| Root | Pin | Packaged theorem | Still `def Prop` |
|---|---|---|---|
| `TwoDescent_26a1_26` | `7c19ad0` | displayed `|Sel₂|=1`, `3·7=21`, `2⁰=1` | algebraic rank 0 from Selmer |
| `BSD_MordellWeil` | `8994d38` | `¬IsRankZero` via `(4,4)` `Δ=-17576` and `(1,0)` `Δ=-1664`; torsion `ℤ/3` / `ℤ/7` | BSD as a theorem |
| `Tate_Frey_Conductor_29` | `b3348df` / `af83281` | `Tate_Frey_Conductor_29_inhabited` | Tate’s algorithm, Néron `N_E` |
| `Mazur_X0_13_No_Isogeny` | `146d463` / `ae2fa58` | `Mazur_X0_13_No_Isogeny_inhabited` | Frey 13-isogeny |
| `Ribet_Level_Lowering_29_to_32` | `b61bec2` / `e8d7476` | `Ribet_Level_Lowering_29_to_32_inhabited` | abstract Ribet |
| `Kolyvagin_MW_Rank0_26a1_26b1` | `6e88d94` / `51bba93` | `Kolyvagin_MW_Rank0_26a1_26b1_inhabited` | `Nonempty (Fintype (E(ℚ)))` |

Support modules on the same slice: `J0_26_BSD_26a1_26b1`,
`X0_26_Full2Torsion`, `Tate_I29_Inertia`,
`Mazur_X0_13_RationalPoints`, `Ribet_Level32`,
`Serre_Large_vs_CM_Small`, `DarmonMerelFrey4413`.

Docs on the slice: [`HonestB0Search/X0_26_SECTION_8994d38.md`](HonestB0Search/X0_26_SECTION_8994d38.md)
(González `Y²=x⁶-8x⁵+8x⁴-18x³+8x²-8x+1`, genus 2) and
[`HonestB0Search/docs/roadmap_without_wiles/`](HonestB0Search/docs/roadmap_without_wiles/).

Vendor Sage / PARI (not copied into the slice):
`BealLevel26Foundations/sagemath/j0_26_decomp_foundation.sage`
(`certified_mwrank` 0),
`BealLevel26Foundations/scripts/verify_descent_26.py`
(PARI `ellrank [0,0]`).

## Foundations working branches (not deleted)

The v27 packaged theorems and the v28 algebraic-prop modules live
on this slice. Parent Tate algorithm / Néron, Frey 13-isogeny,
abstract Ribet / newforms, and `MW_rank_zero_fintype` stay
`def Prop`. Foundations `phase-darmon-merel-4413` `a93402e`,
v27 branches `tate-v29`, `mazur-x0-13`, `ribet-928-32`,
`kolyvagin-fintype`, v28 branches `tate-neron-v28`,
`mazur-cusps-v28`, `ribet-no-newforms-v28`,
`kolyvagin-fintype-subsingleton-v28`, and tags `v0.27` / `v0.28`
remain live.

## Matveev / Bugeaud constants

Locked on the vendor and the wiring file:

- Matveev 2000 Thm 1.4, `n=2`, `C1_floor=143186215390`
- `hGen`: `∀ α₁,α₂>1`, `α₂=B+3`
- Bugeaud LLL `hLLL` → `B0=10^6`
- `|Λ|≤B⁴/A⁴`, `|Λ|=log(1+B⁴/A⁴)`
- `C_exp_bound = -height_B0 log height_B0`
- `height_B0=104382751019310000000 = C1_floor·30⁶`

`hGen` and `hLLL` remain uninhabited. The historical `sorry` at
line 716 in foundations `4bd15bd` (`matveev_gap3_lower`) is now
inhabited on the foundations side as a `B≤B0` target, not an
unrestricted product.

Axioms: `[propext, Classical.choice, Quot.sound]`.

## Historical v24.x / v25-not-minted note

The vendor pin is the honest close of v24.x, **not** v25.
`matveev_inequality_real_target`, `baker_bound_gap3`, and
`bugeaud_LLL_reduction_conditional` stay `def Prop`. The named
tag `v25.0.0-Beal-44-13-Level-26-Baker-B0-Unconditional` was
never minted.

v24.x DOI chain: `22730408`, `22730460`, `22730548`, `22730776`,
`22730846`, `22731054`, `22731160`, `22731508`, `22731634`,
`22731759`, `22731966`, `22732045`, `22732209`.

v14 J0 displayed models `[[1,0,1,-5,-8],[1,-1,1,-3,3]]` remain
Cremona 26a1 / 26b1 (LMFDB 26.a2 / 26.b2). Do **not** rename
this GitHub repository: concept DOI `10.5281/zenodo.22379293`
would break.

Lake exposes the vendor as `lean_lib Level26` (J0 / Matveev /
Baker certificate). The subtree package lists the 83-module
import closure as explicit `.one` globs. Empty `globs` would
treat `roots` as `.andSubmodules`. `BealGap3BakerUpperBound` →
`BealMod16` → Zsigmondy Density → Steps 4–60 is a real import.

`Level26Wiring` (`BakerBoundGap3Holds.lean`) is not a default
`lake build` target.
