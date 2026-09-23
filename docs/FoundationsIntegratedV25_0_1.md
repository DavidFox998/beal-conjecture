# Foundations v25.0.1 forward retrofit reference

This document records the companion `beal-level-26-foundations` retrofit
without vendoring it and without changing the formal status of
`beal-conjecture`.

## Immutable reference

- Branch: `v25-forward-43735b3`
- Commit: `385ff85c78c351de83b3fd625a208c9dea003647`
- Tree: `4be5f2f8fc9ee3dd31893a6c99e6b22728e2ca6b`
- Parent: `995b9c4810869c1ce6531b32080e668c1f5ff233`
- Exact merge base: `43735b3b14a9e844d4b4bdf57fa5f68d29e749ee`
- Annotated tag: `v25.0.1-forward-43735b3`
- Annotated tag object:
  `626bbf615e9365a8af4b9f1b290259adee2936fd`
- Version DOI:
  [10.5281/zenodo.22922473](https://doi.org/10.5281/zenodo.22922473)
- Concept DOI:
  [10.5281/zenodo.22379293](https://doi.org/10.5281/zenodo.22379293)
- GitHub release:
  [v25.0.1-forward-43735b3](https://github.com/DavidFox998/beal-level-26-foundations/releases/tag/v25.0.1-forward-43735b3)
- GitHub release ID: `394869393`
- Predecessor software version:
  [10.5281/zenodo.22912430](https://doi.org/10.5281/zenodo.22912430)
- Structural predecessor in this repository:
  `v30.0.0-level-26-structural-verification` at `af520d36`.

## v25 forward dependency order

`BealMatveevBealV25B0Search.Forward` exposes:

1. `MatveevBoundData`, carrying
   `C1_floor=143186215390` and `B0_nat=1000000`;
2. `Level26SearchData`, carrying
   `Δ=16A⁸B⁸(A⁴+B⁴)²`,
   `v₂₉(Δ)=26v₂₉(B+3)`,
   `13∣v₂₉(Δ)`,
   `928/29=32`, and `32·29=928`;
3. `MatveevLevel26ForwardData.searchBelow1000`, carrying the proved
   `B<1000` elimination proposition;
4. `MatveevLevel26ForwardData.fullB0Search`, carrying the full
   `B≤10⁶` proposition as an explicit proof boundary.

The principal declarations are `B0_search_forward`,
`beal_matveev_level26_forward`, and `v25_numerical_surface_forward`.
They only project the ordered input data. In particular, they do not use
the displayed discriminant, valuation, divisibility, or level identities
backwards to construct a Matveev bound, level-lowering theorem, or exhaustive
search certificate.

The existing theorem `gap3_B_lt_1000_no_sol` is the proved source for the
small search. The full `gap3_B_le_B0_no_solution` remains separate and
explicit.

## Reproducibility

- Lean: `v4.12.0`
- Mathlib: `809c3fb3b5c8f5d7dace56e200b426187516535a`
- Mathlib `inputRev`: `v4.12.0`
- Manifest lock identifier: `83739542`
- Phase reference: `2b60ccd1037cdbb90b1de22391aa38125cffee83`
- Manifest SHA-256:
  `c7dbd5785b52afccc90ba404fef4a8f3ff12b549235698677a495fdc57ee7fc6`
- Combined build: 5,215 jobs
- `BealMatveevBealV25B0Search`: `5148/5215`
- `Conditional32Newform.Bridge`: `5181/5215`
- `TateCurve.BlockerDoc`: `5190/5215`
- `MazurCurve.BlockerDoc`: `5192/5215`
- `TateCurve.ClosureContinued`: `5194/5215`
- `TateCurve.Neron32_928InertiaQ13`: `5198/5215`
- `KolyvaginCurve.BlockerDoc`: `5205/5215`
- `MazurCurve.X0_13FreyJBorel`: `5206/5215`
- `RibetCurve.BlockerDoc`: `5207/5215`
- `RequiresTateMazurRibetFor32.Doc`: `5208/5215`
- `RibetCurve.Ribet32a1KrausA29`: `5209/5215`
- `KolyvaginCurve.KolyvaginL_OmegaSel2Fintype`: `5210/5215`
- `Conditional32Newform.BridgeForward`: `5211/5215`
- `RequiresTateMazurRibetFor32.ForwardDoc`: `5212/5215`
- `BealMatveevBealV25B0Search.Forward`: `5213/5215`
- `BealFinal.Main`: `5214/5215`
- No `lake update`
- No vendoring

The three principal retrofit declarations report dependencies exactly within
`[propext, Classical.choice, Quot.sound]`. The new module introduces no
`sorry`, `sorryAx`, axiom declaration, `native_decide`, `Lean.ofReduceBool`,
or `:= True`.