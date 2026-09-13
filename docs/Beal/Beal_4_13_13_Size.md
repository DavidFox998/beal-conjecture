# v8.19.1 Size skeleton for 4,13,13

`lean/BealLevel26Foundations/Beal/FullProof/Beal_4_13_13_Size_Table.lean`
and `certs/Beal_4_13_13_Size_Table.lean`

`(B+1)¹³ − B¹³` expands as thirteen terms
each `≥ B¹²`, so the difference is
`≥ 13 B¹²`.  A positive solution of
`A⁴ + B¹³ = C¹³` therefore has
`A⁴ ≥ 13 B¹²` and `A ≥ B³`.
That is **not** `A ≥ 2 B³` (`16 > 13`)
and **not** a Mathlib fourth-root of 13.

The `C = B+1` table `B ∈ [1, 100]`
kernel-checks those 100 differences are
not fourth powers.  That inhabits
`beal_4_13_13_size` only on that slice.
It is **not** a search over `C ≥ B+2`.

`zsigmondy_13` stays uninhabited.
Mathlib 4.12 has no Zsigmondy theorem.

| Name | Status |
|---|---|
| `C13_sub_B13_ge_13_mul_B_pow_12` | inhabited, all `B` |
| `beal_4_13_13_size_lower_bound` | inhabited, `A⁴ ≥ 13 B¹²` |
| `beal_4_13_13_A_ge_B_pow_3` | inhabited |
| `size_table_lower_bound_B_le_100` | `decide` on `[1, 100]` |
| `beal_4_13_13_size_B_le_100_C_succ` | inhabited `C = B+1` slice |
| `beal_4_13_13_size` | general Prop, uninhabited |
| `zsigmondy_13` | uninhabited |
| `beal_odd_A_ge3_size_gap` | uninhabited |
| `beal_4_13_13_A_ge_13_pow_quarter_mul_B_cubed` | uninhabited |

`ExistsNewformLevel2` stays `0 ≠ 0`.
Track A About mint stays `22635221`.
