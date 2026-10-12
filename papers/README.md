# Papers

Public location: [DavidFox998/beal-conjecture](https://github.com/DavidFox998/beal-conjecture), branch `mathlib/remove-ribet-axiom`.

## Layperson summary

`mcom-darmon-merel-4413.tex` is a draft for editors. It describes a checked prototype of one method for `a⁴ + b⁴ = c¹³`: seven components when `a` is odd, nine when `a` is even, and a Pacetti exponent that now follows from those two counts once they are identified with the Néron fiber. The draft says what is still open. It does not claim a proof of the Beal conjecture. Publication is at the editors' discretion.

## Referee

The draft matches the capstone `no_solution_4413_of_frontier` on this branch. The two axioms are `frey_qcurve_modular` and `ribet_level_lowering_4413`. The five frontier propositions are `kodaira_neron_odd_a_open`, `kodaira_neron_even_a_open`, `no_newform_32_64_open`, `RhoE13Open`, and `qcurve_extension_169_open`. The last of these is not a hypothesis of the capstone.

The historical Matveev–Baker and v33 blow-up manuscripts live on `main`, in `papers/` and `paper/`. They are a different tree. This file does not restate them.

## Dependencies

A TeX installation with `amsart`, `amsthm`, and `hyperref`. The draft does not compile the Lean.

## Workflow

```bash
lake build
lake build Mathlib
```

Those commands check the Lean the draft cites. Compiling the draft itself is `pdflatex papers/mcom-darmon-merel-4413.tex` from the repository root, if TeX is installed. The PDF is not a substitute for the Lake build.
