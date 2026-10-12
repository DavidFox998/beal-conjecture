# Papers

Public location: [beal-conjecture](https://github.com/DavidFox998/beal-conjecture).

## Layperson summary

Two manuscripts live here. `mcom-darmon-merel-4413.tex` is the current draft: a prototype for `a⁴ + b⁴ = c¹³`, with seven components for odd `a`, nine for even `a`, and Pacetti's exponent rewired through those counts. The Lean it cites is on `mathlib/remove-ribet-axiom`, not on `main`. `main.tex` is the older v33 note about a 2-adic chart gluing on this branch. Neither manuscript is a proof of the Beal conjecture. Editors decide whether the prototype is published on its own.

## Referee

The prototype draft lists two axioms, `frey_qcurve_modular` and `ribet_level_lowering_4413`, and five opens: `kodaira_neron_odd_a_open`, `kodaira_neron_even_a_open`, `no_newform_32_64_open`, `RhoE13Open`, and `qcurve_extension_169_open`. The v33 manuscript does not claim a global special-fiber isomorphism or a degree-one formula. Its direct checks are recorded in `Beal/RELEASE_NOTES_v33.md`. A full `lake build BealGeneral` was not part of that check.

## Dependencies

TeX (`amsart` or `article`, `hyperref`). Lean 4.12.0 and Mathlib `v4.12.0` for this branch. Lean 4.34.1, Init only, for the prototype branch.

## Workflow

On `main`:

```bash
lake exe cache get
lake build
lake build Mathlib
```

On `mathlib/remove-ribet-axiom`:

```bash
lake build
lake build Mathlib
```

Compile a draft with `pdflatex` or `latexmk -pdf` when TeX is installed. The PDF is not a substitute for the Lake build.

## Older v33 note

The build source is [`main.tex`](main.tex); its generated PDF is `main.pdf`.
This is a bounded description of the quotient-Rees three-open gluing
and the actual blow-up's generic-fibre comparison. It is **not** a proof
of the general Beal conjecture, a global identification of the actual
special-fibre pullback with the quotient Rees `Proj`, or a degree-one /
nonvanishing certificate for `overline{2t}`.

The public source is
[beal-conjecture](https://github.com/DavidFox998/beal-conjecture).
Read
[`Beal/AUDIT_v33_HONESTY.md`](../Beal/AUDIT_v33_HONESTY.md),
[`Beal/ZENODO_DEPOSIT_v33.md`](../Beal/ZENODO_DEPOSIT_v33.md),
and [`Beal/RELEASE_NOTES_v33.md`](../Beal/RELEASE_NOTES_v33.md)
before changing the claims or releasing the PDF.

Build from this directory with `latexmk -pdf main.tex` when available,
or `tectonic main.tex`. The older gap-3 draft remains
`paper/mcom-draft.tex`. The v33 DOI and release date
must only be added after they exist and have been verified.
