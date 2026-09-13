# v8.76.0 mod-16 sweep of the 2M class

`lean/BealLevel26Foundations/Beal/FullProof/BealMod16.lean`

`beal_gap3_mod16_elim` kills every odd `B`.
`beal_gap3_mod16_elim_even_not14` kills every
even `B` with `B % 16 != 14`.
Together that is 15 of 16 residue classes.

`beal_4_13_13_gap3_B_le_2M_eliminated_mod16`
is that kill on `B <= 2000000` with
`B % 16 != 14`.  `#print axioms` is empty.
The count `4488+5*299=5983` stays
`zsig_density_2M_stats`.  This is not an
enumeration of 5983 numerals.

`B = 196` and `B = 1500003` are instances.
`B ≡ 14 [MOD 16]` survives and needs the
v8.69.0–v8.74.0 Kraus pack, which is
recorded and does not inhabit those rows.

The old
`beal_4_13_13_gap3_B_le_2M_eliminated`
stays `Classical.em`.
Not Ribet.  Not a Beal forall.
Chain `ExistsNewformLevel2` stays `0 != 0`.

Does not import `RibetMazur`.
Does not import the axiom `frey_modular_13`.
