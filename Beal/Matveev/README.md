# Beal/Matveev/

> **Root-tree v33 (separate from these stubs):** `Beal/Beal.General/` checks
> `CompatChart2t` (191 lines), `CompatChartXt` and `CompatChartYt` (105 each),
> six polynomial-to-abstract restrictions, and `SpecialFibreGluing` (167 lines).
> Product overlaps remain abstract pullbacks. See `Beal/RELEASE_NOTES_v33.md`.

LEAN_PATH stubs. Lake puts the relocated kernel's `Beal/` prefix
first, so sibling `import Beal.Matveev.*` does not resolve to this
tree. Theorems live in the matching **root** modules:

| Stub | Root module |
|---|---|
| `MatveevThm14General.lean` | (this file is the package entry; not a stub) |
| `MatveevThm14Proof.lean` | `MatveevThm14Proof.lean` |
| `MatveevLLL.lean` | `MatveevLLL.lean` |
| `MatveevInterpolation.lean` | `MatveevInterpolation.lean` |
| `MatveevBugeaud.lean` | `MatveevBugeaud.lean` |
| `WuestholzSubgroup.lean` | `WuestholzSubgroup.lean` |
| `WuestholzProduct.lean` | `WuestholzProduct.lean` |
| `MatveevThreeLogs.lean` | `MatveevThreeLogs.lean` |
| `BealKraus.lean` | `BealKraus.lean` |
| `BealKrausZsig.lean` | `BealKrausZsig.lean` |
| `BealCatalanZsig.lean` | `BealCatalanZsig.lean` |
| `BealDarmonMerel.lean` | `BealDarmonMerel.lean` |
| `BealDarmonMerel44p.lean` | `BealDarmonMerel44p.lean` |
| `BealFLT13.lean` | `BealFLT13.lean` |
| `BealGenuineV25.lean` | `BealGenuineV25.lean` |
| `BealTrueV25.lean` | `BealTrueV25.lean` |
| `BealUnconditionalV25.lean` | `BealUnconditionalV25.lean` |
| `BealGap1.lean` | `BealGap1.lean` |
| `BealGap2.lean` | `BealGap2.lean` |
| `BealGap4.lean` | `BealGap4.lean` |
| `BealGap5.lean` | `BealGap5.lean` |
| `BealGap6.lean` | `BealGap6.lean` |
| `BealGap7.lean` | `BealGap7.lean` |
| `BealGap8.lean` | `BealGap8.lean` |
| `BealGap9.lean` | `BealGap9.lean` |
| `BealGap10.lean` | `BealGap10.lean` |
| `BealGap11.lean` | `BealGap11.lean` |
| `BealGap12.lean` | `BealGap12.lean` |
| `BealGap13.lean` | `BealGap13.lean` |
| `BealGap14.lean` | `BealGap14.lean` |
| `BealGap15.lean` | `BealGap15.lean` |
| `BealGapK.lean` | `BealGapK.lean` |
| `EffectiveLevelLoweringPAdicLinearForms_A4_B4_C13_B0_1e6.lean` | `EffectiveLevelLoweringPAdicLinearForms_A4_B4_C13_B0_1e6.lean` |
| `BugeaudLaurent.lean` | `BugeaudLaurent.lean` |
| `PAdicLLL.lean` | `PAdicLLL.lean` |
| `PAdicLLL_ZeroAxiom.lean` | `PAdicLLL_ZeroAxiom.lean` |

