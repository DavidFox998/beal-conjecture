# `lean/`

This directory is the Lean source root for the Beal Conjecture formalization
in *Opera Numerorum*. It is deliberately small at the top level: the source
library lives in `Beal/`, while `Beal.lean` is the import manifest that asks
Lean to compile the complete numbered development.

The project-level [`README.md`](../README.md) explains the mathematical
motivation and the current formal status. This document explains how the
source tree is organized and how to read it as a Lean project.

## v8.9.0 source snapshot

The current source snapshot is v8.9.0, the Real 80-Check Audit. The new
`Beal/Mazur/Gates/SecondDescent_Real_26.lean` module checks the complete
`8 × 10 = 80` S-unit/ledger grid at `p = 2` and `p = 13`. All available
bad-prime checks pass, so the audit retains all eight S-unit representatives;
it does not prove a singleton Selmer group. `SecondDescentHypothesis_26` remains
the explicit conditional boundary.

The level-26 rank interface now also gives the two elliptic factors distinct
exponent-two abelian-group models for their full 2-Selmer groups.
`SelmerLedgerIdentification` records the coefficient-covering map, genuine
local-solubility semantics, and representation of every Selmer class. Landing
of the curve-specific descent maps follows from those fields. Exhaustion also
requires a separate `SelmerExhaustionCertificate`, where the required
curve-specific `Sha[2]`-vanishing/local-to-global statement is explicit. This
supplies no Selmer cardinality by itself. Given explicit full-Selmer
triviality, Kummer-kernel exactness, and finite-rank coordinates, the
Selmer-to-Mordell--Weil rank-zero implication is now proved in Lean.

The snapshot also includes the conditional aggregator
`Beal/ConditionalBealTheorem.lean`. Both focused targets compile:

```text
lake build Beal.Mazur.Gates.SecondDescent_Real_26
lake build Beal.ConditionalBealTheorem
```

The new audit introduces no `sorry`, `admit`, `sorryAx`, or
`Lean.ofReduceBool`; its declarations use only the ordinary Lean foundation
dependencies already present in the concrete project.

## Historical v7.3.0 source snapshot

The v7.3.0 Task #440 branch extends the v7.2 eigenline edge with a typed
`EutheosGeometryInterface`. It targets Lean and Mathlib 4.12.0. The active B15
edge carries `NormalizedEigenlineData`, derives `QExpansionPrincipleOnV` with
`QExpansionPrincipleOnV_fromEigenline`, and derives `OldNewDecompHyp` from
typed degeneracy-map, coverage, and jitter-indexed separation data. The
remaining explicit proposition-valued edge boundary is `LocalizedRankOne`.

The release-path audit finds no executable `sorry`, `admit`, `sorryAx`,
declared `axiom`, or opaque Ribet shortcut. Its focused foundational footprint
is `[propext, Quot.sound]`. These are audit-scope statements, not a claim that
the typed Wiles, Tate, enriched-plan, support, or transport inputs have been
constructed from first principles.

The B15/B20 chain now derives every odd-prime exact-divisibility edge from the
canonical Frey model through `tate_frey_multiplicative_at_model`; the Wiles
plan retains only odd-prime quotient data. Consequently the broader final
audit names the global conductor, local Tate, and Wiles boundaries and also
records the existing `Classical.choice` footprint of the `ZMod` unit argument.
The choice-free patching/rank-one audit remains `[propext, Quot.sound]`.

## Source-tree map

```text
lean/
├── Beal.lean                 complete-library import manifest
├── README.md                 this source-tree guide
└── Beal/
    ├── README.md             numbered Beal development guide
    ├── B00_*.lean            Opera Numerorum metadata
    ├── B01_*.lean ... B13_*  foundational and historical bridges
    ├── B14_*.lean            current Frey/Tate and modular-form boundary
    ├── B15_*.lean            level descent and Ribet iteration
    ├── B16_*.lean ... B21_*  final assembly and Fermat corollary
    └── Galois/
        ├── README.md         complete Galois/Hecke boundary guide
        └── 01_*.lean ...     typed representation and support interfaces
```

The two screenshots of the repository correspond to this directory and its
child directory `Beal/`. Each has its own README because they answer different
questions:

- this file explains the **Lean source boundary**;
- `Beal/README.md` explains the **mathematical development**;
- `Beal/Galois/README.md` explains the **Galois and Hecke boundary**.

## Why the source root is named `lean`

The package configuration in [`lakefile.lean`](../lakefile.lean) sets
`srcDir := "lean"`. Consequently:

```lean
import Beal.B01_Def
import Beal.Galois.«08_RibetProof»
```

