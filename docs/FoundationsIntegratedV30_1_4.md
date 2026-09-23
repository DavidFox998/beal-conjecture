# Foundations v30.1.4 Kolyvagin `L/Ω`/Selmer/`Fintype` reference

This document records the companion `beal-level-26-foundations` release
without vendoring it and without changing the formal status of
`beal-conjecture`.

## Immutable reference

- Branch: `kolyvagin-L-Omega-Sel2-Fintype-43735b3`
- Commit: `e0d538ac2f344a75586fe2745e5867944ec8e429`
- Parent: `492a29293c1fcd72b4f7f686a7133ffc822ccb52`
- Exact merge base: `43735b3b14a9e844d4b4bdf57fa5f68d29e749ee`
- Annotated tag: `v30.1.4-kolyvagin-L-Omega-Sel2-Fintype-43735b3`
- Version DOI:
  [10.5281/zenodo.22911318](https://doi.org/10.5281/zenodo.22911318)
- Concept DOI:
  [10.5281/zenodo.22379293](https://doi.org/10.5281/zenodo.22379293)
- GitHub release:
  [v30.1.4-kolyvagin-L-Omega-Sel2-Fintype-43735b3](https://github.com/DavidFox998/beal-level-26-foundations/releases/tag/v30.1.4-kolyvagin-L-Omega-Sel2-Fintype-43735b3)
- Predecessor software version:
  [10.5281/zenodo.22911053](https://doi.org/10.5281/zenodo.22911053)
- Predecessor structural tag in this repository:
  `v30.0.0-level-26-structural-verification` at `af520d36`.

## Kolyvagin closure methodology

The release records the analytic and two-descent routes only in their valid
forward order:

1. construct curve-attached Hasse--Weil `L`-functions and positive periods;
2. identify their normalized values with the displayed rationals;
3. derive analytic nonvanishing from those exact identifications;
4. apply an explicit Kato--Kolyvagin boundary to obtain finite
   Mordell--Weil and Tate--Shafarevich conclusions;
5. separately construct formal two-Selmer exact sequences and identify their
   cardinalities with the displayed values;
6. apply the explicit singleton-Selmer and finite-generation boundary; and
7. project actual `Fintype` witnesses for the two rational-point groups.

The numerical surface

`L/Ω(26a1) = 1/3`, `L/Ω(26b1) = 1/7`,
`Sel₂_card(26a1) = Sel₂_card(26b1) = 1`, and `2^dim = 1`,

together with the preceding Tate, Mazur, and Ribet numerics, is proved. It is
not used backwards to construct an `L`-function, period, Galois
representation, Kato--Kolyvagin theorem, Mordell--Weil finite-generation
proof, Selmer exact sequence, or `Fintype` witness.

The endpoint `Nonempty (Fintype E(ℚ))` is deliberately distinct from the
older `Subsingleton E(ℚ)` encoding. The project proves
`¬Subsingleton E(ℚ)` for both curves because nonzero rational torsion is
present; this is compatible with finite Mordell--Weil groups.

## Reproducibility

- Lean: `v4.12.0`
- Mathlib: `809c3fb3b5c8f5d7dace56e200b426187516535a`
- Mathlib `inputRev`: `v4.12.0`
- Manifest lock identifier: `83739542`
- Phase reference: `2b60ccd1037cdbb90b1de22391aa38125cffee83`
- Manifest SHA-256:
  `c7dbd5785b52afccc90ba404fef4a8f3ff12b549235698677a495fdc57ee7fc6`
- Combined build: 5,211 jobs
- `BealMatveevBealV25B0Search`: `5148/5211`
- `KolyvaginCurve.BlockerDoc`: `5186/5211`
- `MazurCurve.BlockerDoc`: `5187/5211`
- `Conditional32Newform.Bridge`: `5193/5211`
- `TateCurve.BlockerDoc`: `5198/5211`
- `TateCurve.ClosureContinued`: `5199/5211`
- `TateCurve.Neron32_928InertiaQ13`: `5200/5211`
- `MazurCurve.X0_13FreyJBorel`: `5201/5211`
- `RibetCurve.BlockerDoc`: `5207/5211`
- `RequiresTateMazurRibetFor32.Doc`: `5208/5211`
- `RibetCurve.Ribet32a1KrausA29`: `5209/5211`
- `KolyvaginCurve.KolyvaginL_OmegaSel2Fintype`: `5210/5211`
- No `lake update`
- No vendoring

The new theorems' reported dependencies are subsets of
`[propext, Classical.choice, Quot.sound]`; the module introduces no `sorry`,
`sorryAx`, axiom declaration, `native_decide`, or `:= True`.