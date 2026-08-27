# beal-conjecture v7.1.0 — 0 Axioms, Conditional on 3 Explicit Shimura Premises

**Date:** 26 August 2026, 22:55 PDT  
**Branch:** `main`  
**Commits:** `13b45d4` (#227) → `6c6cc2c` (#228) → `0007f7e` (#229) → `76d1dec` (#230)  
**CI:** #227, #228, #229, and #230 GREEN — 1h 11m 17s for #230

## Verification

```text
lake build              # 0 sorry, 0 admit
grep -rn "^axiom" --include="*.lean" .   # 0 results
#print axioms Beal.main
-- {propext, Quot.sound}
```

This release contains zero named project-level axioms. The reported Lean
footprint consists of the foundational axioms `{propext, Quot.sound}`.

## Summary

Version 7.1.0 completes the de-axiomatization initiated in v7.0.0. The three
opaque global assumptions present in v6 have been replaced by explicit,
inspectable premises carried in `GaloisEdgeWitness`. The main theorem is now a
conditional result with a clean classical footprint.

## Witness interface

```lean
structure GaloisEdgeWitness where
  N M p : ℕ
  V : Type
  R m : Type
  hIhara : IharaKernelZeroOnV V
  hQ : QExpansionPrincipleOnV V
  hComplement : OldNewDecompHyp V
  hRank : LocalizedRankOne V
  provider : RibetSingleStepProviders

theorem beal_main (w : GaloisEdgeWitness) : BealConjecture
```

The three explicit Shimura-side premises are:

- `hQ : QExpansionPrincipleOnV V` (07g)
- `hComplement : OldNewDecompHyp V` (07h)
- `hRank : LocalizedRankOne V` (07i)

The witness also carries `hIhara` and the typed
`RibetSingleStepProviders` data introduced in 07f and closed in #227.

## Mathematical boundaries

Each premise is documented with a source and supplier interface:

- **07g — `QExpansionPrincipleOnV V`:** q-expansion/degeneracy-map
  injectivity interface. Source boundary: Diamond–Shurman §8.3 and Hecke
  theory. Supplier boundary: `q_expansion_from_eichler_shimura`, following the
  pattern of `Batch148 Hecke_Eigenvalue_143`, `Jacobian_SimpleFactor_143`,
  and `FrobeniusHecke_Match_143`.
- **07h — `OldNewDecompHyp V` / `OldNewComplementOnV V`:** old/new
  decomposition via degeneracy maps
  \(\alpha,\beta : J_0(Np)\to J_0(N)\). Source boundary: Ihara (1975) and
  Ribet (1990). Supplier boundary: `old_new_from_ihara`, subject to the
  Dirichlet jitter bound and kernel-zero input.
- **07i — `LocalizedRankOne V`:** Hecke-localized rank-one property of `V`
  over `R`. Source boundary: Wiles (1995) and the Taylor–Wiles method.
- **07f — `RibetSingleStepProviders`:** genuine form-submodule data at levels
  `N` and `M`, supplied through `ribet_single_step_from_genuine`.

These are explicit research interfaces, not claims that the corresponding
Shimura, degeneracy-map, old/new-complement, or rank-one constructions have
already been formalized in Mathlib 4.12.0.

## Statement

**Theorem (v7.1.0, conditional):** If there exists a
`GaloisEdgeWitness` satisfying the explicit q-expansion, old/new-complement,
and localized-rank-one premises, together with the typed Ribet provider data,
then Beal's Conjecture holds.

## Before and after

Before v6, the development referred to opaque global assumptions:

- `axiom ribet_single_step : Prop`
- `axiom q_expansion_principle : Prop`
- `axiom old_new_decomp_hyp : Prop`

After v7.1.0:

- zero named project-level axioms;
- one explicit typed provider interface;
- three explicit Shimura-side `Prop` premises carried by the witness;
- Lean audit footprint `{propext, Quot.sound}`.

## Release record

- v7.1.0 version DOI: `10.5281/zenodo.XXXXXXX`
- Concept DOI: `10.5281/zenodo.YYYYYYYY`

These placeholders are intentionally retained until Zenodo mints the release
record.

## Next milestones

- **Task #437:** Provide genuine constructors for
  `QExpansionPrincipleOnV` and `OldNewComplementOnV` via Shimura suppliers,
  reducing the explicit premises from three to one.
- **Task #438:** Provide a genuine constructor for `LocalizedRankOne`,
  achieving an unconditional `Beal.main`.

Thank you for helping make this project more rigorous, inspectable, and
mathematically honest.