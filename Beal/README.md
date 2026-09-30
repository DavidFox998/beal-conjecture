# Beal/

## Working v33: even-valuation special fibre

`Beal.General` now checks the quotient-induced `2t`, `Xt`, and `Yt`
polynomial charts (`CompatChart2t.lean`, 191 lines;
`CompatChartXt.lean` and `CompatChartYt.lean`, 105 lines each),
the six directed restrictions (`CompatPolynomialRestrictions.lean`,
155 lines), and the three-open polynomial-spectrum cover
(`SpecialFibrePolynomialCover.lean`, 124 lines).
`SpecialFibreGluing.lean` (167 lines) checks their six `Spec.map`
compatibilities, abstract triple cocycle, and global gluing
isomorphism of the quotient Rees `Proj`. Product overlaps remain
abstract pullbacks, with **no** polynomial product presentation.
For `y²+xy=x³+8`, the reduced `2t` chart is `V²+UV=0`, and its
origin belongs only to `D₊(overline{2t})`.
These declarations are sorry-free; the printed gluing axiom
report is `[propext, Classical.choice, Quot.sound]`.
`TateEvenBranchGenericFibre.lean` (59 lines) packages the already-proved
isomorphism of the actual blow-up's generic fibre with the localized
surface over `D(2)`; the existing `TateEvenBranch.lean` is untouched.
Verify with `lake env lean Beal/Beal.General/SpecialFibreGluing.lean`,
`lake env lean Beal/Beal.General/TateEvenBranchGenericFibre.lean`,
and `git diff --check`. A full `lake build BealGeneral` has not
been verified for v33. See [`RELEASE_NOTES_v33.md`](RELEASE_NOTES_v33.md).

Lake library sources for the Matveev–Beal complement
(`BealMatveevBeal`). The default target globs
`Beal.Matveev` plus root modules `MatveevThm14Proof`,
`MatveevLLL`, `MatveevInterpolation`, `MatveevBugeaud`,
`WuestholzSubgroup`, `WuestholzProduct`, `MatveevThreeLogs`,
`BealKraus`, `BealKrausZsig`, `BealCatalanZsig`, `BealDarmonMerel`,
`BealDarmonMerel44p`, `BealFLT13`, `BealGenuineV25`,
`BealTrueV25`, `BealUnconditionalV25`, `BealGap1`, `BealGap2`,
`BealGap4`, `BealGap5`, `BealGap6`, `BealGap7`, `BealGap8`,
`BealGap9`, `BealGap10`, `BealGap11`, `BealGap12`, `BealGap13`,
`BealGap14`, `BealGap15`, `BealGapK`,
`EffectiveLevelLoweringPAdicLinearForms_A4_B4_C13_B0_1e6`,
`BugeaudLaurent`, `PAdicLLL`, and `PAdicLLL_ZeroAxiom`.
Separate Lake target `BealMatveevBealV25Rank3` is **not** in
that glob (`lake build BealMatveevBealV25Rank3`). Separate
Lake target `BealMatveevBealV25B0Search` is also **not** in
that glob (`lake build BealMatveevBealV25B0Search`).

`Beal.lean` re-exports `Beal.Matveev.MatveevThm14General`.
Substantial proofs live in **root** modules; files under
`Beal/Matveev/` are LEAN_PATH stubs. See `Beal/Matveev/README.md`.

