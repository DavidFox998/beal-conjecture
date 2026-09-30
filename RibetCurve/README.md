> **Root v33 (separate from this library):** `Beal/Beal.General/` checks `CompatChart2t` (191 lines), `CompatChartXt`/`CompatChartYt` (105 each), six polynomial-to-abstract restrictions, and `SpecialFibreGluing` (167 lines); product overlaps are abstract. See `Beal/RELEASE_NOTES_v33.md`.

# Ribet level-lowering library

This directory develops the `928 → 32` route in forward mathematical order.
It separates concrete arithmetic and representation records from the deep
theorems unavailable in the pinned Lean 4.12 / Mathlib revision.

## Modules

- `Modularity.lean` packages an elliptic curve with the displayed Frey
  `j`-invariant and states the specialized Wiles/BCDT construction target.
- `GaloisRep.lean` defines an abstract two-dimensional residual
  representation, designated inertia at `29`, irreducibility, unramifiedness,
  and the exact compatibility needed to use the Mazur `X₀(13)` implication.
- `Conductor.lean` defines local conductor and global Néron-conductor
  certificates and proves how a certificate specializes to the displayed
  values `32` and `928`.
- `LevelLowering.lean` defines the residual eigenform data that a genuine
  Ribet theorem must produce at level `32`.
- `Newform32.lean` separates the missing identification with `32a1` from the
  complete trace-exclusion target.
- `KrausElimination.lean` reuses the exact finite-field trace and coefficient
  table and exposes the proved good-reduction mismatch at `29`.
- `Ribet32a1KrausA29.lean` continues the construction strictly forward:
  Wiles/BCDT modularity, the attached geometric mod-`13` representation and
  concrete irreducibility, Tate inertia and local conductor data, the global
  Néron residual level, identification of the produced level-`32` eigenform
  with `32a1`, the Kraus mismatch `a₂₉(32a1) = -10`, and finally complete
  bad-reduction residue elimination. Its numerical surface is independent
  and is never used backwards to construct any of those inputs.
- `BlockerDoc.lean` consumes the proved numerical surface and records the
  remaining assumptions in construction order.

## What the numerical layer proves

`Ribet_928_to_32_Numerical.lean` proves the displayed division and
multiplication identities, selector values, dimension and table-length
numerals, `a₂₉(32a1) = -10`, Sturm arithmetic, and the cardinality of an
explicitly empty candidate set.  This file is preserved unchanged.

These theorems do not identify `32` or `928` with a Néron conductor.
Likewise, dimension one does not construct the eigenform produced by level
lowering, identify it with `32a1`, or prove a mismatch for every residue
class.

## Remaining boundary

The uninhabited boundary consists of modularity of the displayed Frey curve,
attachment of its geometric mod-`13` representation, absolute irreducibility
through the two Mazur inputs, Tate's algorithm and the Néron conductor,
cyclotomic inertia and unramifiedness at `29`, Ribet's theorem, identification
with `32a1`, and a complete Kraus elimination including the classes where
`29` divides `A`, `B`, or `B+3`.

## Role in the integrated branch

This is the global transition layer.  The verified arithmetic
`928 / 29 = 32` and `32 * 29 = 928` identifies the intended numerical
transition, while the actual transition remains the explicit proposition
`Ribet_928_to_32`.  `Conditional32Newform.Bridge` consumes that proposition
together with the Mazur and Tate boundaries; it does not silently manufacture
modularity or eigenform data.

An unconditional replacement must attach the geometric residual
representation to the modular Frey curve, prove absolute irreducibility and
the local conductor/unramifiedness hypotheses, invoke genuine Ribet lowering,
construct the level-`32` residual eigenform, identify the unique relevant
newform with `32a1`, and complete Kraus elimination across every
bad-reduction class.  The numerical quotient `928/29` proves none of these
steps by itself.