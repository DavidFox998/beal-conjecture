# Frey-specific Mazur boundary

This folder isolates the rational-isogeny problem actually needed by the Beal
route. It does not formalize Mazur's full torsion or isogeny classification,
and it does not claim that the remaining classification theorem has already
been proved.

## Method

The development starts from two pieces with different formal status:

1. `B17_FullE2.lean` proves the exact four-point rational `E[2]` set of the
   canonical Frey curve.
2. `B17_MazurIrreducible.lean` defines a rational `p`-isogeny kernel as a
   Galois-stable cyclic subgroup of geometric `p`-torsion.

Those pieces form mixed level structure. A stable kernel is deliberately not
treated as a rational point: Galois may act nontrivially on every nonzero
kernel element. Consequently, this folder contains no inference from a
rational `p`-isogeny to rational `p`-torsion or rational `2p`-torsion.

## Files

- `FreyTorsion.lean` packages full rational `E[2]` together with the genuine
  cyclic `p`-kernel and derives this package from residual reducibility.
- `RationalIsogenyBound.lean` states the exact Frey-specific theorem still
  needed: no such mixed level structure for `p ≥ 11`. It proves that this
  exclusion implies residual irreducibility.
- `Supplier.lean` provides a transparent data-valued interface for a future
  proof of the exclusion theorem. No supplier inhabitant is constructed here.

The dependency direction is linear:

```text
B17_MazurIrreducible
        ↓
FreyTorsion
        ↓
RationalIsogenyBound
        ↓
Supplier
```

Nothing in B17 imports the supplier, so the boundary cannot prove itself
circularly.

## Unfinished mathematics

Constructing `FreyPIsogenyExclusionSupplier` requires a rational-point
classification for the modular curve carrying full level-2 structure and a
cyclic subgroup of prime order, specialized to the Frey family, or an
equivalent semistable isogeny-character argument. The pinned Mathlib revision
does not provide that theorem or the modular-curve infrastructure needed to
reconstruct it.

The CI audit checks that the mixed-level definitions and supplier bridge remain
free of `sorry`, local axioms, and `Prop := True` markers. Passing that audit
certifies the honesty of the boundary; it does not inhabit the supplier.