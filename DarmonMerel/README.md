# DarmonMerel/

Public location: [beal-conjecture](https://github.com/DavidFox998/beal-conjecture), branch `main`.

## Layperson summary

These six files are a roadmap for a future proof about `a⁴ + b⁴ = c¹³`. They contain comments and `TODO` lines. They do not define the curve, and they do not prove that no nonzero solution exists.

## Referee

Each file is marked scaffold-only, dated 2026-10-09.

| File | Status on `main` |
| --- | --- |
| `1_FreyCurve4413.lean` | No definitions. Imports community Mathlib. |
| `2_Modularity4413.lean` | No axiom minted. |
| `3_RibetLowering4413.lean` | No definitions. |
| `4_MazurMethod.lean` | No definitions. |
| `5_WindingQuotient.lean` | No definitions. |
| `6_MainTheorem.lean` | The target statement is a comment. `darmon_merel_4413` is not a theorem. `darmon_merel_4413_axiom` in `BealTrueV25.lean` is still the kernel axiom of that other argument. |

The proved component counts and the conditional capstone are on `mathlib/remove-ribet-axiom`. They are not in these files.

## Dependencies

Community Mathlib `v4.12.0`, because each file imports `Mathlib`. Lean 4.12.0.

## Workflow

```bash
lake exe cache get
lake build
```

Building `main` compiles these modules as part of the package only if a target globs them. Importing `Mathlib` pulls in the dependency either way. Do not cite a scaffold as a theorem.
