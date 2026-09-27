---
name: Multivariate zero evaluation
description: How to avoid a pinned-Mathlib simplification mismatch in coordinate-ideal proofs.
---

For a multivariate polynomial evaluation homomorphism with the identity coefficient map and every variable sent to zero, `simp` may reduce an evaluation of a coordinate variable to `constantCoeff (X i)` without closing the goal, even when the constant-coefficient theorem is supplied as a simplification rule. After turning ideal-kernel membership into an equality with `RingHom.mem_ker`, use the explicit `MvPolynomial.eval₂Hom_X'` statement for coordinates and `MvPolynomial.eval₂Hom_C` for constants.

**Why:** Several attempts to bridge the remaining constant-coefficient goal by simplification or definitional equality failed, while applying the evaluation-homomorphism lemmas directly checked.

**How to apply:** In future proofs identifying an evaluation kernel with a coordinate ideal or classifying primes above that ideal, prefer the direct homomorphism lemmas rather than relying on `simp` to cross the constant-coefficient normalization.