# `Beal`

This directory contains the numbered Lean development for Beal's Conjecture.
It is the main mathematical body of *Opera Numerorum*: elementary
divisibility and the Frey curve appear first, then conductor and modular-form
interfaces, and finally the typed Tate/Wiles/Ribet architecture.

This README is a map of the directory. It does not replace the file-level
comments or the more specialized
[`Galois/README.md`](Galois/README.md).

## Reusable Shimura old/new boundary

On `beal-4.12-ihra-eutheos`, extending the v7.2 V-specific eigenline edge, the
B15 edge no longer accepts an opaque or textual
q-expansion premise. `NormalizedEigenlineData` supplies a normalized
one-dimensional eigenline, and `QExpansionPrincipleOnV_fromEigenline` derives
the exact V-specific cancellation theorem used by restricted Ihara.

The old/new complement is derived at the existing theorem boundary by
`OldNewDecompHyp_from_Eutheos`. Its choice-free
`EutheosGeometryInterface` exposes named old/new submodules, typed degeneracy
maps `αₚ` and `βₚ`, their exact joint old-image representation, Hecke
stability, genuine-form generation, V-membership, and coverage. Separation is
not a field of that interface. A reusable `ShimuraOldNewGeometrySupplier`
provides the geometric comparison saying an intersection either forces the
opposite fixed-point bound or is zero; the edge's jitter witness rules out the
first branch. The fixed-point inequality is therefore not presented as a
proof of modular geometry by itself. The remaining proposition-valued edge
obligation is localized rank-one `LocalizedRankOne`. Newform support
witnesses are retained as `NewSubspaceSupportData`, and
`NewformHeckeToPreservedTokenTransport` converts them to the preserved-form
token without choice. No inhabitant of those open data boundaries is claimed.

The Lean 4.12.0 release path contains no executable `sorry`, `admit`,
`sorryAx`, declared `axiom`, or opaque Ribet shortcut. The focused edge
footprint is `[propext, Quot.sound]`; the final theorem remains conditional on
the typed Wiles, Tate, and enriched-plan inputs.

## The mathematical target

Beal's Conjecture says that a positive-integer solution

```text
Aˣ + Bʸ = Cᶻ,       x, y, z ≥ 3
```

must have a common prime divisor in `A`, `B`, and `C`. The formal
development focuses on the primitive contradiction form: assume the
exponents and coefficients satisfy the equation while the three
coefficients are coprime, construct the associated Frey data, and transport
a modular object down to a level where the relevant cusp-form space is zero.

The code is intentionally honest about what is and is not formalized. The
arithmetic around the named interfaces is machine-checked. Deep theorems
from the literature remain explicit inputs until their proofs and their
correct mathematical objects are actually constructed in Lean.

## Directory at a glance

```text
Beal/
├── B00_OperaNumerorum.lean
├── B01–B13                     definitions and historical bridges
├── B14_*                       Frey curve, Tate, level-2, and form data
├── B15_*                       exact descent plans and Ribet iteration
├── B16–B20                     final contradiction and assembly
├── B21_*                       Beal implies Fermat corollary
├── Galois/                      representation, Hecke, and support boundary
└── README.md                   this guide
```

Most numbered bricks have two files:

```text
Bnn_Thing_Core.lean   import-free logical/arithmetic skeleton
Bnn_Thing.lean        concrete Mathlib-backed wrapper or development
```

There are intentional exceptions. Some later files are concrete support
modules whose names describe a mathematical boundary rather than a
Core/wrapper pair, such as `B14_FreyTate.lean`,
`B15_RibetIterate.lean`, and `B20_BealConjectureDone.lean`.

## The numbered development

### B00 — project metadata

`B00_OperaNumerorum.lean` is a small, import-free metadata module. It records
the project version, the intended proof tower, audit notes, and the
relationship between this development and the wider *Opera Numerorum*
program. It is documentation represented as Lean definitions, not a
mathematical proof.

### B01 — Beal definitions and primitivity

`B01_Def_Core.lean` gives the minimal definitions:

- explicit divisibility by a witness `∃ q, n = d * q`;
- the primitive-triple condition;
- the Beal solution predicate;
- the Beal conjecture proposition.

`B01_Def.lean` supplies the concrete API, including the `Nat.gcd`-based
wrapper and conversion theorems between the wrapper and Core statements.
Keeping the common-divisor witness in Core avoids making the logical
foundation depend on Mathlib's gcd implementation.

### B02–B04 — Frey arithmetic, conductor shape, and modular data

These files establish the early arithmetic language:

| Files | Role |
|---|---|
| `B02_Frey_Core.lean`, `B02_Frey.lean` | Frey discriminant and its nonvanishing under a Beal solution |
| `B03_Conductor_Core.lean`, `B03_Conductor.lean` | conductor divisibility predicates and prime arithmetic |
| `B04_Modular_Core.lean`, `B04_Modular.lean` | modular-form boundary statements |
| `B04_QExpansion_Core.lean` | the small Core statement for q-expansion data |

