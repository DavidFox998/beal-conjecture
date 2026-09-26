---
name: Projective grading in pinned Mathlib
description: The pinned Mathlib grading and projective-point interfaces require an explicit bridge before scheme-level Weierstrass proofs.
---

Mathlib's standard total-degree decomposition for multivariate polynomials is not installed as a global `GradedRing` instance, since alternate weightings are possible. Its graded-monoid and decomposition structures can be assembled explicitly, and that grading must be in scope while elaborating a statement about a homogeneous ideal, not only in the proof.

**Why:** A homogeneous cubic proof compiled, but the corresponding homogeneous-ideal statement failed before its proof because its grading instance had not yet been provided. Supplying a different `GradedAlgebra` instance in the proof did not fix the statement-level `GradedRing` requirement. Moreover, Mathlib's `Proj` requires a grading on the *quotient* ring; defining that ring and a closed zero locus in the ambient `Proj` does not supply the quotient grading or a closed subscheme.

**How to apply:** For future projective-scheme work, supply the chosen grading explicitly when forming homogeneous ideals and keep the quotient grading and actual `Proj` construction separate from pointwise Weierstrass projective-coordinate lemmas. Those pointwise lemmas do not construct the proper scheme or prove relative regularity.

The local grading used to *state* a homogeneous-localization comparison does not necessarily remain available when a later proof performs addition or multiplication on its source.

**Why:** Polynomial induction over a chart comparison failed to synthesize the source's additive and multiplicative operations even though the comparison map itself was well-typed. In this pinned Mathlib, those ring operations depend on the grading instance.

**How to apply:** Reintroduce the same quotient grading locally in a proof before using ring operations on homogeneous-localization elements; do not mistake an instance-synthesis failure for a mathematical obstruction to surjectivity.

In the pinned localization API, the scalar action on a full localization used by the homogeneous denominator identity can differ from the action selected by `Algebra.smul_def`. The direct Ore-localization zero and the zero inherited from its multiplicative structure can also fail to match in simplifier or rewriting tactics, even though they agree.

**Why:** Converting a homogeneous denominator identity into an equation of products, then cancelling a localized unit, took several failed direct rewrites. The obstacle was instance selection, not a missing algebraic hypothesis.

**How to apply:** Bridge the scalar actions using the Ore-localization fraction-at-one action and the localization algebra map before rewriting with ring homomorphisms. When `mul_zero` cannot match the zero in a localized goal, first state the equality of its direct zero and multiplicative-structure zero (provable by reflexivity here), then rewrite explicitly.