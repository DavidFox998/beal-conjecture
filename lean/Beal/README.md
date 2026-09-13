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

# lean/Beal/

Parent-facing `Beal.Foundations` namespace. **Current as of**
`v4.2.0-full-chain`.

[`Foundations.lean`](Foundations.lean) is the entrypoint. Its `release`
string is still `"v1.4.0"`: that is the **certificate-bridge / ledger**
version, not the latest Foundations git tag. The ledger SHA is
`0259fe957cc348b7286e233ce717fac47c30ad174b05e8e1c5fb70626f511151`.

See [`Foundations/`](Foundations/README.md) for the individual modules
(J₀(26) Weierstrass bridge, FormalImmersionM3, typed `LevelLowering_26`,
Mazur endgame re-export). `Foundations.lean` also imports the Jacobian
skeleton and S-unit audit from
[`../BealLevel26Foundations/Jacobian/`](../BealLevel26Foundations/Jacobian/README.md)
(including v4.0.3 `FormalImmersionActual_26` and v4.0.6
`J0_26_Q_RankZeroActual_26`) and the v4.0.4
four-cusp package
[`../BealLevel26Foundations/Mazur/X026RationalPointsActual_26.lean`](../BealLevel26Foundations/Mazur/X026RationalPointsActual_26.lean)
and the v4.0.7-j finite `j`-invariant `hIdentify`, v4.0.8
typed `hGeomForbid`, v4.0.9 cusp-point forall, v4.0.10 Chabauty-0 package, v4.0.11 residue-disk input, v4.0.12 scheme boundary, v4.0.13 named `det ≠ 0` immersion, v4.0.14 named Coleman/Chabauty packages, v4.0.15 LMFDB display data, v4.1.0-descent-start certified models, v4.1.1-descent-compute displayed `|Sel₂|=1`, and v4.1.2-beal-13-endgame computational `Option` `hGeomForbid`, and v4.1.3-beal-13-theorem computational `BealTheorem_Exponent13`, and v4.2.0-full-chain named Frey + four-cusp packages.

This directory does not replace
[`DavidFox998/beal-conjecture`](https://github.com/DavidFox998/beal-conjecture)
and does not change the status of `Beal.Final.ConditionalBealTheorem`.
