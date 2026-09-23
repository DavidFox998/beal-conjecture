# Foundations v30.1.3 Ribet `32a1`/Kraus `a₂₉` reference

This document records the companion `beal-level-26-foundations` release
without vendoring it and without changing the formal status of
`beal-conjecture`.

## Immutable reference

- Branch: `ribet-32a1-kraus-a29-43735b3`
- Commit: `492a29293c1fcd72b4f7f686a7133ffc822ccb52`
- Parent: `0a52ba8af887724bcd36df6433a599452e6eee74`
- Exact merge base: `43735b3b14a9e844d4b4bdf57fa5f68d29e749ee`
- Annotated tag: `v30.1.3-ribet-32a1-kraus-a29-43735b3`
- Version DOI:
  [10.5281/zenodo.22911053](https://doi.org/10.5281/zenodo.22911053)
- Concept DOI:
  [10.5281/zenodo.22379293](https://doi.org/10.5281/zenodo.22379293)
- GitHub release:
  [v30.1.3-ribet-32a1-kraus-a29-43735b3](https://github.com/DavidFox998/beal-level-26-foundations/releases/tag/v30.1.3-ribet-32a1-kraus-a29-43735b3)
- Predecessor software version:
  [10.5281/zenodo.22910834](https://doi.org/10.5281/zenodo.22910834)
- Predecessor structural tag in this repository:
  `v30.0.0-level-26-structural-verification` at `af520d36`.

## Ribet closure methodology

The release records the `928 → 32` route only in its valid forward order:

1. Wiles/BCDT modularity data for the displayed Frey curve;
2. an attached geometric mod-`13` representation and concrete absolute
   irreducibility;
3. Tate inertia, Kodaira `I_(26k)`, and local conductor data at `29`;
4. the global Néron conductor and its displayed `32`/`928` split;
5. a produced residual eigenform at level `32`;
6. exact identification of that eigenform with the recorded `32a1`
   coefficient table;
7. the good-reduction mismatch with `a₂₉(32a1) = -10`; and
8. complete Kraus elimination, including all bad-reduction residue classes.

The numerical surface

`Δ = 16A⁸B⁸(A⁴+B⁴)²`, `v₂₉(Δ) = 26v₂₉(B+3)`,
`13 ∣ v₂₉(Δ)`, `928/29 = 32`, `32*29 = 928`, `928 ≠ 32`,
`29 ∤ 32`, `|SL₂(F₁₃)| = 2184`, `48 < 2184`, and
`a₂₉(32a1) = -10`

is proved. It is not used backwards to construct modularity, a Galois
representation, irreducibility, Tate or Néron data, level lowering, an
eigenform, its `32a1` identification, or complete Kraus elimination. Those
remain explicit constructed data or proposition boundaries.

## Reproducibility

- Lean: `v4.12.0`
- Mathlib: `809c3fb3b5c8f5d7dace56e200b426187516535a`
- Mathlib `inputRev`: `v4.12.0`
- Manifest lock identifier: `83739542`
- Phase reference: `2b60ccd1037cdbb90b1de22391aa38125cffee83`
- Manifest SHA-256:
  `c7dbd5785b52afccc90ba404fef4a8f3ff12b549235698677a495fdc57ee7fc6`
- Cache restored: 5,134 files
- Combined build: 5,210 jobs
- `BealMatveevBealV25B0Search`: `5148/5210`
- `TateCurve.BlockerDoc`: `5175/5210`
- `TateCurve.ClosureContinued`: `5176/5210`
- `TateCurve.Neron32_928InertiaQ13`: `5177/5210`
- `MazurCurve.X0_13FreyJBorel`: `5178/5210`
- `RibetCurve.Ribet32a1KrausA29`: `5188/5210`
- `RibetCurve.BlockerDoc`: `5189/5210`
- `MazurCurve.BlockerDoc`: `5190/5210`
- `Conditional32Newform.Bridge`: `5204/5210`
- `KolyvaginCurve.BlockerDoc`: `5208/5210`
- `RequiresTateMazurRibetFor32.Doc`: `5209/5210`
- No `lake update`
- No vendoring

The new theorems' reported dependencies are subsets of
`[propext, Classical.choice, Quot.sound]`; the module introduces no `sorry`,
`sorryAx`, axiom declaration, `native_decide`, or `:= True`.