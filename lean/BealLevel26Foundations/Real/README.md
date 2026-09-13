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

# lean/BealLevel26Foundations/Real/

Arithmetic that Mathlib 4.12 permits. **Current as of** `v4.2.0-full-chain`.

| File | What it is | What it is not |
|---|---|---|
| `FreyWeierstrass.lean` | Parent integral Frey model; `c₄,c₆,Δ` by `ring` | Not a conductor or Kodaira theorem |
| `Conductor_26_Unconditional.lean` | Odd-prime valuation input `vₚ(c₄)=0`, `vₚ(Δ)>0` | Not Tate Step 2 |
| `LevelLowering_26.lean` | Re-export of typed v3 certificate data | Not Ribet existence |

The folder entrypoint is
[`../Real.lean`](../Real.lean), which also imports the Jacobian
skeleton, the S-unit audit, v4.0.3 formal-immersion input, the
v4.0.4 four-cusp package, the v4.0.6 rank-zero / Ribet split,
the v4.0.7-j finite `j`-invariant `hIdentify`, the v4.0.8
typed `hGeomForbid` record, the v4.0.9 cusp-point forall, and
the v4.0.10 Chabauty-0 package, the v4.0.11 residue-disk input,
the v4.0.12 scheme boundary, the v4.0.13 named `det ≠ 0`
immersion, the v4.0.14 named Coleman/Chabauty packages, and the
v4.0.15 LMFDB display data, the
v4.1.0-descent-start certified models, and the
v4.1.1-descent-compute displayed `|Sel₂|=1`, and the
v4.1.2-beal-13-endgame computational `Option` `hGeomForbid`, and the
v4.1.3-beal-13-theorem computational `BealTheorem_Exponent13`, and the
v4.2.0-full-chain named Frey + four-cusp packages.
These
files must not mention `frey_conductor_data` or
`tate_step2_odd_prime_external`.
