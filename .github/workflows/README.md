> **Root v33 (documentation, not a CI guarantee):** `Beal/Beal.General/` checks `CompatChart2t` (191 lines), `CompatChartXt`/`CompatChartYt` (105 each), six polynomial-to-abstract restrictions, and `SpecialFibreGluing` (167 lines); product overlaps are abstract. See `Beal/RELEASE_NOTES_v33.md`.

# .github/workflows/

GitHub Actions workflow for
[DavidFox998/beal-conjecture](https://github.com/DavidFox998/beal-conjecture).

[`main.yml`](main.yml) runs `lake exe cache get`, `lake build
BealMatveevBeal`, and `./scripts/verify-matveev-beal.sh` on
pushes and pull requests to `main`.

This is a Lean 4.12 theorem library, not a web app.
Concept DOI `10.5281/zenodo.22379293`.

## Working manuscript PDF

`paper.yml` builds `paper/mcom-draft.tex`, `papers/main.tex`, and
`paper/v33-standalone/main.tex` with Tectonic 0.15.0 and Poppler.
The three source files must be identical. The outputs must have 26
searchable pages and identical extracted text; missing references,
overfull boxes, and nonzero link borders fail the job.

The workflow runs when a manuscript source or its workflow changes,
and supports manual dispatch. On the PR28 branch, open the successful
**Paper PDF** run and download the **mcom-draft.pdf** artifact.
This document job is separate from Lean proof checking. It does not
merge the PR, create a release, mint a DOI, or make a prize claim.
