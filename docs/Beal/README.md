> **Root v33 (separate from these notes):** `Beal/Beal.General/` checks `CompatChart2t` (191 lines), `CompatChartXt`/`CompatChartYt` (105 each), six polynomial-to-abstract restrictions, and `SpecialFibreGluing` (167 lines); product overlaps are abstract. See `Beal/RELEASE_NOTES_v33.md`.

# docs/Beal/

Notes for the Matveev–Beal Lean modules in this repository.
Each file names the root Lean module, the locked numerals
`C1_floor = 143186215390` and `B0_nat = 1000000`, and what
stays an uninhabited `def Prop`.

Current Matveev–Beal track:

- [`BealMatveevThm14.md`](BealMatveevThm14.md) — integer-gap `B≤B0`
- [`BealMatveevLLL.md`](BealMatveevLLL.md) — CF lemmas, lattice, SVT
- [`BealMatveevBugeaud.md`](BealMatveevBugeaud.md) — displayed and uniform-`C` LLL no-go
- [`BealMatveevInterpolation.md`](BealMatveevInterpolation.md) — Δ, Schwarz, jet invertibility
- [`BealWuestholzSubgroup.md`](BealWuestholzSubgroup.md) — no uniform `c`
- [`BealWuestholzProduct.md`](BealWuestholzProduct.md) — full-order product packaging
- [`BealMatveevThreeLogs.md`](BealMatveevThreeLogs.md) — log-method `C1`-vs-ratio no-go
- [`BealKraus.md`](BealKraus.md) — displayed Frey / Kraus valuation no-go
- [`BealKrausZsig.md`](BealKrausZsig.md) — Gaussian / Thue argument-form no-go
- [`BealCatalanZsig.md`](BealCatalanZsig.md) — Catalan / Zsigmondy no-go
- [`BealDarmonMerel.md`](BealDarmonMerel.md) — Darmon–Merel / Ribet residual-level no-go
- [`BealDarmonMerel44p.md`](BealDarmonMerel44p.md) — Darmon–Merel signature (4,4,p) / Ribet-to-32 no-go
- [`BealFLT13.md`](BealFLT13.md) — FLT 13 / Darmon–Merel 44p / 3-adic descent no-go
- [`BealGenuineV25.md`](BealGenuineV25.md) — Darmon–Merel (4,4,13) + 3-adic vacuous-close no-go (`v24-v24x-final-genuine-v25-nogo` at `2b4ee3b`)
- [`BealTrueV25.md`](BealTrueV25.md) — axiom-relative `baker_bound_gap3_true` (Darmon–Merel axiom; not the minted v25 tag)
- [`BealUnconditionalV25.md`](BealUnconditionalV25.md) — `hGen` + `hLLL` no-go; unconditional mint still waits
- [`BealGap1.md`](BealGap1.md) — gap-1 `A⁴+B⁴=(B+1)¹³` no-go (`v24-v24x-final-gap1-nogo`); coprime from the start; `3∣B` compatible
- [`BealGap2.md`](BealGap2.md) — gap-2 `A⁴+B⁴=(B+2)¹³` no-go (`v24-v24x-final-gap2-nogo`); `B` odd `A` even; `3∣B` impossible like `f1cb039`
- [`BealGap4.md`](BealGap4.md) — gap-4 `A⁴+B⁴=(B+4)¹³` no-go (`v24-v24x-final-gap4-nogo`); `B` odd `A` even; `3∣B` compatible like gap-1; `5∣B` impossible
- [`BealGap5.md`](BealGap5.md) — gap-5 `A⁴+B⁴=(B+5)¹³` no-go (`v24-v24x-final-gap5-nogo`); `B` even `A` odd; `3∣B` impossible like `f1cb039`; `5∣B` impossible by 5-descent
- [`BealGap6.md`](BealGap6.md) — gap-6 `A⁴+B⁴=(B+6)¹³` no-go (`v24-v24x-final-gap6-nogo`); `B` odd `A` even; even `B` dies as `6` or `14` mod 16; `3∣B` impossible by 3-descent (`C₁=B₁+2`); `5∣B` compatible
- [`BealGap7.md`](BealGap7.md) — gap-7 `A⁴+B⁴=(B+7)¹³` no-go (`v24-v24x-final-gap7-nogo`); `B` even `A` odd; `3∣B` compatible; `5∣B` impossible (`C≡2`); `7∣B` impossible by 7-descent
- [`BealGap8.md`](BealGap8.md) — gap-8 `A⁴+B⁴=(B+8)¹³` no-go (`v24-v24x-final-gap8-nogo`); `B` odd `A` even; even `B` dies after nine `/2` residue `8`; `3∣B` impossible (`C≡2`); `5∣B` impossible (`C≡3`); `7∣B` compatible
- [`BealGap9.md`](BealGap9.md) — gap-9 `A⁴+B⁴=(B+9)¹³` no-go (`v24-v24x-final-gap9-nogo`); `B` even `A` odd; `3∣B` impossible by 3-descent (`C₁=B₁+3`); `5∣B` impossible (`C≡4`); `7∣B` compatible (`A⁴≡2`)
- [`BealGap10.md`](BealGap10.md) — gap-10 `A⁴+B⁴=(B+10)¹³` no-go (`v24-v24x-final-gap10-nogo`); `A` even; even `B` last-step leftover `B₃≡2∨4`; `3∣B` compatible; `5∣B` impossible by 5-descent (`C₁=B₁+2`); `7∣B` impossible (`C≡3`)
- [`BealGap11.md`](BealGap11.md) — gap-11 `A⁴+B⁴=(B+11)¹³` no-go (`v24-v24x-final-gap11-nogo`); `B` even `A` odd; `3∣B` impossible (`C≡2`); `11∣B` impossible by 11-descent (`C₁=B₁+1`); `5∣B` compatible (`A⁴≡1`); `7∣B` compatible (`A⁴≡4`)
- [`BealGap12.md`](BealGap12.md) — gap-12 `A⁴+B⁴=(B+12)¹³` no-go (`v24-v24x-final-gap12-nogo`); `B` odd `A` even; even `B` dies after six `/2` residue `12`; `3∣B` impossible by 3-descent (`C₁=B₁+4`); `5∣B` impossible (`C≡2`); `7∣B` impossible (`C≡5`)
- [`BealGap13.md`](BealGap13.md) — gap-13 `A⁴+B⁴=(B+13)¹³` no-go (`v24-v24x-final-gap13-nogo`); `B` even `A` odd; `3∣B` compatible (`A⁴≡1`); `5∣B` impossible (`C≡3`); `7∣B` impossible (`C≡6`); `11∣B` impossible (`C¹³≡8`); `13∣B` impossible by 13-descent (`C₁=B₁+1`)
- [`BealGap14.md`](BealGap14.md) — gap-14 `A⁴+B⁴=(B+14)¹³` no-go (`v24-v24x-final-gap14-nogo`); `B` odd `A` even; even `B` dies after three `/2` last `2(4B₃+7)¹³` residue `6` or `14`; `3∣B` impossible (`C≡2`); `5∣B` impossible (`C≡4`); `7∣B` impossible by 7-descent (`C₁=B₁+2`)
- [`BealGap15.md`](BealGap15.md) — gap-15 `A⁴+B⁴=(B+15)¹³` no-go (`v24-v24x-final-gap15-nogo`); `B` even `A` odd; `3∣B` impossible by 3-descent (`C₁=B₁+5≡2`); `5∣B` impossible by 5-descent (`C₁=B₁+3≡3`); `7∣B` compatible (`C≡1 A⁴≡1`)
- [`BealGapK.md`](BealGapK.md) — generic `A⁴+B⁴=(B+k)¹³` (`v24-v24x-final-gapK-generic-nogo`); odd `k` ⇒ `B` even `A` odd; even `k` ⇒ `A` even only; not `∀k ¬sol`
- [`EffectiveLevelLoweringPAdicLinearForms_A4_B4_C13_B0_1e6.md`](EffectiveLevelLoweringPAdicLinearForms_A4_B4_C13_B0_1e6.md) — GapK wrappers + conditional `C<100` when `A,B≤B0` (`v24-v24x-final-effective-padic-nogo`); `baker_bound_B0_1e6` / `hGen_padic` / `hLLL_padic` stay `def Prop`; v25 not minted
- [`BugeaudLaurent.md`](BugeaudLaurent.md) — Mathlib 4.12 p-adic / modular gap (`v24-v24x-final-bugeaud-laurent-nogo`); 2-adic valuation compatible on odd `k`; no Iwasawa `log_p` / Bugeaud–Laurent 1996 / p-adic LLL; v25 not minted
- [`PAdicLLL.md`](PAdicLLL.md) — `PadicInt` alias; `¬ A ≤ B+10` on gap solutions with `B≥2`; floor lattice `b1=(1,0)` has length `1 < B0`; unbounded `|uα+v|>exp(−B0)` fails by Dirichlet; `p_adic_LLL_reduction` / `LLL_reduces_bound_to_B0` / `LLL_reduces_bound_to_B0_theorem` stay `def Prop`; v25 not minted
- [`PAdicLLL_ZeroAxiom.md`](PAdicLLL_ZeroAxiom.md) — Nat/Int form always has kernel `(C1,-a)`; `Nat.sqrt C1 < B0`; `LLL_reduces_bound_to_B0_zero_axiom` stays `def Prop`; v25 not minted
- [`BealMatveevBealV25Rank3.md`](BealMatveevBealV25Rank3.md) — separate Lake target wrapping rank-3 `‖v‖<32` and `|Λ|<1/B`; `C_LLL_v25=C1_floor`; `B0/C>1/B` is true and `|Λ|≥B0/C` fails on a solution (`v24-v24x-final-rank3-b0-div-c-nogo`; prior tag `v24-v24x-final-rank3-shape-nogo` stays at `c1d173e`); not in default `BealMatveevBeal` globs; no `MatveevThm14General` import; `LLL_reduces_bound_to_B0` / `hGen` / `hLLL` stay `def Prop`; v25 not minted
- [`BealMatveevBealV25B0Search.md`](BealMatveevBealV25B0Search.md) — separate Lake target: mod-16 + floor fourth-root checker; `check_range` is foldl; `B<1000` is ten shards of 100; `|Λ| ≤ 2/B⁹` on `B≥100`; `∀ B ≤ B0` and `|Λ| ≥ B⁻⁸` stay `def Prop`; `LLLTargetB8` lattices `C=10⁴⁸` `L'` and 3-dim `L3` `C₃=10³⁰` `λ₁=1`; need `C1'≤8` vs typical `30`–`50`; implication is not an inhabitant; `Gap3B0Million` wires 10k foldl shards as an implication (`allShardsTrue_eq_true` stays `def Prop`); `LLLTargetB8_C1_lower_bound` proves `C1'≤8` impossible on a solution (`2/B⁹ < 1/B⁸`); `LLL_cannot_reach_B8` stays `def Prop`; `DarmonMerelFrey4413` displayed Frey `(4,4,13)`; `level_32_no_newform` stays `def Prop`; `Level32Table` is LMFDB `32a1` q-exp by `𝔽_p` counts (`l=3,5` match, `p=29` mismatches good reduction; empty-table claim stays `def Prop`); `Level928Table` splits `29 ∣ ABC` and records displayed residual `928` (`level_928_no_match_bad_29` stays `def Prop`); `Ribet29C_Lowering` re-exports `v₂₉(Δ)=26 v₂₉(C)` and inhabits `a₇=−4` on residue `(2,3)` (`ribet_29C_lowers_to_32` / full `29 ∣ C` stay `def Prop`); `Ribet29C_Residue16` shows `l=11` is mixed on `(1,6)` (`full_29C_eliminated` stays `def Prop`); `Ribet29C_Residue16_L23` shows `l=23` is mixed (`a₂₃=0` not `−6`; `residue_1_6_eliminated_at_23` stays `def Prop`); `MazurIrreducibility13` inhabits `29 ∣ j.den` on `29 ∣ C` (Mazur / Ribet / image stay `def Prop`; see root `ARCHIVE_4413.md`); `Inertia29Unramified` inhabits `v₂₉(c₄)=0` (Tate / Ribet inertia stay `def Prop`); `SerreImage13` inhabits `32a1` `j=1728` (CM image / Serre stay `def Prop`); `MazurIrreducibilityFull` / `TateGalois` / `SerreImageFull` name the four Mathlib gaps as `def Prop`; `Mazur_X0_13_RationalPoints` inhabits the Fricke `j`-map (`f` roots `7,9` mod `29`; Mazur stays `def Prop`); `Tate_I29_Inertia` / `Ribet_Level32` / `Serre_Large_vs_CM_Small` keep Galois as `def Prop`; `X0_26_Full2Torsion` inhabits the Frey cubic split (Kenku / Mazur via `X₀(26)` stay `def Prop`); `TwoDescent_26a1_26` relocates displayed `|Sel₂|=1` / Sage rank-display `0` (`1=1→0=0` is not Jacobian rank 0); `BSD_MordellWeil` re-exports Mathlib `Point` `add_comm` (`IsRankZero` as Subsingleton is refuted on `26a1`/`26b1`); generator refuses `Beal/Matveev/`; v25 not minted
- [`BealBakerBoundGap3.md`](BealBakerBoundGap3.md) — kernel `baker_bound_gap3` stays a `def Prop`; Mathlib-only close remains open

Older Frey / Zsigmondy / modular-elimination notes in this
folder are historical kernel documentation. They do not inhabit
`baker_bound_gap3`. Concept DOI `10.5281/zenodo.22379293`.
