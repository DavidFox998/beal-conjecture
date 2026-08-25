[![DOI](https://zenodo.org/badge/DOI/10.5281/zenodo.22041831.svg)](https://doi.org/10.5281/zenodo.22041831) [![CI](https://github.com/DavidFox998/beal-conjecture/actions/workflows/main.yml/badge.svg)](https://github.com/DavidFox998/beal-conjecture/actions/workflows/main.yml)

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

> **Current main — 0 `sorry`, three named domain axioms**
>
> This repository is still a formalization of the Beal argument, not a claim
> that Lean has reconstructed Wiles, Tate, or Ribet from first principles. The
> important change since the #161-era scaffold is the shape of the boundary:
> one broad modularity interface has been separated into three smaller, typed
> mathematical interfaces that the final theorem names explicitly.
>
> The current conditional chain is:
>
> **primitive Beal data** → **Frey curve and discriminant arithmetic**
> → **one Tate-supplied Frey model and conductor** → **a typed modular-form
> token and certified descent plan at that same conductor**
> → **Ribet single-prime transport to level 2** → **$S_2(Γ_0(2)) = 0$**
> → **contradiction**.
>
> The final B20 theorem uses exactly these named assumptions:
> `Beal.FreyTate.wiles_modularity`,
> `Beal.FreyTate.TateStep2.tate_step2_I_n_conductor_one`, and
> `Beal.RibetIterate.ribet_single_step`. All supporting steps in the
> chain are proved without `sorry`.

### From one broad axiom to three smaller interfaces

At the #161 baseline, the README described the formal boundary as one
explicit `modularity_hypothesis`: a single typed proposition standing for
the modularity portion of the argument. That was a useful first boundary,
but it hid three mathematically different obligations behind one name.

The B14–B20 path now exposes those obligations separately:

| Named interface | What it contributes |
|---|---|
| `wiles_modularity` | For the fixed Tate Frey model, a residual prime, typed form token at its conductor, and a certified finite descent plan. |
| `tate_step2_I_n_conductor_one` | The local Tate Step 2 statement: when the Frey invariants have the required valuations, the conductor has exact prime order. |
| `ribet_single_step` | One exact prime-level division transports the typed form token to the lower level. |

The distinction matters. `tate_frey_multiplicative_derived` is a theorem, not
a fourth axiom: it packages the generic Tate interface with the explicit Frey
discriminant, the nonvanishing of $c_4$ modulo the relevant prime, and the
conductor's prime support. B15 proves that a certified plan repeatedly
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
- **#199–#205:** the Ribet iteration and final B20 assembly were brought onto
  that smaller boundary; the final CI audit now confirms 0 `sorry` and exactly
  the three named domain axioms.

This is a stronger formal interface, not a stronger claim of completed
foundational mathematics. The three deep results remain visible as the three
places where external mathematical theorems enter the present development.
---

## The architecture: Cores, Wrappers, and three named interfaces

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

### The three named mathematical interfaces

The final B20 proof is conditional on exactly three named results:

1. **Wiles:** `wiles_modularity` supplies a residual prime, a typed form token,
   and a certified descent plan for the Tate-supplied Frey conductor.
2. **Tate:** `tate_step2_I_n_conductor_one` supplies the local exact-conductor step;
   B14 uses it to select the fixed Frey model and its conductor.
3. **Ribet:** `ribet_single_step` preserves the typed form token across one
   exact prime-level division.

The older broad `modularity_hypothesis` remains part of the historical scaffold,
but it is not the named dependency boundary of the final B14–B20 theorem. The
new decomposition makes the three classical inputs visible rather than silently
packaging them into one opaque proposition.
---

## The path to a complete proof: Tate and Ribet

The current development implements the architecture below. The three named
interfaces mark the remaining classical inputs; the connective arithmetic
around them is explicit Lean code.

### Step 1 — Frey invariants and Tate's local conductor step

For a primitive Beal triple $(A^x, B^y, C^z)$, the development forms the Frey curve
$$
E : y^2 = x(x - A^x)(x + B^y).
$$
`B14_FreyTate.lean` defines its $b_2$, $b_4$, $c_4$, discriminant, and conductor.
`B14_TateC4Nonzero.lean` proves the needed local $c_4$ nonvanishing, and
`B14_TateInImpliesOrd1.lean` combines that arithmetic with Tate's named
interface to prove `tate_frey_multiplicative_derived`.

This derived theorem is not another assumption: it is the explicit bridge from
the generic local Tate statement to the Frey conductor data.

### Step 2 — Wiles data and Ribet level-lowering

Tate selects a fixed `FreyCurveModel`; `wiles_modularity` consumes that model
and supplies a typed form token plus a certified path from its conductor to
level 2. `B15_RibetIterate.lean` proves that `ribet_single_step` transports
the token along that path. `B16_BealFinal.lean` then eliminates the terminal
token using the verified equality $S_2(\Gamma_0(2)) = 0$, without adding
another named assumption.

### Step 3 — Dimension zero closes the conditional argument

The space $S_2(Γ_0(2))$ has dimension zero: no cusp forms of weight 2 and
level 2 exist. This fact is verified in the repository by `rfl`. Once the
Ribet chain reaches level 2, the hypothetical primitive Beal triple yields a
contradiction.

The result is machine-checked as a consequence of the three named classical
interfaces. Replacing those interfaces with first-principles proofs is a later
foundational stage; it is not claimed by the green build.
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
- **Check NO sorry** — no `sorry` occurs in any brick
- **Reject trivial Core stubs** — no `: Prop := True` or equivalent placeholder
- **Audit every Core declaration** — Cores remain import-free and zero-axiom
- **Audit the real-number transport boundary** — it may use Lean foundations but
  may not use `sorryAx`
- **Audit final B20 declarations** — `#print axioms` must contain exactly
  `wiles_modularity`, `tate_step2_I_n_conductor_one`, and
  `ribet_single_step` as the named domain axioms

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
| **v4.1.0 Tate local conductor verification** | Release tag pending; current work follows `e48a875` | Pending Zenodo ingestion | One typed `FreyCurveModel` fixes the coefficients, $c_4$, discriminant, conductor, and odd-prime local contract to the same $(A,B,C,x,y,z)$; the derived theorem returns that model's conductor and the named-axiom count remains three |
| **v5.0.0 preserved-form Ribet descent** | `v5.0.0` / `92a165c` | [Zenodo v5.0.0](https://doi.org/10.5281/zenodo.22090900) | `ribet_level_lowering_real` leaves the active path; `ribet_single_step` transports a preserved-form witness one exact division at a time to the level-$2$ contradiction |

The v4.0.0 Zenodo landing page retains an older v0.4-style display title; its
release tag, archive, and audited boundary are the v4.0.0 row above. The
The v4.1.0 Tate verification is a documentation-and-boundary release: it
does not claim a complete Tate algorithm, a 2-adic conductor exponent, or a
global conductor computation. Its version DOI will be added after Zenodo has
ingested the GitHub release.

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
