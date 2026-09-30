# v35 odd-reduction starter — 2026-09-30 UTC

Branch: `beal-v35-odd-reduction`. No merge to `main`, no `v35` tag, no Zenodo mint.

## Base

`git log --oneline` on this branch begins:

- `886f28df` docs: v34 honest nodal scope
- `bbfc33fb` 461-line even packaging
- `7171cf2b` dense `D(2)` and the nodal chart equation

`6ee63920` is an ancestor, not the third commit. It carries DOI `10.5281/zenodo.23054568`. `origin/main` is `3dd7728f` (the citation-check CI fix) and is not contained in this branch. v34 tag peels to `886f28df`.

`lake build BealEven` on that base: exit 0.

## Library

`lakefile.lean` adds `lean_lib BealOdd` with

```
globs := #[.one `Beal.«Beal.Odd».FullReduction]
```

Directory `Beal/Beal.Odd/FullReduction.lean` is the module
`Beal.«Beal.Odd».FullReduction`, not `Beal.Beal.Odd.FullReduction`.
This Lake version registers the module with `.one`, not a `roots` field.

## Commands

- `lake build BealOdd`: exit 0. `Built Beal.«Beal.Odd».FullReduction`. `Build completed successfully.`
- `lake build BealEven`: exit 0. `Build completed successfully.`

`Beal/Beal.Odd/FullReduction.lean` is 83 lines. It imports
`Beal.«Beal.Even».FullReduction` and re-exports:

- `reused_nodal_union`: over a domain, `E_nodal = lineV ∪ lineVU`
- `reused_lines_meet_at_origin`: the lines meet only at `(0,0)`
- `reused_F2_points`: `(0,0)`, `(1,0)`, `(1,1)`
- `reused_D2_dense` and `reused_generic_open_dense`
- `reused_twoChart_finiteType`

`odd_Beal` and `odd_branch_chart` are uninhabited `def`s. Odd exponents are not shown to avoid the `2`-chart, and no path to `2 ∤ X` or `2 ∤ Y` is constructed. Printed axioms on the re-exports are `propext`, `Classical.choice`, and `Quot.sound`, except `reused_lines_meet_at_origin`, which prints `[propext, Quot.sound]`. No `sorry`.

## Still excluded

`UniversallyClosed`, `IsProperMap`, `E ≅ ℙ¹`, the actual special-fibre pullback versus quotient `Proj`, and degree-one or nonzero `overline{2t}`.
