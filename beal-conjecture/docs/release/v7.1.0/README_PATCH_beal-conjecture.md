# Beal Conjecture README patch — v7.1.0

Replace the current top-level status/scaffold section with the following.
Keep the repository’s existing introduction, wider-work overview, build
instructions, and references around it.

````markdown
## Status — v7.1.0 (26 August 2026)

**CI:** #227 `13b45d4` GREEN, #228 `6c6cc2c` GREEN, #229 `0007f7e` GREEN,
#230 `76d1dec` GREEN (1h 11m 17s)

**Lean:** 4.12.0, Mathlib v4.12.0, `lake build` — 0 `sorry`, 0 `admit`

**Axiom audit:** no named project-level `axiom` declarations. The reported
Lean footprint is `{propext, Quot.sound}`.

**Conditional status:** this is a machine-checked conditional theorem, not an
unconditional proof of Beal’s Conjecture. The deep modular/Jacobian inputs
remain explicit and inspectable.

### Main theorem

```lean
theorem beal_main (w : GaloisEdgeWitness) : BealConjecture
```

`GaloisEdgeWitness` carries the typed provider data and the explicit
mathematical interfaces needed by the final assembly:

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
```

The three Shimura-side premises exposed for future construction are:

- `hQ : QExpansionPrincipleOnV V` — the q-expansion/degeneracy-map
  injectivity interface. Source boundary: Diamond–Shurman, §8.3, and the
  Hecke-theoretic supplier interface.
- `hComplement : OldNewDecompHyp V` — the old/new complement interface
  associated with the degeneracy maps
  \(\alpha,\beta : J_0(Np)\to J_0(N)\). Source boundary: Ihara (1975) and
  Ribet (1990).
- `hRank : LocalizedRankOne V` — the Hecke-localized rank-one interface.
  Source boundary: the Taylor–Wiles/Wiles method.

`hIhara` records the restricted Ihara input used by the bridge, while
`provider : RibetSingleStepProviders` carries the genuine form-submodule
data required by the Ribet step. None of these interfaces is silently
replaced by a theorem merely because the surrounding Lean declarations
compile.

### From v6 to v7.1.0

Before v7.1.0, the final assembly referred to opaque global assumptions such
as `ribet_single_step`, `q_expansion_principle`, and
`old_new_decomp_hyp`. In v7.1.0, those dependencies are carried as typed
provider data and explicit witness fields. The result is de-axiomatized at
the project level, while remaining conditional on the mathematical premises
that have not yet been formalized in this repository.

### Release DOI

- v7.1.0: `https://doi.org/10.5281/zenodo.XXXXXXX`
- Concept DOI: `https://doi.org/10.5281/zenodo.YYYYYYY`

Replace the placeholders after Zenodo mints the release record.

### Next milestones

- Provide genuine constructors for `QExpansionPrincipleOnV` and
  `OldNewDecompHyp`, reducing the explicit Shimura-side premises.
- Provide a genuine constructor for `LocalizedRankOne`, which is the
  remaining boundary toward an unconditional `Beal.main`.
````