---
name: Galois-to-Ribet bridge
description: The missing connection between the genuine Galois support boundary and the separate B15 typed Ribet descent.
---

Do not claim that the genuine 07j support assembly or the 07k token transport
removes the B15 `ribet_single_step` boundary. 07j only produces finite
new-subspace support for a Frey residual representation from explicit Ihara,
old/new, rank-one, and bridge hypotheses. 07k mechanically extracts the
finite supported-newform witness and transports it to a `PreservedForm` token
only when the explicit `SupportedNewformToPreservedToken` compatibility
premise is supplied.

**Why:** B15 consumes a `PreservedForm` and produces a `RibetStepResult`;
neither type carries the Frey residual representation, maximal ideal, Hecke
attachment, nor new-subspace witness used by 07j. The two descent boundaries
therefore cannot be composed by Lean without a new typed conversion theorem.
Additionally, 07k's compatibility is proposition-valued and concludes
existential token availability. Eliminating that proposition into the
data-valued `PreservedForm` required by B15 would require choice, which the
formal audit forbids.

**How to apply:** Keep B15/B20's named Ribet boundary explicit until a theorem
inhabits the finite-form-to-token compatibility premise and connects its token
to a `RibetStepResult`. A safe alternative is to redesign the descent theorem
around `HasPreservedForm` and a universal per-edge Galois data provider, but
that provider must quantify the model, residual representation, maximal ideal,
module, and all 07j/07k premises for every plan edge.

The accepted data-valued route introduces a `Type 1` token-provider boundary:
given a residual representation, maximal ideal, genuine module, and support
proof, it returns the B15 token directly. This avoids proposition elimination
and `Classical.choice` for a single edge. B15 must nevertheless receive a
family of concrete step providers, because its existing descent plan carries
only arithmetic edge data—not the Galois objects and 07g–07j witnesses needed
to invoke the token provider.