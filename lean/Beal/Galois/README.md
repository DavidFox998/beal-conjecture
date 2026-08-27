# `Beal/Galois`

This directory contains the typed Galois-representation, mod-ℓ form, level-lowering, and Hecke-theoretic interfaces used by the Beal formalization.

It is intentionally a **boundary layer**, not an unconditional proof of Beal's Conjecture. The files provide data structures, propositions, coefficient operations, and small transport lemmas. They do not silently turn the classical theorems of Wiles, Tate, or Ribet into Lean theorems.

## Current genuine-provider status

The v7 genuine-provider boundary is explicit and data-valued:

- The old B15 declaration `ribet_single_step : Prop` has been deleted from
  the active source path.
- `SupportedNewformToTokenProvider` is an explicit missing function returning
  `PreservedForm` data from a residual representation, maximal ideal, genuine
  coefficient submodule, and `SupportInNewSubspace`. It is inspectable and
  introduces no choice; because the residual representation carries a
  universe-polymorphic group carrier, Lean reports its type as `Type 1`.
- `NewformHeckeToPreservedTokenTransport` isolates the narrower mathematical
  conversion: a finite newform, its realization of the fixed residual
  representation, and annihilation by the attached maximal ideal must produce
  the B15 token. `NewSubspaceSupportData` retains those witnesses in `Type`,
  and `preservedToken_of_supportData` performs the exact transport without
  `Classical.choice`. The existing proposition-valued support existential
  cannot be eliminated into `PreservedForm` constructively; no inhabitant of
  the data or transport boundary is claimed.
- `GaloisEdgeWitness` carries the residual representation, maximal ideal,
  genuine coefficient submodule, localized Hecke data, attachment, the
  explicit `QExpansionPrincipleOnV`, old/new, localized-rank-one, 07j support
  bridge, and 07k token provider for one exact lowering edge. Restricted Ihara
  is derived conditionally from that principle at the B15 use site.
- `GaloisDescentPlan` is indexed by the exact Wiles arithmetic-plan value, so
  every enriched edge has that constructor's `N`, `p`, and `M`; the supplier
  cannot discard the certified path and substitute another chain.
- `EnrichedPlanSupplier` converts the unchanged Wiles arithmetic plan into
  this per-edge plan. The recursive B15 proof no longer consumes a universal
  `RibetSingleStepProviders` family.
- `#print axioms ribet_single_step_from_genuine` reports
  `[propext, Quot.sound]`.
- The remaining named mathematical inputs on the final path are
  `wiles_modularity`, `tate_step2_I_n_conductor_one`, and the explicit
  enriched-plan supplier. The supplier is a conditional data boundary, not a
  theorem silently derived from the Galois files.
- `Classical.choice` still appears in the B20 audit through the existing
  `TateStep2.freyModelOf` construction. It is not introduced by 07k or by the
  B15 genuine-provider bridge.
- 07f proves that genuine form data excludes the raw 07c counterexample
  `(-Bp, 1, 1)`.
- 07g proves `ihara_zero_on_genuine_V_conditional`: the restricted Ihara
  conclusion follows without choice from the explicit
  `QExpansionPrincipleOnV` premise. Constructing that geometric premise for
  the actual modular-form submodule remains **MISSING**; 07f's single raw
  witness exclusion is not presented as a proof of all oldform relations.
- 07l provides a structured Shimura/q-expansion supplier boundary. It proves
  the exact 07g coefficient-cancellation premise from explicit geometric
  source and target form carriers, q-expansion compatibility and injectivity,
  and a genuine two-degeneracy-map kernel theorem. It does not claim those
  geometric fields are already constructed.
- 07h now owns the unchanged `OldNewDecompHyp` proposition and proves
  `old_new_decomp_from_ihara` from restricted Ihara kernel-zero plus the
  explicit `AtkinLehnerProjectorOnV` complement premise.
  `old_new_decomp_from_genuine` obtains the Ihara input from 07g's
  `QExpansionPrincipleOnV` theorem and performs the same transport without
  choice. Constructing the actual old subspace, projector, and new complement
  remains **MISSING**; Ihara kernel-zero alone is not presented as an
  Atkin–Lehner decomposition theorem.
- B14's Wiles boundary still returns the arithmetic plan only. The B15
  supplier makes the additional `hQ`, `hOldNew`, `hRank`, support bridge, and
  token-provider data explicit on every edge without a B14 → Galois import
  cycle.

## Directory structure

