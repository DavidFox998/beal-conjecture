> **Root v33 (separate from this library):** `Beal/Beal.General/` checks `CompatChart2t` (191 lines), `CompatChartXt`/`CompatChartYt` (105 each), six polynomial-to-abstract restrictions, and `SpecialFibreGluing` (167 lines); product overlaps are abstract. See `Beal/RELEASE_NOTES_v33.md`.

# Kolyvagin rank-zero library

This directory separates the project’s proved numerical displays from the
analytic and algebraic constructions required for a genuine Kolyvagin or
two-descent proof of Mordell--Weil rank zero.

## Modules

- `LFunction.lean` defines a curve-indexed analytic `L(E,s)` interface and
  the formal predicate `L(E,1) ≠ 0`.  It does not manufacture an arbitrary
  Hasse--Weil function.
- `Periods.lean` defines positive real periods, the normalized value
  `L(E,1)/Ω_E`, and the missing identification with the displayed rational
  quotient.
- `KatoKolyvagin.lean` states forward-only Mordell--Weil and
  Tate--Shafarevich finiteness conclusions from formal analytic
  nonvanishing.
- `FiniteGeneration.lean` uses the project’s actual rational-point group and
  states finite generation by a finite set.
- `MordellWeilFintype.lean` defines algebraic rank zero as finiteness of the
  rational-point type.  It preserves the proved fact that the point groups
  are not subsingletons because they have nonzero torsion.
- `SelmerExactSequence.lean` defines typed data for
  `0 → E(ℚ)/2E(ℚ) → Sel₂(E) → Sha(E)[2] → 0`.
- `TwoDescent.lean` requires an explicit identification between the
  displayed cardinality and the cardinality of a constructed Selmer group.
- `KolyvaginL_OmegaSel2Fintype.lean` continues strictly forward from
  curve-attached `L`-functions and periods through Kato--Kolyvagin finite
  generation, constructed Selmer exact sequences and cardinality
  identifications, the normalized values `L/Ω = 1/3` and `1/7`,
  `Sel₂_card = 1`, `2^dim = 1`, and actual `Fintype` witnesses.  It keeps
  `Nonempty (Fintype E(ℚ))` distinct from the proved
  `¬Subsingleton E(ℚ)` boundary and never constructs analytic or algebraic
  data from the numerical displays.
- `BlockerDoc.lean` consumes the numerical surface and records the remaining
  construction order.

## Proved numerical surface

`Kolyvagin_MW_Rank0_Numerical.lean` remains unchanged.  It proves the
displayed rational values `1/3` and `1/7`, their rational nonvanishing,
displayed two-Selmer cardinalities and dimensions, mwrank display values,
torsion-order arithmetic, discriminants, and the failure of the older
`Subsingleton` rank-zero predicate.

These facts do not by themselves construct an elliptic-curve `L`-function,
a real period, a formal Selmer group or exact sequence, a Mordell--Weil
finite-generation proof, a Kato/Kolyvagin theorem, or a `Fintype` instance
for either rational-point group.

## Role in the integrated branch

The integrated documentation keeps this line separate from level lowering.
The displayed normalized values `L/Ω = 1/3` and `1/7` are rational
nonvanishing calculations, and the displayed `Sel₂_card = 1` is numerical
data.  They do not supply Wiles/BCDT modularity, Mazur irreducibility,
Tate/Néron local theory, or Ribet lowering.

Rank zero is also not encoded by `Subsingleton E(ℚ)`: the formal surface
proves the point groups have nonzero torsion and hence are not subsingletons.
The intended algebraic statement is finiteness,
`Nonempty (Fintype E(ℚ))`.  Producing it still requires curve-attached
`L`-functions and periods, Kato–Kolyvagin input, Mordell–Weil finite
generation, a constructed Selmer exact sequence, and exact finite witnesses.