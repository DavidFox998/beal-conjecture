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

# lean/Beal/Foundations/

Typed certificate bridges promoted from
[`sagemath/certs/`](../../../sagemath/certs/README.md) and the v1.4.0
ledger. **Current as of** `v4.2.0-full-chain`.

| File | What it checks | What it is not |
|---|---|---|
| `J0_26_Decomp.lean` | Two dim-1 newform prefixes `26a1` / `26b1`, Weierstrass `c₄,c₆,Δ` | Not a scheme-theoretic `J₀(26)` |
| `J0DecompositionCertificate.lean` | Sage `certified_mwrank = 0` as stored data | Not a Mordell--Weil theorem |
| `FormalImmersionM3.lean` | `M₃ = [[1,1],[0,2]]`, `det = 2`, matches `ledgerM3` | Not a geometric formal immersion |
| `FormalImmersionM3Certificate.lean` | Same matrix facts under a certificate name | Same boundary |
| `LevelLowering_26.lean` | Re-export of typed `(ℓ, N, p, M)` data | Not a Ribet theorem |
| `EndgameScaffold.lean` | Re-export of the four Mazur premises | Not an unconditional `BealTheorem` |

`Beal.Foundations.release` remains `"v1.4.0"`. Later tags (v2--v4.1.1)
add modules elsewhere; they do not bump this cert-bridge version or
change the ledger SHA
`0259fe957cc348b7286e233ce717fac47c30ad174b05e8e1c5fb70626f511151`.
