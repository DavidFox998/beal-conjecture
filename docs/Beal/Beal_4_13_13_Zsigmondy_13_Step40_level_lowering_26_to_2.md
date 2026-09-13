# v8.45.0-level-lowering-26-to-2 Zsigmondy Step 40

`lean/BealLevel26Foundations/Beal_4_13_13_Zsigmondy_13_Step40_level_lowering_26_to_2.lean`

Displayed level-lowering pack `26 → 2`.
Not a forall close.

Step39 records that both displayed
level-26 newforms miss the displayed Frey
p=3 / p=5 traces.
`Chain.Level2` records `s2_gamma0_2_dim = 0`,
so `ExistsNewformLevel2` is `0 ≠ 0` and
`¬ ExistsNewformLevel2` holds by `rfl`.
Named `level_lowering_26_to_2_from_no_match`
packages those displayed facts.

This is **not** Mathlib Ribet / Mazur:
a coefficient miss is not a residual
isomorphism, and displayed dimension `0`
is not a cusp-form vanishing theorem.
The even-`A` `13 ∣ A` close
`kraus_elimination_q_13_level_26` stays a
Prop.  `ribet_26_to_2_from_displayed_miss`
stays a Prop.  `beal_from_ribet` still
takes `ModularImpliesLevel2Newform`.

Prior Step37: 318 named `B ≤ 100000`
gap-3 rows with real `p ≤ 547` plus Pratt
`2731` on `(1,4)`.

Does **not** inhabit ExistsNewformLevel2.
Does **not** inhabit a new Beal forall.
Not imported by the 24-module none chain.

| Name | Status |
|---|---|
| `level_lowering_26_to_2_from_no_match` | inhabited (displayed misses + `S₂(Γ₀(2))=0`) |
| `s2_gamma0_2_dim_displayed_zero` | inhabited (`rfl`) |
| `not_ExistsNewformLevel2` | inhabited (`rfl` on `0 ≠ 0`) |
| `s2_26_displayed_newforms_miss_frey_traces` | inhabited (Step39) |
| `kraus_elimination_26a1` / `kraus_elimination_26b1` | inhabited (Steps 39 / 38) |
| `kraus_elimination_q_13_level_26` | uninhabited |
| `ribet_26_to_2_from_displayed_miss` | uninhabited |
| `bugeaud_P_phi13_gt_C_when_B_gt_100000` | uninhabited |
| `S_has_prime_with_exp_one_when_C_ge_B_plus_3` | uninhabited |
| `exists_p_with_order_ne_13_mod_p_sq_inhabited` | uninhabited |
| three bare odd-A / full-close names | uninhabited |
| Kraus / X0(2q) / X0(26) / W | stay uninhabited (`0 != 0`) |

`RibetMazur` does **not** import `X0_26_Model`.
Track A About mint stays `22635221`.
About houseclean mint stays `22654189`.
No new Beal forall Zenodo.
