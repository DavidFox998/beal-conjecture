# Taylor–Wiles patching boundary

This directory replaces B15's proposition-valued `hRank :
LocalizedRankOne ...` field with inspectable, Type-valued patching data.  It is
an honest interface for the mathematics that is not yet constructed in
Mathlib 4.12; it is not a claim that the desert-brothers inequality proves
Taylor–Wiles patching.

## Module map

| Module | Role |
|---|---|
| `TaylorWilesPrimes.lean` | Finite prime sets `Qₙ`, primality, avoidance, and congruence data, indexed by the typed Eutheos jitter witness. |
| `PatchedModule.lean` | Finite patched modules, coherent rank-one coordinates, transition maps, diamond operators, compatible inverse-limit projections, and a separately named specialization boundary. |
| `Depth.lean` | Numerical depth equalities that a future commutative-algebra construction must prove. |
| `RankOne.lean` | Packages one edge's patching data and constructs `LocalizedRankOne` from generator/coordinate laws. |

The dependency order is:

`EutheosJitter` → explicit `TaylorWilesPrimeSystem` →
`PatchedModuleData` + `PatchedDepthData` →
`LocalizedRankOne_from_Patching`.

The first arrow is indexing, not implication.  In particular,
`jitter_separation` recovers only the denominator-cleared inequality already
stored in `EutheosJitter`; prime selection remains a supplied arithmetic
boundary.

## What is proved

Each finite level carries `RankOneCoordinates`, and transition maps preserve
both its generator and coordinate. The localized coordinate is not stored:
`PatchingSpecializationData.toRankOneCoordinates` derives it by composing the
level-zero coordinate with the limit projection. Consequently:

- finite-level freeness is derived by `finite_level_free`;
- inverse-limit freeness is derived by `M_infty_free`;
- localized rank one is derived by `LocalizedRankOne_from_Patching`;
- no declaration stores `LocalizedRankOne`, a localized coordinate function,
  or a `LinearEquiv` as a field;
- these derivations audit to `[propext, Quot.sound]` and do not use
  `Classical.choice` or `sorryAx`.

## What remains open

`PatchingSpecializationData.reconstruct_from_level_zero` is the explicit
remaining R=T/localization boundary. It states that the coherent finite-level
generator reconstructs the localized module; without it, finite-level
freeness and numerical depth bookkeeping do not imply localized rank one in
the present Mathlib development.

Constructing `TaylorWilesPatchingData` from the actual Frey representation
still requires the missing Taylor–Wiles prime-selection, deformation-ring,
Hecke-action, localization, depth, multiplicity-one, and specialization
mathematics.  The historical Mazur/Wiles axioms in B05 do not state those
facts, so this layer does not pretend they imply them.  B15's enriched plan
must supply the explicit patching certificate at each edge.

The active final theorem therefore retains its existing named Wiles and Tate
boundaries and its explicit enriched-plan supplier.  This change removes one
opaque proposition from that supplier; it does not make the conditional Beal
scaffold unconditional.