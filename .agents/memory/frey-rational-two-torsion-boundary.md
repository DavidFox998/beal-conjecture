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
The approved public status convention is one explicitly documented
`Prop := True` marker for the missing Mazur result; CI must permit exactly that
marker while rejecting equivalent or additional trivial propositions.