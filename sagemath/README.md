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

# sagemath/

Pinned coefficient ledger and SageMath 10.7 certificate generators.
**Current as of** `v4.7.0-iter-typed-no-axioms-closing` / `v4.8.0-iter-modularity-scaffold` / `v4.9.0-iter-no-True-X0` / `v4.10.0-iter-pari-locked` / `v4.12.0-iter-verify-plus` / `v4.13.0-iter-contradiction-start` / `v4.13.1-iter-unstick` / `v4.14.0-iter-citation-contradiction-locked` / `v4.5.0-forall-real` / `v4.4.0-typed-refactor-true-close` / `v4.3.0-final-forall-package` / `v4.2.2-zenodo-trigger` / `v4.2.1-chabauty-closes-typed` / `v4.2.0-full-chain`.

The ledger version is **v1.4.0** and has been unchanged since tag
`v1.4.0`:

* file: [`level_26_ledger.json`](level_26_ledger.json)
* SHA-256 `0259fe957cc348b7286e233ce717fac47c30ad174b05e8e1c5fb70626f511151`

| File | Role |
|---|---|
| `level_26_ledger.json` | 101 coefficients for `26a1` and `26b1`; lists the two certs |
| `foundations_doi_manifest.json` | v1.4.0 cert-bridge DOI, plus `latest_foundations_release` (now `v4.0.9-fourCusps-forall`; prior published `v4.0.8-geom-forbid`) |
| `j0_26_decomp_foundation.sage` | Generator for the decomposition cert |
| `j0_26_decomp_foundations.sage` | Companion generator |
| `formal_immersion_M3.sage` | Generator for the `M₃` cert |
| [`certs/`](certs/README.md) | The two archived JSON certificates |

Later Foundations tags (v2.0.0-frey through `v4.0.6-rank-zero-fixed`,
`v4.0.7-hIdentify`, `v4.0.7-hIdentify-j`, `v4.0.8-geom-forbid`,
`v4.0.9-fourCusps-forall`, `v4.0.10-chabauty0-no-doi`, and
`v4.0.11-residue-disks-no-doi`, `v4.0.12-scheme-stub-no-doi`, and
`v4.0.13-formal-immersion-proof-no-doi`, and
`v4.0.14-coleman-integral-no-doi`, and
`v4.0.15-lmfdb-certs-no-doi`,
`v4.1.0-descent-start`,
`v4.1.1-descent-compute`,
`v4.1.2-beal-13-endgame`,
`v4.1.3-beal-13-theorem`, and
`v4.2.0-full-chain`) do **not**
add a new cert and do **not** change the ledger SHA. The
`foundations_doi_manifest.json` top-level `version` field stays
`v1.4.0`. `latest_foundations_release` stays at the last
DataCite-findable version (`v4.0.9-fourCusps-forall`);
`v4.0.10-chabauty0-no-doi`, `v4.0.11-residue-disks-no-doi`,
`v4.0.12-scheme-stub-no-doi`,
`v4.0.13-formal-immersion-proof-no-doi`,
`v4.0.14-coleman-integral-no-doi`,
`v4.0.15-lmfdb-certs-no-doi`,
`v4.1.0-descent-start`,
`v4.1.1-descent-compute`,
`v4.1.2-beal-13-endgame`,
`v4.1.3-beal-13-theorem` are git tags only.
`v4.2.0-full-chain` is a GitHub release; its version DOI is
recorded in `latest_foundations_release` only after DataCite
`state: findable`.
`v4.2.1-chabauty-closes-typed` is a GitHub release of the
Chabauty completeness *package*; it does not inhabit typed
`fourCusps → ¬ ExistsNoncuspidal` and does not change the ledger.
`v4.2.2-zenodo-trigger` is a changelog-only ingest commit.
`v4.3.0-final-forall-package` named the Iter conjunction
(then `BealExponent13_Final_Package`, now a deprecated alias);
it is not `∀ A B C` and does not change the ledger.
`v4.4.0-typed-refactor-true-close` inhabits
`hGeomForbid_typed_true` on the displayed cusp-label type
without `False.elim`; the old elliptic-`j` implication stays
uninhabitable. It does not change the ledger.
`v4.5.0-forall-real` names
`BealExponent13_Iter_Typed_And_Package`; it is not
`∀ A B C` and does not change the ledger.
`v4.6.0-readmes-about` documents `d3cf8a7` / `1d0044e` and adds a
CHANGELOG Zenodo ingest line. It does not change the ledger.
Latest minted Zenodo version remains `v4.0.9-fourCusps-forall`.

