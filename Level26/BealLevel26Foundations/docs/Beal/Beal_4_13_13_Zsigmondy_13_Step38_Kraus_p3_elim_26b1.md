# v8.43.0-Kraus-p3-elim-26b1 Zsigmondy Step 38

`lean/BealLevel26Foundations/Beal_4_13_13_Zsigmondy_13_Step38_Kraus_p3_elim_26b1.lean`

Kraus p=3 trace check against the
archived level-26 ledger.  Not a forall
close.

A Frey curve of signature `(4,13,13)` with
a rational 2-torsion point has even `a₃`
at a prime `3` of good reduction, so the
displayed traces are `{-2, 0, 2}`.  The
ledger has `a₃(26b1) = -3`, which is
outside that set (also as a residue
mod 13).  Named `kraus_elimination_26b1`
packages that miss.

The same displayed check shows
`a₃(26a1) = 1` is also outside
`{-2, 0, 2}` (`a3_26a1_not_in_frey_p3_traces`).
The remaining matching lock
`kraus_elimination_26a1` (Frey modular of
level 26, residual isomorphism, even-`A`
`13 ∣ A` close) stays a Prop.  Full
`kraus_elimination_q_13_level_26` stays a
Prop.

Prior Step37: 318 named `B ≤ 100000`
gap-3 rows with real `p ≤ 547` plus Pratt
`2731` on `(1,4)`.

Does **not** inhabit ExistsNewformLevel2.
Does **not** inhabit a new Beal forall.
Not imported by the 24-module none chain.

| Name | Status |
|---|---|
| `kraus_elimination_26b1` | inhabited (`a₃ = -3 ∉ {-2,0,2}`) |
| `ap_26b1_3_eq` | inhabited (`a₃(26b1) = -3`) |
| `FreyP3Traces` | inhabited (`[-2, 0, 2]`) |
| `a3_26a1_not_in_frey_p3_traces` | inhabited (ledger miss; not a ∀) |
| `kraus_elimination_26a1` | uninhabited |
| `kraus_elimination_q_13_level_26` | uninhabited |
| `bugeaud_P_phi13_gt_C_when_B_gt_100000` | uninhabited |
| `S_has_prime_with_exp_one_when_C_ge_B_plus_3` | uninhabited |
| `exists_p_with_order_ne_13_mod_p_sq_inhabited` | uninhabited |
| three bare odd-A / full-close names | uninhabited |
| Kraus / X0(2q) / X0(26) / Modular W | stay uninhabited (`0 != 0`) |

`RibetMazur` does **not** import `X0_26_Model`.
Track A About mint stays `22635221`.
About houseclean mint stays `22654189`.
No new Beal forall Zenodo.
