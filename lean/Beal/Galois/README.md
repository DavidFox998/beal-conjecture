# `Beal/Galois`

This directory contains the typed Galois-representation, mod-ℓ form, level-lowering, and Hecke-theoretic interfaces used by the Beal formalization.

It is intentionally a **boundary layer**, not an unconditional proof of Beal's Conjecture. The files provide data structures, propositions, coefficient operations, and small transport lemmas. They do not silently turn the classical theorems of Wiles, Tate, or Ribet into Lean theorems.

## Directory structure

```text
Galois/
├── 01_Absolute.lean       abstract absolute-Galois and inertia interface
├── 02_ResidualRep.lean    Frey residual-representation data
├── 03_ModLForm.lean       finite mod-ℓ weight-two q-expansion boundary
├── 04_LevelLowering.lean  exact proposition required for a Ribet step
├── 05_Hecke.lean          coefficient Hecke operators and old/new boundary
├── 06_MaximalIdeal.lean   typed residual maximal-ideal attachment boundary
├── 07_NewformSupport.lean explicit lower-level new-support obligation
├── 07b_SupportProof.lean  conditional support construction from six interfaces
├── 07c_Ihara.lean         coefficient-level Ihara map and kernel obstruction
├── 07d_OldNew.lean        Hecke-module old/new decomposition boundary
├── 07e_MultOne.lean       localized multiplicity-one boundary
├── 08_RibetProof.lean     conditional transport from support to lowering
└── README.md              this guide
```

The primary dependency path is:

```text
01_Absolute
      ↓
02_ResidualRep
      ↓
03_ModLForm
      ├──────────────→ 04_LevelLowering
      └──────────────→ 05_Hecke
                              ├→ 06_MaximalIdeal → 07_NewformSupport → 08_RibetProof
                              ├→ 07c_Ihara ────────────┐
                              └→ 07d_OldNew → 07e_MultOne
                                                       │
                                         07b_SupportProof
```

`05_Hecke` imports `03_ModLForm` directly. It therefore receives the earlier Galois and representation definitions transitively, but does not import `04_LevelLowering`. This keeps the coefficient-level Hecke construction independent of the still-open level-lowering transport proposition. `06_MaximalIdeal` is the first layer to place the two boundaries alongside one another: it imports both `04_LevelLowering` and `05_Hecke`, but does not prove either boundary.

`07_NewformSupport` names the support conclusion that the later layers need. The `07c` and `07d` modules are independent coefficient/Hecke-module boundaries, while `07e` combines the old/new carrier with the maximal-ideal layer to name localized multiplicity one. `07b_SupportProof` consumes those named interfaces and proves their conditional logical assembly; `08_RibetProof` separately consumes the resulting support proposition and proves only the final transport into the existing level-lowering proposition.

## Design principles

### Typed boundaries

The Frey curve is represented by the existing typed `FreyCurveModel` from `Beal.B14_FreyTate`. The residual representation, the mod-ℓ form, and the conductor divisibility witness are tied to that model through their types and fields. This prevents a form or representation from silently being associated with a different curve or conductor.

### Explicit hypotheses

The statements in this directory do not infer residual unramifiedness merely from conductor-exponent information. In particular, the fact that an odd prime `p` divides a level exactly once does not, by itself, prove that inertia acts trivially on the residual representation. The level-lowering boundary therefore takes unramifiedness as an explicit hypothesis.

The odd-prime boundary is retained, including `p = 3`: the code records `p.Prime`, `p ≠ 2`, and the exact-divisibility condition separately.

### Finite and algebraic models

The mod-ℓ form record stores a finite list of coefficients. It is not Mathlib's complex-analytic `CuspForm` and does not claim to be an analytic modular form. The Hecke algebra consequently acts on all coefficient sequences `ℕ → ZMod ℓ`, where the required additive and scalar-module structure is available.

### Mathlib integration

The directory uses Mathlib's algebraic and finite structures where they match
the formal boundary, while keeping unavailable arithmetic-geometry results as
explicit propositions:

- `Mathlib.LinearAlgebra.Matrix.GeneralLinearGroup.Defs` supplies the
  two-dimensional linear automorphism carrier used for residual
  representations.
- `ZMod ℓ`, `Fin 2 → ZMod ℓ`, `LinearMap`, `Module.End`, `Submodule`, and
  `Subring` supply the finite coefficient, sequence-module, Hecke-operator,
  and generated-algebra infrastructure.
- `Nat.Prime`, natural-number divisibility, finite lists, and function
  extensionality support the exact-prime and coefficient calculations.
