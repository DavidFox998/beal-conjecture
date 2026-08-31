# v8.3.0 — Typed Patching and Tate-Certified Descent

## Formal status

This is a machine-checked **conditional** milestone, not an unconditional proof
of the Beal Conjecture. The final route has exactly three named mathematical
boundaries:

1. `Beal.FreyTate.TateStep2.frey_conductor_data`;
2. `Beal.FreyTate.TateStep2.tate_step2_odd_prime_external`;
3. `Beal.FreyTate.wiles_modularity`.

It also requires two explicit, unconstructed data suppliers:

- `Beal20Done.TwoAdicExponentOneSupplier`;
- `Beal.RibetIterate.EnrichedPlanSupplier`.

Lean's foundational dependencies (`propext`, `Classical.choice`, and
`Quot.sound`) are reported separately from those mathematical assumptions.

## What changed

- The Taylor–Wiles layer now carries typed deformation, residual trace, Hecke
  comparison, finite-level action, and diamond-specialization data.
- The patched-module level-zero coordinate is reconstructed from explicit
  specialization data rather than accepted as a separate field.
- Wiles supplies odd-prime, residual-prime-separation, and quotient information;
  it no longer carries exact conductor divisibility.
- Each odd-prime exact-divisibility edge is derived from the canonical Frey model
  through the explicit Tate boundary.
- The exponent-one statement at 2 is an explicit model-indexed certificate,
  preventing an odd-only descent from silently assuming its terminal condition.
- CI audits the Opera Numerorum release import, the Layer 5 Hecke boundary, the
  Layer 6 maximal-ideal boundary, the patching boundary, and the complete B20
  axiom footprint.
- The v8.2.0 four-point rational `E[2]` exhaustiveness result remains present;
  this release does not claim Mazur irreducibility or construct residual Galois
  representations from first principles.

## Reproduction

Pinned toolchain: Lean 4.12.0 with Mathlib at the revision in
`lake-manifest.json`.

```bash
git checkout v8.3.0
lake exe cache get
lake build
lake build +Beal.B00_OperaNumerorum Beal
bash scripts/test-check-b20-axioms.sh
bash scripts/check-b20-axioms.sh
```

The audited clean build graph contains 2,444 targets. A successful build checks
the stated conditional route; it does not discharge the three named mathematical
boundaries or construct the two suppliers.

## DOI policy

The stable concept DOI is `10.5281/zenodo.22041831`. No version DOI is asserted
in this file before Zenodo has minted one from the GitHub `v8.3.0` release.
Exactly one version record should be created for this milestone.
