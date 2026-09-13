# v8.19.0 Rational genus of X₀(2)

`lean/BealLevel26Foundations/Beal/FullProof/X0_2_Genus.lean`

Classical counts `μ=3`, `ν₂=1`, `ν₃=0`, `ν∞=2` give
`1 + 3/12 − 1/4 − 0 − 1 = 0` over `ℚ`.
That is **not** a Mathlib `ModularForm` space.
`ℕ` division would send `3/12` and `1/4` to `0`
and is not this formula.

`ExistsNewformLevel2` stays `s2_gamma0_2_dim ≠ 0`
i.e. `0 ≠ 0`.  `¬ ExistsNewformLevel2` is already
`notExistsNewformLevel2`.  The genus identity does
**not** inhabit a level-2 newform and does **not**
drop `ModularImpliesLevel2Newform`.

| Name | Status |
|---|---|
| `genus_X0_2_rat_eq_zero` | `ℚ` identity |
| `s2_gamma0_2_dim_and_genus` | recorded dim `0` and genus `0` |
| `ExistsNewformLevel2_eq_zero_ne_zero` | lock: still `0 ≠ 0` |
| `not_ExistsNewformLevel2` | already inhabited via `rfl` |

Track A About mint stays `22635221`.
