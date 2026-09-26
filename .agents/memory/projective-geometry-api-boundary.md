---
name: Projective geometry API boundary
description: Distinguishes the available affine and projective interfaces in the pinned Mathlib for the Weierstrass model.
---

The pinned Mathlib has a scheme construction for `Proj` and a closed-immersion theorem for `Spec` of a quotient. Its algebraic geometry interfaces do not supply a ready-made properness theorem for `Proj` of a finitely generated graded algebra. Treat properness as a separate proof obligation, not as a consequence of defining the quotient scheme or proving its global closed immersion.

**Why:** Affine chart immersions do not alone imply a global closed immersion: the ambient target opens must be covered, and their preimages identified with the matching quotient charts. Even after that argument succeeds, closed immersion alone does not establish that the ambient projective plane is proper over the base.

**How to apply:** Recheck the live pinned API for properness before deriving it from a projective embedding; if the necessary projective-space result is absent, supply it independently. Do not infer properness, regularity, minimality, or reduction type solely from the closed immersion.