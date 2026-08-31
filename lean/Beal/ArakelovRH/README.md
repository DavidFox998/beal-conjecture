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
is the downstream geometric supplier. It records the old/new module,
degeneracy-map, coverage, and jitter-indexed separation data without claiming
that the arithmetic certificate alone proves modular geometry.

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

## v8.0.0 patching boundary

The typed Eutheos geometry now indexes an explicit
`TaylorWilesPatchingData` certificate used by B15. The fixed-point inequality
remains arithmetic separation input only: it does not prove the existence of
Taylor–Wiles primes, deformation rings, localized Hecke freeness, or
multiplicity one.

Those obligations are exposed in `Beal/Patching/`; their rank-one consequence
is constructed choice-free from generator and coordinate laws.

