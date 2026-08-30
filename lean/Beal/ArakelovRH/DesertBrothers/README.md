# Desert-brothers 1419 interface

## Purpose

The upstream
[`brothers-desert-proof`](https://github.com/DavidFox998/brothers-desert-proof)
repository currently targets Lean 4.15. Its `Family.DirichletJitterTime`
module imports a Mathlib 4.15-only π-irrationality module, while
`Family.Brothers1419` exhausts the Lean 4.12 CI runner during a large
`native_decide` popcount proof. The vendored Eutheos object module avoids that
OOM path, whose process exit was 134.

Beal v7.3 is fixed to Lean and Mathlib 4.12.0. This directory therefore vendors
only the small data interface required to state the proposed dependency:

- the upstream fixed-point α₀ numerator and denominator;
- its scaled nearest-integer distance, expressed entirely in naturals;
- the 35-number desert-brothers list, without recomputing its popcount proof;
- a data-valued `EutheosJitter` carrying a strict reciprocal-distance witness.

## Formal status

`JitterInterface.lean` clears denominators and stores the strict
reciprocal-distance bound as the natural-number inequality
`p * scaledDistance < alpha0Denominator`. This needs no real-field inverse,
floor operation, or `Classical.choice`.

`JitterRealBridge.lean` defines the chosen real representation
`alpha0Numerator / alpha0Denominator`, identifies its two adjacent integer
distances with the fixed-point residue data, and proves the real inequality
`fixedPointNearestIntegerDistance p < 1 / p` from `EutheosJitter p`.
Lean 4.12's real field implementation contributes `Classical.choice` to these
real-valued declarations, so their audit is kept separate. The axiom-free
`EutheosJitter` certificate and the `[propext, Quot.sound]` 07h supplier
footprint are unchanged. The typed Eutheos old/new supplier consumes this
choice-free certificate while keeping the real bridge separate. CI checks all
three budgets independently so a later
real-analysis change cannot silently contaminate the choice-free boundary.

Neither arithmetic module proves that a jitter witness constructs an
Atkin–Lehner complement or `OldNewDecompHyp`. The historical
`EutheosComplementSketch` still carries that proposition explicitly, while the
active `EutheosGeometryInterface` replaces it with named old/new modules,
typed degeneracy maps, coverage, and an old/new intersection theorem indexed
by the jitter witness. B15 derives `OldNewDecompHyp` from those lower-level
fields. The geometric intersection theorem remains supplier data rather than
a false consequence of fixed-point arithmetic alone, and the choice-free path
introduces no `sorryAx`, declared axiom, or `opaque`.

## Upstream relationship

The definitions are a compatibility interface, not a forked proof. The source
list, fixed-point α₀, and distance convention are mirrored from the upstream
Eutheos object. A future direct upstream import can replace this local layer
once a small Lean 4.12-compatible module is available.

## v7.3.1 audit clarification

The phrase **“0 axiom” is scoped to the typed Eutheos focused boundary**. It
means that `Beal.Galois.OldNewDecompHyp_from_Eutheos`, `EutheosJitter`, and
the jitter-indexed separation kernel introduce no proposition-valued axiom or
opaque declaration of their own and audit to `[propext, Quot.sound]`. The
V-specific edge is clean. The Task #440 build covered 2,424 targets and CI
#239 completed successfully in 53m23s.

This is not a repository-wide claim. B05 retains the named
`mazur_irreducibility_axiom` for its legacy natural-number compatibility
predicate and takes Wiles lifting as an explicit external hypothesis.
The theorem-level, semiring-carrier R=T result in the patching layer depends on
supplied two-sided comparison and Shimura data and does not assert
complete-local or commutative ring structure. None of these boundaries is part
of the typed Eutheos bridge.

The real-number interpretation of the fixed-point inequality
`‖p·α₀‖ < 1/p` remains isolated in the desert-brothers module and audits to
`[propext, Classical.choice, Quot.sound]`. That choice-bearing real bridge
does not leak into the typed Eutheos/Beal path.

## v8.0.0 interaction with Taylor–Wiles data

`EutheosJitter` indexes the new `TaylorWilesPrimeSystem`, and
`jitter_separation` returns only the certificate's existing
denominator-cleared inequality. The code deliberately does not claim that this
inequality constructs prime sets `Qₙ` or proves Frobenius separation.

Prime levels and the patched tower are explicit supplier data in
`Beal/Patching/`. This keeps the desert-brothers arithmetic honest and keeps
the real-number bridge, including its `Classical.choice` footprint, outside
the choice-free patching-to-rank-one theorem.

