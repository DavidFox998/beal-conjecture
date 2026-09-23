# Foundations v30.1.1 Tate-closure continued reference

This document records the companion `beal-level-26-foundations` release
without vendoring it and without changing the formal status of
`beal-conjecture`.

## Immutable reference

- Branch: `tate-neron-32-928-inertia-q13-43735b3`
- Commit: `bb4980fb0dba2c2d51c8d928935ffa647d786754`
- Parent: `550cf745a37ea3bb0c213b4adc5a94970c85641f`
- Exact merge base: `43735b3b14a9e844d4b4bdf57fa5f68d29e749ee`
- Annotated tag: `v30.1.1-tate-closure-continued-43735b3`
- Version DOI:
  [10.5281/zenodo.22910461](https://doi.org/10.5281/zenodo.22910461)
- Concept DOI:
  [10.5281/zenodo.22379293](https://doi.org/10.5281/zenodo.22379293)
- GitHub release:
  [v30.1.1-tate-closure-continued-43735b3](https://github.com/DavidFox998/beal-level-26-foundations/releases/tag/v30.1.1-tate-closure-continued-43735b3)
- Predecessor software version:
  [10.5281/zenodo.22909486](https://doi.org/10.5281/zenodo.22909486)
- Predecessor structural tag in this repository:
  `v30.0.0-level-26-structural-verification` at `af520d36`.

## Tate closure methodology

The release records the local argument only in its valid forward order:

1. full convergent `j(q)` series and inversion;
2. the Tate elliptic curve on `ℚ_29ˣ/q^ℤ`;
3. exact Tate/Frey `j`-equalities;
4. Tate-algorithm evidence for `I_(26k)`, where `k = v₂₉(B+3)`;
5. a constructed Néron model and the `32`/`928` identification,
   with `928 = 29 * 32`;
6. the cyclotomic inertia action through `q^(1/13)` for a curve-attached
   parameter satisfying `v₂₉(q) = v₂₉(Δ)`; and
7. the forward mod-`13` unramifiedness projection.

The numerical surface

`v₂₉(Δ) = 26v₂₉(B+3)`, `13 ∣ v₂₉(Δ)`, `928/29 = 32`,
`32*29 = 928`, `928 ≠ 32`, and `29 ∤ 32`

is proved.  It is not used backwards to construct Tate uniformization,
Tate's algorithm, a Néron model, a residual representation, or the
cyclotomic inertia formula.  Those remain explicit proposition or evidence
boundaries.

## Reproducibility

- Lean: `v4.12.0`
- Mathlib: `809c3fb3b5c8f5d7dace56e200b426187516535a`
- Mathlib `inputRev`: `v4.12.0`
- Manifest lock identifier: `83739542`
- Phase reference: `2b60ccd1037cdbb90b1de22391aa38125cffee83`
- Manifest SHA-256:
  `c7dbd5785b52afccc90ba404fef4a8f3ff12b549235698677a495fdc57ee7fc6`
- Cache restored: 5,134 files
- Combined build: 5,208 jobs
- New module: `5207/5208`
- No `lake update`
- No vendoring

The new module's reported dependencies are
`[propext, Classical.choice, Quot.sound]`; it introduces no `sorry`,
`sorryAx`, axiom declaration, `native_decide`, or `:= True`.