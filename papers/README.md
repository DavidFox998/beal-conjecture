# Papers

Public location: [DavidFox998/beal-conjecture](https://github.com/DavidFox998/beal-conjecture), branch `mathlib/remove-ribet-axiom`.

## Layperson summary

`mcom-darmon-merel-4413.tex` is the only manuscript on this branch. It is a step toward a Lean formalization of the Darmon–Merel method for `a⁴ + b⁴ = c¹³`. The curve is Pacetti's. Darmon–Merel enters as Lemma 8.2. The blow-up has seven components when `a` is odd (three of multiplicity two and four of multiplicity one) and nine when `a` is even (five of multiplicity two and four of multiplicity one). Pacetti's exponent is a theorem only if the two Kodaira–Néron opens are assumed. The Galois file projects the two existing axioms and does not close `RhoE13Open` or `qcurve_extension_169_open`. The five propositions named in the draft are the frontier this note tracks, not every open in the library. The draft does not claim a proof of the equation, and it does not claim a proof of the Beal conjecture. Publication is at the editors' discretion.

## Referee

The draft matches the capstone `no_solution_4413_of_frontier` on this branch. The two axioms are `frey_qcurve_modular` and `ribet_level_lowering_4413`. The level field takes `FreyConductorDivides`, `RhoE13Open`, and `pacetti_2_8_open`. The five frontier propositions are `kodaira_neron_odd_a_open`, `kodaira_neron_even_a_open`, `no_newform_32_64_open`, `RhoE13Open`, and `qcurve_extension_169_open`. The capstone assumes the first four. It does not assume the trace divisibility. Further opens it does not assume include `components_n_plus_five_open`, `serre_two_level_open`, `odd_level_one_open`, `rhoE13_open_of_psi`, and `dickson_13_open`. `frey_qcurve_modular_on_RhoE13_holds` and `ribet_level_lowering_on_RhoE13_holds` project the two axioms and do not discharge `RhoE13Open` or `qcurve_extension_169_open`.

This branch has no `paper/` directory and no second `.tex`. The historical Matveev–Baker draft, the v33 blow-up note, and the level-26 copy of that draft live on `main` (`paper/mcom-draft.tex`, `papers/main.tex`, and `Level26/BealLevel26Foundations/paper/mcom-draft.tex`). They are a different history and are not part of this branch. This file does not restate them.

## Dependencies

A TeX installation with `amsart`, `amsthm`, and `hyperref`. The draft does not compile the Lean.

## Workflow

```bash
lake build
lake build Mathlib
```

Those commands check the Lean the draft cites. Compiling the draft itself is `pdflatex papers/mcom-darmon-merel-4413.tex` from the repository root, if TeX is installed. The PDF is not a substitute for the Lake build.
