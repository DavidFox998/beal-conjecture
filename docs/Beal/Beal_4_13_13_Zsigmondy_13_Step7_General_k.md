# v8.19.7 Zsigmondy Step 7 — general k bound

`lean/BealLevel26Foundations/Beal_4_13_13_Zsigmondy_13_Step7_General_k.lean`

`S_13` is the same 13-term sum as
Step 4 (`phi13`).  When `C ≥ B` each
term is at least `B¹²`, so
`S_13 ≥ 13 B¹²`.  Combined with
`C − B ≥ k` this is
`C¹³ − B¹³ ≥ 13 k B¹²`.

On a Beal `4/13/13` tuple that is
`A⁴ ≥ 13 k B¹²`.  For `k = 3`,
`A⁴ ≥ 39 B¹²`, so in reals
`A ≥ 39^{1/4} B³ ≈ 2.49 B³`.
For `B ≥ 1` the integer form is
`A ≥ 2 B³ + 1` because
`(2 B³)⁴ = 16 B¹² < 39 B¹²`.

`A ≥ 3 B³` does **not** follow:
`(3 B³)⁴ = 81 B¹²` and `39 < 81`.

v8.19.6 still closes `B ≤ 100` with
`C = B+1` and `C = B+2`.  The
`C ≥ B+3` slice stays open (no table).

| Name | Status |
|---|---|
| `S_13` | inhabited alias of Step 4 |
| `S_13_ge_13_mul_B_pow12` | inhabited |
| `C13_sub_B13_ge_13_k_mul_B_pow12` | inhabited |
| `beal_4_13_13_A_pow4_ge_13_k_mul_B12_of_C_ge_B_plus_k` | inhabited |
| `beal_4_13_13_A_pow4_ge_39_mul_B12_of_C_ge_B_plus_3` | inhabited |
| `C_ge_B_plus_k_implies_A_pow4_ge_13kB12` | inhabited |
| `beal_4_13_13_A_ge_2_mul_B_pow_3_succ_of_C_ge_B_plus_3` | inhabited for `B ≥ 1` |
| `beal_4_13_13_A_ge_3_mul_B_pow_3_of_C_ge_B_plus_3` | uninhabited |
| `beal_odd_A_ge3_B_le_100_C_ge_B_plus_3_closed` | uninhabited |
| `zsigmondy_13` | stays inhabited (v8.19.3) |
| `ExistsNewformLevel2` | stays `0 ≠ 0` |

`RibetMazur` does **not** import `X0_26_Model`.
Track A About mint stays `22635221`.
No new Beal `∀` Zenodo.
