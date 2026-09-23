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
[10.5281/zenodo.22922473](https://doi.org/10.5281/zenodo.22922473).
Concept DOI [10.5281/zenodo.22379293](https://doi.org/10.5281/zenodo.22379293).
Predecessor software DOI
[10.5281/zenodo.22912430](https://doi.org/10.5281/zenodo.22912430).

The integrated bridge is conditional on explicit Mazur, Tate, and Ribet
assumptions. It is not an unconditional Mathlib newform construction.
The v30.1.7 final interface preserves the complete six-stage dependency table,
the three explicit typed conversion boundaries, and the general common-prime
conclusion as an explicit proof field. The full `B ≤ 10^6` search likewise
remains explicit; the proved exhaustive slice is `B < 1000`.

The v25.0.1 addendum records the forward order from the Matveev constants
through the level-26 numerical surface and the proved `B < 1000` search.
The full `B ≤ 10⁶` search remains a separate explicit field.
