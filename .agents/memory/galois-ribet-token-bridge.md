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

**How to apply:** Keep B15/B20's named Ribet boundary explicit until a theorem
inhabits the finite-form-to-token compatibility premise and connects its token
to a `RibetStepResult`. That theorem must also connect the old/new component
selected by the decomposition to the module used in the localized rank-one
boundary.