- `Setoid` and quotient types provide the abstract Frobenius-class boundary
  without constructing a concrete absolute Galois group or a field extension.

The Hecke algebra in `05_Hecke` is generated by an explicit inductive
expression language rather than `Subring.closure`. In this nonconcrete
endomorphism setting that keeps the foundation audit constructive and avoids
introducing `Classical.choice` merely to recover witnesses from a closure.
Likewise, `07e_MultOne` expresses rank-one freeness as
`Nonempty (N ≃ₗ[R] R)` rather than using the literal free-module/rank API,
which would add a choice dependency in Lean 4.12.

Mathlib supplies the linear algebra, quotient, and arithmetic machinery used by
these interfaces. It does not supply the mod-ℓ q-expansion principle, the
old/new decomposition, the local Ihara or Jacquet--Langlands argument, a
localized Hecke algebra for this noncommutative endomorphism subring, or the
corresponding multiplicity-one theorem.

### Foundational audit

The modules avoid executable `sorry` placeholders and do not declare
mathematical `axiom`s. The principal declarations across this directory have
been audited for their Lean foundation dependencies; the expected footprint is
the foundational pair

```text
[propext, Quot.sound]
```

These are Lean/library dependencies, not additional mathematical assumptions such as modularity, Tate's theorem, or Ribet's theorem.

## File-by-file guide

### `01_Absolute.lean`

**Imports**

- `Mathlib.LinearAlgebra.Matrix.GeneralLinearGroup.Defs`

**Purpose**

This is the abstract local Galois interface. It does not construct `ℚ̄`, identify a concrete absolute Galois group, or add a topology or field extension. It supplies only the group and subgroup data needed to state inertia and unramifiedness.

**Main declarations**

- `AbsoluteGaloisGroup` — an abstract carrier equipped with a group structure.
- `GaloisSubgroup` — a constructive subgroup interface with membership of `1`, closure under multiplication, and closure under inverses.
- `DecompositionSubgroup` — a decomposition subgroup at a natural-number prime index.
- `InertiaSubgroup` — an inertia subgroup together with its inclusion into the decomposition subgroup.
- `DecompositionElement` — the subtype of elements belonging to a decomposition subgroup.
- `InertiaSubgroup.toDecomposition` and `InertiaSubgroup.toAbsolute` — the two canonical inclusions.
- `inertiaCosetSetoid` — the right-coset relation modulo inertia.
- `FrobeniusClass` and `FrobeniusClass.mk` — the quotient class of a decomposition element modulo inertia.
- `GL2` — the two-dimensional linear automorphism group over `ZMod ℓ`.
- `ResidualRepresentation` — a function from the abstract absolute-Galois carrier to `GL2`.
- `IsUnramifiedAt` — the proposition that every inertia element acts trivially.

**Proved result**

- `isUnramifiedAt_iff` — unfolds `IsUnramifiedAt` to the explicit statement that `ρ g = 1` for every element `g` of inertia. It is an interface equivalence, not a theorem establishing unramifiedness for a particular representation.

### `02_ResidualRep.lean`

**Imports**

- `Beal.Galois.01_Absolute`
- `Beal.B14_FreyTate`

**Purpose**

This file packages the representation data associated with one fixed Frey curve model. The absolute-Galois group and representation remain supplied data; this layer does not construct the elliptic-curve torsion representation.

**Main declarations**

- `FreyResidualRepresentation` — stores:
  - an abstract absolute-Galois group `Gabs`,
  - a representation `rho : Gabs.carrier → GL2 ℓ`,
  - proposition-valued fields for `continuous`, `semisimple`, and `odd`.
- `IsFreyUnramifiedAt` — specializes `IsUnramifiedAt` to the `Gabs` and `rho` stored in a `FreyResidualRepresentation`.

**What is deliberately not proved**

This module does not prove continuity, semisimplicity, oddness, irreducibility, or any implication from Tate's conductor calculation to trivial inertia. Those properties remain explicit inputs for later mathematics.

### `03_ModLForm.lean`

**Imports**

- `Beal.Galois.01_Absolute`
- `Beal.Galois.02_ResidualRep`
- `Beal.B14_FreyTate`

**Purpose**

This file defines the finite mod-ℓ q-expansion boundary and its proposed trace compatibility with a Frey residual representation.

**Main declarations**

- `ModLWeightTwoForm` — a finite coefficient list `f_q : List (ZMod ℓ)`, together with:
  - a witness that the level `N` divides the conductor of the same Frey model,
  - a proposition-valued `nonzero` field.
