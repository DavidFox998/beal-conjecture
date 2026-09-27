---
name: Hypersurface dimension bounds
description: Avoid relying on missing polynomial-ring Krull dimension results in the pinned Mathlib when proving local regularity.
---

For local dimension upper bounds at special-fibre primes of a hypersurface, first try to exhibit generators for the localized maximal ideal and apply the local Krull height bound. Do not assume the polynomial-ring dimension formula is available as a proved theorem in the pinned library, or infer the required one-step dimension drop merely from the general quotient-dimension inequality.

**Why:** The pinned Krull-dimension module supplies only the quotient bound by the *ambient* dimension and labels the general Noetherian multivariate polynomial dimension formula `proof_wanted`. An explicit two-generator local maximal ideal would instead give height at most two directly, complementing the proved height-two lower bound.

**How to apply:** For non-node points, first lift the reduced-fibre Jacobian calculation to a two-parameter maximal-ideal certificate in the integral local ring. Then use the existing local two-generator height theorem. For generic-fibre primes, target a dimension upper bound of one, not equality: the generic point, if present, has dimension zero.