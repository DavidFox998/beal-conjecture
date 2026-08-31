# `Beal`

This directory contains the numbered Lean development for Beal's Conjecture.
It is the main mathematical body of *Opera Numerorum*: elementary
divisibility and the Frey curve appear first, then conductor and modular-form
interfaces, and finally the typed Tate/Wiles/Ribet architecture.

This README is a map of the directory. It does not replace the file-level
comments or the more specialized
[`Galois/README.md`](Galois/README.md).

## v7.3.0 mathematical boundary

On `beal-4.12-ihra-eutheos`, extending the v7.2 V-specific eigenline edge, the
B15 edge no longer accepts an opaque or textual
q-expansion premise. `NormalizedEigenlineData` supplies a normalized
one-dimensional eigenline, and `QExpansionPrincipleOnV_fromEigenline` derives
the exact V-specific cancellation theorem used by restricted Ihara.

The old/new complement is now derived at the existing theorem boundary by
`OldNewDecompHyp_from_Eutheos`. Its choice-free
`EutheosGeometryInterface` exposes named old/new submodules, typed degeneracy
maps `αₚ` and `βₚ`, their exact joint old-image representation, Hecke
stability, genuine-form generation, V-membership, coverage, and a
jitter-indexed separation kernel. The fixed-point inequality is not presented
as a proof of modular geometry by itself. The remaining proposition-valued
edge obligation is localized rank-one `LocalizedRankOne`. Newform support
witnesses are retained as `NewSubspaceSupportData`, and
`NewformHeckeToPreservedTokenTransport` converts them to the preserved-form
token without choice. No inhabitant of those open data boundaries is claimed.

The Lean 4.12.0 release path contains no executable `sorry`, `admit`,
`sorryAx`, declared `axiom`, or opaque Ribet shortcut. The focused edge
footprint is `[propext, Quot.sound]`; the final theorem remains conditional on
the typed Wiles, Tate, and enriched-plan inputs.

## The X₀ moduli boundary

`B17_X0Moduli.lean` defines a deliberately small vocabulary for the moduli
datum used by the planned Frey/Mazur bridge. `GaloisStableCyclicLevel` records
a finite cyclic subgroup of the existing `GeometricFreyPoint` group, its
order, and stability under the existing absolute-Galois `galoisAction`.
`X0ModuliDatum` binds that level data to its `FreyMazurContext`.

This is **not** a construction of the modular curve `X₀(N)`. Mathlib 4.12
provides Weierstrass curves, their point-group operations, algebraic closures,
finite groups, and polynomial arithmetic. It does **not** provide the
scheme-level `X₀(N)`, its compactification or function field, the
representability theorem for the moduli problem, a general elliptic-curve
quotient/isogeny API at this boundary, genus-two Jacobian descent, or the
Kenku–Mazur rational-isogeny classification.

Accordingly, the new records are formalized Lean data and the stability
lemmas are proved Lean theorems. Their interpretation as rational points on a
genuine modular curve remains a later, explicitly named boundary. In
particular, a successful build of this file does not prove a modular-curve
rational-point theorem, residual irreducibility, or the Beal Conjecture.

### Kernel to mixed level

`Mazur/KernelToX0.lean` proves the kernel-level bridge used after residual
reducibility. It chooses the already-proved rational Frey point `(0, 0)`,
base-changes it to `ℚ̄`, and proves that its cyclic subgroup has order two and
is fixed by the absolute Galois action. For a `RationalPIsogenyKernel`, it
then proves:

- the order-two subgroup and order-`p` kernel are disjoint because `p ≥ 5`;
- addition is a bijection from their product to their internal sum, so the
  sum has order `2p`;
- a geometric generator of the `p`-kernel may be chosen without asserting
  that generator is rational;
- the sum of that generator with the rational two-torsion point has order
  `2p`, so the internal sum is cyclic;
- Galois stability of both factors gives Galois stability of the mixed
  subgroup; and
- the existing residual-reducibility predicate therefore yields an
  `X0ModuliDatum` of level `2p`.

These are Lean-proved statements about geometric point groups and stable
cyclic subgroups. They do not construct a quotient elliptic curve, an
isogeny morphism, a scheme-level `X₀(2p)`, its cusps, or a non-cuspidal
rational point. Interpreting the datum on a genuine modular curve remains the
explicit realization boundary for later work.

