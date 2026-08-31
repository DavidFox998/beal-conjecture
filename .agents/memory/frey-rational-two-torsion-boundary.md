---
name: Frey rational 2-torsion boundary
description: The proved full rational E[2] boundary and what it does not imply about Mazur irreducibility.
---

The rational Frey curve now has an exhaustive formal classification, so it is
correct to call the result the full rational `E[2]`.

**Why:** The public name now matches the Lean proposition rather than relying
on an unstated cardinality theorem.

**How to apply:** Reducibility may be encoded honestly by an
absolute-Galois-stable order-`p` subgroup of geometric `p`-torsion. Do not
infer its exclusion from full rational 2-torsion alone: a Mazur specialization
also needs explicit semistability/reduction hypotheses and the classification
theorem. Passing that classification as a theorem-valued supplier removes a
global Lean axiom but does not construct or discharge the underlying
mathematics; documentation and audits must continue to call the result
conditional until the supplier is built from verified modular-curve theory.
A rational isogeny kernel must not be treated as a rational generator, so no
automatic rational `2p`-torsion argument is allowed. State the mixed-level
exclusion as a nontrivial, presently uninhabited theorem type and let CI reject
all `Prop := True` markers rather than permitting a documented exception.

The valid replacement is kernel-level: a rational order-2 subgroup and a
rational cyclic order-`p` kernel combine, for odd `p`, into a Galois-stable
cyclic subgroup of order `2p`, hence a rational cyclic `2p`-isogeny. Closing the
argument requires the Kenku–Mazur exclusion of such composite isogeny degrees
(equivalently the relevant `X₀(2p)(ℚ)` rational-point result), not Mazur's
rational torsion theorem.