# Desert-brothers 1419 interface

## Purpose

The upstream
[`brothers-desert-proof`](https://github.com/DavidFox998/brothers-desert-proof)
repository currently targets Lean 4.15. Its `Family.DirichletJitterTime`
module imports a Mathlib 4.15-only π-irrationality module, while
`Family.Brothers1419` exhausts the Lean 4.12 CI runner during a large
`native_decide` popcount proof.

Beal v7.2 is fixed to Lean and Mathlib 4.12.0. This directory therefore vendors
only the small data interface required to state the proposed dependency:

- the upstream fixed-point α₀ numerator and denominator;
- its scaled nearest-integer distance, expressed entirely in naturals;
- the 35-number desert-brothers list, without recomputing its popcount proof;
- a data-valued `EutheosJitter` carrying a strict reciprocal-distance witness.

## Formal status

`JitterInterface.lean` clears denominators and stores the strict
reciprocal-distance bound as the natural-number inequality
`p * scaledDistance < alpha0Denominator`. This needs no real-field inverse,
floor operation, or `Classical.choice`. It does not prove that a jitter witness constructs an
Atkin–Lehner complement or `OldNewDecompHyp`. The 07h bridge carries that
proposition as a separate explicit field and merely projects it. Consequently
the active B15 path is unchanged, and the infrastructure introduces no
`sorryAx`, declared axiom, `opaque`, or `Classical.choice`.

## Upstream relationship

The definitions are a compatibility interface, not a forked proof. The source
list and distance convention are mirrored from the upstream Eutheos object.
When upstream publishes a Lean 4.12-compatible small module for the strict
`‖p · α₀‖ < 1 / p`-style nearest-integer-distance statement, this local layer
can be replaced by a direct import.