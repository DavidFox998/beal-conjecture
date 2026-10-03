# v34 even-branch Lake build — 2026-09-30 UTC

Branch: `beal-v34-even-reduction`, parent `6ee63920` (tree `f5e6bb89`).
Toolchain: Lean `v4.12.0`. No tag, no push, no Zenodo mint.

## Cache

`lake exe cache get` exit 0. Mathlib v4.12.0 cache: 5134 files, 100% success, unpacked, `Completed successfully!`

## Library globs

`Beal.lean` only imports `Beal.Matveev.MatveevThm14General`. Lake modules are registered in `lakefile.lean`.

Added to `lean_lib BealGeneral` (these were the v33 unknown-module gap):

- `Beal.«Beal.General».CompatChart2t`
- `Beal.«Beal.General».CompatChartXt`
- `Beal.«Beal.General».CompatChartYt`
- `Beal.«Beal.General».CompatPolynomialRestrictions`
- `Beal.«Beal.General».SpecialFibrePolynomialCover`
- `Beal.«Beal.General».SpecialFibreGluing`

`Beal.«Beal.General».TateEvenBranchGenericFibre` was already in that glob list.

New non-default library:

```
lean_lib BealEven where
  globs := #[.one `Beal.«Beal.Even».FullReduction]
```

Directory `Beal/Beal.Even/FullReduction.lean` is the Lean module
`Beal.«Beal.Even».FullReduction`, not `Beal.Beal.Even.FullReduction`.

## Commands and observed results

- `lake build Beal.Beal.Even.FullReduction`: exit 1, **unknown target**. Same dotted-name mismatch recorded in `BUILD_ATTEMPT_v33.md`. No Lean diagnostic.
- First `lake build BealEven`, before the import fix: exit 1. The dependency closure of `TateEvenBranch`, `SpecialFibreGluing`, and `TateEvenBranchGenericFibre` built (through `[2001/2001] Built Beal.«Beal.General».SpecialFibreGluing`). `FullReduction.lean` failed first with `bad import 'Mathlib.Data.Nat.Parity'` (`Mathlib/Data/Nat/Parity.lean` is not in mathlib v4.12.0). That is an import error, not a proof failure.
- Import replaced by `Mathlib.Algebra.Group.Even` and `Mathlib.Data.ZMod.Basic`.
- `lake build BealEven`: exit 0. `Built Beal.«Beal.Even».FullReduction`. `Build completed successfully.`
- `lake build 'Beal.«Beal.Even».FullReduction'`: exit 0. Module replayed. `Build completed successfully.`

`TateEvenBranch.lean` was not edited (2249 lines). `SpecialFibreGluing.lean` is 167 lines. `TateEvenBranchGenericFibre.lean` is 59 lines. `FullReduction.lean` is 130 lines.

## What the passing module contains

Re-exported, and built:

- `Bl_I_regular_at_even_branch` = `evenNodeTwoChart_two_regular`. This is the statement that `2` is a non-zero-divisor in the divided even-node chart ring, under `PadicInt.toZMod W.a₁ = 1`. It is not scheme-regularity of `Bl_I`.
- `generic_fibre_iso` = `evenBranchBlowupGenericFibreIso`: pullback of the Rees blow-up along `D(2)` is isomorphic to `Spec(R_Z[1/2])`.
- `generic_fibre_iso_overBase`, `generic_centre_eq_top`.
- `special_fibre_glue_iso` = `specialFibreProjPolynomialGlueIso`: `Proj(ReesMod2) ≅ Glue` of the three polynomial charts, overlaps abstract.
- `special_fibre_cocycle` = `specialFibreAbstractTripleCocycle`.
- `example_twoChart_fourFactor`: for `y² + xy = x³ + 8`, the `2`-chart substitution `x = 2U`, `y = 2V` gives `4(V² + UV - 2U³ - 2)`. Proved by `ring`.
- `example_reduced_origin` and `example_reduced_three_points`: over `ZMod 2`, `V² + UV = 0` holds at `(0,0)`, `(1,0)`, and `(1,1)`. Proved by `decide`.

`even_Beal` is a `def` of type `Prop` (an even-exponent equation with positive bases, exponents greater than 1, all even, and `Nat.Coprime x y`, implies `False`). No inhabitant is constructed. It is not a corollary.

## What was not declared, because it is not proved

No `theorem proper_birational`. Properness of a global `Bl_I → Spec(R_Z)`, and birationality of that integral model, are not theorems of this repository. The checked input is the generic isomorphism over `D(2)` plus the polynomial-chart glue of `Proj(ReesMod2)`.

No `theorem exceptional_divisor_E`. There is no proof here that `E = V(overline{2t}) ≅ ℙ¹_{𝔽₂}`, and no proof that `(U,V) = (0,0)` lies only in `D₊(overline{2t})`. The reduced equation on the illustrative curve has three `𝔽₂` points, so it does not exhibit a single point.

The two v33 exclusions stay excluded: global identification of the actual special-fibre pullback with the quotient `Proj`, and degree-one / nonzero `overline{2t}`.

No `sorry`, no `sorryAx`, no `True := trivial`, no new axioms. Printed axioms on the re-exports are `[propext, Classical.choice, Quot.sound]`. `example_twoChart_fourFactor` prints `[propext, Quot.sound]`.

## Not done

No tag, no Zenodo mint. `lake build BealGeneral` as a whole was not the target; its modules were built only as the import closure of `BealEven`.

## Extension on the same branch — 2026-09-30 UTC

`lake build BealEven` on the 130-line file: exit 0 (replay).

`FullReduction.lean` is now 280 lines. `lake build BealEven`: exit 0. `Built Beal.«Beal.Even».FullReduction`. `Build completed successfully.`

Added, and built:

- `three_open_cover`, `Xt_chart_saturation`, `Yt_chart_saturation`: the Rees cover by `D₊(2t)`, `D₊(Xt)`, `D₊(Yt)`, and the saturations `J_X = (G_X : X^∞)`, `J_Y = (G_Y : Y^∞)`.
- `base_D2_compl_eq_zeroLocus`: the complement of `D(2)` in `Spec(ℤ_[2])` is `V(2)`.
- `basicOpen_dense_of_ne_zero`, `padic_two_ne_zero`, `base_D2_dense`, `base_D2_ne_bot`: `D(2)` is a nonempty dense open of `Spec(ℤ_[2])`.
- `reduced_equation_factors`: `V² + UV = V(V + U)` over any commutative ring.
- `component_intersection_eq_origin`: the two factors vanish together only at `(U,V) = (0,0)`.
- `reduced_zero_iff_component` and `reduced_zero_iff_component_domain`.
- `example_twoChart_divisible_by_four`, `example_mod_two_drops_two`.
- `example_origin_is_the_node`, `example_point_10_on_first_line_only`, `example_point_11_on_second_line_only`, `example_components_cover_the_three_points`.

Printed axioms are `propext`, `Classical.choice`, and `Quot.sound`, except `reduced_equation_factors` and `component_intersection_eq_origin` (`propext`) and the two integer `ring` facts (`propext`, `Quot.sound`). No `sorryAx`.

Still not declared: `Bl_I_proper : IsProperMap`, `Bl_I_birational`, `E_eq_P1_F2`, and `even_solution_implies_two_divides`. Mathlib v4.12.0 has topological `IsProperMap` and scheme `UniversallyClosed`, and no properness theorem for Rees `Proj`. The `𝔽₂` equation is two lines through a node, with three points, so it is not an isomorphism with `ℙ¹`. `even_Beal` stays an uninhabited `def`. The v33 exclusions stay excluded. `TateEvenBranch.lean` was not edited.

This extension is pushed on `beal-v34-even-reduction` only. It is not merged to `main`, not tagged, and not minted.

## Nodal close on the same branch — 2026-09-30 UTC

`FullReduction.lean` is 461 lines. `lake build BealEven`: exit 0. `Built Beal.«Beal.Even».FullReduction`. `Build completed successfully.` No `sorry` and no `sorryAx` in the axiom report.

Added, and built:

- `E_nodal`, `lineV`, `lineVU`: the affine zero set of `V² + UV` and the two lines. `line_union_subset_E_nodal` over any commutative ring. `E_nodal_eq_union` over a domain: the zero set equals `V(V) ∪ V(V + U)`. `E_meets_only_at_origin`: the lines meet only at `(0,0)`.
- `E_F2_points`: the `𝔽₂` points are `(0,0)`, `(1,0)`, and `(1,1)`. `E_F2_origin_on_both_lines`, `E_F2_point_10_one_component`, `E_F2_point_11_one_component`: the last two points lie on exactly one line. This is not `E ≅ ℙ¹`.
- `twoChart_finiteType`: the divided `2`-chart ring is `Algebra.FiniteType` over `ℤ_[2]`, by the quotient of a polynomial ring in two variables. Finite type is not `UniversallyClosed`. No `IsProperMap` and no `UniversallyClosed` instance for the Rees `Proj` is declared. Mathlib v4.12.0 still has no properness theorem for that `Proj`.
- `generic_open_dense`: `D(2) ⊆ Spec(ℤ_[2])` has complement `V(2)`, is dense, and is nonempty. This is not an open immersion `Bl_I → Spec(R_Z)`.

Left uninhabited:

- `even_Beal`
- `even_solution_chart`: an even coprime solution would have even bases. No chart map into `D₊(2t)` is constructed.
- `even_solution_specializes_to_node`: those bases would reduce to `(0,0)` in `𝔽₂`. No specialization into `E_nodal` is constructed.
- `even_solution_implies_two_divides`, defined as `even_solution_chart`. A Tate model `(X,Y)` and a nonzero valuation of `overline{2t}` are not available. The degree-one / nonzero exclusion stays in force.

`TateEvenBranch.lean` was not edited. The actual special-fibre pullback is still not identified with the quotient `Proj`. Not merged to `main`, not tagged, not minted.