### The explicit `X₀(26)` model

`Mazur/X0_26_Model.lean` records the Bruin--Najman genus-two equation

```text
y² - (x³ + 1)y = -2x⁵ + 2x⁴ - 5x³ + 2x² - 2x
```

and its completed-square sextic

```text
Y² = x⁶ - 8x⁵ + 8x⁴ - 18x³ + 8x² - 8x + 1.
```

Closed Lean computations certify the sextic discriminant is nonzero, its
even-degree genus certificate is `2`, and the four displayed rational model
points satisfy the equation. These are labelled by the four cusp
representatives attached to the divisors `1`, `2`, `13`, and `26`.

This is finite arithmetic only. It does not prove that the displayed points
exhaust `X₀(26)(ℚ)`, compute the Jacobian, or prove rank zero. The
rank/descent argument and the resulting rational-point classification remain
the explicit 476d boundary.

### Rational points and the 476d boundary

`Mazur/X0_26_RationalPoints.lean` is the boundary module for the
rational-point classification. It preserves the source-backed four-cusp
finite set from 476c; it does not assert an additional pair of noncuspidal
CM points or a six-point classification.

Gate M1 is now vendored as `Mazur/Gates/M1_BC6.lean`. It proves the actual
logarithmic `C(S₄) > 2√13` inequality with no axiom or `sorry`. The file
retains no named certificate axioms:

| Input | Status |
| --- | --- |
| Bost--Connes bound `C(S₄) > 2√13` | Lean-proved in the vendored M1 gate |
| GRH for `X₀(143)` threshold | Lean-proved in the vendored Lindelöf M2 gate |
| BSD-shaped rank certificate | Constructed from the declared record, not a genuine BSD rank proof |
| M1/M2 to `L(J₀(26),1) ≠ 0` | Explicit analytic bridge hypothesis |
| Gross--Zagier/Kolyvagin rank zero | Explicit local implication hypothesis |
| Mod-3 `2 × 2` determinant | Lean-proved finite calculation |
| Rank/formal immersion to four-cusp exhaustiveness | Explicit Chabauty hypothesis |

`Mazur/Gates/Kolyvagin_J0_26_NoSorry.lean` and
`Mazur/Gates/FormalImmersion_J0_26_NoSorry.lean` are Beal-local and import no
RH or BSD repository. They contain no `sorry` or declared axiom. Rational model
points are subtypes carrying their equation certificates; the M1/M2 thresholds
and finite `2 × 2` determinant are checked in Lean. The unavailable L-value
interpretation, Heegner height, Kolyvagin implication, torsion identification,
global exhaustiveness, and Frey modular realization remain typed hypotheses.
The verified finite set remains the four source-backed cusps: no two CM points
or six-point classification are invented.

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
the code does not claim to have formalized the full global Tate algorithm.

At 2, `TwoAdicInvariantWitness` records only the literal parity split for
the displayed discriminant and `c₄`; its cases are not reduction types.
`IsTwoAdicallyScalingMinimal` states the diagonal scaling obstruction for
the displayed integral equation. `FreyTwoAdicLocalData` keeps those
hypotheses outside the curve model. The elementary Frey formulas prove that
both invariants are even and hence establish the `discEvenC4Even` case.

An external analysis must provide a visible
`FreyTwoAdicConductorCertificate` with a specific exponent and exact
power-of-two divisibility proof for the same model's supplied conductor.
No such certificate is constructed here; the repository does not prove full
minimality under every admissible change, classify Kodaira type, or run
Tate's algorithm at 2. The global conductor remains opaque supplied data
with prime support, not an internally constructed Mathlib elliptic conductor.

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
- an odd-prime quotient descent plan;
- a `GaloisEdgeWitness` for each edge;
- a model-dependent Tate certificate deriving exact divisibility for the
  quotient plan;
