---
name: Projective geometry API boundary
description: Distinguishes the available affine and projective interfaces in the pinned Mathlib for the Weierstrass model.
---

The pinned Mathlib has a scheme construction for `Proj` and a closed-immersion theorem for `Spec` of a quotient. A search of its algebraic geometry interfaces did not find a ready-made morphism from `Proj` of a homogeneous quotient into ambient `Proj`, or a theorem that `Proj` of a finitely generated graded algebra is proper. Treat these as separate proof obligations, not consequences of defining the quotient scheme or proving chartwise closed immersions.

**Why:** The two affine chart immersions can be proved immediately from the quotient theorem, but that neither constructs their globally compatible projective map nor proves properness. Presenting finite generation as properness would overstate what was checked.

**How to apply:** Recheck the live pinned API before starting the global argument. Construct the projective map with compatible affine restrictions (or an actual homogeneous-quotient API if one becomes available), then establish its closed-immersion property. Supply a projective-space properness theorem before deriving properness of the cubic.