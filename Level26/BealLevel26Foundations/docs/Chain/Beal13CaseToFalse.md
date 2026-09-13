# v4.48.0 `Is13Case` → False via level 2

`lean/BealLevel26Foundations/Chain/Beal13CaseToFalse.lean`

`Frey.FreyConductor26.Is13Case` is `13 ∣ A*B*C` on shared
bases.  `Is13CaseForcesFalseSketchViaLevel2` is the valid
type `∀ w, Is13Case w → False`.  Uninhabited.

Intended composition:

| Step | Status |
|---|---|
| `Is13Case w` plus `0 < A`, `0 < B` → Frey Δ ≠ 0 | **propext** + `Classical.choice` + `Quot.sound` (`frey_Delta13_ne_0_of_pos` / `freyCurve13_of_bases_disc_ne_zero`) |
| Tate `frey_conductor_26_of_Is13Case` → conductor `2 * 13` | uninhabited; `frey_conductor_26_rfl` is `rfl`, not Tate |
| `WeierstrassModularity (pack w)` | inhabited via `WeierstrassModularity_of_pack` (`frey_modular_13`, not Wiles–Taylor) |
| Ribet → `ExistsNewformLevel2` | uninhabited; needs Ribet `26 / 13 = 2` |
| `notExistsNewformLevel2` | **none** via displayed `S₂(Γ₀(2))` dim `0` |

Conditional wiring
`is13Case_implies_False_of_tate_ribet_disc` takes the two
sketches as hypotheses.  It does not inhabit the
unconditional `Is13Case → False`.

Real `X₀(26)(ℚ)` has `26a1` (Δ `-17576`) and `26b1`
(Δ `-1664`), so a noncuspidal `X₀(26)` point is not the
contradiction.  Need Mathlib Tate + Ribet.

v4.55.0 adds `is13Case_implies_False_of_tate_ribet_weierstrass`
taking `hWeierstrass` as a hypothesis so the wiring does
not pull axiom `frey_modular_13`.  Explicit Δ ≠ 0 is
`frey_Delta13_ne_0_of_pos` on
`Y² = X(X − A¹³)(X + B¹³)`.

Still not `∀ A B C`.
