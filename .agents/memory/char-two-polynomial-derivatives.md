---
name: Characteristic-two polynomial derivatives
description: Simplifying numerical coefficients of formal partials over multivariate polynomials with ZMod 2 coefficients.
---

When a formal derivative over a multivariate polynomial ring with `ZMod 2` coefficients leaves a scalar `2` or `3` unresolved, identify the numeral in the polynomial ring with the image under the constant-polynomial embedding before simplifying it in the coefficient field. Then use the resulting characteristic-two equality as a ring identity for the derivative calculation.

**Why:** Simplification and `ring` alone left `2` and `3` as unresolved polynomial-ring numerals; `norm_num` did not discharge the polynomial-level `2 = 0` goal. Rewriting `C (2 : ZMod 2)` to zero did, and ordinary algebra then finished the derivative identity.

**How to apply:** For explicit nodal-cubic partials or other characteristic-two polynomial derivatives, prove the scalar zero equality through the constant embedding and use it to cancel the numerical derivative coefficients. Do not reduce the full cubic to its tangent cone before differentiating.