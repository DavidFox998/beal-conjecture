[![DOI](https://zenodo.org/badge/DOI/10.5281/zenodo.22048503.svg)](https://doi.org/10.5281/zenodo.22048503) [![CI](https://github.com/DavidFox998/beal-conjecture/actions/workflows/main.yml/badge.svg)](https://github.com/DavidFox998/beal-conjecture/actions/workflows/main.yml)

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

> **v0.4.0 — published scaffold, one named axiom**
>
> This repository is a formalization scaffold, not a completed proof of
> Beal's Conjecture. Every Core declaration states a genuine mathematical
> claim. The tower runs:
>
> **$p \| N$** → **$M \cdot p = N,\; p \nmid M$** (real `Nat` witness)
> → **$S_2(\Gamma_0(2)) = 0$** (by `rfl`, dimension zero)
> → **Modularity Hypothesis** (explicit Lean `axiom`)
> → **Beal Conjecture**.
>
> The modularity hypothesis is the one openly named assumption:
> `axiom modularity_hypothesis : ModularityHypothesisTyped`
> in `B05_Modularity.lean`, with audit footprint `[propext, modularity_hypothesis]`.
> Every Core declaration outside that boundary is import-free and zero-axiom.
> Every wrapper uses at most `[propext]`.
>
> Stating a claim is not the same as proving it. `modularity_hypothesis` is
> not proved here; it is declared as a hypothesis so that its logical
> position in the tower is unambiguous. The next layer of honest work is the
> conductor calculation — the subject of the next section.

---

## The architecture: Cores, Wrappers, and one named gap

The repository is organized into three layers, each with a distinct
axiom budget and purpose.

### Cores (B01–B21 `*_Core.lean`)

The Cores are the mathematical skeleton. Each states a real proposition
in pure Lean, with **zero imports from Mathlib** and **zero axioms beyond
`propext`**. They cannot hide sorry behind a library import. CI enforces
this with `#print axioms` on every Core declaration; any Core that
inadvertently depends on `modularity_hypothesis` or `sorryAx` fails
the build.

Representative Cores:

| File | Claim |
|---|---|
| `B01` | `IsBealSolutionCore` — type-level characterization of a Beal triple |
| `B02` | `FreyDeltaCore` — the discriminant $\Delta$ of the Frey curve is nonzero |
| `B04` | `ExactDivCore` — $p^k \| N$ exact-divisibility arithmetic |
| `B05` | `modularity_hypothesis` — **the one named axiom** |
| `B14` | `AuditB14B05Boundary` — audit that B14 does not exceed its axiom budget |

### Wrappers (`*_Wrapper.lean`, `*_Interface.lean`)

The wrappers translate Core statements into the concrete Mathlib setting —
real numbers, field norms, `GCDMonoid`. They are permitted a slightly
wider axiom budget: `[propext, Classical.choice, Quot.sound]`. They never
introduce `sorryAx`. The wrapper for BSD (`BSD_HasseFull_143_CLOSED`) has
its own audited real-number transport boundary, checked on every push.

### The named gap

Between the wrappers and a complete proof lies a single named mathematical
obligation: `modularity_hypothesis`. Everything else in the tower is
formally closed. The next step is not to write more Lean — it is to supply
a proof that fills `modularity_hypothesis` from within the language.
That proof requires the conductor calculation below.

---

## The path to a complete proof: Tate and Ribet

The formal program ahead has three steps, in order. Each is a
well-defined mathematical obligation.

### Step 1 — Conductor calculation via Tate's algorithm

Given a primitive Beal triple $(A^x, B^y, C^z)$ with $\gcd(A,B,C) = 1$,
form the Frey curve
$$
E : y^2 = x(x - A^x)(x + B^y).
$$
Tate's algorithm (1975) computes the arithmetic conductor $N(E)$ by
analyzing the local behavior of $E$ at each prime of bad reduction.
For a primitive triple, the bad primes are constrained by the exponent
arithmetic; the key claim is that $N(E)$ divides $2$ (or a small
explicit set determined by the exponents).

This is the most concrete next obligation: a Lean formalization of Tate's
algorithm applied to the Frey curve for Beal data. It is arithmetic, not
analytic — every calculation is an explicit discriminant and valuation
computation.

### Step 2 — Ribet's level-lowering

By the modularity theorem (Wiles–Taylor 1995), $E$ corresponds to a
normalized newform $f$ of weight 2 and level $N(E)$. Kenneth Ribet's
theorem (1990) on level-lowering says: under the constraint that a
mod-$\ell$ Galois representation of $E$ is irreducible, $f$ can be
transported to a newform of level dividing $N(E)/p$ for primes $p$
of a particular type. Iterated application reaches level 2.

### Step 3 — Dimension zero closes the argument

The space $S_2(\Gamma_0(2))$ has dimension zero — no cusp forms of
weight 2 and level 2 exist. This is a classical fact already verified
in this repository by `rfl`. There is no newform to receive Ribet's
transport; the hypothetical Beal triple cannot exist.

These three steps together constitute a proof of Beal's conjecture.
Steps 1 and 2 are where the remaining formal work lives.
`modularity_hypothesis` is the axiom that holds their place.

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

"Green" means the current Lean source elaborates, its declared dependencies
are visible, and the audit checks pass. It does **not** mean that every
named historical theorem has been reconstructed from first principles.

CI enforces the audit boundary on every push:

- **Build all bricks** — all B01–B21 Cores and Wrappers compile
- **Check NO sorry** — no `sorry` in any brick
- **No Prop := True stubs in Core files** — rejects `: Prop := True` and `: Prop := ¬False` in every `*_Core.lean`
- **Audit every Core and Wrapper theorem** — `#print axioms` for every Core declaration; fails if any Core is not zero-axiom or any Wrapper exceeds its budget
- **Audit the real-number transport boundary** — `BSD_HasseFull_143_CLOSED` is allowed only `[propext, Classical.choice, Quot.sound]`; rejects `sorryAx`
- **Verify B01 core is zero-axiom** — `IsBealSolutionCore`, `BealConjectureCore` zero-axiom
- **Verify B02 core is zero-axiom** — `FreyDeltaCore`, `FreyNonzeroCore` zero-axiom
- **`modularity_hypothesis` is the one permitted named axiom** — any Core declaration that inadvertently depends on it fails

---

## Build and audit

The project uses Lean 4.12.0 and Mathlib:

```bash
export PATH="$HOME/.elan/bin:$PATH"
lake exe cache get
lake build Beal
```

---

## DOI / Citation

This repository mints a DOI per release via Zenodo (CERN).

| Release | Description |
|---|---|
| v0.2.0-zero-axiom | First scaffold |
| v0.3.0-arithmetic-descent | $S_2(\Gamma_0(2)) = 0$ proved by `rfl` |
| v0.4.0-interfaces-typed | Modularity hypothesis as explicit named axiom |
| v1.0-opera-numerorum | Final freeze (planned) |

Each DOI is citable. See Releases → Zenodo link.

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
