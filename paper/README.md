# v37-true-chart + v33 incorporated + beal-v38 EQUIV:3 792b3f8 — MCOM draft source files — consolidated paper/papers

**Cite:** 10.5281/zenodo.23120540, version v37-true-chart

Do not cite 10.5281/zenodo.23120520 (old v33 title). Do not cite 10.5281/zenodo.23054568 (pre-injective main at 3dd7728f).

`modelXtChart = F₂[a,b][X,Y,U,V] / I_true =+* D₊(Xt) via chart_Dplus_Xt_true_presentation`

`I_true = (X·U, Y - X·V, Y² - X³, U + X² + X·V²)`

Repository-scoped historical report:
`#print axioms modelXtChart_equiv_DplusXt` lists
`[propext, Classical.choice, Quot.sound]`; fresh replay is unverified below.

Historical repository reports say `lake build BealMathlibMissing` and
`lake build BealEven` both exit 0. Independent replay remains unverified:
cache setup exited 137 before either target ran. BealEven does not import
Family.lean, ChartSurjection.lean, ChartTrueIdeal.lean, CentrePower.lean,
or ChartInjective.lean.

Tag v37-true-chart is merge 84c03d5b. This is not a proof of the Beal conjecture.

## beal-v38 EQUIV:3 792b3f8

`chartOfModelTrue_injective_from_Ei_constraint` restates `Function.Injective chartOfModelTrue` via `chartOfModelTrue_injective`, conjoined with `chartTrueEquiv_inj_from_Ei_constraint`. Chain ddfb2642 (Ei constraint from 025b34c2: S-degree at most 2, (1+Y·S³) kills high image, Y³≠0, Y³ outside cusp ideal) → e466e5a (B=1 nonzero outside) → 792b3f8. Tag beal-v38-equiv-Ei-constraint is object c2f530ab. Freeze tag beal-v38-freeze-Y-axis-glue is object 437b4c85 at c48b1bd3.

`centreNormalPoly (X³-1) 0` lies outside `I²` because `centreAlphaBound 2 0=1`. Centre class remains α(X)+Y·β(X). X²·(X+V²)·z=0 does not set B=0. X+V² stays outside the cusp ideal. overlapX·(overlapX+overlapV²)≠0. ann(1+Y·S³)≠ann(X²) is cited before the conjunction. There is no ring map from D₊(Xt) into the overlap. This note does not mint a new Zenodo record. The v37 citation remains 10.5281/zenodo.23120540.

## Working v33 paper incorporated — Replit standalone into the draft

The v33 PDF was created as a standalone Replit manuscript. Its source is archived at `paper/v33-standalone/main.tex` and `paper/v33-standalone/main.pdf`. The full body, not a truncation, is now a section of `paper/mcom-draft.tex`: “Working v33 paper - bounded quotient-Rees gluing”.

That section is a bounded description of the quotient-Rees three-open gluing and the actual blow-up generic-fibre comparison. It is not a proof of the general Beal conjecture, a global identification of the actual special-fibre pullback with the quotient Rees Proj, or a degree-one / nonvanishing certificate for overline{2t}.

Build: `cd paper && latexmk -pdf mcom-draft.tex`, or `tectonic mcom-draft.tex`.

## Reproducibility: exact Lean targets and PDF recheck

From the repository root, preserve the checked-in `lean-toolchain` and
`lake-manifest.json` (Lean and Mathlib 4.12.0):

```sh
lake --version
lake exe cache get
lake build BealMathlibMissing
lake build BealEven
```

Run the targets separately and retain each actual exit status. Do not use
`lake update` to change the pinned dependencies for a reproducibility check.
The successful target builds reported above are historical repository
claims, not fresh results from the MCOM scrutiny session. The independent
PR28 cache-setup recheck exited 137 before either target ran; exact target
replay and fresh `#print axioms` reports remain unverified here.

