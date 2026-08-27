---
name: Diamond–Shurman q-expansion boundary
description: Corrects a reference mismatch and records what Mathlib 4.15 q-expansions do not yet supply.
---

Diamond–Shurman Proposition 8.3.2 is the Frobenius identity
`a_p(E) = σ_{p,*} + σ_p^*` on the reduced elliptic curve's `Pic^0`; it is not
a q-expansion principle, degeneracy-pair injectivity theorem, or Ihara lemma.

**Why:** Treating this citation as a level-raising kernel theorem would turn a
trace-side result into evidence for unrelated missing geometry.

**How to apply:** Use Proposition 8.3.2 only in Frobenius/Hecke trace work. For
the restricted coefficient module `V`, a normalized one-dimensional eigenline
can prove the required cancellation by inspecting coefficients `q^1` and
`q^(p*n)`, but the normalized eigenline itself must remain explicit proof data.

Mathlib 4.15 provides an analytic cusp function on the q-disc for principal
congruence level, recovery of the original form through the q-parameter,
analyticity, cusp vanishing, and exponential decay. Its q-expansion module
still lists formal power series as TODO and does not provide integral or
mod-ℓ q-expansions, degeneracy maps, old/new theory, or Ihara.