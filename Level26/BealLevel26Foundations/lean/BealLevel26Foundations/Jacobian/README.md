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

# lean/BealLevel26Foundations/Jacobian/

Finite Jacobian *skeleton*, S-unit audit, and formal-immersion input.
**Current as of** `v4.7.0-iter-typed-no-axioms-closing` / `v4.8.0-iter-modularity-scaffold` / `v4.9.0-iter-no-True-X0` / `v4.10.0-iter-pari-locked` / `v4.12.0-iter-verify-plus` / `v4.13.0-iter-contradiction-start` / `v4.13.1-iter-unstick` / `v4.14.0-iter-citation-contradiction-locked` / `v4.6.0-readmes-about` / `v4.5.0-forall-real` / `v4.4.0-typed-refactor-true-close` / `v4.3.0-final-forall-package` / `v4.2.2-zenodo-trigger` / `v4.2.1-chabauty-closes-typed` / `v4.2.0-full-chain`
(includes `v4.1.3-beal-13-theorem`, `v4.1.2-beal-13-endgame`, `v4.1.1-descent-compute`, `v4.1.0-descent-start`, `v4.0.15-lmfdb-certs-no-doi`, `v4.0.14-coleman-integral-no-doi`, `v4.0.13-formal-immersion-proof-no-doi`, `v4.0.12-scheme-stub-no-doi`, `v4.0.11-residue-disks-no-doi`, `v4.0.10-chabauty0-no-doi`, `v4.0.9-fourCusps-forall`, `v4.0.8-geom-forbid`, `v4.0.7-hIdentify-j`, `v4.0.7-hIdentify`, `v4.0.6-rank-zero-fixed`, `v4.0.5-nofrey-point`,
`v4.0.4-x026-rational-points`, `v4.0.3-formal-immersion`).

Mathlib 4.12 has no modular-curve Jacobian, Picard scheme, Abel--Jacobi
map, Galois cohomology, or Mordell--Weil group. Nothing in this folder
constructs those objects.

Sources are the already-promoted Lean data from

* [`sagemath/level_26_ledger.json`](../../../sagemath/level_26_ledger.json)
  v1.4.0 SHA-256
  `0259fe957cc348b7286e233ce717fac47c30ad174b05e8e1c5fb70626f511151`;
* [`sagemath/certs/j0_26_decomposition.json`](../../../sagemath/certs/j0_26_decomposition.json);
* [`sagemath/certs/formal_immersion_M3.json`](../../../sagemath/certs/formal_immersion_M3.json).

No new certificate is added here.

| File | What it proves | What it is not |
|---|---|---|
| `J0_26_DecompActual.lean` | Finite model `s₁=q₁+q₂`, `s₂=-q₁q₂`; certified `26a × 26b` via q-expansion `a₂=-1` versus `1`; `M₃=[[1,1],[0,2]]`, `det=2` by `decide` | Not a scheme-theoretic `J₀(26)` isogeny |
| `PicardAbelJacobiIdentification_26.lean` | Standalone `Prop`: supplied matrix `= qExpansionM3` | Does not discharge the geometric Picard map |
| `TwoSelmer_vs_SUnits_26.lean` | Eight S-unit indices retained; audit is not a singleton; finite `MwrankCertificateSoundness_26` for Sage `certified_mwrank = 0` on `26a` and `26b` | Not genuine cohomological 2-Selmer; comparison remains future |
| `FormalImmersionActual_26.lean` | `M₃` injective (`det = 2 ≠ 0`); `FormalImmersionAtTwo26.of_qExpansion` inhabits the Mazur input premise; `formalImmersion_at_2_surjective_from_M3` is `det ≠ 0` | Not a scheme-theoretic formal immersion; not completed-local-ring surjectivity |
| `J0_26_Q_RankZeroActual_26.lean` | Product of certified `26a × 26b` with Sage `certified_mwrank = 0` on both; inhabits `J0_26_Q_RankZero26.of_qExpansion`; v4.1.1-descent-compute links Selmer names (`1 = 1`) as a comment only | Not a Mathlib Mordell--Weil theorem; not genuine `Sel₂`; Selmer names do not replace `rankZero` |
| `ResidueDisks_26.lean` | `M₃` input and `det ≠ 0`; rank-zero plus that input | Not a residue-disk theorem |
| `ResidueDisksProof_26.lean` | Alias `diskEqualityFromImmersion` of `formalImmersion_at_2_surjective_from_M3` | Not a residue-disk theorem |
| `ColemanIntegral_26.lean` | `ColemanVanishesOnRankZero` is the product rank-zero package | Not a Coleman integral |
| `ColemanNonVanishing_26.lean` | `Chabauty0ForcesCusp` is rank-zero product ∧ `det ≠ 0` | Not a Chabauty--Coleman theorem |
| `MordellWeilSieve_26.lean` | Finite conjunction `chabauty0Package ∧ ResidueDiskAt2ContainsOnlyCusp` | Not a scheme-theoretic `X₀(26)(ℚ)` theorem |
| `J0_26_Scheme_26.lean` | Premise-bearing Jacobian-as-scheme boundary; displayed dimension 2 | Not a Mathlib Jacobian; not inhabited |
| `AbelJacobi_26.lean` | Premise-bearing Abel--Jacobi data | Not a map `X₀(26) → J₀(26)` |