```text
Galois/
├── 01_Absolute.lean       abstract absolute-Galois and inertia interface
├── 02_ResidualRep.lean    Frey residual-representation data
├── 03_ModLForm.lean       finite mod-ℓ weight-two q-expansion boundary
├── 04_LevelLowering.lean  exact proposition required for a Ribet step
├── 05_Hecke.lean          coefficient Hecke operators and old/new boundary
├── 06_MaximalIdeal.lean   residual maximal-ideal attachment interface
├── 07f_GenuineSubmodule.lean  genuine-form submodule boundary
├── 07g_IharaOnV.lean      restricted Ihara boundary on a genuine submodule
├── 07h_OldNewOnV.lean     conditional old/new transport on a genuine submodule
├── 07i_MultOneOnV.lean    localized rank-one boundary
├── 07j_SupportProofGenuine.lean genuine support assembly
├── 07k_TokenBridge.lean   newform/Hecke transport and support-to-token boundary
├── 07l_ShimuraQExpansionSupplier.lean structured geometric supplier for 07g
├── 07m_FourierQExpansion.lean analytic Fourier uniqueness foundation
├── 07n_NormalizedEigenlineQExpansion.lean normalized eigenline supplier for 07g
├── 07_NewformSupport.lean explicit lower-level new-support obligation
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
      ↓                       ↓
05_Hecke ─────────────────→ 06_MaximalIdeal → 07_NewformSupport
                                                    ↓
                                              08_RibetProof
```

`05_Hecke` imports `03_ModLForm` directly. It therefore receives the earlier Galois and representation definitions transitively, but does not import `04_LevelLowering`. This keeps the coefficient-level Hecke construction independent of the still-open level-lowering transport proposition. `06_MaximalIdeal` is the first layer to place the two boundaries alongside one another; `07_NewformSupport` states the missing support implication; and `08_RibetProof` proves only the final extraction of a lower-level witness from explicitly supplied support.

## Design principles

### Typed boundaries

The Frey curve is represented by the existing typed `FreyCurveModel` from `Beal.B14_FreyTate`. The residual representation, the mod-ℓ form, and the conductor divisibility witness are tied to that model through their types and fields. This prevents a form or representation from silently being associated with a different curve or conductor.

### Explicit hypotheses

The statements in this directory do not infer residual unramifiedness merely from conductor-exponent information. In particular, the fact that an odd prime `p` divides a level exactly once does not, by itself, prove that inertia acts trivially on the residual representation. The level-lowering boundary therefore takes unramifiedness as an explicit hypothesis.

The odd-prime boundary is retained, including `p = 3`: the code records `p.Prime`, `p ≠ 2`, and the exact-divisibility condition separately.

### Finite and algebraic models

The mod-ℓ form record stores a finite list of coefficients. It is not Mathlib's complex-analytic `CuspForm` and does not claim to be an analytic modular form. The Hecke algebra consequently acts on all coefficient sequences `ℕ → ZMod ℓ`, where the required additive and scalar-module structure is available.

### Foundational audit

The modules avoid executable `sorry` placeholders and do not declare mathematical `axiom`s. The principal declarations have been audited for their Lean foundation dependencies; the expected footprint is the foundational pair

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

The declaration is a `def` of a proposition, not a proof of that proposition. A future proof must supply the missing Hecke-algebra, newform, and transport arguments. In particular, defining this proposition does not construct the explicit enriched plan consumed by the final Beal proof.

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

### `07l_ShimuraQExpansionSupplier.lean`

**Imports**

- `Beal.Galois.07g_IharaOnV`

**Purpose**

This file is the organized landing zone for the first Shimura-side premise.
It does not copy the public Batch148 placeholder propositions into Beal and it
does not add the Arakelov repository as a Lake dependency. Instead it records
the exact geometric objects and compatibilities that a genuine supplier must
construct before 07g can use the result.

`ShimuraQExpansionData M p ℓ V` carries:

- a source-level geometric form type and a target geometric form type;
- zero forms and source/target q-expansion maps;
- an explicit realization of every coefficient sequence in `V` as a source
  form, with coefficient compatibility;
- a geometric map representing the sum of the two degeneracy images;
- the expected coefficient formula
  `q(β₁(a) + βₚ(b)) = q(a) + Bp(q(b))`;
- injectivity of the target q-expansion map; and
- the genuine geometric assertion that the degeneracy-pair map has trivial
  kernel.

From this data, `QExpansionPrincipleOnV_FromShimura` proves the exact
coefficient-cancellation proposition consumed by `GaloisEdgeWitness.hQ`.
`IharaKernelZeroOnV_FromShimura` then composes that adapter with the existing
07g theorem.

The dependency path is:

```text
geometric level-M source forms
      │  realization and q-expansion compatibility
      ▼
coefficient submodule V
      │
      ├── target q-expansion injectivity
      └── geometric kernel-zero for (β₁, βₚ)
                    │
                    ▼
       QExpansionPrincipleOnV
                    │
                    ▼
          IharaKernelZeroOnV
```

**How Batch148 is used**

The public 11,774-byte Batch148 file remains useful as a decomposition
roadmap, but not as a proof supplier:

| Batch148 component | Proper role in this route |
|---|---|
| Hecke eigenvalue system | Identifies the relevant eigenpacket; it does not prove degeneracy injectivity. |
| Jacobian simple factor | Motivates the geometric source/target realization that a future supplier must construct. |
| Frobenius/Hecke compatibility | Controls arithmetic traces; it does not imply `QExpansionPrincipleOnV`. |
| Weight-two normalization | Belongs to the trace/Satake route, not the 07g kernel argument. |

