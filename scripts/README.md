> **Root v33 (separate from these scripts):** `Beal/Beal.General/` checks `CompatChart2t` (191 lines), `CompatChartXt`/`CompatChartYt` (105 each), six polynomial-to-abstract restrictions, and `SpecialFibreGluing` (167 lines); product overlaps are abstract. See `Beal/RELEASE_NOTES_v33.md`.

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

# scripts/

Deterministic repository checks. **Current as of** `v4.2.0-full-chain`.

| Script | What it checks |
|---|---|
| `verify-matveev-beal.sh` | Current CI / AMS referee surface: 0 `sorry`, `matveev_gap3_lower` is the B≤10^6 integer-gap close, `C1_floor=143186215390`, proved `gap3_A_bounds` and `matveev_product_bound_of_B_le_B0`, CF lemmas in `MatveevLLL.lean`, displayed-lattice and uniform-`C` no-go in `MatveevBugeaud.lean`, intermediate-`T` no-go in `WuestholzSubgroup.lean`, full-order product packaging in `WuestholzProduct.lean`, log-method no-go in `MatveevThreeLogs.lean`, displayed Frey / Kraus no-go in `BealKraus.lean`, Gaussian / Thue no-go in `BealKrausZsig.lean`, Catalan / Zsigmondy no-go in `BealCatalanZsig.lean`, Darmon–Merel / Ribet residual-level no-go in `BealDarmonMerel.lean`, Darmon–Merel signature (4,4,p) / Ribet-to-32 no-go in `BealDarmonMerel44p.lean`, FLT 13 / Darmon–Merel 44p / 3-adic descent no-go in `BealFLT13.lean`, Darmon–Merel (4,4,13) + 3-adic vacuous-close no-go in `BealGenuineV25.lean`, axiom-relative `baker_bound_gap3_true` in `BealTrueV25.lean` via `axiom darmon_merel_4413_axiom`, `hGen`+`hLLL` no-go in `BealUnconditionalV25.lean`, gap-1 no-go in `BealGap1.lean`, gap-2 no-go in `BealGap2.lean`, gap-4 no-go in `BealGap4.lean`, gap-5 no-go in `BealGap5.lean`, gap-6 no-go in `BealGap6.lean`, gap-7 no-go in `BealGap7.lean`, plus Gap8–15/GapK/EffectiveLevelLowering/BugeaudLaurent/PAdicLLL/PAdicLLL_ZeroAxiom and the **separate** Rank-3 target `BealMatveevBealV25Rank3.lean` (`LLL_reduces_bound_to_B0` / `hGen` / `hLLL` stay `def Prop`; not the minted unconditional v25 tag), concept DOI `22379293`, slug `beal-level-26-foundations` |
| `verify-scaffold.sh` | Historical X0(26) checklist. Not run by current CI. |
| `verify_coefficient_ledger.py` | `level_26_ledger.json` SHA-256 `0259fe957cc348b7286e233ce717fac47c30ad174b05e8e1c5fb70626f511151` |
| `verify_v1_3_0_certs.py` | The two cert SHA-256s; manifest `version` is still `v1.4.0` |
| `replay_level26_hensel.py` | 160 strong-Hensel witnesses at 2 and 13 for the eight S-units |
| `fetch_LMFDB.py` | Writes archived `LMFDB_26.json`; does not contact LMFDB.org; does not change the ledger |
| `verify_lmfdb_26.py` | JSON SHA-256 and Lean display fields; forbids `True`/`trivial` rank |
| `verify_descent_26.py` | PARI/Sage 2-descent vs `Descent_26.json`; cross-checks certified `[1,0,1,-5,-8]` / `[1,-1,1,-3,3]`; forbids Lean `True`/`trivial` |

Run from the repository root:

```sh
bash scripts/verify-scaffold.sh
```

These scripts prove file and hash consistency. They do not prove a
Jacobian, genuine 2-Selmer, or `BealTheorem`.
