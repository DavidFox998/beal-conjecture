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
Atkin–Lehner complement or `OldNewDecompHyp`. The active
`EutheosGeometryInterface` contains named old/new modules, typed degeneracy
maps, and coverage, but no jitter or separation field. A reusable
`ShimuraOldNewGeometrySupplier` provides the geometric comparison theorem;
B15 combines its constructive alternative with the edge's strict fixed-point
bound. The choice-free path introduces no `sorryAx`, declared axiom, or
`opaque`.

## Upstream relationship

The definitions are a compatibility interface, not a forked proof. The source
list, fixed-point α₀, and distance convention are mirrored from the upstream
Eutheos object. A future direct upstream import can replace this local layer
once a small Lean 4.12-compatible module is available.