- `standardBasis` — the two standard basis vectors of `Fin 2 → ZMod ℓ`.
- `modLTrace` — the trace expression for a `GL2 ℓ` automorphism, evaluated on those basis vectors.
- `ModLRealizesRepresentation` — the explicit finite, representative-aware trace compatibility condition:
  coefficients at indices coprime to `N * ℓ` must match the trace of the supplied residual representation on a representative of the corresponding Frobenius class.

The realization condition quantifies over the inertia subgroup, Frobenius quotient class, and decomposition representative. Requiring the equality `FrobeniusClass.mk I g = F` avoids choosing a representative from a quotient by `Classical.choice`.

**What is deliberately not proved**

The finite list is not a construction of a modular form, the trace condition is not a modularity theorem, and no form is transported to a lower level here. Complex-analytic cusp-form infrastructure is outside this boundary.

### `04_LevelLowering.lean`

**Imports**

- `Beal.Galois.01_Absolute`
- `Beal.Galois.02_ResidualRep`
- `Beal.Galois.03_ModLForm`
- `Beal.B14_FreyTate`
- `Beal.B03_Conductor_Core`

**Purpose**

This file states the exact proposition needed for one honest Ribet level-lowering step. It defines the target statement rather than declaring it as an admitted theorem.

**Main declaration**

- `frey_level_lowering_of_unramified` — a proposition whose inputs include:
  - the typed Frey model,
  - residual prime `ℓ`,
  - original level `N` and target level `M`,
  - `M * p = N`,
  - exact divisibility of `N` by `p`,
  - primality of `p`,
  - oddness `p ≠ 2`,
  - a Frey residual representation,
  - an inertia subgroup at `p`,
  - explicit residual unramifiedness,
  - a mod-ℓ form `W` at level `N`,
  - and the realization condition for `W`.

Its conclusion is that there exists a form `W'` at level `M` realizing the same residual representation.

The declaration is a `def` of a proposition, not a proof of that proposition. A future proof must supply the missing Hecke-algebra, newform, and transport arguments. In particular, defining this proposition does not replace the separate Ribet assumption used by the final Beal proof.

### `05_Hecke.lean`

**Imports**

- `Beal.Galois.03_ModLForm`

**Purpose**

This file supplies coefficient-level Hecke operations and an algebraic old/new boundary. It gives the finite q-expansion and coefficient-sequence operations needed for later work, but does not prove that a modular form exists, that a form is a Hecke eigenform, or that level lowering follows.

**Finite coefficient operations**

- `finiteCoeff` — reads a coefficient from a finite list and returns `0` beyond the list.
- `heckeCoeff` — implements

  ```text
  (T_p a)_0 = 0
  (T_p a)_n = a_(p*n) + (if p ∣ n then p * a_(n/p) else 0),  n > 0
  ```

- `heckeCoeff_zero` — proves that the constant coefficient is zero.
- `heckeList` — applies the operation across the finite list while retaining the list's support length.
- `HeckeOp` — applies the coefficient operation to a `ModLWeightTwoForm` at the same level.
- `HeckeOp_level_divides_conductor` — proves that the level-divisibility witness is preserved by `HeckeOp`.

The ambient coefficient formula accepts any natural-number index `p`. The restriction to prime indices away from the level is imposed when generators of the Hecke algebra are formed.

**Degeneracy and old/new boundary**

- `DegeneracyMap` — the finite coefficient-level degeneracy formula from level `M` to level `N`. It requires positive degeneracy factor, the divisibility relation for the factor, and an explicit target witness `N ∣ model.conductor`.
- `OldSubspace` — the set of level-`N` forms obtained from lower levels by an allowed degeneracy map.
- `IsNewform` — the proposition that a form lies in none of the represented lower-level degeneracy images.

The explicit target conductor witness is intentional: `M ∣ N` and `M ∣ conductor` do not imply `N ∣ conductor`.

**Sequence-level Hecke algebra**

- `CoefficientSequence` — the honest ambient module `ℕ → ZMod ℓ`.
- `heckeSequenceCoeff` — the same Hecke coefficient formula on an infinite coefficient sequence.
- `heckeSequenceCoeff_add` — proves additivity pointwise.
- `heckeSequenceCoeff_smul` — proves `ZMod ℓ`-linearity pointwise.
- `HeckeSequenceOp` — packages the operation as a `Module.End`.
- `HeckeGenerators` — the set of `T_p` operators for prime `p` with `p ∤ N`.
- `HeckeExpression` — finite formal expressions built from zero, one, allowed generators, addition, negation, and multiplication.
- `HeckeExpression.eval` — evaluates those expressions as sequence endomorphisms.
- `HeckeAlgebra` — the constructively generated subring given by the range of `HeckeExpression.eval`.
- `heckeSequenceOp_mem_HeckeAlgebra` — proves that every allowed generator belongs to this algebra.

