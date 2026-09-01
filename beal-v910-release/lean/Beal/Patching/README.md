# Taylor–Wiles patching boundary

This directory replaces B15's proposition-valued `hRank :
LocalizedRankOne ...` field with inspectable, Type-valued patching data.  It is
an honest interface for the mathematics that is not yet constructed in
Mathlib 4.12; it is not a claim that the desert-brothers inequality proves
Taylor–Wiles patching.

## v8.9.0 release context

The v8.9.0 Level-26 Real 80-Check Audit does not change this patching layer.
Its Phase A computation checks the available `p = 2` and `p = 13` ledger
outcomes, while the patching, modularity, and level-lowering interfaces remain
conditional suppliers. In particular, the audit does not supply the
S-unit-dependent descent theorem or turn the Phase B+C+D Beal chain into an
unconditional proof.

## Module map

| Module | Role |
|---|---|
| `TaylorWilesPrimes.lean` | Finite prime sets `Qₙ`, primality, avoidance, and congruence data, indexed by the typed Eutheos jitter witness. |
| `PatchedModule.lean` | Finite patched modules, coherent rank-one coordinates, transition maps, diamond operators, compatible inverse-limit projections, and the proved level-zero reconstruction law. |
| `DeformationHecke.lean` | A deformation carrier attached to one Frey residual representation, its map to the localized Hecke algebra, residual trace compatibility, and Taylor–Wiles diamond actions on finite patched levels. |
| `Depth.lean` | Numerical depth equalities that a future commutative-algebra construction must prove. |
| `RankOne.lean` | Packages one edge's patching data and constructs `LocalizedRankOne` from generator/coordinate laws. |
| `REqualsT.lean` | Adds an explicit Hecke-to-deformation map with two inverse laws and proves the semiring-carrier R=T equivalence, restricted Ihara result, and localized rank one. |

The dependency order is:

`EutheosJitter` → explicit `TaylorWilesPrimeSystem` →
`PatchedModuleData` + `PatchedDepthData` →
`TaylorWilesPatchingData` → explicit `REqualsTComparisonData` →
`taylor_wiles_r_equals_t`.

The first arrow is indexing, not implication.  In particular,
`jitter_separation` recovers only the denominator-cleared inequality already
stored in `EutheosJitter`; prime selection remains a supplied arithmetic
boundary.

## What is proved

Each finite level carries `RankOneCoordinates`, and transition maps preserve
both its generator and coordinate. The localized coordinate is not stored:
`PatchingSpecializationData.toRankOneCoordinates` derives it by composing the
level-zero coordinate with the limit projection.
`PatchedModuleData.project_eq_level_zero_coordinate_smul_generator` propagates
the level-zero coordinate through every transition, and projection
extensionality proves
`PatchingSpecializationData.reconstruct_from_level_zero`. Consequently:

- finite-level freeness is derived by `finite_level_free`;
- inverse-limit freeness is derived by `M_infty_free`;
- localized rank one is derived by `LocalizedRankOne_from_Patching`;
- the semiring-carrier R=T comparison is derived by
  `REqualsTComparisonData.toRingEquiv` from an explicit T-to-R map and its two
  inverse laws;
- `taylor_wiles_r_equals_t` combines that equivalence with the independent
  Shimura q-expansion supplier and the patched rank-one theorem;
- no declaration stores `LocalizedRankOne`, the reconstruction law, a
  localized coordinate function, or a `LinearEquiv` as a field;
- these derivations audit to `[propext, Quot.sound]` and do not use
  `Classical.choice` or `sorryAx`.

## What remains open

The reconstruction law is no longer open. `FreyDeformationRingData` records a
semiring carrier, lifted traces, and their residual specialization for one
fixed Frey residual representation.
`FreyDeformationHeckeComparison` supplies the map to that representation's
localized Hecke algebra, requires its residual map to extend the exact
`FreyHeckeAttachment.eval`, and proves the attached generator-trace
compatibility.
`TaylorWilesFiniteLevelAction` ties primes in each supplied `Qₙ` to diamond
scalars acting on the corresponding finite patched module and records
transition and adjacent-level scalar compatibility.

These are inspectable comparison data, not a universal deformation theorem.
Constructing `TaylorWilesPatchingData` from geometry still requires the
missing Taylor–Wiles prime-selection, universal deformation-ring,
localization, depth, and multiplicity-one mathematics. Constructing
`REqualsTComparisonData` additionally requires the genuine T-to-R map and its
inverse laws. The theorem proves the semiring-level comparison from those
explicit suppliers; it neither asserts the complete-local or commutative ring
structure of classical R=T, proves that the suppliers exist, nor derives Wiles
modularity lifting for B05's unrelated legacy natural-number predicate.
The present prime-system interface also does not prove `q ∤ M` or relate
diamond lifts to Frobenius trace lifts and source Hecke generators; those
stronger local compatibility statements must precede any fuller
Taylor–Wiles claim.

The active final theorem retains its separate named Wiles and Tate boundaries
and its explicit enriched-plan supplier. The theorem-level R=T bridge does not
make the conditional Beal scaffold unconditional.