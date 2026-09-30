> **Root v33 (separate from these notes):** `Beal/Beal.General/` checks `CompatChart2t` (191 lines), `CompatChartXt`/`CompatChartYt` (105 each), six polynomial-to-abstract restrictions, and `SpecialFibreGluing` (167 lines); product overlaps are abstract. See `Beal/RELEASE_NOTES_v33.md`.

[![DOI](https://zenodo.org/badge/DOI/10.5281/zenodo.22452680.svg)](https://doi.org/10.5281/zenodo.22452680)
[![Hook 22379293](https://zenodo.org/badge/DOI/10.5281/zenodo.22379293.svg)](https://doi.org/10.5281/zenodo.22379293)

### v4.28.0 X0(26)(Q) Cusps P-mem Locked — DOI 22452680

| Name | What |
|---|---|
| X0_26_Q | [1,2,13,26] rfl P.mem mem_1 mem_2 mem_13 mem_26 not_mem_3 hInList hNotIn for hGeomForbid |
| beal_forall_eq_exponent13_bridge | none = beal_forall_from_ribet = Contradiction.beal_exponent13_from_ribet BRIDGE none hGeomForbid_typed_true (hNotIn hInList) |
| beal13_forall_bridge_triple | none ⟨exponent13,forall,bridge⟩ |

DOI `22452680` findable records prior mint `22450737` hook `22379293` `IsVersionOf` `22272382` honest original latest `22322627`.

PARI lock: 26a1 Δ `-17576` 26b1 Δ `-1664` `|Sel2|=1` det `M3=2` SHA `d9d907f6cf29e9a90731184f082d430d33128f0f857e6a8124a1eef0b8e39260` image `docs/images/2-descent-level-26-26a1-26b1.webp` ≥300KB.

# docs/Final/

Current Matveev–Beal HEAD is recorded at the top of
[`FINAL.md`](FINAL.md): integer-gap `B≤B0`, LLL / Wüstholz no-gos,
full-order product packaging in `WuestholzProduct.lean`,
log-method no-go in `MatveevThreeLogs.lean`, displayed Frey /
Kraus no-go in `BealKraus.lean`, Gaussian/Thue no-go in
`BealKrausZsig.lean`, Catalan/Zsigmondy no-go in
`BealCatalanZsig.lean`. Darmon–Merel / Ribet residual-level
no-go in `BealDarmonMerel.lean`. Darmon–Merel signature (4,4,p) /
Ribet-to-32 no-go in `BealDarmonMerel44p.lean`. FLT 13 /
Darmon–Merel 44p / 3-adic descent no-go in `BealFLT13.lean`.
Darmon–Merel (4,4,13) + 3-adic vacuous-close no-go in
`BealGenuineV25.lean`. Axiom-relative `baker_bound_gap3_true` in
`BealTrueV25.lean` (`axiom darmon_merel_4413_axiom`; not Mathlib
4.12; not the minted unconditional v25 tag). `hGen` + `hLLL`
no-go in `BealUnconditionalV25.lean`. Gap-1 no-go in
`BealGap1.lean` (`baker_bound_gap1` stays `def Prop`). Gap-2 no-go in
`BealGap2.lean` (`baker_bound_gap2` stays `def Prop`; `B` odd, `3∣B`
impossible). Gap-4 no-go in
`BealGap4.lean` (`baker_bound_gap4` stays `def Prop`; `B` odd, `3∣B`
compatible, `5∣B` impossible). Gap-5 no-go in
`BealGap5.lean` (`baker_bound_gap5` stays `def Prop`; `B` even, `3∣B`
impossible, `5∣B` impossible by 5-descent). Gap-6 no-go in
`BealGap6.lean` (`baker_bound_gap6` stays `def Prop`; `B` odd, even
`B` dies as `6` or `14` mod 16, `3∣B` impossible by 3-descent,
`5∣B` compatible). Gap-7 no-go in
`BealGap7.lean` (`baker_bound_gap7` stays `def Prop`; `B` even,
`3∣B` compatible, `5∣B` impossible (`C≡2`), `7∣B` impossible
by 7-descent). Uniform
`wuestholz_product_theorem_exp` / `baker_davenport_reduction`
stay `def Prop`. The kernel `baker_bound_gap3` stays a `def`;
the axiom-relative theorem is named `baker_bound_gap3_true`.

FINAL v5 green: [`FINAL.md`](FINAL.md).
Iter / Forall / typed-bridge docs. Lean sources live in
[`lean/BealLevel26Foundations/Final/`](../../lean/BealLevel26Foundations/Final/README.md).
Package table: [`../BealExponent13_Iter_Package.md`](../BealExponent13_Iter_Package.md).
Forall reduction sketch (v4.31.0, p=13 working prime):
[`BealExponent13_Forall.md`](BealExponent13_Forall.md).
v4.35.0: `#check is13CaseForcesGcdGt1Sketch_inhabited` is the typed
close (`BealTheorem_Exponent13_Typed`, none).
`Is13CaseForcesGcdGt1Sketch` stays uninhabited. Still not `∀ A B C`.
v4.40.0: `FreyCurve13_of_BealCounterexampleBases` is the working-prime
Weierstrass `freyCurve ↑A ↑B 13 13`.  Not a noncuspidal `X₀(26)`
point. `ExistsNoncuspidal_26_of_Is13CaseSketch` stays uninhabited.
v4.41.0: `ribet_produces_noncuspidal_of_weierstrass` and
`weierstrass_modularity_gives_ExistsNoncuspidal_sketch` stay
uninhabited. `WeierstrassCurve` is not `DisplayedX026CuspPoint`.
v4.42.0: `WeierstrassModularity (FreyCurve13_of_BealCounterexampleBases w)`
is a valid type. Ribet sketches stay uninhabited.
v4.43.0: `ribet_produces_noncuspidal_of_weierstrass_modularity`
takes the bridge and stays uninhabited.
v4.44.0: `X0_26_Q_Point` is `Σ (E : EllipticCurve ℚ), CyclicSubgroup E 26`
started. Mathlib 4.12 has no `X₀(26)(ℚ)`. Ribet sketches stay
uninhabited.
v4.45.0: `X0_26_Q_Point_to_ExistsNoncuspidal` is
`Nonempty → ExistsNoncuspidal_26` uninhabited. Empty inductive.
v4.46.0: real `X₀(26)(ℚ)` has 26a1/26b1; contradiction is
`S₂(Γ₀(2))=0` no newform. `notExistsNewformLevel2` **none**.
v4.47.0: Tate conductor from `Is13Case` (`13 ∣ A*B*C`)
uninhabited; `frey_conductor_26_rfl` is `rfl`.
