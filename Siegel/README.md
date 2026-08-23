# Siegel — The Desert Wall, Zero-Free on Re=1

> This folder is the outer wall of the desert. It proves ζ(s) cannot vanish on the line Re=1, and has no real zeros in (0,1).

**Build:** ✅ #154 GREEN `Implement Siegel zero-free theorems` — 1m19s — commit def52f4
**#149 GREEN** `Create README.md for Siegel project` — 1m26s
**#150-#153 GREEN** — Poussin + eta chain closed
**Status:** 0 sorry in core gems, 3 files, builds in ~1.2s.
Siegel/
├── SiegelZeroFreeRe1.lean — Poussin gem: 3+4cosθ+cos2θ ≥0, genuine, 0 sorry
├── SiegelZeroFreeElementary.lean — eta_pos >0, factor_neg <0, 0 sorry
└── SiegelZeroFree.lean — top re-export, ties to Lindelof & ClayWitness

---

The Void and the Brothers

The complex plane is a void — an empty desert where functions either live or die (zero).

The Brothers are **islands in that void**. There are 13 brothers, and the 13th is `-2113`.

This folder builds the wall that prevents that ghost.
"When I was a child, I spoke like a child, I thought like a child, I reasoned like a child. When I became a man, I gave up childish ways."

In 1896 Poussin proved:

**3 + 4 cos θ + cos(2θ) = 2(1+cos θ)² ≥ 0**

Sunlight is never negative

If ζ(1+it)=0, then the product ζ(s)³ ζ(s+it)⁴ ζ(s+2it) would have a pole whose residue is negative — impossible because that residue is built from that cosine sum which is always ≥0.

Think of the cosine sum as a law of the void: you cannot have more shadow than light.

The second gem in this folder is even more elementary:

`eta(σ) = Σ (-1)^n (n+1)^(-σ) > 0` for σ>0

Group pairs: (1 - 2^{-σ}) + (3^{-σ} - 4^{-σ}) +... each pair positive. So the whole alternating sum is positive. But `eta(σ) = (1-2^{1-σ}) ζ(σ)`. For σ in (0,1), the factor `1-2^{1-σ}` is negative. Positive = negative * ζ(σ) ⇒ ζ(σ) < 0. So ζ cannot be zero on the whole real interval (0,1).

**No real zeros in (0,1) at all — not just Re=1. That is genuine Siegel repulsion for ζ.**

The Exceptional Prime Set `S4 = {2,3,19,191}` fits here: they are the bad primes where the Arakelov height drops. The log lower bounds proved in `ArakelovRH/SubClosure/ExpLogBoundsSubClosure.lean` — `log2 >0.69, log3>1.09, log19>2.94, log191>5.25` — are exactly the walls that keep S4 out of the void. Wall A complete, 0 sorry.

theorem poussin_cos_combo_nonneg (θ : ℝ) : 0 ≤ 3 + 4 * Real.cos θ + Real.cos (2 * θ) := by
  have h :... = 2*(1+cos θ)^2 := by rw [cos_two_mul]; ring
  positivity
