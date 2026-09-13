# v4.46.0 level 2 — no newform

`lean/BealLevel26Foundations/Chain/Level2.lean` records the
displayed fact that `S₂(Γ₀(2))` has dimension `0` (genus of
`X₀(2)` is 0).  `ExistsNewformLevel2` is
`s2_gamma0_2_dim ≠ 0`.  `notExistsNewformLevel2` is **none**
by `rfl` on that `0`.  Not a Mathlib modular-forms theorem.

Real `X₀(26)(ℚ)` has `26a1` (Δ `-17576`) and `26b1`
(Δ `-1664`), so a noncuspidal `X₀(26)` point is not the
Beal exponent-13 contradiction.  Ribet would lower the
mod-13 representation, unramified at 13, from conductor
label `26 = 2 * 13` (`rfl`, not Tate) to level `26 / 13 = 2`.
That sketch stays uninhabited.  Need Tate plus Mathlib Ribet.

Still not `∀ A B C`.
