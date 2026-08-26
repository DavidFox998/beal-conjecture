---
name: Constructive principal submodules
description: How to retain a Lean 4.12 propext/Quot.sound-only audit when a one-generator submodule is needed.
---

In audit-critical Lean 4.12 boundary work, do not use the literal
`Submodule.span` for a one-generator coefficient module. State the carrier
constructively as the scalar multiples of the generator and prove its
submodule closure directly.

**Why:** Mathlib's lattice-based `Submodule.span` introduces
`Classical.choice` into `#print axioms`, even when the intended mathematical
object is only a principal module. That exceeds boundaries constrained to
`[propext, Quot.sound]`.

**How to apply:** Use the direct carrier only when the module is genuinely
one-generator and the project requires the narrow audit. Document that it is
the constructive principal-module boundary; do not claim a general lattice
span or use it to conceal a missing decomposition theorem.