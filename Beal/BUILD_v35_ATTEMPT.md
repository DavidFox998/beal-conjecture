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

## Merge of `origin/main` `3dd7728f`

`git merge origin/main --no-edit` on `beal-v35-odd-reduction` at `aa01d985` produced merge commit `cb55c248`. The only file from `main` is `scripts/verify-matveev-beal.sh`: the citation check accepts either the Level 26 title block or a `CITATION.cff` that has a title, a `doi:` field, and `10.5281/zenodo.23054568`. `3dd7728f` is an ancestor of this branch after the merge.

`lakefile.lean` was not in the merge diff. `lean_lib BealEven` and `lean_lib BealOdd` stay, and `BealGeneral` still globs the six chart modules `CompatChart2t`, `CompatChartXt`, `CompatChartYt`, `CompatPolynomialRestrictions`, `SpecialFibrePolynomialCover`, and `SpecialFibreGluing`.

After that merge, before the odd-power lemmas:

- `lake build BealEven`: exit 0
- `lake build BealOdd`: exit 0

## Odd powers and the integral `2`-chart

`Beal/Beal.Odd/FullReduction.lean` is 249 lines. New checked statements, all without `sorry`:

- `odd_mod_four`, `odd_pow_mod_four`: an odd base to an odd power keeps its residue modulo `4` (`1` or `3`).
- `odd_exponents_avoid_two_chart`: `Odd x → Odd p → ¬ 2 ∣ x ^ p`. There is then no `U : ℕ` with `x ^ p = 2 * U` (`odd_pow_not_integral_two_coordinate`). The Tate monomial `x ^ 3` is the same fact at exponent `3` (`tate_cubic_term_not_two_dvd`).
- `odd_base_pow_not_two_dvd`: non-divisibility by `2` needs only an odd base, for every exponent. The odd exponent is what preserves the residue modulo `4`.
- `two_dvd_pow_of_two_dvd_base` and `odd_exponent_does_not_force_odd_power`: an odd exponent does not pull an even base out of `(2)`. Witness: `Odd 3 ∧ 2 ∣ 2 ^ 3`.
- `reused_generic_centre_eq_top` re-exports `I[1/2] = ⊤`. That identity is the generic fibre after inverting `2`. It is not applied to `x ^ p`.

`odd_Beal` and `odd_branch_chart` stay uninhabited `def`s. `odd_point_avoids_special_fibre` is the same uninhabited statement. Comment in the file: odd → `2 ∤ X, Y` needs degree-one `overline{2t}`, excluded by v34, and is not proved here.

Printed axioms on the new arithmetic theorems are `propext` and `Quot.sound` only. Re-exports that package scheme constructions still print `propext`, `Classical.choice`, and `Quot.sound`. No `sorryAx`.

Commands after the odd-power lemmas:

- `lake build BealOdd`: exit 0. `Build completed successfully.`
- `lake build BealEven`: exit 0. `Build completed successfully.`

No merge to `main`, no `v35` tag, no Zenodo mint. `main` stays `3dd7728f` with DOI `10.5281/zenodo.23054568`.
