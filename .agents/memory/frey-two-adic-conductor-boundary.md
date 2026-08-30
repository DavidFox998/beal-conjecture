---
name: Frey 2-adic conductor boundary
description: Honest interface rules for future work on the Frey curve at the prime 2.
---

At the pinned Lean 4.12/Mathlib level, do not describe discriminant and c₄ parity as a Kodaira or reduction-type classification. Name those cases only by the invariant divisibility they prove. A full 2-adic result must be explicit model-indexed certificate data carrying a particular exponent and its exact power-of-two divisibility proof for the same supplied conductor.

**Why:** Mathlib lacks Tate-algorithm, Kodaira-symbol, minimal-model, and elliptic-conductor APIs here. An existential valuation statement is mathematically vacuous for a positive natural and must not be presented as a conductor computation.

**How to apply:** Keep diagonal weighted-scaling minimality explicitly narrower than full Weierstrass minimality. An odd-prime descent whose terminal level is exactly 2 implicitly requires 2-adic exponent one; expose that as separate model-indexed certificate data before constructing the descent plan rather than attributing it to Wiles. Replace the certificate only with a genuine local elliptic-curve construction; never hide the exponent inside the curve model or add an axiom that merely asserts some exponent exists.