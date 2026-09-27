---
name: Smooth curve local normality
description: The missing bridge from a Jacobian-unit certificate to a non-rational generic-fibre regular local ring in the pinned Mathlib.
---

For a one-dimensional affine curve over a field, neither a prime-chain dimension bound nor a unit partial derivative *as separately formalized statements* makes the maximal ideal at an arbitrary non-rational prime principal. Supply a checked local Jacobian-to-normality argument or an explicit local parameter argument. Once a local domain is Noetherian, dimension at most one, and integrally closed, the pinned Dedekind-domain and DVR criteria give principality.

**Why:** A monic integral extension of a polynomial PID is not automatically Dedekind. At non-rational closed points, subtracting a field-valued coordinate does not generally define a local parameter. Searches in this Mathlib pin did not turn up a ready-made algebraic-geometry Jacobian-to-regular-local-ring theorem usable for the affine Weierstrass chart.

**How to apply:** Keep the nonzero-discriminant hypothesis explicit when using Jacobian units. Possible proof routes are local normality via a checked Jacobian criterion or finite projection to a polynomial ring, where separability of the fibre and a local quotient calculation can produce a generator. Do not promote the conditional integrally-closed result to an unconditional regularity, model, or conductor claim.