The direct Shimura route is therefore the correct path for `hQ`: formalize
the modular-curve form spaces, the two degeneracy maps, the target
q-expansion principle, and their geometric kernel theorem. Batch148 remains a
source ledger for nearby Hecke/Jacobian work and can later feed those concrete
constructions without being mistaken for the missing Ihara proof.

### `07m_FourierQExpansion.lean`

**Imports**

- `Mathlib.Analysis.Fourier.AddCircle`

**Purpose**

This file proves one honest analytic uniqueness fact:
`continuousFourierQExpansion` sends a genuine continuous complex function
`C(AddCircle T, ℂ)` to its complete `ℤ`-indexed Fourier coefficient sequence,
and `continuousFourierQExpansion_injective` proves that this map is injective
when `0 < T`.

The proof uses Mathlib's `fourierCoeff`, `fourierBasis`, and the faithful
continuous-function-to-`L²` map for normalized Haar measure. It is only a
q-expansion-style analytic foundation. In particular, it does **not** define
mod-`ℓ` modular forms, construct a modular-curve q-expansion map, provide a
`ShimuraQExpansionData` instance, or discharge the `QExpansionPrincipleOnV`
needed by 07g.

### `07n_NormalizedEigenlineQExpansion.lean`

**Imports**

- `Beal.Galois.07g_IharaOnV`

**Purpose**

This file supplies `QExpansionPrincipleOnV` for the narrower situation
actually used at a descent edge: `V` is an explicitly supplied
one-dimensional eigenline whose generator has first coefficient `1`.

`NormalizedEigenlineData` records the generator, its membership in `V`, the
fact that it spans `V`, and its normalization at `q`. The proof then reads a
relation

```text
a(q) + b(q^p) = 0
```

at `q^1` to prove `a = 0`, and at `q^(p*n)` to prove every coefficient of
`b` is zero. This yields
`QExpansionPrincipleOnV_FromNormalizedEigenline` and the corresponding
restricted Ihara theorem without a new axiom or a full modular-form Fourier
library.

The analytic uniqueness theorem in 07m remains a separate background
foundation. The normalized-eigenline proof does not import it because the
V-specific argument needs only the `q^1` and `q^(p*n)` coefficients; adding an
unused analytic dependency would introduce `Classical.choice` without
strengthening this theorem.

The authentic 11,774-byte Batch148 v1 file is used only as provenance for the
intended normalized eigenform. Its executable `True` placeholders are not
imported. Diamond--Shurman Proposition 8.3.2 is the Frobenius identity on
`Pic^0` after good reduction; it supports Batch148's trace route but is not a
q-expansion or degeneracy-kernel theorem.

### `08_RibetProof.lean`

**Imports**

- `Beal.Galois.07_NewformSupport`

**Purpose**

This file proves the formal final transport: an explicitly supplied
`SupportInNewSubspace` witness contains a level-`M` form realizing the residual
representation, so it proves the conclusion of
`frey_level_lowering_of_unramified`.

**Proved result**

- `frey_level_lowering_of_unramified_of_newform_support` — a conditional
  theorem from typed new-subspace support to the existing level-lowering
  proposition.

**What remains open**

The support premise still requires `QExpansionPrincipleOnV` for the relevant
mod-ℓ Hecke module, `AtkinLehnerProjectorOnV` for the actual old/new
complement, and multiplicity one for the localized Hecke algebra. Those are
documented as explicit missing mathematics, not represented by `sorry`, a
global axiom, or a claim of an unconditional Ribet theorem.

## What this directory establishes

Collectively, the files establish:

1. a typed abstract setting for absolute Galois, decomposition, and inertia data;
2. a representation record attached to the fixed Frey model;
3. a finite mod-ℓ form record and explicit Frobenius-trace compatibility proposition;
4. the precise hypotheses and conclusion required for a level-lowering transport step;
5. finite and sequence-level Hecke operations;
6. a constructive old/new boundary and generated coefficient Hecke algebra;
7. a typed residual-maximal-ideal and new-support interface spelling out the
   remaining Hecke-theoretic level-lowering obligation.
8. a proved conditional extraction from explicit new-subspace support to the
   existing one-step level-lowering proposition.
9. a proved conditional 07h transport from restricted Ihara kernel-zero and
   an explicit old/new complement premise to the V-specific decomposition
   hypothesis.
10. a data-valued representation/Hecke/newform transport boundary and a
    choice-free token construction from explicit support data.

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
- the newform decomposition, mod-ℓ Ihara/Jacquet--Langlands input, or
  multiplicity-one theorem needed to prove that support;
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
Beal.Galois.«07l_ShimuraQExpansionSupplier»
Beal.Galois.«07m_FourierQExpansion»
Beal.Galois.«08_RibetProof»
```

The source uses Lean 4.12. The numbered modules are deliberately small enough that their declarations and axiom reports can be audited directly.