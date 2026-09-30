> **Root v33 (documentation, not a CI guarantee):** `Beal/Beal.General/` checks `CompatChart2t` (191 lines), `CompatChartXt`/`CompatChartYt` (105 each), six polynomial-to-abstract restrictions, and `SpecialFibreGluing` (167 lines); product overlaps are abstract. See `Beal/RELEASE_NOTES_v33.md`.

[![Matveev-Beal CI](https://github.com/DavidFox998/beal-level-26-foundations/actions/workflows/main.yml/badge.svg)](https://github.com/DavidFox998/beal-level-26-foundations/actions/workflows/main.yml)
[![Concept DOI](https://zenodo.org/badge/DOI/10.5281/zenodo.22379293.svg)](https://doi.org/10.5281/zenodo.22379293)

# .github/

GitHub Actions for
[DavidFox998/beal-level-26-foundations](https://github.com/DavidFox998/beal-level-26-foundations)
(display title: foundations-level-26 Matveev–Beal). The GitHub slug is
unchanged so concept DOI `10.5281/zenodo.22379293` stays attached.
Monorepo `beal-conjecture` stays `beal-conjecture`.

[`workflows/main.yml`](workflows/main.yml) runs on pushes and pull
requests to **`main`**, and on `workflow_dispatch`:

1. `lake exe cache get`
2. `lake build BealMatveevBeal` — default target; 0 `sorry`
3. `lake build BealMatveevBealV25Rank3` — separate Rank-3 B0/C
   cutoff nogo target; not in the default glob
4. `lake build BealMatveevBealV25B0Search` — separate `B<1000`
   foldl shards of 100 plus `LLLTargetB8` (`C=10⁴⁸` `L'` and
   3-dim `L3` with `C₃=10³⁰`, `λ₁=1`; `|Λ|≥B⁻⁸` stays `def Prop`)
   and `Gap3B0Million` (10k-shard foldl wiring; `allShardsTrue_eq_true`
   stays `def Prop`; shards are not `native_decide`'d) plus
   `LLLTargetB8_C1_lower_bound` (`C1'≤8` impossible on a solution;
   `LLL_cannot_reach_B8` stays `def Prop`) plus
   `DarmonMerelFrey4413` (displayed Frey `(4,4,13)`;
   `level_32_no_newform` stays `def Prop`) plus
   `Level32Table` (LMFDB `32a1` q-exp by `𝔽_p` counts;
   `l=3,5` match, `p=29` mismatches good reduction;
   `level_32_no_newform_for_Frey_gap3` stays `def Prop`) plus
   `Level928Table` (`29 ∣ ABC` split, displayed residual `928`;
   `level_928_no_match_bad_29` stays `def Prop`) plus
   `Ribet29C_Lowering` (`v₂₉(Δ)=26 v₂₉(C)`; `a₇=−4` on residue
   `(2,3)`; `ribet_29C_lowers_to_32` stays `def Prop`) plus
   `Ribet29C_Residue16` (`a₁₁=0` on `(1,6)` lifts; 7+11 sieve
   stays `def Prop`) plus
   `Ribet29C_Residue16_L23` (`a₂₃=0` not `−6`; `(1,6)` mixed at
   `l=23`; `residue_1_6_eliminated_at_23` stays `def Prop`) plus
   `MazurIrreducibility13` (`29 ∣ j.den` on `29 ∣ C`; Mazur /
   Ribet / image stay `def Prop`; no new axiom) plus
   `Inertia29Unramified` (`v₂₉(c₄)=0`; Tate/Ribet inertia stay
   `def Prop`) plus
   `SerreImage13` (`32a1` `j=1728`; CM image / Serre stay
   `def Prop`; no new axiom) plus
   `MazurIrreducibilityFull` / `TateGalois` / `SerreImageFull`
   (four Mathlib gaps stay `def Prop`; no new axiom) plus
   `Mazur_X0_13_RationalPoints` (Fricke `j`-map; Mazur stays
   `def Prop`) plus `Tate_I29_Inertia` (truncated `j(q)`;
   Tate stays `def Prop`) plus `Ribet_Level32` (`928/29=32`;
   abstract Ribet / Frey-needs-Wiles stay `def Prop`) plus
   `Serre_Large_vs_CM_Small` (Galois stays `def Prop`) plus
   `TwoDescent_26a1_26` (relocated `|Sel₂|=1` / Sage rank
   display `0`; `1=1→0=0` is not Jacobian rank 0) plus
   `X0_26_Full2Torsion` (Frey cubic split inhabited; Kenku /
   Mazur via `X₀(26)` stay `def Prop`) plus
   `BSD_MordellWeil` (Mathlib `Point` `add_comm`;
   `IsRankZero` as Subsingleton is refuted on `26a1`/`26b1`) plus
   `J0_26_BSD_26a1_26b1` (`26a1`/`26b1` `Δ` and `L/Ω=1/3,1/7`;
   Kolyvagin stays `def Prop`);
   full `B ≤ B0` stays `def Prop`
5. `bash scripts/verify-matveev-beal.sh` — AMS / Math. Comp. referee
   surface: 0 `sorry`, `matveev_gap3_lower` is the B≤10^6 integer-gap
   close, `C1_floor=143186215390`, `B0_nat=1000000`, `gap3_A_bounds` and
   `matveev_product_bound_of_B_le_B0` present, concept DOI and slug
   on `CITATION.cff`

It does **not** run `lake build BealLevel26FoundationsScaffold` or
`BealLevel26FoundationsReal` (those targets left with the relocated
v24.4.0 kernel in `beal-conjecture`). It does **not** run
`scripts/verify-scaffold.sh` (historical X0(26) checklist).

A green run is a Lean 4.12 / Mathlib 4.12 build of the B≤10^6
integer-gap Matveev lower bound plus the elementary CF lemmas in
`MatveevLLL.lean`. It is not a minted `v25.0.0` tag, not
interpolation, and not an unconditional `∀ B ¬∃ A` (`hLLL` /
`bugeaud_LLL_reduction_proof` stay `def Prop`).