- a separate 2-adic exponent-one certificate making the terminal level honest;
- an `EnrichedPlanSupplier` that adds the Galois/Hecke data;
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
| `B17_FreyRationalTwoTorsion.lean`, `B17_FullE2.lean`, `B17_MazurIrreducible_*` | genuine rational Frey `E[2]`, geometric `E[p]` with its absolute-Galois action, and the explicit Mazur-classification supplier |
| `B18_FreyIsElliptic_*` | ellipticity interface for the Frey model |
| `B19_BealFinalAssembly_*` | assembly of the major typed bridges |
| `B20_BealConjectureDone_*` | final theorem-shaped statement and axiom audit |
| `B20_Beal_Core.lean` | the corresponding small final Core vocabulary |

`B20_BealConjectureDone.lean` defines
`BealConjectureConditionalOnEnrichedPlan`, whose first two inputs are an
explicit `EnrichedPlanSupplier` and an explicit
`TwoAdicExponentOneSupplier`. The resulting statement is machine-checked
conditional mathematics, not an unconditional proof of Beal's conjecture.
Both suppliers are data-valued and inspectable; neither is a declared global
axiom, and this module does not construct them.

`B17_FreyRationalTwoTorsion.lean` defines the actual Frey Weierstrass curve
`Y² = X(X - Aˣ)(X + Bʸ)` over `ℚ` with Mathlib's elliptic-curve API. It proves
the discriminant formula, proves nonsingularity for positive bases, constructs
the three pairwise-distinct nonidentity rational points `(0, 0)`, `(Aˣ, 0)`,
and `(-Bʸ, 0)`, and proves each point is killed by doubling.

`B17_FullE2.lean` closes the former naming gap. It proves that every affine
point with `Y = 0` has x-coordinate `0`, `Aˣ`, or `-Bʸ` by factoring the Frey
cubic over `ℚ`. It also proves that every nonidentity point killed by doubling
has `Y = 0`, then identifies the complete rational 2-torsion set as exactly
`{O, (0,0), (Aˣ,0), (-Bʸ,0)}`. B17's `HasFullRationalTwoTorsion` now carries
that set equality; the lower-bound `HasThreeDistinctRationalTwoTorsion` remains
available under its original honest name.

`B17_MazurIrreducible_Core.lean` separately proves the elementary statement
that an exactly-dividing prime can be removed from a natural-number level while
leaving a positive cofactor not divisible by that factor. The wrapper fixes an
actual `FreyIntegralModel`, a prime, and model-indexed B14
`FreyConductorData` in `FreyMazurContext`. It then base-changes the canonical
Frey curve to `ℚ̄`, defines its geometric `p`-torsion subgroup, and lets
`Gal(ℚ̄/ℚ)` act by applying each algebra automorphism to affine coordinates.
`FreyResidualRepresentationReducible` now means that this action preserves an
order-`p` subgroup—equivalently, the kernel datum of a rational `p`-isogeny.

B14 exposes the exact displayed-model certificates used by the specialization:
the good-reduction certificate says that the prime does not divide the
displayed discriminant,
multiplicative reduction is the bad-discriminant/unit-`c₄` branch, and
semistability is their disjunction. B17 proves that the residual prime has good
and therefore semistable reduction from `p ≥ 5` and the three recorded
non-divisibility hypotheses.

`MazurRationalIsogenyClassification` is an explicit theorem-valued supplier.
Given the proved full rational `E[2]` and reduction certificates, it must rule
out a genuine rational `p`-isogeny kernel. `frey_irreducible_of_mazur` and
`frey_mazur_irreducibility_boundary` derive the B17 conclusion from that
supplier. There is no declared B17 domain axiom, but the pinned Mathlib
revision still does not construct the supplier or contain Mazur's modular-curve
rational-point proof. The formal status is therefore conditional and explicit,
not an unconditional reconstruction of Mazur's theorem.

The public `mazur_irreducibility_boundary : Prop := True` is the deliberately
trivial marker for that missing mathematics. Its source comment and focused CI
exception identify it as an honest boundary, not as residual irreducibility.
The substantive residual theorem remains the conditional
`frey_irreducible_of_mazur`, which cannot be used without the supplier.

`B17_X0Moduli.lean` formalizes the valid kernel-level bridge to mixed level.
It selects the rational point `(0,0)` from the exhaustive Frey `E[2]`
classification, base-changes it to the geometric point group, and takes its
cyclic order-two subgroup. For a Galois-stable order-`p` kernel supplied by
residual reducibility, it proves that the two subgroups intersect only at the
identity. Their subgroup sum is proved equal to the cyclic subgroup generated
by the sum of an order-two generator and a chosen generator of the prime-order
kernel, so its cardinality is exactly `2p`. The construction also proves
Galois stability of the mixed subgroup.

