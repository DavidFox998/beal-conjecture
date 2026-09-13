# v8.83.0 gcd | 3 and displayed miss; 86-row arrows stay Props

`gcd(B,B+3)∣3` is inhabited.  The Euler miss
on the 86 is displayed as
`IrreducibleMod13Trace`, not Mazur.
`conductor_86`, `level_lowering_86`, and
`beal_..._eliminated_86` stay uninhabited
Props.  `Classical.choice` is not BCDT
and not Ribet.  Zsigmondy `5983` does not
prove `N ∣ 2^5 * 3 * 13`.
Chain `ExistsNewformLevel2` stays `0 != 0`.
No new Beal forall on the 86.

# v8.82.0 Euler a53 value set on the 86 mod-53 survivors

Euler `a53` of the Beal Frey cubic on the
86 named `B ≡ 14` rows that survive the
mod-53 fourth-power test is in
`{-10,-2,1,6,14}` and misses `0,12` at
ℓ=13 under the Beal equation
(`beal_frey_a53_miss_86`).
Axioms `[propext, Quot.sound]`.
That is **not** `¬ ∃ A` for those 86.
`B14_honest` stays the uninhabited `∀` on all
352.  Not Ribet.  Not BCDT.  Not `Classical.em`.
Chain `ExistsNewformLevel2` stays `0 != 0`.
No new Beal forall on the full 352.

# v8.81.0 fourth-power non-residue kill modulo 53; 266 of 352 die

266 of the 352 named `B ≡ 14` rows die because
`(B+3)¹³ − B⁴` is not a fourth power mod 53.
Empty axioms.  The count is 266, not 287.
The remaining 86 rows survive this test.
`B14_honest` stays the uninhabited `∀` on all
352.  Not Ribet.  Not BCDT.  Not `Classical.em`.
Chain `ExistsNewformLevel2` stays `0 != 0`.
No new Beal forall on the full 352.

# v8.80.0 A-mod-53 Euler search; ¬∃ A stays Prop

Euler `a53` of the Beal Frey cubic is
searched over 14 fourth-power residues
mod 53.  Under the Beal equation that
trace misses `0,12`.  Axioms
`[propext, Quot.sound]`.
`beal_frey_modular` and `B14_honest` stay
Props.  Not BCDT, not Ribet, not `¬ ∃ A`
for the 352 rows.  Not `Classical.em`.
Chain `ExistsNewformLevel2` stays `0 != 0`.
No new Beal forall.

# v8.79.0 Beal Frey cubic; BCDT stays Prop

The Beal Frey cubic `x(x-A^4)(x+B^4)` is
distinguished from the displayed cubic.
`beal_frey_modular`, irreducibility,
level lowering, and `B14_honest` stay
Props.  `full_honest` is the two-element
list via mod 16.  `#print axioms` empty
there.  Cubic lemmas use `propext`.
Not BCDT, not Ribet, not `¬ ∃ A` for
the 352 rows.  Not `Classical.em`.
Chain `ExistsNewformLevel2` stays `0 != 0`.
No new Beal forall.

# v8.78.0 B≡14 list; lowering stays Prop

`step60_b14_list` is 352 named numerals.
`frey_modular_B14` is displayed cubic
2-torsion, not Wiles.
`level_lowering_to_26_B14` stays a Prop.
`beal_..._B14_honest` stays the uninhabited
forall.  `full_honest` is the two-element
list via mod 16.  `#print axioms` empty.
Chain `ExistsNewformLevel2` stays `0 != 0`.
No new Beal forall.

# v8.77.0 B≡14 Kraus sweep

`beal_4_13_13_gap3_B_le_2M_eliminated_B14_kraus`
is vacuous on the displayed two-element list.
`beal_4_13_13_gap3_B_le_2M_eliminated_full`
is those two rows via mod 16.
`#print axioms` empty.  352 named Step60
`B ≡ 14` rows record `a53` misses vs `0/12`.
Not Ribet.  Not `¬ ∃ A` for those 352.
The old 2M capstone stays `Classical.em`.
Chain `ExistsNewformLevel2` stays `0 != 0`.
No new Beal forall.

