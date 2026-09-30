# v33 working release notes — three-open special-fibre gluing

This is a proposed release description, not a tag, GitHub release, or DOI.
There is no `v32` or `v33` Git tag or root `VERSION` file in this checkout.
The v32 baseline below is the preceding working milestone as described for
this release, not an independently tagged artifact.

## From v32 to v33

The v32 working milestone had a two-chart partial comparison and polynomial
presentations of the individual `2t`, `Xt`, and `Yt` opens. It had no
polynomial presentation of a product overlap and no global gluing of the
three reduced chart spectra. The distinction between a chartwise
identification and a global isomorphism mattered.

The v33 working tree adds these checked modules (physical line counts):

| File in `Beal/Beal.General/` | Lines | Checked contribution |
| --- | ---: | --- |
| `CompatChart2t.lean` | 191 | `chart_eq_quotient_2t`: the divided `2t` chart with principal relation `(F)` is the quotient-induced chart. |
| `CompatChartXt.lean` | 105 | `XtRelations_saturation` and `chart_eq_quotient_Xt`: the `Xt` graph relation ideal is the saturation `(G_X : X^∞)` and the chart equivalence is quotient-induced. |
| `CompatChartYt.lean` | 105 | `YtRelations_saturation` and `chart_eq_quotient_Yt`: the corresponding `(G_Y : Y^∞)` saturation and quotient-induced equivalence. |
| `CompatPolynomialRestrictions.lean` | 155 | Six directed polynomial-to-abstract restriction equalities, for `2t↔Xt`, `2t↔Yt`, and `Xt↔Yt`; the chosen restrictions are induced by the integral quotient maps. |
| `SpecialFibrePolynomialCover.lean` | 124 | Copies the three-basic-open `Proj` cover along chart isomorphisms so its **literal** objects are the three polynomial spectra. |
| `SpecialFibreGluing.lean` | 167 | Six separately composed `Spec.map` compatibilities, the abstract triple cocycle, and `specialFibreProjPolynomialGlueIso`. |

`TateEvenSpecialFibre.lean` (1,951 lines) supplies the three-open cover
`D₊(overline{2t}), D₊(overline{Xt}), D₊(overline{Yt})` of the quotient
`Proj`, affine restriction squares for ordered pairs over product opens,
and the two-adic base-change comparison of the special fibre with
`Proj(Rees/(2))`. The global isomorphism in `SpecialFibreGluing.lean`
identifies this reduced Rees `Proj` with the gluing of
`S_2t/(2), S_Xt/(2), S_Yt/(2)` as polynomial-spectrum chart objects.
The product overlaps remain **abstract pullbacks** throughout: no
polynomial presentation of an overlap or saturation of a product
overlap is asserted. This avoids the previously observed elaboration
stall without suppressing any overlap compatibility.

For the example `y² + xy = x³ + 8`, put `x = 2U`, `y = 2V`.
Then `f(2U,2V) = 4(V² + UV − 2U³ − 2)`, so the reduced `2t` chart
has equation `V² + UV = 0`. Its point `U = V = 0` is the direction
`[2t:Xt:Yt] = [1:0:0]`, lying in `D₊(overline{2t})` but not in
`D₊(overline{Xt})` or `D₊(overline{Yt})`.
This is an illustrative specialization, not a separately named Lean theorem.

## Generic-fibre boundary

`TateEvenGenericFibre.lean` already proves that the centre becomes the
unit ideal upon inverting `2`, identifies the generic base open with
the scalar basic open contained in `D₊(2t)`, and constructs a
scheme-level isomorphism of the actual blow-up's base change over
`D(2)` with the localized translated surface. Its proof of
compatibility with the base morphisms is separate. This existing
949-line module is not a new under-250-line `TateEvenBranch.lean`
deliverable: that filename already names a 2,250-line module.
Do not claim that packaging or a *full* `BealGeneral` build is verified.

## Verification and limits

From the repository root, with the pinned Lake dependencies available:

```sh
lake env lean Beal/Beal.General/CompatChart2t.lean
lake env lean Beal/Beal.General/CompatChartXt.lean
lake env lean Beal/Beal.General/CompatChartYt.lean
lake env lean Beal/Beal.General/CompatPolynomialRestrictions.lean
lake env lean Beal/Beal.General/SpecialFibrePolynomialCover.lean
lake env lean Beal/Beal.General/SpecialFibreGluing.lean
git diff --check
```

All six `lake env lean` commands above passed after rehydrating the
pinned Mathlib cache with `lake exe cache get`; all their printed
axiom reports contain exactly `propext`, `Classical.choice`, and
`Quot.sound`. The listed v33 files contain no `sorry`.
A full `lake build BealGeneral` has not been verified in this
release preparation. None of these results proves a general Beal
theorem, minimal regularity, or a new product-overlap presentation.