The explicit expression syntax is used instead of `Subring.closure`. In this abstract setting, the closure implementation would introduce `Classical.choice` into the axiom audit. The resulting `HeckeAlgebra` is a genuine generated subring of coefficient-sequence endomorphisms, but it does not yet encode a maximal ideal, eigenform decomposition, or a representation theorem.

### `06_MaximalIdeal.lean`

**Imports**

- `Beal.Galois.04_LevelLowering`
- `Beal.Galois.05_Hecke`

**Purpose**

This file records the Hecke-theoretic data that a genuine replacement for the typed Ribet boundary would need. It does not construct a maximal ideal or prove the Hecke-algebra representation theorem. Instead, it makes the desired attachment to the Frey residual representation and the target support statement explicit.

**Main declarations**

- `HeckeIdealLike` — a two-sided, additive ideal-like subset of `HeckeAlgebra N ℓ`. The interface is explicit because the ambient endomorphism ring need not be commutative.
- `HeckeIdealLike.IsMaximal` — the predicate that every larger ideal-like object is either equal to the candidate or the whole Hecke algebra.
- `IsMaximalIdeal` and `MaximalIdeal` — the typed maximality predicate and its candidate-ideal package. They intentionally use the two-sided interface rather than Mathlib's commutative `Ideal`.
- `ResidueFieldData` and `ResidueFieldIsZMod` — an explicit, supplied identification of the future residue-field carrier with `ZMod ℓ`; no quotient or field construction is claimed.
- `FreyHeckeAttachment` — the required residual attachment data: maximality, residue-field identification, a quotient-style evaluation to `ZMod ℓ`, its kernel, away-from-level Hecke-generator traces, and compatibility with explicit Frobenius representatives.
- `MaximalIdealAttachedToRep` — the interface-only assertion that a candidate maximal ideal is attached to `R` and satisfies `T_p mod 𝔪 = trace(R(Frob_p))` for primes away from `N * ℓ`.
- `coefficientSequenceOfForm` — extends the finite q-expansion boundary by zero to the sequence module on which the Hecke algebra acts.
- `HeckeIdealAnnihilatesForm` — the finite coefficient-level convention that a candidate ideal annihilates a form's extended coefficient sequence.
- `IsSupportedInNewSubspace` — existence of a new finite mod-ℓ form which realizes the same Frey residual representation and is annihilated by the candidate ideal.
- `frey_unramified_implies_maximalIdeal_support` — the exact, still-unproved proposition required for one level-lowering step: under the existing exact-divisibility and odd-prime hypotheses, residual unramifiedness would give new-subspace support for an attached candidate maximal ideal at the lower level.

**What is deliberately not proved**

The module does not produce an ideal, show it is maximal, define a genuine Hecke eigenvalue system, prove a newform decomposition, or derive the displayed support implication. In particular, it does not treat Tate's conductor conclusion as a proof of residual unramifiedness. The final implication remains a `Prop` describing the missing Hecke-algebra representation theorem.

### `07_NewformSupport.lean`

**Imports**

- `Beal.Galois.06_MaximalIdeal`

**Purpose**

This file names the support conclusion at the divided level and states the
unramifiedness-to-support obligation for one exact odd-prime level division.

**Main declarations**

- `SupportInNewSubspace` — a maximal ideal occurs in the finite new boundary
  when its underlying ideal annihilates a new form that realizes the same
  residual representation.
- `frey_unramified_implies_newform_support` — the still-open proposition that
  exact division, explicit residual unramifiedness, and an attached maximal
  ideal provide that support.

Neither declaration proves support, constructs a newform, or turns Tate's
conductor exponent into an unramifiedness theorem.

### `07b_SupportProof.lean`

**Imports**

- `Beal.Galois.07_NewformSupport`
- `Beal.Galois.05_Hecke`
- `Beal.Galois.07c_Ihara`
- `Beal.B14_FreyTate`
- `Beal.B03_Conductor_Core`

**Purpose**

This file is the conditional assembly point for the missing newform-support
argument. It names six mathematical interfaces rather than hiding them inside
one broad hypothesis:

