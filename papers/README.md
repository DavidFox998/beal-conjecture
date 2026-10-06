# Full working submission copy

`main.tex` is a complete copy of the canonical `paper/mcom-draft.tex`;
`main.pdf` is its 26-page compiled output. The original working v33
body is retained as Section 19. Sections 20 and 21 study the gap
propositions, research axioms, and conditional two-year programme.

## Method and dependencies

Build the canonical manuscript once, then synchronize the source and PDF.
From the repository root:

```sh
(cd paper && tectonic mcom-draft.tex)
cp paper/mcom-draft.tex papers/main.tex
cp paper/mcom-draft.pdf papers/main.pdf
cmp paper/mcom-draft.pdf papers/main.pdf
```

Use Tectonic 0.15.0. The first build downloads TeX dependencies.
The bibliography is inline, and no external image files are needed.
Do not compile this mirror independently. PDF checks use Poppler;
matching hashes or `cmp` verify that the copies are byte-identical.
Lean/Mathlib verification is a separate process:
building a PDF does not prove the mathematical interfaces it describes.

## Publication boundary

The full manuscript is also copied to `paper/v33-standalone/`.
These are working sources, not replacements for the frozen release.
The v33 version DOI remains `10.5281/zenodo.23054568` and the v37
chart citation remains `10.5281/zenodo.23120540`. No DOI is minted.
Registration concerns the bounded result, not a $1M prize claim.
Download the `mcom-draft.pdf` artifact from the successful **Paper PDF**
run for PR28; the branch is not merged by this update.
