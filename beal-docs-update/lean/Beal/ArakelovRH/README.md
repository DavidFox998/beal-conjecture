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

## v8.9.0 release context

The v8.9.0 Real 80-Check Audit is confined to the Level-26 Phase A
bad-prime ledger. It does not alter these Arakelov/Eutheos interfaces, and
none of the finite `p = 2` or `p = 13` checks supplies the missing modular
geometry or the conditional Phase B+C+D inputs.

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

## Place in *Opera Numerorum*

This directory is a quiet side chamber of the Beal route. It preserves the
Arakelov and desert-brothers interfaces that can supply arithmetic separation
data to the modular story, while refusing to identify a numerical inequality
with the geometric theorem it would need to support.

In the v9.2.0 Level-26 chapter, the reproducible descent evidence belongs to
`Beal/Mazur/`, not here. The two stories meet only through typed suppliers:
Arakelov-style or jitter data may index a later construction, but it does not
by itself prove a Jacobian decomposition, a Taylor–Wiles system, or a
singleton Selmer group.

