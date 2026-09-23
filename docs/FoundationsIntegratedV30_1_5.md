# Foundations v30.1.5 Conditional-32 forward-bridge reference

This document records the companion `beal-level-26-foundations` release
without vendoring it and without changing the formal status of
`beal-conjecture`.

## Immutable reference

- Branch: `conditional-32-bridge-forward-43735b3`
- Commit: `75d546a56de5ff901faf50611c5fd3d449612aab`
- Parent: `e0d538ac2f344a75586fe2745e5867944ec8e429`
- Exact merge base: `43735b3b14a9e844d4b4bdf57fa5f68d29e749ee`
- Annotated tag: `v30.1.5-conditional-32-bridge-forward-43735b3`
- Version DOI:
  [10.5281/zenodo.22911502](https://doi.org/10.5281/zenodo.22911502)
- Concept DOI:
  [10.5281/zenodo.22379293](https://doi.org/10.5281/zenodo.22379293)
- GitHub release:
  [v30.1.5-conditional-32-bridge-forward-43735b3](https://github.com/DavidFox998/beal-level-26-foundations/releases/tag/v30.1.5-conditional-32-bridge-forward-43735b3)
- Predecessor software version:
  [10.5281/zenodo.22911318](https://doi.org/10.5281/zenodo.22911318)
- Predecessor structural tag in this repository:
  `v30.0.0-level-26-structural-verification` at `af520d36`.

## Conditional-32 closure methodology

The release preserves the three-hypothesis bridge in strict forward order:

1. point-level `X₀(13)`/Borel evidence and the Frey-specific global
   exclusion produce the concrete Mazur conclusion;
2. Tate uniformization, Tate's algorithm, the identified Néron conductor,
   the `q^(1/13)` cyclotomic-inertia formula, and mod-`13` unramifiedness
   produce the concrete Tate conclusion;
3. residual level-`32` data, identification with `32a1`, `a₂₉=-10`, and
   complete Kraus bad-reduction elimination produce the concrete Ribet
   conclusion;
4. three explicit typed conversion boundaries connect those newer concrete
   proposition names to the older Conditional-32 interface names; and
5. exactly the resulting `frey_no_rational_13_isogeny`,
   `Frey_conductor_29_is_Neron`, and `Ribet_928_to_32` hypotheses inhabit
   `HasNewformAtLevel32`.

The conversion boundaries remain explicit because the newer concrete
namespaces and older abstract bridge are not definitionally identical. The
release does not silently conflate them and does not claim them from
numerics.

The numerical surface contains
`Δ=16A⁸B⁸(A⁴+B⁴)²`, `v₂₉(Δ)=26v₂₉(B+3)`,
`13∣v₂₉(Δ)`, `928/29=32`, `32·29=928`, `928≠32`, `29∤32`,
`|SL₂(𝔽₁₃)|=2184`, `48<2184`, `a₂₉=-10`,
`L/Ω=1/3,1/7`, `Sel₂_card=1`, and `2^dim=1`.
None is used backwards to construct geometric, Galois, automorphic,
analytic, Selmer, finite-generation, or finite-type data.

## Reproducibility

- Lean: `v4.12.0`
- Mathlib: `809c3fb3b5c8f5d7dace56e200b426187516535a`
- Mathlib `inputRev`: `v4.12.0`
- Manifest lock identifier: `83739542`
- Phase reference: `2b60ccd1037cdbb90b1de22391aa38125cffee83`
- Manifest SHA-256:
  `c7dbd5785b52afccc90ba404fef4a8f3ff12b549235698677a495fdc57ee7fc6`
- Combined build: 5,212 jobs
- `BealMatveevBealV25B0Search`: `5148/5212`
- `Conditional32Newform.Bridge`: `5171/5212`
- `TateCurve.ClosureContinued`: `5180/5212`
- `TateCurve.Neron32_928InertiaQ13`: `5181/5212`
- `MazurCurve.X0_13FreyJBorel`: `5182/5212`
- `RibetCurve.Ribet32a1KrausA29`: `5189/5212`
- `KolyvaginCurve.KolyvaginL_OmegaSel2Fintype`: `5203/5212`
- `Conditional32Newform.BridgeForward`: `5204/5212`
- `MazurCurve.BlockerDoc`: `5205/5212`
- `RibetCurve.BlockerDoc`: `5206/5212`
- `KolyvaginCurve.BlockerDoc`: `5207/5212`
- `RequiresTateMazurRibetFor32.Doc`: `5208/5212`
- No `lake update`
- No vendoring

The new theorems' reported dependencies are subsets of
`[propext, Classical.choice, Quot.sound]`; the module introduces no `sorry`,
`sorryAx`, axiom declaration, `native_decide`, or `:= True`.