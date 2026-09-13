# v8.19.6 Zsigmondy Step 6 — B≤100 slice closed

`lean/BealLevel26Foundations/Beal_4_13_13_Zsigmondy_13_Step6_B_le_100_closed.lean`

For odd `A ≥ 3` in `A⁴ + B¹³ = C¹³`,
v8.19.5 gives `A ≥ 53` and v8.19.1
gives `A ≥ B³`.  On `B ∈ [1, 100]`
the `C = B+1` and `C = B+2` differences
are not fourth powers (`decide` on the
floor tables).  So that slice is closed.

`C ≥ B+3` is outside those two tables
and stays open.  `B > 100` stays open.

| Name | Status |
|---|---|
| `beal_4_13_13_B_le_100_C_eq_B_plus_1_no_fourth_power` | inhabited |
| `beal_4_13_13_B_le_100_C_eq_B_plus_2_no_fourth_power` | inhabited |
| `beal_odd_A_ge3_B_le_100_closed_C_le_B_plus_2` | inhabited |
| `beal_odd_A_ge3_B_le_100_slice_C_le_B_plus_2_closed` | inhabited alias |
| `beal_odd_A_ge3_B_le_100_C_ge_B_plus_3_closed` | uninhabited |
| `zsigmondy_13` | stays inhabited (v8.19.3) |
| `beal_odd_A_ge3_A_ge_53` | stays inhabited (v8.19.5) |
| `ExistsNewformLevel2` | stays `0 ≠ 0` |

`RibetMazur` does **not** import `X0_26_Model`.
Track A About mint stays `22635221`.
No new Beal `∀` Zenodo.
