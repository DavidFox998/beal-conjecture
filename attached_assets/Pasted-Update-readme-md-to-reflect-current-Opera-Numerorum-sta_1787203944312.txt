Update readme.md to reflect current Opera Numerorum state — Lean formation is stale.

Replace readme.md content with:

# Beacon Fix De — Audit Boundary Resolution

## Opera Numerorum — 4 Routes to RH

This repo is part of David Fox Opera Numerorum — machine-checked Lean 4.12 unconditional proofs.

### The 4 Routes (all 0 sorry, 0 axiom beyond classical trio [propext, Quot, choice]):

**Route A — Act I Positivity:** riemann-arakelov-positivity
- Arakelov on X₀(143) g=13 ω²=48/13>0 via Abbes-Ullmo 1996
- S₄={2,3,19,191} C=11.422>2√13 → GRH M9 → H₄ 12/11 → RH
- https://github.com/davidfox998/riemann-arakelov-positivity

**Route B — Act II Descent:** arakelov-rh-descent
- Spectral gap X₀(143) λ₁≥975/4096 Kim-Sarnak → Selberg = Bost-Connes
- C(S₄)=11.422>2√13 → GRH → RH
- 35pp BC6 20450 bytes 0 sorry
- https://github.com/davidfox998/arakelov-rh-descent

**Route C — Act III Growth:** rh-growth-contradiction
- RH via contradiction: |ζ|≤C(log t)² false via Littlewood 1924 Ω
- Zero repulsion c1=0.209>0.2 β>0.9 closed at p5
- https://github.com/davidfox998/rh-growth-contradiction

**Route D — Act IV:** brothers-desert-proof
- https://github.com/davidfox998/brothers-desert-proof

**Core:** arakelov-positivity-rh-core — riemann_hypothesis_unconditional (B158) 18 sub-atoms DOI:10.5281/zenodo.20981649
https://github.com/davidfox998/arakelov-positivity-rh-core

**Keystone:** rh-p5-bridge-14 — 143*13=1859 S14=14 q5=226 C(S₄)=11.422 h=10 — P5_BSD_RH_closure_CLOSED
https://github.com/davidfox998/rh-p5-bridge-14

### Audit Boundary

- Integer core (B01-B158): 0 axiom beyond classical trio, verified via #print axioms [propext] only
- Public ℝ theorem: Uses Lean/Mathlib standard Real quotient — requires Quot.sound as trusted transport. Excluded from strict wrapper audit per compatibility policy.
- This is intentional: Lean's Real is Quotient of Cauchy sequences. Any ℝ < proof must produce Quot.sound.

### Related Repos

- Beal Conjecture: beal-conjecture — B01-B21 22 bricks GREEN zero-axiom Core + [propext] proofs — Beal ⇒ Fermat
- BSD 143a1: birch-swinnerton-dyer-143a1 — Hasse Infinite HONEST + Bost Bound S₄ — Rank 1 = Algebraic Rank 1
- BSD: birch-swinnerton-dyer-143 — h(ℚ(√-143))=10 proved
- Bost-Connes: bost-connes — Gate M1 BC6 Weil bound closed via C(S₄)=11.422>2√13
- Certifications: Certifications — machine-checked audit certificates Morning Star Project
- Sieve: opera-sieve — canonical sieve for S(alpha_0=299+pi/10)
- Morning Star: morningstar-project — machine certification for GRH(X_0(143)) and BSD(J_0(143)) 476 equations CLAY-sealed
- P vs NP: p-vs-np — IF SAT ∉ P THEN P ≠ NP — 223 bricks
- Yang-Mills: yang-mills-gap — SU(3) lattice YM mass gap at β₀=ln 8 — 664 lemmas 0 sorry trio only
- Navier-Stokes: navier-stokes — unconditional proof of global regularity
- Lindelöf: lindelof-hypothesis-143 — μ=0 for X₀(143) via S₄ Δ_E4=23.79>2√13
- ZeroBeacon: zerobeacon — Collision-anchored commerce router 1052 MCP tools

### Methodology

Lean 4.12 formation: Core files with NO imports → has no axioms. Wrapper files import Mathlib → [propext] only. Real-number legacy corollaries documented as trusted transport.

All routes converge on S₄={2,3,19,191} C=11.422>2√13 — Morning Star certification.

After updating readme.md, run lake build to ensure still green, then git commit -m "docs: update readme with 4-route RH architecture + audit boundary + Opera Numerorum links" and push.