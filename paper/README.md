# v37-true-chart

Cite [10.5281/zenodo.23120540](https://doi.org/10.5281/zenodo.23120540), version `v37-true-chart`.

Do not cite [10.5281/zenodo.23120520](https://doi.org/10.5281/zenodo.23120520): that ingest still carries the old v33 title. Do not cite [10.5281/zenodo.23054568](https://doi.org/10.5281/zenodo.23054568): that is pre-injective `main` at `3dd7728f`.

`modelXtChart = 𝔽₂[a,b][X,Y,U,V] / I_true ≃+* D₊(Xt)` via `chart_Dplus_Xt_true_presentation`.

`I_true = (X·U, Y − X·V, Y² − X³, U + X² + X·V²)`.

`#print axioms modelXtChart_equiv_DplusXt` is `[propext, Classical.choice, Quot.sound]`.

`lake build BealMathlibMissing` and `lake build BealEven` both exit 0. `BealEven` does not import `Family.lean`, `ChartSurjection.lean`, `ChartTrueIdeal.lean`, `CentrePower.lean`, or `ChartInjective.lean`.

Tag `v37-true-chart` is merge `84c03d5b`. This is not a proof of the Beal conjecture.

## beal-v38 EQUIV:3 `792b3f8`

`chartOfModelTrue_injective_from_Ei_constraint` restates `Function.Injective chartOfModelTrue` via `chartOfModelTrue_injective`, conjoined with `chartTrueEquiv_inj_from_Ei_constraint`. The chain is `ddfb2642` (`Eᵢ` constraint from `025b34c2`: `S`-degree at most 2, `(1+Y·S³)` kills the high image, `Y³ ≠ 0`, `Y³` outside the cusp ideal) → `e466e5a` (`B = 1` nonzero outside) → `792b3f8`. Tag `beal-v38-equiv-Ei-constraint` is object `c2f530ab`. The freeze tag `beal-v38-freeze-Y-axis-glue` is object `437b4c85` at `c48b1bd3`.

`centreNormalPoly (X³ − 1) 0` lies outside `I²` because `centreAlphaBound 2 0 = 1`. The centre class remains `α(X) + Y·β(X)`. `X²·(X+V²)·z = 0` does not set `B = 0`. `X+V²` stays outside the cusp ideal. `overlapX·(overlapX+overlapV²) ≠ 0`. `ann(1+Y·S³) ≠ ann(X²)` is cited before the conjunction. There is no ring map from `D₊(Xt)` into the overlap. This note does not mint a new Zenodo record. The v37 citation remains [10.5281/zenodo.23120540](https://doi.org/10.5281/zenodo.23120540).

---

The notes below are the older level-26 gap-3 MCOM draft. They are not the v37-true-chart citation.

> **Root v33 (separate from this draft):** `Beal/Beal.General/` checks `CompatChart2t` (191 lines), `CompatChartXt`/`CompatChartYt` (105 each), six polynomial-to-abstract restrictions, and `SpecialFibreGluing` (167 lines); product overlaps are abstract. See `Beal/RELEASE_NOTES_v33.md`.

MCOM draft — build with latexmk -pdf mcom-draft.tex

`v10.0.0-paper-B14-Baker-1e6-DOI` archives the math and paper Zenodo DOIs for the v9.4.0 census (62500 / 25 chunks), Baker-conditional `∀ B`, and Tate bound `2^5*rad*13`.

Concept DOI: https://doi.org/10.5281/zenodo.22698257
Math version DOI (v8.84.0-B14-modq-kill): https://doi.org/10.5281/zenodo.22712897
Paper version DOI (v8.85.0-paper-B14-full): https://doi.org/10.5281/zenodo.22713047
Final paper DOI pending mint from `v8.86.0-paper-B14-final-DOI`.
