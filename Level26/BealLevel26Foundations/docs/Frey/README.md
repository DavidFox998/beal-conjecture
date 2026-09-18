# `docs/Frey/`

[`FreyConductor_26.md`](FreyConductor_26.md) records the
displayed Frey conductor shape used by the vendor kernel:
`Y² = X(X−A⁴)(X+B⁴)`, packed Tate conductor `2^{f₂}·rad·13`
with `f₂≤5` on the historical Track A lock.

Mathlib discriminant on the honest slice is the positive
model `Δ = 16 A⁸ B⁸ (A⁴+B⁴)²`. Literature sometimes writes
a signed short-model `−16`; that is a different Weierstrass
model, not a Lean identity here.

Néron `N_E` and Tate’s algorithm remain `def Prop` on
[`../../../HonestB0Search/Tate_Frey_Conductor_29.lean`](../../../HonestB0Search/Tate_Frey_Conductor_29.lean).
