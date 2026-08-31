[![v7.3.1 DOI](https://zenodo.org/badge/DOI/10.5281/zenodo.22150033.svg)](https://doi.org/10.5281/zenodo.22150033) [![Concept DOI](https://zenodo.org/badge/DOI/10.5281/zenodo.22041831.svg)](https://doi.org/10.5281/zenodo.22041831) [![CI](https://github.com/DavidFox998/beal-conjecture/actions/workflows/main.yml/badge.svg)](https://github.com/DavidFox998/beal-conjecture/actions/workflows/main.yml)

# Beal Conjecture — a formal instrument in *Opera Numerorum*

This repository is one chamber of David Fox's *Opera Numerorum*: a growing
collection of machine-checked arithmetic, geometry, and analysis in Lean 4.
It approaches the Beal Conjecture through a tower of formal layers — from
elementary divisibility, through elliptic-curve conductor arithmetic, to the
modularity machinery pioneered by Wiles, Ribet, and Tate.

The aim is not to make a green build look like a finished theorem. It is to
make every mathematical dependency visible, inspectable, and worthy of trust.

---

## The conjecture

Andrew Beal (1997) observed and offered a prize for the following:

> **If** $A^x + B^y = C^z$ where $A, B, C, x, y, z$ are positive integers
> and $x, y, z \geq 3$, **then** $A$, $B$, and $C$ share a common prime factor.

The condition $x = y = z = 2$ is excluded because Pythagorean triples
($3^2 + 4^2 = 5^2$) are coprime. The conjecture concerns the genuinely
harder territory of higher exponents.

---

## A standing corollary: Beal implies Fermat

Beal's conjecture is strictly stronger than Fermat's Last Theorem.
The implication is a clean descent argument.

**Claim.** Beal's conjecture $\Rightarrow$ Fermat's Last Theorem for $n \geq 3$.

**Proof sketch.** Let $n \geq 3$ and suppose $A^n + B^n = C^n$ with
$A, B, C$ positive integers. This is a Beal triple with $x = y = z = n$.
Beal's conjecture would then require $\gcd(A, B, C) > 1$: there exists a
prime $p$ dividing all three. Write $A = pA'$, $B = pB'$, $C = pC'$.
Then
$$
p^n A'^n + p^n B'^n = p^n C'^n \;\implies\; A'^n + B'^n = C'^n,
$$
a strictly smaller solution. Infinite descent forces the conclusion: no
minimal positive solution can exist, so no solution exists at all. $\square$

Wiles (1995) proved FLT unconditionally via a different route — the
modularity of semistable elliptic curves. That Beal's conjecture would give
an *independent* implication illustrates how closely the two problems are
coupled at the level of conductor arithmetic and level-lowering. The
formalization makes this coupling explicit rather than gestural.

---

## Current formal status

> **v8.3.0 typed patching and Tate-certified descent — conditional, audited, and model-indexed**
>
> This milestone removes exact-divisibility proofs from the Wiles plan and from
> `GaloisEdgeWitness`. Wiles supplies odd-prime, residual-prime-separation, and
> quotient data; the odd-prime Tate interface derives each exact conductor edge
> from the canonical Frey model. The terminal 2-adic exponent-one premise is now
> explicit model-indexed data rather than an implicit consequence of Wiles.
>
> The final route remains conditional. Its named mathematical boundaries are
> `frey_conductor_data`, `tate_step2_odd_prime_external`, and
> `wiles_modularity`; its unconstructed data inputs are
> `TwoAdicExponentOneSupplier` and `EnrichedPlanSupplier`. A successful build is
> an audit of that conditional route, not an unconditional proof of Beal's
> Conjecture.
>
> **v8.2.0 full rational E[2] exhaustiveness — exactly four rational points killed by doubling**
>
> The Frey curve's rational 2-torsion is now proved to be exactly
> `{O, (0,0), (Aˣ,0), (-Bʸ,0)}`. The proof classifies zero-y roots by repeated
> `mul_eq_zero` over `ℚ` and proves the converse group-law bridge. This closes
> the former three-points-versus-full-E[2] gap; it does not claim Mazur
> irreducibility or construct residual Galois representations.
>
> **v8.0.0 patching layer — 0 local axioms, 0 opaque rank propositions, explicit Taylor–Wiles data**
>
> This repository is still a formalization of the Beal argument, not a claim
> that Lean has reconstructed Wiles, Tate, or Ribet from first principles. The
> v8.0.0 extends the v7.3 typed Eutheos edge with an auditable patching layer.
>
> Here “0 axioms” is a focused statement about the typed Eutheos bridge:
> `OldNewDecompHyp_from_Eutheos`, `EutheosJitter`, and the separation kernel
> introduce no local proposition-valued axiom or opaque declaration and audit to
> `[propext, Quot.sound]`. It does **not** mean that every declaration in the
> repository is axiom-free. The repository retains several explicit,
> independently audited mathematical boundaries, including the Mazur/Wiles
> tower, global Frey-conductor data, and the narrow external odd-prime Tate
> theorem. None is part of the
> focused Eutheos bridge.
>
> The current conditional chain is:
>
> **primitive Beal data** → **Frey curve and discriminant arithmetic**
> → **one canonical Frey model with externally supplied conductor data**
> → **an explicit 2-adic exponent-one certificate for that conductor**
> → **a typed modular-form
> token and odd-prime quotient plan at that same conductor**
> → **Tate-derived exact divisibility along that plan**
> → **an explicit `EnrichedPlanSupplier` carrying normalized eigenline,
> typed Eutheos geometry, Taylor–Wiles patching, support, and token-transport data per edge**
> → **level 2** → **$S_2(Γ_0(2)) = 0$**
> → **contradiction**.
>
> The final B20 theorem depends on the typed Wiles, global Frey-conductor, and
> odd-prime Tate interfaces, plus explicit 2-adic exponent-one and
> `EnrichedPlanSupplier` data. At each descent edge,
> `NormalizedEigenlineData` derives `QExpansionPrincipleOnV` through
> `QExpansionPrincipleOnV_fromEigenline`; the old/new proposition is now
> derived at the theorem boundary from typed Eutheos geometry. Localized rank
> one is now constructed from explicit patched-module generator and coordinate
> laws rather than accepted as an edge proposition.
>
> The active token path does not use `SupportedNewformToTokenProvider`.
> `NewSubspaceSupportData` retains a finite newform, representation
> realization, and Hecke annihilation as data, while
> `NewformHeckeToPreservedTokenTransport` converts that data to
> `PreservedForm` without `Classical.choice`.
>
> The final B20 contract has three named mathematical interfaces:
> `Beal.FreyTate.wiles_modularity`,
> `Beal.FreyTate.TateStep2.frey_conductor_data`, and
> `Beal.FreyTate.TateStep2.tate_step2_odd_prime_external`.
> Its two explicit, unconstructed data inputs are
> `Beal20Done.TwoAdicExponentOneSupplier` and
> `Beal.RibetIterate.EnrichedPlanSupplier`.
> The final route invokes
> `Beal.FreyTate.TateStep2.tate_frey_multiplicative_at_model`, whose only
> local mathematical dependency is `tate_step2_odd_prime_external`, to derive
> each exact-divisibility proof from the fixed model rather than accepting it
> in the Wiles plan.
>
> `lake build Beal` targets Lean/Mathlib 4.12.0. The focused v7.3 edge audit
> reports the foundational footprint `{propext, Quot.sound}`. The broader B20
> audit uses `Classical.choice` through the existing `ZMod` unit argument in
> the local Tate specialization; this is a Lean foundation dependency, not an
> additional mathematical theorem. `TateStep2.freyModelOf` itself remains a
> direct typed construction.

### v7.3.0 Task #440: Typed Eutheos old/new geometric bridge

The v7.3.0 bridge makes the old/new boundary more explicit without pretending
that fixed-point arithmetic has reconstructed modular-form geometry:

- The Eutheos certificate carries the denominator-cleared fixed-point
  inequality and list anchor as choice-free data.
- `EutheosGeometryInterface` supplies named old and new submodules, typed
  degeneracy maps `αₚ` and `βₚ`, their exact joint old-image representation,
  Hecke stability, genuine-form generation, V-membership, and coverage
  `V = old + new`.
- `separation_kernel (j : EutheosJitter)` is the lower-level old/new
  intersection statement `old ∩ new = ⊥`, explicitly parameterized by the
  jitter witness and its inequality.
- `OldNewDecompHyp_from_Eutheos` constructs the existing
  `OldNewDecompHyp` only at the theorem boundary from those fields. The
  arithmetic inequality alone is not claimed to prove the geometric kernel.
- B15 derives its old/new witness at the call site. In v8.0.0, the former
  `hRank` proposition is replaced by transparent `TaylorWilesPatchingData`.

The new supplier and B15 edge audit to `[propext, Quot.sound]`, with no
`sorryAx`, opaque declaration, or new mathematical axiom. The real-number
bridge remains separately audited as
`[propext, Classical.choice, Quot.sound]`.

#### Audit ladder

| Snapshot | CI / PR | Explicit boundary | What it records |
|---|---|---|---|
| v7.2.0-1419-infra | `a457c8b558`, CI `33139424482` | 2 Props | EutheosJitter carrier `[propext, Quot.sound]` |
| v7.3.0 Task #440 | PR #3, CI `33147207644` (success) | 1 Prop (`hRank`) | Typed Eutheos old/new geometric bridge |

### From one opaque step axiom to explicit edge data

At the #161 baseline, the README described the formal boundary as one
explicit `modularity_hypothesis`: a single typed proposition standing for
the modularity portion of the argument. That was a useful first boundary,
but it hid three mathematically different obligations behind one name.

The B14–B20 path now exposes the step boundary as data:

| Named interface | What it contributes |
|---|---|
| `wiles_modularity` | For the fixed Tate Frey model, a residual prime, typed form token at its conductor, and a certified finite descent plan. |
| `frey_conductor_data` | One global conductor value and prime-support theorem, indexed by the canonical integral Frey model. |
| `tate_step2_odd_prime_external` | The one external local Tate input: an odd-prime type-`Iₙ` fiber, expressed by unit `c₄` and bad discriminant on the fixed model, has conductor exponent one. |
| `tate_step2_I_n_conductor_one` | A proved Lean wrapper assembling the explicit local certificates and applying the external theorem. |
| `FreyTwoAdicConductorCertificate` | A separate model-indexed 2-adic data boundary: it records one explicit exponent and its exact power-of-two divisibility proof for that same supplied conductor. |
| `NormalizedEigenlineData` | Explicit normalized generator and spanning data used to derive the V-specific q-expansion principle. |
| `EutheosGeometryInterface` | Typed old/new modules, degeneracy maps, exact old-image representation, coverage, and jitter-indexed separation data; `OldNewDecompHyp` is derived at the theorem boundary. |
| `TaylorWilesPatchingData` | Explicit prime levels, patched tower, depth bookkeeping, and the named R=T/localization specialization boundary used to construct `LocalizedRankOne`. |
| `NewSubspaceSupportData` | Choice-free finite-newform, representation-realization, and Hecke-annihilation witnesses. |
| `NewformHeckeToPreservedTokenTransport` | Narrow data-valued conversion from those witnesses to `PreservedForm`. |
| `GaloisEdgeWitness` | One exact edge carrying the representation, Hecke, eigenline, old/new, patching, support, and token-transport data. |
| `EnrichedPlanSupplier` | Data-valued enrichment indexed by the exact Tate-certified Wiles quotient-plan value, so its `N`, `p`, and `M` edges cannot be replaced by a different chain. |

The distinction matters. `tate_frey_multiplicative_derived` is a theorem, not
another axiom: it proves unit $c_4$ and bad discriminant for the canonical
Frey model, then applies the narrow external Tate theorem through
`tate_step2_I_n_conductor_one`. The model stores the Beal equation itself, so
its discriminant is certified to equal the expression computed from the
displayed Weierstrass coefficients. The canonical coefficient model is
constructed without `Classical.choice`; global conductor data and the local
Tate theorem are separate named boundaries. B15 proves that a certified plan repeatedly
transports the token and that the terminal token contradicts
$S_2(\Gamma_0(2)) = 0$.

This is deliberately a **typed scaffold**, not a claim that Wiles's theorem
alone produces the certified descent plan or that this repository constructs
modular forms. Those global ingredients remain inside the explicit
`wiles_modularity` boundary until they are formalized.

### The post-161 arc

- **#161–#165:** the Galois, Frey, Beal, and $S_2(Γ_0(2))$ scaffolding was
  consolidated into a typed Core/Wrapper architecture.
- **#165:** the Frey/Tate boundary introduced named Wiles, Tate, and Ribet
  interfaces instead of leaving modularity as one undifferentiated gap.
- **#190–#198:** the Frey curve's $c_4$, discriminant, conductor, local
  nonvanishing, and Tate-derived conductor witness were connected into a
  machine-checked per-prime statement.
- **v7.0.0-genuine-provider:** the opaque `ribet_single_step : Prop` was
  deleted from the active source path. B15 now consumes explicit
  `RibetSingleStepProviders`, and `ribet_single_step_from_genuine` audits to
  `[propext, Quot.sound]`.
- **v7.2.0:** B15 consumes `EnrichedPlanSupplier`. Each indexed edge derives
  its q-expansion premise from normalized eigenline data and carries explicit
  old/new, rank, newform-support, and token-transport data. The former broad
  provider is no longer used by the active descent.
- **v7.3.0 Task #440:** B15 derives `OldNewDecompHyp` from the typed
  `EutheosGeometryInterface` at the use site. The supplier exposes the
  degeneracy maps, exact old-image representation, Hecke-stable old/new
  modules, genuine generation, V-coverage, and the jitter-indexed separation
  kernel. Only `hRank` remains as the explicit proposition-valued edge
  boundary; the geometric kernel remains an explicit supplier input.
- **v8.0.0:** B15 replaces that `hRank` proposition with
  `TaylorWilesPatchingData`. Finite generators and coordinates are coherent
  under transitions; the localized coordinate is derived through the
  level-zero projection.
- **Patching specialization refinement:** the level-zero reconstruction law
  is now proved from transition-coordinate compatibility, finite-level
  reconstruction, and projection extensionality rather than stored as a
  field. The patching data is indexed by the exact Frey residual
  representation and its exact Hecke attachment. It carries explicit
  deformation-to-localized-Hecke and finite-level diamond comparison data.
  The localized residual map extends the attachment evaluation, but no
  universal deformation property, Frobenius control, or R=T isomorphism is
  claimed.

This is a more inspectable formal interface, not a stronger claim of completed
foundational mathematics. Wiles, the global conductor data, and local Tate
Step 2 remain named mathematical assumptions; the enriched-plan supplier
and the 2-adic exponent-one supplier remain explicit missing data boundaries.
The final B20 chain consumes all three named mathematical interfaces.
---

## The architecture: Cores, Wrappers, and explicit mathematical boundaries

The repository is organized into three layers, with a separate boundary for
the named mathematical results used by the final theorem.

### Cores (B01–B21 `*_Core.lean`)

The Cores are the mathematical skeleton. Each states a real proposition
in pure Lean, with **zero imports from Mathlib** and **zero axioms beyond
`propext`**. They cannot hide `sorry` behind a library import. CI enforces
this with `#print axioms` on every Core declaration.

| File | Claim |
|---|---|
| `B01` | `IsBealSolutionCore` — type-level characterization of a Beal triple |
| `B02` | `FreyDeltaCore` — nonvanishing discriminant of the Frey curve |
| `B04` | `ExactDivCore` — exact-divisibility arithmetic for $p^k \| N$ |
| `B14` | Frey invariants, local nonvanishing, and the Tate input boundary |
| `B15` | Prime-by-prime level reduction to 2 |
| `B16` | Final Wiles + Tate + Ribet assembly |

### Wrappers (`*_Wrapper.lean`, `*_Interface.lean`)

Wrappers translate Core statements into the concrete Mathlib setting — real
numbers, field norms, and `GCDMonoid`. They may carry foundational Lean
dependencies such as `propext`, `Classical.choice`, and `Quot.sound`; they
must never introduce `sorryAx`. The real-number BSD/Hasse boundary has its
own audit.

### The named mathematical interfaces and data boundary

The final B20 proof is conditional on three named mathematical boundaries and
two explicit data suppliers:

1. **Global conductor:** `frey_conductor_data` supplies one conductor and its
   prime support for the canonical integral Frey model.
2. **Wiles:** `wiles_modularity` supplies a residual prime, a typed form token,
   and an odd-prime quotient plan for that fixed conductor.
3. **Tate:** `tate_frey_multiplicative_at_model` derives `p ∣ N` and
   `p² ∤ N` at every intermediate edge from the fixed conductor, its prime
   support, and the narrow `tate_step2_odd_prime_external` boundary.
4. **Genuine plan:** `EnrichedPlanSupplier` enriches that Tate-certified plan.
   Each `GaloisEdgeWitness` carries the 07g–07k representation, Hecke,
   patching, support, and token-transport data; it no longer carries a duplicate
   exact-divisibility proof.

The older broad `modularity_hypothesis` remains part of the historical scaffold,
but it is not the dependency boundary of the final B14–B20 theorem. The old
opaque `ribet_single_step` axiom is no longer in the active source path.
---

## The path to a complete proof: Tate and Ribet

The current development implements the architecture below. Three named
interfaces, an explicit 2-adic exponent-one supplier, and an explicit
enriched-plan supplier mark the remaining inputs; the connective arithmetic
around them is explicit Lean code.

### Step 1 — Frey invariants and Tate's local conductor step

For a primitive Beal triple $(A^x, B^y, C^z)$, the development forms the Frey curve
$$
E : y^2 = x(x - A^x)(x + B^y).
$$
`B14_FreyTate.lean` defines its $b_2$, $b_4$, $c_4$, discriminant, and
model-indexed conductor data. It also proves that, under the stored Beal
equation, the discriminant formula equals the expression computed directly
from the Weierstrass coefficients.
`B14_TateC4Nonzero.lean` proves the needed local $c_4$ nonvanishing, and
`B14_TateInImpliesOrd1.lean` proves the unit-$c_4$ and bad-fiber certificates,
then combines them with the narrowly named external Tate theorem to prove
`tate_frey_multiplicative_at_model`; an existential compatibility wrapper is
retained as `tate_frey_multiplicative_derived`.

This derived theorem is not another assumption: it is the explicit bridge from
the generic odd-prime Tate statement to the actual Frey model and its fixed
conductor data.

The prime 2 is accounted for separately and more cautiously.
`two_dvd_frey_discriminant` and `two_dvd_frey_c4` prove the elementary
divisibility facts for the canonical equation, yielding the literal
`discEvenC4Even` invariant witness—not a reduction-type classification.
`FreyTwoAdicLocalData` separately requires an explicit diagonal-scaling
minimality certificate. External 2-adic work must supply a visible
`FreyTwoAdicConductorCertificate` containing a specific exponent `e` and
the proof `2^e ∣ N ∧ 2^(e+1) ∤ N` for the same model's supplied conductor
`N`. No certificate is constructed here, and no full minimal-model theorem,
Kodaira classification, or complete 2-adic Tate algorithm is claimed.
The final level-2 route explicitly asks for the stronger
`FreyTwoAdicExponentOneCertificate`; it does not attribute `e = 1` to Wiles.

The global `FreyConductorData` contract itself supplies an opaque natural
number and prime support. It is named “conductor” as the mathematical
boundary, but this repository does not internally construct or identify it
with Mathlib elliptic-curve conductor data.

### Step 2 — Wiles data and Ribet level-lowering

Tate selects a fixed `FreyCurveModel`. Given an explicit exponent-one
certificate for that model's 2-adic conductor, `wiles_modularity` supplies a
typed form token plus an odd-prime quotient path from its conductor to level 2.
`B15_RibetIterate.lean` derives every exact-divisibility edge from the
model-indexed Tate theorem and then passes the certified plan to an explicit
`EnrichedPlanSupplier`. Every corresponding edge carries typed Eutheos
geometry, exact residual-representation and Hecke-attachment indices,
Taylor–Wiles patching data, localized Hecke data, the 07j support bridge, and
explicit token-transport data. `ribet_single_step_from_genuine` derives support
and constructs the target token. `B16_BealFinal.lean` then eliminates the
terminal token using the verified equality
$S_2(\Gamma_0(2)) = 0$.

### Step 3 — Dimension zero closes the conditional argument

The space $S_2(Γ_0(2))$ has dimension zero: no cusp forms of weight 2 and
level 2 exist. This fact is verified in the repository by `rfl`. Once the
Ribet chain reaches level 2, the hypothetical primitive Beal triple yields a
contradiction.

The result is machine-checked as a consequence of the three named mathematical
interfaces and the two explicit data suppliers. Replacing those boundaries
with first-principles proofs is a later foundational stage; it is not claimed
by the green build.
---

## The wider work: *Opera Numerorum* and four routes toward RH

The Beal development is not itself a proof of the Riemann Hypothesis.
It is part of a wider program in which different mathematical languages
approach the same landscape: Arakelov geometry, automorphic forms, spectral
gaps, arithmetic dynamics, and the analytic behavior of zeta functions.
The program has four distinct routes toward RH — independent formalization
paths whose value is that they can expose each other's assumptions by
meeting at common arithmetic data.

### Route A — positivity

[`riemann-arakelov-positivity`](https://github.com/DavidFox998/riemann-arakelov-positivity)
turns positivity on the modular curve $X_0(143)$ into an arithmetic
inequality. Its architecture centers on $g(X_0(143)) = 13$,
$\omega^2 = 48/13$, and the finite set $S_4 = \{2, 3, 19, 191\}$.

### Route B — spectral descent

[`arakelov-rh-descent`](https://github.com/DavidFox998/arakelov-rh-descent)
approaches the same territory through a spectral gap on $X_0(143)$,
with $\lambda_1 \geq 975/4096$ as the Kim–Sarnak input.

### Route C — growth contradiction

[`rh-growth-contradiction`](https://github.com/DavidFox998/rh-growth-contradiction)
takes a contradiction route, comparing growth permitted by a proposed
zeta bound with Littlewood's $\Omega$-phenomenon.

### Route D — Eutheos

[`brothers-desert-proof`](https://github.com/DavidFox998/brothers-desert-proof)
is a synthetic route studying zero repulsion directly, through the
$p = 5$ bridge and the desert property of exceptional primes.

---

## What CI actually checks

"Green" means the Lean source elaborates, its declared dependencies are visible,
and the audit checks pass. It does **not** mean that Wiles's, Tate's, or Ribet's
theorems have been reconstructed from first principles.

CI enforces the boundary on every push:

- **Build all bricks** — all B01–B21 Cores and Wrappers compile
- **Clean locked rebuild** — a separate job removes generated `.lake` state and
  rebuilds from the committed `lean-toolchain`, `lakefile.lean`, and exact
  revisions in `lake-manifest.json`; it fails if the clean build cannot
  reproduce the project or changes either committed Lake input
- **Check NO sorry** — no `sorry` occurs in any brick
- **Reject trivial Core stubs** — no `: Prop := True` or equivalent placeholder
- **Audit every Core declaration** — Cores remain import-free and zero-axiom
- **Audit the real-number transport boundary** — it may use Lean foundations but
  may not use `sorryAx`
- **Audit final B20 declarations** — `#print axioms` must expose
  `wiles_modularity`, `frey_conductor_data`, and
  `tate_step2_odd_prime_external`; a separate elaboration check requires the
  explicit `TwoAdicExponentOneSupplier` and `EnrichedPlanSupplier` parameters

The final audit distinguishes named mathematical assumptions from foundational
Lean dependencies such as `propext`, `Classical.choice`, and `Quot.sound`.
The current main branch passed the complete audit in CI run **#205**.
---

## Build and audit

The project uses Lean 4.12.0 and Mathlib:

```bash
export PATH="$HOME/.elan/bin:$PATH"
lake exe cache get
lake build Beal
```

Keep the same checkout and its ignored `.lake/` directory between commits.
Lake then rebuilds only changed project modules. CI caches the Lean toolchain
and `.lake/packages` under a key derived from `lean-toolchain` and
`lake-manifest.json`; `lake exe cache get` runs only when that exact dependency
cache is missing. Avoid `lake clean` unless a genuinely clean rebuild is
required.

CI also runs a release-level clean-checkout validation. That job deliberately
removes generated `.lake/` state and does not restore the incremental dependency
cache before running
`lake build +Beal.B00_OperaNumerorum Beal`. It must fetch and build using only
the Lean version in `lean-toolchain`, the package declaration in
`lakefile.lean`, and the exact transitive revisions recorded in
`lake-manifest.json`. It then verifies that Lake did not rewrite either
committed input. A failure means that the release snapshot is not reproducible
from its committed dependency lock.

---

## DOI / Citation — versioned audit trail

Concept DOI (all versions): [![DOI](https://zenodo.org/badge/DOI/10.5281/zenodo.22041831.svg)](https://doi.org/10.5281/zenodo.22041831)

Zenodo version records preserve release snapshots; the Lean axiom report records
what the snapshot still assumes. Green CI means that these dependencies are
visible and checked. It does **not** mean that Lean has reconstructed Wiles,
Tate, or Ribet from first principles.

| Version | Tag / commit | Version DOI | What the snapshot records |
|---|---|---|---|
| v0.2.0 zero-axiom core | `v0.2.0-zero-axiom-core` / `4f425e5` | Not verified in this audit trail | First zero-axiom core scaffold |
| v0.3.0 arithmetic descent | `v0.3.0-arithmetic-descent` / `246fd41` | [Zenodo v0.3.0](https://doi.org/10.5281/zenodo.22048503) | Arithmetic descent, including $S_2(\Gamma_0(2)) = 0$ by `rfl` |
| v0.4.0 typed interfaces | `v0.4.0-interfaces-typed` / `881b109` | Not verified in this audit trail | A single typed `modularity_hypothesis` boundary |
| v1.1.0 zero-`sorry` scaffold | `v1.1.0-zero-sorry-scaffold` | Not verified in this audit trail | Predates the present three-axiom audit |
| **v4.0.0 three-axiom boundary** | `v4.0.0` / `7b5c4a7` | [Zenodo v4.0.0](https://doi.org/10.5281/zenodo.22085104) | **0 executable `sorry`; 3 named boundaries:** `wiles_modularity`, `tate_step2_I_n_conductor_one`, and `ribet_level_lowering_real` |
| **v4.1.0 Tate local conductor verification** | `v4.1.0` / `ec8f5de` | [Zenodo v4.1.0](https://doi.org/10.5281/zenodo.22091549) | One typed `FreyCurveModel` fixes the coefficients, $c_4$, discriminant, conductor, and odd-prime local contract to the same $(A,B,C,x,y,z)$; the derived theorem returns that model's conductor and the named-axiom count remains three |
| **v5.0.0 preserved-form Ribet descent** | `v5.0.0` / `92a165c` | [Zenodo v5.0.0](https://doi.org/10.5281/zenodo.22090900) | `ribet_level_lowering_real` leaves the active path; `ribet_single_step` transports a preserved-form witness one exact division at a time to the level-$2$ contradiction |
| **v7.0.0 genuine provider** | `v7.0.0-genuine-provider` / `380a5f490` | Pending — no Zenodo record yet | The old `ribet_single_step : Prop` is deleted; `RibetSingleStepProviders` and `SupportedNewformToTokenProvider` are explicit data-valued boundaries, and `ribet_single_step_from_genuine` audits to `[propext, Quot.sound]` |
| **v7.2.0 V-specific eigenline edge** | `beal-4.12-v-specific-edge` / `9ebd9659b` | Pending — no verified Zenodo record | Removes the broad provider from the active B15 path; derives `hQ` from normalized eigenline data; leaves `OldNewDecompHyp` and `LocalizedRankOne` explicit; carries choice-free newform support and Hecke-to-token transport data. Focused footprint: `[propext, Quot.sound]`. |
| **v7.3.0 typed Eutheos old/new bridge** | `v7.3.0` / `a12c58a` | [Zenodo v7.3.0](https://doi.org/10.5281/zenodo.22148517) | Derives `OldNewDecompHyp` from typed degeneracy maps, old-image representation, Hecke stability, V-coverage, and a jitter-indexed separation kernel. |
| **v7.3.1 audit clarification** | `v7.3.1` / `5f2aa7e` | [Zenodo v7.3.1](https://doi.org/10.5281/zenodo.22150033) | Separates the focused `[propext, Quot.sound]` Eutheos audit from repository-wide mathematical assumptions. |
| **v8.0.0 typed patching layer** | `v8.0.0` / `ceb98d4` | Not verified in this audit trail | Replaces an opaque localized-rank proposition with explicit Taylor–Wiles patching data. |
| **v8.1.0 rational Frey 2-torsion** | `v8.1.0` / `646ac50` | Not verified in this audit trail | Formalizes the three nonzero affine rational 2-torsion points without claiming full exhaustiveness. |
| **v8.2.0 full rational E[2]** | `v8.2.0` / `f61f330` | Not verified in this audit trail | Proves the four-point exhaustive rational 2-torsion classification; Mazur irreducibility remains separate. |
| **v8.3.0 typed patching and Tate-certified descent** | `v8.3.0` | Pending — minted only after this GitHub release | Derives odd-prime exact divisibility from the canonical Frey model, makes the 2-adic exponent-one certificate explicit, and audits exactly three named mathematical boundaries plus two data suppliers. |

The v4.0.0 Zenodo landing page retains an older v0.4-style display title; its
release tag, archive, and audited boundary are the v4.0.0 row above. The

**v4.1.0 — Tate truthful.** The Tate boundary now carries one fixed
`FreyCurveModel` for each fixed solution tuple `(A, B, C, x, y, z)`. That model
ties the Frey coefficients, `c₄`, discriminant, prime support, and conductor
together, so the conductor `N` is no longer an unrelated or freely chosen
natural number. The closed B14 arithmetic establishes the Frey `c₄` identity
and the divisibility facts used by the local argument without introducing
another named mathematical axiom. For an odd prime `p` at which the model is
minimal and the discriminant is bad,
`p ∤ c₄`, `p ∣ Δ`, the model contract yields `p ∣ N`, `p² ∤ N`. Thus the
derived conductor statement reuses the conductor of that same fixed Frey model
and records local conductor exponent one at `p`.

This historical release formalized a typed odd-prime local Tate boundary. It
did not claim a complete Tate algorithm, a formal 2-adic conductor
calculation, or a global computation of `N` from the Frey coefficients. Its
version DOI is
[10.5281/zenodo.22091549](https://doi.org/10.5281/zenodo.22091549).

When discussing an audit, cite the specific version DOI rather than the concept
DOI. For example:

> Fox, David. (2026). *Beal Conjecture — Typed Preserved-Form Ribet Descent — v5.0.0*. Zenodo. https://doi.org/10.5281/zenodo.22090900

---

## References

- Andrew Beal (1997) — the Beal Conjecture.
- Gerhard Frey (1986) — the Frey curve and the bridge from Diophantine equations to elliptic curves.
- John Tate (1975) — algorithm for computing the conductor of an elliptic curve at a bad prime.
- Kenneth Ribet (1990) — level-lowering and the $\varepsilon$-conjecture.
- Barry Mazur (1978) — irreducibility phenomena for Galois representations.
- Andrew Wiles (1995) — modularity of semistable elliptic curves and Fermat's Last Theorem.
- Richard Taylor and Andrew Wiles (1995) — the ring-theoretic criterion completing modularity.
- [`ImperialCollegeLondon/FLT`](https://github.com/ImperialCollegeLondon/FLT) — inspiration for formalization, not a dependency of this repository.

---

Maintained by DavidFox998 as part of *Opera Numerorum*: mathematics made
auditable, with the beauty left visible.


### v7.3.1 release ladder clarification

The audit ladder is intentionally scoped and chronological:

- **v7.2.0-1419-infra** (`a457c8b558`, CI `33139424482`) closed the fixed-point
  jitter infrastructure and left two proposition-valued edges.
- **v7.3.0 Task #440** (PR #3, CI #239, 53m23s, SUCCESS) closed the typed
  Eutheos old/new edge and left one explicit `hRank` proposition at that
  historical snapshot; v8.0.0 replaces it with patching data.
- **v7.3.1** is this documentation patch: it archives the distinction between
  the clean focused bridge and the two intentional repository-wide boundaries.

## v7.3.1 audit clarification

The phrase **“0 axiom” is scoped to the typed Eutheos focused boundary**. It
means that `Beal.Galois.OldNewDecompHyp_from_Eutheos`, `EutheosJitter`, and
the jitter-indexed separation kernel introduce no proposition-valued axiom or
opaque declaration of their own and audit to `[propext, Quot.sound]`. The
V-specific edge is clean. The Task #440 build covered 2,424 targets and CI
#239 completed successfully in 53m23s.

This is not a repository-wide claim. A literal `grep -r '^axiom'` over the
repository returns exactly two intentional mathematical boundaries:
`mazur_irreducibility_axiom` and `wiles_lifting_axiom`. They belong to the
existing Mazur/Wiles B20 modularity tower and are not part of the typed
Eutheos bridge. The repository-wide focused audit therefore distinguishes
these named boundaries from the clean Eutheos supplier rather than hiding
them.

The real-number interpretation of the fixed-point inequality
`‖p·α₀‖ < 1/p` remains isolated in the desert-brothers module and audits to
`[propext, Classical.choice, Quot.sound]`. That choice-bearing real bridge
does not leak into the typed Eutheos/Beal path.

## v8.0.0: explicit Taylor–Wiles patching data

B15 no longer stores `hRank : LocalizedRankOne ...`. Each edge instead carries
finite prime levels `Qₙ`, finite patched modules, coherent transition maps,
diamond operators, compatible inverse-limit projections, depth equalities,
and a separately named specialization boundary. The localized coordinate is
derived through the level-zero projection; it is not stored as a field.
`LocalizedRankOne_from_Patching` then constructs the linear equivalence and
audits to `[propext, Quot.sound]`.

This is a refinement of the boundary, not a completed Taylor–Wiles proof.
The Eutheos jitter inequality does not construct Taylor–Wiles primes, and the
historical B05 Mazur/Wiles axioms do not state R=T, freeness, localization, or
multiplicity one. The reconstruction law in `PatchingSpecializationData` names
that missing R=T/localization step explicitly. Constructing the complete
`TaylorWilesPatchingData` remains a Type-valued obligation of the enriched
descent-plan supplier.

