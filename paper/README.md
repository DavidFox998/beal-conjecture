# Level 26 Integrated Conditional Methodology (draft)

Mathematics of Computation manuscript draft. Not an arXiv preprint.

- Title: *Level 26 Integrated Conditional Methodology — Tate, Mazur, Ribet, and Kolyvagin in Lean 4.12*
- Author: David Fox
- Sources: `main.tex`, section `*.tex`, `references.bib`
- PDF: [`paper.pdf`](paper.pdf)

```bash
cd paper
latexmk -pdf main.tex
cp main.pdf paper.pdf
```

Software version DOI
[10.5281/zenodo.22911918](https://doi.org/10.5281/zenodo.22911918).
Concept DOI [10.5281/zenodo.22379293](https://doi.org/10.5281/zenodo.22379293).
Predecessor software DOI
[10.5281/zenodo.22911502](https://doi.org/10.5281/zenodo.22911502).

The integrated bridge is conditional on explicit Mazur, Tate, and Ribet
assumptions. It is not an unconditional Mathlib newform construction.
The v30.1.6 forward Doc preserves the complete six-stage dependency table
and the three explicit typed conversion boundaries.
