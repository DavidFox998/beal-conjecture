# Scope notes

Public location: [DavidFox998/beal-conjecture](https://github.com/DavidFox998/beal-conjecture), branch `mathlib/remove-ribet-axiom`.

## Layperson summary

These notes are surveys of two gaps. They record what would have to be formalized, and they do not prove it. They are not part of the checked library.

## Referee

| Note | What it is |
| --- | --- |
| `SCRATCH-no-newform-scope.md` | Scope of `no_newform_32_64_open`. No proof. |
| `SCRATCH-galois-irreducibility-scope.md` | Scope of a mod-13 Galois representation and of `RhoE13Open`. Both gaps are large. No term of `RhoE13Open` is constructed. |

Neither note is imported by a Lean file. A sentence in a note is not a theorem.

## Dependencies

None. The notes cite modules that already exist in `DarmonMerel/` and `Mathlib/Modular/`.

## Workflow

No build. Read them beside `ROADMAP.md`. The checked surface is:

```bash
lake build
lake build Mathlib
```
