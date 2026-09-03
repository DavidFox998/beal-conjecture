# Plan: Beal Level-26 Foundations

## Purpose

Build a clean, independently checkable foundation for the level-26 Beal route.
The goal is not to relabel the v10.0.0 conditional theorem. The goal is to
replace its theorem-valued boundaries one at a time with actual Lean
constructions and proofs.

The current parent project,
[`beal-conjecture`](https://github.com/DavidFox998/beal-conjecture), remains
the source of truth for the released v9.2–v10.0 evidence and the active
tasks. This repository starts with scaffolding only.

## Premise ledger

| v10 premise | Initial status here | Intended replacement |
|---|---|---|
| `J0DecompositionSoundness_26 J0_26` | inherited boundary | Construct the relevant Jacobian/isogeny realization and its rational-point consequences. |
| `MwrankCertificateSoundness_26` | finite matrix, ledger, and `8 × 10` audit checked; Selmer meaning remains open | Prove covering completeness, 2-Selmer identification, and rank semantics from the typed evidence. |
| `FormalImmersionSoundness_26 J0_26 cotangent` | inherited boundary | Construct the Abel–Jacobi cotangent map and prove the formal-immersion/cusp criterion in scheme geometry. |
| `FreyCurveExists` | inherited supplier | Prove the Frey curve, discriminant, reduction, and level-26 properties directly in Lean. |
| `LevelLowering_26` | inherited supplier | Build the modular-form and Galois-representation level-lowering theorem without an external supplier. |

The v1 target is to move the first three rows as far as possible toward
computable checks. The v2 and v3 targets remove the final two supplier
boundaries. v4 composes the resulting constructive chain.

## Staged milestones

### v1.0.0 — Computable certificate foundations

**Scope**

- Independently reproduce the explicit level-26 `M₃` witness.
- Make the coefficient ledger finite, typed, and replayable.
- Record the computed eight-candidate outcome without calling it a singleton
  2-Selmer result.
- Preserve transcript hashes and source provenance without treating them as
  proofs of their own semantics.
- Add focused CI checks for every finite witness.

**Acceptance gates**

- Exact matrix shape and rank are checked in Lean.
- Every ledger row has a typed finite-field status result at `2` and `13`.
- The complete finite audit is proved to retain all eight S-unit indices.
- No `axiom`, `sorry`, `admit`, or vacuous `True` declaration is introduced.
- The README identifies which interpretation premises remain.

**Current status:** the matrix, typed ledger, cardinalities, and all eighty
finite checks are complete. A standard-library producer also replays all 160
strong-Hensel witnesses at `2` and `13`. The cohomological Selmer, Sha, and
Mordell--Weil interpretation layers remain explicit later milestones.

### v2.0.0 — Frey discriminant theorem

**Scope**

- Define the indexed Frey curve from a primitive Beal counterexample.
- Prove the discriminant formula and its nonvanishing.
- Prove the reduction and conductor facts needed to identify level `26`.
- Replace `FreyCurveExists` with a theorem-valued construction.

**Acceptance gates**

- The theorem returns actual curve data, not only an existence `Prop`.
- Discriminant and bad-prime claims are proved from the displayed model.
- The resulting interface can feed the parent `frey_to_X0_26_point` route
  without a supplier axiom.

**Dependency:** v1 certificate types and the parent Frey API.

### v3.0.0 — Ribet level-lowering theorem

**Scope**

- Add or develop the Mathlib modular-form objects required by the argument.
- Define the Galois representation and modular-form compatibility data.
- Prove the level-lowering relation from the stated local hypotheses.
- Replace the supplier-backed `LevelLowering_26`.

**Acceptance gates**

- The lowering theorem is indexed by the representation, weight, and levels.
- No global modularity or level-lowering axiom is smuggled into a wrapper.
- The output is directly consumable by the level-26 Frey-to-curve bridge.

**Dependency:** v2 and the required Mathlib modular-forms foundations.

### v4.0.0 — Constructive Mazur endgame

**Scope**

- Construct the Jacobian/isogeny realization for `J₀(26)`.
- Connect `M₃` to the actual cotangent map at `2`.
- Prove the formal-immersion criterion and four-cusp rational-point result.
- Compose the constructive Frey and Ribet results into an unconditional
  `BealTheorem`.

**Acceptance gates**

- `X₀(26)(ℚ) = four_cusps` is a theorem, not a soundness premise.
- The Frey point is proved noncuspidal and cannot lie in that set.
- The final theorem has no domain-specific axioms or suppliers.
- A full CI run checks the complete chain and a transitive axiom audit.

**Dependency:** v1, v2, v3, and genuine scheme/Jacobian geometry.

## Work split

The following work stays in `beal-conjecture` while this foundations repository
is staged:

- the current v10.0.0 conditional assembly;
- exhaustive 2-Selmer ledger work;
- the formal rank theorem;
- the replacement of the formal-immersion soundness premise;
- release and historical evidence for v9.2–v10.0.0.

This repository may consume released evidence as input, but it must not rewrite
the parent project's history or imply that a future foundation milestone has
already merged back.

## Release discipline

Each milestone should ship only after:

1. its focused Lean target builds on the pinned toolchain;
2. finite certificate checks are deterministic;
3. a transitive axiom scan identifies only accepted Lean foundations;
4. the README states exactly which v10 premise has been discharged; and
5. the parent repository link and migration boundary remain current.

The version labels are tentative planning markers, not claims that the
corresponding mathematics has already been completed.