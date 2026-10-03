# v37-true-chart

Cite [10.5281/zenodo.23120540](https://doi.org/10.5281/zenodo.23120540), version `v37-true-chart`.

Do not cite [10.5281/zenodo.23120520](https://doi.org/10.5281/zenodo.23120520): that ingest still carries the old v33 title. Do not cite [10.5281/zenodo.23054568](https://doi.org/10.5281/zenodo.23054568): that is pre-injective `main` at `3dd7728f`.

`modelXtChart = 𝔽₂[a,b][X,Y,U,V] / I_true ≃+* D₊(Xt)` via `chart_Dplus_Xt_true_presentation`.

`I_true = (X·U, Y − X·V, Y² − X³, U + X² + X·V²)`.

`#print axioms modelXtChart_equiv_DplusXt` is `[propext, Classical.choice, Quot.sound]`.

`lake build BealMathlibMissing` and `lake build BealEven` both exit 0. `BealEven` does not import `Family.lean`, `ChartSurjection.lean`, `ChartTrueIdeal.lean`, `CentrePower.lean`, or `ChartInjective.lean`.

Tag `v37-true-chart` is merge `84c03d5b`. This is not a proof of the Beal conjecture.

---

The notes below are the older level-26 gap-3 MCOM draft. They are not the v37-true-chart citation.

> **Root v33 (separate from this draft):** `Beal/Beal.General/` checks `CompatChart2t` (191 lines), `CompatChartXt`/`CompatChartYt` (105 each), six polynomial-to-abstract restrictions, and `SpecialFibreGluing` (167 lines); product overlaps are abstract. See `Beal/RELEASE_NOTES_v33.md`.

MCOM draft — build with latexmk -pdf mcom-draft.tex

`v10.0.0-paper-B14-Baker-1e6-DOI` archives the math and paper Zenodo DOIs for the v9.4.0 census (62500 / 25 chunks), Baker-conditional `∀ B`, and Tate bound `2^5*rad*13`.

Concept DOI: https://doi.org/10.5281/zenodo.22698257
Math version DOI (v8.84.0-B14-modq-kill): https://doi.org/10.5281/zenodo.22712897
Paper version DOI (v8.85.0-paper-B14-full): https://doi.org/10.5281/zenodo.22713047
Final paper DOI pending mint from `v8.86.0-paper-B14-final-DOI`.
