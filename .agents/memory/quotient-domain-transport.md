---
name: Quotient domain transport
description: A reliable strategy for changing the presentation of a quotient ideal in the pinned Lean and Mathlib environment.
---

When an ideal has two provably equal presentations and a quotient by the first is a domain, first convert the domain fact to primality of that ideal, transport the primality equality, and then obtain the domain instance for the second quotient.

**Why:** In the pinned Lean/Mathlib environment, direct rewriting or case-splitting an ideal equality inside `IsDomain (R ⧸ I)` can fail dependent elimination: the quotient ring instance itself depends on the ideal presentation. Rewriting `I.IsPrime` avoids that dependency.

**How to apply:** Use the quotient-domain/primality equivalence before normalizing a mapped or principal ideal; after the ideal equality, rebuild the quotient-domain instance. This matters particularly for localization-and-quotient arguments that replace a mapped fibre ideal with its explicit uniformizer generator.

When an ideal appears in the type of a denominator `s : P.primeCompl`, avoid rewriting an equality of ideals across the whole goal. Transport only the proposition `↑s ∈ I` by applying `congrArg` to the ideal equality with the predicate `fun I => ↑s ∈ I`.

**Why:** Rewriting `P` changes the dependent type of `s` and Lean may reject the rewrite even when the intended membership implication is mathematically immediate.

**How to apply:** In localization-at-prime proofs, convert membership using the equality of ideals as an equality of propositions while leaving the denominator subtype and its prime instance fixed.