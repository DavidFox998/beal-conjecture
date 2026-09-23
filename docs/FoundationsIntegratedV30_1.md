# Foundations v30.1 integrated conditional level-32 reference

This document records the companion `beal-level-26-foundations` release
without changing the formal status of `beal-conjecture`.

## Immutable reference

- Branch:
  `integrated-43735b3-full-tate-mazur-ribet-kolyvagin-conditional-32`
- Commit: `75a07c0f8d369613e5cbae77661077178f6fc6ed`
- Parent: `59f62e80ce8478d1a95b21f97b07ccb27e7aaf36`
- Exact merge base: `43735b3b14a9e844d4b4bdf57fa5f68d29e749ee`
- Annotated tag: `v30.1.0-integrated-full-43735b3`
- Tag object: `079c639abff33b6a2c511338a29dccac81df8814`
- Version DOI:
  [10.5281/zenodo.22909486](https://doi.org/10.5281/zenodo.22909486)
- Concept DOI:
  [10.5281/zenodo.22379293](https://doi.org/10.5281/zenodo.22379293)
- GitHub release:
  [v30.1.0-integrated-full-43735b3](https://github.com/DavidFox998/beal-level-26-foundations/releases/tag/v30.1.0-integrated-full-43735b3)

The predecessor in this repository is the unchanged annotated tag
`v30.0.0-level-26-structural-verification` at `af520d3`.

## Integrated methodology

The release places the four full formal surfaces in one documented dependency
order:

1. `TateCurve` supplies the proved Frey discriminant and valuation numerics
   while leaving curve-attached Tate uniformization, Tate's algorithm, the
   Néron model, cyclotomic inertia, and residual unramifiedness explicit.
2. `MazurCurve` supplies concrete point-level and finite calculations while
   leaving the geometric mod-`13` representation, absolute irreducibility,
   subgroup-scheme interpretation, and complete `X₀(13)` exclusion explicit.
3. `RibetCurve` records the intended `928 → 32` transition while leaving
   Wiles/BCDT modularity, genuine level lowering, `32a1` identification, and
   complete Kraus elimination explicit.
4. `KolyvaginCurve` separates the displayed values `L/Ω = 1/3`, `L/Ω = 1/7`,
   and `Sel₂_card = 1` from formal L-functions, periods, Kato–Kolyvagin,
   Mordell–Weil finite generation, Selmer exact sequences, and concrete
   `Fintype` witnesses.

`Conditional32Newform.Bridge.has_newform_at_level_32_of_assumptions` takes
exactly the named Mazur, Tate, and Ribet assumptions.  Its conclusion is
proposition-valued evidence, not a constructed Mathlib newform.  The axiom
report is `[propext, Classical.choice, Quot.sound]`, with no `sorryAx`.

## Reproducibility

- Lean: `v4.12.0`
- Mathlib: `809c3fb3b5c8f5d7dace56e200b426187516535a`
- Mathlib `inputRev`: `v4.12.0`
- Manifest lock identifier: `83739542`
- Phase reference: `2b60ccd1037cdbb90b1de22391aa38125cffee83`
- Cache restored: 5,134 files
- Combined build: 5,206 jobs
- No `lake update`

This documentation reference does not vendor the integrated branch into
`beal-conjecture` and does not alter its exact merge base.