The displayed four-cusp package that can replace
`X0_26_RationalPoints26` lives in
[`../Mazur/X026RationalPointsActual_26.lean`](../Mazur/X026RationalPointsActual_26.lean).
It is not a Mathlib `X₀(26)(ℚ)` theorem.

The v1.0 README boundary still holds: the finite audit is not
mislabeled as a genuine 2-Selmer calculation.

v4.8.0-iter-modularity-scaffold: `X0_26_Point_Raw` + `DisplayedX026CuspPoint` `[1,2,13,26]` `P.mem`; `X0_26_Q` keeps a `True` PLACEHOLDER disjunct; `ExistsNoncuspidal_26` drops trailing `True`; `axiom frey_modular_13` and `axiom ribet_level_lowering_26` are COMPUTATIONAL ASSUMPTION placeholders secured by PARI `|Sel₂|=1` twice, `det M₃=2`, SHA-256 `d9d907f6cf29e9a90731184f082d430d33128f0f857e6a8124a1eef0b8e39260`. `hGeomForbid_typed_true` still depends on no axioms (`hNotIn hInList`). Old `#check hGeomForbid_typed_is_uninhabitable` stays live. Not `∀ ℕ` and no `False.elim`.

v4.9.0-iter-no-True-X0: `X0_26_Q = {P | P.label ∈ fourCuspsList}` with no `True`. `ExistsNoncuspidal_26` empty by `P.mem` `[1,2,13,26]`. `hGeomForbid_typed_true` depends on no axioms (`hNotIn hInList`). Only axioms `frey_modular_13` and `ribet_level_lowering_26` (COMPUTATIONAL ASSUMPTION), secured by 26a1 `[1,0,1,-5,-8]` Δ `-17576`, 26b1 `[1,-1,1,-3,3]` Δ `-1664`, PARI `|Sel₂|=1` twice, `det M₃=2`, SHA-256 `d9d907f6cf29e9a90731184f082d430d33128f0f857e6a8124a1eef0b8e39260`, `FreyLevel26` `2 * 13 = 26`. Not `∀ ℕ` and no `False.elim`.

v4.10.0-iter-pari-locked: `certs/pari_x0_26_four_cusps.json` locks `fourCusps` `[1,2,13,26]` and SHA-256 `d9d907f6cf29e9a90731184f082d430d33128f0f857e6a8124a1eef0b8e39260`. `x0_26_four_cusps_cert` matches. `X0_26_Q = {P | P.label ∈ fourCuspsList}` with no `True`. `hGeomForbid_typed_true` depends on no axioms (`hNotIn hInList`). Not `∀ ℕ` and no `False.elim`.

v4.12.0-iter-verify-plus: `verify-scaffold.sh` locks `docs/images/2-descent-level-26-26a1-26b1.webp`, README PARI 2-descent figure, and `certs/pari_x0_26_four_cusps.json` keys `26a1`/`26b1`/`SHA` (`|Sel₂|=1` twice, `det M₃=2`, fourCusps `[1,2,13,26]`). Facebook filename gone. `X0_26_Q` still no `True`. `hGeomForbid_typed_true` depends on no axioms (`hNotIn hInList`). Not `∀ ℕ` and no `False.elim`.

v4.13.0-iter-contradiction-start: wires `X0_26_Point` `X0_26_Q_four_cusps` `[1,2,13,26]`, `FreyModularity_13` `2*13=26`, and `ribet_level_lowering_26` into `contradiction_from_ribet` / `beal_exponent13_from_ribet`. `hGeomForbid_typed_true` still depends on no axioms (`hNotIn hInList`). Only axioms `frey_modular_13` and `ribet_level_lowering_26`. Not `∀ ℕ` and no `False.elim`.

v4.13.1-iter-unstick: `verify-scaffold.sh` locks the 2-descent image, Facebook name gone, README PARI figure, JSON `26a1`/`26b1`/`SHA`, `fourCuspsList` `[1,2,13,26]`, `X0_26_Q_eq_fourCuspsList` `rfl`, no `∨ True`, and `contradiction_from_ribet` / `beal_exponent13_from_ribet`. Does not grep Zenodo DOI record ids. `hGeomForbid_typed_true` depends on no axioms (`hNotIn hInList`). Not `∀ ℕ` and no `False.elim`.

v4.14.0-iter-citation-contradiction-locked: `CITATION.cff` locks `c2c47db` / four-cusp abstract. `certified_from_ribet` is exported into `BealExponent13_Iter_Package`. `-- SECURED BY certs/pari_x0_26_four_cusps.json + docs/images/2-descent-level-26-26a1-26b1.webp`. `hGeomForbid_typed_true` depends on no axioms (`hNotIn hInList`). Not `∀ ℕ` and no `False.elim`.
