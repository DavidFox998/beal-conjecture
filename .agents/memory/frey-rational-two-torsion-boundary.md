---
name: Frey rational 2-torsion boundary
description: Honest naming boundary between three explicit rational order-two points and a standard full E[2] theorem.
---

The rational Frey curve has a formal certificate for three pairwise-distinct
nonidentity rational points killed by doubling. Describe this result exactly;
do not call it “full rational 2-torsion” or a standard `E[2]` classification
until Lean also proves that these points exhaust the nonidentity 2-torsion.

**Why:** Existence of the three points is mathematically enough once the usual
elliptic-curve cardinality theorem is available, but the current formal API
does not contain that exhaustiveness bridge. Naming the lower-bound certificate
“full” would make the public contract stronger than its Lean proposition.

**How to apply:** Keep the explicit three-point theorem separate from the
remaining isogeny/residual-representation Mazur boundary. Before upgrading the
name, add a theorem connecting the certificate to the standard two-torsion
subgroup or an equivalent exhaustive formulation.