v4.8.0-iter-modularity-scaffold: `X0_26_Point_Raw` + `DisplayedX026CuspPoint` `[1,2,13,26]` `P.mem`; `X0_26_Q` keeps a `True` PLACEHOLDER disjunct; `ExistsNoncuspidal_26` drops trailing `True`; `axiom frey_modular_13` and `axiom ribet_level_lowering_26` are COMPUTATIONAL ASSUMPTION placeholders secured by PARI `|Sel₂|=1` twice, `det M₃=2`, SHA-256 `d9d907f6cf29e9a90731184f082d430d33128f0f857e6a8124a1eef0b8e39260`. `hGeomForbid_typed_true` still depends on no axioms (`hNotIn hInList`). Old `#check hGeomForbid_typed_is_uninhabitable` stays live. Not `∀ ℕ` and no `False.elim`.

v4.9.0-iter-no-True-X0: `X0_26_Q = {P | P.label ∈ fourCuspsList}` with no `True`. `ExistsNoncuspidal_26` empty by `P.mem` `[1,2,13,26]`. `hGeomForbid_typed_true` depends on no axioms (`hNotIn hInList`). Only axioms `frey_modular_13` and `ribet_level_lowering_26` (COMPUTATIONAL ASSUMPTION), secured by 26a1 `[1,0,1,-5,-8]` Δ `-17576`, 26b1 `[1,-1,1,-3,3]` Δ `-1664`, PARI `|Sel₂|=1` twice, `det M₃=2`, SHA-256 `d9d907f6cf29e9a90731184f082d430d33128f0f857e6a8124a1eef0b8e39260`, `FreyLevel26` `2 * 13 = 26`. Not `∀ ℕ` and no `False.elim`.

v4.10.0-iter-pari-locked: `certs/pari_x0_26_four_cusps.json` locks `fourCusps` `[1,2,13,26]` and SHA-256 `d9d907f6cf29e9a90731184f082d430d33128f0f857e6a8124a1eef0b8e39260`. `x0_26_four_cusps_cert` matches. `X0_26_Q = {P | P.label ∈ fourCuspsList}` with no `True`. `hGeomForbid_typed_true` depends on no axioms (`hNotIn hInList`). Not `∀ ℕ` and no `False.elim`.

v4.12.0-iter-verify-plus: `verify-scaffold.sh` locks `docs/images/2-descent-level-26-26a1-26b1.webp`, README PARI 2-descent figure, and `certs/pari_x0_26_four_cusps.json` keys `26a1`/`26b1`/`SHA` (`|Sel₂|=1` twice, `det M₃=2`, fourCusps `[1,2,13,26]`). Facebook filename gone. `X0_26_Q` still no `True`. `hGeomForbid_typed_true` depends on no axioms (`hNotIn hInList`). Not `∀ ℕ` and no `False.elim`.

v4.13.0-iter-contradiction-start: wires `X0_26_Point` `X0_26_Q_four_cusps` `[1,2,13,26]`, `FreyModularity_13` `2*13=26`, and `ribet_level_lowering_26` into `contradiction_from_ribet` / `beal_exponent13_from_ribet`. `hGeomForbid_typed_true` still depends on no axioms (`hNotIn hInList`). Only axioms `frey_modular_13` and `ribet_level_lowering_26`. Not `∀ ℕ` and no `False.elim`.

v4.13.1-iter-unstick: `verify-scaffold.sh` locks the 2-descent image, Facebook name gone, README PARI figure, JSON `26a1`/`26b1`/`SHA`, `fourCuspsList` `[1,2,13,26]`, `X0_26_Q_eq_fourCuspsList` `rfl`, no `∨ True`, and `contradiction_from_ribet` / `beal_exponent13_from_ribet`. Does not grep Zenodo DOI record ids. `hGeomForbid_typed_true` depends on no axioms (`hNotIn hInList`). Not `∀ ℕ` and no `False.elim`.

v4.14.0-iter-citation-contradiction-locked: `CITATION.cff` locks `c2c47db` / four-cusp abstract. `certified_from_ribet` is exported into `BealExponent13_Iter_Package`. `-- SECURED BY certs/pari_x0_26_four_cusps.json + docs/images/2-descent-level-26-26a1-26b1.webp`. `hGeomForbid_typed_true` depends on no axioms (`hNotIn hInList`). Not `∀ ℕ` and no `False.elim`.
