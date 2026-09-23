# Foundations v30.1.6 Requires forward-Doc reference

This document records the companion `beal-level-26-foundations` release
without vendoring it and without changing the formal status of
`beal-conjecture`.

## Immutable reference

- Branch: `requires-tate-mazur-ribet-forward-43735b3`
- Commit: `70bdf8149b377861a1504ef7d4932711e15e6905`
- Parent: `75d546a56de5ff901faf50611c5fd3d449612aab`
- Exact merge base: `43735b3b14a9e844d4b4bdf57fa5f68d29e749ee`
- Annotated tag: `v30.1.6-requires-forward-43735b3`
- Annotated tag object:
  `1e873612b70ed546e19d09e6058722784e56cd18`
- Version DOI:
  [10.5281/zenodo.22911918](https://doi.org/10.5281/zenodo.22911918)
- Concept DOI:
  [10.5281/zenodo.22379293](https://doi.org/10.5281/zenodo.22379293)
- GitHub release:
  [v30.1.6-requires-forward-43735b3](https://github.com/DavidFox998/beal-level-26-foundations/releases/tag/v30.1.6-requires-forward-43735b3)
- Predecessor software version:
  [10.5281/zenodo.22911502](https://doi.org/10.5281/zenodo.22911502)
- Predecessor structural tag in this repository:
  `v30.0.0-level-26-structural-verification` at `af520d36`.

## Integrated forward dependency table

`RequiresTateMazurRibetFor32.ForwardDoc` preserves the exact forward order:

1. `TateCurve.ClosureContinued` exposes the full Tate `j`-series with
   remainder and the two exact uniformization-certificate `j`-equalities.
2. `TateCurve.Neron32_928InertiaQ13` exposes `I_(26k)`, the
   `q`-valuation, the Néron `32`/`928` split, the `q^(1/13)`
   cyclotomic-inertia formula, and mod-`13` unramifiedness.
3. `MazurCurve.X0_13FreyJBorel` exposes point-level `X₀(13)` data, the
   two-cusp Fricke table and exact formula, the attached identity
   `j=c₄³/Δ`, the Borel boundary, and the forward no-rational-`13`-isogeny
   conclusion.
4. `RibetCurve.Ribet32a1KrausA29` exposes Frey modularity, the concrete
   residual representation and irreducibility, local inertia and conductor,
   the global Néron conductor, level lowering, identification with `32a1`,
   `a₂₉=-10`, and complete bad-reduction elimination.
5. `KolyvaginCurve.KolyvaginL_OmegaSel2Fintype` keeps the separate
   analytic line explicit: constructed `L`-functions and periods,
   normalized values `1/3` and `1/7`, Selmer exact sequences and
   cardinality one, finite generation, and actual `Fintype` witnesses.
6. `Conditional32Newform.BridgeForward` supplies exactly the three older
   abstract hypotheses to `HasNewformAtLevel32`.

The concrete Mazur, Tate, and Ribet propositions are not definitionally
identical to the older bridge propositions. The integrated record therefore
retains all three explicit typed conversion functions. It does not conflate
the interfaces and does not infer any construction boundary from numerics.

The parallel numerical surface contains
`Δ=16A⁸B⁸(A⁴+B⁴)²`, `v₂₉(Δ)=26v₂₉(B+3)`,
`13∣v₂₉(Δ)`, `928/29=32`, `32·29=928`, `928≠32`, `29∤32`,
`|SL₂(𝔽₁₃)|=2184`, `48<2184`, `a₂₉=-10`,
`L/Ω=1/3,1/7`, `Sel₂_card=1`, and `2^dim=1`.
It is never used backwards to manufacture geometric, Galois, automorphic,
analytic, Selmer, finite-generation, or finite-type data.

## Reproducibility

- Lean: `v4.12.0`
- Mathlib: `809c3fb3b5c8f5d7dace56e200b426187516535a`
- Mathlib `inputRev`: `v4.12.0`
- Manifest lock identifier: `83739542`
- Phase reference: `2b60ccd1037cdbb90b1de22391aa38125cffee83`
- Manifest SHA-256:
  `c7dbd5785b52afccc90ba404fef4a8f3ff12b549235698677a495fdc57ee7fc6`
- Combined build: 5,213 jobs
- `BealMatveevBealV25B0Search`: `5148/5213`
- `Conditional32Newform.Bridge`: `5182/5213`
- `TateCurve.BlockerDoc`: `5187/5213`
- `TateCurve.ClosureContinued`: `5190/5213`
- `MazurCurve.BlockerDoc`: `5193/5213`
- `TateCurve.Neron32_928InertiaQ13`: `5194/5213`
- `MazurCurve.X0_13FreyJBorel`: `5205/5213`
- `RibetCurve.BlockerDoc`: `5206/5213`
- `KolyvaginCurve.BlockerDoc`: `5207/5213`
- `RibetCurve.Ribet32a1KrausA29`: `5208/5213`
- `RequiresTateMazurRibetFor32.Doc`: `5209/5213`
- `KolyvaginCurve.KolyvaginL_OmegaSel2Fintype`: `5210/5213`
- `Conditional32Newform.BridgeForward`: `5211/5213`
- `RequiresTateMazurRibetFor32.ForwardDoc`: `5212/5213`
- No `lake update`
- No vendoring

The four principal new theorems report dependencies exactly within
`[propext, Classical.choice, Quot.sound]`. The module introduces no `sorry`,
`sorryAx`, axiom declaration, `native_decide`, or `:= True`.