refer to files below `lean/`, not to files at the repository root. The
directory name is a filesystem convention; the Lean namespace is `Beal`.
`Beal.lean` is therefore a normal module named `Beal`, not a second copy of
the project.

The package declares the source library targets `Beal` and `lean`. The
important project-facing target is `Beal`, whose umbrella module is
`lean/Beal.lean`. Individual modules can also be built directly when a
smaller feedback loop is useful.

## The import manifest

[`Beal.lean`](Beal.lean) imports the numbered modules in order:

1. B00 metadata;
2. the B01–B13 core and wrapper history;
3. the B14 Frey, Tate, and level-2 ingredients;
4. B15 iteration;
5. B16–B21 final assembly and the Fermat corollary.

This manifest is intentionally explicit. It makes the full source inventory
visible to Lean and to CI, including modules that are not on the shortest
dependency path to the final theorem. It is not meant to replace the imports
inside individual files: each file should state the dependencies needed for
its own declarations.

The Galois directory is not imported wholesale by `Beal.lean`; the active B15
path reaches it through the specific typed bridge imported by
`B15_RibetIterate.lean`. This keeps the dependency graph inspectable and
avoids making the top-level manifest conceal a cycle or an accidental
dependency.

## The Core/wrapper method

The formalization separates a portable mathematical skeleton from concrete
Lean and Mathlib infrastructure.

### Core files

Files ending in `_Core.lean` are intentionally import-free. They use Lean's
built-in language and primitive types to state the logical or arithmetic
shape of a result without importing Mathlib.

This restriction is valuable for two reasons:

1. the theorem's logical content can be inspected without a large transitive
   library context;
2. an imported theorem cannot silently bring an unreviewed axiom or a
   convenient but mathematically stronger definition into the core.

CI checks that Core files contain no imports. Their declarations are also
audited with `#print axioms`; the expected foundational footprint is the
ordinary Lean/library foundation, not a hidden mathematical assumption.
The Core rule does not mean that every proposition is already a theorem. A
Core file may define an explicit proposition describing an open mathematical
obligation.

### Concrete files

The corresponding non-`_Core` files provide the concrete setting and bridges.
They may import Mathlib and earlier Beal modules. Typical uses include:

- `Nat.Prime`, divisibility, gcd, and factorization;
- integers and `natAbs`;
- `ZMod ℓ` and finite-field operations;
- finite lists and coefficient sequences;
- matrices, linear maps, modules, and representation-theoretic structures;
- tactics such as `ring`, `simp`, and arithmetic automation.

These files prove the elementary connective lemmas that make the abstract
Core statements usable. They may carry foundational Lean dependencies such as
`propext`, `Quot.sound`, or, in older constructions, `Classical.choice`. Such
dependencies are audited rather than confused with named mathematical inputs
like Wiles's modularity theorem.

The naming is a guide, not a claim that every non-Core file is a thin wrapper.
The newer B14–B20 modules contain substantial concrete arithmetic, while the
Core files preserve the smallest reusable statement beneath it.

## How Mathlib enters the development

Mathlib is used at the concrete edge of the project, not as a substitute for
stating the mathematics.

```text
import-free Core proposition
          │
          ▼
Mathlib-backed wrapper or concrete construction
          │
          ▼
typed theorem, bridge, or explicit missing interface
```

For example, B01's Core layer uses explicit common-divisor witnesses for
primitivity. `B01_Def.lean` then supplies the familiar `Nat.gcd`-based API
and proves the conversion lemmas. This lets the core remain auditable while
the wrapper remains pleasant to use in the rest of the development.

The same principle appears later with finite coefficient data. The Galois
modules use `ZMod ℓ`, lists, submodules, and endomorphisms to make the
interfaces typed and executable at the level of definitions. They do not
pretend that a finite list is automatically a complex-analytic cusp form.
See [`Beal/Galois/README.md`](Beal/Galois/README.md) for that boundary in
detail.

## Dependency shape

There are two useful views of the dependency graph.

### The numbered spine

```text
B01 definitions
   ↓
B02 Frey arithmetic → B03 conductor → B04 modular/q-expansion boundary
   ↓                                      ↓
B05 Hasse/Wiles and modularity        B06–B13 historical bridges
                                           ↓
B14 Frey/Tate and level-2 arithmetic
   ↓
B15 level descent and iteration
   ↓
B16–B20 final assembly
   ↓
B21 Beal ⇒ Fermat corollary
```

The B00–B13 modules document earlier stages of the formalization and remain
useful as small examples of the Core/wrapper discipline. The B14–B20 path is
the current typed architecture described in the repository root README.

### The Galois branch

