# v8.77.0 B≡14 Kraus sweep

`lean/BealLevel26Foundations/Beal/FullProof/KrausB14.lean`
`lean/BealLevel26Foundations/Beal/FullProof/B14Witnesses.lean`

Step60 names 352 rows with `B % 16 = 14`.
`b14_witnesses` records `(B, a53)` for those rows.
Displayed `a53` values are in `{-2, -10, 1, 6, 14}`
and all miss locked `a53(26a1)=0` and `a53(26b1)=12`
at `ℓ = 13`.

Two Euler counts are `decide` on the same model as
`a53_E_196`: `B = 6046 → 6`, `B = 18526 → -2`.
That is not a theorem that the model equals the
Beal Frey curve.  Not Ribet.  Not `¬ ∃ A`.

`density_5983_list` stays `[196, 1500003]`.
Neither member is ≡ 14, so
`beal_4_13_13_gap3_B_le_2M_eliminated_B14_kraus`
is vacuous.  `#print axioms` empty.
`beal_4_13_13_gap3_B_le_2M_eliminated_full`
is those two rows via the v8.76.0 mod-16 kill.
`#print axioms` empty.  Not 5983 numerals.

The old
`beal_4_13_13_gap3_B_le_2M_eliminated`
stays `Classical.em`.
`frey_modular` stays `Classical.em`.
`level_lowering_to_26` stays a Prop.
Chain `ExistsNewformLevel2` stays `0 != 0`.
Density/Step `kraus_elimination_q_13_level_26`
stays the uninhabited forall.

Does not import `RibetMazur`.
Does not import the axiom `frey_modular_13`.
Generated list: `scripts/gen_b14_kraus.py`.
