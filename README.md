# brothers-desert-proof

**Self-Symmetry formalization of the Clay Millennium Claim**

A fourth independent route to the Clay claim, built on the arithmetic self-symmetry
of the 35 MORNINGSTAR brothers.  The other three routes live in
[p5-boundary](https://github.com/DavidFox998/p5-boundary):
Arakelov Positivity, RH Descent, and Growthbound.

## Core idea

The 35 brothers — 16-bit numbers with exactly 6 set bits, all ≡ 153 mod 211,
all ≥ 193 — exhibit a discrete self-symmetry: they land in 35 **distinct** slots
mod 191 and mod 193, they maintain ≥2 Hamming distance from each other, and
their jitter sequence under π/10 rotation stays Nodup for all 1419 time steps.

This symmetry structure is incompatible with a polynomial-time circuit that
could collapse the GapMCSP gap (L = 2240 vs threshold = 33), giving a new
independent witness for the Clay separation claim.

## Repo map

```
SelfSymmetry/
  Core.lean          — brothers imported, basic self-symmetry facts
  Desert.lean        — desert structure, exceptional set S4, p5 boundary
  JitterSymmetry.lean— π/10 jitter Nodup, EMI reduction, Hilbert gate
  TwinWormhole.lean  — twin-prime product injectivity (W1,W2,W3)
  ClayWitness.lean   — Clay separation certificate (GapMCSP gap)
Protocol/
  Chain.lean         — certified chain tying all five repos
```

## Dependencies

- [mathlib4 v4.15.0](https://github.com/leanprover-community/mathlib4)
- [eutheos-property](https://github.com/DavidFox998/eutheos-property) — brothers, jitter, Hilbert route
- [p5-boundary](https://github.com/DavidFox998/p5-boundary) — Arakelov positivity, BSD, desert prime p5

## Honest clay rules

- **0 sorry**, ever.
- `native_decide` for finite arithmetic certificates.
- Classical logic for irrational / analytic results.
- All theorems labeled `_clean` form the certified chain.