# v8.76.0 mod-16 sweep of the 2M class

`beal_4_13_13_gap3_B_le_2M_eliminated_mod16`
aliases the BealMod16 kill: every
`B <= 2000000` with `B % 16 != 14`.
`#print axioms` empty.  `B ≡ 14` survives.
The old 2M capstone stays `Classical.em`.
Kraus pack recorded, not used as Ribet.
Chain `ExistsNewformLevel2` stays `0 != 0`.
No new Beal forall.

# v8.75.0 first honest Beal rows

`beal_4_13_13_gap3_B_196_eliminated` /
`beal_4_13_13_gap3_B_1500003_eliminated`
alias the BealElim fourth-power residue
kills (`A^4 + B^4 = C^13`; residues 7
and 15).  `#print axioms` empty.
Not Ribet.  Not `Classical.em`.
The 2M capstone stays `Classical.em`.
Chain `ExistsNewformLevel2` stays `0 != 0`.
No new Beal forall.

# v8.74.0 displayed Frey mod-13 miss

`frey_mod13_irreducible` aliases the
FreyModularity trace miss.
`frey_modular` stays `Classical.em`.
`level_lowering_to_26` stays a Prop.
The inhabited pack remains
`ribet_mazur_pack_q_13_level_26` via
`hK.left` / `hK.right`.
Chain `ExistsNewformLevel2` stays `0 != 0`.
No new Beal forall.

# v8.73.0 displayed dim-2 pack

`exists_newform_level_26_dim2` /
`ExistsNewformLevel26_inhabited` alias
the Level26_Newforms dim-2 witness.
Chain `ExistsNewformLevel2` stays `0 != 0`.
No new Beal forall.

# v8.71.0 RibetMazur pack (MCOM)

`lean/BealLevel26Foundations/Beal/FullProof/RibetMazur.lean`
already imports `Level26_Newforms`.  The reverse
import would cycle.

`kraus_elimination_q_13_level_26_density`
and `ribet_mazur_pack_q_13_level_26` are
inhabited from the v8.69.0 Int-mod-13
misses at `B = 196` (`-2` vs `0`/`12`)
and `B = 1500003` (`24` vs `21`/`-39`).
That is **not** `∀ B` modular
contradiction, not residual isomorphism,
and **not** a Beal `∀`.
This file's pack
`kraus_elimination_q_13_level_26` stays
the Step36 uninhabited `∀`.
`zsig_density_links_to_kraus` stays
list equality plus `4488+5*299=5983`.
`ExistsNewformLevel2` stays `0 != 0`.
No new Beal forall.
Not Full Mathlib forall.

# v8.69.0 RibetMazur Level26 Int-mod-13 theorem

`lean/BealLevel26Foundations/Beal/FullProof/Level26_Newforms.lean`
and `RibetMazur.lean`

Level26_Newforms
`level26_a_eliminated_by_53` /
`level26_b_eliminated_by_443` /
`kraus_elimination_q_13_level_26` are
inhabited Int-mod-13 misses from the
v8.68.1 traces.  This file's pack
`kraus_elimination_q_13_level_26` stays
the Step36 uninhabited `∀`.
Density/Step copies stay that same `∀`.

The modular side stays a coefficient
check, not Ribet:
`s2_26_displayed_newforms_miss_frey_traces`
is a Fourier miss, not a residual
isomorphism, and displayed
`S₂(Γ₀(2))=0` is not a cusp-form
vanishing theorem.  Those do not prove
rho from level 2.

This is not a forall close.
`ribet_26_to_2_from_displayed_miss`
stays uninhabited.
`bugeaud_P_phi13_gt_C_when_B_gt_2000000`
stays uninhabited.
`S_has_prime_with_exp_one_when_C_ge_B_plus_3`
stays uninhabited.
`exists_p_with_order_ne_13_mod_p_sq_inhabited`
stays uninhabited.

`beal_odd_A_closed_v8_24_0_inhabited`
stays uninhabited (`ExistsNewformLevel2`
is `0 != 0`).
`beal_from_ribet` still takes
`ModularImpliesLevel2Newform`.
No new Beal forall.
Not Full Mathlib forall.
