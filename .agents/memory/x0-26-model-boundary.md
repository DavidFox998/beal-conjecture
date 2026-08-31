---
name: X0(26) finite-model boundary
description: The source-correct cusp count and boundary between finite model checks and rank/descent.
---

The squarefree modular curve `X₀(26)` has four cusp classes, represented by
the divisors `1`, `2`, `13`, and `26`; do not describe a six-point set as six
cusps or as four cusps plus two rational noncuspidal CM points.

**Why:** The cusp-count formula gives four, and Bruin--Najman state that the
rational points in this case consist entirely of cusps. The completed-square
model has the two affine points above `x = 0` and two rational points at
infinity. Their exact Jacobian target is `J₀(26)(ℚ) ≃ ℤ/21ℤ`; the CM entries
in their level-26 table are exceptional quadratic points, not rational points.

**How to apply:** A finite model certificate may verify the equation,
nonzero sextic discriminant, genus-degree calculation, and membership of the
four displayed points. Any theorem that these exhaust `X₀(26)(ℚ)` requires
the Jacobian rank/descent and order-21 torsion identification; database or
Magma output alone is not a kernel-checkable completeness certificate.

The relevant elliptic factors use the models `[1,-1,1,-3,3]` and
`[1,0,1,-5,-8]`. In pinned Mathlib 4.12, elliptic-curve invariants and point
groups exist, but Mordell--Weil rank, 2-Selmer groups, full 2-descent
soundness, and a genus-two Jacobian/isogeny API do not.

**Why:** Sage/mwrank output is evidence, not a Lean term; a finite table cannot
prove rank zero unless Lean also verifies completeness, local conditions, and
the Selmer-to-rank theorem.

**How to apply:** Certify curve invariants and finite replay data directly.
Keep rank zero and `J₀(26) ∼ E26a1 × E26b1` transport explicit until those
missing semantic links are formalized; never define them from transcript
fields or a product alias.