Concept DOI `10.5281/zenodo.22379293`. `C1_floor = 143186215390`.
`B0_nat = 1000000`. **0 sorry.** `BealTrueV25` inhabits
`baker_bound_gap3_true` relative to `axiom darmon_merel_4413_axiom`.
`BealUnconditionalV25` proves `hGen` + `hLLL` cannot close
`B ≤ 10⁶` in Mathlib 4.12. `BealGap1` proves the gap-1 analogue
(`baker_bound_gap1` stays `def Prop`; `(1,0)` is a solution).
`BealGap2` proves the gap-2 analogue (`baker_bound_gap2` stays
`def Prop`; `B` odd, `A` even; `3 ∣ B` impossible; no `(1,0)`).
`BealGap4` proves the gap-4 analogue (`baker_bound_gap4` stays
`def Prop`; `B` odd, `A` even; `3 ∣ B` compatible; `5 ∣ B`
impossible; no `(1,0)`).
`BealGap5` proves the gap-5 analogue (`baker_bound_gap5` stays
`def Prop`; `B` even, `A` odd; `3 ∣ B` impossible; `5 ∣ B`
impossible by 5-descent; no `(1,0)`).
`BealGap6` proves the gap-6 analogue (`baker_bound_gap6` stays
`def Prop`; `B` odd, `A` even; even `B` dies as `6` or `14`
mod 16; `3 ∣ B` impossible by 3-descent; `5 ∣ B` compatible;
no `(1,0)`).
`BealGap7` proves the gap-7 analogue (`baker_bound_gap7` stays
`def Prop`; `B` even, `A` odd; `3 ∣ B` compatible; `5 ∣ B`
impossible (`C ≡ 2`); `7 ∣ B` impossible by 7-descent;
no `(1,0)`).
`BealGap8` proves the gap-8 analogue (`baker_bound_gap8` stays
`def Prop`; `B` odd, `A` even; even `B` dies after nine `/2`
as residue `8`; `3 ∣ B` impossible (`C ≡ 2`); `5 ∣ B`
impossible (`C ≡ 3`); `7 ∣ B` compatible; no `(1,0)`).
`BealGap9` proves the gap-9 analogue (`baker_bound_gap9` stays
`def Prop`; `B` even, `A` odd; `3 ∣ B` impossible by
3-descent; `5 ∣ B` impossible (`C ≡ 4`); `7 ∣ B`
compatible (`A⁴ ≡ 2`); no `(1,0)`).
`BealGap10` proves the gap-10 analogue (`baker_bound_gap10` stays
`def Prop`; `A` even; even `B` reduces to last-step
`2(4B₃+5)¹³` leftover `B₃≡2∨4`; `3 ∣ B` compatible;
`5 ∣ B` impossible by 5-descent; `7 ∣ B` impossible;
odd `B` is Darmon–Merel; no `(1,0)`).
`BealGap11` proves the gap-11 analogue (`baker_bound_gap11` stays
`def Prop`; `B` even, `A` odd; `3 ∣ B` impossible (`C ≡ 2`);
`11 ∣ B` impossible by 11-descent; `5 ∣ B` compatible
(`A⁴ ≡ 1`); `7 ∣ B` compatible (`A⁴ ≡ 4`); remaining coprime
Darmon–Merel; no `(1,0)`).
`BealGap12` proves the gap-12 analogue (`baker_bound_gap12` stays
`def Prop`; `B` odd, `A` even; even `B` dies after six `/2`
as residue `12`; `3 ∣ B` impossible by 3-descent (`C₁=B₁+4`);
`5 ∣ B` impossible (`C ≡ 2`); `7 ∣ B` impossible (`C ≡ 5`);
remaining coprime Darmon–Merel; no `(1,0)`).
`BealGap13` proves the gap-13 analogue (`baker_bound_gap13` stays
`def Prop`; `B` even, `A` odd; `3 ∣ B` compatible (`C ≡ 1`);
`5 ∣ B` impossible (`C ≡ 3`); `7 ∣ B` impossible (`C ≡ 6`);
`11 ∣ B` impossible (`C¹³ ≡ 8`); `13 ∣ B` impossible by
13-descent; remaining coprime Darmon–Merel; no `(1,0)`).
`BealGap14` proves the gap-14 analogue (`baker_bound_gap14` stays
`def Prop`; `B` odd, `A` even; even `B` dies after three `/2`
as `2(4B₃+7)¹³` residue `6` or `14`; `3 ∣ B` impossible (`C ≡ 2`);
`5 ∣ B` impossible (`C ≡ 4`); `7 ∣ B` impossible by 7-descent
(`C₁=B₁+2`); remaining coprime Darmon–Merel; no `(1,0)`).
`BealGap15` proves the gap-15 analogue (`baker_bound_gap15` stays
`def Prop`; `B` even, `A` odd; `3 ∣ B` impossible by 3-descent
(`C₁=B₁+5≡2`); `5 ∣ B` impossible by 5-descent (`C₁=B₁+3≡3`);
`7 ∣ B` compatible (`A⁴ ≡ 1`); remaining coprime Darmon–Merel;
no `(1,0)`).
`BealGapK` proves generic `k` infrastructure (`baker_bound_gapK`
stays `def Prop`; odd `k` ⇒ `B` even `A` odd; even `k` ⇒ `A`
even only; not `∀k ¬sol`).
`EffectiveLevelLoweringPAdicLinearForms_A4_B4_C13_B0_1e6`
re-exports those wrappers and proves the conditional size
lemma `C<100` when `A,B≤B0`; `baker_bound_B0_1e6` /
`hGen_padic` / `hLLL_padic` stay `def Prop`.
`BugeaudLaurent` records the Mathlib 4.12 gap (no Iwasawa
`log_p`, no Bugeaud–Laurent 1996, no p-adic LLL) and proves
the 2-adic valuation of the equation is compatible on odd `k`.
`PAdicLLL` aliases `PadicInt` as `Z_p` and proves
`¬ A ≤ B+10` on gap solutions with `B≥2` (the proposed
`A ∈ [B, B+10]` search is empty); the floor lattice
`b1=(1,0)` has Euclidean length `1 < B0`;
`p_adic_LLL_reduction` / `LLL_reduces_bound_to_B0` /
`LLL_reduces_bound_to_B0_theorem` stay `def Prop`.
`PAdicLLL_ZeroAxiom` proves the naive `u·a+v·C1` form has
kernel `(C1,-a)` and `Nat.sqrt C1 < B0`;
`LLL_reduces_bound_to_B0_zero_axiom` stays `def Prop`.
`BealMatveevBealV25Rank3` is a **separate** Lake target wrapping
rank-3 `‖v‖ < 32` and `|Λ| < 1/B`; do **not** add a
`Beal/Matveev/` stub for it; `LLL_reduces_bound_to_B0` /
`hGen` / `hLLL` stay `def Prop`.
That is not the minted unconditional v25 tag.
