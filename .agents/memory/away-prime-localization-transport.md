---
name: Away-prime localization transport
description: Why prime-local comparison across two principal localizations should be proved generically before specializing to chart rings.
---

When matching prime local rings across an equivalence of two `Localization.Away` rings, prove the prime-transport lemma for abstract commutative rings and abstract target localizations with explicit `Algebra` and `IsLocalization.Away` instances. Specialize it to concrete chart rings afterward.

**Why:** A direct proof on the concrete `Localization.Away` types let Lean select incompatible semiring instances for an ideal map and its `Localization.AtPrime`; elaboration failures misleadingly looked like failures of ring-equivalence injectivity or transitivity. Abstracting the ring instances made the same localization and prime comparison check without changing the mathematics.

**How to apply:** Build the actual quotient-ring equivalence first. In a separate generic lemma, map a prime away from the inverted element into the corresponding localization, pass it across the ring equivalence, comap it to the other chart, and compare each pair of prime localizations. Only then specialize to the projective charts. This compares affine-chart local rings, not projective stalks; the scheme-theoretic chart-stalk identification remains a separate obligation.