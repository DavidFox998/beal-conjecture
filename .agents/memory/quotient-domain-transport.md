---
name: Quotient domain transport
description: A reliable strategy for changing the presentation of a quotient ideal in the pinned Lean and Mathlib environment.
---

When an ideal has two provably equal presentations and a quotient by the first is a domain, first convert the domain fact to primality of that ideal, transport the primality equality, and then obtain the domain instance for the second quotient.

**Why:** In the pinned Lean/Mathlib environment, direct rewriting or case-splitting an ideal equality inside `IsDomain (R ⧸ I)` can fail dependent elimination: the quotient ring instance itself depends on the ideal presentation. Rewriting `I.IsPrime` avoids that dependency.

**How to apply:** Use the quotient-domain/primality equivalence before normalizing a mapped or principal ideal; after the ideal equality, rebuild the quotient-domain instance. This matters particularly for localization-and-quotient arguments that replace a mapped fibre ideal with its explicit uniformizer generator.