# Darmon–Merel files for `a⁴ + b⁴ = c¹³`

Public location: [DavidFox998/beal-conjecture](https://github.com/DavidFox998/beal-conjecture), branch `mathlib/remove-ribet-axiom`.

## Layperson summary

These seven files are the spine of one attempted proof that a fourth power plus a fourth power is never a thirteenth power, except the known cases where one of the fourth powers is zero. The files define the curve, assume modularity, assume Ribet's level lowering, run Mazur's test, compute a winding element, and record a conditional nonexistence theorem. The conditional theorem still takes five open propositions and two axioms. It is not the Beal conjecture.

## Referee

| File | What it holds |
| --- | --- |
| `1_FreyCurve4413.lean` | The Frey ℚ-curve and the discriminant identity. No axioms. |
| `2_Modularity4413.lean` | The axiom `frey_qcurve_modular`. |
| `3_RibetLowering4413.lean` | The axiom `ribet_level_lowering_4413`, the opaque `RhoE13Open`, and, after `structure RibetLevel`, `thirteen_not_dvd_two` and `no_newform_32_64_open`. Also `pacetti_of_kodaira_neron`. |
| `4_MazurTrick4413.lean` | Mazur's product. `mazur_trick_4413` shows that a product which is `0` is still divisible by `13`. |
| `5_WindingQuotient4413.lean` | `C(5, g) = 0` at the newforms `32.2.a.a` and `64.2.a.a`. |
| `7_WindingQuotientAxiom4413.lean` | `(T₅ - 6) e ≢ 0 (mod 13)` at levels 32 and 64. A theorem, not an axiom, despite the filename. |
| `6_NoSolution4413.lean` | `no_solution_4413_of_frontier`. Imports file 7 and `Mathlib.Modular.CmVanishing32`. Calls `pacetti_of_kodaira_neron`. |

The capstone hypotheses are `kodaira_neron_odd_a_open`, `kodaira_neron_even_a_open`, `no_newform_32_64_open`, coprimality and the sign conditions, and a term of `RhoE13Open`. `qcurve_extension_169_open` is not a hypothesis. `#print axioms no_solution_4413_of_frontier` is `frey_qcurve_modular`, `ribet_level_lowering_4413`, `propext`, `Classical.choice`, `Quot.sound`.

`(1, 0, 1)` and `(0, 1, 1)` are solutions and sit outside `a ≠ 0` and `b ≠ 0`. `(8, 8, 2)` fails coprimality.

## Dependencies

`Init`, then the local modules named above. File 6 imports `Mathlib.Modular.CmVanishing32`, which imports file 3 and file 4. File 6 does not define `no_newform_32_64_open`. Community Mathlib is not a dependency.

## Workflow

From the repository root, with the toolchain in `lean-toolchain`:

```bash
lake build
lake build DarmonMerel.6_NoSolution4413
```

`lake build` is the library. The second command is the capstone alias.
