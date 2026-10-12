# Papers

Public location: [DavidFox998/beal-conjecture](https://github.com/DavidFox998/beal-conjecture), branch `mathlib/remove-ribet-axiom`.

## Layperson summary

`mcom-darmon-merel-4413.tex` is the only manuscript on this branch. It records a Lean formalization of the Darmon–Merel method for `a⁴ + b⁴ = c¹³`: seven components when `a` is odd, nine when `a` is even, a Pacetti exponent that follows from those two counts once they are identified with the Néron fiber, and a Galois skeleton of definitions and statements in `DarmonMerel/8_Galois4413.lean`. The draft says what is still open. It does not claim a proof of the equation, and it does not claim a proof of the Beal conjecture. Publication is at the editors' discretion.

## Referee

The draft matches the capstone `no_solution_4413_of_frontier` on this branch. The two axioms are `frey_qcurve_modular` and `ribet_level_lowering_4413`. The five frontier propositions are `kodaira_neron_odd_a_open`, `kodaira_neron_even_a_open`, `no_newform_32_64_open`, `RhoE13Open`, and `qcurve_extension_169_open`. The last of these is not a hypothesis of the capstone. `RhoE13` and `qcurve_extension_169` are definitions and statements. They do not discharge those two opens.

This branch has no `paper/` directory and no second `.tex`. The historical Matveev–Baker draft, the v33 blow-up note, and the level-26 copy of that draft live on `main` (`paper/mcom-draft.tex`, `papers/main.tex`, and `Level26/BealLevel26Foundations/paper/mcom-draft.tex`). They are a different history and are not part of this branch. This file does not restate them.

## Dependencies

A TeX installation with `amsart`, `amsthm`, and `hyperref`. The draft does not compile the Lean.

## Workflow

```bash
lake build
lake build Mathlib
```

Those commands check the Lean the draft cites. Compiling the draft itself is `pdflatex papers/mcom-darmon-merel-4413.tex` from the repository root, if TeX is installed. The PDF is not a substitute for the Lake build.