Do **not** add `Beal/Matveev/BealMatveevBealV25Rank3.lean` or
`Beal/Matveev/BealMatveevBealV25B0Search.lean`:
`.submodules Beal.Matveev` would pull them into the default
`BealMatveevBeal` glob. Rank-3 B0/C cutoff wrappers live only in the
root module `BealMatveevBealV25Rank3.lean`
(`lake build BealMatveevBealV25Rank3`). `C_LLL_v25 = C1_floor`;
`B0/C > 1/B` is true; `|Λ| ≥ B0/C` fails on a solution.
The `B ≤ B0` search slice lives in
`BealMatveevBealV25B0Search.lean` (`B<1000` closed as
ten foldl shards of 100; `∀ B ≤ B0` stays `def Prop`).
The LLL `|Λ| ≥ B⁻⁸` target lives in root `LLLTargetB8.lean`
(same Lake target; do **not** add `Beal/Matveev/LLLTargetB8.lean`).
Root `Gap3B0Million.lean` is the foldl wiring for 10k shards of
100: if `allShardsTrue`, then no gap-3 solution with `B < B0`.
`allShardsTrue_eq_true` stays `def Prop`. Inclusive `B ≤ B0`
still needs `check_B B0`. Do **not** add
`Beal/Matveev/Gap3Shards/` or `Beal/Matveev/Gap3_B_le_B0.lean`.
`scripts/gen_gap3_shards.py` refuses those paths; generated
shards are not committed (`(B+3)¹³ ≈ 10⁷⁸` at `B ≈ 10⁶`).
Phase-lift lattices on `phase-lll-lift-b8`: old `L` with
`b1=(1,0)` still has `λ₁=1`. `L'` with `C=10⁴⁸`,
`b1'=(C, ⌊C log(B+3)⌋)`, `b2'=(0,C)`, `det=C²`, `λ₁=C`.
3-dim `L3` with `C₃=10³⁰` has `det=C₃` and `λ₁=1` (not
`C₃^{1/3}`). Need `C1' ≤ 8` for `|Λ| ≥ B⁻⁸`; typical
Bugeaud–Laurent `30`–`50` is still `> 8`. `|Λ| ≥ B⁻⁸` stays
`def Prop`. Root `LLLTargetB8_C1_lower_bound.lean` proves
`C1' ≤ 8` is impossible **on a solution** (`2/B⁹ < 1/B⁸`);
`¬ LLL_reduces_C1_to_lt_nine` stays `def Prop` (needs a
`B ≥ B0` witness). Do **not** add
`Beal/Matveev/LLLTargetB8_C1_lower_bound.lean`.
Root `DarmonMerelFrey4413.lean` is the displayed Frey curve
for gap-3 signature `(4,4,13)`; Ribet-to-32 and
`level_32_no_newform` stay `def Prop`. Do **not** add
`Beal/Matveev/DarmonMerelFrey4413.lean`.
Root `Level32Table.lean` records LMFDB `32a1` (`a₃=0`, `a₅=−2`,
`a₂₉=−10`) by `𝔽_p` point counts; `l=3,5` match so they do not
eliminate, and `level_32_no_newform_for_Frey_gap3` stays
`def Prop`. Do **not** add `Beal/Matveev/Level32Table.lean`.
Root `Level928Table.lean` splits `29 ∣ ABC`: at most one of `A,B,C`;
`13 ∣ v₂₉(Δ)` when `29 ∣ C`; displayed extra factor `928` when
`29 ∣ AB`. `level_928_no_match_bad_29` stays `def Prop` (no
77-row table). Do **not** add `Beal/Matveev/Level928Table.lean`.
Root `Ribet29C_Lowering.lean` re-exports `v₂₉(Δ)=26 v₂₉(C)` and
inhabits `a₇=−4 ≠ 0` on residue `(2,3) mod 7`. Ribet-to-32 and
the full `29 ∣ C` branch stay `def Prop`. Do **not** add
`Beal/Matveev/Ribet29C_Lowering.lean`.
Root `Ribet29C_Residue16.lean` checks `l = 11` on residue
`(1,6) (mod 7)`: `a₁₁(32a1)=0`, the class is mixed at `11`,
and `full_29C_eliminated` stays `def Prop`. Do **not** add
`Beal/Matveev/Ribet29C_Residue16.lean`.
Root `Ribet29C_Residue16_L23.lean` checks `l = 23` on the same
class: `a₂₃(32a1)=0` (not `−6`), mixed CRT lifts, and
`residue_1_6_eliminated_at_23` stays `def Prop`. Do **not** add
`Beal/Matveev/Ribet29C_Residue16_L23.lean`.
Root `MazurIrreducibility13.lean` inhabits `29 ∣ j.den` when
`29 ∣ C` and `29 ∤ AB`. Mazur / Ribet / image stay `def Prop`.
Do **not** add `Beal/Matveev/MazurIrreducibility13.lean`.
Root `Inertia29Unramified.lean` inhabits `v₂₉(c₄)=0`; Tate
Kodaira / Ribet inertia stay `def Prop`. Do **not** add
`Beal/Matveev/Inertia29Unramified.lean`.
Root `SerreImage13.lean` inhabits `32a1` `j=1728`; CM image /
Serre open image stay `def Prop`. Do **not** add
`Beal/Matveev/SerreImage13.lean`.
Root `MazurIrreducibilityFull.lean`, `TateGalois.lean`, and
`SerreImageFull.lean` name the four Mathlib gaps as `def Prop`.
Root `Mazur_X0_13_RationalPoints.lean` inhabits the Fricke
`j`-map and `𝔽₂₉` scans; Mazur via `X₀(13)` stays `def Prop`.
Root `Tate_I29_Inertia.lean` keeps Tate uniformization as
`def Prop`. Root `Ribet_Level32.lean` inhabits `928/29=32`;
abstract Ribet / Frey-needs-Wiles stay `def Prop`. Root
`Serre_Large_vs_CM_Small.lean` keeps Galois as `def Prop`.
Root `J0_26_BSD_26a1_26b1.lean` inhabits Cremona `26a1`/`26b1`
`Δ=−17576/−1664` and BSD quotients `1/3`,`1/7`; Kolyvagin
rank 0 stays `def Prop`.
Root `X0_26_Full2Torsion.lean` inhabits the Frey cubic split
(`0, A⁴, −B⁴ ∈ ℚ`), displayed `|Sel₂|=1` with `2⁰=1`, and
torsion Nats `3`/`7`; Kenku / mwrank / `|J₀(26)(ℚ)|=21` stay
`def Prop`. Root `TwoDescent_26a1_26.lean` relocates the
displayed Selmer/mwrank Nats (`1=1 → 0=0` is not Jacobian
rank 0). Root `BSD_MordellWeil.lean` re-exports Mathlib
`Point` `add_comm`; pasted `IsRankZero` is Subsingleton and
is refuted on `26a1`/`26b1`. Do **not** add copies under
`Beal/Matveev/` or `BealTrueV25/`.
See root `ARCHIVE_4413.md`.