These modules should be read as successive interfaces. They do not construct
the full arithmetic geometry of an elliptic curve or a modular form merely by
naming the associated proposition.

### B05–B09 — Hasse, Wiles, Galois, and early level lowering

The B05–B09 files are the first broad formal scaffold:

- `B05_HasseWiles_*` records Hasse-style bounds and the Wiles-facing
  vocabulary;
- `B05_Modularity_*` names the modularity, Mazur, and Ribet interfaces;
- `B06_Final_*` and `B09_FinalContradiction_*` assemble earlier bridges;
- `B07_Galois_*` and `B08_LevelLowering_*` state the Galois and lowering
  shapes needed by the argument.

The older modularity file contains explicitly named mathematical axioms for
the deep results it does not yet prove. They are visible in the source and
audited; they are not hidden behind `sorry`.

The more detailed current Galois architecture lives in `Galois/` rather than
being folded into these historical modules.

### B10–B13 — the real-arithmetic Ribet bridge

The B10–B13 files refine the earlier scaffold around a real/integer
formulation of the descent:

| Files | Role |
|---|---|
| `B10_RibetReal_*` | real-arithmetic Ribet statements and their Core shape |
| `B11_Epsilon_*` | epsilon and positivity bookkeeping |
| `B12_RibetProof_*` | proof-facing real Ribet interfaces |
| `B13_RibetRealDefs_*` | supporting divisibility and definition bridges |

These files preserve the history of the formalization and provide useful
small examples of how a domain-specific wrapper can sit over an
import-free proposition.

### B14 — the current Frey/Tate/form boundary

B14 is a family of related modules rather than one file:

| File | Purpose |
|---|---|
| `B14_FreyConductor_Core.lean` | minimal conductor/divisibility shape |
| `B14_FreyConductor.lean` | concrete conductor predicates and bridges |
| `B14_PrimeNotDvd_Core.lean` | prime non-divisibility Core facts |
| `B14_FreyS2.lean` | the level-2 cusp-form endpoint used by the final contradiction |
| `B14_FreyTate.lean` | typed Frey model, Weierstrass invariants, discriminant, and conductor boundary |
| `B14_TateC4Nonzero.lean` | local `c₄` nonvanishing arithmetic |
| `B14_TateInImpliesOrd1.lean` | derived bridge from the local Tate interface to the Frey conductor statement |
| `B14_FormRepresentation.lean` | typed residual/form representation vocabulary |

`FreyCurveModel` is deliberately a typed record. Its conductor is data of
the supplied model, accompanied by the local and prime-support properties
needed later. It is not a fabricated radical formula for the conductor, and
the code does not claim to have formalized the full 2-adic or global Tate
algorithm.

The elementary formulas in `B14_FreyTate.lean` are proved directly with
Mathlib arithmetic. The named Wiles and Tate boundaries remain visible as
named inputs.

### B15 — exact plan-indexed descent

`B15_LevelTo2_Core.lean` contains the smallest statement of a level-lowering
step. `B15_LevelTo2.lean` provides the concrete wrapper. The main current
development is `B15_RibetIterate.lean`.

B15 does not accept an unstructured proposition saying “Ribet lowers the
level.” Instead it works with:

- a typed `PreservedForm`;
- an exact arithmetic descent plan;
- a `GaloisEdgeWitness` for each edge;
- an `EnrichedPlanSupplier` that enriches the exact plan supplied by the
  Wiles boundary;
- a recursive transport proof ending at level 2.

Each `GaloisEdgeWitness` carries its own residual representation, maximal
ideal, genuine coefficient submodule, localized Hecke data, typed Eutheos
geometry, rank boundary, the explicit pair-level q-expansion premise, the
07j support bridge, and data-valued 07k newform support plus representation/
Hecke transport. Restricted Ihara and `OldNewDecompHyp` are derived at their
use sites. The data-valued support is carried directly because the
proposition-valued support existential cannot be eliminated into a preserved
form token without choice.

This proof-relevant indexing matters: the enriched supplier cannot discard
the certified `N`, `p`, and `M` values and silently substitute a different
descent chain.

### B16–B20 — final assembly

The final modules assemble the conditional chain:

| Files | Role |
|---|---|
| `B16_BealFinal_*` | contradiction from the terminal level-2 obstruction |
| `B17_MazurIrreducible_*` | explicit Mazur irreducibility boundary |
| `B18_FreyIsElliptic_*` | ellipticity interface for the Frey model |
| `B19_BealFinalAssembly_*` | assembly of the major typed bridges |
| `B20_BealConjectureDone_*` | final theorem-shaped statement and axiom audit |
| `B20_Beal_Core.lean` | the corresponding small final Core vocabulary |

`B20_BealConjectureDone.lean` defines
`BealConjectureConditionalOnEnrichedPlan`, whose first input is an explicit
`EnrichedPlanSupplier`. The resulting statement is machine-checked
conditional mathematics, not an unconditional proof of Beal's conjecture.
The supplier is data-valued and inspectable; it is not a declared global
axiom, and this module does not construct it.

The final path still names the deep inputs that have not been reconstructed
from first principles:

