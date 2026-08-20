# Beal Conjecture — a formal instrument in *Opera Numerorum*

[![beal-conjecture CI](https://github.com/DavidFox998/beal-conjecture/actions/workflows/main.yml/badge.svg)](https://github.com/DavidFox998/beal-conjecture/actions)

This repository is one chamber of David Fox's *Opera Numerorum*: a growing
collection of machine-checked arithmetic, geometry, and analysis in Lean 4.
It studies the Beal Conjecture through a sequence of formal layers, from
elementary divisibility to the elliptic-curve language suggested by the Frey
construction.

The aim is not to make a green build look like a finished theorem. The aim is
to make each mathematical dependency visible, inspectable, and worthy of
trust.

> **Important status**
>
> This repository is a formalization scaffold, not a completed proof of
> Beal's Conjecture. Lean accepts the declarations currently present, but
> several later layers are still explicit scaffolding for mathematics that has
> not yet been formalized here. A compiled interface is not the same thing as
> a proved modularity or level-lowering theorem.

## The wider work: *Opera Numerorum* and four routes toward RH

The Beal development is not itself a proof of the Riemann Hypothesis. It is
part of a wider program in which different mathematical languages are used to
approach the same landscape: Arakelov geometry, automorphic forms, spectral
gaps, arithmetic dynamics, and growth of zeta functions.

The program currently has four distinct routes toward RH. They are separate
formalization paths, not four paragraphs of one hidden proof. Their value is
that independent viewpoints can meet at common arithmetic data and expose one
another's assumptions.

### Route A — Act I: positivity

[`riemann-arakelov-positivity`](https://github.com/DavidFox998/riemann-arakelov-positivity)
turns positivity on the modular curve \(X_0(143)\) into an arithmetic
inequality. Its architecture centers on
\[
g(X_0(143))=13,\qquad \omega^2=\frac{48}{13},
\]
and the finite set
\[
S_4=\{2,3,19,191\}.
\]
The intended chain is Arakelov positivity, a GRH statement for the relevant
finite data, a Bost-type bound, and finally RH. Each arrow is a mathematical
obligation; the repository is where the current formal status of those
obligations must be checked.

### Route B — Act II: descent

[`arakelov-rh-descent`](https://github.com/DavidFox998/arakelov-rh-descent)
approaches the same territory through a spectral gap on \(X_0(143)\), with
\[
\lambda_1\geq \frac{975}{4096}
\]
as the stated Kim–Sarnak input. The route passes through Selberg-type
spectral information and the Bost–Connes viewpoint before returning to the
same finite arithmetic gate.

### Route C — Act III: growth

[`rh-growth-contradiction`](https://github.com/DavidFox998/rh-growth-contradiction)
takes a contradiction route. It compares the growth permitted by a proposed
zeta bound with Littlewood's \(\Omega\)-phenomenon, and studies zero
repulsion through the \(p=5\) bridge. Its language is not geometric descent
but the tension between analytic growth and the distribution of zeros.

### Route D — Act IV: the brothers' desert

[`brothers-desert-proof`](https://github.com/DavidFox998/brothers-desert-proof)
is the fourth line of attack. It is intentionally kept as a separate route:
its hypotheses, reductions, and audit trail should be read in its own
repository rather than silently imported into this Beal development.

### Shared anchors

The routes repeatedly meet around the finite arithmetic datum
\[
S_4=\{2,3,19,191\},\qquad C(S_4)\approx 11.422>2\sqrt{13}.
\]
The current core and bridge repositories are:

- [`arakelov-positivity-rh-core`](https://github.com/DavidFox998/arakelov-positivity-rh-core) —
  the common RH core, including the B158 architecture and its 18 sub-atoms.
- [`rh-p5-bridge-14`](https://github.com/DavidFox998/rh-p5-bridge-14) —
  the \(p=5\) numerical bridge around \(143\cdot13=1859\), \(S_{14}=14\),
  \(q_5=226\), and \(h=10\).

These links describe the architecture of the program. They should not be
read as a claim that this README, or this Beal repository alone, has closed
RH.

## What is Beal?

Beal's Conjecture is an assertion about the rarest kind of coincidence in
elementary number theory: three perfect powers adding to a perfect power when
all three exponents exceed two.

For positive integers \(A,B,C\) and integers \(x,y,z>2\), suppose
\[
A^x+B^y=C^z.
\]
The conjecture says that \(A,B,C\) cannot be pairwise free of a common
factor. In the compact conventional form,
\[
\gcd(A,B,C)>1.
\]
Equivalently, there is no **primitive** solution:
\[
\gcd(A,B,C)=1.
\]
In this repository the public Lean wrapper writes the condition as
\[
\operatorname{Nat.gcd}(A,\operatorname{Nat.gcd}(B,C))=1
\]
when it describes a putative primitive solution.

That is the heart of the conjecture—not the prize associated with it. The
beauty of Beal is that it asks a very small equation to carry a very large
amount of arithmetic structure. A solution would have to reconcile
divisibility, the geometry of a Frey elliptic curve, modular forms, Galois
representations, and the descent of a conductor. The equation is elementary;
the obstruction it predicts is not.

The connection to Fermat's Last Theorem is immediate and illuminating. If
\[
a^n+b^n=c^n,\qquad n>2,
\]
were a primitive positive solution, then it would be a Beal solution with
\(x=y=z=n\). Thus Beal would imply Fermat's Last Theorem. The B21 layer records
this implication as a corollary. It does not use Fermat as a premise, and it
does not turn the conditional implication into a proof of Beal.

## Layout of the formal development

The repository is a 21-layer tower:

```text
lean/
├── Beal.lean                         # root import: every core, then wrapper
└── Beal/
    ├── B01_Def_Core.lean             # import-free foundational predicates
    ├── B01_Def.lean                  # public Nat.gcd API and bridges
    ├── B02_Frey_Core.lean
    ├── B02_Frey.lean
    ├── ...
    ├── B20_BealConjectureDone_Core.lean
    ├── B20_BealConjectureDone.lean
    ├── B21_FermatCorollary_Core.lean
    └── B21_FermatCorollary.lean
```

Every layer has two faces:

1. **The core** is deliberately import-free. It uses Lean's foundational
   propositions and explicit witness predicates. Where a convenient
   Mathlib definition might conceal a dependency, the core spells out the
   relevant relation directly.
2. **The wrapper** is the Mathlib-facing interface. It preserves familiar
   names and statements for downstream work. In particular, B01 and B21 keep
   the conventional `Nat.gcd` formulation while proving conversions to and
   from the primitive common-divisor witnesses used by the cores.

The principal mathematical movement through the tower is:

| Layers | Mathematical role |
| --- | --- |
| B01–B02 | Beal solutions, primitivity, and the Frey discriminant |
| B03–B05 | conductor, modularity interfaces, and the Hasse-bound layer |
| B06–B10 | bridges between the Frey data, Galois language, and level lowering |
| B11–B15 | epsilon, Ribet, conductor, and descent interfaces |
| B16–B20 | the final assembly interfaces; some are still scaffolding |
| B21 | the constructive Beal-to-Fermat corollary bridge |

The word *interface* matters. A Lean declaration can make the type of a
mathematical step precise before the deep theorem supplying that step has
been formalized. That is useful engineering and honest mathematics only when
the distinction remains visible.

## Methodology: audit the boundary, not just the theorem name

The project uses a core/wrapper discipline so that a reader can ask two
different questions:

- What does the statement require at the foundational level?
- What convenience, quotient, or classical machinery enters the public API?

CI checks the following:

- all B01–B21 core modules are import-free;
- core declarations have no axioms;
- strict wrapper theorems contain no `Classical.choice`, `Quot.sound`, or
  `sorryAx`;
- `propext` is allowed where ordinary proposition extensionality enters;
- the exact trusted real-number boundary remains isolated and documented.

### The real-number boundary

`BealHasseWiles.BSD_HasseFull_143_CLOSED` preserves a historical theorem about
the concrete type `ℝ`. In Lean 4.12 and Mathlib, the implementation of the
real numbers passes through quotient and completion constructions. Even an
elementary order proof can therefore report
\[
[\texttt{propext},\ \texttt{Classical.choice},\ \texttt{Quot.sound}].
\]

This is not silently mixed into the strict integer audit. It is recorded as a
trusted Mathlib transport boundary, checked for its exact dependency budget,
and rejected if `sorryAx` appears. The import-free B05 core and the strict
integer theorem remain available for the part of the argument that does not
need the concrete implementation of `ℝ`.

## Status: what “green” means here

“Green” means that the current Lean source elaborates, its declared
dependencies are visible, and the relevant audit checks pass. It does **not**
mean that every named historical theorem—especially modularity, Ribet
level-lowering, or the final contradiction—has been reconstructed from first
principles in this repository.

The next honest frontier is to replace scaffolding propositions in B11–B20
with precise mathematical hypotheses and proofs, while preserving the same
audit discipline. A future theorem should become stronger because its
mathematics has been supplied, not because its name has been moved farther down
the tower.

## Build and audit

The project uses Lean 4.12.0 and Mathlib:

```bash
export PATH="$HOME/.elan/bin:$PATH"
lake exe cache get
lake build Beal
```

The CI workflow additionally checks imports, `#print axioms` output, the
strict wrapper budget, and the documented real-number exception.

## Related work

The surrounding *Opera Numerorum* includes formal work on:

- BSD and the \(143a1\) elliptic curve;
- Bost–Connes and the finite \(S_4\) gate;
- the canonical arithmetic sieve;
- the Lindelöf Hypothesis;
- Yang–Mills, Navier–Stokes, and P vs NP;
- the ZeroBeacon MCP catalog.

Each repository has its own scope and audit boundary. The intended relation is
composition by explicit statements and certificates, not an invisible web of
imports.

## References

- Andrew Beal (1997) — the Beal Conjecture.
- Gerhard Frey (1986) — the Frey curve and the bridge from Diophantine
  equations to elliptic curves.
- Kenneth Ribet (1990) — level lowering.
- Barry Mazur (1978) — irreducibility phenomena for Galois representations.
- Andrew Wiles (1995) — modularity and Fermat's Last Theorem.
- [`ImperialCollegeLondon/FLT`](https://github.com/ImperialCollegeLondon/FLT) —
  inspiration for formalization, not a dependency of this repository.

Maintained by DavidFox998 as part of *Opera Numerorum*: mathematics made
auditable, with the beauty left visible.