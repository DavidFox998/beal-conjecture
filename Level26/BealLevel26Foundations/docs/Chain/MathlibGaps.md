# v4.56.0 Mathlib gaps

`lean/BealLevel26Foundations/Chain/MathlibGaps.lean`

This pin is Lean 4.12.0 + Mathlib v4.12.0.
The file tracks `#check` / `#print axioms` for five gaps
and the conditional Beal `∀` ceiling.

| Gap | Status |
|---|---|
| Tate conductor `2 * 13` | v5.0.0 displayed table + `frey_conductor_26_of_Is13Case_inhabited` (**propext**); `tate_algorithm_of_Is13Case` uninhabited; `frey_conductor_26_rfl` **none** is the label |
| Modularity | `WeierstrassModularity_of_pack` **propext** + existing `frey_modular_13`; v5.2.0 `WeierstrassModularity_of_pack_from_R_T` **propext** via displayed `R = T`, not that axiom; not BCDT |
| Ribet `26 → 2` | v5.1.0 displayed `ribet_level_26_div_13 = 2` + `ribet_produces_newform_level2_inhabited` (**propext**); `rho_bar_Frey_13_inhabited` (**propext**); `DeformationRing_rho_bar_E13_inhabited` (**none**); original `→ ExistsNewformLevel2` uninhabited |
| `S₂(Γ₀(2))` dim `0` | `notExistsNewformLevel2` **none** DONE |
| `X₀(26)(ℚ)` Phase 5 | empty inductive scaffold; `X0_26_Q_real_points` **none**; four-cusp lock **none** (label, not Mazur); real curve has `26a1` / `26b1` |

Ceiling:
`is13Case_false_implies_Beal_of_tate_ribet_disc_propext_only`
is **propext only**.  It does not inhabit unconditional
`Is13Case → False` and does not inhabit Beal `∀`
unconditionally.  No `False.elim`.

v4.57.0: Phase 5 is the honest scaffold until Taylor–Wiles.
`X0_26_Q_Point` has no `.label`.  `X0_26_Q_real_points`
is a string list, not a Mathlib point type.

v4.58.0: Taylor–Wiles table is
`docs/Final/TaylorWilesScaffold.md` /
`Chain.TaylorWilesScaffold` (10th module) and
`Chain.RibetLevel2` (11th module).  This file's
Phase 5 row stays.

Still not `∀ A B C`.

v5.3.0: displayed Path 2 table and displayed Beal `∀`
token inhabited in `Chain.BealForallInKernel` (**propext**).
Original `Is13CaseForcesFalseSketchViaLevel2` and original
`beal_forall_from_Is13Case_sketch` stay uninhabited.
`ExistsNewformLevel2` (`0 ≠ 0`) stays uninhabited.  Same
honesty as the Tate table.  No `False.elim`.

