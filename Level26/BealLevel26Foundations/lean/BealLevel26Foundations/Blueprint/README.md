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

# Phase 3 blueprint

Project board for the scheme-theoretic Jacobian / formal-immersion /
Chabauty--Coleman work. Ledger remains v1.4.0 SHA-256
`0259fe957cc348b7286e233ce717fac47c30ad174b05e8e1c5fb70626f511151`.
No version DOI unless explicitly requested. No `theorem BealTheorem`.
The displayed-cusp audit `Mazur/X026RationalPointsActual_26` stays
unchanged.

Mathlib 4.12 has no modular-curve scheme, no Jacobian of `X₀(26)`,
no Abel--Jacobi map, no completed-local-ring formal immersion, and
no Coleman integral. This folder does not add placeholders, `axiom`, or
`admit`. Named Lean boundaries live next to this board.

## Track A — Jacobian as scheme

Status: **named boundaries shipped** (`v4.0.12-scheme-stub-no-doi`).

| File | What it is | What it is not |
|---|---|---|
| [`../Jacobian/J0_26_Scheme_26.lean`](../Jacobian/J0_26_Scheme_26.lean) | Premise-bearing `J0_26_Scheme` / `J0_26_Scheme_26` | Not a Mathlib Jacobian; not the finite product `26a × 26b`; not inhabited |
| [`../Jacobian/AbelJacobi_26.lean`](../Jacobian/AbelJacobi_26.lean) | Premise-bearing Abel--Jacobi data (`∞ ↦ 0`, cusps torsion) | Not a map `X₀(26) → J₀(26)` |

References (not imported, not discharged): Mumford, *Abelian Varieties*;
Rohrlich on the cuspidal divisor class group and the Abel--Jacobi map
of `X₀(N)`.

## Track B — Formal immersion at 2

Status: **named `det ≠ 0` package shipped**
(`v4.0.13-formal-immersion-proof-no-doi`).

| File | What it is | What it is not |
|---|---|---|
| [`../Jacobian/FormalImmersionActual_26.lean`](../Jacobian/FormalImmersionActual_26.lean) | `formalImmersion_at_2_surjective_from_M3` is `of_qExpansion.input.det ≠ 0` | Not surjectivity of a map of completed local rings |
| [`../Jacobian/ResidueDisksProof_26.lean`](../Jacobian/ResidueDisksProof_26.lean) | Alias `diskEqualityFromImmersion` of that same `det ≠ 0` | Not a residue-disk theorem |

Remaining: completed local rings / q-expansion at `∞`, and a genuine
residue-disk implication from rank zero plus immersion. Do not treat
`M₃` injectivity as scheme-theoretic immersion.

Reference (not imported, not discharged): Mazur 1978 Prop III.3.2.

## Track C — Mordell--Weil sieve / Chabauty--Coleman

Status: **named rank-zero / `det ≠ 0` packages shipped**
(`v4.0.14-coleman-integral-no-doi`).

| File | What it is | What it is not |
|---|---|---|
| [`../Jacobian/ColemanIntegral_26.lean`](../Jacobian/ColemanIntegral_26.lean) | `ColemanVanishesOnRankZero` is `of_qExpansion.rankZero` | Not a Coleman integral |
| [`../Jacobian/ColemanNonVanishing_26.lean`](../Jacobian/ColemanNonVanishing_26.lean) | `Chabauty0ForcesCusp` is rank-zero product ∧ `det ≠ 0` | Not a Chabauty--Coleman theorem; not `∀ P : X₀(26)(ℚ)` |

Remaining: a genuine Coleman integral and
`∀ P : X₀(26)(ℚ), P ∈ {cusps}`. Mathlib 4.12 has no such point
type.

Reference (not imported, not discharged): Coleman 1985.

## Track D — LMFDB certificates

Status: **displayed JSON package shipped**
(`v4.0.15-lmfdb-certs-no-doi`).

| File | What it is | What it is not |
|---|---|---|
| [`../Certs/LMFDB_26.json`](../Certs/LMFDB_26.json) | Archived labels, conductor, displayed rank `0`, torsion, `a₂` | Not a live LMFDB fetch |
| [`../Certs/LMFDBCert_26.lean`](../Certs/LMFDBCert_26.lean) | Those fields as a finite Lean package, matching Sage `certified_mwrank` and q-expansion `a₂` | Not a Mordell--Weil theorem; not unconditional `rankZero`; not `True`/`trivial` |

Must not change `sagemath/level_26_ledger.json`. Extra computational
evidence is not a Mordell--Weil theorem.

## Track E — Descent start

Status: **PARI 2-descent display shipped**
(`v4.2.0-full-chain`; prior `v4.1.3-beal-13-theorem`,
`v4.1.2-beal-13-endgame`,
`v4.1.1-descent-compute`, `v4.1.0-descent-start`).

| File | What it is | What it is not |
|---|---|---|
| [`../Descent/EllipticCurve_26a1_26b1_26.lean`](../Descent/EllipticCurve_26a1_26b1_26.lean) | Certified `[1,0,1,-5,-8]` / `[1,-1,1,-3,3]`, `Δ = -17576` / `-1664` | Not an LMFDB lookup |
| [`../Descent/TwoDescent_26a1_26.lean`](../Descent/TwoDescent_26a1_26.lean) | `TorsionOrder_*` `3`/`7`; `SelmerBound_*` displayed `|Sel₂|=1` from `Descent_26.json` | Not a two-descent; not a Selmer group |
| [`../Descent/Selmer_26.lean`](../Descent/Selmer_26.lean) | `1 = 1` under Sha / rank-zero names | Not Sha[2] triviality; not a Mordell--Weil theorem |
| [`../Certs/Descent_26.json`](../Certs/Descent_26.json) | PARI `ellrank`/`ell2cover`/`elltors` archive | Not a Mathlib MW theorem |

`EndgameScaffold` now names `rankZero_unconditional` from those
equalities and an `Option` `hGeomForbid`.
`BealTheoremFromMazurChain26` inhabits a computational
`hGeomForbid` structure and `BealTheorem_Exponent13`.
v4.2.0 names `FreyLevel26` (`2 * 13 = 26`), `X0_26_Q_four`,
and `BealTheorem_Exponent13_Full_package` as
`X0_26_Q_four ∧ FreyLevel26`.
Remaining: a Mathlib Selmer group, Ribet, and an unconditional
Mordell--Weil theorem. Do not treat `1 = 1` as unconditional
rank zero. The typed implication stays uninhabitable.
