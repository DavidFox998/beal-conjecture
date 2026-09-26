---
name: Projective grading in pinned Mathlib
description: The pinned Mathlib grading and projective-point interfaces require an explicit bridge before scheme-level Weierstrass proofs.
---

Mathlib's standard total-degree decomposition for multivariate polynomials is not installed as a global `GradedRing` instance, since alternate weightings are possible. Its graded-monoid and decomposition structures can be assembled explicitly, and that grading must be in scope while elaborating a statement about a homogeneous ideal, not only in the proof.

**Why:** A homogeneous cubic proof compiled, but the corresponding homogeneous-ideal statement failed before its proof because its grading instance had not yet been provided. Supplying a different `GradedAlgebra` instance in the proof did not fix the statement-level `GradedRing` requirement.

**How to apply:** For future projective-scheme work, supply the chosen grading explicitly when forming homogeneous ideals and keep the quotient grading and actual `Proj` construction separate from pointwise Weierstrass projective-coordinate lemmas. Those pointwise lemmas do not construct the proper scheme or prove relative regularity.