# Level 26 Structural Verification (draft)

[![DOI](https://zenodo.org/badge/DOI/10.5281/zenodo.22041831.svg)](https://doi.org/10.5281/zenodo.22041831)
[![DOI](https://zenodo.org/badge/DOI/10.5281/zenodo.22884873.svg)](https://doi.org/10.5281/zenodo.22884873)
[![DOI](https://zenodo.org/badge/DOI/10.5281/zenodo.22379293.svg)](https://doi.org/10.5281/zenodo.22379293)
[![DOI](https://zenodo.org/badge/DOI/10.5281/zenodo.22922473.svg)](https://doi.org/10.5281/zenodo.22922473)
[![DOI](https://zenodo.org/badge/DOI/10.5281/zenodo.22912430.svg)](https://doi.org/10.5281/zenodo.22912430)

Mathematics of Computation manuscript draft. Not an arXiv preprint.

- Title: *Level 26 Structural Verification — Tate, Mazur, Ribet, Kolyvagin Honest Displays in Lean 4.12*
- Author: David Fox
- Sources: `main.tex`, section `*.tex`, `references.bib`
- PDF: [`paper.pdf`](paper.pdf)

```bash
cd paper
latexmk -pdf main.tex
cp main.pdf paper.pdf
```

Current pre-integration `beal-conjecture` version DOI:
[10.5281/zenodo.22885060](https://doi.org/10.5281/zenodo.22885060).
`beal-conjecture` concept DOI:
[10.5281/zenodo.22041831](https://doi.org/10.5281/zenodo.22041831).
Foundations final/retrofit DOIs:
[10.5281/zenodo.22912430](https://doi.org/10.5281/zenodo.22912430) and
[10.5281/zenodo.22922473](https://doi.org/10.5281/zenodo.22922473), under
foundations concept DOI
[10.5281/zenodo.22379293](https://doi.org/10.5281/zenodo.22379293).

The post-final v25 methodology orders the Matveev constants, level-26
numerical surface, proved `B < 1000` elimination, and explicit `B ≤ 10⁶`
boundary. It does not derive the full search or the general Beal
common-prime theorem from displayed arithmetic.
