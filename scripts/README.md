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
| `verify-scaffold.sh` | Required files, honesty greps (no `sorry`/`admit`; axioms allowed only `frey_modular_13` and `ribet_level_lowering_26`; Picard lives in `Jacobian/`, no unconditional `BealTheorem`, elliptic-`j` `hIdentify` rather than `26 ∉` four-cusp list), then the five Python verifiers |
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