Do **not** import `Beal.Matveev.MatveevThm14General` from the
interpolation / LLL / Bugeaud / Wüstholz / Product / ThreeLogs /
Kraus / KrausZsig / CatalanZsig / DarmonMerel / DarmonMerel44p /
FLT13 / GenuineV25 / TrueV25 / UnconditionalV25 / Gap1 / Gap2 /
Gap4 / Gap5 / Gap6 / Gap7 / Gap8 / Gap9 / Gap10 / Gap11 / Gap12 / Gap13 / Gap14 / Gap15 / GapK / EffectiveLevelLowering / BugeaudLaurent / PAdicLLL / PAdicLLL_ZeroAxiom / Rank3 modules.

`hGen`, `hLLL`, and `baker_bound_gap3_of_hGen_hLLL` stay
uninhabited `def Prop`. `baker_bound_gap3` stays a `def Prop`
(the theorem is named `baker_bound_gap3_true` in `BealTrueV25`,
and depends on `axiom darmon_merel_4413_axiom`).
`hGen_gap1`, `hLLL_gap1`, and `baker_bound_gap1` stay
uninhabited `def Prop` (`baker_bound_gap1_true` reuses the
same axiom). `hGen_gap2`, `hLLL_gap2`, and `baker_bound_gap2`
stay uninhabited `def Prop` (`baker_bound_gap2_true` reuses the
same axiom). `hGen_gap4`, `hLLL_gap4`, and `baker_bound_gap4`
stay uninhabited `def Prop` (`baker_bound_gap4_true` reuses the
same axiom). `hGen_gap5`, `hLLL_gap5`, and `baker_bound_gap5`
stay uninhabited `def Prop` (`baker_bound_gap5_true` reuses the
same axiom). `hGen_gap6`, `hLLL_gap6`, and `baker_bound_gap6`
stay uninhabited `def Prop` (`baker_bound_gap6_true` reuses the
same axiom). `hGen_gap7`, `hLLL_gap7`, and `baker_bound_gap7`
stay uninhabited `def Prop` (`baker_bound_gap7_true` reuses the
same axiom). `hGen_gap8`, `hLLL_gap8`, and `baker_bound_gap8`
stay uninhabited `def Prop` (`baker_bound_gap8_true` reuses the
same axiom). `hGen_gap9`, `hLLL_gap9`, and `baker_bound_gap9`
stay uninhabited `def Prop` (`baker_bound_gap9_true` reuses the
same axiom). `hGen_gap10`, `hLLL_gap10`, and `baker_bound_gap10`
stay uninhabited `def Prop` (`baker_bound_gap10_true` reuses the
same axiom on odd `B`). `hGen_gap11`, `hLLL_gap11`, and `baker_bound_gap11`
stay uninhabited `def Prop` (`baker_bound_gap11_true` reuses the
same axiom). `hGen_gap12`, `hLLL_gap12`, and `baker_bound_gap12`
stay uninhabited `def Prop` (`baker_bound_gap12_true` reuses the
same axiom). `hGen_gap13`, `hLLL_gap13`, and `baker_bound_gap13`
stay uninhabited `def Prop` (`baker_bound_gap13_true` reuses the
same axiom). `hGen_gap14`, `hLLL_gap14`, and `baker_bound_gap14`
stay uninhabited `def Prop` (`baker_bound_gap14_true` reuses the
same axiom). `hGen_gap15`, `hLLL_gap15`, and `baker_bound_gap15`
stay uninhabited `def Prop` (`baker_bound_gap15_true` reuses the
same axiom). `hGen_gapK`, `hLLL_gapK`, and `baker_bound_gapK`
stay uninhabited `def Prop` (`baker_bound_gapK_true_of_positive_coprime`
reuses the same axiom on positive coprime solutions; not `∀k ¬sol`).
`hGen_padic`, `hLLL_padic`, and `baker_bound_B0_1e6` stay
uninhabited `def Prop` (Bugeaud–Laurent / Kraus / Oesterlé /
Ribet-to-32 / FLT 13 are not in Mathlib 4.12; `C<100` is only
under `A,B≤B0`).
`bugeaud_laurent_1996_two_logs`, `p_adic_LLL_reduction`, and
`baker_bound_B0_1e6` stay uninhabited `def Prop` in
`BugeaudLaurent` (no Iwasawa `log_p` / Bugeaud–Laurent 1996 /
p-adic LLL in Mathlib 4.12; 2-adic valuation of the equation is
compatible on odd `k`; real logs lose at `C1=1`).
`p_adic_LLL_reduction`, `LLL_reduces_bound_to_B0`, and
`baker_bound_B0_1e6` stay uninhabited `def Prop` in `PAdicLLL`
(`PadicInt` is not an LLL lattice; `¬ A ≤ B+10` on gap solutions
with `B≥2`; floor lattice `b1=(1,0)` has length `1 < B0`;
`matveev_gap3_lower` is not 977 shards).
`LLL_reduces_bound_to_B0_zero_axiom` stays uninhabited
`def Prop` in `PAdicLLL_ZeroAxiom` (naive `u·a+v·C1` has kernel
`(C1,-a)`; `Nat.sqrt C1 < B0`).
`LLL_reduces_bound_to_B0`, `hGen`, and `hLLL` stay uninhabited
`def Prop` in the separate Rank-3 target `BealMatveevBealV25Rank3`
(rank-3 `‖v‖ < 32` is a short vector, not a `B ≤ B0` cutoff).
`baker_davenport_reduction`, `bugeaud_LLL_reduction_proof`,
`wuestholz_subgroup_theorem`, and `wuestholz_product_theorem_exp`
stay uninhabited `def Prop`.