1. mod-ℓ q-expansion injectivity;
2. a mod-ℓ old/new alternative;
3. the old-support exclusion supplied by the local Ihara argument;
4. exact-divisor Jacquet--Langlands/local transport to level `M`;
5. quotient/evaluation compatibility for the attached maximal ideal; and
6. localized multiplicity one for the lower-level new form.

**Main declarations**

- `ExactPrimeLevelData` — the exact-prime package `p ∣ N`, `¬ p * p ∣ N`,
  and `¬ p ∣ M`.
- `ModLQExpansionInjective` — injectivity of the finite q-expansion map.
- `ModLNewformDecomposition` — the finite-form consequence needed from an
  actual old/new decomposition.
- `IharaOldExclusion` — the explicit contradiction branch excluding old
  support under residual unramifiedness.
- `JacquetLanglandsLowering` — the exact-divisor lower-level newform
  transport interface.
- `QuotientEvaluationCompatible` and `LocalizedMultiplicityOne` — the
  quotient/evaluation and annihilation bridges needed at the attached ideal.
- `not_dvd_lower_level` — a proved elementary consequence of exact
  divisibility.
- `hNewformSupport_proof` — a conditional proof of `SupportInNewSubspace`
  from the six supplied interfaces.

The proof first derives that `p` does not divide `M`, splits the supplied
level-`N` form into old or new support, rejects the old branch using
`IharaOldExclusion`, and transports the surviving new branch to level `M`.
This is a genuine logical proof of the conditional statement, not a proof of
any of the six mathematical inputs.

**What is deliberately not proved**

The file does not prove the q-expansion principle, a Hecke-module old/new
decomposition, Ihara's lemma, Jacquet--Langlands transport, localized
multiplicity one, or the existence/maximality of the attached ideal. Each
remains an explicit `Prop`-valued boundary.

### `07c_Ihara.lean`

**Imports**

- `Beal.Galois.05_Hecke`

**Purpose**

This file isolates the coefficient-level shape of the mod-ℓ Ihara map without
pretending that arbitrary coefficient sequences are modular forms. On
`CoefficientSequence ℓ = ℕ → ZMod ℓ`, it defines

```text
B₁ a = a
Bₚ b n = if p ∣ n then b (n / p) else 0
(a, b) ↦ B₁ a + Bₚ b
```

**Main declarations**

- `B₁`, `BpCoeff`, and `Bp` — the two coefficient-level degeneracy maps.
- `IharaMap` — their combined `ZMod ℓ`-linear map.
- `IharaKernelZero` — the desired kernel-equals-zero proposition.
- `iharaMap_has_coefficient_kernel` — a proved cancellation witness showing
  that the unrestricted sequence-space map has a nontrivial kernel.

The cancellation witness is important: it demonstrates why `IharaKernelZero`
cannot be obtained from raw coefficient algebra alone. The actual Ihara
argument must restrict to the correct level-`M` modular-form subspace and use
local geometric/Hecke input.

### `07d_OldNew.lean`

**Imports**

- `Beal.Galois.05_Hecke`

**Purpose**

This file names the Hecke-module structure that is missing between the ambient
coefficient sequence space and a genuine old/new theorem.

**Main declarations**

- `IsModularFormAtLevel` — a submodule of coefficient sequences stable under
  the level-`M` Hecke algebra.
- `IsInternalDirectSum` — the inclusion, spanning, and uniqueness conditions
  for an internal direct sum of old and new submodules.
- `OldNewDecomp` — the missing mod-ℓ old/new decomposition interface,
  including the local-prime premise and Hecke stability.

The existential submodules are intentional. The current project has no
complex-analytic modular-form space or degeneracy-map construction from which
to define them. This module therefore does not treat all coefficient sequences
as modular forms and does not prove a decomposition.

### `07e_MultOne.lean`

**Imports**

- `Beal.Galois.07d_OldNew`
- `Beal.Galois.06_MaximalIdeal`

**Purpose**

This file states the localized multiplicity-one boundary after the old/new
module has been named. It supplies typed carriers for a future localized
Hecke algebra and its localized new module, without constructing either one.

**Main declarations**

- `IsLocalizedAtMaximalIdeal` — the coefficient-level shadow of support at a
  maximal Hecke ideal.
- `LocalizedHeckeData` — supplied scalar-algebra and localized-new-module
  carriers with their semiring/module structures.
- `LocalizedHeckeAlgebra` and `NewLocalizedAtMaximalIdeal` — aliases for
  those supplied carriers.
