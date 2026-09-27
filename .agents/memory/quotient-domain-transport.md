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

In this Mathlib pin, a nested localization at a prime may not synthesize its domain instance automatically: the available instance takes a prime proof as an explicit argument. If a theorem *states* a DVR property of that localization, provide the base and nested domain instances before the DVR expression in the statement, as well as in the proof.

**Why:** Adding domain instances only in the proof cannot repair a typeclass failure that occurs while Lean elaborates the theorem statement.

**How to apply:** For DVR claims about a localization of a localization, explicitly construct the prime-localization domain instance at each layer before using the DVR predicate or its Noetherian-local equivalence.

For a ring equivalence transporting the dimension of a localization at a prime, state the target at the prime defined by comapping through the equivalence. Prove separately that this prime equals the desired principal ideal, and use that equality only to compute its maximal ideal.

**Why:** Rewriting an equality of primes directly inside `ringKrullDim (Localization.AtPrime P)` can fail dependent elimination because the localization's prime instance depends on the presentation of `P`. A direct equality transport may also run into elaboration timeouts even with proof irrelevance.

**How to apply:** Let the transported prime be the primary definition in the theorem, obtain dimension from the local-ring equivalence without rewriting its type, and use the ideal equality under `Ideal.map` to show the explicit regular parameter.