From `paper/`, `tectonic mcom-draft.tex` independently exited 0 on PR28
`75b8a3a5`, producing 11 pages and 160,581 bytes again. Every page contains
searchable text; Section 19 preserves the entire archived v33 abstract and
body, with section headings demoted. Hyperref is already enabled.
That baseline compilation reported substantial overfull boxes, and long
identifiers and the running title crossed the page boundary. These defects
are addressed by the strengthened revision below.
The `.bib` file is present, but this source currently uses an inline
`thebibliography`; it does not load that file through BibTeX.

## Three-phase strengthened revision

The preceding 11-page PDF record describes the unmodified PR28 baseline
`75b8a3a5`, not the revised file.
The revised `mcom-draft.tex` corrects the signature to `(4,4,13)`,
attributes the `-2,24` traces to the fourth-power displayed cubic, and
distinguishes that cubic from the equation's Beal Frey model.
It replaces the historical abstract, adds the finite-data introduction,
retains Section 19's bounded v33 mathematics with historical deposit
language labelled, and adds Section 20's explicit v38 certificate and
general common-prime input interface.

The printing workflow deliberately retains the inline `thebibliography`,
now with a keyed v37 entry; `beal_level26_v24_4_0.bib` is auxiliary archived
metadata rather than an active BibTeX dependency.
Hyperref, xurl, and cleveref support searchable links, breakable source
identifiers, and labelled cross-references. The short running title and
split displays eliminate the earlier clipping without changing 12-point
body text. The revised TeX and PDF are paired.

The revised Tectonic build exited 0: **15 pages, 169,785 bytes**, every page
searchable, zero overfull-box warnings, no undefined-reference warnings,
and no extracted text spans outside the page. Some underfull spacing
warnings remain. All-page overview and representative detailed page
renderings were inspected.
PDF SHA256:
`856c13e773a92dca5de5def175e7dc67e5724a689f4f1d6c3676e03906b620a9`.

All Lean source files, `lean-toolchain`, `lake-manifest.json`, and the
archived standalone v33 source remain unchanged. The local source scan
found no active proof-hole tokens in the 57-file and 39-file target
closures, excluding external dependencies; it is not a kernel build.
See `../AMS_EDITING_NOTES/MCOM_STRENGTHEN.md` and
`../AMS_EDITING_NOTES/BEAL_SUBMISSION_LEAN_ONLY.md`.

The archived v33 deposit plan named a beal-conjecture GitHub Release as
its intended source. That plan is historical: `Beal/AUDIT_v33_HONESTY.md`
already records the v33 release and DOI. This branch mints no DOI.
The level-26 foundations work mirror is not the v33 release source.
Read `Beal/AUDIT_v33_HONESTY.md`, `Beal/ZENODO_DEPOSIT_v33.md`, and
`Beal/RELEASE_NOTES_v33.md` before changing claims or releasing a PDF.

## PDF printing for download

`/paper` is the single source directory. The duplicate `papers/` tree is removed. `papers/main.tex` and `papers/main.pdf` are archived under `paper/v33-standalone/`. The previous `papers/README.md` is kept there as `README-from-papers.md`.

`cd paper && tectonic mcom-draft.tex` writes `paper/mcom-draft.pdf`. That file is the downloadable draft for this branch.

Legacy root v33 checks: `Beal/Beal.General/` checks `CompatChart2t` (191 lines), `CompatChartXt`/`CompatChartYt` (105 each), six polynomial-to-abstract restrictions, `SpecialFibreGluing` (167 lines). Product overlaps are abstract. See `Beal/RELEASE_NOTES_v33.md`.

`v10.0.0-paper-B14-Baker-1e6-DOI` archives the math and paper Zenodo DOIs for the v9.4.0 census (62500/25 chunks), Baker-conditional ∀B, and Tate bound 2^5*rad*13.

Concept DOI: https://doi.org/10.5281/zenodo.22698257
Math version DOI (v8.84.0-B14-modq-kill): https://doi.org/10.5281/zenodo.22712897
Paper version DOI (v8.85.0-paper-B14-full): https://doi.org/10.5281/zenodo.22713047
Historical level-26 release-plan note: a final paper DOI was described as
pending mint from v8.86.0-paper-B14-final-DOI. This revision neither
verifies a new deposit nor mints that DOI.
