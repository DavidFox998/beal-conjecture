# Level-lowering provenance and release gate

## Decision

The repository does **not** currently import a proved Ribet level-lowering
theorem.  The active final route therefore keeps
`Beal.RibetIterate.ribet_single_step` as an explicit third mathematical
boundary beside the Tate local-conductor and Wiles modularity boundaries.

**Why:** An exact equality `M * p = N`, or the fact that `M` divides the
Frey-model conductor, does not establish that a modular form at level `N`
remains modular at level `M`.  Reindexing the finite q-expansion interface
would type-check, but it would falsely turn bookkeeping about a natural
number into Ribet's theorem.

## Audited sources

| Source | Compatibility finding | Result |
|---|---|---|
| This repository's pinned Mathlib (`v4.12.0`, recorded in `lakefile.lean` and `lake-manifest.json`) | Exports the `Representation` interface and definitions of modular forms, but no proved newform/Hecke level-lowering theorem. | Used only for form and representation data. |
| `ImperialCollegeLondon/FLT`, main observed 2026-08-25 | Targets Lean `v4.34.0-rc2`, not this repository's Lean `v4.12.0`; its published axiom report includes `sorryAx` in the currently exposed Fermat theorem. | Rejected as a dependency and as proof provenance. |

The local `B14_FormRepresentation` adapter is consequently an auditable
interface only.  Its declarations must stay free of `sorryAx`, but importing
that interface alone is not evidence for modular-form transport.

## Required evidence for a two-axiom release

Before a `v6.0.0` archive can describe a two-axiom boundary, the project must
contain a Lean-4.12-compatible theorem that:

1. takes a fixed `FreyCurveModel`, its residual representation, an attached
   form, the exact quotient `M * p = N`, and explicit local,
   irreducibility, and representation-compatibility hypotheses;
2. produces a form at `M` realizing the same residual representation without
   storing that conclusion in a Wiles-supplied certificate; and
3. has an axiom audit containing neither `sorryAx` nor a new unnamed
   mathematical assumption.

Until all three conditions are met, B20 must continue to report the honest
three-boundary route.  No v6 archive or DOI should be created from a
relabeling of the existing `ribet_single_step` interface.