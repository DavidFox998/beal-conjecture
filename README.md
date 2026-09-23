# Formal Verification of the Level 26 Foundations for Signature (4,4,13): Certified Mordell-Weil Rank Zero for X₀(26), Descent, Torsion, Conductor, Isogeny, Level Lowering — v30.0.0-level-26-structural-verification

[![DOI](https://zenodo.org/badge/DOI/10.5281/zenodo.22041831.svg)](https://doi.org/10.5281/zenodo.22041831)
[![DOI](https://zenodo.org/badge/DOI/10.5281/zenodo.22923337.svg)](https://doi.org/10.5281/zenodo.22923337)
[![DOI](https://zenodo.org/badge/DOI/10.5281/zenodo.22884873.svg)](https://doi.org/10.5281/zenodo.22884873)
[![DOI](https://zenodo.org/badge/DOI/10.5281/zenodo.22379293.svg)](https://doi.org/10.5281/zenodo.22379293)
[![DOI](https://zenodo.org/badge/DOI/10.5281/zenodo.22922473.svg)](https://doi.org/10.5281/zenodo.22922473)
[![DOI](https://zenodo.org/badge/DOI/10.5281/zenodo.22912430.svg)](https://doi.org/10.5281/zenodo.22912430)

**Current experimental branch:** [`Beal.Main`](lean/Beal/Main.lean) proves
the general common-prime formulation **conditionally** from the existing
seven-field `BealCertificates_26` input. The foundations million-case scan
has an independently replayed external checkpoint but no Lean proof term for
the complete range. [Scope and reproducibility](docs/Full10e6ExternalCheckpoint.md).
The badges above cite older releases, not an unconditional Beal theorem.
No new release DOI has been issued for this branch.

**v30.0.0-level-26-structural-verification — Tate 928=2⁵·29 Neron I0* I8 c4 Δ v2=6 v29=8 Mazur 2184 48<2184 13=2²+3² 288/48=6 card2 genus0 infinite vs2 Ribet 928/29=32 ∅ card0 full1 new1 LMFDB 32a1 Kolyvagin |Sel2|=1 3·7=21 L/Ω=1/3 1/7 rank0 26a1 26b1**

## Foundations integrated v30.1.7 and v25.0.1-forward

The companion foundations line is integrated without vendoring and without
changing its formal boundaries. The exact merge base is
`43735b3b14a9e844d4b4bdf57fa5f68d29e749ee`.

| Release | Commit / tag object | GitHub release | Zenodo |
| --- | --- | ---: | --- |
| `beal-conjecture-v30.1.7-v25.0.1-integrated` | commit `a80048e9eb23cdd66021c28621242485da7d7bc4`; tag `5e9f94a3d8d0855650333696b83d25447902b931` | `394906831` | [`22923337`](https://doi.org/10.5281/zenodo.22923337) |
| `v30.0.0-level-26-structural-verification` | `af520d36`; paper ancestor `2124501f` | — | `22863527` |
| `v30.1.0-integrated-full-43735b3` | tag `079c639` | `394308513` | `22909486` |
| `v30.1.1-tate-closure-continued-43735b3` | `8f7274d` | — | `22910461` |
| `v30.1.2-mazur-x0-13-frey-j-borel-43735b3` | — | — | `22910834` |
| `v30.1.3-ribet-32a1-kraus-a29-43735b3` | — | — | `22911053` |
| `v30.1.4-kolyvagin-L-Omega-Sel2-Fintype-43735b3` | `69ffd58e` | — | `22911318` |
| `v30.1.5-conditional-32-bridge-forward-43735b3` | `eee5b542` | — | `22911502` |
| `v30.1.6-requires-forward-43735b3` | `1e873612` | — | `22911918` |
| `v30.1.7-beal-final-43735b3` | commit `995b9c4810869c1ce6531b32080e668c1f5ff233`; tag `4254aac7923b1ac48f33a5359c90c4e1bd242bf3` | `394412409` | [`22912430`](https://doi.org/10.5281/zenodo.22912430) |
| `v25.0.1-forward-43735b3` | commit `385ff85c78c351de83b3fd625a208c9dea003647`; tag `626bbf615e9365a8af4b9f1b290259adee2936fd` | `394869393` | [`22922473`](https://doi.org/10.5281/zenodo.22922473) |

The foundations concept DOI is
[10.5281/zenodo.22379293](https://doi.org/10.5281/zenodo.22379293).
The predecessor sequence is `22863527`, `22909486`, `22910461`, `22910834`,
`22911053`, `22911318`, `22911502`, `22911918`, `22912430`, `22922473`.

The integrated numerical surface records
`Δ = 16A⁸B⁸(A⁴+B⁴)²`, `v₂₉(Δ)=26v₂₉(B+3)`,
`13∣v₂₉(Δ)`, `928/29=32`, `32*29=928`,
`|SL₂(𝔽₁₃)|=2184`, `48<2184`, `a₂₉=-10`,
`L/Ω=1/3,1/7`, and `Sel₂_card=1`. These equalities never construct the
remaining interfaces backwards. The exhaustive `B<1000` slice is proved;
the full `B≤10⁶` search and the general Beal common-prime theorem remain
separate explicit boundaries.

The clean foundations build had 5,215 jobs:
`BealMatveevBealV25B0Search` at `5148/5215`,
`BealMatveevBealV25B0Search.Forward` at `5213/5215`, and
`BealFinal.Main` at `5214/5215`. The retrofit projections use exactly
`[propext, Classical.choice, Quot.sound]`. See
[`docs/FoundationsIntegratedV30_1_7.md`](docs/FoundationsIntegratedV30_1_7.md)
and
[`docs/FoundationsIntegratedV25_0_1.md`](docs/FoundationsIntegratedV25_0_1.md).

## Foundations v30.1 integrated conditional level-32 reference

The companion repository now publishes the four full Tate, Mazur, Ribet, and
Kolyvagin surfaces together with the conditional level-`32` bridge:

- repository: [`beal-level-26-foundations`](https://github.com/DavidFox998/beal-level-26-foundations);
- branch: `integrated-43735b3-full-tate-mazur-ribet-kolyvagin-conditional-32`;
- commit: `75a07c0f8d369613e5cbae77661077178f6fc6ed`;
- annotated tag: `v30.1.0-integrated-full-43735b3`;
- tag object: `079c639abff33b6a2c511338a29dccac81df8814`;
- exact merge base: `43735b3b14a9e844d4b4bdf57fa5f68d29e749ee`;
- version DOI: [10.5281/zenodo.22909486](https://doi.org/10.5281/zenodo.22909486);
- concept DOI: [10.5281/zenodo.22379293](https://doi.org/10.5281/zenodo.22379293).

This is a successor reference to
`v30.0.0-level-26-structural-verification`; it does not replace or move that
tag.  The bridge takes explicit Mazur, Tate, and Ribet assumptions and is not
an unconditional newform construction.  See
[`docs/FoundationsIntegratedV30_1.md`](docs/FoundationsIntegratedV30_1.md).
The Lean and Mathlib pins remain `v4.12.0` and `809c3fb3…`; no
`lake update` was run.

Current: `af520d3` `main` tag `v30.0.0-level-26-structural-verification` version DOI `10.5281/zenodo.22863527` — ports foundations `v0.30-mcom-structural-verification` at `2b60ccd` (chore `9160a6a` from `bc7e93b`) — four v29 finals already on this repo; v30 is structural verification of displayed Tate `928=2⁵·29` Néron `I₀*` `I₈` `c₄` `Δ` `v₂=6` `v₂₉=8`, Mazur `2184` `48<2184` `13=2²+3²` `288/48=6` card `2` genus `0` infinite vs `2`, Ribet `928/29=32` `∅` card `0` `full=1` `new=1` LMFDB `32a1`, Kolyvagin `|Sel₂|=1` `3·7=21` `L/Ω=1/3` `1/7` rank0 `26a1` `26b1` — vendor `Level26/BealLevel26Foundations` unchanged `db7a556`/`fea0c393` no nested `Level26` — parent Tate algorithm / Néron `N_E`, `{2 cusps}=X₀(13)(ℚ)`, Sage `new_subspace dim=0`, and `MW_rank_zero_fintype` stay `def Prop` on parent files — lakefile path-requires `./Level26/BealLevel26Foundations` — Matveev 2000 Thm 1.4 `n=2` `C1_floor=143186215390` + Bugeaud LLL → `B0=10^6` `hGen` `hLLL` stay `def Prop` — axioms `[propext, Classical.choice, Quot.sound]` — Lean 4.12 explicit types `decide` not `native_decide` — foundations branches `tate-v29` `mazur-x0-13` `ribet-928-32` `kolyvagin-fintype` `tate-neron-v28` `mazur-cusps-v28` `ribet-no-newforms-v28` `kolyvagin-fintype-subsingleton-v28` `tate-neron-final-v29` `mazur-no-isogeny-final-v29` `ribet-928-to-32-final-v29` `kolyvagin-rank0-final-v29` `chore-v30-structural-verification-docs` `phase-darmon-merel-4413` and tags `v0.27` `v0.28` `v0.29` `v0.30` stay live — concept DOI `10.5281/zenodo.22379293` — prior version DOI `10.5281/zenodo.22854603`

[![Lean v4.12.0](https://img.shields.io/badge/Lean-v4.12.0-purple)](https://github.com/leanprover/lean4/releases/tag/v4.12.0) [![mathlib 809c3fb](https://img.shields.io/badge/mathlib-809c3fb-blue)](https://github.com/leanprover-community/mathlib4/commit/809c3fb3b5c8f5d7dace56e200b426187516535a) [![Concept DOI](https://zenodo.org/badge/DOI/10.5281/zenodo.22379293.svg)](https://doi.org/10.5281/zenodo.22379293) [![v30.0.0 DOI](https://zenodo.org/badge/DOI/10.5281/zenodo.22863527.svg)](https://doi.org/10.5281/zenodo.22863527) [![v29.0.0 DOI](https://zenodo.org/badge/DOI/10.5281/zenodo.22854603.svg)](https://doi.org/10.5281/zenodo.22854603) [![v28.0.0 DOI](https://zenodo.org/badge/DOI/10.5281/zenodo.22851334.svg)](https://doi.org/10.5281/zenodo.22851334) [![v27.0.0 DOI](https://zenodo.org/badge/DOI/10.5281/zenodo.22842767.svg)](https://doi.org/10.5281/zenodo.22842767) [![v26.0.0 DOI](https://zenodo.org/badge/DOI/10.5281/zenodo.22832505.svg)](https://doi.org/10.5281/zenodo.22832505) [![CI](https://github.com/DavidFox998/beal-conjecture/actions/workflows/main.yml/badge.svg)](https://github.com/DavidFox998/beal-conjecture/actions/workflows/main.yml) [![main 35532850099](https://img.shields.io/badge/main%20CI-35532850099-brightgreen)](https://github.com/DavidFox998/beal-conjecture/actions/runs/35532850099) [![badge 35541392250](https://img.shields.io/badge/badge%20CI-35541392250-brightgreen)](https://github.com/DavidFox998/beal-conjecture/actions/runs/35541392250) [![foundations incremental 35524223408](https://img.shields.io/badge/foundations%20incremental-35524223408-brightgreen)](https://github.com/DavidFox998/beal-level-26-foundations/actions/runs/35524223408)

Mathematics of Computation submission — not an arXiv preprint. No arXiv badge. Pins Lean `v4.12.0` mathlib `809c3fb…` `inputRev v4.12.0` conjecture manifest `83739542…` vendor `db7a556`/`fea0c393` 0 vs `b780c9c`/`1a00fbd`.

> **v30.0.0-level-26-structural-verification — Formal Verification of the Level 26 Foundations for Signature (4,4,13): Certified Mordell-Weil Rank Zero for X₀(26), Descent, Torsion, Conductor, Isogeny, Level Lowering — v30.0.0-level-26-structural-verification**

The title is deposit metadata. Algebraic Mordell–Weil rank 0 as `Nonempty (Fintype (E(ℚ)))` remains a `def Prop`. `X₀(13)(ℚ)={2 cusps}` is literature-false (genus 0). LMFDB `S₂(Γ₀(32))` new dimension is **1**, not 0. v30 does **not** inhabit new Lean theorems; it structurally verifies the v29 finals.

## v30.0.0 — Structural verification of the four v29 finals

- Vendor unchanged `db7a556`/`fea0c393` — no nested `Level26/`. Path-requires `./Level26/BealLevel26Foundations`. `v1.2.1` git require stays gone. Two lakefiles are intentional. `lake update` was not run. Mathlib pin `809c3fb3…` `inputRev` `v4.12.0`. Conjecture manifest sha `83739542…` (package list differs from foundations `c7dbd578…`).
- Honest slice `Level26/HonestB0Search/` already carries the four v29 finals (Lean 4.12 explicit types, `decide` not `native_decide`). v30 adds structural-verification docs:
  - [`Tate_Neron_v30.md`](docs/Tate_Neron_v30.md) — displayed `N_E=928=2⁵·29`, `I₀*` `v₂=6`, `I₈` `v₂₉=8`. Still `def Prop` on the parent: Tate’s algorithm, Néron `N_E`.
  - [`Mazur_Cusps_v30.md`](docs/Mazur_Cusps_v30.md) — `|SL₂|=2184`, `48<2184`, `13=2²+3²`, `288/48=6`, cusp Finset `card=2`, genus 0 ⇒ infinite vs 2. Does **not** claim `{2 cusps}=X₀(13)(ℚ)`.
  - [`Ribet_No_Newforms_32_v30.md`](docs/Ribet_No_Newforms_32_v30.md) — `928/29=32`, matching Finset `card=0`, `full=1` `new=1` LMFDB `32a1`. Sage `new_subspace().dimension()=0` is **not** a theorem.
  - [`Kolyvagin_Rank0_v30.md`](docs/Kolyvagin_Rank0_v30.md) — `|Sel₂|=1`, `3·7=21`, `L/Ω=1/3` and `1/7`, rank0 display `26a1` `26b1`. Still `def Prop` on the parent: `MW_rank_zero_fintype`.
- Slice folders: [`Level26/HonestB0Search/docs/tate-neron-v30/`](Level26/HonestB0Search/docs/tate-neron-v30/), [`mazur-cusps-v30/`](Level26/HonestB0Search/docs/mazur-cusps-v30/), [`ribet-no-newforms-v30/`](Level26/HonestB0Search/docs/ribet-no-newforms-v30/), [`kolyvagin-rank0-v30/`](Level26/HonestB0Search/docs/kolyvagin-rank0-v30/).
- Unchanged Lean from v29: `Tate_Frey_Conductor_29_Neron_final`, `Mazur_X0_13_No_Isogeny_final`, `Ribet_Level_Lowering_29_to_32_final`, `Kolyvagin_MW_Rank0_26a1_26b1_final`. Unchanged from v28/v27/v26: `TwoDescent_26a1_26` `7c19ad0`, `BSD_MordellWeil` `8994d38`.
- Foundations Actions chore [35523907462](https://github.com/DavidFox998/beal-level-26-foundations/actions/runs/35523907462) green (~290s cache hit). Phase tip `2b60ccd` tag `v0.30-mcom-structural-verification`.
- Foundations working branches and tags `v0.27` `v0.28` `v0.29` `v0.30` are **not deleted**.
- Eleven vendor `Level26/BealLevel26Foundations/` folders that had no README at foundations `43735b3` already received READMEs on the v26 beal-conjecture port; those vendor files are left unchanged.

## v29.0.0 — Four final algebraic-prop displays from foundations `bc7e93b`

- Vendor unchanged `db7a556`/`fea0c393` — no nested `Level26/`. Path-requires `./Level26/BealLevel26Foundations`. `v1.2.1` git require stays gone. Two lakefiles are intentional. `lake update` was not run. Mathlib pin `809c3fb3…` `inputRev` `v4.12.0`.
- Honest slice `Level26/HonestB0Search/` adds the v29 finals from foundations Actions [35490246507](https://github.com/DavidFox998/beal-level-26-foundations/actions/runs/35490246507) (phase incremental green; 2d [35489926310](https://github.com/DavidFox998/beal-level-26-foundations/actions/runs/35489926310)):
  - `Tate_Frey_Conductor_29_Neron_final` — parent names `Tate_algorithm_at_29` / `Frey_Neron_conductor` / `Frey_conductor_29_is_Neron` as theorems; displayed `N_E=928=2⁵·29`. Still `def Prop` on the parent: Tate’s algorithm, Néron `N_E`. Short model `[0,-(A⁴+B⁴),0,0,0]` is a different curve.
  - `Mazur_X0_13_No_Isogeny_final` — parent names as theorems; genus 0, displayed cusp Finset `{0,1}` `card=2`, `|SL₂(𝔽₁₃)|=2184`, `48<2184`. Does **not** claim `{2 cusps}=X₀(13)(ℚ)`.
  - `Ribet_Level_Lowering_29_to_32_final` — parent names as theorems; `928/29=32`, matching Finset `card=0`. Sage `new_subspace().dimension()=0` is **not** a theorem (LMFDB new dim **1**).
  - `Kolyvagin_MW_Rank0_26a1_26b1_final` — parent names as theorems; `|Sel₂|=1`, `3·7=21`, `L/Ω=1/3` and `1/7`, `¬IsRankZero`, `Nonempty(Fintype)→Finite`. Still `def Prop` on the parent: `MW_rank_zero_fintype` / Kato / `Nonempty (Fintype (E(ℚ)))`.
- Lean 4.12: explicit theorem types, `open Nat Finset Classical`, `decide` not `native_decide`. Axioms `[propext, Classical.choice, Quot.sound]`.
- Unchanged from v28/v27/v26: `TwoDescent_26a1_26` `7c19ad0`, `BSD_MordellWeil` `8994d38`.
- Slice docs: [`Level26/HonestB0Search/docs/tate-neron-v29/`](Level26/HonestB0Search/docs/tate-neron-v29/), [`mazur-cusps-v29/`](Level26/HonestB0Search/docs/mazur-cusps-v29/), [`ribet-no-newforms-v29/`](Level26/HonestB0Search/docs/ribet-no-newforms-v29/), [`kolyvagin-rank0-v29/`](Level26/HonestB0Search/docs/kolyvagin-rank0-v29/), plus the v28 and v27 folders and `roadmap_without_wiles`.
- Matveev Thm 1.4 `n=2` `C1_floor=143186215390` `hGen` `∀ α₁,α₂>1` `α₂=B+3` + Bugeaud LLL `hLLL` → `B0=10^6` — `|Λ|≤B⁴/A⁴`. `hGen` / `hLLL` stay `def Prop`.
- Foundations working branches and tags `v0.27-mcom-four-props-inhabited`, `v0.28-mcom-algebraic-props-inhabited`, `v0.29-mcom-final-algebraic-props-inhabited` are **not deleted**.
- Eleven vendor `Level26/BealLevel26Foundations/` folders that had no README at foundations `43735b3` already received READMEs on the v26 beal-conjecture port; those vendor files are left unchanged.

## v28.0.0 — Four algebraic-prop displays from foundations `a93402e`

- Vendor unchanged `db7a556`/`fea0c393` — no nested `Level26/`. Path-requires `./Level26/BealLevel26Foundations`. `v1.2.1` git require stays gone. Two lakefiles are intentional. `lake update` was not run. Mathlib pin `809c3fb3…` `inputRev` `v4.12.0`.
- Honest slice `Level26/HonestB0Search/` adds the v28 modules from foundations Actions [35471378934](https://github.com/DavidFox998/beal-level-26-foundations/actions/runs/35471378934):
  - `Tate_Frey_Conductor_29_Neron_inhabited` — `c₄`/`c₆`, `v₂(Δ)=6` (`I₀*`), `v₂₉(Δ(29,1))=8`, numeral `928=2⁵·29`. Still `def Prop`: Tate’s algorithm, Néron `N_E`. Short model `[0,-(A⁴+B⁴),0,0,0]` is a different curve.
  - `Mazur_X0_13_Cusps_Equals_Rationals_inhabited` — genus 0, displayed cusp Finset `{0,1}` `card=2`, `|SL₂(𝔽₁₃)|=2184`, `48<2184`. Does **not** claim `{2 cusps}=X₀(13)(ℚ)`.
  - `Ribet_No_Newforms_At_32_inhabited` — `928/29=32`, Sturm `8`, old level `16`, matching Finset `card=0`. Sage `new_subspace().dimension()=0` is **not** a theorem (LMFDB new dim **1**).
  - `Kolyvagin_Fintype_Subsingleton_inhabited` — `Nonempty (Fintype α) → Fintype α`, Subsingleton card `1` on `Unit`, `|Sel₂|=1`, `3·7=21`, `L/Ω=1/3` and `1/7`, `¬IsRankZero`. Still `def Prop`: `MW_rank_zero_fintype`.
- Unchanged from v27/v26: `TwoDescent_26a1_26` `7c19ad0`, `BSD_MordellWeil` `8994d38`.
- Slice docs: [`Level26/HonestB0Search/docs/tate-neron-v28/`](Level26/HonestB0Search/docs/tate-neron-v28/), [`mazur-cusps-v28/`](Level26/HonestB0Search/docs/mazur-cusps-v28/), [`ribet-no-newforms-v28/`](Level26/HonestB0Search/docs/ribet-no-newforms-v28/), [`kolyvagin-fintype-subsingleton-v28/`](Level26/HonestB0Search/docs/kolyvagin-fintype-subsingleton-v28/), plus the v27 folders and `roadmap_without_wiles`.
- Matveev Thm 1.4 `n=2` `C1_floor=143186215390` `hGen` `∀ α₁,α₂>1` `α₂=B+3` + Bugeaud LLL `hLLL` → `B0=10^6` — `|Λ|≤B⁴/A⁴`. `hGen` / `hLLL` stay `def Prop`.
- Axioms `[propext, Classical.choice, Quot.sound]` (Tate `native_decide` also uses `Lean.ofReduceBool`).
- Foundations working branches and tags `v0.27-mcom-four-props-inhabited`, `v0.28-mcom-algebraic-props-inhabited` are **not deleted**.
- Eleven vendor `Level26/BealLevel26Foundations/` folders that had no README at foundations `43735b3` already received READMEs on the v26 beal-conjecture port; those vendor files are left unchanged.

## v27.0.0 — Four packaged displays from foundations `51bba93`

- Vendor unchanged `db7a556`/`fea0c393` — no nested `Level26/`. Path-requires `./Level26/BealLevel26Foundations`. `v1.2.1` git require stays gone. Two lakefiles are intentional.
- Honest slice `Level26/HonestB0Search/` now carries the packaged theorems from foundations Actions [35386836684](https://github.com/DavidFox998/beal-level-26-foundations/actions/runs/35386836684):
  - `Tate_Frey_Conductor_29_inhabited` — Mathlib `Δ`, `v₂₉(Δ)=26 v₂₉(C)` when `29 ∤ AB`, numeral `928/29=32`. Still `def Prop`: Tate’s algorithm, Néron `N_E`.
  - `Mazur_X0_13_No_Isogeny_inhabited` — genus 0, cusp count 2, `|SL₂(𝔽₁₃)|=2184`, `48<2184`. Does **not** claim `{2 cusps}=X₀(13)(ℚ)`. Still `def Prop`: Frey 13-isogeny.
  - `Ribet_Level_Lowering_29_to_32_inhabited` — numeral `928/29=32`. Still `def Prop`: abstract Ribet / no newforms at 32.
  - `Kolyvagin_MW_Rank0_26a1_26b1_inhabited` — `|Sel₂|=1`, `3·7=21`, `L/Ω=1/3` and `1/7`, `¬IsRankZero`. Still `def Prop`: `Nonempty (Fintype (E(ℚ)))`.
- Unchanged from v26: `TwoDescent_26a1_26` `7c19ad0`, `BSD_MordellWeil` `8994d38`.
- Slice docs: [`Level26/HonestB0Search/docs/tate-v29/`](Level26/HonestB0Search/docs/tate-v29/), [`mazur-x0-13/`](Level26/HonestB0Search/docs/mazur-x0-13/), [`ribet-928-32/`](Level26/HonestB0Search/docs/ribet-928-32/), [`kolyvagin-fintype/`](Level26/HonestB0Search/docs/kolyvagin-fintype/), plus `X0_26_SECTION_8994d38.md` and `roadmap_without_wiles`.
- Matveev Thm 1.4 `n=2` `C1_floor=143186215390` `hGen` `∀ α₁,α₂>1` `α₂=B+3` + Bugeaud LLL `hLLL` → `B0=10^6` — `|Λ|≤B⁴/A⁴`. `hGen` / `hLLL` stay `def Prop`.
- Axioms `[propext, Classical.choice, Quot.sound]`.
- Foundations working branches and tag `v0.27-mcom-four-props-inhabited` are **not deleted**.
- Eleven vendor `Level26/BealLevel26Foundations/` folders that had no README at foundations `43735b3` already received READMEs on the v26 beal-conjecture port; those vendor files are left unchanged.

## v26.0.0 — Honest slice from foundations 43735b3 (parent)

Prior software version of this monorepo. Tag `v26.0.0-level-26-foundations-certified-mw-rank-zero` at `5e2906b`, badge commit `5806dad`, version DOI `10.5281/zenodo.22832505`. Actions [35342454199](https://github.com/DavidFox998/beal-conjecture/actions/runs/35342454199) and [35359976579](https://github.com/DavidFox998/beal-conjecture/actions/runs/35359976579) green (HonestB0Search + Level26 + historical Beal). The four packaged `*_inhabited` theorems were not yet on this repo.

[![v11.0.0 DOI](https://zenodo.org/badge/DOI/10.5281/zenodo.22281075.svg)](https://doi.org/10.5281/zenodo.22281075)

> **v11.0.0 — Conditionally complete assembly** (prior software version of this monorepo).
> [`Beal.Final.ConditionalBealTheorem`](lean/Beal/Final/ConditionalBealTheorem.lean)
> exposes exactly five named mathematical premises. The Level 26 gap-3 Baker
> $B_0$ tag is **not minted**.

## The conjecture

Andrew Beal (1997) observed and offered a prize for the following:

> **If** $A^x + B^y = C^z$ where $A, B, C, x, y, z$ are positive integers
> and $x, y, z \geq 3$, **then** $A$, $B$, and $C$ share a common prime factor.

The condition $x = y = z = 2$ is excluded because Pythagorean triples
($3^2 + 4^2 = 5^2$) are coprime. The conjecture concerns the genuinely
harder territory of higher exponents.

---

## A standing corollary: Beal implies Fermat

Beal's conjecture is strictly stronger than Fermat's Last Theorem.
The implication is a clean descent argument.

**Claim.** Beal's conjecture $\Rightarrow$ Fermat's Last Theorem for $n \geq 3$.

**Proof sketch.** Let $n \geq 3$ and suppose $A^n + B^n = C^n$ with
$A, B, C$ positive integers. This is a Beal triple with $x = y = z = n$.
Beal's conjecture would then require $\gcd(A, B, C) > 1$: there exists a
prime $p$ dividing all three. Write $A = pA'$, $B = pB'$, $C = pC'$.
Then
$$
p^n A'^n + p^n B'^n = p^n C'^n \;\implies\; A'^n + B'^n = C'^n,
$$
a strictly smaller solution. Infinite descent forces the conclusion: no
minimal positive solution can exist, so no solution exists at all. $\square$

Wiles (1995) proved FLT unconditionally via a different route — the
modularity of semistable elliptic curves. That Beal's conjecture would give
an *independent* implication illustrates how closely the two problems are
coupled at the level of conductor arithmetic and level-lowering. The
formalization makes this coupling explicit rather than gestural.

---

## v11 release boundary

The five final premises are:

1. `J0DecompositionSoundness_26`;
2. `MwrankCertificateSoundness_26`;
3. `FormalImmersionSoundness_26`;
4. `FreyCurveExists`;
5. `LevelLowering_26`.

The theorem does not prove these inputs. It proves that they suffice.

`Level26_GeometryBridge.lean` derives
\[
C_3=\begin{pmatrix}1&1\\2&1\end{pmatrix},\quad
P=\begin{pmatrix}1&0\\1&1\end{pmatrix},\quad
PC_3=M_3=\begin{pmatrix}1&1\\0&2\end{pmatrix}.
\]
Foundations v1.2.0 supplies a finite formal-coordinate calculation on a
symmetric-square cusp chart. It does not construct the global Picard scheme or
an actual Abel--Jacobi morphism, so
`QExpansionCotangentCompatibilityAtInfinity26` remains an explicit geometric
premise.

The companion
[`beal-level-26-foundations`](https://github.com/DavidFox998/beal-level-26-foundations)
develops these missing foundations. Its closed formal cusp-chart differential
and odd-prime valuation-input release is
[10.5281/zenodo.22286222](https://doi.org/10.5281/zenodo.22286222), under
concept DOI
[10.5281/zenodo.22272382](https://doi.org/10.5281/zenodo.22272382).
The corrected finite-only v1.0.1 archive remains
[10.5281/zenodo.22272714](https://doi.org/10.5281/zenodo.22272714).
It is a companion work, not a version of this repository.

## Historical formal-status narrative

This is a conditional formalization, not an unconditional Lean proof of
Beal's Conjecture. The compact referee map is:

| Layer | Exact status |
|---|---|
| **Mathlib 4.12** | Supplies Weierstrass curves and point groups, algebraic closures and the absolute Galois group, finite groups, `ZMod`, and polynomial/arithmetic infrastructure. It does not supply scheme-level `X₀(N)`, elliptic-curve quotient/isogeny objects at this boundary, Kenku–Mazur, genus-two Jacobian descent, Wiles, or Ribet. |
| **Project Lean proofs** | Constructs the canonical Frey model, its exact rational `E[2]`, the geometric `p`-torsion action, the mixed level-`2p` subgroup, good reduction and semistability at the residual prime, and the exhaustive prime split `11,13,17,19,23,29,31,37` for the recorded B17 range. |
| **Lean-checked computations** | Checks the explicit `X₀(26)` sextic, discriminant and factorization, four displayed cusp points, finite-field counts, the M1/M2 numerical thresholds, and the finite formal-immersion determinant. These computations do not prove global rational-point exhaustiveness. |
| **Mathematical interpretation** | Interprets a stable cyclic subgroup as rational isogeny data and the level-26 model as `X₀(26)`. Those interpretations are represented by typed realization boundaries because Mathlib lacks the required moduli infrastructure. |
| **Absent / external** | A complete `X₀(26)(ℚ)` rank–torsion–exhaustiveness certificate and Frey realization for `p=13`; the seven non-13 semistable/Kenku–Mazur exclusions; full 2-adic conductor analysis; Wiles modularity; the external odd-prime Tate theorem; and the enriched Ribet/patching plan. |

`B17_MazurPrimeCoverage.lean` has no unrestricted fallback. The `p = 13`
branch is forced through `Frey_13_exclusion_of_global_certificate`; the other
seven primes are separate fields. The constructor therefore proves that
complete supplied evidence inhabits `MazurRationalIsogenyClassification`, but
the repository does **not** manufacture the still-missing mathematical
certificates.

The active conditional chain is:

**primitive Beal data** → **canonical Frey model and exact rational `E[2]`**
→ **complete supplied B17 isogeny exclusions** → **externally supplied global
conductor and 2-adic exponent-one certificate** → **Wiles form token and
quotient plan** → **Tate-derived odd-prime exact divisibility** → **explicit
`EnrichedPlanSupplier` carrying the Galois, Hecke, Eutheos, Taylor–Wiles,
support, and transport data** → **level 2** → **$S_2(\Gamma_0(2))=0$**.

Closing the B17 case split does not close the independent Wiles, Tate, Ribet,
patching, or conductor boundaries. The final B20 theorem still uses exactly
the three named domain interfaces `wiles_modularity`, `frey_conductor_data`,
and `tate_step2_odd_prime_external`, plus the explicit
`TwoAdicExponentOneSupplier` and `EnrichedPlanSupplier`. Foundational audit
entries such as `propext`, `Classical.choice`, and `Quot.sound` are Lean
foundations, not additional mathematical theorems.

### v10.0.0 — Conditional Beal — Explicit premises, no global axioms

The v10.0.0 final assembly is
[`lean/Beal/Final/ConditionalBealTheorem.lean`](lean/Beal/Final/ConditionalBealTheorem.lean).
It composes the reproducible v9.2--v9.4 level-26 chain with the existing
Frey, modularity, and Ribet level-lowering interfaces to prove the public Lean
proposition `BealConjecture`.

This is a conditional theorem. Its mathematical boundaries are visible theorem
arguments; the release does not claim that transcripts or JSON files construct
the missing geometry.

| Verification | Status | Checked conclusion |
|---|---|---|
| v9.2 replay/certificate | passed | rank `0`, subject to the explicit Selmer/mwrank soundness premise |
| v9.3 JSON | passed | `dim J₀(26) = 2 = 1 + 1` and the displayed factors |
| v9.4 JSON | passed | `M₃` has rank `2` over `ℚ` and `GF(2)` |
| Focused Lean | passed | `Beal.Final.ConditionalBealTheorem` |
| Full CI | passed | complete project and certificate audit |
| Axiom audit | passed | only `propext`, `Classical.choice`, and `Quot.sound` |

The release chain, with its historical anchors, is:

- **v9.2.0:** rank `0`, with the recorded Selmer conclusion `{1}` and the
  explicit second-descent soundness boundary;
- **v9.3.0:** merge `b06254c`, with
  `dim J₀(26) = 2 = 1 + 1` and the displayed isogeny;
- **v9.4.0:** documentation/verification commits `e665e0d` and `e3e1e84`,
  with `M₃` rank `2`, the formal-immersion bridge, DOI badge, and CI run
  `33652336887`; and
- **v10.0.0:** `ConditionalBealTheorem`, with five explicit premises and no
  new global axioms.

The five explicit premises are:

- `J0DecompositionSoundness_26 J0_26`;
- `MwrankCertificateSoundness_26`;
- `FormalImmersionSoundness_26 J0_26 cotangent`;
- `FreyCurveExists`; and
- `LevelLowering_26`.

The first three are the v9.2--v9.4 certificate-interpretation boundaries.
`FreyCurveExists` reuses the existing level-26 Frey construction supplier;
`LevelLowering_26` carries the indexed modularity and Ribet level-lowering
data. None is a global Lean axiom. Task #495 remains the named v10.0.1
hardening step for constructing the actual cotangent map behind `M₃`.

### v9.4.0 — Formal immersion `X₀(26) → J₀(26)` at `2` via `M₃` rank `2`

The v9.4.0 release adds a reproducible finite formal-immersion witness at the
prime `2`. Its source triad is:

- `sagemath/formal_immersion_26.log`, the archived matrix transcript;
- `sagemath/GENUINE_FORMAL_IMMERSION_26_CERT_v9.4.0.txt`, the six-point
  evidence checklist; and
- `lean/Beal/Mazur/Gates/FormalImmersion_26_Cert.lean`, which houses the
  kernel-checked `M₃` data and rank certificates.

The witness checks that the displayed `2 × 6` matrix has rank `2` over both
`ℚ` and `GF(2)`, matching the verified dimension `dim J₀(26) = 2`.

Verification passed:

- formal-immersion JSON witness;
- existing `J₀(26)` JSON witness;
- focused Lean build of `Beal.Mazur.Gates.FormalImmersion_26`;
- full main CI; and
- axiom audit with only the standard Lean foundations
  `propext`, `Classical.choice`, and `Quot.sound`.

The three soundness inputs remain explicit proposition-valued arguments:
`J0DecompositionSoundness_26`, `MwrankCertificateSoundness_26`, and
`FormalImmersionSoundness_26`. They are not global axioms. In particular, the
finite matrix rank does not by itself construct the scheme-level cotangent map
or prove Mazur's criterion; those geometric interpretations remain visible at
the formal boundary.

The current conditional level-26 chain is:

**v9.2.0 rank `0` (`Selmer = {1}`)** → **v9.3.0 `dim J₀(26) = 2 = 1 + 1`
isogeny** → **v9.4.0 `M₃` rank `2` formal immersion** → **`X₀(26)(ℚ)`
finite**.

### v8.9.0 Real 80-Check Audit

The v8.9.0 release is the first honest executable Phase A computation for the
level-26 route. `Mazur/Gates/SecondDescent_Real_26.lean` evaluates the complete
finite grid of eight S-unit representatives against ten quartics at the two
bad primes, `2` and `13`: `8 × 10 = 80` entries. The existing finite-field
result tables are checked by `decide`, and all eighty entries pass both local
checks.

This result is intentionally not presented as a singleton 2-Selmer
calculation. The available evaluator is independent of the S-unit index, so
the audit retains all eight representatives and proves that its candidate set
is not a singleton. A future genuine singleton theorem must supply an
S-unit-dependent covering map and a verified local obstruction table; filtering
to the identity representative would be circular.

The release also moves the eight-element S-unit index and ten-row ledger into
`Descent_26_PhaseA.lean`, preserves `SecondDescentHypothesis_26` as an explicit
conditional boundary, and adds `ConditionalBealTheorem.lean` as the aggregator
for the conditional Phase B+C+D chain. The exact focused builds pass:

```text
lake build Beal.Mazur.Gates.SecondDescent_Real_26
lake build Beal.ConditionalBealTheorem
```

The audited declarations contain no `sorry`, `admit`, `sorryAx`, or
`Lean.ofReduceBool`; their remaining Lean foundation dependencies are
`propext`, `Classical.choice`, and `Quot.sound`. This remains conditional
mathematics, not an unconditional proof of Beal's Conjecture.

### v9.1.0 — Real formal-immersion matrix at 3

The v9.1.0 release adds the first real finite Phase C matrix evidence to the
level-26 chain. The implementation was merged on `main` at
`0a28f246359f1eea99a9183420a9fc395e03d019`; the annotated release tag is
created on the subsequent documentation-inclusive snapshot so that the tag,
README, and source code describe the same release.

`Mazur/Jacobian/FormalImmersion_26.lean` now records:

- the explicit hyperelliptic model
  $y^2 = X0\_26\_f6(x)$, reusing the verified degree-six level-26 model;
- the finite differential basis $\omega_1 = dx/y$ and
  $\omega_2 = x\,dx/y$;
- mod-3 reduction tokens for all four cusp labels, finite Abel–Jacobi replay
  rows, and two selected distinct cusp reductions;
- the differential evaluation table over $\mathbb Z/3\mathbb Z$; and
- the computed matrix
  $$
  M_3 =
  \begin{pmatrix}1&1\\0&2\end{pmatrix},
  \qquad \det(M_3)=2\ne 0\pmod 3.
  $$

The declaration `formal_immersion_matrix_rank_two_decided` proves the rank-two
finite certificate by `decide`, without additional axioms. The combined
certificate is exposed as `FormalImmersionAt3_Real_26` and
`formal_immersion_real_evidence`, and is exported through
`ConditionalBealTheorem.lean` as
`phase_c_formal_immersion_evidence_real`.

The focused release builds are:

```text
lake build Beal.Mazur.Jacobian.FormalImmersion_26
lake build Beal.Mazur.Jacobian.J0_26_Decomp
lake build Beal.Mazur.Gates.SecondDescent_Real_26
lake build Beal.ConditionalBealTheorem
lake build Beal
```

This is real finite matrix evidence, not a claim that Lean has reconstructed
the scheme-level Abel–Jacobi map, smooth reduction, or the geometric
formal-immersion implication. Those interfaces remain explicit conditional
data in `FormalImmersionAt3_26`. The genus-two Jacobian isogeny
$J_0(26)\sim E_{26a1}\times E_{26b1}$, modularity, level-lowering, and the
global four-cusp conclusion therefore remain conditional boundaries.

The v9.1.0 chain is:

**real 80-check Phase A** → **real $S_2(26)$ q-expansion, Hecke, distinctness,
and dimension-two Phase B evidence** → **real**
$M_3=\left(\begin{smallmatrix}1&1\\0&2\end{smallmatrix}\right)$ **rank-two
mod-3 Phase C certificate** → **conditional Phase D Beal endgame**.

The Phase A and Phase B evidence remains as documented below. In particular,
the 80-entry audit does not claim a singleton Selmer group, and the Phase B
finite tables do not by themselves prove the missing Jacobian/isogeny theorem.

### v9.3.0 — Reproducible J₀(26) decomposition certificate

The v9.3.0 release replaces the external `J₀(26)` decomposition trust
boundary with a reproducible certificate. The committed Sage transcript and
JSON witness record:

- $\dim J_0(26)=2=1+1$;
- the reported isogeny
  $J_0(26)\sim E_{26a1}\times E_{26b1}$;
- the exact models $(1,0,1,-5,-8)$ and $(1,-1,1,-3,3)$; and
- the explicit source-to-Lean factor correspondence, including its
  intentionally preserved factor-order difference.

The Lean bridge exposes `J0DecompositionSoundness_26` and
`MwrankCertificateSoundness_26` as visible proposition-valued arguments, not
global axioms. The finite model, dimension, transcript, and certificate
integrity checks are kernel-checked; Sage decomposition semantics and
mwrank/second-descent rank semantics remain explicit mathematical premises.

Verification for this release:

```text
python3 scripts/j0_26_decomp_certificate.py --check
lake build Beal.Mazur.Gates.J0_26_Decomp
Main CI passed in 2m42s
```

The JSON witness check and focused Lean build passed, and no new
`axiom`, `sorry`, or `admit` was introduced. This is reproducible evidence
for the level-26 bridge, not an unconditional proof of Beal's Conjecture or
of the still-missing global $X_0(26)(\mathbb Q)$ exhaustiveness argument.

### Historical v9.2.0 — Rank-zero second-descent certificate

The v9.2.0 evidence records the finite local checks and the explicit
Selmer-to-rank boundary for the level-26 route. Its Sage-facing artifacts and
Lean endpoint are documented in `sagemath/README.md` and
`SecondDescent_Singleton_26_Reproducible`.

The rank-zero conclusion is retained as an explicit certificate premise in the
v9.3.0 and v9.4.0 bridges; it is not silently promoted into an unconditional
Selmer theorem.

The immutable release archive
`beal-conjecture-v8.9.0.tar.gz` is 175,208 bytes with SHA-256
`61362de15bd0c2ea9f64fea47ce91e958c9eafd2a6aa034147fda68099266672`.
The same bytes are attached to the
[GitHub release](https://github.com/DavidFox998/beal-conjecture/releases/tag/v8.9.0)
and [Zenodo v8.9.0](https://doi.org/10.5281/zenodo.22238572).

### Historical v8.8.0 conditional Phase D endgame

The v8.8.0 release added `Mazur/Frey/LevelLowering_26.lean`. Its
proof-relevant interface carries a primitive Beal counterexample through
explicit Frey-construction, modularity, level-lowering, and displayed-model
boundaries to a noncuspidal rational point on the level-26 model. The existing
Phase A–C rank-zero and four-cusp certificates then yield the conditional
contradiction.

This is a conditional formalization milestone, not an unconditional proof of
Beal's Conjecture. The new principal theorems compile with no `sorryAx` and use
only Lean's standard `{propext, Classical.choice, Quot.sound}` foundations.

### v7.3.0 Task #440: Typed Eutheos old/new geometric bridge

The v7.3.0 bridge makes the old/new boundary more explicit without pretending
that fixed-point arithmetic has reconstructed modular-form geometry:

- The Eutheos certificate carries the denominator-cleared fixed-point
  inequality and list anchor as choice-free data.
- `EutheosGeometryInterface` supplies named old and new submodules, typed
  degeneracy maps `αₚ` and `βₚ`, their exact joint old-image representation,
  Hecke stability, genuine-form generation, V-membership, and coverage
  `V = old + new`.
- `separation_kernel (j : EutheosJitter)` is the lower-level old/new
  intersection statement `old ∩ new = ⊥`, explicitly parameterized by the
  jitter witness and its inequality.
- `OldNewDecompHyp_from_Eutheos` constructs the existing
  `OldNewDecompHyp` only at the theorem boundary from those fields. The
  arithmetic inequality alone is not claimed to prove the geometric kernel.
- B15 derives its old/new witness at the call site. In v8.0.0, the former
  `hRank` proposition is replaced by transparent `TaylorWilesPatchingData`.

The new supplier and B15 edge audit to `[propext, Quot.sound]`, with no
`sorryAx`, opaque declaration, or new mathematical axiom. The real-number
bridge remains separately audited as
`[propext, Classical.choice, Quot.sound]`.

#### Audit ladder

| Snapshot | CI / PR | Explicit boundary | What it records |
|---|---|---|---|
| v7.2.0-1419-infra | `a457c8b558`, CI `33139424482` | 2 Props | EutheosJitter carrier `[propext, Quot.sound]` |
| v7.3.0 Task #440 | PR #3, CI `33147207644` (success) | 1 Prop (`hRank`) | Typed Eutheos old/new geometric bridge |

### From one opaque step axiom to explicit edge data

At the #161 baseline, the README described the formal boundary as one
explicit `modularity_hypothesis`: a single typed proposition standing for
the modularity portion of the argument. That was a useful first boundary,
but it hid three mathematically different obligations behind one name.

The B14–B20 path now exposes the step boundary as data:

| Named interface | What it contributes |
|---|---|
| `wiles_modularity` | For the fixed Tate Frey model, a residual prime, typed form token at its conductor, and a certified finite descent plan. |
| `frey_conductor_data` | One global conductor value and prime-support theorem, indexed by the canonical integral Frey model. |
| `tate_step2_odd_prime_external` | The one external local Tate input: an odd-prime type-`Iₙ` fiber, expressed by unit `c₄` and bad discriminant on the fixed model, has conductor exponent one. |
| `tate_step2_I_n_conductor_one` | A proved Lean wrapper assembling the explicit local certificates and applying the external theorem. |
| `FreyTwoAdicConductorCertificate` | A separate model-indexed 2-adic data boundary: it records one explicit exponent and its exact power-of-two divisibility proof for that same supplied conductor. |
| `NormalizedEigenlineData` | Explicit normalized generator and spanning data used to derive the V-specific q-expansion principle. |
| `EutheosGeometryInterface` | Typed old/new modules, degeneracy maps, exact old-image representation, coverage, and jitter-indexed separation data; `OldNewDecompHyp` is derived at the theorem boundary. |
| `TaylorWilesPatchingData` | Explicit prime levels, patched tower, depth bookkeeping, and the named R=T/localization specialization boundary used to construct `LocalizedRankOne`. |
| `NewSubspaceSupportData` | Choice-free finite-newform, representation-realization, and Hecke-annihilation witnesses. |
| `NewformHeckeToPreservedTokenTransport` | Narrow data-valued conversion from those witnesses to `PreservedForm`. |
| `GaloisEdgeWitness` | One exact edge carrying the representation, Hecke, eigenline, old/new, patching, support, and token-transport data. |
| `EnrichedPlanSupplier` | Data-valued enrichment indexed by the exact Tate-certified Wiles quotient-plan value, so its `N`, `p`, and `M` edges cannot be replaced by a different chain. |

The distinction matters. `tate_frey_multiplicative_derived` is a theorem, not
another axiom: it proves unit $c_4$ and bad discriminant for the canonical
Frey model, then applies the narrow external Tate theorem through
`tate_step2_I_n_conductor_one`. The model stores the Beal equation itself, so
its discriminant is certified to equal the expression computed from the
displayed Weierstrass coefficients. The canonical coefficient model is
constructed without `Classical.choice`; global conductor data and the local
Tate theorem are separate named boundaries. B15 proves that a certified plan repeatedly
transports the token and that the terminal token contradicts
$S_2(\Gamma_0(2)) = 0$.

This is deliberately a **typed scaffold**, not a claim that Wiles's theorem
alone produces the certified descent plan or that this repository constructs
modular forms. Those global ingredients remain inside the explicit
`wiles_modularity` boundary until they are formalized.

### The post-161 arc

- **#161–#165:** the Galois, Frey, Beal, and $S_2(Γ_0(2))$ scaffolding was
  consolidated into a typed Core/Wrapper architecture.
- **#165:** the Frey/Tate boundary introduced named Wiles, Tate, and Ribet
  interfaces instead of leaving modularity as one undifferentiated gap.
- **#190–#198:** the Frey curve's $c_4$, discriminant, conductor, local
  nonvanishing, and Tate-derived conductor witness were connected into a
  machine-checked per-prime statement.
- **v7.0.0-genuine-provider:** the opaque `ribet_single_step : Prop` was
  deleted from the active source path. B15 now consumes explicit
  `RibetSingleStepProviders`, and `ribet_single_step_from_genuine` audits to
  `[propext, Quot.sound]`.
- **v7.2.0:** B15 consumes `EnrichedPlanSupplier`. Each indexed edge derives
  its q-expansion premise from normalized eigenline data and carries explicit
  old/new, rank, newform-support, and token-transport data. The former broad
  provider is no longer used by the active descent.
- **v7.3.0 Task #440:** B15 derives `OldNewDecompHyp` from the typed
  `EutheosGeometryInterface` at the use site. The supplier exposes the
  degeneracy maps, exact old-image representation, Hecke-stable old/new
  modules, genuine generation, V-coverage, and the jitter-indexed separation
  kernel. Only `hRank` remains as the explicit proposition-valued edge
  boundary; the geometric kernel remains an explicit supplier input.
- **v8.0.0:** B15 replaces that `hRank` proposition with
  `TaylorWilesPatchingData`. Finite generators and coordinates are coherent
  under transitions; the localized coordinate is derived through the
  level-zero projection.
- **Patching specialization refinement:** the level-zero reconstruction law
  is now proved from transition-coordinate compatibility, finite-level
  reconstruction, and projection extensionality rather than stored as a
  field. The patching data is indexed by the exact Frey residual
  representation and its exact Hecke attachment. It carries explicit
  deformation-to-localized-Hecke and finite-level diamond comparison data.
  The localized residual map extends the attachment evaluation, but no
  universal deformation property, Frobenius control, or R=T isomorphism is
  claimed.

This is a more inspectable formal interface, not a stronger claim of completed
foundational mathematics. Wiles, the global conductor data, and local Tate
Step 2 remain named mathematical assumptions; the enriched-plan supplier
and the 2-adic exponent-one supplier remain explicit missing data boundaries.
The final B20 chain consumes all three named mathematical interfaces.
---

## The architecture: Cores, Wrappers, and explicit mathematical boundaries

The repository is organized into three layers, with a separate boundary for
the named mathematical results used by the final theorem.

### Cores (B01–B21 `*_Core.lean`)

The Cores are the mathematical skeleton. Each states a real proposition
in pure Lean, with **zero imports from Mathlib** and **zero axioms beyond
`propext`**. They cannot hide `sorry` behind a library import. CI enforces
this with `#print axioms` on every Core declaration.

| File | Claim |
|---|---|
| `B01` | `IsBealSolutionCore` — type-level characterization of a Beal triple |
| `B02` | `FreyDeltaCore` — nonvanishing discriminant of the Frey curve |
| `B04` | `ExactDivCore` — exact-divisibility arithmetic for $p^k \| N$ |
| `B14` | Frey invariants, local nonvanishing, and the Tate input boundary |
| `B15` | Prime-by-prime level reduction to 2 |
| `B16` | Final Wiles + Tate + Ribet assembly |

### Wrappers (`*_Wrapper.lean`, `*_Interface.lean`)

Wrappers translate Core statements into the concrete Mathlib setting — real
numbers, field norms, and `GCDMonoid`. They may carry foundational Lean
dependencies such as `propext`, `Classical.choice`, and `Quot.sound`; they
must never introduce `sorryAx`. The real-number BSD/Hasse boundary has its
own audit.

### The named mathematical interfaces and data boundary

The final B20 proof is conditional on three named mathematical boundaries and
two explicit data suppliers:

1. **Global conductor:** `frey_conductor_data` supplies one conductor and its
   prime support for the canonical integral Frey model.
2. **Wiles:** `wiles_modularity` supplies a residual prime, a typed form token,
   and an odd-prime quotient plan for that fixed conductor.
3. **Tate:** `tate_frey_multiplicative_at_model` derives `p ∣ N` and
   `p² ∤ N` at every intermediate edge from the fixed conductor, its prime
   support, and the narrow `tate_step2_odd_prime_external` boundary.
4. **Genuine plan:** `EnrichedPlanSupplier` enriches that Tate-certified plan.
   Each `GaloisEdgeWitness` carries the 07g–07k representation, Hecke,
   patching, support, and token-transport data; it no longer carries a duplicate
   exact-divisibility proof.

The older broad `modularity_hypothesis` remains part of the historical scaffold,
but it is not the dependency boundary of the final B14–B20 theorem. The old
opaque `ribet_single_step` axiom is no longer in the active source path.
---

## The path to a complete proof: Tate and Ribet

The current development implements the architecture below. Three named
interfaces, an explicit 2-adic exponent-one supplier, and an explicit
enriched-plan supplier mark the remaining inputs; the connective arithmetic
around them is explicit Lean code.

### Step 1 — Frey invariants and Tate's local conductor step

For a primitive Beal triple $(A^x, B^y, C^z)$, the development forms the Frey curve
$$
E : y^2 = x(x - A^x)(x + B^y).
$$
`B14_FreyTate.lean` defines its $b_2$, $b_4$, $c_4$, discriminant, and
model-indexed conductor data. It also proves that, under the stored Beal
equation, the discriminant formula equals the expression computed directly
from the Weierstrass coefficients.
`B14_TateC4Nonzero.lean` proves the needed local $c_4$ nonvanishing, and
`B14_TateInImpliesOrd1.lean` proves the unit-$c_4$ and bad-fiber certificates,
then combines them with the narrowly named external Tate theorem to prove
`tate_frey_multiplicative_at_model`; an existential compatibility wrapper is
retained as `tate_frey_multiplicative_derived`.

This derived theorem is not another assumption: it is the explicit bridge from
the generic odd-prime Tate statement to the actual Frey model and its fixed
conductor data.

The prime 2 is accounted for separately and more cautiously.
`two_dvd_frey_discriminant` and `two_dvd_frey_c4` prove the elementary
divisibility facts for the canonical equation, yielding the literal
`discEvenC4Even` invariant witness—not a reduction-type classification.
`FreyTwoAdicLocalData` separately requires an explicit diagonal-scaling
minimality certificate. External 2-adic work must supply a visible
`FreyTwoAdicConductorCertificate` containing a specific exponent `e` and
the proof `2^e ∣ N ∧ 2^(e+1) ∤ N` for the same model's supplied conductor
`N`. No certificate is constructed here, and no full minimal-model theorem,
Kodaira classification, or complete 2-adic Tate algorithm is claimed.
The final level-2 route explicitly asks for the stronger
`FreyTwoAdicExponentOneCertificate`; it does not attribute `e = 1` to Wiles.

The global `FreyConductorData` contract itself supplies an opaque natural
number and prime support. It is named “conductor” as the mathematical
boundary, but this repository does not internally construct or identify it
with Mathlib elliptic-curve conductor data.

### Step 2 — Wiles data and Ribet level-lowering

Tate selects a fixed `FreyCurveModel`. Given an explicit exponent-one
certificate for that model's 2-adic conductor, `wiles_modularity` supplies a
typed form token plus an odd-prime quotient path from its conductor to level 2.
`B15_RibetIterate.lean` derives every exact-divisibility edge from the
model-indexed Tate theorem and then passes the certified plan to an explicit
`EnrichedPlanSupplier`. Every corresponding edge carries typed Eutheos
geometry, exact residual-representation and Hecke-attachment indices,
Taylor–Wiles patching data, localized Hecke data, the 07j support bridge, and
explicit token-transport data. `ribet_single_step_from_genuine` derives support
and constructs the target token. `B16_BealFinal.lean` then eliminates the
terminal token using the verified equality
$S_2(\Gamma_0(2)) = 0$.

### Step 3 — Dimension zero closes the conditional argument

The space $S_2(Γ_0(2))$ has dimension zero: no cusp forms of weight 2 and
level 2 exist. This fact is verified in the repository by `rfl`. Once the
Ribet chain reaches level 2, the hypothetical primitive Beal triple yields a
contradiction.

The result is machine-checked as a consequence of the three named mathematical
interfaces and the two explicit data suppliers. Replacing those boundaries
with first-principles proofs is a later foundational stage; it is not claimed
by the green build.
---

## What CI actually checks

"Green" means the Lean source elaborates, its declared dependencies are visible,
and the audit checks pass. It does **not** mean that Wiles's, Tate's, or Ribet's
theorems have been reconstructed from first principles.

CI enforces the boundary on every push and pull request:

- **Build all bricks** — all B01–B21 Cores and Wrappers compile
- **Clean locked rebuild** — a separate job removes generated `.lake` state and
  rebuilds from the committed `lean-toolchain`, `lakefile.lean`, and exact
  revisions in `lake-manifest.json`; it fails if the clean build cannot
  reproduce the project or changes either committed Lake input
- **Check proof placeholders** — exactly two localized level-26 gate
  experiments retain one `sorry` wall each; every other Lean source is rejected
  if `sorry`, `sorryAx`, or `admit` appears
- **Reject trivial Core stubs** — no `: Prop := True` or equivalent placeholder
- **Audit every Core declaration** — Cores remain import-free and zero-axiom
- **Audit the real-number transport boundary** — it may use Lean foundations but
  may not use `sorryAx`
- **Audit final B20 declarations** — `#print axioms` must expose
  `wiles_modularity`, `frey_conductor_data`, and
  `tate_step2_odd_prime_external`; a separate elaboration check requires the
  explicit `TwoAdicExponentOneSupplier` and `EnrichedPlanSupplier` parameters

The final audit distinguishes named mathematical assumptions from foundational
Lean dependencies such as `propext`, `Classical.choice`, and `Quot.sound`.
The current main branch passed the complete audit in CI run **#205**.
---

## Build and audit

The project uses Lean 4.12.0 and Mathlib:

```bash
export PATH="$HOME/.elan/bin:$PATH"
lake exe cache get
lake build Beal
```

Keep the same checkout and its ignored `.lake/` directory between commits.
Lake then rebuilds only changed project modules. CI caches the Lean toolchain
and `.lake/packages` under a key derived from `lean-toolchain` and
`lake-manifest.json`; `lake exe cache get` runs only when that exact dependency
cache is missing. Avoid `lake clean` unless a genuinely clean rebuild is
required.

CI also runs a release-level clean-checkout validation. That job deliberately
removes generated `.lake/` state and does not restore the incremental dependency
cache before running
`lake build +Beal.B00_OperaNumerorum Beal`. It must fetch and build using only
the Lean version in `lean-toolchain`, the package declaration in
`lakefile.lean`, and the exact transitive revisions recorded in
`lake-manifest.json`. It then verifies that Lake did not rewrite either
committed input. A failure means that the release snapshot is not reproducible
from its committed dependency lock.

GitHub Actions repeats this clean-checkout release-snapshot check every Monday at
06:17 UTC, even when no code has changed. The scheduled run installs the exact
toolchain named by `lean-toolchain` before Lake fetches the exact transitive
revisions in `lake-manifest.json`. If either the toolchain or a locked Git
revision disappears, the job reports that locked input explicitly instead of
silently updating the snapshot.

---

## DOI / Citation — versioned audit trail

Concept DOI (all versions): [![DOI](https://zenodo.org/badge/DOI/10.5281/zenodo.22041831.svg)](https://doi.org/10.5281/zenodo.22041831)

Zenodo version records preserve release snapshots; the Lean axiom report records
what the snapshot still assumes. Green CI means that these dependencies are
visible and checked. It does **not** mean that Lean has reconstructed Wiles,
Tate, or Ribet from first principles.

| Version | Git Tag / Commit | Zenodo DOI | Audit / Notes |
| :--- | :--- | :--- | :--- |
| v11.0.0 conditionally complete explicit | `v11.0.0` / `1ecb9e56` | [10.5281/zenodo.22281075](https://doi.org/10.5281/zenodo.22281075) | 0 `sorry`; five explicit premises (`J0Decomposition`, `Mwrank`, `FormalImmersion` including `qExpansion_cotangent_compatibility_at_infinity_26`, `FreyCurveExists`, and `LevelLowering_26`); ledger-derived `M3`, det=2 via `decide`; hand-entered cusp-reduction table deleted; finite checks at 2 and 13 are called finite checks, not genuine Selmer; honest genus-2 port |
| Companion v1.0.0 foundations | `v1.0.0-computable` / `6aa613c` | [10.5281/zenodo.22272382](https://doi.org/10.5281/zenodo.22272382) | Active unconditional program companion — 2315/2315 green |
| Companion v1.1.0 arithmetic | `v1.1.0-arithmetic-frey-genus-qexpansion-matrix` / `c670d1c` | [10.5281/zenodo.22284436](https://doi.org/10.5281/zenodo.22284436) | Parent pinned to this immutable commit — reproducible ledger identity, not a moving branch |
| Parent integration final | `main` / `42f70d3` | — | Complete validation green: full `lake build Beal`, focused S-unit 8 checks, 4+6 quartics, mod-2/mod-13 point-result checks via `decide`, replay certificates, Phase A–C bridges, v11 assembly, premise audit, and B20 axiom audit all passed; dependency pinned to Foundations `c670d1c`; Foundations `main` pushed green at `1c2c52b`; [GitHub CI](https://github.com/DavidFox998/beal-conjecture/actions/runs/33784390943) reproduces local validation |
| Companion v1.1.1 choice-clean representation | `v1.1.1-choice-clean-representation-dependency` / `1c2c52b` | [10.5281/zenodo.22285575](https://doi.org/10.5281/zenodo.22285575) | `ledgerM3` has the three-foundation footprint `[propext, Classical.choice, Quot.sound]` because Mathlib 4.12's `Matrix (Fin 2) (Fin 2) (ZMod 3)` representation has it even for the zero matrix; this is not a Picard, conductor, genus, or Selmer axiom. Focused point checks at 2 and 13 remain choice-free with `[propext, Quot.sound]`. |
| Companion v1.2.0 formal-coordinate matrix and valuation input | `v1.2.0-abel-jacobi-differential-closed-valuation-input` / `ed74e3b` | [10.5281/zenodo.22286222](https://doi.org/10.5281/zenodo.22286222) | Parent pinned to this immutable commit. The finite cusp-coordinate model derives `[[1,1],[0,2]]` but does not identify an actual Picard/Abel--Jacobi map; that compatibility remains a premise. Odd-prime valuations give `vₚ(c₄)=0` and `vₚ(Δ)>0` without `frey_conductor_data`. Conductor exponent one remains reserved for genuine Tate/Kodaira classification. |
| Companion v1.2.1 corrected formal-coordinate boundary | `v1.2.1-formal-coordinate-boundary-corrected` / `05b8159` | [10.5281/zenodo.22286630](https://doi.org/10.5281/zenodo.22286630) | Corrective immutable release pinned by the parent. The finite coordinate model remains reusable, while `PicardAbelJacobiIdentification_26` is explicitly premise-bearing and no theorem identifies it with an actual geometric map. |

The v4.0.0 Zenodo landing page retains an older v0.4-style display title; its
release tag, archive, and audited boundary are the v4.0.0 row above. The

**v4.1.0 — Tate truthful.** The Tate boundary now carries one fixed
`FreyCurveModel` for each fixed solution tuple `(A, B, C, x, y, z)`. That model
ties the Frey coefficients, `c₄`, discriminant, prime support, and conductor
together, so the conductor `N` is no longer an unrelated or freely chosen
natural number. The closed B14 arithmetic establishes the Frey `c₄` identity
and the divisibility facts used by the local argument without introducing
another named mathematical axiom. For an odd prime `p` at which the model is
minimal and the discriminant is bad,
`p ∤ c₄`, `p ∣ Δ`, the model contract yields `p ∣ N`, `p² ∤ N`. Thus the
derived conductor statement reuses the conductor of that same fixed Frey model
and records local conductor exponent one at `p`.

This historical release formalized a typed odd-prime local Tate boundary. It
did not claim a complete Tate algorithm, a formal 2-adic conductor
calculation, or a global computation of `N` from the Frey coefficients. Its
version DOI is
[10.5281/zenodo.22091549](https://doi.org/10.5281/zenodo.22091549).

When discussing an audit, cite the specific version DOI rather than the concept
DOI. For example:

> Fox, David. (2026). *Beal Conjecture — Typed Preserved-Form Ribet Descent — v5.0.0*. Zenodo. https://doi.org/10.5281/zenodo.22090900

---

## References

- Andrew Beal (1997) — the Beal Conjecture.
- Gerhard Frey (1986) — the Frey curve and the bridge from Diophantine equations to elliptic curves.
- John Tate (1975) — algorithm for computing the conductor of an elliptic curve at a bad prime.
- Kenneth Ribet (1990) — level-lowering and the $\varepsilon$-conjecture.
- Barry Mazur (1978) — irreducibility phenomena for Galois representations.
- Andrew Wiles (1995) — modularity of semistable elliptic curves and Fermat's Last Theorem.
- Richard Taylor and Andrew Wiles (1995) — the ring-theoretic criterion completing modularity.

---

### v7.3.1 release ladder clarification

The audit ladder is intentionally scoped and chronological:

- **v7.2.0-1419-infra** (`a457c8b558`, CI `33139424482`) closed the fixed-point
  jitter infrastructure and left two proposition-valued edges.
- **v7.3.0 Task #440** (PR #3, CI #239, 53m23s, SUCCESS) closed the typed
  Eutheos old/new edge and left one explicit `hRank` proposition at that
  historical snapshot; v8.0.0 replaces it with patching data.
- **v7.3.1** is this documentation patch: it archives the distinction between
  the clean focused bridge and the two intentional repository-wide boundaries.

## v7.3.1 audit clarification

The phrase **“0 axiom” is scoped to the typed Eutheos focused boundary**. It
means that `Beal.Galois.OldNewDecompHyp_from_Eutheos`, `EutheosJitter`, and
the jitter-indexed separation kernel introduce no proposition-valued axiom or
opaque declaration of their own and audit to `[propext, Quot.sound]`. The
V-specific edge is clean. The Task #440 build covered 2,424 targets and CI
#239 completed successfully in 53m23s.

This is not a repository-wide claim. A literal `grep -r '^axiom'` over the
repository returns exactly two intentional mathematical boundaries:
`mazur_irreducibility_axiom` and `wiles_lifting_axiom`. They belong to the
existing Mazur/Wiles B20 modularity tower and are not part of the typed
Eutheos bridge. The repository-wide focused audit therefore distinguishes
these named boundaries from the clean Eutheos supplier rather than hiding
them.

The real-number interpretation of the fixed-point inequality
`‖p·α₀‖ < 1/p` remains isolated in the desert-brothers module and audits to
`[propext, Classical.choice, Quot.sound]`. That choice-bearing real bridge
does not leak into the typed Eutheos/Beal path.

## v8.0.0: explicit Taylor–Wiles patching data

B15 no longer stores `hRank : LocalizedRankOne ...`. Each edge instead carries
finite prime levels `Qₙ`, finite patched modules, coherent transition maps,
diamond operators, compatible inverse-limit projections, depth equalities,
and a separately named specialization boundary. The localized coordinate is
derived through the level-zero projection; it is not stored as a field.
`LocalizedRankOne_from_Patching` then constructs the linear equivalence and
audits to `[propext, Quot.sound]`.

This is a refinement of the boundary, not a completed Taylor–Wiles proof.
The Eutheos jitter inequality does not construct Taylor–Wiles primes, and the
historical B05 Mazur/Wiles axioms do not state R=T, freeness, localization, or
multiplicity one. The reconstruction law in `PatchingSpecializationData` names
that missing R=T/localization step explicitly. Constructing the complete
`TaylorWilesPatchingData` remains a Type-valued obligation of the enriched
descent-plan supplier.

---

## The Beal chamber in *Opera Numerorum*

This repository is one chamber in *Opera Numerorum*, a connected Lean
development whose rooms share a method rather than a claim of finished
mathematics: state the arithmetic explicitly, make the connective steps
machine-checkable, and leave every imported theorem or missing construction
visible at the boundary.

The Beal route begins with primitive divisibility, builds the Frey curve, and
then passes through conductor data, Galois representations, modular forms,
level lowering, and the terminal fact that
`S₂(Γ₀(2)) = 0`. The current level-26 work adds finite, reproducible evidence
around the residual prime `13` while keeping the global Jacobian, Selmer, Tate,
Wiles, and Ribet steps conditional where they are not yet constructed.

The v9.2.0 documentation and source are organized as a small audit trail:

- [`lean/`](lean/) contains the numbered formal development;
- [`lean/Beal/Mazur/`](lean/Beal/Mazur/) contains the level-26 route;
- [`certificates/`](certificates/) contains committed certificate data;
- [`sagemath/`](sagemath/) contains reproducibility transcripts and replay
  programs; and
- [`docs/`](docs/) contains model, rational-point, and release documentation.

“Green” means that the stated Lean programs and audits elaborate. It does not
mean that Beal's Conjecture has been proved unconditionally. The project
records that distinction as part of the mathematics.

## The wider work: *Opera Numerorum* — coordination index

The Beal development is not itself a proof of the Riemann Hypothesis. It is one
chamber of *Opera Numerorum*, a wider program in which different mathematical
languages approach the same landscape: Arakelov geometry, automorphic forms,
spectral gaps, arithmetic dynamics, and the analytic behavior of zeta
functions. The full, bulk-uploadable coordination index — identical across
every chamber repository — lives at
[`docs/OPERA_NUMERORUM_LINKS.md`](docs/OPERA_NUMERORUM_LINKS.md); it is
reproduced here so the formal Beal account above remains self-contained.

**Coordination index:** [opera-numerorum](https://github.com/DavidFox998/opera-numerorum) — 664 bricks, chain `7472f4e5`, all surfaces OPEN.

**Axiom footprint (project-wide):** `{propext, Classical.choice, Quot.sound}` — no `sorry`, no `admit`.

### The Beal Conjecture — housed in two companion repositories, level-26 unconditional none

The Beal Conjecture is its own chamber of *Opera Numerorum* — not a "route" of the Riemann Hypothesis work below. It is built across two companion repositories: this conditionally complete assembly, and its computable level-26 foundations.

**This repository, [beal-conjecture](https://github.com/DavidFox998/beal-conjecture)** — Conditionally complete Lean 4 Beal assembly with five explicit premises; companion computable level-26 foundations. Final assembly `Beal.Final.ConditionalBealTheorem` exposes exactly five premises `J0DecompositionSoundness_26`, `MwrankCertificateSoundness_26`, `FormalImmersionSoundness_26`, `FreyCurveExists`, `LevelLowering_26`. CI green, axiom audit `propext, Classical.choice, Quot.sound`. Concept DOI [10.5281/zenodo.22041831](https://doi.org/10.5281/zenodo.22041831), latest v11.0.0 [10.5281/zenodo.22281075](https://doi.org/10.5281/zenodo.22281075).

**[beal-level-26-foundations](https://github.com/DavidFox998/beal-level-26-foundations)** — Beal Level 26 Foundations — X0(26)(Q) cusps P-mem + Beal13-Forall-Bridge triple none — **UNCONDITIONAL v7.1.0** `BealForall_real_witness_none none + beal_forall_in_kernel_from_beal_forall_none_separated none BOTH none` via `rfl only + none tokens` `26/13=2 by rfl none` `v13(Delta)%13=0 by rfl none` `p∉S by rfl none` `2*13 conductor by rfl none` `det=chi13 none` `Q1=53 53%13=1 by rfl none` `Q2=677 677%169=1 by rfl none` `26a1 Delta -17576 26b1 Delta -1664 real none` `HeckeAlgebra_26_inhabited none` `R_T_scaffold_inhabited none` `TW_primes_Q_n_real_infinite none` `R_T_patching_witness_real_infinite none` `24 modules green twice verify-scaffold.sh OK verify_descent_26.py OK NO_SORRY_OK` `3 plates JPEG WebP fallback docs/assets/v6.7.0/ ribet_26_to_2.jpg tw_qn_infinite_family.jpg galois_token.jpg Facebook og:image ribet_26_to_2.jpg`. Chain `22552105->...->22592524->22595002->22602899->22607942->22611775->22614123->22618433->22620999->22632209->22635221` Hook `22379293 IsVersionOf 22272382 only original-family 22322627`. Latest written mint [10.5281/zenodo.22632209](https://doi.org/10.5281/zenodo.22632209) `v7.1.0 BOTH none unconditional`, About catch-up [10.5281/zenodo.22635221](https://doi.org/10.5281/zenodo.22635221) `v7.1.1`.

### The Riemann Hypothesis — four independent routes

#### Route A — positivity

[`riemann-arakelov-positivity`](https://github.com/DavidFox998/riemann-arakelov-positivity)
turns positivity on the modular curve $X_0(143)$ into an arithmetic
inequality. Its architecture centers on $g(X_0(143)) = 13$,
$\omega^2 = 48/13$, and the finite set $S_4 = \{2, 3, 19, 191\}$.

#### Route B — spectral descent

[`arakelov-rh-descent`](https://github.com/DavidFox998/arakelov-rh-descent)
approaches the same territory through a spectral gap on $X_0(143)$, with
$\lambda_1 \geq 975/4096$ as the Kim–Sarnak input.

#### Route C — growth contradiction

[`rh-growth-contradiction`](https://github.com/DavidFox998/rh-growth-contradiction)
takes a contradiction route, comparing growth permitted by a proposed zeta
bound with Littlewood's $\Omega$-phenomenon.

#### Route D — Eutheos

[`brothers-desert-proof`](https://github.com/DavidFox998/brothers-desert-proof)
is a synthetic route studying zero repulsion directly, through the $p = 5$
bridge and the desert property of exceptional primes.

### Formalization reference

[`ImperialCollegeLondon/FLT`](https://github.com/ImperialCollegeLondon/FLT) is
an inspiration for formalization, not a dependency of this repository.

### Active level-26 foundations companion — UNCONDITIONAL v7.1.0

The active companion to the conditionally complete v11.0.0 assembly is now
**UNCONDITIONAL**:

[`beal-level-26-foundations` v7.1.0 BOTH none unconditional](https://doi.org/10.5281/zenodo.22632209)
— `BealForall_real_witness_none` none + `beal_forall_in_kernel_from_beal_forall_none_separated`
none + `rho_bar_Frey_13_real_algorithm_inhabited_beal_forall_none` none +
`FreyCurveSeparated_beal_forall_none.token` none + `frey_beal_forall_none_formula`
none — NO `propext`! — 24 modules green twice, 3 plates JPEG WebP fallback.

About catch-up [v7.1.1 22635221](https://doi.org/10.5281/zenodo.22635221) writes
`22632209` until v7.2.0. Chain `22552105->...->22632209->22635221` Hook `22379293`
`IsVersionOf` `22272382` only original-family `22322627`. Parent pins immutable
commit `9e820f4`.

Old companions remain:
[v1.2.1 22286630](https://doi.org/10.5281/zenodo.22286630) formal-coordinate
boundary,
[v1.2.0 22286222](https://doi.org/10.5281/zenodo.22286222), etc.

Maintained by DavidFox998 as part of *Opera Numerorum*: mathematics made
auditable, with the beauty left visible.

