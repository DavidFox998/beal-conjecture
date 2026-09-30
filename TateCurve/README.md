> **Root v33 (separate from this library):** `Beal/Beal.General/` checks `CompatChart2t` (191 lines), `CompatChartXt`/`CompatChartYt` (105 each), six polynomial-to-abstract restrictions, and `SpecialFibreGluing` (167 lines); product overlaps are abstract. See `Beal/RELEASE_NOTES_v33.md`.

# Tate curve library at 29

This directory develops the Tate-at-`29` route in the only valid forward
order:

1. define the local field, valuation, and curve-attached Tate-parameter target;
2. construct the multiplicative quotient and full Tate `j`-series interface;
3. identify the quotient with the Frey curve over `ℚ_[29]`;
4. run Tate's algorithm and construct the Néron conductor;
5. construct the mod-`13` representation and prove its inertia formula; and
6. combine the local result with separate global level lowering at every odd
   prime dividing `A * B`.

## Modules

- `TateParameter.lean` defines `ℚ_29`, `v_29`, `TateParameter`, the
  curve-attached parameter target, and the proved discriminant-valuation
  target.
- `TateUniformization.lean` defines `q^ℤ`, the quotient `Kˣ / q^ℤ`, the
  truncated expression, the required full-series data, and complete
  uniformization data. It proves only the valid projection from full
  uniformization data to a Tate parameter.
- `NeronConductor.lean` defines the Kodaira vocabulary and evidence structures
  required from Tate's algorithm and a Néron-model construction.
- `InertiaRepresentation.lean` defines an abstract mod-`13` representation
  with an inertia subgroup, the missing cyclotomic formula boundary, and the
  separate global residual-level target.
- `BlockerDoc.lean` assembles the proved numerical surface and records the
  exact remaining assumptions.
- `ClosureContinued.lean` consumes the complete proved numerical surface and
  records the next forward boundary: full-series inversion, the Tate
  elliptic curve on `ℚ_29ˣ/q^ℤ`, exact `j`-equalities, `I_(26k)`,
  Néron `32`/`928`, the cyclotomic `q^(1/13)` inertia formula, and mod-`13`
  unramifiedness.  It does not inhabit those missing constructions.
- `Neron32_928InertiaQ13.lean` separates the next forward projections:
  curve-attached `q` and its exact valuation, Tate-algorithm `I_(26k)`,
  constructed Néron `32`/`928` identification, cyclotomic action through
  `q^(1/13)`, and mod-`13` unramifiedness.  Its numerical surface is proved,
  while the geometric construction boundary remains explicitly uninhabited.

## Honest boundary

Mathlib at Lean `v4.12.0`, revision `809c3fb`, has general `p`-adic,
valuation, quotient-group, Weierstrass-curve, and representation
infrastructure. It does not provide the Tate elliptic curve, convergence and
inversion of the full `j(q)` expansion, Tate's algorithm and Néron models, or
the Frey curve's residual Galois representation.

Accordingly, this directory constructs reusable types and proves numerical
and logical consequences already supported by existing terms. It does not
inhabit the missing proposition boundaries. In particular,
`q⁻¹ + 744 + 196884q` is only a truncation and is never treated as the full
series or as a parameter attached to the Frey curve.

The local statement at `29` also cannot remove all odd factors of
`residualOddEstimate A B`. That final divisibility requires global
level-lowering input at every relevant prime or a separate no-solution
argument.

## Role in the integrated branch

This library supplies the local side of the conditional level-`32` chain.
Its proved numerical input is the Frey discriminant
`Δ = 16 A⁸ B⁸ (A⁴+B⁴)²`, together with
`v₂₉(Δ) = 26 v₂₉(B+3)` and `13 ∣ v₂₉(Δ)` under the stated gap-`3`
hypotheses.  `Conditional32Newform.Bridge` does not infer a Néron conductor
from these equalities: it receives `Frey_conductor_29_is_Neron` explicitly.

A complete local contribution still needs the curve-attached Tate parameter,
the full convergent `j(q)` theory, Tate's algorithm, the Néron model and
conductor, the geometric mod-`13` representation, its cyclotomic inertia
formula, and the required unramifiedness statements.  Only after those terms
exist can the Ribet layer consume this module unconditionally.