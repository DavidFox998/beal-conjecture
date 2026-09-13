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

# sagemath/certs/

The only two SageMath 10.7 JSON archives. **No new cert since v1.3.0 /
v1.4.0.** Current Foundations tag `v4.2.0-full-chain` does not add a file
here.

| File | Contents | SHA-256 pinned by `scripts/verify_v1_3_0_certs.py` |
|---|---|---|
| `j0_26_decomposition.json` | `J₀` dimension 2 = `26a1` × `26b1`; Sage `certified_mwrank = 0` on both | `35ea70c995f9aed3ae8e2f44cf231d0b7a3ae606e11ad5646635c47fa522a750` |
| `formal_immersion_M3.json` | `M₃ = [[1,1],[0,2]]` over `𝐅₃`, `det = 2` | `35801fac1e98b4821488a7ceb128533bd476d300e78a682991329ef61f2d2438` |

`certified_mwrank` is Sage `E.rank()` output, not a cohomological
Mordell--Weil theorem. The eight signed S-units
`[1, -1, 2, -2, 13, -13, 26, -26]` used with this decomposition live in
Lean (`FiniteEvidence.lean` / `TwoSelmer_vs_SUnits_26.lean`), not as a
third JSON file.

The ledger these certs are checked against remains
[`../level_26_ledger.json`](../level_26_ledger.json) v1.4.0
SHA-256 `0259fe957cc348b7286e233ce717fac47c30ad174b05e8e1c5fb70626f511151`.
