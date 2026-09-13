# v8.87.0 general Weierstrass Δ bound

`lean/BealLevel26Foundations/Beal/FullProof/BealFreyConductorGeneral.lean`

Not B14-specific.  For any `A,B,C` with
`Nat.pow A 4 + Nat.pow B 4 = Nat.pow C 13`
and `C = B + 3`, the Mathlib Weierstrass
instance `freyCurve ↑A ↑B 4 4` of
`Y² = X(X − A⁴)(X + B⁴)` has

`|Δ| = 16 * A⁸ * B⁸ * C²⁶ = 2⁴ * N0`

with `N0 ∣ (A*B*C)²⁶ * 13` and `4 ≤ 5`.

Axioms `[propext, Quot.sound]`.  Allowed
`{propext, Classical.choice, Quot.sound}`.

This is **not** Tate `N(E)`.  Mathlib 4.12
has `WeierstrassCurve.Δ` and no conductor.
This is **not** `N ∣ 2⁵ * 3 * 13`.
`conductor_86` stays the uninhabited Prop
(survivor `63982 = 2 * 31991`).
This is **not** `N0 ∣ rad(B*C)`: `Δ` still
carries the primes of `A` and higher powers.
That rad form is `frey_conductor_N0_dvd_rad_BC`
(uninhabited).  Not BCDT.  No `axiom BCDT_B14`.

Keeps v8.86.0 math: 266 + 86 residue kills
stay empty-axiom.  `B14_honest` stays a Prop.
