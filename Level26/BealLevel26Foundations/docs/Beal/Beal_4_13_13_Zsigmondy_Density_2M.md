# v8.66.0-B-le-2000k-density-capstone Zsigmondy density capstone

`lean/BealLevel26Foundations/Beal/FullProof/Beal_4_13_13_Zsigmondy_Density_2M.lean`

Records the small Zsigmondy prime list
`{53, 79, 131, 157, 313, 443, 521, 547}`
used by Steps 56–60, identifies `Phi13 B`
with `S_val B (B+3)`, and inhabits the
named-row count identity
`4488 + 5 * 299 = 5983`.  One concrete
pool hit `hasSmallZsigWitness_196` uses
`decide` on `(C : ZMod 53)^13` and numeral
`53*53`.  Not `native_decide`.

Displayed pool sizes for the five 100k
windows: 50310, 50323, 50307, 50350, 50325.
Those are generator constants, not a
Mathlib density theorem.

`beal_4_13_13_gap3_B_le_2M_eliminated` is
`Classical.em` on the small-prime ZMod
predicate.  That is excluded middle, not
a scan of every `B <= 2000000`, not Kraus,
and not a Beal forall.

Does **not** import `RibetMazur` (cycle).
Steps 44–60 remain reachable through the
Step60 import.  Not imported by the
24-module none chain.

| Name | Status |
|---|---|
| `smallZsigPrimes` | inhabited (list) |
| `Phi13` | inhabited (`S_val B (B+3)`) |
| `zsig_density_2M_stats` | inhabited (`4488 + 5 * 299 = 5983`) |
| `hasSmallZsigWitness_196` | inhabited (p=53 `decide`) |
| `beal_4_13_13_gap3_B_le_2M_eliminated` | inhabited (`Classical.em`, not Kraus) |
| `kraus_elimination_q_13_level_26` | uninhabited |
| `ribet_26_to_2_from_displayed_miss` | uninhabited |
| `exists_p_with_order_ne_13_mod_p_sq_inhabited` | uninhabited |
| `S_has_prime_with_exp_one_when_C_ge_B_plus_3` | uninhabited |
| `ExistsNewformLevel2` | stays `0 != 0` |

`RibetMazur` does **not** import `X0_26_Model`.
Track A About mint stays `22635221`.
About houseclean mint stays `22654189`.
No new Beal forall Zenodo.
