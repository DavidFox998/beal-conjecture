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

The accepted intermediate milestone is an explicitly conditional implication:
singleton locally-soluble ledger classes, complete descent, descent soundness,
and exact odd torsion remain proof obligations, while rational two-torsion is
excluded by a kernel-checked two-division-polynomial argument.

**Why:** Pinned Mathlib does not yet supply the missing Selmer and
Mordell--Weil foundations, but downstream Jacobian transport can depend
honestly on named propositions without turning transcript evidence into proof.

**How to apply:** Preserve the conditional hypotheses visibly, keep
`IsFreeRankZero` as “every rational point is torsion,” and do not introduce an
unconditional rank theorem, `True`/Boolean surrogate, `sorry`, or new axiom.

The available bad-prime evaluator is independent of the S-unit representative:
all eight representatives paired with all ten quartics pass at both `2` and
`13`.  This eighty-entry audit is evidence about the current ledger, not a
singleton 2-Selmer computation.

**Why:** Filtering the audit to the identity representative would assume the
desired conclusion rather than derive it.  The local checks contain no
S-unit-dependent covering map or obstruction table capable of eliminating the
other seven representatives.

**How to apply:** Preserve the second-descent hypothesis as a conditional
boundary.  Any future singleton theorem must add and verify genuinely
S-unit-dependent covering data; never infer it from the current all-passing
bad-prime table.
