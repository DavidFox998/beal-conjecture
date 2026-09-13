# v8.44.0-Kraus-p5-elim-26a1 Zsigmondy Step 39

`lean/BealLevel26Foundations/Beal_4_13_13_Zsigmondy_13_Step39_Kraus_p5_elim_26a1.lean`

Kraus p=5 trace check against the
archived level-26 ledger.  Not a forall
close.

A Frey curve of signature `(4,13,13)` with
a rational 2-torsion point has even `a₅`
at a prime `5` of good reduction, so the
displayed traces when `5 ∤ A` are
`{-4, -2, 0, 2, 4}`.  When `5 ∣ A` the
displayed traces are `{-2, 0, 2}`.  The
ledger has `a₅(26a1) = -3`, which is
outside both sets (also as a residue
mod 13).  Named `kraus_elimination_26a1`
packages that miss.

Step38 already packages `a₃(26b1) = -3`
outside `{-2, 0, 2}`.  Together the two
displayed newforms miss those Frey traces
(`s2_26_displayed_newforms_miss_frey_traces`).
This is not vanishing of `S₂(Γ₀(26))`
(dimension 2) and not a Mathlib
Galois-residual theorem.

The matching lock
`kraus_elimination_q_13_level_26` (Frey
modular of level 26, residual isomorphism,
even-`A` `13 ∣ A` close) stays a Prop.
`level_lowering_26_to_2_from_no_match`
stays a Prop.  `ExistsNewformLevel2`
stays `0 ≠ 0`.

Prior Step37: 318 named `B ≤ 100000`
gap-3 rows with real `p ≤ 547` plus Pratt
`2731` on `(1,4)`.

Does **not** inhabit ExistsNewformLevel2.
Does **not** inhabit a new Beal forall.
Not imported by the 24-module none chain.

| Name | Status |
|---|---|
| `kraus_elimination_26a1` | inhabited (`a₅ = -3 ∉ {-4,-2,0,2,4}` and `∉ {-2,0,2}`) |
| `ap_26a1_5_eq` | inhabited (`a₅(26a1) = -3`) |
| `FreyP5TracesGood` | inhabited (`[-4, -2, 0, 2, 4]`) |
| `FreyP5TracesWhen5DvdA` | inhabited (`[-2, 0, 2]`) |
| `s2_26_displayed_newforms_miss_frey_traces` | inhabited (displayed misses; not vanishing) |
| `a5_26b1_not_in_frey_p5_traces` | inhabited (ledger miss; already out at p=3) |
| `kraus_elimination_26b1` | inhabited (Step38) |
| `kraus_elimination_q_13_level_26` | uninhabited |
| `level_lowering_26_to_2_from_no_match` | uninhabited |
| `bugeaud_P_phi13_gt_C_when_B_gt_100000` | uninhabited |
| `S_has_prime_with_exp_one_when_C_ge_B_plus_3` | uninhabited |
| `exists_p_with_order_ne_13_mod_p_sq_inhabited` | uninhabited |
| three bare odd-A / full-close names | uninhabited |
| Kraus / X0(2q) / X0(26) / W | stay uninhabited (`0 != 0`) |

`RibetMazur` does **not** import `X0_26_Model`.
Track A About mint stays `22635221`.
About houseclean mint stays `22654189`.
No new Beal forall Zenodo.
