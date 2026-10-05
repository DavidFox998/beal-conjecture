# v37-true-chart + v33 incorporated + beal-v38 EQUIV:3 792b3f8 — MCOM draft source files — consolidated paper/papers

**Cite:** 10.5281/zenodo.23120540, version v37-true-chart

Do not cite 10.5281/zenodo.23120520 (old v33 title). Do not cite 10.5281/zenodo.23054568 (pre-injective main at 3dd7728f).

`modelXtChart = F₂[a,b][X,Y,U,V] / I_true =+* D₊(Xt) via chart_Dplus_Xt_true_presentation`

`I_true = (X·U, Y - X·V, Y² - X³, U + X² + X·V²)`

`#print axioms modelXtChart_equiv_DplusXt is [propext, Classical.choice, Quot.sound]`

`lake build BealMathlibMissing` and `lake build BealEven` both exit 0. BealEven does not import Family.lean, ChartSurjection.lean, ChartTrueIdeal.lean, CentrePower.lean, or ChartInjective.lean.

Tag v37-true-chart is merge 84c03d5b. This is not a proof of the Beal conjecture.

## beal-v38 EQUIV:3 792b3f8

`chartOfModelTrue_injective_from_Ei_constraint` restates `Function.Injective chartOfModelTrue` via `chartOfModelTrue_injective`, conjoined with `chartTrueEquiv_inj_from_Ei_constraint`. Chain ddfb2642 (Ei constraint from 025b34c2: S-degree at most 2, (1+Y·S³) kills high image, Y³≠0, Y³ outside cusp ideal) → e466e5a (B=1 nonzero outside) → 792b3f8. Tag beal-v38-equiv-Ei-constraint is object c2f530ab. Freeze tag beal-v38-freeze-Y-axis-glue is object 437b4c85 at c48b1bd3.

`centreNormalPoly (X³-1) 0` lies outside `I²` because `centreAlphaBound 2 0=1`. Centre class remains α(X)+Y·β(X). X²·(X+V²)·z=0 does not set B=0. X+V² stays outside the cusp ideal. overlapX·(overlapX+overlapV²)≠0. ann(1+Y·S³)≠ann(X²) is cited before the conjunction. There is no ring map from D₊(Xt) into the overlap. This note does not mint a new Zenodo record. The v37 citation remains 10.5281/zenodo.23120540.

## Working v33 paper incorporated — Replit standalone into the draft

The v33 PDF was created as a standalone Replit manuscript. Its source is archived at `paper/v33-standalone/main.tex` and `paper/v33-standalone/main.pdf`. The full body, not a truncation, is now a section of `paper/mcom-draft.tex`: “Working v33 paper - bounded quotient-Rees gluing”.

That section is a bounded description of the quotient-Rees three-open gluing and the actual blow-up generic-fibre comparison. It is not a proof of the general Beal conjecture, a global identification of the actual special-fibre pullback with the quotient Rees Proj, or a degree-one / nonvanishing certificate for overline{2t}.

Build: `cd paper && latexmk -pdf mcom-draft.tex`, or `tectonic mcom-draft.tex`.

The intended source for a future Zenodo DOI is a beal-conjecture GitHub Release v33. This branch does not mint a DOI. The level-26 foundations repo is a later work mirror, not the v33 release source. Read `Beal/AUDIT_v33_HONESTY.md`, `Beal/ZENODO_DEPOSIT_v33.md`, and `Beal/RELEASE_NOTES_v33.md` before changing claims or releasing a PDF.

## PDF printing for download

`/paper` is the single source directory. The duplicate `papers/` tree is removed. `papers/main.tex` and `papers/main.pdf` are archived under `paper/v33-standalone/`. The previous `papers/README.md` is kept there as `README-from-papers.md`.

`cd paper && tectonic mcom-draft.tex` writes `paper/mcom-draft.pdf`. That file is the downloadable draft for this branch.

Legacy root v33 checks: `Beal/Beal.General/` checks `CompatChart2t` (191 lines), `CompatChartXt`/`CompatChartYt` (105 each), six polynomial-to-abstract restrictions, `SpecialFibreGluing` (167 lines). Product overlaps are abstract. See `Beal/RELEASE_NOTES_v33.md`.

`v10.0.0-paper-B14-Baker-1e6-DOI` archives the math and paper Zenodo DOIs for the v9.4.0 census (62500/25 chunks), Baker-conditional ∀B, and Tate bound 2^5*rad*13.

Concept DOI: https://doi.org/10.5281/zenodo.22698257
Math version DOI (v8.84.0-B14-modq-kill): https://doi.org/10.5281/zenodo.22712897
Paper version DOI (v8.85.0-paper-B14-full): https://doi.org/10.5281/zenodo.22713047
Final paper DOI pending mint from v8.86.0-paper-B14-final-DOI.