1. `Beal.FreyTate.wiles_modularity`;
2. `Beal.FreyTate.TateStep2.tate_step2_I_n_conductor_one`;
3. the explicit enriched-plan supplier carrying the Galois/Hecke support
   data.

The first two are named mathematical interfaces. The third is an explicit
missing data boundary. This distinction is central to the project.

### B21 — Beal implies Fermat

`B21_FermatCorollary_Core.lean` contains the Core corollary shape.
`B21_FermatCorollary.lean` proves that the Beal predicate immediately rules
out a primitive Fermat solution by taking `x = y = z = n`.

The wrapper exposes both:

- the direct coprime Fermat statement; and
- the full positive-coefficient formulation whose conclusion is a nontrivial
  common gcd.

This is a short logical corollary of the Beal interface, not a replacement
for the Beal proof itself.

## The active proof path

The current B14–B20 architecture can be read as the following typed chain:

```text
primitive Beal data
        │
        ▼
FreyCurveModel and explicit discriminant arithmetic
        │
        ▼
Tate-supplied Frey model and conductor statement
        │
        ▼
Wiles-supplied residual prime, form token, and exact arithmetic plan
        │
        ▼
EnrichedPlanSupplier
        │
        ├── Galois representation and Hecke data
        ├── genuine submodule and pair-level q-expansion premise
        ├── restricted Ihara, old/new, and localized rank boundaries
        └── newform support data + representation/Hecke transport
        │
        ▼
iterated preserved form at level 2
        │
        ▼
S₂(Γ₀(2)) = 0
        │
        ▼
contradiction
```

The level-2 vanishing fact is a small verified endpoint in this scaffold.
The hard modularity and support constructions are kept as named boundaries
instead of being implied by the existence of Lean definitions.

## Core and Mathlib: the working methodology

### Keep the statement portable

When a proposition can be stated with explicit witnesses and elementary
operations, its first version belongs in a `_Core.lean` file. For example,
the Core divisibility relation is:

```lean
def DividesCore (d n : Nat) : Prop := ∃ q : Nat, n = d * q
```

This is intentionally less convenient than importing a large divisibility
API, but it makes the logical content and the data carried by a proof
visible.

### Add concrete mathematics in the wrapper

The non-Core file can then import Mathlib and prove bridges to conventional
objects such as `Nat.gcd`, `Nat.Prime`, `ZMod ℓ`, finite lists, submodules,
and linear maps. The wrapper is where coercions, tactic proofs, and library
lemmas belong.

This separation also makes audits meaningful. A Core theorem that depends on
Mathlib only through a transitive import is not actually a Core theorem; CI
therefore checks the import boundary directly.

### Name open mathematics instead of weakening it

An open theorem should be represented by an explicit proposition, structure,
or data-valued interface with the hypotheses and conclusion written out.
Avoid replacing
it with:

```lean
def OpenTheorem : Prop := True
```

or with a broad opaque axiom that hides several independent obligations.
The current Galois branch demonstrates the preferred alternative: 07n derives
the q-expansion theorem from explicit eigenline data; 07h and 07i expose the
old/new and rank propositions; 07k exposes support and token-transport data;
and B15 carries them on the exact arithmetic edge.

## The Galois directory

`Galois/` is a complete documentation unit within this directory. Its
[`README.md`](Galois/README.md) covers:

- the 01–08 dependency path;
- abstract absolute-Galois and inertia data;
- finite mod-ℓ coefficient and Hecke operations;
- maximal-ideal and newform-support interfaces;
- the genuine 07f–07k support and token-transport boundaries;
- the exact conditional status of the restricted Ihara step.

The short version is that Galois supplies typed boundaries, not a claim that
the classical modularity and level-lowering theorems have been rebuilt.
`B15_RibetIterate.lean` consumes the narrow typed bridge it needs without
creating a B14-to-Galois import cycle.

## What a green build establishes

The complete build verifies that the declarations elaborate, the proved
lemmas type-check, and the audited interfaces have the expected dependency
footprints. It also checks the repository's explicit no-`sorry` and no-stub
rules.

It does **not** establish, by itself:

- Wiles's modularity theorem;
- Tate's local conductor algorithm in full generality;
- construction of the Frey residual representation;
- the Hecke-algebra representation theorem;
- newform decomposition, Ihara/Jacquet–Langlands transport, or multiplicity
  one;
- an unconditional proof of Beal's Conjecture.

Those omissions are not accidental. They are recorded as typed, inspectable
boundaries so that later work can replace one boundary at a time without
changing the meaning of the surrounding proof.

## Building this directory

From the repository root:

```sh
# Complete numbered library and all modules listed by Beal.lean.
lake build Beal

# Useful focused checks.
lake --old build 'Beal.Galois.«05_Hecke»'
lake --old build 'Beal.Galois.«08_RibetProof»'
```

For a new module, first build the narrowest target that contains it, then run
the complete `Beal` build before considering the change finished. If the
module changes an audited boundary, also inspect its `#print axioms` output
and update the nearest README so the documentation remains as honest as the
code.