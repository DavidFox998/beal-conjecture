---
name: Polynomial substitution inverses
description: Proving multivariate polynomial translations invert one another in pinned Mathlib.
---

For inverses built from `MvPolynomial.eval₂Hom`, prove the image of every `C r` and `X i` under each substitution first, then use `MvPolynomial.ringHom_ext` and those images to check the two composites.

**Why:** Simplification of nested `eval₂Hom` substitutions can leave unevaluated applications even after adding `eval₂Hom_C` and `eval₂Hom_X'`; explicit image equalities make the inverse proof stable and leave only ring arithmetic.

**How to apply:** For future graded coordinate changes or affine translations, establish the constant and generator images separately and rewrite each composite's generator cases. This proves an actual ring equivalence rather than relying on equality of evaluated polynomial functions.