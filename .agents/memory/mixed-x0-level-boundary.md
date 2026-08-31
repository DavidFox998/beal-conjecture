---
name: Mixed X0(2p) level boundary
description: Mathematical distinction between full rational two-torsion and cyclic mixed-level moduli data.
---

Full rational `E[2] ≅ V₄` is not the cyclic level-two structure used by
`X₀(2p)`. A valid mixed-level bridge must choose one proved nonzero rational
order-two point, take its cyclic subgroup, and combine that subgroup with the
Galois-stable cyclic order-`p` kernel.

**Why:** Treating all of `E[2]` as level two would produce a noncyclic subgroup
and overstate the modular-curve interpretation. Galois stability of the
prime-order kernel also does not provide a rational generator.

**How to apply:** Prove coprime intersection, exact order `2p`, cyclicity, and
Galois stability at the kernel level. Keep conversion to a non-cuspidal
rational point on a constructed modular curve behind an explicit realization
interface; do not invent quotient or isogeny APIs absent from the pinned
Mathlib version.