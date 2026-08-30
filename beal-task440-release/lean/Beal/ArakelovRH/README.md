# Arakelov/RH interfaces

This directory contains narrow interfaces for arithmetic or Arakelov-style
inputs that may eventually inform the Galois and old/new boundaries.

These files do not claim that analytic or combinatorial data proves a modular
old/new decomposition. Each bridge must state the missing geometric input
explicitly and remain outside the active B15 path until that input is formally
constructed.

The [`DesertBrothers`](DesertBrothers/) directory contains the Lean 4.12
compatibility interface for the 1419 desert-brothers infrastructure. Its
natural-number certificate remains choice-free, while a separate real bridge
documents and audits the Lean 4.12 real-field dependency.

The typed `EutheosGeometryInterface` in
[`Beal/Galois/07h_EutheosGeometry.lean`](../Galois/07h_EutheosGeometry.lean)
records the old/new module, degeneracy-map, and coverage data. The reusable
Shimura supplier and its comparison theorem are separate; an edge-local
`EutheosJitter` only rules out the comparison theorem's lower-bound branch.
The arithmetic certificate alone is never claimed to prove modular geometry.