- `IsFreeRankOne` — the constructive rank-one condition
  `Nonempty (N ≃ₗ[R] R)`.
- `MultiplicityOne` — the missing theorem that the localized new module is
  free of rank one.

`IsFreeRankOne` is deliberately not written using the literal conjunction of
Mathlib's free-module and rank predicates: in Lean 4.12, that basis/rank API
introduces a nonconstructive choice dependency into the foundation audit.
This file does not prove localization, freeness, or multiplicity one from raw
coefficient sequences.

### `08_RibetProof.lean`

**Imports**

- `Beal.Galois.07_NewformSupport`

**Purpose**

This file proves the formal final transport: an explicitly supplied
`SupportInNewSubspace` witness contains a level-`M` form realizing the
residual representation, so it proves the conclusion of
`frey_level_lowering_of_unramified`.

**Proved result**

- `frey_level_lowering_of_unramified_of_newform_support` — a conditional
  theorem from typed new-subspace support to the existing level-lowering
  proposition.

`08` intentionally imports only the support boundary. A caller may obtain its
support premise from the conditional construction in `07b`, but the final
transport theorem remains small and does not reimplement the six missing
support ingredients.

**What remains open**

The support premise still requires a mod-ℓ q-expansion principle, a newform
decomposition, a mod-ℓ Jacquet--Langlands/Ihara-lemma analogue, and
multiplicity one for the localized Hecke algebra. Those are documented as
explicit missing mathematics, not represented by `sorry`, a global axiom, or a
claim of an unconditional Ribet theorem.

## What this directory establishes

Collectively, the files establish:

1. a typed abstract setting for absolute Galois, decomposition, and inertia data;
2. a representation record attached to the fixed Frey model;
3. a finite mod-ℓ form record and explicit Frobenius-trace compatibility proposition;
4. the precise hypotheses and conclusion required for a level-lowering transport step;
5. finite and sequence-level Hecke operations;
6. a constructive old/new boundary and generated coefficient Hecke algebra;
7. a typed residual-maximal-ideal and new-support interface spelling out the
   remaining Hecke-theoretic level-lowering obligation;
8. the isolated coefficient-level shape and explicit cancellation obstruction
   for the mod-ℓ Ihara map;
9. the Hecke-module old/new decomposition boundary;
10. the localized Hecke carrier and multiplicity-one boundary;
11. a conditional proof assembling those support interfaces; and
12. a proved conditional extraction from explicit new-subspace support to the
    existing one-step level-lowering proposition.

## What this directory does not establish

No file here proves:

- existence of the absolute Galois group or a concrete `ℚ̄`;
- construction or continuity of the Frey residual representation;
- irreducibility, semisimplicity, or oddness of that representation;
- modularity of the Frey curve;
- Tate's local conductor-to-inertia implication;
- Ribet's level-lowering theorem;
- a newform decomposition;
- construction or maximality proof for an ideal `𝔪_ρ̄`;
- the Hecke-algebra representation theorem needed to attach `𝔪_ρ̄` and
  transport its support;
- the mod-ℓ q-expansion principle;
- the mod-ℓ old/new direct-sum theorem;
- the local Ihara lemma or the corresponding Jacquet--Langlands transport;
- localization of the Hecke algebra and its new module;
- the localized multiplicity-one theorem;
- the unconditional support implication and Ribet level-lowering theorem;
- Fermat's Last Theorem or Beal's Conjecture.

Those boundaries remain explicit so that the final formal result can name its genuine mathematical assumptions rather than hide them inside a scaffold.

## Building the modules

From the repository root, build the latest Galois boundary layer with:

```sh
lake --old build 'Beal.Galois.«08_RibetProof»'
```

To build the coefficient-level Hecke layer alone, use
`Beal.Galois.«05_Hecke»`. The earlier layers can be built individually by
replacing the module name with:

```text
Beal.Galois.«01_Absolute»
Beal.Galois.«02_ResidualRep»
Beal.Galois.«03_ModLForm»
Beal.Galois.«04_LevelLowering»
Beal.Galois.«05_Hecke»
Beal.Galois.«06_MaximalIdeal»
Beal.Galois.«07_NewformSupport»
Beal.Galois.«07b_SupportProof»
Beal.Galois.«07c_Ihara»
Beal.Galois.«07d_OldNew»
Beal.Galois.«07e_MultOne»
Beal.Galois.«08_RibetProof»
```

The source uses Lean 4.12. The numbered modules are deliberately small enough that their declarations and axiom reports can be audited directly.