The resulting `X0ModuliDatum` is the rational `X₀(2p)` moduli datum available
in the pinned library: an underlying Frey context with a Galois-stable cyclic
geometric subgroup of order `2p`. It does not claim a rational generator of
the `p`-kernel, construct an elliptic-curve quotient, or identify a point on a
scheme-level compactified modular curve. `X0MixedLevelRealizationBoundary`
states the narrow theorem-valued interface for that later realization.

The final path still names the deep inputs that have not been reconstructed
from first principles:

1. `Beal.FreyTate.wiles_modularity`;
2. `Beal.FreyTate.TateStep2.frey_conductor_data`;
3. `Beal.FreyTate.TateStep2.tate_step2_odd_prime_external`;
4. the explicit 2-adic exponent-one supplier;
5. the explicit enriched-plan supplier carrying the Galois/Hecke support data.

The first three are named mathematical interfaces. The final two are explicit
missing data boundaries. The final B20 route now uses the proved
`tate_frey_multiplicative_at_model` specialization to derive every odd-prime
exact-divisibility edge from the canonical conductor. The Wiles plan carries
only primality, residual-prime separation, oddness, and quotient equations.
This removes duplicated local arithmetic without claiming that the Tate
boundary itself has been formalized.

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
Wiles-supplied residual prime, form token, and odd-prime quotient plan
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
- an inhabitant of the explicit Mazur rational-isogeny classification supplier;
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

## v7.3.1 audit clarification

The phrase **“0 axiom” is scoped to the typed Eutheos focused boundary**. It
means that `Beal.Galois.OldNewDecompHyp_from_Eutheos`, `EutheosJitter`, and
the jitter-indexed separation kernel introduce no proposition-valued axiom or
opaque declaration of their own and audit to `[propext, Quot.sound]`. The
V-specific edge is clean. The Task #440 build covered 2,424 targets and CI
#239 completed successfully in 53m23s.

This is not a repository-wide claim. `wiles_lifting_axiom` remains a
mathematical boundary. The separately named `mazur_irreducibility_axiom`
inhabits only B05's legacy natural-number compatibility predicate: that
predicate is not residual-representation irreducibility, and B05 is not
imported by the active B15/B20 path. B17 instead takes an explicit
`MazurRationalIsogenyClassification` supplier for the genuine Frey curve over
`ℚ̄`. The focused audit requires the B17 declarations to remain free of named
domain axioms; it does not claim that this repository constructs the supplier.
The separate `mazur_irreducibility_boundary : Prop := True` declaration is an
explicit status marker for precisely this unconstructed boundary.

The real-number interpretation of the fixed-point inequality
`‖p·α₀‖ < 1/p` remains isolated in the desert-brothers module and audits to
`[propext, Classical.choice, Quot.sound]`. That choice-bearing real bridge
does not leak into the typed Eutheos/Beal path.

## v8.2.0 full rational E[2] exhaustiveness

The full rational 2-torsion name is now theorem-backed. `Frey_E2_exhaustive`
classifies every zero-y affine root of the Frey cubic;
`freyTwoTorsion_affine_y_eq_zero` supplies the converse group-law bridge; and
`freyFullE2_eq` proves the exact four-point set equality including infinity.
This closes only the rational `E[2]` exhaustiveness gap. B17 now defines the
geometric `p`-torsion Galois action and rational `p`-isogeny kernel predicate.
Mazur's classification is an explicit theorem-valued input rather than a
declared axiom; no construction of that input is claimed.

## v8.0.0 patching layer

The `Patching/` family sits between the typed Eutheos geometry and B15.
It exposes `Qₙ`, finite levels, transitions, diamond operators, inverse-limit
projections, depth equalities, and generator/coordinate laws. B15 derives
`LocalizedRankOne` from these fields instead of accepting `hRank` directly.

This remains conditional mathematics: an enriched-plan supplier must construct
the patching data for every edge. No claim is made that the fixed-point jitter
inequality alone supplies Taylor–Wiles primes or an R=T theorem.
