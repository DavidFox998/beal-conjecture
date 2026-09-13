# v8.19.2 C≥B+2 size bound for 4,13,13

`lean/BealLevel26Foundations/Beal_4_13_13_Size_C_ge_B_plus_2.lean`
and `certs/Beal_4_13_13_Size_C_ge_B_plus_2_Table.lean`

`C¹³ − B¹³ = (C−B) · (13-term sum)`, each
term `≥ B¹²`.  When `C ≥ B+2` one has
`C−B ≥ 2`, so the difference is
`≥ 26 B¹²`.  That is for every `B`, not
only `B ≤ 100`.  It is **not**
`interval_cases` on unbounded `C−B`.

The `C = B+2` table `B ∈ [1, 100]`
kernel-checks the inequality.  That is
**not** Zsigmondy and **not** a fourth-power
search over `C ≥ B+2`.

| Name | Status |
|---|---|
| `C13_sub_B13_ge_26_mul_B_pow_12_of_C_ge_B_plus_2` | inhabited, all `B` |
| `beal_4_13_13_A_pow4_ge_26_mul_B12_of_C_ge_B_plus_2` | inhabited |
| `size_table_C_eq_B_plus_2_lower_bound_B_le_100` | `decide` on `[1, 100]` |
| `zsigmondy_13` | uninhabited |
| `beal_4_13_13_size` | general Prop, uninhabited |

`ExistsNewformLevel2` stays `0 ≠ 0`.
Track A About mint stays `22635221`.
