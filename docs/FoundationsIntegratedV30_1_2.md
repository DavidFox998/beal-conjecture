# Foundations v30.1.2 Mazur `X₀(13)` Frey-`j`/Borel reference

This document records the companion `beal-level-26-foundations` release
without vendoring it and without changing the formal status of
`beal-conjecture`.

## Immutable reference

- Branch: `mazur-x0-13-frey-j-borel-43735b3`
- Commit: `0a52ba8af887724bcd36df6433a599452e6eee74`
- Parent: `bb4980fb0dba2c2d51c8d928935ffa647d786754`
- Exact merge base: `43735b3b14a9e844d4b4bdf57fa5f68d29e749ee`
- Annotated tag: `v30.1.2-mazur-x0-13-frey-j-borel-43735b3`
- Version DOI:
  [10.5281/zenodo.22910834](https://doi.org/10.5281/zenodo.22910834)
- Concept DOI:
  [10.5281/zenodo.22379293](https://doi.org/10.5281/zenodo.22379293)
- GitHub release:
  [v30.1.2-mazur-x0-13-frey-j-borel-43735b3](https://github.com/DavidFox998/beal-level-26-foundations/releases/tag/v30.1.2-mazur-x0-13-frey-j-borel-43735b3)
- Predecessor software version:
  [10.5281/zenodo.22910461](https://doi.org/10.5281/zenodo.22910461)
- Predecessor structural tag in this repository:
  `v30.0.0-level-26-structural-verification` at `af520d36`.

## Mazur closure methodology

The release records the degree-`13` isogeny route only in its valid forward
order:

1. concrete point-level `X₀(13)` data;
2. an exact table containing the two Fricke cusps, kept distinct from the
   infinitely many rational points on the genus-zero parameter line;
3. a noncuspidal parameter `t ≠ 0` and the exact Fricke function
   `(t²+5t+13)(t⁴+7t³+20t²+19t+1)³/t`;
4. curve-attached Frey data satisfying `j = c₄³/Δ`;
5. a constructed Borel-reducibility/Fricke-image equivalence;
6. the Frey-specific global exclusion under `29 ∣ B+3`; and
7. the forward absence of a rational cyclic `13`-isogeny.

The numerical surface

`|SL₂(F₁₃)| = 2184`, `48 < 2184`, `288/48 = 6`, `13 = 2²+3²`,
`g(X₀(13)) = 0`, `#cusps = 2`, `928/29 = 32`, and `32*29 = 928`

is proved. It is not used backwards to construct a modular curve, point-level
moduli, geometric torsion, a Galois representation, a Borel theorem, or a
global rational-parameter exclusion. Those remain explicit data or
proposition boundaries.

## Reproducibility

- Lean: `v4.12.0`
- Mathlib: `809c3fb3b5c8f5d7dace56e200b426187516535a`
- Mathlib `inputRev`: `v4.12.0`
- Manifest lock identifier: `83739542`
- Phase reference: `2b60ccd1037cdbb90b1de22391aa38125cffee83`
- Manifest SHA-256:
  `c7dbd5785b52afccc90ba404fef4a8f3ff12b549235698677a495fdc57ee7fc6`
- Cache restored: 5,134 files
- Combined build: 5,209 jobs
- New module: `5178/5209`
- `MazurCurve.BlockerDoc`: `5179/5209`
- `Conditional32Newform.Bridge`: `5201/5209`
- `KolyvaginCurve.BlockerDoc`: `5207/5209`
- `RequiresTateMazurRibetFor32.Doc`: `5208/5209`
- No `lake update`
- No vendoring

The new theorems' reported dependencies are
`[propext, Classical.choice, Quot.sound]`; the module introduces no `sorry`,
`sorryAx`, axiom declaration, `native_decide`, or `:= True`.