# Local modular library

Public location: [DavidFox998/beal-conjecture](https://github.com/DavidFox998/beal-conjecture), branch `mathlib/remove-ribet-axiom`.

`Mathlib` here is this repository's library. It is not [leanprover-community/mathlib4](https://github.com/leanprover-community/mathlib4).

## Layperson summary

This folder holds the calculations that sit under the Frey-curve argument: blow-ups of a singular fiber, Manin symbols, Hecke operators at levels 32 and 64, and the trace computations that would be needed to rule out a newform. The blow-up counts are theorems. The step that says those counts are the Néron special fiber is still a hypothesis. Nothing here proves that `a⁴ + b⁴ = c¹³` has no nonzero solution.

## Referee

Component counts, proved:

- `BlowupOddA.length_seven`: `all.length = 7`. The odd-`a` charts are in `BlowupOddA.lean`.
- `BlowupEvenA.length_nine` and `even_a_nine_components`: `EvenAComponent.all.length = 9`.
- `kodaira_neron_odd_a_open` and `kodaira_neron_even_a_open` are still `def`s of type `Prop`. Each identifies the opaque `NeronSpecialFiberComponents` with that count. Adjacency, normal crossings, minimality, and Néron equals the smooth locus are not claimed.

Rewired conductor exponent:

- `ComponentsOfKodairaNeron.lean` reads the two opens as `7 = 2 + 5` and `9 = 4 + 5`.
- `pacetti_of_kodaira_neron` in `DarmonMerel/3_RibetLowering4413.lean` produces `pacetti_2_8_open` from those two opens. `pacetti_of_components` is the older derivation from `components_n_plus_five_open` and is not on the capstone path.

Import chain for the newform proposition:

- `CmVanishing32.lean` imports `DarmonMerel.«3_RibetLowering4413»` and `DarmonMerel.«4_MazurTrick4413»`. It does not import file 6.
- `no_newform_32_64_of_qcurve` has type `qcurve_extension_169_open → no_newform_32_64_open`.
- `qcurve_extension_169_open`, as stated, is the trace divisibility `13 ∣ freyTrace3 − (−6)`. It is not an existence statement for a cohomology class.

`X0Moduli32.lean` imports file 3 and file 6. `CmVanishing32` does not import `X0Moduli32`, so that edge is not a cycle.

## Dependencies

Local `Init` modules and `DarmonMerel`. No community Mathlib package.

## Workflow

```bash
lake build Mathlib
```

That target builds this library. `lake build` builds `DarmonMerel`, which imports the modules it needs from here.