```text
B14 typed Frey model
        ↓
B15 exact descent plan
        ↓
Galois 01–06 representation and Hecke interfaces
        ↓
Galois 07f–07n genuine support and eigenline boundaries
        ↓
B15 per-edge token transport
        ↓
B16/B20 contradiction assembly
```

The branch is intentionally reached through typed imports. A module should
import the narrowest earlier interface that it actually uses rather than
importing the whole project for convenience.

## Building and checking

From the repository root:

```sh
# Build the complete Beal library.
lake build Beal

# Build the Galois endpoint alone.
lake --old build 'Beal.Galois.«08_RibetProof»'

# Build the coefficient-level Hecke module alone.
lake --old build 'Beal.Galois.«05_Hecke»'
```

The project uses Lean 4.12, recorded in
[`lean-toolchain`](../lean-toolchain), and Mathlib v4.12.0, recorded in
[`lakefile.lean`](../lakefile.lean). The `--old` form is retained in the
focused Galois commands because it is the form used by the repository's
existing focused checks; the complete project command is `lake build Beal`.

CI performs more than a successful compilation. It checks, among other
things:

- that source files contain no executable `sorry` placeholders;
- that Core files remain import-free;
- that `Prop := True` shortcuts are not used in audited Core paths;
- that important declarations have the expected axiom footprint;
- that the complete library and final audit modules elaborate together.

A green build therefore means that the declared interfaces and proofs are
consistent with Lean. It does not mean that an explicit interface for Wiles,
Tate, newform support, or the enriched descent plan has been replaced by a
first-principles formalization.

## Reading and extending this tree

When adding a new result:

1. decide whether its logical shape belongs in a new import-free Core file;
2. put Mathlib-dependent definitions and conversion lemmas in the concrete
   file;
3. import only the preceding interfaces needed by the declaration;
4. name any unproved mathematics as an explicit proposition, structure, or
   data-valued interface;
5. add the module to `Beal.lean` if it is part of the complete source
   inventory;
6. document the new boundary in the nearest README.

The most important discipline is semantic honesty: a definition of a
proposition is not a proof of that proposition, and supplied data is not a
theorem that constructs that data. The source tree is designed so
that those distinctions remain visible both in the code and in its
documentation.

## v7.3.1 audit clarification

The phrase **“0 axiom” is scoped to the typed Eutheos focused boundary**. It
means that `Beal.Galois.OldNewDecompHyp_from_Eutheos`, `EutheosJitter`, and
the jitter-indexed separation kernel introduce no proposition-valued axiom or
opaque declaration of their own and audit to `[propext, Quot.sound]`. The
V-specific edge is clean. The Task #440 build covered 2,424 targets and CI
#239 completed successfully in 53m23s.

This is not a repository-wide claim. B05 retains the intentionally named
`mazur_irreducibility_axiom` only for its legacy natural-number compatibility
predicate. Wiles lifting is now an explicit hypothesis at that legacy boundary,
while `Beal.Patching.REqualsT` constructs the theorem-level, semiring-carrier
R=T equivalence from explicit two-sided comparison data. It does not assert
complete-local or commutative ring structure. Neither boundary is part of the
typed Eutheos bridge.

The real-number interpretation of the fixed-point inequality
`‖p·α₀‖ < 1/p` remains isolated in the desert-brothers module and audits to
`[propext, Classical.choice, Quot.sound]`. That choice-bearing real bridge
does not leak into the typed Eutheos/Beal path.

## v8.0.0 patching layer

`Beal/Patching/` replaces B15's proposition-valued `hRank` field with explicit
Taylor–Wiles prime levels, patched modules, transition maps, diamond actions,
inverse-limit projections, depth data, and rank-one coordinates.
`LocalizedRankOne_from_Patching` constructs the equivalence from those
coordinates and audits to `[propext, Quot.sound]`.
`REqualsTComparisonData` adds the genuine Hecke-to-deformation map and both
inverse laws as supplied data; `taylor_wiles_r_equals_t` then derives the
semiring-carrier R=T comparison, restricted Ihara kernel zero, and localized
rank one with the same audit.

The level-zero reconstruction law is a theorem, not a certificate field:
coordinate compatibility propagates it across all finite levels and
projection extensionality proves equality in the inverse-limit candidate.
The patching certificate is also indexed by the exact Frey residual
representation and exact Hecke attachment. It exposes a
deformation-to-localized-Hecke map whose residual evaluation extends that
attachment, plus finite-level Taylor–Wiles diamond actions. The map is not
proved to be an isomorphism, and the diamond lifts are not yet identified
with Frobenius lifts; those remain part of the R=T modularity-lifting step.

Prime selection and construction of the patched tower remain honest,
Type-valued boundaries. The jitter inequality indexes the data but does not
prove their existence.

