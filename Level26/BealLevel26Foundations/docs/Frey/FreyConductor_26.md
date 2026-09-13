# v4.47.0 Tate conductor from `Is13Case`

`lean/BealLevel26Foundations/Frey/FreyConductor_26.lean`

`Is13Case w` on `BealCounterexampleBases` is `13 ∣ A*B*C`.
That is not Forall.`Is13Case` (`13 ∣ x*y*z`).

`frey_conductor_26` is the displayed `Nat` `26`.
`frey_conductor_26_rfl` is `2 * 13` by `rfl` (**none**).
The Tate sketch `frey_conductor_26_of_Is13Case` stays
uninhabited: Mathlib 4.12 has no Tate conductor algorithm.
Inhabiting it by the `rfl` label is not Tate.

Intended: Δ ≠ 0 plus `13 ∣ A*B*C` implies the working-prime
model `Y² = X(X − A¹³)(X + B¹³)` has multiplicative
reduction at `2` and `13` only, hence conductor `2 * 13`.

Still not `∀ A B C`.  Still not Mathlib Ribet + Tate.
