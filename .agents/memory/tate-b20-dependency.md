---
name: Tate-to-B20 dependency
description: Why proving the local Tate theorem alone does not yet reduce the final B20 conditional chain.
---

The final B20 descent currently receives exact-divisibility proofs as fields of
the conditional Wiles arithmetic plan. Its axiom audit therefore does not use
the independently stated odd-prime Tate Step 2 theorem.

**Why:** A previous model supplier hid the local conductor law in the same
structure that supplied the model and conductor, making the final audit appear
to depend on Tate even when no local Tate projection was used.

**How to apply:** When completing Tate, also redesign the source of the Wiles
plan's exact-divisibility edges so they are derived from the local conductor
theorem. Otherwise Tate can compile successfully while remaining disconnected
from the final conditional proof.