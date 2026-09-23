# Foundations v30.1.7 final Beal reference

This document records the companion `beal-level-26-foundations` release
without vendoring it and without changing the formal status of
`beal-conjecture`.

## Immutable reference

- Branch: `beal-final-43735b3`
- Commit: `995b9c4810869c1ce6531b32080e668c1f5ff233`
- Parent: `70bdf8149b377861a1504ef7d4932711e15e6905`
- Exact merge base: `43735b3b14a9e844d4b4bdf57fa5f68d29e749ee`
- Annotated tag: `v30.1.7-beal-final-43735b3`
- Annotated tag object:
  `4254aac7923b1ac48f33a5359c90c4e1bd242bf3`
- Version DOI:
  [10.5281/zenodo.22912430](https://doi.org/10.5281/zenodo.22912430)
- Concept DOI:
  [10.5281/zenodo.22379293](https://doi.org/10.5281/zenodo.22379293)
- GitHub release:
  [v30.1.7-beal-final-43735b3](https://github.com/DavidFox998/beal-level-26-foundations/releases/tag/v30.1.7-beal-final-43735b3)
- Predecessor software version:
  [10.5281/zenodo.22911918](https://doi.org/10.5281/zenodo.22911918)
- Predecessor structural tag in this repository:
  `v30.0.0-level-26-structural-verification` at `af520d36`.

## Final forward interface

`BealFinal.Main` preserves the complete forward order:

1. Tate continued closure and Néron `32`/`928` with `q^(1/13)` inertia;
2. Mazur point-level `X₀(13)`, Fricke, attached Frey `j=c₄³/Δ`, Borel,
   and no-rational-`13`-isogeny boundaries;
3. Ribet modularity, residual representation, conductor, level lowering,
   `32a1`, `a₂₉=-10`, and complete Kraus elimination;
4. the logically separate Kolyvagin `L/Ω`, Selmer, finite-generation, and
   actual `Fintype` line;
5. the Conditional-32 bridge through exactly three explicit typed
   conversions;
6. the exact Requires six-stage dependency table;
7. the general common-prime conclusion for positive bases and exponents at
   least three.

The final interface does not infer the two remaining boundaries from
displayed arithmetic. `BealFinalData.fullB0Search` explicitly carries the
full `B ≤ 10^6` search proposition, while the imported source proves only
`B < 1000`. `BealFinalData.bealTheorem` explicitly carries the general Beal
common-prime theorem. The projection theorems preserve these proof sources
instead of manufacturing them from the `(4,4,13)` numerical surface.

The final numerical theorem combines the established Frey, Tate, Mazur,
Ribet, Kolyvagin, and Conditional-32 equalities with
`C1_floor=143186215390`, `B0_nat=1000000`, and the proved `B<1000`
exhaustive slice.

## Reproducibility

- Lean: `v4.12.0`
- Mathlib: `809c3fb3b5c8f5d7dace56e200b426187516535a`
- Mathlib `inputRev`: `v4.12.0`
- Manifest lock identifier: `83739542`
- Phase reference: `2b60ccd1037cdbb90b1de22391aa38125cffee83`
- Manifest SHA-256:
  `c7dbd5785b52afccc90ba404fef4a8f3ff12b549235698677a495fdc57ee7fc6`
- Combined build: 5,214 jobs
- `BealMatveevBealV25B0Search`: `5148/5214`
- `Conditional32Newform.Bridge`: `5181/5214`
- `TateCurve.BlockerDoc`: `5190/5214`
- `MazurCurve.BlockerDoc`: `5192/5214`
- `TateCurve.ClosureContinued`: `5195/5214`
- `TateCurve.Neron32_928InertiaQ13`: `5199/5214`
- `RibetCurve.BlockerDoc`: `5205/5214`
- `KolyvaginCurve.BlockerDoc`: `5206/5214`
- `RequiresTateMazurRibetFor32.Doc`: `5207/5214`
- `MazurCurve.X0_13FreyJBorel`: `5208/5214`
- `RibetCurve.Ribet32a1KrausA29`: `5209/5214`
- `KolyvaginCurve.KolyvaginL_OmegaSel2Fintype`: `5210/5214`
- `Conditional32Newform.BridgeForward`: `5211/5214`
- `RequiresTateMazurRibetFor32.ForwardDoc`: `5212/5214`
- `BealFinal.Main`: `5213/5214`
- No `lake update`
- No vendoring

The three final projection theorems report dependencies exactly within
`[propext, Classical.choice, Quot.sound]`. The numerical surface additionally
inherits `Lean.ofReduceBool` from the pre-existing finite search certificates.
The module introduces no `sorry`, `sorryAx`, axiom declaration,
`native_decide`, or `:= True`.