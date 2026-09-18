# `Tate/`

[`RealTateAlgorithm.lean`](RealTateAlgorithm.lean) is the
vendor’s interface for a packed Tate conductor
`2^{f₂}·rad·13`. It does not run Tate’s algorithm in Mathlib
and does not produce a Néron model.

The v26 honest discriminant identity
`Δ = 16 A⁸ B⁸ (A⁴+B⁴)²` and the residual numerals `32/928`
live in
[`../../../../HonestB0Search/Tate_Frey_Conductor_29.lean`](../../../../HonestB0Search/Tate_Frey_Conductor_29.lean).
Tate’s algorithm and Néron `N_E` stay `def Prop`.
