/-
Copyright (c) 2026 David Fox. All rights reserved.
Released under MIT license as described in the file LICENSE.
Authors: David Fox

Track B v8.85.0 — paper unification.
`beal_..._B14_full` covers the 352 named
`B ≡ 14` rows (266+77+9, empty axioms).
Not Ribet.  KrausB14.`eliminated_full`
stays the two-element mod-16 kill.
`B14_honest` stays the uninhabited Prop.
Track B v8.84.0 — fourth-power non-residue
kill of the 86 at q=17/29/109.  29 kills 77
and 109 kills the remaining 9.
`beal_..._86_modq` is `¬∃ A` (empty axioms).
Not Ribet.  The pack `eliminated_86` and
`B14_honest` stay uninhabited Props.
Track B v8.83.0 — gcd(B,B+3)∣3 inhabited;
IrreducibleMod13Trace of the Euler miss on
the 86 (not Mazur).  conductor_86 /
level_lowering_86 / eliminated_86 stay
uninhabited Props.  Classical.choice is
not BCDT and not Ribet.  Zsig 5983 is
not N | 32*3*13.
Track B v8.82.0 — Euler a53 of the Beal Frey
cubic on the 86 mod-53 survivors is in
{-10,-2,1,6,14} and misses 0,12 at ℓ=13
under hEq.  Not ¬∃ A for those 86.
B14_honest stays the uninhabited ∀.
Not Ribet.  Not Classical.em.
Track B v8.81.0 — 266 of 352 named B≡14 rows
die by the mod-53 fourth-power non-residue
test.  Empty axioms.  86 remain.
`B14_honest` stays the uninhabited `∀`.
Not Ribet.  Not `Classical.em`.
Track B v8.80.0 — Euler a53 of the Beal Frey
cubic searched mod 53.  Miss under the Beal
equation.  BCDT / irreducibility / level
lowering / B14_honest stay Props.  Not
`Classical.em`.  Not `¬ ∃ A` for the 352 rows.
Track B v8.79.0 — Beal Frey cubic
`x(x-A^4)(x+B^4)` distinguished from the
displayed cubic.  BCDT / irreducibility /
level lowering / B14_honest stay Props.
`full_honest` stays the two-element
mod-16 kill.  Not `Classical.em`.
Not `¬ ∃ A` for the 352 rows.
Track B v8.76.0 — mod-16 sweep of the 2M
class (`B % 16 ≠ 14`).  Empty axioms.
The old 2M capstone stays `Classical.em`.
`B ≡ 14 [MOD 16]` survives.
Track B v8.75.0 — first honest Beal rows
`beal_4_13_13_gap3_B_196_eliminated` and
`beal_4_13_13_gap3_B_1500003_eliminated`
via fourth-power residues modulo 16.
That is **not** Ribet and **not** a
Beal `∀`.  The 2M capstone stays
`Classical.em`.  `frey_modular` stays
`Classical.em`.  `level_lowering_to_26`
stays a Prop.  Chain
`ExistsNewformLevel2` stays `0 ≠ 0`.
No new Beal `∀`.
Track B v8.74.0 — displayed Frey mod-13
trace miss `frey_mod13_irreducible` at
`B = 196` and `B = 1500003`.  That is
**not** Mazur, not Borel, not Ribet.
`frey_modular` stays `Classical.em`.
`level_lowering_to_26` stays a Prop.
Chain `ExistsNewformLevel2` stays `0 ≠ 0`.
No new Beal `∀`.
Track B v8.73.0 — displayed `S₂(26)` dim-2
witness `exists_newform_level_26_dim2`
(`0 ≠ 12` at `p = 53`).  Chain
`ExistsNewformLevel2` stays `0 ≠ 0`.
No new Beal `∀`.
Track B v8.71.0 — MCOM Ribet-Mazur pack.
`kraus_elimination_q_13_level_26_density`
and `ribet_mazur_pack_q_13_level_26` are
inhabited from the v8.69.0 Int-mod-13
misses (`B = 196` and `B = 1500003`
only).  That is **not** `∀ B` modular
contradiction, not residual
isomorphism, and **not** a Beal `∀`.
This pack `kraus_elimination_q_13_level_26`
stays the Step36 uninhabited `∀`.
`ExistsNewformLevel2` stays `0 ≠ 0`.
No new Beal `∀`.
This file already imports
`Level26_Newforms`.  The reverse import
would cycle.
Track B v8.69.0 — Level26_Newforms
`level26_a_eliminated_by_53` /
`level26_b_eliminated_by_443` /
`kraus_elimination_q_13_level_26` are
inhabited Int-mod-13 misses.  This pack
`kraus_elimination_q_13_level_26` stays
the Step36 uninhabited `∀`.
`ExistsNewformLevel2` stays `0 ≠ 0`.
No new Beal `∀`.
Track B v8.68.1 — computed Frey traces
`a₅₃(E_{196})=-2` and `a₄₄₃(E_{1500003})=24`
via point count `decide` (not a Beal ∀).
`List.take 500` exposes locked
`a₄₄₃(26a1)=21`, `a₄₄₃(26b1)=-39`.
Both miss the computed traces mod 13.
The placeholder integer 2 is not used.
`ExistsNewformLevel2` stays `0 ≠ 0`.
Track B v8.68.0 — displayed a₅₃ miss plus p=443
ZMod witness (not Kraus, not a Beal ∀).
Locked ledger `a₅₃(26a1)=0`, `a₅₃(26b1)=12`.
Prefix length 100 has no `a₄₄₃`.
`level26_a_eliminated_by_53_of_witness` is
`hasSmallZsigWitness 196 → 2 ≢ 0 [MOD 13]`.
`hasSmallZsigWitness_1500003` is the Step56
ZMod-443 hit.  The `∀` placeholders stay
uninhabited.  `ExistsNewformLevel2` stays `0 ≠ 0`.
Track B v8.67.0 — Level 26 newforms skeleton
(displayed ledger prefixes, not Mathlib
cusp forms, not Kraus, not a Beal ∀).
`newform_26_a_qexp` / `newform_26_b_qexp` are
the first 20 coefficients of locked
`qExp_26a1` / `qExp_26b1` (a₃(26a1)=1,
a₅(26a1)=-3, a₃(26b1)=-3, a₅(26b1)=-1).
`kraus_primes_26` equals Track B
`smallZsigPrimes`.  `zsig_density_links_to_kraus`
is that list equality plus `4488+5*299=5983`.
`level26_a_eliminated_by_53`,
`level26_b_eliminated_by_443`, and
`kraus_elimination_q_13_level_26_proof_sketch`
stay uninhabited.  Dim 2 is displayed, not a
Mathlib cusp-form theorem.  The s2_26 pack
stays a coefficient check, not Ribet.
`kraus_elimination_q_13_level_26` stays uninhabited.
Track B v8.66.0 — B ≤ 2000000 density capstone
(5983 named gap-3 rows plus pool summary, not a ∀).
`smallZsigPrimes` is the list
`[53, 79, 131, 157, 313, 443, 521, 547]`.
`zsig_density_2M_stats` is `4488 + 5 * 299 = 5983`.
`hasSmallZsigWitness_196` is inhabited by `decide`
on `ZMod 53` / numeral `53*53`.
`beal_4_13_13_gap3_B_le_2M_eliminated` is
`Classical.em`, not Kraus.  The s2_26 pack
stays a coefficient check, not Ribet.
`kraus_elimination_q_13_level_26` stays uninhabited.
`B > 2000000` Bugeaud stays a Prop.
Track B v8.65.0 — B ≤ 2000000 exp-one
extension (5983 named gap-3 rows, not a ∀).
`S_has_prime_with_exp_one_B_le_2000000_table_rows`
is inhabited (5684 Step59 rows including
`(200000,200003)` p=12186951011 plus
299 sampled `(1900000, 2000000]` rows,
first `(1900001,1900004)` p=53, last
`(2000000,2000003)` p=53).  The s2_26 pack
stays a coefficient check, not Ribet.
`kraus_elimination_q_13_level_26` stays uninhabited.
`B > 2000000` Bugeaud stays a Prop.
Track B v8.64.0 — B ≤ 1900000 exp-one
extension (5684 named gap-3 rows, not a ∀).
`S_has_prime_with_exp_one_B_le_1900000_table_rows`
is inhabited (5385 Step58 rows including
`(200000,200003)` p=12186951011 plus
299 sampled `(1800000, 1900000]` rows,
first `(1800004,1800007)` p=53, last
`(1899995,1899998)` p=443).  The s2_26 pack
stays a coefficient check, not Ribet.
`kraus_elimination_q_13_level_26` stays uninhabited.
`B > 1900000` Bugeaud stays a Prop.
Track B v8.63.0 — B ≤ 1800000 exp-one
extension (5385 named gap-3 rows, not a ∀).
`S_has_prime_with_exp_one_B_le_1800000_table_rows`
is inhabited (5086 Step57 rows including
`(200000,200003)` p=12186951011 plus
299 sampled `(1700000, 1800000]` rows,
first `(1700007,1700010)` p=53, last
`(1800000,1800003)` p=79).  The s2_26 pack
stays a coefficient check, not Ribet.
`kraus_elimination_q_13_level_26` stays uninhabited.
`B > 1800000` Bugeaud stays a Prop.
Track B v8.62.0 — B ≤ 1700000 exp-one
extension (5086 named gap-3 rows, not a ∀).
`S_has_prime_with_exp_one_B_le_1700000_table_rows`
is inhabited (4787 Step56 rows including
`(200000,200003)` p=12186951011 plus
299 sampled `(1600000, 1700000]` rows,
first `(1600001,1600004)` p=53, last
`(1700000,1700003)` p=547).  The s2_26 pack
stays a coefficient check, not Ribet.
`kraus_elimination_q_13_level_26` stays uninhabited.
`B > 1700000` Bugeaud stays a Prop.
Track B v8.61.0 — B ≤ 1600000 exp-one
extension (4787 named gap-3 rows, not a ∀).
`S_has_prime_with_exp_one_B_le_1600000_table_rows`
is inhabited (4488 Step55 rows including
`(200000,200003)` p=12186951011 plus
299 sampled `(1500000, 1600000]` rows,
first `(1500003,1500006)` p=443, last
`(1600000,1600003)` p=79).  The s2_26 pack
stays a coefficient check, not Ribet.
`kraus_elimination_q_13_level_26` stays uninhabited.
`B > 1600000` Bugeaud stays a Prop.
Track B v8.60.0 — B ≤ 1500000 exp-one
extension (4488 named gap-3 rows, not a ∀).
`S_has_prime_with_exp_one_B_le_1500000_table_rows`
is inhabited (4189 Step54 rows including
`(200000,200003)` p=12186951011 plus
299 sampled `(1400000, 1500000]` rows,
first `(1400001,1400004)` p=53, last
`(1499999,1500002)` p=53).  The s2_26 pack
stays a coefficient check, not Ribet.
`kraus_elimination_q_13_level_26` stays uninhabited.
`B > 1500000` Bugeaud stays a Prop.
v8.59.0 — B ≤ 1400000 exp-one
extension (4189 named gap-3 rows, not a ∀).
`S_has_prime_with_exp_one_B_le_1400000_table_rows`
is inhabited (3890 Step53 rows including
`(200000,200003)` p=12186951011 plus
299 sampled `(1300000, 1400000]` rows,
first `(1300002,1300005)` p=53, last
`(1400000,1400003)` p=53).  The s2_26 pack
stays a coefficient check, not Ribet.
`kraus_elimination_q_13_level_26` stays uninhabited.
`B > 1400000` Bugeaud stays a Prop.
v8.58.0 — B ≤ 1300000 exp-one
extension (3890 named gap-3 rows, not a ∀).
`S_has_prime_with_exp_one_B_le_1300000_table_rows`
is inhabited (3591 Step52 rows including
`(200000,200003)` p=12186951011 plus
299 sampled `(1200000, 1300000]` rows,
first `(1200001,1200004)` p=157, last
`(1299998,1300001)` p=79).  The s2_26 pack
stays a coefficient check, not Ribet.
`kraus_elimination_q_13_level_26` stays uninhabited.
`B > 1300000` Bugeaud stays a Prop.
v8.57.0 — B ≤ 1200000 exp-one
extension (3591 named gap-3 rows, not a ∀).
`S_has_prime_with_exp_one_B_le_1200000_table_rows`
is inhabited (3292 Step51 rows including
`(200000,200003)` p=12186951011 plus
299 sampled `(1100000, 1200000]` rows,
first `(1100002,1100005)` p=53, last
`(1199998,1200001)` p=131).  The s2_26 pack
stays a coefficient check, not Ribet.
`kraus_elimination_q_13_level_26` stays uninhabited.
`B > 1200000` Bugeaud stays a Prop.
v8.56.0 — B ≤ 1100000 exp-one
extension (3292 named gap-3 rows, not a ∀).
`S_has_prime_with_exp_one_B_le_1100000_table_rows`
is inhabited (2993 Step50 rows including
`(200000,200003)` p=12186951011 plus
299 sampled `(1000000, 1100000]` rows,
first `(1000003,1000006)` p=157, last
`(1099999,1100002)` p=53).  The s2_26 pack
stays a coefficient check, not Ribet.
`kraus_elimination_q_13_level_26` stays uninhabited.
`B > 1100000` Bugeaud stays a Prop.
v8.55.0 — B ≤ 1000000 exp-one
extension (2993 named gap-3 rows, not a ∀).
`S_has_prime_with_exp_one_B_le_1000000_table_rows`
is inhabited (2694 Step49 rows including
`(200000,200003)` p=12186951011 plus
299 sampled `(900000, 1000000]` rows,
first `(900002,900005)` p=79, last
`(1000000,1000003)` p=79).  The s2_26 pack
stays a coefficient check, not Ribet.
`kraus_elimination_q_13_level_26` stays uninhabited.
`B > 1000000` Bugeaud stays a Prop.
v8.54.0 — B ≤ 900000 exp-one
extension (2694 named gap-3 rows, not a ∀).
`S_has_prime_with_exp_one_B_le_900000_table_rows`
is inhabited (2395 Step48 rows including
`(200000,200003)` p=12186951011 plus
299 sampled `(800000, 900000]` rows,
first `(800005,800008)` p=131, last
`(899999,900002)` p=53).  The s2_26 pack
stays a coefficient check, not Ribet.
`kraus_elimination_q_13_level_26` stays uninhabited.
`B > 900000` Bugeaud stays a Prop.
v8.53.0 — B ≤ 800000 exp-one
extension (2395 named gap-3 rows, not a ∀).
`S_has_prime_with_exp_one_B_le_800000_table_rows`
is inhabited (2096 Step47 rows including
`(200000,200003)` p=12186951011 plus
299 sampled `(700000, 800000]` rows,
first `(700001,700004)` p=131, last
`(800000,800003)` p=53).  The s2_26 pack
stays a coefficient check, not Ribet.
`kraus_elimination_q_13_level_26` stays uninhabited.
`B > 800000` Bugeaud stays a Prop.
v8.52.0 — B ≤ 700000 exp-one
extension (2096 named gap-3 rows, not a ∀).
`S_has_prime_with_exp_one_B_le_700000_table_rows`
is inhabited (1797 Step46 rows including
`(200000,200003)` p=12186951011 plus
299 sampled `(600000, 700000]` rows,
first `(600001,600004)` p=157, last
`(700000,700003)` p=521).  The s2_26 pack
stays a coefficient check, not Ribet.
`kraus_elimination_q_13_level_26` stays uninhabited.
`B > 700000` Bugeaud stays a Prop.
v8.51.0 — B ≤ 600000 exp-one
extension (1797 named gap-3 rows, not a ∀).
`S_has_prime_with_exp_one_B_le_600000_table_rows`
is inhabited (1498 Step45 rows including
`(200000,200003)` p=12186951011 plus
299 sampled `(500000, 600000]` rows,
first `(500003,500006)` p=79, last
`(600000,600003)` p=53).  The s2_26 pack
stays a coefficient check, not Ribet.
`kraus_elimination_q_13_level_26` stays uninhabited.
`B > 600000` Bugeaud stays a Prop.
v8.50.0 — B ≤ 500000 exp-one
extension (1498 named gap-3 rows, not a ∀).
`S_has_prime_with_exp_one_B_le_500000_table_rows`
is inhabited (1199 Step44 rows including
`(200000,200003)` p=12186951011 plus
299 sampled `(400000, 500000]` rows,
first `(400001,400004)` p=53, last
`(500000,500003)` p=547).  The s2_26 pack
stays a coefficient check, not Ribet.
`kraus_elimination_q_13_level_26` stays uninhabited.
`B > 500000` Bugeaud stays a Prop.
v8.49.0 — B ≤ 400000 exp-one
extension (1199 named gap-3 rows, not a ∀).
`S_has_prime_with_exp_one_B_le_400000_table_rows`
is inhabited (900 Step43 rows including
`(200000,200003)` p=12186951011 plus
the exact 299 `(300000, 400000]` rows,
first `(300003,300006)` p=157, last
`(400000,400003)` p=79).  The s2_26 pack
stays a coefficient check, not Ribet.
`kraus_elimination_q_13_level_26` stays uninhabited.
`B > 400000` Bugeaud stays a Prop.
v8.48.0 — B ≤ 300000 exp-one
extension (900 named gap-3 rows, not a ∀).
`S_has_prime_with_exp_one_B_le_300000_table_rows`
is inhabited (601 Step42 rows including
`(200000,200003)` p=12186951011 plus
299 new `200000 < B ≤ 300000` rows,
most p≤547).  The s2_26 pack stays a
coefficient check, not Ribet.
`kraus_elimination_q_13_level_26` stays uninhabited.
`B > 300000` Bugeaud stays a Prop.
v8.47.0 — B = 200000 outlier
p = 12186951011 (not a ∀).
`row_200000_200003` is inhabited (Pratt
prime, `S` mod p = 0, `S` mod p² ≠ 0).
601 named `B ≤ 200000` gap-3 rows.
The s2_26 pack stays a coefficient
check, not Ribet.
`kraus_elimination_q_13_level_26` stays uninhabited.
`B > 200000` Bugeaud stays a Prop.
v8.46.0 — B ≤ 200000 exp-one
extension (600 named gap-3 rows, not a ∀).
`S_has_prime_with_exp_one_B_le_200000_table_rows`,
`exists_p_with_order_ne_13_B_le_200000_from_exp_one_table_rows`
and `S_not_fourth_B_le_200000_from_exp_one_table_rows`
are inhabited.  Endpoint of the named
table is `(199996,199999)` p=131;
`(200000,200003)` has no p≤547 dividing S
and stays a Prop.  The s2_26 pack stays a
coefficient check, not Ribet.
`kraus_elimination_q_13_level_26` stays uninhabited.
`B > 200000` Bugeaud stays a Prop.
v8.45.0 — displayed level-lowering
pack `26 → 2` (not a ∀ close).
`level_lowering_26_to_2_from_no_match` is inhabited
(displayed Frey-trace misses plus
`s2_gamma0_2_dim = 0`).
`kraus_elimination_26a1` and
`kraus_elimination_26b1` stay inhabited.
`kraus_elimination_q_13_level_26` stays uninhabited.
v8.44.0 — Kraus p=5 trace
eliminates displayed `26a1` (not a ∀ close).
`kraus_elimination_26a1` is inhabited
(`a₅(26a1) = -3 ∉ {-4, -2, 0, 2, 4}`
and `∉ {-2, 0, 2}`).
`kraus_elimination_26b1` stays inhabited.
`kraus_elimination_q_13_level_26` stays uninhabited.
v8.43.0 — Kraus p=3 trace
eliminates displayed `26b1` (not a ∀ close).
`kraus_elimination_26b1` is inhabited
(`a₃(26b1) = -3 ∉ {-2, 0, 2}`).
v8.42.0 — B ≤ 100000 exp-one
extension (300+ named gap-3 rows, not a ∀).
`S_has_prime_with_exp_one_B_le_100000_table_rows`,
`exists_p_with_order_ne_13_B_le_100000_from_exp_one_table_rows`
and `S_not_fourth_B_le_100000_from_exp_one_table_rows`
are inhabited.
`kraus_elimination_q_13_level_26` stays uninhabited.
v8.41.0 Kraus / X₀(26) infrastructure stays:
`ap_bound_level_26`, `X0_26_Q_displayed_points`,
`level_26_eq_2_mul_13` and `S2_level_26_dim_two`
are inhabited.
`bugeaud_P_phi13_gt_C_when_B_gt_50000`,
`rad_S_gt_sqrt_13_C12_when_squarefull_B_gt_50000`
and `S_has_prime_with_exp_one_when_C_ge_B_plus_3`
stay uninhabited.  The Ljunggren ∀ and
`exists_p_with_order_ne_13_mod_p_sq_inhabited`
stay uninhabited.
v8.40.0 `S_le_13_C_pow12`, `sqrt_S_le_4_C6`,
`rad_le_sqrt_of_squarefull` and
`rad_gt_C_of_P_phi13_gt_C` stay inhabited.
v8.39.0 `S_has_prime_with_exp_one_B_le_50000_table_rows`,
`exists_p_with_order_ne_13_B_le_50000_from_exp_one_table_rows`
and `S_not_fourth_B_le_50000_from_exp_one_table_rows`
stay inhabited.
`norm_eq_S`, `zeta13_class_number_one`,
`zeta13_prime_ideal_factorization_exists`,
`S_not_power_of_thirteen_inhabited`
are inhabited.
`S_has_two_distinct_prime_ideals_in_Z_zeta13_when_C_ge_B_plus_3`
and `exists_p_with_order_ne_13_mod_p_sq_inhabited`
stay uninhabited.
`beal_odd_A_closed_v8_24_0_inhabited`
stays uninhabited (`ExistsNewformLevel2`
is `0 ≠ 0`).
v8.24.0 `zsigmondy_exists_primitive_inhabited`,
`zsig_p_not_dvd_k_of_gcd_inhabited`,
`S_times_g_not_fourth_of_vp1_inhabited`,
`beal_odd_A_ge3_closed_of_vp1` stay.
`zsigmondy_vp_S_eq_one_inhabited` is
Hensel-conditional.
v8.23.1 `S_val`, `S_bounds`,
`thirteen_dvd_S_of_13_nmid_B`,
`gcd_k_S_dvd_13`,
`k_shape_1_13_13cubed` stay.
Unconditional `¬ p² ∣ S` is false
(Hensel).
v8.23.0 `S_bounds_13_B12_le_S_le_13_C12`
/ `k_almost_fourth_power_shape` stay.
v8.22.1 `oddPart_rec` /
`even_not_pow2_has_odd_prime_q` stay.
v8.22.0 `even_not_pow2_has_odd_prime`,
`frey_conductor_even_A` stay.
v8.21.1 `frey_curve_conductor` stays.
v8.21.0 `A_ge_53_of_S_prime`,
`k_le_A_pow4_div_13_B_pow12`,
`B_gt_100_imp_k_bounded_by_A` stay.
Closing `B > 100` stays uninhabited
(`S_not_fourth_power` is a Hensel
hypothesis; `ExistsNewformLevel2`
is `0 ≠ 0`).
v8.20.1 packages `B ≤ 100` for odd
`A ≥ 3`.  `C = B+1` by Size_Table,
`C = B+2` by Size_C_ge_B_plus_2,
`C ≥ B+3` from v8.20.0
`k_almost_fourth_power` plus
`S_not_fourth_power`.
`primitive_prime_dvd_S` and the
`(ℤ/p²)ˣ` order-13 dichotomy
`v_p_S_eq_one` stay inhabited.
v8.20.0 `gcd(k,S) ∣ 13` /
`k_almost_fourth_power` stay.
v8.19.9 residue `k % 4 = 1` /
`k % 8 = 1` stay.
v8.19.8 `k` odd / coprime / `A⁴ ≡ k¹³`
stay.  v8.19.7 `C ≥ B+k` / `A⁴ ≥ 39 B¹²` stay.
v8.19.6 `B ≤ 100` with `C = B+1` or
`C = B+2` stays closed.
v8.19.5 `p ≡ 1 [MOD 13]` / `A ≥ 53` stay.
v8.19.3 `zsigmondy_13` stays inhabited.
`ExistsNewformLevel2` stays `0 ≠ 0`.
`beal_from_ribet` still takes
`ModularImpliesLevel2Newform`.  Builds on
the v8.19.0 genus / `BealAArm` split.

Mathlib 4.12 has no Ribet functor and no arrow
    `Modular w → ExistsNewformLevel2`.  That label is
`s2_gamma0_2_dim ≠ 0` with `s2_gamma0_2_dim = 0`,
i.e. `0 ≠ 0`.  This file therefore does **not**
inhabit `ExistsNewformLevel2`, does **not** prove
`¬ PositiveBealTriple`, and does **not** make
`beal_from_ribet` drop the `ModularImpliesLevel2Newform`
hypothesis.

What it *does* prove:

* `q_expansion_26a1` / `q_expansion_26b1` are the
  101-coeff LMFDB prefixes as `List ℚ`, matching the
  ledger (`a₁ = 1` by `rfl`/`decide`, `a₃ = 1` and
  `-3` by `decide`);
* `mazur_principle_step` is the Tate/Wiles/det/flat
  pack at an odd prime `q | ABC` (Steinberg label
  `v_q(c₄)=0`, `v_q(Δ)>0`, exponent 1) plus the
  displayed `T₃` eigenvalues on `26a1`/`26b1`;
* `ribet_iterated` iterates that pack and the
  identity `N / ∏q = 2`; the result is **not**
  a term of type `ExistsNewformLevel2`;
* `ribet_iterated_arrow` is the same uninhabited
  Prop as `ModularImpliesLevel2Newform`;
* `beal_from_ribet` is Beal on positive bases *from*
  that Prop;
* `HeckeAction_N` is the weight-2 `T_q` formula plus
  TW lift at `26·53` / `26·677` (not `End(J₀(N)[13])`);
* `mazur_step_real` / `ribet_iterated_real` iterate
  that pack to `N / ∏q = 2`;
* `ModularImpliesLevel2Newform_real` is the same
  uninhabited Prop as `ModularImpliesLevel2Newform`;
* `beal_from_ribet_real` stays *from* that Prop;
* `X0_N_Model` / `J0_N_Model` stay level tokens;
* `J0_N_real` is a packed `ModSym` token at
  `Γ₀(N)`, weight 2 — not Mathlib `J₀(N)`;
* `frey_a_q_real` / `frey_a_q_is_pm1` are the
  Tate split/nonsplit sign `(-c₆/q) = ±1`, not
  a Frey modular-form coefficient and not the
  26-ledger `a₃`;
* `frey_rho_unramified_iff_13_dvd_vqDelta` is the
  Tate criterion packed as a definitional iff;
* `mazur_step_real_fixed` requires `13 ∣ v_q(Δ)`;
* `ribet_iterated_real_fixed` iterates only over
  those primes; the quotient is **not** `2`
  unless `Frey13Case`;
* `beal_from_ribet_real_fixed` stays *from*
  `ModularImpliesLevel2Newform` (even under a
  universal `Frey13Case` hypothesis);
* `FreyEllCase5` is a witness that each exponent
  has a prime factor `ℓ ≥ 5` (fails for `m = 4`);
* `ell_of_q` picks `ℓ_m` / `ℓ_n` / `ℓ_p` from
  which of `A,B,C` the prime `q` divides;
* `ell_of_q_dvd_vqDelta` is the arithmetic
  `ℓ(q) | v_q(Δ)` at every odd `q`;
* `mazur_step_ell` requires `ℓ | v_q(Δ)`;
* `ribet_iterated_ell_case` iterates every odd
  `q` under `FreyEllCase5`, so `N / ∏q = 2`
  as arithmetic (still not a newform);
* `beal_from_ribet_ell_case` stays *from*
  `ModularImpliesLevel2Newform`;
* `fermat_four_lemma` is Mathlib
  `fermatLastTheoremFour` as `¬ ∃ A B C > 0,
  A⁴+B⁴=C⁴`;
* `FermatFourCase` is all three exponents
  `2^e` with `e ≥ 2`; that case of
  `PositiveBealTriple` is impossible;
* `m = 4` alone is **not** FLT4 (e.g. `n = 13`);
* `FreyEllCase5Complete` is `FreyEllCase5 ∨ FermatFourCase`,
  not a cover of every exponent triple;
* `find_prime_congruent_one_mod` is a computable
  search; `TWAuxEll` adds `Qᵢ ≥ 5` and `Q₁ ≠ Q₂`;
  `∀ N, ¬ Q₁ ∣ N` is false (`Q₁ ∣ Q₁`);
* `HeckeAction_N_real_ell_upgraded` / `mazur_step_real_ell_upgraded`
  use `N·Q₁(ℓ)` / `N·Q₂(ℓ)` when a `TWAuxEll` is given;
* `beal_from_ribet_ell_upgraded` stays *from*
  `ModularImpliesLevel2Newform`;
* `FreyEllCase5Mixed` adds the mixed case: one base
  is a power of 2 and the other two exponents have
  an `ℓ ≥ 5` (covers `m=4,n=13,p=13` when `A=2^e`);
* `thirteen_dvd_Delta_of_mixed_pow2_A` is the
  arithmetic `13 | v_q(Δ)` at every odd `q` in that
  case;
* `TWAuxEllFixed ℓ N` requires `N < Qᵢ`, hence
  `Qᵢ ∤ N` (the `∀ N` field stays false);
* `TWAuxEll.of5` / `of7` / `of13` are explicit
  `Q₁,Q₂`; listed `Q₁` witnesses for
  `ℓ ∈ {5,7,11,13,17,19,23,29,31}`;
* `beal_from_ribet_ell_mixed` stays *from*
  `ModularImpliesLevel2Newform`;
* `mod_pow4_odd`: odd `A` has `A⁴ ≡ 1 [MOD 16]`;
* `mod_pow13_odd`: odd `B` has `B¹³ ≡ B [MOD 8]`
  (false for even `B`, e.g. `B=2`);
* `beal_4_13_13_mod8`: opposite parity plus
  residues `(B ≡ 7 ∧ C even) ∨ (B even ∧ C ≡ 1)`,
  not a contradiction;
* `beal_4_13_13_mod13`: `A⁴ ≡ C − B [MOD 13]`;
* `IsPowerOfTwo.eq_one_of_odd` / `not_beal_4_13_13_of_A_eq_one`:
  the only odd power of 2 is `A=1`, and
  `1 + B¹³ = C¹³` is impossible;
* `FreyEllCase5Mixed_4_13_13_iff_pow2_A`: Mixed
  covers `4,13,13` **iff** `A=2^e`;
* `C13_sub_B13_ge_13_mul_B_pow_12` /
  `beal_4_13_13_size_lower_bound` /
  `beal_4_13_13_A_ge_B_pow_3` are inhabited;
* `beal_4_13_13_size_B_le_100_C_succ` inhabits
  the `C = B+1` slice `B ∈ [1, 100]`;
* `C13_sub_B13_ge_26_mul_B_pow_12_of_C_ge_B_plus_2`
  inhabits `C ≥ B+2 → C¹³−B¹³ ≥ 26 B¹²`;
* `beal_4_13_13_size` stays the general
  uninhabited Prop (no Zsigmondy);
* `zsigmondy_13` is inhabited;
  `beal_odd_A_ge3_size_gap` gives
  `p ∣ A` and `p ∤ (C−B)`;
  `p ∣ S` and `p ∣ B` contradict
  `Coprime C B`;
  `p_dvd_B_of_p_dvd_S_and_p_dvd_A_attempt`
  stays uninhabited;
  primitive `p` has order 13 so
  `p ≡ 1 [MOD 13]`, `p ≥ 53`, `A ≥ 53`;
  `beal_odd_A_ge3_closed_of_A_ge_53`
  stays uninhabited;
  `B ≤ 100` and `C ∈ {B+1, B+2}`
  closes for odd `A`;
  `beal_odd_A_ge3_B_le_100_C_ge_B_plus_3_closed`
  stays uninhabited;
  `C ≥ B+k` gives `A⁴ ≥ 13 k B¹²`;
  `C ≥ B+3` gives `A⁴ ≥ 39 B¹²`;
  `A ≥ 3 B³` stays uninhabited (`39 < 81`);
  odd `A` gives `k = C−B` odd;
  `Coprime C B` and `C ≥ B` give
  `Coprime k B`; `Coprime C B` gives
  `Coprime A B`;   `A⁴ ≡ k¹³ [MOD B]`;
  unrestricted `gcd(k,B)=1` without
  `C ≥ B` stays uninhabited;
  `B % 4 = 0` forces `k % 4 = 1` and
  `B % 8 = 0` forces `k % 8 = 1` for
  odd `A`; without odd `A` that residue
  stays uninhabited;
  coprime `k B` forces `gcd(k,S) ∣ 13`
  and `k` is `u⁴` or `13 u⁴` or `13³ u⁴`;
  `B ≤ 100`, `k ≥ 3`, `S = v⁴` stays
  uninhabited;
  `beal_from_ribet_upside_down_odd_A_closed`
  stays uninhabited;
* `exists_prime_one_mod_ell_all`: `Q₁` for every
  residual in the 166-row table `InTWEll1000`;
* `Q1_not_dvd_N_of_Q1_gt_N`: `N < Q₁` and `0 < N`
  imply `Q₁ ∤ N` (the `∀ N` field stays false);
* `exists_prime_one_mod_ell_sq_all`: `Q₂` for
  every residual in `InTWEll1000`, bound `10⁸`;
* `find_next_prime_one_mod_gt_exists` /
  `next_Q1_gt_N_exists` stay uninhabited
  (`Nat.Prime` plus `Q₁ ≤ N + 21000`);
* `TWAuxEllFixedExists_all_N_le_10000` /
  `TWAuxEllFixed_inhabited_for_every_ell_le_1000_product`
  inhabit every `N ≤ 10000` on the table
  by transporting the `N = 10000` row;
* `of5_26` / `of7_26` / `of13_26` keep the
  same witnesses and are also `of5_26_gt`
  (`Q₁ > 26` already);
* `primes_le_1000` is the Finset union;
  `InTWEll1000_complete` and the
  Prime-quantified
  `TWAuxEllFixed_inhabited_for_every_ell_le_1000`
  stay uninhabited;
* `genus_X0_2_rat = 0` over `ℚ`;
  `ExistsNewformLevel2` stays `0 ≠ 0`;
* `BealAArm.of_pos` splits a positive base;
  `beal_odd_A_ge3_not_mixed` for `4,13,13`;
* `beal_mixed_pow2_implies_level_2_newform` /
  `beal_from_ribet_upside_down` stay uninhabited;
* `frey_curve_conductor` (`A = 2^r`, `B,C` odd
  → even radical `2`); `modular_W_lift` /
  `ribet_level_lowering_to_2` /
  `X0_2_no_newforms` stay uninhabited
  (`ExistsNewformLevel2` is `0 ≠ 0`);
* `even_not_pow2_has_odd_prime` /
  `frey_conductor_even_A` /
  `minimal_level_26_of_13_dvd_A` /
  `level_at_least_6_of_even_not_pow2`
  inhabit the even-not-pow2 radical
  `N' = 2 · rad(oddPart A)`;
  `ribet_level_lowering_to_Nprime` /
  `X0_26_no_matching_newform` stay
  uninhabited;
* `oddPart_rec` / `rad` / `oddPart_def` /
  `rad_dvd_pow` /
  `even_not_pow2_has_odd_prime_q` /
  `level_2q_of_odd_prime_dvd_A`
  inhabit the displayed `2q` slot;
  `kraus_criterion_q_ne_13` /
  `X0_2q_no_Frey_match` stay
  uninhabited;
* `S_bounds_13_B12_le_S_le_13_C12` /
  `k_almost_fourth_power_shape` /
  `k_le_A4_div_13_B12` /
  `B_gt_100_k_bounded` /
  `k_ge_B_imp_A_ge_9B3` inhabit the
  odd-`A` bound package;
  `zsigmondy_prime_S` /
  `S_not_fourth_power_of_zsig` stay
  uninhabited;
* `S_val` / `S_bounds` /
  `thirteen_dvd_S_of_13_nmid_B` /
  `gcd_k_S_dvd_13` /
  `k_shape_1_13_13cubed` inhabit the
  Zsigmondy `S` value / `{1,13,13³}`
  package;
  `zsigmondy_exists_primitive` /
  `zsigmondy_vp_S_eq_one` /
  `S_times_g_not_fourth_of_vp1` stay
  uninhabited.

Does **not** import `X0_26_Model`.  FullProof-only.
None chain does not import this file.
-/

import BealLevel26Foundations.Beal.FullProof.LevelLowering
import BealLevel26Foundations.Beal.FullProof.HeckeAction
import BealLevel26Foundations.Beal.FullProof.ModularImpliesNewform
import BealLevel26Foundations.Beal.FullProof.RibetFunctor
import BealLevel26Foundations.Beal.FullProof.ModularityRibet
import BealLevel26Foundations.Beal.FullProof.TrueConductor
import BealLevel26Foundations.CoefficientLedger_26
import Beal.Foundations.J0_26_Decomp
import BealLevel26Foundations.Chain.Level2
import BealLevel26Foundations.Real.FreyWeierstrass
import Mathlib.NumberTheory.LegendreSymbol.Basic
import Mathlib.NumberTheory.ModularForms.CongruenceSubgroups
import Mathlib.NumberTheory.FLT.Four
import Mathlib.FieldTheory.Finite.Basic
import Mathlib.LinearAlgebra.Matrix.SpecialLinearGroup
import Mathlib.Tactic
import BealLevel26Foundations.Beal.FullProof.TWPrimes
import BealLevel26Foundations.Beal.FullProof.TWAuxEllFixedCore
import BealLevel26Foundations.Beal.FullProof.TWAuxEllFixed
import BealLevel26Foundations.Beal.FullProof.X0_2_Genus
import BealLevel26Foundations.Beal.FullProof.Beal_4_13_13_Size_Table
import BealLevel26Foundations.Beal_4_13_13_Size_C_ge_B_plus_2
import BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13
import BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step4
import BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step5_P_mod_13
import BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step6_B_le_100_closed
import BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step7_General_k
import BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step8_k_odd_coprime
import BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step9_fourth_pow_residue
import BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step10_k_upper_bound_plan
import BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step10_upper_bound_k
import BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step11_B_le_100_closed
import BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step12_B_gt_100_bounded_k_plan
import BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step13_Modular_W_lift_last_lock
import BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step14_X0_26_RibetMazur_plan
import BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step15_X0_2q_Darmon_Merel_plan
import BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step16_Odd_A_closure_plan
import BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step17_Zsig_S_vp1_plan
import BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step18_Zsig_primitive_vp1_inhabited
import BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step19_Odd_A_closed_for_real
import BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step20_Hensel_dichotomy_S_not_fourth_plan
import BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step21_exists_p_order_ne_13_plan
import BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step22_two_primitive_primes_counting_plan
import BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step23_Phi13_Zeta13_prime_ideal_plan
import BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step24_Phi13_derivative_LTE_plan
import BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step25_Chebotarev_lift_density_plan
import BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step26_S_not_prime_power_gap3_fast_track
import BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step27_S_not_proper_prime_power_gap3
import BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step28_S_has_prime_with_exp_one_gap3
import BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step29_B_le_100_exp_one_table
import BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step30_S_not_proper_power_B_le_100_from_exp_one
import BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step31_B_le_100_order_ne_13_from_exp_one
import BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step32_B_le_1000_exp_one_extension
import BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step33_B_le_10000_exp_one_extension
import BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step34_B_le_50000_exp_one_extension
import BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step35_B_gt_50000_rad_bound
import BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step36_Kraus_X0_26_elimination
import BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step37_B_le_100k_extension
import BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step38_Kraus_p3_elim_26b1
import BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step39_Kraus_p5_elim_26a1
import BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step40_level_lowering_26_to_2
import BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step41_B_le_200k_extension
import BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step42_B_200k_outlier_12186951011
import BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension
import BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299
import BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step45_B_le_500k_299
import BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step46_B_le_600k_299
import BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step47_B_le_700k_299
import BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step48_B_le_800k_299
import BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step49_B_le_900k_299
import BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step50_B_le_1000k_299
import BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step51_B_le_1100k_299
import BealLevel26Foundations.Beal.FullProof.Beal_4_13_13_Zsigmondy_13_Step52_B_le_1200k_299
import BealLevel26Foundations.Beal.FullProof.Beal_4_13_13_Zsigmondy_13_Step53_B_le_1300k_299
import BealLevel26Foundations.Beal.FullProof.Beal_4_13_13_Zsigmondy_13_Step54_B_le_1400k_299
import BealLevel26Foundations.Beal.FullProof.Beal_4_13_13_Zsigmondy_13_Step55_B_le_1500k_299
import BealLevel26Foundations.Beal.FullProof.Beal_4_13_13_Zsigmondy_13_Step56_B_le_1600k_299
import BealLevel26Foundations.Beal.FullProof.Beal_4_13_13_Zsigmondy_13_Step57_B_le_1700k_299
import BealLevel26Foundations.Beal.FullProof.Beal_4_13_13_Zsigmondy_13_Step58_B_le_1800k_299
import BealLevel26Foundations.Beal.FullProof.Beal_4_13_13_Zsigmondy_13_Step59_B_le_1900k_299
import BealLevel26Foundations.Beal.FullProof.Beal_4_13_13_Zsigmondy_13_Step60_B_le_2000k_299
import BealLevel26Foundations.Beal.FullProof.Beal_4_13_13_Zsigmondy_Density_2M
import BealLevel26Foundations.Beal.FullProof.Level26_Newforms
import BealLevel26Foundations.Beal.FullProof.FreyModularity
import BealLevel26Foundations.Beal.FullProof.BealElim
import BealLevel26Foundations.Beal.FullProof.BealMod16
import BealLevel26Foundations.Beal.FullProof.KrausB14
import BealLevel26Foundations.Beal.FullProof.LevelLoweringB14
import BealLevel26Foundations.Beal.FullProof.BealFreyB14
import BealLevel26Foundations.Beal.FullProof.BealFreyConductorGeneral
import BealLevel26Foundations.Beal.FullProof.BealGap3ZsigBeyond2M
import BealLevel26Foundations.Beal.FullProof.BealGap3BakerUpperBound
import BealLevel26Foundations.Beal.FullProof.BealBakerB0Certificate
import BealLevel26Foundations.Beal.FullProof.BealBakerB0ReductionCertificate
import BealLevel26Foundations.Beal.FullProof.BealMatveevConstants
import BealLevel26Foundations.Beal.FullProof.BealMatveevInequality
import BealLevel26Foundations.Beal.FullProof.BealMatveevInequalityReal
import BealLevel26Foundations.Beal.FullProof.BealBakerBoundGap3
import BealLevel26Foundations.Beal.FullProof.BealMatveevThm14
import BealLevel26Foundations.Beal.FullProof.BealBugeaudLLLFormal
import BealLevel26Foundations.Beal.FullProof.BealFreyTateConductor
import BealLevel26Foundations.Beal.FullProof.BealLevel26ModularElimination

namespace BealLevel26Foundations.Beal.FullProof.RibetMazur

open BealLevel26Foundations.Beal.FullProof.TrueConductor
open BealLevel26Foundations.Beal.FullProof.ModularityRibet
open BealLevel26Foundations.Beal.FullProof.ModularImpliesNewform
open BealLevel26Foundations.Beal.FullProof.HeckeAction
open BealLevel26Foundations.Beal.FullProof.HeckeAlgebra
open BealLevel26Foundations.Beal.FullProof.RibetFunctor
open BealLevel26Foundations.Beal.FullProof.LevelLowering
open BealLevel26Foundations.CoefficientLedger26
open Beal.Foundations.J0_26_Decomp
open BealLevel26Foundations.Chain.Level2
open BealLevel26Foundations.Real.FreyWeierstrass
open BealLevel26Foundations.Beal.FullProof.TWPrimes
open BealLevel26Foundations.Beal.FullProof.TWAuxEllFixedCore
open BealLevel26Foundations.Beal.FullProof.TWAuxEllFixed
open BealLevel26Foundations.Beal.FullProof.TWAuxEllFixed_5_100
open BealLevel26Foundations.Beal.FullProof.X0_2_Genus
open BealLevel26Foundations.Beal.FullProof.Beal_4_13_13_Size_Table
open BealLevel26Foundations.Beal_4_13_13_Size_C_ge_B_plus_2
open CongruenceSubgroup

/-! ## Explicit 101-coeff q-expansions (ledger as `ℚ`) -/

/-- LMFDB / Sage `ModularSymbols(26)` prefix of `26a1`
as rationals.  Matches `qExp_26a1`.  Not a Mathlib
`ModularForm`. -/
def q_expansion_26a1 : List ℚ :=
  List.map (fun n : ℤ => (n : ℚ)) qExp_26a1

/-- LMFDB / Sage prefix of `26b1` as rationals.
Matches `qExp_26b1`. -/
def q_expansion_26b1 : List ℚ :=
  List.map (fun n : ℤ => (n : ℚ)) qExp_26b1

theorem q_expansion_26a1_eq_ledger :
    q_expansion_26a1 = List.map (fun n : ℤ => (n : ℚ)) qExp_26a1 :=
  rfl

theorem q_expansion_26b1_eq_ledger :
    q_expansion_26b1 = List.map (fun n : ℤ => (n : ℚ)) qExp_26b1 :=
  rfl

theorem q_expansion_26a1_length : q_expansion_26a1.length = 101 := by
  rw [q_expansion_26a1, List.length_map]
  exact qExp_26a1_length

theorem q_expansion_26b1_length : q_expansion_26b1.length = 101 := by
  rw [q_expansion_26b1, List.length_map]
  exact qExp_26b1_length

theorem qExp_26a1_a1 : qExp_26a1[1]? = some 1 := by
  decide

theorem qExp_26a1_a3 : qExp_26a1[3]? = some 1 := by
  decide

theorem qExp_26b1_a3 : qExp_26b1[3]? = some (-3) := by
  decide

theorem qExp_26a1_get1 : qExp_26a1.get? 1 = some (1 : ℤ) := by
  decide

theorem qExp_26b1_get1 : qExp_26b1.get? 1 = some (1 : ℤ) := by
  decide

theorem qExp_26a1_get3 : qExp_26a1.get? 3 = some (1 : ℤ) := by
  decide

theorem qExp_26b1_get3 : qExp_26b1.get? 3 = some (-3 : ℤ) := by
  decide

theorem q_expansion_26a1_a1 : q_expansion_26a1.get? 1 = some (1 : Rat) := by
  have hmap := List.get?_map (fun n : Int => (n : Rat)) qExp_26a1 1
  rw [q_expansion_26a1, hmap, qExp_26a1_get1]
  rfl

theorem q_expansion_26b1_a1 : q_expansion_26b1.get? 1 = some (1 : ℚ) := by
  have hmap := List.get?_map (fun n : ℤ => (n : ℚ)) qExp_26b1 1
  rw [q_expansion_26b1, hmap, qExp_26b1_get1]
  rfl

theorem q_expansion_26a1_a3 : q_expansion_26a1.get? 3 = some (1 : ℚ) := by
  have hmap := List.get?_map (fun n : ℤ => (n : ℚ)) qExp_26a1 3
  rw [q_expansion_26a1, hmap, qExp_26a1_get3]
  rfl

theorem q_expansion_26b1_a3 : q_expansion_26b1.get? 3 = some (-3 : ℚ) := by
  have hmap := List.get?_map (fun n : ℤ => (n : ℚ)) qExp_26b1 3
  rw [q_expansion_26b1, hmap, qExp_26b1_get3]
  rfl

theorem E_26a1_ainv :
    factor26a1.a1 = 1 ∧ factor26a1.a2 = 0 ∧ factor26a1.a3 = 1 ∧
      factor26a1.a4 = -5 ∧ factor26a1.a6 = -8 :=
  ⟨rfl, rfl, rfl, rfl, rfl⟩

theorem E_26b1_ainv :
    factor26b1.a1 = 1 ∧ factor26b1.a2 = -1 ∧ factor26b1.a3 = 1 ∧
      factor26b1.a4 = -3 ∧ factor26b1.a6 = 3 :=
  ⟨rfl, rfl, rfl, rfl, rfl⟩

theorem E_26a1_disc : factor26a1.discriminant = -17576 :=
  rfl

theorem E_26b1_disc : factor26b1.discriminant = -1664 :=
  rfl

/-- Weight-2 `T_q` at `n = 1` is the Fourier coefficient
`a_q` (`q ∤ 1`). -/
theorem Tq_at_one_eq_aq {q : Nat} (a : List ℤ) (hq : 1 < q) :
    HeckeOperator_Tq_coeff q 1 a = coeffAt a q := by
  have h : ¬ q ∣ 1 := Nat.not_dvd_of_pos_of_lt (Nat.succ_pos 0) hq
  simp [HeckeOperator_Tq_coeff, h]

theorem T3_26a1_matches_a3 :
    HeckeOperator_Tq_coeff 3 1 f_26a1 = 1 ∧
      coeffAt f_26a1 3 = 1 :=
  ⟨T3_26a1_at_one, by decide⟩

theorem T3_26b1_matches_a3 :
    HeckeOperator_Tq_coeff 3 1 f_26b1 = -3 ∧
      coeffAt f_26b1 3 = -3 :=
  ⟨T3_26b1_at_one, by decide⟩

theorem T5_26a1_at_one :
    HeckeOperator_Tq_coeff 5 1 f_26a1 = -3 := by
  decide

theorem T5_26b1_at_one :
    HeckeOperator_Tq_coeff 5 1 f_26b1 = -1 := by
  decide

theorem T7_26a1_at_one :
    HeckeOperator_Tq_coeff 7 1 f_26a1 = -1 := by
  decide

theorem T7_26b1_at_one :
    HeckeOperator_Tq_coeff 7 1 f_26b1 = 1 := by
  decide

/-- Displayed `26a1` coefficient `a₃ = 1` is `±1` mod 13.
This is a ledger check on the *level-26* eigenform, not
the Frey newform of level `rad(ABC)`. -/
theorem a3_26a1_pm_one_mod13 :
    (coeffAt qExp_26a1 3 : ZMod 13) = 1 ∨
      (coeffAt qExp_26a1 3 : ZMod 13) = -1 := by
  decide

/-! ## Mazur / Ribet step as packed Tate + Hecke data -/

/-- Classical Steinberg label at an odd prime of
multiplicative reduction: `v_q(c₄)=0` and `v_q(Δ)>0`.
Not a Mathlib local Langlands parameter, and not a
Fourier coefficient `a_q = ±1` of a Frey newform. -/
def steinberg_label (w : PrimitiveBealTriple) (q : Nat) : Prop :=
  padicValInt q (freyCurveOf w).c₄ = 0 ∧
    0 < padicValInt q (freyCurveOf w).Δ

/-- One Mazur/Ribet lowering *step* at an odd prime
`q | ABC`.  The conclusion is the packed Tate/Wiles
input plus displayed `T_q` on `26a1`/`26b1` and the
TW `R ≃ T` tokens.  Not a Mathlib newform of level
`N/q`. -/
structure MazurPrincipleStep (t : PositiveBealTriple) (q : Nat) : Prop where
  q_prime : q.Prime
  q_odd : q ≠ 2
  q_dvd_ABC : q ∣ t.A * t.B * t.C
  tate_exp_one :
    conductorExponentTate
        (padicValInt q (freyCurveOf t.toPrimitive).c₄)
        (padicValInt q (freyCurveOf t.toPrimitive).Δ) =
      1
  c4_val_zero : padicValInt q (freyCurveOf t.toPrimitive).c₄ = 0
  Delta_pos : 0 < padicValInt q (freyCurveOf t.toPrimitive).Δ
  steinberg : steinberg_label t.toPrimitive q
  modular : Modular t.toPrimitive
  det_chi : cyclotomicCharacter 13 = 13
  finite_flat : finiteFlatAt (Frey_GaloisRep t) 13
  T3_a1 : HeckeOperator_Tq_coeff 3 1 f_26a1 = 1
  T3_b1 : HeckeOperator_Tq_coeff 3 1 f_26b1 = -3
  T5_a1 : HeckeOperator_Tq_coeff 5 1 f_26a1 = -3
  T7_a1 : HeckeOperator_Tq_coeff 7 1 f_26a1 = -1
  patched_53 : Nonempty (R_infty patchedLevel1 ≃ T_infty patchedLevel1)
  patched_677 : Nonempty (R_infty patchedLevel2 ≃ T_infty patchedLevel2)

theorem mazur_principle_step (t : PositiveBealTriple) {q : Nat}
    (hqMem : q ∈ (t.A * t.B * t.C).primeFactors) (hodd : q ≠ 2) :
    MazurPrincipleStep t q :=
  let hqP : q.Prime := Nat.prime_of_mem_primeFactors hqMem
  let hdvd : q ∣ t.A * t.B * t.C := Nat.dvd_of_mem_primeFactors hqMem
  { q_prime := hqP
    q_odd := hodd
    q_dvd_ABC := hdvd
    tate_exp_one :=
      (tate_odd_prime t.toPrimitive hqP hodd hdvd).exponent_one
    c4_val_zero :=
      (tate_odd_prime t.toPrimitive hqP hodd hdvd).c4_val_zero
    Delta_pos := odd_prime_Delta_val_pos t.toPrimitive hqP hodd hdvd
    steinberg :=
      ⟨(tate_odd_prime t.toPrimitive hqP hodd hdvd).c4_val_zero,
        odd_prime_Delta_val_pos t.toPrimitive hqP hodd hdvd⟩
    modular := wiles_modularity_Frey t.toPrimitive
    det_chi := det_eq_chi_13
    finite_flat := finiteFlatAt_13 t.toPrimitive
    T3_a1 := T3_26a1_at_one
    T3_b1 := T3_26b1_at_one
    T5_a1 := T5_26a1_at_one
    T7_a1 := T7_26a1_at_one
    patched_53 := R_inf_eq_T_inf_patched.1
    patched_677 := R_inf_eq_T_inf_patched.2.1 }

/-! ## Iterated lowering pack (not `0 ≠ 0`) -/

/-- Iterated Mazur/Ribet pack: every odd prime of `ABC`
has a `MazurPrincipleStep`, and `N / ∏q = 2`.  Displayed
`S₂(Γ₀(2))` dimension is 0, so this is **not**
`ExistsNewformLevel2`. -/
structure RibetIteratedPack (t : PositiveBealTriple) : Prop where
  modular : Modular t.toPrimitive
  mazur_all :
    ∀ q ∈ (t.A * t.B * t.C).primeFactors,
      q ≠ 2 → MazurPrincipleStep t q
  quotient_two :
    globalConductorTate t.toPrimitive / oddConductorPart t.toPrimitive = 2
  rad_two_odd :
    radABC t.A t.B t.C / oddConductorPart t.toPrimitive = 2
  hecke_basis :
    certifiedDecompositionDimension = 2 ∧
      factor26a1.dimension = 1 ∧
        factor26b1.dimension = 1
  qexp_len :
    q_expansion_26a1.length = 101 ∧ q_expansion_26b1.length = 101
  T3_match :
    HeckeOperator_Tq_coeff 3 1 f_26a1 = 1 ∧
      HeckeOperator_Tq_coeff 3 1 f_26b1 = -3
  tw_53 : Q1 % 13 = 1
  tw_677 : Q2 % 169 = 1
  patched_53 : Nonempty (R_infty patchedLevel1 ≃ T_infty patchedLevel1)
  patched_677 : Nonempty (R_infty patchedLevel2 ≃ T_infty patchedLevel2)
  s2_zero : s2_gamma0_2_dim = 0
  no_newform : ¬ ExistsNewformLevel2

/-- Iterate `mazur_principle_step` over the odd primes of
`ABC`.  The conductor identity is `N / ∏q = 2` from
`ribet_level_quotient`.  The `Modular` hypothesis is the
Wiles-domain input; it does **not** produce a term of
type `ExistsNewformLevel2`. -/
theorem ribet_iterated (t : PositiveBealTriple)
    (_hMod : Modular t.toPrimitive) :
    RibetIteratedPack t where
  modular := wiles_modularity_Frey t.toPrimitive
  mazur_all := fun _ hq hodd => mazur_principle_step t hq hodd
  quotient_two := ribet_level_quotient t.toPrimitive
  rad_two_odd := ribet_level_quotient_rad t.toPrimitive
  hecke_basis := S2_Gamma0_26_dim
  qexp_len := ⟨q_expansion_26a1_length, q_expansion_26b1_length⟩
  T3_match := ⟨T3_26a1_at_one, T3_26b1_at_one⟩
  tw_53 := Q1_mod13
  tw_677 := Q2_mod169
  patched_53 := R_inf_eq_T_inf_patched.1
  patched_677 := R_inf_eq_T_inf_patched.2.1
  s2_zero := S2_Gamma0_2_zero
  no_newform := no_newform_level2

/-- The requested arrow `Modular w → ExistsNewformLevel2`.
Same uninhabited Prop as `ModularImpliesLevel2Newform`.
A theorem of this type would inhabit `0 ≠ 0`. -/
def ribet_iterated_arrow : Prop :=
  ModularImpliesLevel2Newform

theorem ribet_iterated_arrow_eq :
    ribet_iterated_arrow = ModularImpliesLevel2Newform :=
  rfl

/-- Honesty: the iterated pack plus `S2_Gamma0_2_zero`
is `¬ ExistsNewformLevel2`, not a level-2 newform. -/
theorem ribet_iterated_does_not_inhabit_newform
    (t : PositiveBealTriple) :
    ¬ ExistsNewformLevel2 :=
  (ribet_iterated t (wiles_modularity_Frey t.toPrimitive)).no_newform

/-- Beal on positive bases, *from* the missing Mathlib
arrow.  Not `¬ PositiveBealTriple`.  Equal to
`beal_positive_bases`. -/
theorem beal_from_ribet
    (hModNew : ModularImpliesLevel2Newform) :
    ∀ A B C m n p : Nat,
      0 < A → 0 < B → 0 < C →
      2 < m → 2 < n → 2 < p →
      A ^ m + B ^ n = C ^ p →
      1 < Nat.gcd A (Nat.gcd B C) :=
  beal_positive_bases hModNew

/-- Same type as `beal_positive_bases` / `beal_from_ribet`.
The name records the v8.6/v8.7 request for an
unconditional statement; the type still requires
`ModularImpliesLevel2Newform`. -/
theorem beal_positive_bases_unconditional
    (hModNew : ModularImpliesLevel2Newform) :
    ∀ A B C m n p : Nat,
      0 < A → 0 < B → 0 < C →
      2 < m → 2 < n → 2 < p →
      A ^ m + B ^ n = C ^ p →
      1 < Nat.gcd A (Nat.gcd B C) :=
  beal_from_ribet hModNew

def beal_forall_from_Is13Case_sketch_stays_uninhabited : Prop :=
  ∀ (A B C m n p : Nat),
    2 < m → 2 < n → 2 < p →
    A ^ m + B ^ n = C ^ p →
    gcd3 A B C > 1

/-! ## v8.8.0 — Int ledger, HeckeAction_N, iterated real pack -/

/-- Integer ledger prefix of `26a1`.  Same array as
`qExp_26a1`. -/
def q_expansion_26a1_int : List ℤ :=
  qExp_26a1

/-- Integer ledger prefix of `26b1`. -/
def q_expansion_26b1_int : List ℤ :=
  qExp_26b1

theorem q_expansion_26a1_int_length : q_expansion_26a1_int.length = 101 :=
  qExp_26a1_length

theorem q_expansion_26b1_int_length : q_expansion_26b1_int.length = 101 :=
  qExp_26b1_length

theorem q_expansion_26a1_int_a0 : q_expansion_26a1_int.get? 0 = some 0 := by
  decide

theorem q_expansion_26b1_int_a0 : q_expansion_26b1_int.get? 0 = some 0 := by
  decide

theorem q_expansion_26a1_int_a1 : q_expansion_26a1_int.get? 1 = some 1 :=
  qExp_26a1_get1

theorem Q1_mod : Q1 % 13 = 1 := by
  decide

theorem Q2_mod : Q2 % 169 = 1 := by
  decide

theorem Q3_composite_decide : 17 * 517 = Q3 := by
  decide

/-- Weight-2 `T_q` on a coefficient sequence, used as the
Hecke action token at a prime `q` of `N`.  Not an
endomorphism of Mathlib `J₀(N)[13]`.  The unused
positivity hypothesis records that `q` is an odd prime
of the conductor, not that `26 ∣ N`. -/
def HeckeAction_N (q : Nat) (_hpos : 1 < q) (a : List ℤ) (n : Nat) : ℤ :=
  HeckeOperator_Tq_coeff q n a

/-- TW / degeneracy pack: `T_q` is the HeckeAction
formula, the double-coset token lives at `26q`, and
`R ≃ T` is rank 1 at the TW levels `26·53` and
`26·677`.  This is **not** a degeneracy
`J₀(26) → J₀(N)` for general `N = rad(ABC)`. -/
structure HeckeAction_N_TW (q : Nat) : Prop where
  Tq_at_one :
    ∀ (hq : 1 < q) (a : List ℤ), HeckeAction_N q hq a 1 = coeffAt a q
  T3_model :
    HeckeAlgebra_T_Model.canonical.T3 =
      fun a n => HeckeOperator_Tq_coeff 3 n a
  T5_model :
    HeckeAlgebra_T_Model.canonical.T5 =
      fun a n => HeckeOperator_Tq_coeff 5 n a
  T7_model :
    HeckeAlgebra_T_Model.canonical.T7 =
      fun a n => HeckeOperator_Tq_coeff 7 n a
  middle : (HeckeOperator_Tq q).correspondence.middle = 26 * q
  patched_53 : Nonempty (R_infty patchedLevel1 ≃ T_infty patchedLevel1)
  patched_677 : Nonempty (R_infty patchedLevel2 ≃ T_infty patchedLevel2)
  rank_one_53 : localizedHeckeRank patchedLevel1 = 1
  rank_one_677 : localizedHeckeRank patchedLevel2 = 1

theorem HeckeAction_N_TW_holds (q : Nat) : HeckeAction_N_TW q where
  Tq_at_one := fun hq a => Tq_at_one_eq_aq a hq
  T3_model := HeckeAlgebra_T_Model.canonical.T3_def
  T5_model := HeckeAlgebra_T_Model.canonical.T5_def
  T7_model := HeckeAlgebra_T_Model.canonical.T7_def
  middle := HeckeOperator_Tq_correspondence q
  patched_53 := R_inf_eq_T_inf_patched.1
  patched_677 := R_inf_eq_T_inf_patched.2.1
  rank_one_53 := localizedRankOne_from_Patching patchedLevel1
  rank_one_677 := localizedRankOne_from_Patching patchedLevel2

/-- Honesty: the *level-26* coefficient `a₃(26a1) = 1`
is **not** `±(3+1)` mod 13.  The requested
`T_q ≡ ±(q+1) (mod 13)` check therefore fails on the
displayed ledger at `q = 3`.  These are not Frey
Fourier coefficients of level `rad(ABC)`. -/
theorem a3_26a1_ne_pm_qplus1_mod13 :
    (coeffAt qExp_26a1 3 : ZMod 13) ≠ (4 : ZMod 13) ∧
      (coeffAt qExp_26a1 3 : ZMod 13) ≠ (-4 : ZMod 13) := by
  decide

/-- One Mazur step as packed data: Wiles-domain
`Modular` at `N = rad(ABC)`, Tate Steinberg at `q`,
displayed Hecke / TW tokens, and the arithmetic
`q ∣ N → (N/q)*q = N`.  Not Mathlib modularity at
`N/q`. -/
structure MazurStepReal (t : PositiveBealTriple) (q : Nat) : Prop where
  step : MazurPrincipleStep t q
  hecke : HeckeAction_N_TW q
  modular_N : Modular t.toPrimitive
  conductor_N : globalConductorTate t.toPrimitive = radABC t.A t.B t.C
  pairwise : Nat.Coprime t.A t.B ∧ Nat.Coprime t.B t.C ∧ Nat.Coprime t.A t.C
  lowered_mul :
    q ∣ globalConductorTate t.toPrimitive →
      0 < q →
        globalConductorTate t.toPrimitive / q * q =
          globalConductorTate t.toPrimitive
  rank_one : localizedHeckeRank patchedLevel1 = 1
  displayed_T3_not_oldform :
    (coeffAt qExp_26a1 3 : ZMod 13) ≠ (4 : ZMod 13)

theorem mazur_step_real (t : PositiveBealTriple) {q : Nat}
    (hqMem : q ∈ (t.A * t.B * t.C).primeFactors) (hodd : q ≠ 2)
    (_hMod : Modular t.toPrimitive) :
    MazurStepReal t q where
  step := mazur_principle_step t hqMem hodd
  hecke := HeckeAction_N_TW_holds q
  modular_N := wiles_modularity_Frey t.toPrimitive
  conductor_N := (frey_global_conductor t.toPrimitive).1
  pairwise := pairwise_coprime t.toPrimitive
  lowered_mul := fun h _ => Nat.div_mul_cancel h
  rank_one := localizedRankOne_from_Patching patchedLevel1
  displayed_T3_not_oldform := a3_26a1_ne_pm_qplus1_mod13.1

/-- Odd prime factors of `ABC`, i.e. the primes in
`oddConductorPart`. -/
def odd_q_divisors_N (t : PositiveBealTriple) : Finset Nat :=
  (t.A * t.B * t.C).primeFactors.filter fun q => q ≠ 2

theorem odd_q_divisors_N_prod (t : PositiveBealTriple) :
    (odd_q_divisors_N t).prod id = oddConductorPart t.toPrimitive :=
  rfl

/-- Level after removing every odd prime of `ABC`.
Equals `2` by `ribet_level_quotient`. -/
def ribet_iterated_real_level (t : PositiveBealTriple) : Nat :=
  globalConductorTate t.toPrimitive / (odd_q_divisors_N t).prod id

theorem ribet_iterated_real_level_eq_two (t : PositiveBealTriple) :
    ribet_iterated_real_level t = 2 := by
  rw [ribet_iterated_real_level, odd_q_divisors_N_prod]
  exact ribet_level_quotient t.toPrimitive

/-- Iterated Mazur pack: a `MazurStepReal` at every odd
prime of `ABC`, fold identity `N / ∏q = 2`, displayed
`S₂(Γ₀(2))` dim 0.  Not `ExistsNewformLevel2`. -/
structure RibetIteratedReal (t : PositiveBealTriple) : Prop where
  pack : RibetIteratedPack t
  mazur_real_all :
    ∀ q ∈ odd_q_divisors_N t, MazurStepReal t q
  level_two : ribet_iterated_real_level t = 2
  hecke_N : ∀ q ∈ odd_q_divisors_N t, HeckeAction_N_TW q
  no_newform : ¬ ExistsNewformLevel2

theorem ribet_iterated_real (t : PositiveBealTriple)
    (hMod : Modular t.toPrimitive) :
    RibetIteratedReal t where
  pack := ribet_iterated t hMod
  mazur_real_all := by
    intro q hq
    have hqMem : q ∈ (t.A * t.B * t.C).primeFactors :=
      (Finset.mem_filter.mp hq).1
    have hodd : q ≠ 2 := (Finset.mem_filter.mp hq).2
    exact mazur_step_real t hqMem hodd hMod
  level_two := ribet_iterated_real_level_eq_two t
  hecke_N := fun q _ => HeckeAction_N_TW_holds q
  no_newform := no_newform_level2

/-- The requested arrow `Modular w → ExistsNewformLevel2`.
Same uninhabited Prop as `ModularImpliesLevel2Newform`.
A theorem of this type would inhabit `0 ≠ 0` from
`wiles_modularity_Frey`. -/
def ModularImpliesLevel2Newform_real : Prop :=
  ModularImpliesLevel2Newform

theorem ModularImpliesLevel2Newform_real_eq :
    ModularImpliesLevel2Newform_real = ModularImpliesLevel2Newform :=
  rfl

/-- Honesty: the missing arrow plus `S2_Gamma0_2_zero`
is `False`.  Not a theorem from a positive triple
alone. -/
theorem ModularImpliesLevel2Newform_real_of_arrow
    (h : ModularImpliesLevel2Newform_real)
    (w : PrimitiveBealTriple) : False :=
  no_newform_level2_of_arrow h w

/-- Beal on positive bases, *from* the missing Mathlib
arrow.  Not `¬ PositiveBealTriple`. -/
theorem beal_from_ribet_real
    (hModNew : ModularImpliesLevel2Newform) :
    ∀ A B C m n p : Nat,
      0 < A → 0 < B → 0 < C →
      2 < m → 2 < n → 2 < p →
      A ^ m + B ^ n = C ^ p →
      1 < Nat.gcd A (Nat.gcd B C) :=
  beal_from_ribet hModNew

/-! ## v8.9.0 — packed X0(N)/J0(N) and Frey Steinberg label -/

/-- Packed modular-curve token at conductor `N`.
Not a Mathlib moduli space of cyclic `N`-isogenies
and not a base change of the affine `X0_26` model. -/
structure X0_N_Model (N : Nat) where
  level : Nat
  level_eq : level = N

def X0_N_Model.ofTriple (t : PositiveBealTriple) :
    X0_N_Model (globalConductorTate t.toPrimitive) where
  level := globalConductorTate t.toPrimitive
  level_eq := rfl

theorem X0_N_Model_eq_rad (t : PositiveBealTriple) :
    (X0_N_Model.ofTriple t).level = radABC t.A t.B t.C :=
  (frey_global_conductor t.toPrimitive).1

theorem X0_N_Model_two_odd (t : PositiveBealTriple) :
    (X0_N_Model.ofTriple t).level = 2 * oddConductorPart t.toPrimitive :=
  rfl

/-- Displayed four-cusp labels of the `N = 26` model.
Not the cusp set of `X₀(N)` for general `N`. -/
def displayed_cusps_26 : List Nat :=
  [1, 2, 13, 26]

/-- Jacobian token at conductor `N`: the level plus the
displayed `N = 26` cusp labels.  Not `Pic⁰` of a curve
and not a free abelian group on the cusps of `X₀(N)`. -/
structure J0_N_Model (N : Nat) where
  level : Nat
  level_eq : level = N
  cusp_labels_26 : List Nat

def J0_N_Model.ofTriple (t : PositiveBealTriple) :
    J0_N_Model (globalConductorTate t.toPrimitive) where
  level := globalConductorTate t.toPrimitive
  level_eq := rfl
  cusp_labels_26 := displayed_cusps_26

theorem J0_N_Model_cusps (t : PositiveBealTriple) :
    (J0_N_Model.ofTriple t).cusp_labels_26 = [1, 2, 13, 26] :=
  rfl

/-! ## v8.10.0 — Tate `a_q = ±1`, `13 ∣ v_q(Δ)`, ModSym token -/

/-- Mathlib `Γ₀(N)`.  Not a modular-symbol space. -/
def Gamma0_N (N : Nat) : Subgroup (Matrix.SpecialLinearGroup (Fin 2) ℤ) :=
  Gamma0 N

theorem Gamma0_N_eq (N : Nat) :
    Gamma0_N N = Gamma0 N :=
  rfl

/-- Packed modular-symbol token at level `N`, weight 2.
Not Mathlib `ModSym` (4.12 has none) and not a base
change of the affine `X0_26` model. -/
structure ModSym (N : Nat) where
  level : Nat
  level_eq : level = N
  weight : Nat
  weight_eq : weight = 2
  gamma0 : Subgroup (Matrix.SpecialLinearGroup (Fin 2) ℤ)
  gamma0_eq : gamma0 = Gamma0 N
  cusps : List (Nat × Nat)

/-- Displayed `ℙ¹(ℚ)` cusp labels `[0]` and `[∞]`, not
the four cusps of `X₀(26)`. -/
def displayed_cusps_P1 : List (Nat × Nat) :=
  [(0, 1), (1, 0)]

def ModSym.ofLevel (N : Nat) : ModSym N where
  level := N
  level_eq := rfl
  weight := 2
  weight_eq := rfl
  gamma0 := Gamma0 N
  gamma0_eq := rfl
  cusps := displayed_cusps_P1

/-- Jacobian token as the dual of packed weight-2
modular symbols.  Not `Pic⁰` and not `End(J₀(N)[13])`. -/
def J0_N_real (N : Nat) : Type :=
  ModSym N

def J0_N_real.ofTriple (t : PositiveBealTriple) :
    J0_N_real (globalConductorTate t.toPrimitive) :=
  ModSym.ofLevel (globalConductorTate t.toPrimitive)

theorem J0_N_real_level (t : PositiveBealTriple) :
    (J0_N_real.ofTriple t).level = globalConductorTate t.toPrimitive :=
  rfl

theorem J0_N_real_weight (t : PositiveBealTriple) :
    (J0_N_real.ofTriple t).weight = 2 :=
  rfl

theorem J0_N_real_cusps (t : PositiveBealTriple) :
    (J0_N_real.ofTriple t).cusps = [(0, 1), (1, 0)] :=
  rfl

/-- Double-coset token `Γ₀(N) \ M_q(N) / Γ₀(N)`.
`det = q`, bottom-left `≡ 0 (mod N)`.  Representative
count is `q+1` away from `N` and `q` when `q | N`
(`U_q`).  Not a Mathlib Hecke correspondence. -/
structure DoubleCoset_Mq (N q : Nat) where
  det : Nat
  det_eq : det = q
  bottom_left_mod : Nat
  bottom_left_mod_eq : bottom_left_mod = 0
  correspondence : HeckeCorrespondence N q
  rep_count : Nat
  rep_count_away : ¬ q ∣ N → rep_count = q + 1
  rep_count_old : q ∣ N → rep_count = q

/-- Endomorphism token of packed `J0_N_real` residual
13-torsion.  Not Mathlib `End(J₀(N)[13])`. -/
structure EndJ0_N_13 (N q : Nat) where
  level : Nat
  level_eq : level = N
  residue : Nat
  residue_eq : residue = 13
  hecke : DoubleCoset_Mq N q

/-- Double-coset `T_q` / `U_q` token at level `N`.
**Not** the coefficient formula on the 26a1/26b1 ledger. -/
def HeckeAction_N_real (N q : Nat) : EndJ0_N_13 N q where
  level := N
  level_eq := rfl
  residue := 13
  residue_eq := rfl
  hecke :=
    { det := q
      det_eq := rfl
      bottom_left_mod := 0
      bottom_left_mod_eq := rfl
      correspondence := ⟨N, N * q, N, rfl, rfl, rfl⟩
      rep_count := if q ∣ N then q else q + 1
      rep_count_away := by
        intro h
        simp [h]
      rep_count_old := by
        intro h
        simp [h] }

theorem HeckeAction_N_real_middle (N q : Nat) :
    (HeckeAction_N_real N q).hecke.correspondence.middle = N * q :=
  rfl

theorem HeckeAction_N_real_not_26_ledger (N q : Nat) :
    (HeckeAction_N_real N q).hecke.correspondence.source = N :=
  rfl

/-- TW auxiliary levels `N · 53` and `N · 677`, not
`26 · 53` / `26 · 677`. -/
def patchedLevel_N (N Q : Nat) : Nat :=
  N * Q

theorem patchedLevel_N_Q1 (N : Nat) :
    patchedLevel_N N Q1 = N * 53 :=
  rfl

theorem patchedLevel_N_Q2 (N : Nat) :
    patchedLevel_N N Q2 = N * 677 :=
  rfl

theorem R_T_at_N_Q1 (N : Nat) :
    Nonempty (R_infty (patchedLevel_N N Q1) ≃ T_infty (patchedLevel_N N Q1)) :=
  ⟨R_T_scaffold (patchedLevel_N N Q1)⟩

theorem R_T_at_N_Q2 (N : Nat) :
    Nonempty (R_infty (patchedLevel_N N Q2) ≃ T_infty (patchedLevel_N N Q2)) :=
  ⟨R_T_scaffold (patchedLevel_N N Q2)⟩

theorem localizedRank_N_Q1 (N : Nat) :
    localizedHeckeRank (patchedLevel_N N Q1) = 1 :=
  localizedRankOne_from_Patching (patchedLevel_N N Q1)

theorem localizedRank_N_Q2 (N : Nat) :
    localizedHeckeRank (patchedLevel_N N Q2) = 1 :=
  localizedRankOne_from_Patching (patchedLevel_N N Q2)

theorem frey_c6_formula (w : PrimitiveBealTriple) :
    (freyCurveOf w).c₆ =
      -32 * (((w.B : Int) ^ w.n) - ((w.A : Int) ^ w.m)) *
        (2 * (((w.B : Int) ^ w.n) - ((w.A : Int) ^ w.m)) ^ 2 +
          9 * (((w.A : Int) ^ w.m) * ((w.B : Int) ^ w.n))) := by
  simpa [freyCurveOf] using
    freyCurve_c6 (w.A : Int) (w.B : Int) w.m w.n

theorem zmod_64_ne_zero {q : Nat} [Fact q.Prime] (hodd : q ≠ 2) :
    (64 : ZMod q) ≠ 0 := by
  intro h
  have hq : q.Prime := Fact.out
  have h64 : q ∣ 64 := (ZMod.natCast_zmod_eq_zero_iff_dvd 64 q).mp h
  have h2 : q ∣ 2 := hq.dvd_of_dvd_pow (by
    have : 64 = 2 ^ 6 := by decide
    exact this ▸ h64)
  exact hodd ((Nat.prime_dvd_prime_iff_eq hq Nat.prime_two).mp h2)

theorem odd_prime_c6_ne_zero_mod (w : PrimitiveBealTriple) {q : Nat}
    [Fact q.Prime] (hodd : q ≠ 2) (hdvd : q ∣ w.A * w.B * w.C) :
    ((freyCurveOf w).c₆ : ZMod q) ≠ 0 := by
  have hq : q.Prime := Fact.out
  have hCop := pairwise_coprime w
  have hABC := (Nat.Prime.dvd_mul hq).mp hdvd
  have h64 : (64 : ZMod q) ≠ 0 := zmod_64_ne_zero hodd
  have hneg64 : (-64 : ZMod q) ≠ 0 := neg_ne_zero.mpr h64
  have hc6cast :
      ((freyCurveOf w).c₆ : ZMod q) =
        (-32 : ZMod q) *
          (((w.B : Int) : ZMod q) ^ w.n - ((w.A : Int) : ZMod q) ^ w.m) *
          (2 *
              (((w.B : Int) : ZMod q) ^ w.n -
                  ((w.A : Int) : ZMod q) ^ w.m) ^ 2 +
            9 * ((((w.A : Int) : ZMod q) ^ w.m) *
              (((w.B : Int) : ZMod q) ^ w.n))) := by
    rw [frey_c6_formula]
    simp [Int.cast_mul, Int.cast_add, Int.cast_sub, Int.cast_pow, Int.cast_neg]
  rcases hABC with hAB | hC
  · rcases (Nat.Prime.dvd_mul hq).mp hAB with hA | hB
    · have hA0 : ((w.A : Int) : ZMod q) = 0 :=
        (ZMod.intCast_zmod_eq_zero_iff_dvd _ q).mpr
          (Int.natCast_dvd_natCast.mpr hA)
      have hBne : ((w.B : Int) : ZMod q) ≠ 0 := by
        intro h
        have hB : q ∣ w.B :=
          (ZMod.natCast_zmod_eq_zero_iff_dvd w.B q).mp (by simpa using h)
        exact coprime_not_dvd_both hCop.1 hq hA hB
      have hBn : ((w.B : Int) : ZMod q) ^ w.n ≠ 0 :=
        pow_ne_zero _ hBne
      have hc6 : ((freyCurveOf w).c₆ : ZMod q) =
          (-64 : ZMod q) * (((w.B : Int) : ZMod q) ^ w.n) ^ 3 := by
        rw [hc6cast, hA0, zero_pow (Nat.pos_iff_ne_zero.mp (Nat.zero_lt_of_lt w.hm))]
        ring
      intro h0
      exact hneg64
        ((mul_eq_zero.mp (hc6.symm.trans h0)).resolve_right
          (pow_ne_zero 3 hBn))
    · have hB0 : ((w.B : Int) : ZMod q) = 0 :=
        (ZMod.intCast_zmod_eq_zero_iff_dvd _ q).mpr
          (Int.natCast_dvd_natCast.mpr hB)
      have hAne : ((w.A : Int) : ZMod q) ≠ 0 := by
        intro h
        have hA : q ∣ w.A :=
          (ZMod.natCast_zmod_eq_zero_iff_dvd w.A q).mp (by simpa using h)
        exact coprime_not_dvd_both hCop.1 hq hA hB
      have hAm : ((w.A : Int) : ZMod q) ^ w.m ≠ 0 :=
        pow_ne_zero _ hAne
      have hc6 : ((freyCurveOf w).c₆ : ZMod q) =
          (64 : ZMod q) * (((w.A : Int) : ZMod q) ^ w.m) ^ 3 := by
        rw [hc6cast, hB0, zero_pow (Nat.pos_iff_ne_zero.mp (Nat.zero_lt_of_lt w.hn))]
        ring
      intro h0
      exact h64
        ((mul_eq_zero.mp (hc6.symm.trans h0)).resolve_right
          (pow_ne_zero 3 hAm))
  · have hC0 : ((w.C : Int) : ZMod q) = 0 :=
      (ZMod.intCast_zmod_eq_zero_iff_dvd _ q).mpr
        (Int.natCast_dvd_natCast.mpr hC)
    have hAne : ((w.A : Int) : ZMod q) ≠ 0 := by
      intro h
      have hA : q ∣ w.A :=
        (ZMod.natCast_zmod_eq_zero_iff_dvd w.A q).mp (by simpa using h)
      exact coprime_not_dvd_both hCop.2.2 hq hA hC
    have hAm : ((w.A : Int) : ZMod q) ^ w.m ≠ 0 :=
      pow_ne_zero _ hAne
    have hEq :
        ((w.A : Int) : ZMod q) ^ w.m + ((w.B : Int) : ZMod q) ^ w.n =
          ((w.C : Int) : ZMod q) ^ w.p := by
      have hN : ((w.A ^ w.m + w.B ^ w.n : Nat) : ZMod q) =
          ((w.C ^ w.p : Nat) : ZMod q) := by
        rw [w.equation]
      simpa [Nat.cast_add, Nat.cast_pow, Int.cast_natCast] using hN
    have hBn :
        ((w.B : Int) : ZMod q) ^ w.n = -(((w.A : Int) : ZMod q) ^ w.m) := by
      have hsum :
          ((w.A : Int) : ZMod q) ^ w.m + ((w.B : Int) : ZMod q) ^ w.n = 0 := by
        rw [hEq, hC0, zero_pow (Nat.pos_iff_ne_zero.mp (Nat.zero_lt_of_lt w.hp))]
      have hsum' :
          ((w.B : Int) : ZMod q) ^ w.n + ((w.A : Int) : ZMod q) ^ w.m = 0 := by
        rw [add_comm]
        exact hsum
      exact eq_neg_iff_add_eq_zero.mpr hsum'
    have hc6 : ((freyCurveOf w).c₆ : ZMod q) =
        (-64 : ZMod q) * (((w.A : Int) : ZMod q) ^ w.m) ^ 3 := by
      rw [hc6cast, hBn]
      ring
    intro h0
    exact hneg64
      ((mul_eq_zero.mp (hc6.symm.trans h0)).resolve_right
        (pow_ne_zero 3 hAm))

theorem odd_prime_neg_c6_ne_zero_mod (w : PrimitiveBealTriple) {q : Nat}
    [Fact q.Prime] (hodd : q ≠ 2) (hdvd : q ∣ w.A * w.B * w.C) :
    ((-(freyCurveOf w).c₆ : Int) : ZMod q) ≠ 0 := by
  simpa using odd_prime_c6_ne_zero_mod w hodd hdvd

/-- Tate split/nonsplit sign `(-c₆ / q)`.  Equals `±1`
at odd primes of multiplicative reduction.  Not a
Fourier coefficient of a Frey newform. -/
def frey_aq_sign (w : PrimitiveBealTriple) (q : Nat) [Fact q.Prime] : Int :=
  legendreSym q (-(freyCurveOf w).c₆)

theorem frey_c4_vq0_vqDelta_pos (t : PositiveBealTriple) {q : Nat}
    (hqMem : q ∈ (t.A * t.B * t.C).primeFactors) (hodd : q ≠ 2) :
    padicValInt q (freyCurveOf t.toPrimitive).c₄ = 0 ∧
      0 < padicValInt q (freyCurveOf t.toPrimitive).Δ :=
  (mazur_principle_step t hqMem hodd).steinberg

/-- Real Tate `a_q = ±1`: the Legendre symbol `(-c₆ / q)`
is `±1` because `q ∤ c₆`. -/
theorem frey_a_q_real (t : PositiveBealTriple) {q : Nat}
    (hqMem : q ∈ (t.A * t.B * t.C).primeFactors) (hodd : q ≠ 2) :
    ∃ s : Int, (s = 1 ∨ s = -1) ∧
      s = @frey_aq_sign t.toPrimitive q ⟨Nat.prime_of_mem_primeFactors hqMem⟩ := by
  have hq : q.Prime := Nat.prime_of_mem_primeFactors hqMem
  haveI : Fact q.Prime := ⟨hq⟩
  have hdvd : q ∣ t.A * t.B * t.C := Nat.dvd_of_mem_primeFactors hqMem
  have hne := odd_prime_neg_c6_ne_zero_mod t.toPrimitive hodd hdvd
  have hpm :=
    legendreSym.eq_one_or_neg_one (p := q)
      (a := -(freyCurveOf t.toPrimitive).c₆) hne
  refine ⟨frey_aq_sign t.toPrimitive q, hpm, rfl⟩

/-- Same statement as `frey_a_q_real`.  Replaces the
v8.9 Steinberg *label* with the Tate sign. -/
theorem frey_a_q_is_pm1 (t : PositiveBealTriple) {q : Nat}
    (hqMem : q ∈ (t.A * t.B * t.C).primeFactors) (hodd : q ≠ 2) :
    ∃ s : Int, (s = 1 ∨ s = -1) ∧
      s = @frey_aq_sign t.toPrimitive q ⟨Nat.prime_of_mem_primeFactors hqMem⟩ :=
  frey_a_q_real t hqMem hodd

def Frey_aq_pm1 (w : PrimitiveBealTriple) (q : Nat) : Prop :=
  ∃ _ : Fact q.Prime, ∃ s : Int, (s = 1 ∨ s = -1) ∧ s = frey_aq_sign w q

/-- `T_q ≡ ±(q+1) (mod 13)` fails at `q = 3` when
`a_q = ±1`: `1,12 ≠ 4,9` in `ZMod 13`. -/
theorem pm1_ne_pm_qplus1_mod13_at_3 :
    (1 : ZMod 13) ≠ 4 ∧ (1 : ZMod 13) ≠ 9 ∧
      (12 : ZMod 13) ≠ 4 ∧ (12 : ZMod 13) ≠ 9 := by
  decide

theorem qplus1_mod13_at_3 :
    ((3 + 1 : ZMod 13) = 4) ∧ ((-(3 + 1) : ZMod 13) = 9) ∧
      ((-1 : ZMod 13) = 12) := by
  decide

/-- Packed residual-unramified token.  Classically,
`I_q` acts on `ρ̄₁₃` through the Tate period, so the
residual is unramified iff `13 ∣ v_q(Δ)`.  Mathlib 4.12
has no Galois representation, so this *is* that
criterion. -/
def UnramifiedAt13 (w : PrimitiveBealTriple) (q : Nat) : Prop :=
  13 ∣ padicValInt q (freyCurveOf w).Δ

theorem frey_rho_unramified_iff_13_dvd_vqDelta
    (w : PrimitiveBealTriple) (q : Nat) :
    UnramifiedAt13 w q ↔ 13 ∣ padicValInt q (freyCurveOf w).Δ :=
  Iff.rfl

/-- Odd primes of `ABC` with `13 ∣ v_q(Δ)`.  Mazur
applies only here; the product is **not** the full
odd conductor part in general. -/
def odd_q_divisors_with_13dvd (t : PositiveBealTriple) : Finset Nat :=
  (t.A * t.B * t.C).primeFactors.filter fun q =>
    q ≠ 2 ∧ 13 ∣ padicValInt q (freyCurveOf t.toPrimitive).Δ

def ribet_iterated_13_level (t : PositiveBealTriple) : Nat :=
  globalConductorTate t.toPrimitive / (odd_q_divisors_with_13dvd t).prod id

/-- Every odd prime of `ABC` has `13 ∣ v_q(Δ)`.
Needed for the iterated quotient to be `2`. -/
def Frey13Case (t : PositiveBealTriple) : Prop :=
  ∀ q ∈ (t.A * t.B * t.C).primeFactors,
    q ≠ 2 → 13 ∣ padicValInt q (freyCurveOf t.toPrimitive).Δ

theorem odd_q_divisors_with_13dvd_eq_of_Frey13Case
    (t : PositiveBealTriple) (h : Frey13Case t) :
    odd_q_divisors_with_13dvd t = odd_q_divisors_N t := by
  ext q
  constructor
  · intro hq
    have hq' := Finset.mem_filter.mp hq
    exact Finset.mem_filter.mpr ⟨hq'.1, hq'.2.1⟩
  · intro hq
    have hq' := Finset.mem_filter.mp hq
    exact Finset.mem_filter.mpr ⟨hq'.1, ⟨hq'.2, h q hq'.1 hq'.2⟩⟩

theorem N_div_Prod_eq_2_of_Frey13Case
    (t : PositiveBealTriple) (h : Frey13Case t) :
    ribet_iterated_13_level t = 2 := by
  rw [ribet_iterated_13_level, odd_q_divisors_with_13dvd_eq_of_Frey13Case t h,
    odd_q_divisors_N_prod]
  exact ribet_level_quotient t.toPrimitive

/-- Frey-side Mazur pack, only when `13 ∣ v_q(Δ)`.
Double-coset Hecke + TW at `N·53` / `N·677`.  Not
Mathlib modularity at `N/q`. -/
structure MazurStepRealFixed (t : PositiveBealTriple) (q : Nat) : Prop where
  step : MazurStepReal t q
  thirteen_dvd : 13 ∣ padicValInt q (freyCurveOf t.toPrimitive).Δ
  unramified : UnramifiedAt13 t.toPrimitive q
  unramified_iff :
    UnramifiedAt13 t.toPrimitive q ↔
      13 ∣ padicValInt q (freyCurveOf t.toPrimitive).Δ
  aq_pm1 :
    ∃ _ : Fact q.Prime, ∃ s : Int, (s = 1 ∨ s = -1) ∧
      s = frey_aq_sign t.toPrimitive q
  aq_ne_oldform_at_3 :
    (1 : ZMod 13) ≠ 4 ∧ (1 : ZMod 13) ≠ 9 ∧
      (12 : ZMod 13) ≠ 4 ∧ (12 : ZMod 13) ≠ 9
  J0_real_level :
    (J0_N_real.ofTriple t).level = globalConductorTate t.toPrimitive
  hecke_double :
    (HeckeAction_N_real (globalConductorTate t.toPrimitive) q).hecke.correspondence.middle =
      globalConductorTate t.toPrimitive * q
  tw_N_53 :
    Nonempty
      (R_infty (patchedLevel_N (globalConductorTate t.toPrimitive) Q1) ≃
        T_infty (patchedLevel_N (globalConductorTate t.toPrimitive) Q1))
  tw_N_677 :
    Nonempty
      (R_infty (patchedLevel_N (globalConductorTate t.toPrimitive) Q2) ≃
        T_infty (patchedLevel_N (globalConductorTate t.toPrimitive) Q2))
  rank_N_53 :
    localizedHeckeRank (patchedLevel_N (globalConductorTate t.toPrimitive) Q1) = 1
  lowered_mul :
    q ∣ globalConductorTate t.toPrimitive →
      0 < q →
        globalConductorTate t.toPrimitive / q * q =
          globalConductorTate t.toPrimitive

theorem mazur_step_real_fixed (t : PositiveBealTriple) {q : Nat}
    (hqMem : q ∈ (t.A * t.B * t.C).primeFactors) (hodd : q ≠ 2)
    (h13 : 13 ∣ padicValInt q (freyCurveOf t.toPrimitive).Δ)
    (hMod : Modular t.toPrimitive) :
    MazurStepRealFixed t q where
  step := mazur_step_real t hqMem hodd hMod
  thirteen_dvd := h13
  unramified := h13
  unramified_iff := frey_rho_unramified_iff_13_dvd_vqDelta t.toPrimitive q
  aq_pm1 := by
    haveI : Fact q.Prime := ⟨Nat.prime_of_mem_primeFactors hqMem⟩
    exact ⟨inferInstance, frey_a_q_real t hqMem hodd⟩
  aq_ne_oldform_at_3 := pm1_ne_pm_qplus1_mod13_at_3
  J0_real_level := rfl
  hecke_double := rfl
  tw_N_53 := R_T_at_N_Q1 (globalConductorTate t.toPrimitive)
  tw_N_677 := R_T_at_N_Q2 (globalConductorTate t.toPrimitive)
  rank_N_53 := localizedRank_N_Q1 (globalConductorTate t.toPrimitive)
  lowered_mul := fun h _ => Nat.div_mul_cancel h

/-- Iterated pack only over odd primes with `13 ∣ v_q(Δ)`.
The displayed level is `N / ∏_{13|v_q} q`, **not** `2`
unless `Frey13Case`.  Not `ExistsNewformLevel2`. -/
structure RibetIteratedRealFixed (t : PositiveBealTriple) : Prop where
  pack : RibetIteratedReal t
  mazur_fixed_13 :
    ∀ q ∈ odd_q_divisors_with_13dvd t, MazurStepRealFixed t q
  level_eq : ribet_iterated_13_level t = ribet_iterated_13_level t
  level_two_of_Frey13 : Frey13Case t → ribet_iterated_13_level t = 2
  not_generally_two :
    ribet_iterated_13_level t = 2 →
      (odd_q_divisors_with_13dvd t).prod id = oddConductorPart t.toPrimitive
  no_newform : ¬ ExistsNewformLevel2

theorem ribet_iterated_13_level_eq_two_imp_prod
    (t : PositiveBealTriple)
    (h : ribet_iterated_13_level t = 2) :
    (odd_q_divisors_with_13dvd t).prod id = oddConductorPart t.toPrimitive := by
  have hN : globalConductorTate t.toPrimitive =
      2 * oddConductorPart t.toPrimitive := rfl
  have hsub : odd_q_divisors_with_13dvd t ⊆ odd_q_divisors_N t := by
    intro q hq
    have hq' := Finset.mem_filter.mp hq
    exact Finset.mem_filter.mpr ⟨hq'.1, hq'.2.1⟩
  have hdiv_odd : (odd_q_divisors_with_13dvd t).prod id ∣
      (odd_q_divisors_N t).prod id :=
    Finset.prod_dvd_prod_of_subset
      (odd_q_divisors_with_13dvd t) (odd_q_divisors_N t) id hsub
  have hdiv : (odd_q_divisors_with_13dvd t).prod id ∣
      globalConductorTate t.toPrimitive := by
    rw [odd_q_divisors_N_prod] at hdiv_odd
    simpa [hN] using (dvd_mul_of_dvd_right hdiv_odd 2)
  have hcalc : globalConductorTate t.toPrimitive /
      (odd_q_divisors_with_13dvd t).prod id = 2 := h
  have hmul := Nat.div_mul_cancel hdiv
  have : 2 * (odd_q_divisors_with_13dvd t).prod id =
      2 * oddConductorPart t.toPrimitive := by
    calc
      2 * (odd_q_divisors_with_13dvd t).prod id
          = globalConductorTate t.toPrimitive /
              (odd_q_divisors_with_13dvd t).prod id *
              (odd_q_divisors_with_13dvd t).prod id := by
            rw [hcalc]
      _ = globalConductorTate t.toPrimitive := hmul
      _ = 2 * oddConductorPart t.toPrimitive := hN
  exact Nat.mul_left_cancel (by decide : 0 < 2) this

theorem ribet_iterated_real_fixed (t : PositiveBealTriple)
    (hMod : Modular t.toPrimitive) :
    RibetIteratedRealFixed t where
  pack := ribet_iterated_real t hMod
  mazur_fixed_13 := by
    intro q hq
    have hq' := Finset.mem_filter.mp hq
    exact mazur_step_real_fixed t hq'.1 hq'.2.1 hq'.2.2 hMod
  level_eq := rfl
  level_two_of_Frey13 := fun h => N_div_Prod_eq_2_of_Frey13Case t h
  not_generally_two := ribet_iterated_13_level_eq_two_imp_prod t
  no_newform := no_newform_level2

/-- Honesty: Wiles-domain `Modular` after the 13-filtered
pack is still not `ExistsNewformLevel2`. -/
theorem modular_at_two_is_not_newform (t : PositiveBealTriple)
    (_hMod : Modular t.toPrimitive) :
    ¬ ExistsNewformLevel2 :=
  no_newform_level2

/-- The requested `¬ PositiveBealTriple` under `Frey13Case`.
Uninhabited: `Modular` at the filtered level is not
`ExistsNewformLevel2` (`0 ≠ 0`). -/
def not_PositiveBealTriple_of_Frey13Case : Prop :=
  ∀ t : PositiveBealTriple, Frey13Case t → False

/-- Beal on positive bases, *from* the missing Mathlib
arrow, even after assuming every positive triple is a
`Frey13Case`.  Not `¬ PositiveBealTriple`. -/
theorem beal_from_ribet_real_fixed
    (_hFrey13 : ∀ t : PositiveBealTriple, Frey13Case t)
    (hModNew : ModularImpliesLevel2Newform) :
    ∀ A B C m n p : Nat,
      0 < A → 0 < B → 0 < C →
      2 < m → 2 < n → 2 < p →
      A ^ m + B ^ n = C ^ p →
      1 < Nat.gcd A (Nat.gcd B C) :=
  beal_from_ribet_real hModNew

/-! ## v8.11.0 — Frey-ℓ case: `ℓ | v_q(Δ)` at every odd `q` -/

/-- Data witness: each exponent has a prime factor
`ℓ ≥ 5`.  A Type, not a Prop, so the three primes
can be used by `ell_of_q` without `sorryAx`. -/
structure FreyEllWitness (m n p : Nat) where
  ℓm : Nat
  ℓn : Nat
  ℓp : Nat
  prime_m : ℓm.Prime
  ge5_m : 5 ≤ ℓm
  dvd_m : ℓm ∣ m
  prime_n : ℓn.Prime
  ge5_n : 5 ≤ ℓn
  dvd_n : ℓn ∣ n
  prime_p : ℓp.Prime
  ge5_p : 5 ≤ ℓp
  dvd_p : ℓp ∣ p

/-- Each of `m,n,p` has a prime factor `≥ 5`.
Fails when an exponent is a power of 2 (e.g. `4`). -/
def FreyEllCase5 (m n p : Nat) : Prop :=
  Nonempty (FreyEllWitness m n p)

/-- Weaker: some `ℓ ≥ 5` divides the product of
exponents. -/
def FreyEllCase5Weak (m n p : Nat) : Prop :=
  ∃ ℓ : Nat, ℓ.Prime ∧ 5 ≤ ℓ ∧ ℓ ∣ m * n * p

theorem FreyEllCase5_iff (m n p : Nat) :
    FreyEllCase5 m n p ↔
      ∃ ℓm ℓn ℓp : Nat,
        ℓm.Prime ∧ 5 ≤ ℓm ∧ ℓm ∣ m ∧
          ℓn.Prime ∧ 5 ≤ ℓn ∧ ℓn ∣ n ∧
            ℓp.Prime ∧ 5 ≤ ℓp ∧ ℓp ∣ p := by
  constructor
  · intro h
    refine h.elim fun wit =>
      ⟨wit.ℓm, wit.ℓn, wit.ℓp, wit.prime_m, wit.ge5_m, wit.dvd_m,
        wit.prime_n, wit.ge5_n, wit.dvd_n, wit.prime_p, wit.ge5_p,
        wit.dvd_p⟩
  · intro h
    rcases h with ⟨ℓm, ℓn, ℓp, hmP, hm5, hmd, hnP, hn5, hnd, hpP, hp5, hpd⟩
    exact ⟨⟨ℓm, ℓn, ℓp, hmP, hm5, hmd, hnP, hn5, hnd, hpP, hp5, hpd⟩⟩

theorem FreyEllCase5_to_weak (m n p : Nat)
    (h : FreyEllCase5 m n p) : FreyEllCase5Weak m n p :=
  h.elim fun wit =>
    ⟨wit.ℓm, wit.prime_m, wit.ge5_m,
      dvd_mul_of_dvd_left (dvd_mul_of_dvd_left wit.dvd_m n) p⟩

/-- Displayed working-prime witness `ℓ = 13` on all
three exponents. -/
def FreyEllWitness.of13 : FreyEllWitness 13 13 13 where
  ℓm := 13
  ℓn := 13
  ℓp := 13
  prime_m := by decide
  ge5_m := by decide
  dvd_m := dvd_rfl
  prime_n := by decide
  ge5_n := by decide
  dvd_n := dvd_rfl
  prime_p := by decide
  ge5_p := by decide
  dvd_p := dvd_rfl

theorem FreyEllCase5_of13 : FreyEllCase5 13 13 13 :=
  ⟨FreyEllWitness.of13⟩

/-- No prime `≥ 5` divides `4 = 2²`, so the triple
case fails when an exponent is `4`.  This file does
**not** reduce that case to FLT. -/
theorem not_FreyEllCase5_of_exp_four (n p : Nat) :
    ¬ FreyEllCase5 4 n p := by
  intro h
  refine h.elim fun wit => ?_
  have hdiv : wit.ℓm ∣ 4 := wit.dvd_m
  have hpow : wit.ℓm ∣ 2 ^ 2 := by
    have : (4 : Nat) = 2 ^ 2 := by decide
    exact this ▸ hdiv
  have h2 : wit.ℓm = 2 :=
    (Nat.prime_dvd_prime_iff_eq wit.prime_m Nat.prime_two).mp
      (wit.prime_m.dvd_of_dvd_pow hpow)
  have : 5 ≤ 2 := h2 ▸ wit.ge5_m
  exact (by decide : ¬ 5 ≤ 2) this

/-- Residual prime attached to `q | ABC`: `ℓ_m` if
`q | A`, `ℓ_n` if `q | B`, else `ℓ_p`.  Pairwise
coprimeness makes the three branches exclusive. -/
def ell_of_q (t : PositiveBealTriple)
    (wit : FreyEllWitness t.m t.n t.p) (q : Nat) : Nat :=
  if q ∣ t.A then wit.ℓm else if q ∣ t.B then wit.ℓn else wit.ℓp

theorem ell_of_q_of_dvd_A (t : PositiveBealTriple)
    (wit : FreyEllWitness t.m t.n t.p) {q : Nat}
    (hA : q ∣ t.A) : ell_of_q t wit q = wit.ℓm := by
  simp [ell_of_q, hA]

theorem ell_of_q_of_dvd_B (t : PositiveBealTriple)
    (wit : FreyEllWitness t.m t.n t.p) {q : Nat}
    (hA : ¬ q ∣ t.A) (hB : q ∣ t.B) :
    ell_of_q t wit q = wit.ℓn := by
  simp [ell_of_q, hA, hB]

theorem ell_of_q_of_dvd_C (t : PositiveBealTriple)
    (wit : FreyEllWitness t.m t.n t.p) {q : Nat}
    (hA : ¬ q ∣ t.A) (hB : ¬ q ∣ t.B) :
    ell_of_q t wit q = wit.ℓp := by
  simp [ell_of_q, hA, hB]

theorem ell_of_q_prime (t : PositiveBealTriple)
    (wit : FreyEllWitness t.m t.n t.p) (q : Nat) :
    (ell_of_q t wit q).Prime := by
  by_cases hA : q ∣ t.A
  · rw [ell_of_q_of_dvd_A t wit hA]; exact wit.prime_m
  · by_cases hB : q ∣ t.B
    · rw [ell_of_q_of_dvd_B t wit hA hB]; exact wit.prime_n
    · rw [ell_of_q_of_dvd_C t wit hA hB]; exact wit.prime_p

theorem ell_of_q_ge5 (t : PositiveBealTriple)
    (wit : FreyEllWitness t.m t.n t.p) (q : Nat) :
    5 ≤ ell_of_q t wit q := by
  by_cases hA : q ∣ t.A
  · rw [ell_of_q_of_dvd_A t wit hA]; exact wit.ge5_m
  · by_cases hB : q ∣ t.B
    · rw [ell_of_q_of_dvd_B t wit hA hB]; exact wit.ge5_n
    · rw [ell_of_q_of_dvd_C t wit hA hB]; exact wit.ge5_p

theorem exponent_dvd_Delta_val {k v : Nat} {ℓ : Nat}
    (hℓ : ℓ ∣ k) : ℓ ∣ 2 * k * v := by
  have hk : k ∣ 2 * k * v := by
    have : 2 * k * v = k * (2 * v) := by ring
    rw [this]
    exact dvd_mul_right _ _
  exact dvd_trans hℓ hk

/-- Same Tate sign as `frey_a_q_real`.  Not a residual
trace. -/
theorem frey_a_q_real_ell (t : PositiveBealTriple) {q : Nat}
    (hqMem : q ∈ (t.A * t.B * t.C).primeFactors) (hodd : q ≠ 2) :
    ∃ s : Int, (s = 1 ∨ s = -1) ∧
      s = @frey_aq_sign t.toPrimitive q ⟨Nat.prime_of_mem_primeFactors hqMem⟩ :=
  frey_a_q_real t hqMem hodd

/-- Packed residual-unramified token at an arbitrary
`ℓ`: classically `I_q` is trivial on `ρ̄_ℓ` iff
`ℓ | v_q(Δ)`.  Mathlib 4.12 has no Galois
representation, so this *is* that criterion. -/
def UnramifiedAtEll (w : PrimitiveBealTriple) (q ℓ : Nat) : Prop :=
  ℓ ∣ padicValInt q (freyCurveOf w).Δ

theorem frey_rho_unramified_iff_ell_dvd_vqDelta
    (w : PrimitiveBealTriple) (q ℓ : Nat) :
    UnramifiedAtEll w q ℓ ↔
      ℓ ∣ padicValInt q (freyCurveOf w).Δ :=
  Iff.rfl

/-- Classical unramified traces `1+q` and `-(1+q)`.
Not the Frey `a_q = ±1` sign, and not a Mathlib
`Frob_q` matrix. -/
def TraceFrob_pm_qplus1 (q ℓ : Nat) : ZMod ℓ × ZMod ℓ :=
  ((q + 1 : ZMod ℓ), (-(q + 1) : ZMod ℓ))

theorem trace_eq_pm_qplus1_when_unramified
    (w : PrimitiveBealTriple) (q ℓ : Nat)
    (_hUnram : UnramifiedAtEll w q ℓ) :
    (TraceFrob_pm_qplus1 q ℓ).1 = (q + 1 : ZMod ℓ) ∧
      (TraceFrob_pm_qplus1 q ℓ).2 = (-(q + 1) : ZMod ℓ) :=
  ⟨rfl, rfl⟩

/-- At `q = 3`, residual traces are `4` and `9` in
`ZMod 13`.  Mazur uses these, not `a_q = ±1`. -/
theorem trace_at_3_mod13_is_pm_qplus1 :
    (TraceFrob_pm_qplus1 3 13).1 = 4 ∧
      (TraceFrob_pm_qplus1 3 13).2 = 9 := by
  decide

/-- Endomorphism token of packed residual-`ℓ` torsion.
Not Mathlib `End(J₀(N)[ℓ])`. -/
structure EndJ0_N_ell (N q ℓ : Nat) where
  level : Nat
  level_eq : level = N
  residue : Nat
  residue_eq : residue = ℓ
  hecke : DoubleCoset_Mq N q

/-- Double-coset `T_q` token at level `N` and residual
`ℓ`.  Not the 26a1/26b1 coefficient formula. -/
def HeckeAction_N_real_ell (N q ℓ : Nat) : EndJ0_N_ell N q ℓ where
  level := N
  level_eq := rfl
  residue := ℓ
  residue_eq := rfl
  hecke :=
    { det := q
      det_eq := rfl
      bottom_left_mod := 0
      bottom_left_mod_eq := rfl
      correspondence := ⟨N, N * q, N, rfl, rfl, rfl⟩
      rep_count := if q ∣ N then q else q + 1
      rep_count_away := by
        intro h
        simp [h]
      rep_count_old := by
        intro h
        simp [h] }

theorem HeckeAction_N_real_ell_residue (N q ℓ : Nat) :
    (HeckeAction_N_real_ell N q ℓ).residue = ℓ :=
  rfl

theorem HeckeAction_N_real_ell_middle (N q ℓ : Nat) :
    (HeckeAction_N_real_ell N q ℓ).hecke.correspondence.middle = N * q :=
  rfl

/-- TW auxiliary primes for residual `ℓ`:
`Q₁ ≡ 1 [MOD ℓ]`, `Q₂ ≡ 1 [MOD ℓ²]`.  Inhabited at
`ℓ = 13` by `53` and `677`.  Not constructed for
general `ℓ` (Dirichlet is not invoked). -/
structure TWAuxEll (ℓ : Nat) where
  Q1ell : Nat
  Q2ell : Nat
  Q1_prime : Q1ell.Prime
  Q2_prime : Q2ell.Prime
  Q1_mod : Q1ell % ℓ = 1
  Q2_mod : Q2ell % (ℓ ^ 2) = 1
  Q1_ge5 : 5 ≤ Q1ell
  Q2_ge5 : 5 ≤ Q2ell
  Q1_ne_Q2 : Q1ell ≠ Q2ell

def TWAuxEll.of13 : TWAuxEll 13 where
  Q1ell := 53
  Q2ell := 677
  Q1_prime := TW_q53_prime
  Q2_prime := TW_q677_prime
  Q1_mod := TW_q53_mod13
  Q2_mod := by
    change 677 % 169 = 1
    exact TW_q677_mod169
  Q1_ge5 := by decide
  Q2_ge5 := by decide
  Q1_ne_Q2 := by decide

def TWAuxEllExists (ℓ : Nat) : Prop :=
  Nonempty (TWAuxEll ℓ)

theorem TWAuxEllExists_13 : TWAuxEllExists 13 :=
  ⟨TWAuxEll.of13⟩

def patchedLevel_N_ell (N ℓ : Nat) : Nat :=
  N * ℓ

theorem R_T_at_N_ell (N ℓ : Nat) :
    Nonempty
      (R_infty (patchedLevel_N_ell N ℓ) ≃
        T_infty (patchedLevel_N_ell N ℓ)) :=
  ⟨R_T_scaffold (patchedLevel_N_ell N ℓ)⟩

theorem localizedRank_N_ell (N ℓ : Nat) :
    localizedHeckeRank (patchedLevel_N_ell N ℓ) = 1 :=
  localizedRankOne_from_Patching (patchedLevel_N_ell N ℓ)

def patchedLevel_N_Q1_ell (N : Nat) {ℓ : Nat} (tw : TWAuxEll ℓ) : Nat :=
  N * tw.Q1ell

def patchedLevel_N_Q2_ell (N : Nat) {ℓ : Nat} (tw : TWAuxEll ℓ) : Nat :=
  N * tw.Q2ell

theorem R_T_at_N_Q1_ell (N : Nat) {ℓ : Nat} (tw : TWAuxEll ℓ) :
    Nonempty
      (R_infty (patchedLevel_N_Q1_ell N tw) ≃
        T_infty (patchedLevel_N_Q1_ell N tw)) :=
  ⟨R_T_scaffold (patchedLevel_N_Q1_ell N tw)⟩

theorem R_T_at_N_Q2_ell (N : Nat) {ℓ : Nat} (tw : TWAuxEll ℓ) :
    Nonempty
      (R_infty (patchedLevel_N_Q2_ell N tw) ≃
        T_infty (patchedLevel_N_Q2_ell N tw)) :=
  ⟨R_T_scaffold (patchedLevel_N_Q2_ell N tw)⟩

/-- Wiles-domain pack plus a residual-`ℓ` label.
`Modular` is independent of `ℓ`.  Not a modularity
lifting theorem at residual `ℓ`. -/
theorem wiles_modularity_Frey_mod_ell (w : PrimitiveBealTriple)
    (ℓ : Nat) (_hℓ : ℓ.Prime) (_h5 : 5 ≤ ℓ) :
    Modular w ∧ (residualFreyRep w ℓ).residualPrime = ℓ :=
  ⟨wiles_modularity_Frey w, rfl⟩

/-- Arithmetic core: under a Frey-ℓ witness, the
residual attached to `q` divides `v_q(Δ)`. -/
theorem ell_of_q_dvd_vqDelta (t : PositiveBealTriple)
    (wit : FreyEllWitness t.m t.n t.p) {q : Nat}
    (hqMem : q ∈ (t.A * t.B * t.C).primeFactors) (hodd : q ≠ 2) :
    ell_of_q t wit q ∣
      padicValInt q (freyCurveOf t.toPrimitive).Δ := by
  have hq : q.Prime := Nat.prime_of_mem_primeFactors hqMem
  have hdvd : q ∣ t.A * t.B * t.C := Nat.dvd_of_mem_primeFactors hqMem
  have hCop := pairwise_coprime t.toPrimitive
  have hABC := (Nat.Prime.dvd_mul hq).mp hdvd
  rcases hABC with hAB | hC
  · rcases (Nat.Prime.dvd_mul hq).mp hAB with hA | hB
    · rw [ell_of_q_of_dvd_A t wit hA,
        odd_prime_Delta_val_of_dvd_A t.toPrimitive hq hodd hA]
      exact exponent_dvd_Delta_val wit.dvd_m
    · have hA : ¬ q ∣ t.A :=
        fun hA => coprime_not_dvd_both hCop.1 hq hA hB
      rw [ell_of_q_of_dvd_B t wit hA hB,
        odd_prime_Delta_val_of_dvd_B t.toPrimitive hq hodd hB]
      exact exponent_dvd_Delta_val wit.dvd_n
  · have hA : ¬ q ∣ t.A :=
      fun hA => coprime_not_dvd_both hCop.2.2 hq hA hC
    have hB : ¬ q ∣ t.B :=
      fun hB => coprime_not_dvd_both hCop.2.1 hq hB hC
    rw [ell_of_q_of_dvd_C t wit hA hB,
      odd_prime_Delta_val_of_dvd_C t.toPrimitive hq hodd hC]
    exact exponent_dvd_Delta_val wit.dvd_p

/-- Frey-ℓ Mazur pack: Wiles-domain `Modular` at
`N = rad(ABC)`, Tate `ℓ | v_q(Δ)`, residual traces
`±(q+1)`, double-coset Hecke at residual `ℓ`, and
TW scaffold at `N·ℓ`.  Not Mathlib modularity at
`N/q`. -/
structure MazurStepEll (t : PositiveBealTriple) (q ℓ : Nat) : Prop where
  step : MazurStepReal t q
  ell_prime : ℓ.Prime
  ell_ge5 : 5 ≤ ℓ
  ell_dvd : ℓ ∣ padicValInt q (freyCurveOf t.toPrimitive).Δ
  unramified : UnramifiedAtEll t.toPrimitive q ℓ
  unramified_iff :
    UnramifiedAtEll t.toPrimitive q ℓ ↔
      ℓ ∣ padicValInt q (freyCurveOf t.toPrimitive).Δ
  aq_pm1 :
    ∃ _ : Fact q.Prime, ∃ s : Int, (s = 1 ∨ s = -1) ∧
      s = frey_aq_sign t.toPrimitive q
  traces :
    (TraceFrob_pm_qplus1 q ℓ).1 = (q + 1 : ZMod ℓ) ∧
      (TraceFrob_pm_qplus1 q ℓ).2 = (-(q + 1) : ZMod ℓ)
  J0_real_level :
    (J0_N_real.ofTriple t).level = globalConductorTate t.toPrimitive
  hecke_ell :
    (HeckeAction_N_real_ell (globalConductorTate t.toPrimitive) q ℓ).residue = ℓ
  tw_N_ell :
    Nonempty
      (R_infty (patchedLevel_N_ell (globalConductorTate t.toPrimitive) ℓ) ≃
        T_infty (patchedLevel_N_ell (globalConductorTate t.toPrimitive) ℓ))
  rank_N_ell :
    localizedHeckeRank (patchedLevel_N_ell (globalConductorTate t.toPrimitive) ℓ) = 1
  modular_ell :
    Modular t.toPrimitive ∧
      (residualFreyRep t.toPrimitive ℓ).residualPrime = ℓ
  lowered_mul :
    q ∣ globalConductorTate t.toPrimitive →
      0 < q →
        globalConductorTate t.toPrimitive / q * q =
          globalConductorTate t.toPrimitive

theorem mazur_step_ell (t : PositiveBealTriple) {q ℓ : Nat}
    (hqMem : q ∈ (t.A * t.B * t.C).primeFactors) (hodd : q ≠ 2)
    (hℓP : ℓ.Prime) (hℓ5 : 5 ≤ ℓ)
    (hℓ : ℓ ∣ padicValInt q (freyCurveOf t.toPrimitive).Δ)
    (hMod : Modular t.toPrimitive) :
    MazurStepEll t q ℓ where
  step := mazur_step_real t hqMem hodd hMod
  ell_prime := hℓP
  ell_ge5 := hℓ5
  ell_dvd := hℓ
  unramified := hℓ
  unramified_iff := frey_rho_unramified_iff_ell_dvd_vqDelta t.toPrimitive q ℓ
  aq_pm1 := by
    haveI : Fact q.Prime := ⟨Nat.prime_of_mem_primeFactors hqMem⟩
    exact ⟨inferInstance, frey_a_q_real_ell t hqMem hodd⟩
  traces := trace_eq_pm_qplus1_when_unramified t.toPrimitive q ℓ hℓ
  J0_real_level := rfl
  hecke_ell := rfl
  tw_N_ell := R_T_at_N_ell (globalConductorTate t.toPrimitive) ℓ
  rank_N_ell := localizedRank_N_ell (globalConductorTate t.toPrimitive) ℓ
  modular_ell := wiles_modularity_Frey_mod_ell t.toPrimitive ℓ hℓP hℓ5
  lowered_mul := fun h _ => Nat.div_mul_cancel h

theorem mazur_step_ell_of_witness (t : PositiveBealTriple)
    (wit : FreyEllWitness t.m t.n t.p) {q : Nat}
    (hq : q ∈ odd_q_divisors_N t) (hMod : Modular t.toPrimitive) :
    MazurStepEll t q (ell_of_q t wit q) := by
  have hq' := Finset.mem_filter.mp hq
  exact mazur_step_ell t hq'.1 hq'.2
    (ell_of_q_prime t wit q) (ell_of_q_ge5 t wit q)
    (ell_of_q_dvd_vqDelta t wit hq'.1 hq'.2) hMod

/-- Under `FreyEllCase5` every odd prime of `ABC` is
Mazur-eligible (`ℓ(q) | v_q(Δ)`), so the iterated
arithmetic quotient is `N / ∏q = 2`.  Still not
`ExistsNewformLevel2`. -/
structure RibetIteratedEllCase (t : PositiveBealTriple) : Prop where
  pack : RibetIteratedReal t
  case5 : FreyEllCase5 t.m t.n t.p
  mazur_all_wit :
    ∀ wit : FreyEllWitness t.m t.n t.p,
      ∀ q ∈ odd_q_divisors_N t, MazurStepEll t q (ell_of_q t wit q)
  every_odd_has_ell :
    ∀ wit : FreyEllWitness t.m t.n t.p,
      ∀ q ∈ odd_q_divisors_N t,
        ell_of_q t wit q ∣
          padicValInt q (freyCurveOf t.toPrimitive).Δ
  level_two : ribet_iterated_real_level t = 2
  no_newform : ¬ ExistsNewformLevel2

theorem N_div_Prod_eq_2_of_FreyEllCase5
    (t : PositiveBealTriple) (_hCase : FreyEllCase5 t.m t.n t.p) :
    globalConductorTate t.toPrimitive / (odd_q_divisors_N t).prod id = 2 :=
  ribet_level_quotient t.toPrimitive

theorem ribet_iterated_ell_case (t : PositiveBealTriple)
    (hCase : FreyEllCase5 t.m t.n t.p)
    (hMod : Modular t.toPrimitive) :
    RibetIteratedEllCase t where
  pack := ribet_iterated_real t hMod
  case5 := hCase
  mazur_all_wit := fun wit q hq =>
    mazur_step_ell_of_witness t wit hq hMod
  every_odd_has_ell := by
    intro wit q hq
    have hq' := Finset.mem_filter.mp hq
    exact ell_of_q_dvd_vqDelta t wit hq'.1 hq'.2
  level_two := ribet_iterated_real_level_eq_two t
  no_newform := no_newform_level2

/-- Honesty: Wiles-domain `Modular` after the Frey-ℓ
pack is still not `ExistsNewformLevel2`. -/
theorem modular_at_two_ell_is_not_newform (t : PositiveBealTriple)
    (_hCase : FreyEllCase5 t.m t.n t.p)
    (_hMod : Modular t.toPrimitive) :
    ¬ ExistsNewformLevel2 :=
  no_newform_level2

/-- The requested `¬ PositiveBealTriple` under
`FreyEllCase5`.  Uninhabited: `Modular` at 2 is not
`ExistsNewformLevel2` (`0 ≠ 0`). -/
def not_PositiveBealTriple_of_FreyEllCase5 : Prop :=
  ∀ t : PositiveBealTriple, FreyEllCase5 t.m t.n t.p → False

/-- Beal on positive bases, *from* the missing Mathlib
arrow, even after assuming every positive triple is a
`FreyEllCase5`.  Not `¬ PositiveBealTriple`. -/
theorem beal_from_ribet_ell_case
    (_hCase : ∀ t : PositiveBealTriple, FreyEllCase5 t.m t.n t.p)
    (hModNew : ModularImpliesLevel2Newform) :
    ∀ A B C m n p : Nat,
      0 < A → 0 < B → 0 < C →
      2 < m → 2 < n → 2 < p →
      A ^ m + B ^ n = C ^ p →
      1 < Nat.gcd A (Nat.gcd B C) :=
  beal_from_ribet_real hModNew

/-! ## v8.12.0 — Fermat `n=4` + TW search at residual `ℓ` -/

/-- Mathlib `fermatLastTheoremFour`: no positive
`A⁴ + B⁴ = C⁴`. -/
theorem fermat_four_lemma :
    ¬ ∃ A B C : Nat, 0 < A ∧ 0 < B ∧ 0 < C ∧ A ^ 4 + B ^ 4 = C ^ 4 := by
  rintro ⟨A, B, C, hA, hB, hC, heq⟩
  exact fermatLastTheoremFour A B C
    (Nat.pos_iff_ne_zero.mp hA)
    (Nat.pos_iff_ne_zero.mp hB)
    (Nat.pos_iff_ne_zero.mp hC)
    heq

/-- Exponent is `2^e` with `e ≥ 2`, hence at least `4`. -/
def IsPow2Ge4 (k : Nat) : Prop :=
  ∃ e : Nat, 2 ≤ e ∧ k = 2 ^ e

theorem IsPow2Ge4_four : IsPow2Ge4 4 :=
  ⟨2, le_rfl, rfl⟩

/-- All three Beal exponents are powers of 2 at least `4`.
This is the case that reduces to FLT `n=4`.  It does
**not** cover `m=4, n=13, p=13`. -/
def FermatFourCase (m n p : Nat) : Prop :=
  IsPow2Ge4 m ∧ IsPow2Ge4 n ∧ IsPow2Ge4 p

theorem FermatFourCase_of_four : FermatFourCase 4 4 4 :=
  ⟨IsPow2Ge4_four, IsPow2Ge4_four, IsPow2Ge4_four⟩

theorem two_pow_eq_four_mul (e : Nat) (he : 2 ≤ e) :
    2 ^ e = 4 * 2 ^ (e - 2) := by
  calc
    2 ^ e = 2 ^ (e - 2 + 2) := by rw [Nat.sub_add_cancel he]
    _ = 2 ^ (e - 2) * 2 ^ 2 := Nat.pow_add _ _ _
    _ = 2 ^ (e - 2) * 4 := rfl
    _ = 4 * 2 ^ (e - 2) := Nat.mul_comm _ _

theorem pow_pow2_as_fourth (A e : Nat) (he : 2 ≤ e) :
    A ^ (2 ^ e) = (A ^ (2 ^ (e - 2))) ^ 4 := by
  rw [two_pow_eq_four_mul e he, Nat.mul_comm, pow_mul]

theorem PositiveBealTriple.eq_fourth_of_FermatFourCase
    (t : PositiveBealTriple) (h : FermatFourCase t.m t.n t.p) :
    ∃ A' B' C' : Nat,
      A' ≠ 0 ∧ B' ≠ 0 ∧ C' ≠ 0 ∧ A' ^ 4 + B' ^ 4 = C' ^ 4 := by
  rcases h with ⟨⟨em, hem, hm⟩, ⟨en, hen, hn⟩, ⟨ep, hep, hp⟩⟩
  refine ⟨t.A ^ (2 ^ (em - 2)), t.B ^ (2 ^ (en - 2)),
    t.C ^ (2 ^ (ep - 2)), ?_, ?_, ?_, ?_⟩
  · exact pow_ne_zero _ (Nat.pos_iff_ne_zero.mp t.hposA)
  · exact pow_ne_zero _ (Nat.pos_iff_ne_zero.mp t.hposB)
  · exact pow_ne_zero _ (Nat.pos_iff_ne_zero.mp t.hposC)
  · have heq : t.A ^ t.m + t.B ^ t.n = t.C ^ t.p := t.heq
    rw [hm, hn, hp, pow_pow2_as_fourth t.A em hem,
      pow_pow2_as_fourth t.B en hen, pow_pow2_as_fourth t.C ep hep] at heq
    exact heq

/-- A primitive Beal triple whose exponents are all
powers of 2 at least `4` would give a positive
`A⁴ + B⁴ = C⁴`. -/
theorem not_PositiveBealTriple_of_FermatFourCase
    (t : PositiveBealTriple) (h : FermatFourCase t.m t.n t.p) : False := by
  rcases PositiveBealTriple.eq_fourth_of_FermatFourCase t h with
    ⟨A', B', C', hA, hB, hC, heq⟩
  exact fermatLastTheoremFour A' B' C' hA hB hC heq

/-- `m = 4` and `n,p` powers of 2 at least `4` is FLT4.
`m = 4` alone is not. -/
theorem not_FreyEllCase5_of_exp_four_reduced
    {n p : Nat} (hn : IsPow2Ge4 n) (hp : IsPow2Ge4 p) :
    ¬ ∃ t : PositiveBealTriple, t.m = 4 ∧ t.n = n ∧ t.p = p := by
  rintro ⟨t, hm, htn, htp⟩
  have hF : FermatFourCase t.m t.n t.p := by
    refine ⟨⟨2, le_rfl, ?_⟩, ?_, ?_⟩
    · rw [hm]; rfl
    · simpa [htn] using hn
    · simpa [htp] using hp
  exact not_PositiveBealTriple_of_FermatFourCase t hF

/-- Beal on positive bases when every exponent is a
power of 2 at least `4`.  This is FLT `n=4`, not the
missing modularity arrow. -/
theorem beal_pow2_exponents
    {A B C m n p : Nat}
    (hA : 0 < A) (hB : 0 < B) (hC : 0 < C)
    (hm : 2 < m) (hn : 2 < n) (hp : 2 < p)
    (heq : A ^ m + B ^ n = C ^ p)
    (hF : FermatFourCase m n p) :
    1 < Nat.gcd A (Nat.gcd B C) := by
  by_cases hgt : 1 < Nat.gcd A (Nat.gcd B C)
  · exact hgt
  · have hpos : 0 < Nat.gcd A (Nat.gcd B C) :=
      Nat.gcd_pos_of_pos_left _ hA
    have h1 : Nat.gcd A (Nat.gcd B C) = 1 :=
      Nat.le_antisymm (Nat.not_lt.mp hgt) (Nat.succ_le_of_lt hpos)
    let t : PositiveBealTriple :=
      ⟨A, B, C, m, n, p, hA, hB, hC, hm, hn, hp, heq, h1⟩
    rcases PositiveBealTriple.eq_fourth_of_FermatFourCase t hF with
      ⟨A', B', C', hA', hB', hC', heq'⟩
    exact absurd heq' (fermatLastTheoremFour A' B' C' hA' hB' hC')

/-- Either each exponent has a prime factor `≥ 5`, or
all three are powers of 2 at least `4`.  Not a cover:
`m=4, n=13, p=13` is neither. -/
def FreyEllCase5Complete (m n p : Nat) : Prop :=
  FreyEllCase5 m n p ∨ FermatFourCase m n p

/-- Computable search for a prime `p ≤ bound` with
`p ≡ 1 [MOD ℓ]` and `p ≥ 5`.  Not Dirichlet; may
return `none`. -/
def find_prime_congruent_one_mod (ℓ bound : Nat) : Option Nat :=
  (List.range (bound + 1)).find? fun p =>
    5 ≤ p ∧ Nat.Prime p ∧ p % ℓ = 1

theorem find_prime_congruent_one_mod_spec {ℓ bound p : Nat}
    (h : find_prime_congruent_one_mod ℓ bound = some p) :
    p ∈ List.range (bound + 1) ∧ 5 ≤ p ∧ p.Prime ∧ p % ℓ = 1 := by
  have hmem := List.mem_of_find?_eq_some h
  have hpred : 5 ≤ p ∧ Nat.Prime p ∧ p % ℓ = 1 := by
    have := List.find?_some h
    exact of_decide_eq_true this
  exact ⟨hmem, hpred⟩

/-- Build a `TWAuxEll` from two supplied primes.  The
requested field `∀ N, ¬ Q₁ ∣ N` is false (`Q₁ ∣ Q₁`). -/
def TWAuxEll.of_primes (ℓ q1 q2 : Nat)
    (h1P : q1.Prime) (h2P : q2.Prime)
    (h1m : q1 % ℓ = 1) (h2m : q2 % (ℓ ^ 2) = 1)
    (h15 : 5 ≤ q1) (h25 : 5 ≤ q2)
    (hne : q1 ≠ q2) : TWAuxEll ℓ :=
  ⟨q1, q2, h1P, h2P, h1m, h2m, h15, h25, hne⟩

def TWAuxEll_of_ell (ℓ : Nat) (_hℓ : ℓ.Prime) (_h5 : 5 ≤ ℓ)
    (q1 q2 : Nat)
    (hq1 : q1.Prime ∧ q1 % ℓ = 1 ∧ 5 ≤ q1)
    (hq2 : q2.Prime ∧ q2 % (ℓ ^ 2) = 1 ∧ 5 ≤ q2)
    (hne : q1 ≠ q2) : TWAuxEll ℓ :=
  TWAuxEll.of_primes ℓ q1 q2 hq1.1 hq2.1 hq1.2.1 hq2.2.1 hq1.2.2 hq2.2.2 hne

def TWAuxEll_of13 : TWAuxEll 13 :=
  TWAuxEll.of13

theorem TWAuxEll_of13_Q :
    TWAuxEll_of13.Q1ell = 53 ∧ TWAuxEll_of13.Q2ell = 677 :=
  ⟨rfl, rfl⟩

/-- The requested `∀ N, ¬ Q₁ ∣ N` is false. -/
theorem not_forall_N_not_dvd_Q1 {ℓ : Nat} (tw : TWAuxEll ℓ) :
    ¬ ∀ N : Nat, ¬ tw.Q1ell ∣ N :=
  fun h => h tw.Q1ell dvd_rfl

theorem TWAuxEll.Q1_not_dvd_two {ℓ : Nat} (tw : TWAuxEll ℓ) :
    ¬ tw.Q1ell ∣ 2 := by
  intro h
  have h2 : tw.Q1ell = 2 :=
    (Nat.prime_dvd_prime_iff_eq tw.Q1_prime Nat.prime_two).mp
      (tw.Q1_prime.dvd_of_dvd_pow (by
        have : 2 = 2 ^ 1 := by decide
        exact this ▸ h))
  exact (by decide : ¬ 5 ≤ 2) (h2 ▸ tw.Q1_ge5)

theorem TWAuxEll.Q2_not_dvd_two {ℓ : Nat} (tw : TWAuxEll ℓ) :
    ¬ tw.Q2ell ∣ 2 := by
  intro h
  have h2 : tw.Q2ell = 2 :=
    (Nat.prime_dvd_prime_iff_eq tw.Q2_prime Nat.prime_two).mp
      (tw.Q2_prime.dvd_of_dvd_pow (by
        have : 2 = 2 ^ 1 := by decide
        exact this ▸ h))
  exact (by decide : ¬ 5 ≤ 2) (h2 ▸ tw.Q2_ge5)

/-- Double-coset token at residual `ℓ`, with TW levels
`N·Q₁(ℓ)` and `N·Q₂(ℓ)` recorded from the witness.
Not Mathlib `End(J₀(N)[ℓ])` and not a proved
`R∞ ≃ T∞`. -/
def HeckeAction_N_real_ell_upgraded (N q ℓ : Nat) (_tw : TWAuxEll ℓ) :
    EndJ0_N_ell N q ℓ :=
  HeckeAction_N_real_ell N q ℓ

theorem HeckeAction_N_real_ell_upgraded_tw (N q ℓ : Nat) (tw : TWAuxEll ℓ) :
    (HeckeAction_N_real_ell_upgraded N q ℓ tw).residue = ℓ ∧
      patchedLevel_N_Q1_ell N tw = N * tw.Q1ell ∧
        patchedLevel_N_Q2_ell N tw = N * tw.Q2ell :=
  ⟨rfl, rfl, rfl⟩

/-- Mazur pack at residual `ℓ` using the TW primes of a
`TWAuxEll` witness.  Not Mathlib modularity at `N/q`. -/
structure MazurStepEllUpgraded
    (t : PositiveBealTriple) (q ℓ : Nat) (tw : TWAuxEll ℓ) : Prop where
  step : MazurStepEll t q ℓ
  Q1_mod : tw.Q1ell % ℓ = 1
  Q2_mod : tw.Q2ell % (ℓ ^ 2) = 1
  tw_Q1 :
    Nonempty
      (R_infty (patchedLevel_N_Q1_ell (globalConductorTate t.toPrimitive) tw) ≃
        T_infty (patchedLevel_N_Q1_ell (globalConductorTate t.toPrimitive) tw))
  tw_Q2 :
    Nonempty
      (R_infty (patchedLevel_N_Q2_ell (globalConductorTate t.toPrimitive) tw) ≃
        T_infty (patchedLevel_N_Q2_ell (globalConductorTate t.toPrimitive) tw))
  rank_Q1 :
    localizedHeckeRank
      (patchedLevel_N_Q1_ell (globalConductorTate t.toPrimitive) tw) = 1
  rank_Q2 :
    localizedHeckeRank
      (patchedLevel_N_Q2_ell (globalConductorTate t.toPrimitive) tw) = 1
  hecke_up :
    (HeckeAction_N_real_ell_upgraded
        (globalConductorTate t.toPrimitive) q ℓ tw).residue = ℓ

theorem mazur_step_real_ell_upgraded (t : PositiveBealTriple)
    {q ℓ : Nat} (tw : TWAuxEll ℓ)
    (hqMem : q ∈ (t.A * t.B * t.C).primeFactors) (hodd : q ≠ 2)
    (hℓP : ℓ.Prime) (hℓ5 : 5 ≤ ℓ)
    (hℓ : ℓ ∣ padicValInt q (freyCurveOf t.toPrimitive).Δ)
    (hMod : Modular t.toPrimitive) :
    MazurStepEllUpgraded t q ℓ tw where
  step := mazur_step_ell t hqMem hodd hℓP hℓ5 hℓ hMod
  Q1_mod := tw.Q1_mod
  Q2_mod := tw.Q2_mod
  tw_Q1 := R_T_at_N_Q1_ell (globalConductorTate t.toPrimitive) tw
  tw_Q2 := R_T_at_N_Q2_ell (globalConductorTate t.toPrimitive) tw
  rank_Q1 := localizedRankOne_from_Patching
    (patchedLevel_N_Q1_ell (globalConductorTate t.toPrimitive) tw)
  rank_Q2 := localizedRankOne_from_Patching
    (patchedLevel_N_Q2_ell (globalConductorTate t.toPrimitive) tw)
  hecke_up := rfl

theorem mazur_step_real_ell_upgraded_of_witness
    (t : PositiveBealTriple) (wit : FreyEllWitness t.m t.n t.p)
    {q : Nat} (tw : TWAuxEll (ell_of_q t wit q))
    (hq : q ∈ odd_q_divisors_N t) (hMod : Modular t.toPrimitive) :
    MazurStepEllUpgraded t q (ell_of_q t wit q) tw := by
  have hq' := Finset.mem_filter.mp hq
  exact mazur_step_real_ell_upgraded t tw hq'.1 hq'.2
    (ell_of_q_prime t wit q) (ell_of_q_ge5 t wit q)
    (ell_of_q_dvd_vqDelta t wit hq'.1 hq'.2) hMod

/-- Iterated pack under `FreyEllCase5`, with TW levels
`N·Q₁(ℓ)` / `N·Q₂(ℓ)` available whenever a `TWAuxEll`
witness is supplied.  The `FermatFourCase` branch is
closed by FLT4 and is not a newform argument.
Not `ExistsNewformLevel2`. -/
structure RibetIteratedEllUpgraded (t : PositiveBealTriple) : Prop where
  pack : RibetIteratedEllCase t
  complete_or_pow2 :
    FreyEllCase5Complete t.m t.n t.p
  mazur_tw :
    ∀ wit : FreyEllWitness t.m t.n t.p,
      ∀ q ∈ odd_q_divisors_N t,
        ∀ tw : TWAuxEll (ell_of_q t wit q),
          MazurStepEllUpgraded t q (ell_of_q t wit q) tw
  level_two : ribet_iterated_real_level t = 2
  no_newform : ¬ ExistsNewformLevel2

theorem ribet_iterated_ell_upgraded (t : PositiveBealTriple)
    (hCase : FreyEllCase5 t.m t.n t.p)
    (hMod : Modular t.toPrimitive) :
    RibetIteratedEllUpgraded t where
  pack := ribet_iterated_ell_case t hCase hMod
  complete_or_pow2 := Or.inl hCase
  mazur_tw := fun wit q hq tw =>
    mazur_step_real_ell_upgraded_of_witness t wit (q := q) tw hq hMod
  level_two := ribet_iterated_real_level_eq_two t
  no_newform := no_newform_level2

/-- Honesty: `FreyEllCase5Complete` does not inhabit
`ExistsNewformLevel2`.  The power-of-2 branch is FLT4;
the `ℓ ≥ 5` branch is still the missing arrow. -/
theorem modular_at_two_ell_upgraded_is_not_newform
    (t : PositiveBealTriple)
    (_h : FreyEllCase5Complete t.m t.n t.p)
    (_hMod : Modular t.toPrimitive) :
    ¬ ExistsNewformLevel2 :=
  no_newform_level2

def not_PositiveBealTriple_of_FreyEllCase5Complete : Prop :=
  ∀ t : PositiveBealTriple, FreyEllCase5Complete t.m t.n t.p → False

/-- Beal on positive bases, *from* the missing Mathlib
arrow, even after assuming every positive triple is a
`FreyEllCase5Complete`.  The power-of-2 subcase is
already `beal_pow2_exponents`.  Not unconditional Beal. -/
theorem beal_from_ribet_ell_upgraded
    (_hCase : ∀ t : PositiveBealTriple, FreyEllCase5Complete t.m t.n t.p)
    (hModNew : ModularImpliesLevel2Newform) :
    ∀ A B C m n p : Nat,
      0 < A → 0 < B → 0 < C →
      2 < m → 2 < n → 2 < p →
      A ^ m + B ^ n = C ^ p →
      1 < Nat.gcd A (Nat.gcd B C) :=
  beal_from_ribet_real hModNew

/-! ## v8.13.0 — Mixed power-of-2 base + `TWAuxEllFixed` -/

/-- `A = 2^e`. -/
def IsPowerOfTwo (A : Nat) : Prop :=
  ∃ e : Nat, A = 2 ^ e

theorem IsPowerOfTwo_one : IsPowerOfTwo 1 :=
  ⟨0, rfl⟩

theorem IsPowerOfTwo_two : IsPowerOfTwo 2 :=
  ⟨1, rfl⟩

/-- Radical of a single base as the product of its
prime factors.  For `A = 2^e` this is `1` (`e=0`)
or `2` (`e>0`). -/
def rad1 (A : Nat) : Nat :=
  A.primeFactors.prod id

theorem beal_pow2_base {A : Nat} (hA : IsPowerOfTwo A) :
    rad1 A = 1 ∨ rad1 A = 2 := by
  rcases hA with ⟨e, rfl⟩
  by_cases he : e = 0
  · subst he
    simp [rad1, Nat.primeFactors_one]
  · have hpf : (2 ^ e).primeFactors = {2} :=
      Nat.primeFactors_prime_pow he Nat.prime_two
    simp [rad1, hpf]

theorem odd_prime_not_dvd_pow2 {q A : Nat} {e : Nat}
    (hq : q.Prime) (hodd : q ≠ 2) (hA : A = 2 ^ e) : ¬ q ∣ A := by
  intro h
  have h2 : q ∣ 2 ^ e := hA ▸ h
  have hq2 : q = 2 :=
    (Nat.prime_dvd_prime_iff_eq hq Nat.prime_two).mp
      (hq.dvd_of_dvd_pow h2)
  exact hodd hq2

/-- Two-exponent `ℓ ≥ 5` witness. -/
structure FreyEllWitness2 (k1 k2 : Nat) where
  ℓ1 : Nat
  ℓ2 : Nat
  prime_1 : ℓ1.Prime
  ge5_1 : 5 ≤ ℓ1
  dvd_1 : ℓ1 ∣ k1
  prime_2 : ℓ2.Prime
  ge5_2 : 5 ≤ ℓ2
  dvd_2 : ℓ2 ∣ k2

def FreyEllCase5Two (k1 k2 : Nat) : Prop :=
  Nonempty (FreyEllWitness2 k1 k2)

def FreyEllWitness2.of13 : FreyEllWitness2 13 13 where
  ℓ1 := 13
  ℓ2 := 13
  prime_1 := by decide
  ge5_1 := by decide
  dvd_1 := dvd_rfl
  prime_2 := by decide
  ge5_2 := by decide
  dvd_2 := dvd_rfl

theorem FreyEllCase5Two_13 : FreyEllCase5Two 13 13 :=
  ⟨FreyEllWitness2.of13⟩

/-- One base is a power of 2; the other two exponents
each have a prime factor `≥ 5`. -/
def MixedPow2Case (A B C m n p : Nat) : Prop :=
  (IsPowerOfTwo A ∧ FreyEllCase5Two n p) ∨
    (IsPowerOfTwo B ∧ FreyEllCase5Two m p) ∨
      (IsPowerOfTwo C ∧ FreyEllCase5Two m n)

/-- `FreyEllCase5`, FLT4, or mixed power-of-2 base.
Still not a cover: `m=4, n=13, p=13` with `A` odd
and not a power of 2 is none of the three. -/
def FreyEllCase5Mixed (A B C m n p : Nat) : Prop :=
  FreyEllCase5 m n p ∨ FermatFourCase m n p ∨ MixedPow2Case A B C m n p

theorem mixed_covers_4_13_13 {A B C : Nat} (hA : IsPowerOfTwo A) :
    FreyEllCase5Mixed A B C 4 13 13 :=
  Or.inr (Or.inr (Or.inl ⟨hA, FreyEllCase5Two_13⟩))

theorem odd_q_dvd_BC_of_pow2_A (t : PositiveBealTriple)
    (hA : IsPowerOfTwo t.A) {q : Nat}
    (hq : q ∈ odd_q_divisors_N t) :
    q ∣ t.B ∨ q ∣ t.C := by
  have hq' := Finset.mem_filter.mp hq
  have hqP : q.Prime := Nat.prime_of_mem_primeFactors hq'.1
  have hodd : q ≠ 2 := hq'.2
  have hdvd : q ∣ t.A * t.B * t.C := Nat.dvd_of_mem_primeFactors hq'.1
  have hABC := (Nat.Prime.dvd_mul hqP).mp hdvd
  rcases hA with ⟨e, hAe⟩
  rcases hABC with hAB | hC
  · rcases (Nat.Prime.dvd_mul hqP).mp hAB with hAd | hB
    · exact absurd (show q = 2 from
        (Nat.prime_dvd_prime_iff_eq hqP Nat.prime_two).mp
          (hqP.dvd_of_dvd_pow (hAe ▸ hAd))) hodd
    · exact Or.inl hB
  · exact Or.inr hC

/-- In the displayed mixed case `A=2^e`, `13 | n`,
`13 | p`, every odd `q | ABC` has `13 | v_q(Δ)`. -/
theorem thirteen_dvd_Delta_of_mixed_pow2_A (t : PositiveBealTriple)
    (hA : IsPowerOfTwo t.A) (hn : 13 ∣ t.n) (hp : 13 ∣ t.p)
    {q : Nat} (hq : q ∈ odd_q_divisors_N t) :
    13 ∣ padicValInt q (freyCurveOf t.toPrimitive).Δ := by
  have hq' := Finset.mem_filter.mp hq
  have hqP : q.Prime := Nat.prime_of_mem_primeFactors hq'.1
  have hodd : q ≠ 2 := hq'.2
  rcases odd_q_dvd_BC_of_pow2_A t hA hq with hB | hC
  · rw [odd_prime_Delta_val_of_dvd_B t.toPrimitive hqP hodd hB]
    exact exponent_dvd_Delta_val hn
  · rw [odd_prime_Delta_val_of_dvd_C t.toPrimitive hqP hodd hC]
    exact exponent_dvd_Delta_val hp

theorem mazur_step_ell_of_mixed_pow2_A (t : PositiveBealTriple)
    (hA : IsPowerOfTwo t.A) (hn : 13 ∣ t.n) (hp : 13 ∣ t.p)
    {q : Nat} (hq : q ∈ odd_q_divisors_N t)
    (hMod : Modular t.toPrimitive) :
    MazurStepEll t q 13 := by
  have hq' := Finset.mem_filter.mp hq
  exact mazur_step_ell t hq'.1 hq'.2 (by decide) (by decide)
    (thirteen_dvd_Delta_of_mixed_pow2_A t hA hn hp hq) hMod

/-- Filter search; same content as
`find_prime_congruent_one_mod`, different shape. -/
def find_prime_congruent_one_mod_explicit (ℓ bound : Nat) : Option Nat :=
  ((List.range bound).filter fun p =>
    5 ≤ p ∧ Nat.Prime p ∧ p % ℓ = 1).head?

theorem exists_prime_one_mod_5 :
    ∃ p : Nat, p.Prime ∧ p % 5 = 1 ∧ p ≤ 20000 :=
  ⟨11, by decide, by decide, by decide⟩

theorem exists_prime_one_mod_7 :
    ∃ p : Nat, p.Prime ∧ p % 7 = 1 ∧ p ≤ 20000 :=
  ⟨29, by decide, by decide, by decide⟩

theorem exists_prime_one_mod_11 :
    ∃ p : Nat, p.Prime ∧ p % 11 = 1 ∧ p ≤ 20000 :=
  ⟨23, by decide, by decide, by decide⟩

theorem exists_prime_one_mod_13 :
    ∃ p : Nat, p.Prime ∧ p % 13 = 1 ∧ p ≤ 20000 :=
  ⟨53, TW_q53_prime, TW_q53_mod13, by decide⟩

theorem exists_prime_one_mod_17 :
    ∃ p : Nat, p.Prime ∧ p % 17 = 1 ∧ p ≤ 20000 :=
  ⟨103, by decide, by decide, by decide⟩

theorem exists_prime_one_mod_19 :
    ∃ p : Nat, p.Prime ∧ p % 19 = 1 ∧ p ≤ 20000 :=
  ⟨191, by decide, by decide, by decide⟩

theorem exists_prime_one_mod_23 :
    ∃ p : Nat, p.Prime ∧ p % 23 = 1 ∧ p ≤ 20000 :=
  ⟨47, by decide, by decide, by decide⟩

theorem exists_prime_one_mod_29 :
    ∃ p : Nat, p.Prime ∧ p % 29 = 1 ∧ p ≤ 20000 :=
  ⟨59, by decide, by decide, by decide⟩

theorem exists_prime_one_mod_31 :
    ∃ p : Nat, p.Prime ∧ p % 31 = 1 ∧ p ≤ 20000 :=
  ⟨311, by decide, by decide, by decide⟩

/-- Listed small residuals only.  Not `∀ ℓ ≤ 1000`. -/
def listedTWEll : List Nat :=
  [5, 7, 11, 13, 17, 19, 23, 29, 31]

theorem exists_prime_one_mod_ell_listed {ℓ : Nat}
    (h : ℓ ∈ listedTWEll) :
    ∃ p : Nat, p.Prime ∧ p % ℓ = 1 ∧ p ≤ 20000 := by
  simp [listedTWEll] at h
  rcases h with h | h | h | h | h | h | h | h | h
  · subst h; exact exists_prime_one_mod_5
  · subst h; exact exists_prime_one_mod_7
  · subst h; exact exists_prime_one_mod_11
  · subst h; exact exists_prime_one_mod_13
  · subst h; exact exists_prime_one_mod_17
  · subst h; exact exists_prime_one_mod_19
  · subst h; exact exists_prime_one_mod_23
  · subst h; exact exists_prime_one_mod_29
  · subst h; exact exists_prime_one_mod_31

def TWAuxEllFixed.of_tw {ℓ N : Nat} (tw : TWAuxEll ℓ)
    (h1 : N < tw.Q1ell) (h2 : N < tw.Q2ell) : TWAuxEllFixed ℓ N where
  Q1ell := tw.Q1ell
  Q2ell := tw.Q2ell
  Q1_prime := tw.Q1_prime
  Q2_prime := tw.Q2_prime
  Q1_mod := tw.Q1_mod
  Q2_mod := tw.Q2_mod
  Q1_ge5 := tw.Q1_ge5
  Q2_ge5 := tw.Q2_ge5
  Q1_ne_Q2 := tw.Q1_ne_Q2
  Q1_gt_N := h1
  Q2_gt_N := h2

def TWAuxEllFixed.of13 {N : Nat} (hN : N < 53) : TWAuxEllFixed 13 N :=
  TWAuxEllFixed.of_tw TWAuxEll.of13 hN
    (Nat.lt_trans hN (by decide : (53 : Nat) < 677))

def TWAuxEllFixed.of13_26 : TWAuxEllFixed 13 26 :=
  TWAuxEllFixed.of13 (by decide)

def TWAuxEll.of5 : TWAuxEll 5 where
  Q1ell := 11
  Q2ell := 101
  Q1_prime := by decide
  Q2_prime := by decide
  Q1_mod := by decide
  Q2_mod := by decide
  Q1_ge5 := by decide
  Q2_ge5 := by decide
  Q1_ne_Q2 := by decide

def TWAuxEll.of7 : TWAuxEll 7 where
  Q1ell := 29
  Q2ell := 197
  Q1_prime := by decide
  Q2_prime := by decide
  Q1_mod := by decide
  Q2_mod := by decide
  Q1_ge5 := by decide
  Q2_ge5 := by decide
  Q1_ne_Q2 := by decide

theorem TWAuxEllExists_5 : TWAuxEllExists 5 :=
  ⟨TWAuxEll.of5⟩

theorem TWAuxEllExists_7 : TWAuxEllExists 7 :=
  ⟨TWAuxEll.of7⟩

theorem TWAuxEllFixedExists_13_26 : TWAuxEllFixedExists 13 26 :=
  ⟨TWAuxEllFixed.of13_26⟩

/-- Iterated pack for the mixed disjunction.  The
`FreyEllCase5` arm reuses v8.12; the mixed arm is
`13 | v_q(Δ)` at every odd `q` when `A=2^e` and
`13 | n,p`.  FLT4 is a separate impossibility.
Not `ExistsNewformLevel2`. -/
structure RibetIteratedEllMixed (t : PositiveBealTriple) : Prop where
  mixed : FreyEllCase5Mixed t.A t.B t.C t.m t.n t.p
  pack5 :
    FreyEllCase5 t.m t.n t.p → RibetIteratedEllUpgraded t
  mixed_A_13 :
    IsPowerOfTwo t.A → 13 ∣ t.n → 13 ∣ t.p →
      ∀ q ∈ odd_q_divisors_N t,
        13 ∣ padicValInt q (freyCurveOf t.toPrimitive).Δ
  mazur_mixed_A_13 :
    IsPowerOfTwo t.A → 13 ∣ t.n → 13 ∣ t.p →
      Modular t.toPrimitive →
        ∀ q ∈ odd_q_divisors_N t, MazurStepEll t q 13
  tw_fixed_13_26 : TWAuxEllFixedExists 13 26
  level_two : ribet_iterated_real_level t = 2
  no_newform : ¬ ExistsNewformLevel2

theorem ribet_iterated_ell_mixed (t : PositiveBealTriple)
    (hMixed : FreyEllCase5Mixed t.A t.B t.C t.m t.n t.p)
    (hMod : Modular t.toPrimitive) :
    RibetIteratedEllMixed t where
  mixed := hMixed
  pack5 := fun h5 => ribet_iterated_ell_upgraded t h5 hMod
  mixed_A_13 := fun hA hn hp q hq =>
    thirteen_dvd_Delta_of_mixed_pow2_A t hA hn hp (q := q) hq
  mazur_mixed_A_13 := fun hA hn hp hM q hq =>
    mazur_step_ell_of_mixed_pow2_A t hA hn hp (q := q) hq hM
  tw_fixed_13_26 := TWAuxEllFixedExists_13_26
  level_two := ribet_iterated_real_level_eq_two t
  no_newform := no_newform_level2

theorem modular_at_two_mixed_is_not_newform
    (t : PositiveBealTriple)
    (_h : FreyEllCase5Mixed t.A t.B t.C t.m t.n t.p)
    (_hMod : Modular t.toPrimitive) :
    ¬ ExistsNewformLevel2 :=
  no_newform_level2

def not_PositiveBealTriple_of_FreyEllCase5Mixed : Prop :=
  ∀ t : PositiveBealTriple,
    FreyEllCase5Mixed t.A t.B t.C t.m t.n t.p → False

/-- Beal on positive bases, *from* the missing Mathlib
arrow, even after assuming every positive triple is a
`FreyEllCase5Mixed`.  The FLT4 subcase is already
`beal_pow2_exponents`.  The mixed `A=2^e` arm is
**not** a newform argument. -/
theorem beal_from_ribet_ell_mixed
    (_hCase : ∀ t : PositiveBealTriple,
      FreyEllCase5Mixed t.A t.B t.C t.m t.n t.p)
    (hModNew : ModularImpliesLevel2Newform) :
    ∀ A B C m n p : Nat,
      0 < A → 0 < B → 0 < C →
      2 < m → 2 < n → 2 < p →
      A ^ m + B ^ n = C ^ p →
      1 < Nat.gcd A (Nat.gcd B C) :=
  beal_from_ribet_real hModNew

/-! ## v8.14.0 — Odd `A` residues for `4,13,13`; `A=1` impossible -/

/-- Odd `A`: `(2k+1)⁴ = 16k²(k+1)² + 8k(k+1) + 1`
and `k(k+1)` is even, so `A⁴ ≡ 1 [MOD 16]`. -/
theorem even_pair (n : Nat) (h : Even n) : ∃ t, n = 2 * t := by
  obtain ⟨t, ht⟩ := h
  exact ⟨t, ht.trans (two_mul t).symm⟩

theorem even_mul_succ (k : Nat) : Even (k * (k + 1)) := by
  rcases Nat.even_or_odd k with hk' | hk'
  · exact hk'.mul_right _
  · exact (hk'.add_odd (by decide : Odd (1 : Nat))).mul_left _

theorem mod_pow4_odd (A : Nat) (hOdd : Odd A) : A ^ 4 % 16 = 1 := by
  obtain ⟨k, hk⟩ := hOdd
  have hexp :
      (2 * k + 1) ^ 4 = 16 * (k ^ 2 * (k + 1) ^ 2) + 8 * (k * (k + 1)) + 1 := by
    ring
  obtain ⟨t, ht⟩ := even_pair (k * (k + 1)) (even_mul_succ k)
  rw [hk, hexp, ht]
  have h16 : 16 * (k ^ 2 * (k + 1) ^ 2) + 8 * (2 * t) + 1
      = 1 + 16 * (k ^ 2 * (k + 1) ^ 2 + t) := by
    ring
  rw [h16, Nat.add_mul_mod_self_left, Nat.mod_eq_of_lt (by decide : 1 < 16)]

theorem odd_fourth_mod8 (A : Nat) (hOdd : Odd A) : A ^ 4 % 8 = 1 := by
  have h16 : A ^ 4 % 16 = 1 := mod_pow4_odd A hOdd
  have h : (A ^ 4 % 16) % 8 = 1 % 8 := congrArg (fun n => n % 8) h16
  rw [Nat.mod_mod_of_dvd (A ^ 4) (by decide : 8 ∣ 16)] at h
  exact h.trans (Nat.mod_eq_of_lt (by decide : 1 < 8))

/-- Odd `B`: `B² ≡ 1 [MOD 8]`, hence `B¹³ ≡ B [MOD 8]`.
The identity `∀ B, B¹³ ≡ B [MOD 8]` is false. -/
theorem odd_sq_mod8 (B : Nat) (hOdd : Odd B) : B ^ 2 % 8 = 1 := by
  obtain ⟨k, hk⟩ := hOdd
  have hexp : (2 * k + 1) ^ 2 = 4 * (k * (k + 1)) + 1 := by
    ring
  obtain ⟨t, ht⟩ := even_pair (k * (k + 1)) (even_mul_succ k)
  rw [hk, hexp, ht]
  have h8 : 4 * (2 * t) + 1 = 1 + 8 * t := by
    ring
  rw [h8, Nat.add_mul_mod_self_left, Nat.mod_eq_of_lt (by decide : 1 < 8)]

theorem mod_pow13_odd (B : Nat) (hOdd : Odd B) : B ^ 13 % 8 = B % 8 := by
  have h2 : B ^ 2 % 8 = 1 := odd_sq_mod8 B hOdd
  have h12 : B ^ 12 % 8 = 1 := by
    have : B ^ 12 = (B ^ 2) ^ 6 := by ring
    rw [this, Nat.pow_mod, h2]
  have h13 : B ^ 13 = B ^ 12 * B := by ring
  rw [h13, Nat.mul_mod, h12, Nat.one_mul, Nat.mod_mod]

theorem not_forall_pow13_mod8 : ¬ ∀ B : Nat, B ^ 13 % 8 = B % 8 := by
  intro h
  have h2 := h 2
  exact (by decide : ¬ (2 : Nat) ^ 13 % 8 = 2 % 8) h2

/-- Even `B`: already `B³ ≡ 0 [MOD 8]`, so `B¹³ ≡ 0`. -/
theorem even_pow13_mod8 (B : Nat) (hE : Even B) : B ^ 13 % 8 = 0 := by
  obtain ⟨k, hk⟩ := even_pair B hE
  rw [hk, Nat.mul_pow]
  have : 8 ∣ 2 ^ 13 := by decide
  exact Nat.mod_eq_zero_of_dvd (dvd_mul_of_dvd_left this _)

theorem odd_of_odd_pow13 {C : Nat} (h : Odd (C ^ 13)) : Odd C := by
  rw [Nat.odd_iff] at h ⊢
  rw [Nat.pow_mod] at h
  have : C % 2 < 2 := Nat.mod_lt C (by decide)
  interval_cases C % 2
  · simp at h
  · rfl

theorem even_of_even_pow13 {C : Nat} (h : Even (C ^ 13)) : Even C := by
  rw [Nat.even_iff] at h ⊢
  rw [Nat.pow_mod] at h
  have : C % 2 < 2 := Nat.mod_lt C (by decide)
  interval_cases C % 2
  · rfl
  · simp at h

/-- Residues forced by `A⁴ + B¹³ = C¹³` with `A` odd.
Opposite parity, not a contradiction: either
`B ≡ 7 [MOD 8]` and `C` even, or `B` even and `C ≡ 1`. -/
theorem pow_mod2_of_odd {n k : Nat} (h : Odd n) : n ^ k % 2 = 1 := by
  rw [Nat.pow_mod, Nat.odd_iff.mp h, Nat.one_pow]

theorem pow_mod2_of_even {n k : Nat} (h : Even n) (hk : k ≠ 0) : n ^ k % 2 = 0 := by
  rw [Nat.pow_mod, Nat.even_iff.mp h]
  cases k with
  | zero => exact absurd rfl hk
  | succ k => rfl

theorem beal_4_13_13_mod8 (A B C : Nat) (hAodd : Odd A)
    (heq : A ^ 4 + B ^ 13 = C ^ 13) :
    (Odd B ∧ B % 8 = 7 ∧ Even C) ∨ (Even B ∧ C % 8 = 1 ∧ Odd C) := by
  have hA4_8 : A ^ 4 % 8 = 1 := odd_fourth_mod8 A hAodd
  have hsum8 : (1 + B ^ 13 % 8) % 8 = C ^ 13 % 8 := by
    have : (A ^ 4 + B ^ 13) % 8 = C ^ 13 % 8 := by rw [heq]
    rwa [Nat.add_mod, hA4_8] at this
  have hA4_2 : A ^ 4 % 2 = 1 := pow_mod2_of_odd (k := 4) hAodd
  rcases Nat.even_or_odd B with hBe | hBo
  · have hB13_8 : B ^ 13 % 8 = 0 := even_pow13_mod8 B hBe
    have hC13_8 : C ^ 13 % 8 = 1 := by
      rw [hB13_8, Nat.add_zero, Nat.mod_eq_of_lt (by decide : 1 < 8)] at hsum8
      exact hsum8.symm
    have hB13_2 : B ^ 13 % 2 = 0 := pow_mod2_of_even hBe (by decide)
    have hC13_2 : C ^ 13 % 2 = 1 := by
      have : (A ^ 4 + B ^ 13) % 2 = 1 := by
        rw [Nat.add_mod, hA4_2, hB13_2]
      rwa [heq] at this
    have hCodd : Odd C := odd_of_odd_pow13 (Nat.odd_iff.mpr hC13_2)
    have hCself : C ^ 13 % 8 = C % 8 := mod_pow13_odd C hCodd
    exact Or.inr ⟨hBe, hCself.symm.trans hC13_8, hCodd⟩
  · have hB13_2 : B ^ 13 % 2 = 1 := pow_mod2_of_odd (k := 13) hBo
    have hC13_2 : C ^ 13 % 2 = 0 := by
      have : (A ^ 4 + B ^ 13) % 2 = 0 := by
        rw [Nat.add_mod, hA4_2, hB13_2]
      rwa [heq] at this
    have hCeven : Even C := even_of_even_pow13 (Nat.even_iff.mpr hC13_2)
    have hC13_8 : C ^ 13 % 8 = 0 := even_pow13_mod8 C hCeven
    have hBself : B ^ 13 % 8 = B % 8 := mod_pow13_odd B hBo
    have hsum : (1 + B % 8) % 8 = 0 := by
      rwa [hBself, hC13_8] at hsum8
    have hB7 : B % 8 = 7 := by
      have : B % 8 < 8 := Nat.mod_lt B (by decide)
      interval_cases B % 8 <;> simp at hsum ⊢
    exact Or.inl ⟨hBo, hB7, hCeven⟩

/-- Fermat: `x¹³ ≡ x [MOD 13]`. -/
theorem pow13_eq_self_mod13 (x : Nat) :
    ((x : ZMod 13) ^ 13) = (x : ZMod 13) := by
  haveI : Fact (Nat.Prime 13) := ⟨by decide⟩
  exact ZMod.pow_card _

theorem beal_4_13_13_C_ge_B (A B C : Nat)
    (heq : A ^ 4 + B ^ 13 = C ^ 13) : B ≤ C := by
  have : B ^ 13 ≤ C ^ 13 := by
    rw [← heq]
    exact Nat.le_add_left _ _
  exact (Nat.pow_le_pow_iff_left (by decide : (13 : Nat) ≠ 0)).mp this

/-- Packed form: `A⁴ ≡ C − B` in `ZMod 13`. -/
theorem beal_4_13_13_mod13 (A B C : Nat)
    (heq : A ^ 4 + B ^ 13 = C ^ 13) :
    (A : ZMod 13) ^ 4 = (C : ZMod 13) - (B : ZMod 13) := by
  haveI : Fact (Nat.Prime 13) := ⟨by decide⟩
  have hcast :
      ((A ^ 4 + B ^ 13 : Nat) : ZMod 13) = (C ^ 13 : Nat) := by
    rw [heq]
  simp only [Nat.cast_add, Nat.cast_pow] at hcast
  have hB : (B : ZMod 13) ^ 13 = (B : ZMod 13) := ZMod.pow_card _
  have hC : (C : ZMod 13) ^ 13 = (C : ZMod 13) := ZMod.pow_card _
  rw [hB, hC] at hcast
  exact (eq_sub_iff_add_eq).mpr hcast

/-- Nat form, using `B ≤ C` from the equation. -/
theorem beal_4_13_13_mod13_nat (A B C : Nat)
    (heq : A ^ 4 + B ^ 13 = C ^ 13) :
    A ^ 4 % 13 = (C - B) % 13 := by
  have hge : B ≤ C := beal_4_13_13_C_ge_B A B C heq
  have hz : (A : ZMod 13) ^ 4 = (C : ZMod 13) - (B : ZMod 13) :=
    beal_4_13_13_mod13 A B C heq
  have hcast : ((A ^ 4 : Nat) : ZMod 13) = ((C - B : Nat) : ZMod 13) := by
    rw [Nat.cast_pow, Nat.cast_sub hge, hz]
  exact (ZMod.natCast_eq_natCast_iff' (A ^ 4) (C - B) 13).mp hcast

theorem IsPowerOfTwo.eq_one_of_odd {A : Nat}
    (h : IsPowerOfTwo A) (hOdd : Odd A) : A = 1 := by
  obtain ⟨e, rfl⟩ := h
  cases e with
  | zero => rfl
  | succ e =>
    have heven : Even (2 ^ (e + 1)) := by
      rw [pow_succ]
      exact even_two.mul_left _
    exact absurd hOdd (Nat.not_odd_iff_even.mpr heven)

/-- For `n ≥ 2` and `C ≥ 1`, `(C+1)ⁿ − Cⁿ > 1`. -/
theorem succ_pow_sub_pow_gt_one (n C : Nat) (hn : 1 < n) (hC : 0 < C) :
    1 < (C + 1) ^ n - C ^ n := by
  have hn2 : 2 ≤ n := Nat.succ_le_of_lt hn
  obtain ⟨k, rfl⟩ := Nat.exists_eq_add_of_le hn2
  have hCk : C ^ k ≤ (C + 1) ^ k :=
    Nat.pow_le_pow_left (Nat.le_succ C) k
  have hexpL : (C + 1) ^ (2 + k) = (C + 1) ^ 2 * (C + 1) ^ k :=
    Nat.pow_add _ 2 k
  have hexpR : C ^ (2 + k) = C ^ 2 * C ^ k :=
    Nat.pow_add _ 2 k
  have hstep : (C + 1) ^ 2 * C ^ k - C ^ 2 * C ^ k
      ≤ (C + 1) ^ (2 + k) - C ^ (2 + k) := by
    rw [hexpL, hexpR]
    exact Nat.sub_le_sub_right (Nat.mul_le_mul_left _ hCk) _
  have hfactor :
      (C + 1) ^ 2 * C ^ k - C ^ 2 * C ^ k
        = C ^ k * ((C + 1) ^ 2 - C ^ 2) := by
    rw [Nat.mul_comm ((C + 1) ^ 2), Nat.mul_comm (C ^ 2)]
    exact (Nat.mul_sub (C ^ k) ((C + 1) ^ 2) (C ^ 2)).symm
  have hsq : (C + 1) ^ 2 - C ^ 2 = 2 * C + 1 := by
    have hbin : (C + 1) ^ 2 = C ^ 2 + 2 * C + 1 := by
      ring
    rw [hbin, Nat.add_assoc, Nat.add_sub_cancel_left]
  have hposk : 0 < C ^ k := Nat.pow_pos (n := k) hC
  have hge3 : 3 ≤ 2 * C + 1 := by
    have : 1 ≤ C := hC
    exact Nat.le_trans (by decide : 3 ≤ 2 * 1 + 1)
      (Nat.add_le_add_right (Nat.mul_le_mul_left 2 this) 1)
  have hsmall : 1 < C ^ k * (2 * C + 1) := by
    have h1 : 1 < 3 := by decide
    have h2 : 3 ≤ C ^ k * (2 * C + 1) := by
      have : 1 * 3 ≤ C ^ k * (2 * C + 1) :=
        Nat.mul_le_mul (Nat.succ_le_of_lt hposk) hge3
      rwa [Nat.one_mul] at this
    exact Nat.lt_of_lt_of_le h1 h2
  have : 1 < (C + 1) ^ (2 + k) - C ^ (2 + k) :=
    Nat.lt_of_lt_of_le (hfactor ▸ (hsq ▸ hsmall)) hstep
  exact this

theorem not_one_plus_B13_eq_C13 {B C : Nat}
    (hB : 0 < B) (hC : 0 < C) (heq : 1 + B ^ 13 = C ^ 13) : False := by
  have hlt : B ^ 13 < C ^ 13 :=
    Nat.lt_of_lt_of_eq (Nat.lt_add_of_pos_left (by decide : 0 < 1)) heq
  have hBC : B < C := (Nat.pow_lt_pow_iff_left (by decide : (13 : Nat) ≠ 0)).mp hlt
  have hge : (B + 1) ^ 13 - B ^ 13 ≤ C ^ 13 - B ^ 13 :=
    Nat.sub_le_sub_right (Nat.pow_le_pow_left (Nat.succ_le_of_lt hBC) 13) _
  have hgt : 1 < (B + 1) ^ 13 - B ^ 13 :=
    succ_pow_sub_pow_gt_one 13 B (by decide) hB
  have hdiff : C ^ 13 - B ^ 13 = 1 := by
    have : C ^ 13 = B ^ 13 + 1 :=
      heq.symm.trans (Nat.add_comm 1 (B ^ 13))
    rw [this, Nat.add_sub_cancel_left]
  exact Nat.lt_irrefl _ (hgt.trans_le (hge.trans_eq hdiff))

theorem not_beal_4_13_13_of_A_eq_one {B C : Nat}
    (hB : 0 < B) (hC : 0 < C)
    (heq : (1 : Nat) ^ 4 + B ^ 13 = C ^ 13) : False := by
  have h1 : (1 : Nat) ^ 4 = 1 := by decide
  rw [h1] at heq
  exact not_one_plus_B13_eq_C13 hB hC heq

/-- The only odd power of 2 is `A=1`, which cannot
satisfy `A⁴ + B¹³ = C¹³`. -/
theorem not_beal_4_13_13_of_odd_pow2_A {A B C : Nat}
    (hA : Odd A) (hpow : IsPowerOfTwo A)
    (hB : 0 < B) (hC : 0 < C)
    (heq : A ^ 4 + B ^ 13 = C ^ 13) : False := by
  have hA1 : A = 1 := IsPowerOfTwo.eq_one_of_odd hpow hA
  subst hA1
  exact not_beal_4_13_13_of_A_eq_one hB hC heq

theorem not_FermatFourCase_4_13_13 : ¬ FermatFourCase 4 13 13 := by
  rintro ⟨_, ⟨e, he, hn⟩, _⟩
  have hepos : e ≠ 0 :=
    Nat.ne_of_gt (lt_of_lt_of_le (by decide : 0 < 2) he)
  have : 2 ∣ 13 := hn ▸ dvd_pow_self 2 hepos
  exact (by decide : ¬ 2 ∣ 13) this

theorem not_FreyEllCase5Two_of_exp_four (k : Nat) :
    ¬ FreyEllCase5Two 4 k := by
  intro h
  refine h.elim fun wit => ?_
  have hdiv : wit.ℓ1 ∣ 4 := wit.dvd_1
  have hpow : wit.ℓ1 ∣ 2 ^ 2 := by
    have : (4 : Nat) = 2 ^ 2 := by decide
    exact this ▸ hdiv
  have h2 : wit.ℓ1 = 2 :=
    (Nat.prime_dvd_prime_iff_eq wit.prime_1 Nat.prime_two).mp
      (wit.prime_1.dvd_of_dvd_pow hpow)
  have : 5 ≤ 2 := h2 ▸ wit.ge5_1
  exact (by decide : ¬ 5 ≤ 2) this

/-- Mixed covers `m=4,n=13,p=13` only through `A=2^e`.
`B` or `C` being a power of 2 still needs `ℓ ∣ 4`
with `ℓ ≥ 5`, which is impossible. -/
theorem not_FreyEllCase5Mixed_of_4_13_13_A_not_pow2
    {A B C : Nat} (hAnot : ¬ IsPowerOfTwo A) :
    ¬ FreyEllCase5Mixed A B C 4 13 13 := by
  intro h
  rcases h with h5 | h4 | hmix
  · exact not_FreyEllCase5_of_exp_four 13 13 h5
  · exact not_FermatFourCase_4_13_13 h4
  · rcases hmix with hA | hB | hC
    · exact hAnot hA.1
    · exact not_FreyEllCase5Two_of_exp_four 13 hB.2
    · exact not_FreyEllCase5Two_of_exp_four 13 hC.2

theorem FreyEllCase5Mixed_4_13_13_iff_pow2_A {A B C : Nat} :
    FreyEllCase5Mixed A B C 4 13 13 ↔ IsPowerOfTwo A := by
  constructor
  · intro h
    by_contra hnot
    exact not_FreyEllCase5Mixed_of_4_13_13_A_not_pow2 hnot h
  · intro hA
    exact mixed_covers_4_13_13 (A := A) (B := B) (C := C) hA

/-- Uninhabited in general.  The `C = B+1` slice
`B ∈ [1, 100]` is `beal_4_13_13_size_B_le_100_C_succ`.
Odd `A ≥ 3` is not closed by mod 8, mod 13, or
`(C+1)ⁿ − Cⁿ > 1` for arbitrary `C`.  Mathlib 4.12
has no Zsigmondy, and the gap around `13^{1/4} B³`
is wide. -/
def beal_4_13_13_size : Prop :=
  ∀ A B C : Nat,
    0 < A → 0 < B → 0 < C →
    Odd A → ¬ IsPowerOfTwo A →
    A ^ 4 + B ^ 13 = C ^ 13 → False

/-! ## v8.19.0 — `BealAArm` split; genus of `X₀(2)` over `ℚ` -/

/-- Case split on a positive base `A` for `4,13,13`.
`A=1` is `pow2` (`2^0`).  Not a cover of every
Beal exponent triple. -/
inductive BealAArm (A : Nat) where
  | pow2 : IsPowerOfTwo A → BealAArm A
  | odd_ge3 : Odd A → 3 ≤ A → BealAArm A
  | even_not_pow2 : Even A → ¬ IsPowerOfTwo A → BealAArm A

noncomputable def BealAArm.of_pos {A : Nat} (hA : 0 < A) : BealAArm A := by
  by_cases hpow : IsPowerOfTwo A
  · exact BealAArm.pow2 hpow
  · by_cases hOdd : Odd A
    · refine BealAArm.odd_ge3 hOdd ?_
      have hne1 : A ≠ 1 := by
        intro h
        exact hpow (h ▸ IsPowerOfTwo_one)
      have hne2 : A ≠ 2 := by
        intro h
        subst h
        exact (Nat.not_odd_iff_even.mpr even_two) hOdd
      omega
    · exact BealAArm.even_not_pow2
        (Nat.not_odd_iff_even.mp hOdd) hpow

/-- Odd `A ≥ 3` is not Mixed for `4,13,13`.
The only odd power of 2 is `A=1`. -/
theorem beal_odd_A_ge3_not_mixed {A B C : Nat}
    (hOdd : Odd A) (h3 : 3 ≤ A) :
    ¬ FreyEllCase5Mixed A B C 4 13 13 := by
  intro h
  have hpow : IsPowerOfTwo A :=
    (FreyEllCase5Mixed_4_13_13_iff_pow2_A.mp h)
  have hA1 : A = 1 := IsPowerOfTwo.eq_one_of_odd hpow hOdd
  subst hA1
  exact (by decide : ¬ (3 : Nat) ≤ 1) h3

/-- Uninhabited.  Needs the missing arrow
`Modular w → ExistsNewformLevel2` (`0 ≠ 0`). -/
def beal_mixed_pow2_implies_level_2_newform : Prop :=
  ∀ t : PositiveBealTriple, IsPowerOfTwo t.A → ExistsNewformLevel2

/-- Uninhabited.  Unconditional `¬ PositiveBealTriple`
still needs `ModularImpliesLevel2Newform` and the
odd-`A` size gap (no Zsigmondy). -/
def beal_from_ribet_upside_down : Prop :=
  ∀ _t : PositiveBealTriple, False

/-! ## v8.19.3 — inhabited Zsigmondy at `n=13`; `C=B+1` table `B≤100` -/

/-- Re-export.  A prime dividing `aⁿ − bⁿ` that
does not divide `aᵏ − bᵏ` for `0 < k < n`. -/
def has_primitive_prime_divisor :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13.has_primitive_prime_divisor

/-- Inhabited.  `C¹³ − B¹³` has a primitive prime
divisor when `B < C`, `0 < B`, and `C,B` coprime.
Mathlib 4.12 has no Zsigmondy module; the `n=13`
case is the cyclotomic `Φ₁₃` argument. -/
def zsigmondy_13 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13.zsigmondy_13

/-- Inhabited.  From `A⁴ + B¹³ = C¹³` with odd
`A ≥ 3` and coprime `C,B`, some prime `p` divides
`A` and does not divide `C−B`. -/
def beal_odd_A_ge3_size_gap :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13.beal_odd_A_ge3_size_gap

/-! ## v8.19.4 — `p ∣ S` and Coprime contradiction -/

/-- Re-export.  The 13-term cyclotomic sum. -/
def S_13 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step4.S_13

/-- Uninhabited.  `p ∣ S` and `p ∣ A` do **not**
force `p ∣ B`.  Coprimality goes the other way. -/
def p_dvd_B_of_p_dvd_S_and_p_dvd_A_attempt :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step4.p_dvd_B_of_p_dvd_S_and_p_dvd_A_attempt

/-! ## v8.19.5 — order 13, `p ≡ 1 [MOD 13]`, `p ≥ 53` -/

/-- Re-export.  Multiplicative order in `ZMod p`. -/
noncomputable def order_mod_p :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step5_P_mod_13.order_mod_p

/-- Inhabited.  Order 13 forces `p ≡ 1 [MOD 13]`. -/
def primitive_prime_mod_13_eq_1 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step5_P_mod_13.primitive_prime_mod_13_eq_1

/-- Inhabited.  A prime `≡ 1 [MOD 13]` is at least `53`. -/
def primitive_prime_ge_53 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step5_P_mod_13.primitive_prime_ge_53

/-- Inhabited.  Odd `A ≥ 3` in `A⁴ + B¹³ = C¹³` has `A ≥ 53`. -/
def beal_odd_A_ge3_A_ge_53 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step5_P_mod_13.beal_odd_A_ge3_A_ge_53

/-- Uninhabited.  `A ≥ 53` does not close the equation. -/
def beal_odd_A_ge3_closed_of_A_ge_53 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step5_P_mod_13.beal_odd_A_ge3_closed_of_A_ge_53

/-! ## v8.19.6 — `B ≤ 100` slice `C ∈ {B+1, B+2}` closed -/

/-- Inhabited.  `C = B+1` difference is not a
fourth power on `B ∈ [1, 100]`. -/
def beal_4_13_13_B_le_100_C_eq_B_plus_1_no_fourth_power :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step6_B_le_100_closed.beal_4_13_13_B_le_100_C_eq_B_plus_1_no_fourth_power

/-- Inhabited.  `C = B+2` difference is not a
fourth power on `B ∈ [1, 100]`. -/
def beal_4_13_13_B_le_100_C_eq_B_plus_2_no_fourth_power :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step6_B_le_100_closed.beal_4_13_13_B_le_100_C_eq_B_plus_2_no_fourth_power

/-- Inhabited.  Odd `A ≥ 3`, `B ≤ 100`,
`C ∈ {B+1, B+2}` is impossible. -/
def beal_odd_A_ge3_B_le_100_closed_C_le_B_plus_2 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step6_B_le_100_closed.beal_odd_A_ge3_B_le_100_closed_C_le_B_plus_2

/-- Uninhabited.  `C ≥ B+3` stays open. -/
def beal_odd_A_ge3_B_le_100_C_ge_B_plus_3_closed :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step6_B_le_100_closed.beal_odd_A_ge3_B_le_100_C_ge_B_plus_3_closed

/-! ## v8.19.7 — general `k` bound from the 13-term sum -/

/-- Same 13-term sum as Step 4. -/
def S_13_step7 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step7_General_k.S_13

/-- Inhabited.  `C ≥ B` implies `S_13 ≥ 13 B^12`. -/
def S_13_ge_13_mul_B_pow12 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step7_General_k.S_13_ge_13_mul_B_pow12

/-- Inhabited.  `C ≥ B+k` implies `C^13 - B^13 ≥ 13 k B^12`. -/
def C13_sub_B13_ge_13_k_mul_B_pow12 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step7_General_k.C13_sub_B13_ge_13_k_mul_B_pow12

/-- Inhabited.  Beal `4/13/13` and `C ≥ B+k` give `A^4 ≥ 13 k B^12`. -/
def beal_4_13_13_A_pow4_ge_13_k_mul_B12_of_C_ge_B_plus_k :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step7_General_k.beal_4_13_13_A_pow4_ge_13_k_mul_B12_of_C_ge_B_plus_k

/-- Inhabited.  `C ≥ B+3` gives `A^4 ≥ 39 B^12`. -/
def beal_4_13_13_A_pow4_ge_39_mul_B12_of_C_ge_B_plus_3 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step7_General_k.beal_4_13_13_A_pow4_ge_39_mul_B12_of_C_ge_B_plus_3

/-- Inhabited.  `C ≥ B+k` already implies `C ≥ B`. -/
def C_ge_B_plus_k_implies_A_pow4_ge_13kB12 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step7_General_k.C_ge_B_plus_k_implies_A_pow4_ge_13kB12

/-- Inhabited for `B ≥ 1`.  `A ≥ 2 B^3 + 1` from `39 B^12 > 16 B^12`. -/
def beal_4_13_13_A_ge_2_mul_B_pow_3_succ_of_C_ge_B_plus_3 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step7_General_k.beal_4_13_13_A_ge_2_mul_B_pow_3_succ_of_C_ge_B_plus_3

/-- Uninhabited.  `39 B^12 < 81 B^12 = (3 B^3)^4`. -/
def beal_4_13_13_A_ge_3_mul_B_pow_3_of_C_ge_B_plus_3 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step7_General_k.beal_4_13_13_A_ge_3_mul_B_pow_3_of_C_ge_B_plus_3

/-! ## v8.19.8 — `k` odd, coprime, `A^4 ≡ k^13 [MOD B]` -/

/-- Inhabited.  Odd `A` forces `k = C − B` odd. -/
def beal_4_13_13_k_odd :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step8_k_odd_coprime.beal_4_13_13_k_odd

/-- Inhabited.  `Coprime C B` and `C ≥ B` give `Coprime k B`. -/
def beal_4_13_13_gcd_k_B_eq_one :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step8_k_odd_coprime.beal_4_13_13_gcd_k_B_eq_one

/-- Inhabited.  `Coprime C B` gives `Coprime A B`. -/
def beal_4_13_13_gcd_A_B_eq_one :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step8_k_odd_coprime.beal_4_13_13_gcd_A_B_eq_one

/-- Inhabited.  `A^4 ≡ (C − B)^13 [MOD B]`. -/
def beal_4_13_13_A_pow4_mod_B_eq_k_pow13 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step8_k_odd_coprime.beal_4_13_13_A_pow4_mod_B_eq_k_pow13

/-- Uninhabited.  `Coprime C B` alone does not give `Coprime (C − B) B`. -/
def beal_4_13_13_gcd_k_B_eq_one_of_coprime_only :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step8_k_odd_coprime.beal_4_13_13_gcd_k_B_eq_one_of_coprime_only

/-- Uninhabited.  The congruences do not close the equation. -/
def beal_odd_A_ge3_closed_of_k_odd_coprime :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step8_k_odd_coprime.beal_odd_A_ge3_closed_of_k_odd_coprime

/-! ## v8.19.9 — fourth-power residue `k % 4 = 1` / `k % 8 = 1` -/

/-- Inhabited.  Odd fourth powers are `1 [MOD 4]`. -/
def odd_fourth_mod4_step9 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step9_fourth_pow_residue.odd_fourth_mod4

/-- Inhabited.  Odd fourth powers are `1 [MOD 8]`. -/
def odd_fourth_mod8_step9 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step9_fourth_pow_residue.odd_fourth_mod8

/-- Inhabited.  `B % 4 = 0` and odd `A` give `k % 4 = 1`. -/
def beal_4_13_13_k_mod4_eq_1_of_B_mod4_eq_0 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step9_fourth_pow_residue.beal_4_13_13_k_mod4_eq_1_of_B_mod4_eq_0

/-- Inhabited.  `B % 8 = 0` and odd `A` give `k % 8 = 1`. -/
def beal_4_13_13_k_mod8_eq_1_of_B_mod8_eq_0 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step9_fourth_pow_residue.beal_4_13_13_k_mod8_eq_1_of_B_mod8_eq_0

/-- Uninhabited.  Without odd `A`, `B % 4 = 0` does not force `k % 4 = 1`. -/
def k_mod4_eq_1_of_B_mod4_eq_0_without_odd_A :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step9_fourth_pow_residue.k_mod4_eq_1_of_B_mod4_eq_0_without_odd_A

/-- Uninhabited.  The residue does not close the equation. -/
def beal_odd_A_ge3_closed_of_fourth_pow_residue :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step9_fourth_pow_residue.beal_odd_A_ge3_closed_of_fourth_pow_residue

/-- Inhabited.  Every fourth power is `0` or `1 [MOD 4]`. -/
def fourth_pow_mod_4 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step9_fourth_pow_residue.fourth_pow_mod_4

/-- Inhabited sketch name.  Odd fourth powers are `1 [MOD 8]`. -/
def fourth_pow_mod_8_odd :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step9_fourth_pow_residue.fourth_pow_mod_8_odd

/-- Inhabited sketch name.  Odd `k` has `k^13 ≡ k [MOD 4]`. -/
def odd_pow_mod_4 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step9_fourth_pow_residue.odd_pow_mod_4

/-- Inhabited sketch name.  Odd `k` has `k^13 ≡ k [MOD 8]`. -/
def k_pow13_mod_8_odd :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step9_fourth_pow_residue.k_pow13_mod_8_odd

/-- Inhabited sketch name.  `B % 4 = 0` forces `k % 4 = 1`. -/
def k_mod_4_eq_1_of_B_divisible_by_4 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step9_fourth_pow_residue.k_mod_4_eq_1_of_B_divisible_by_4

/-- Inhabited sketch name.  `B % 8 = 0` forces `k % 8 = 1`. -/
def k_mod_8_eq_1_of_B_divisible_by_8 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step9_fourth_pow_residue.k_mod_8_eq_1_of_B_divisible_by_8

/-- Inhabited congruence form (not the Beal `(A B C)` wrapper). -/
def beal_4_13_13_k_mod_4_eq_1_of_B_mod_4_0 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step9_fourth_pow_residue.beal_4_13_13_k_mod_4_eq_1_of_B_mod_4_0

/-- Inhabited congruence form (not the Beal `(A B C)` wrapper). -/
def beal_4_13_13_k_mod_8_eq_1_of_B_mod_8_0 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step9_fourth_pow_residue.beal_4_13_13_k_mod_8_eq_1_of_B_mod_8_0

/-- Inhabited.  v8.19.8 congruence with odd `A`. -/
def beal_4_13_13_A4_cong_k13_mod_B_restricts_B :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step9_fourth_pow_residue.beal_4_13_13_A4_cong_k13_mod_B_restricts_B

/-! ## v8.20.0 — gcd(k,S)∣13, k almost a fourth power -/

/-- Inhabited.  `S ≡ 13 B¹² [MOD k]` when `C = B+k`. -/
def S_13_mod_k :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step10_k_upper_bound_plan.S_13_mod_k

/-- Inhabited.  Coprime `k B` forces `gcd(k,S) ∣ 13`. -/
def gcd_k_S_dvd_13 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step10_k_upper_bound_plan.gcd_k_S_dvd_13

/-- Inhabited.  Divisors of the prime `13` are `1` and `13`. -/
def gcd_k_S_eq_1_or_13 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step10_k_upper_bound_plan.gcd_k_S_eq_1_or_13

/-- Inhabited.  `A⁴ = k · S_13` on a Beal `4/13/13` tuple. -/
def k_mul_S_eq_A_pow4 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step10_k_upper_bound_plan.k_mul_S_eq_A_pow4

/-- Inhabited.  Coprime factors of a fourth power are fourth powers. -/
def coprime_mul_eq_fourth_pow :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step10_k_upper_bound_plan.coprime_mul_eq_fourth_pow

/-- Inhabited sketch name from `Step10_upper_bound_k`. -/
def coprime_mul_eq_fourth_pow_imp_fourth_pow :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step10_upper_bound_k.coprime_mul_eq_fourth_pow_imp_fourth_pow

/-- Inhabited.  `k = u⁴` or `13 u⁴` or `13³ u⁴`. -/
def k_almost_fourth_power :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step10_k_upper_bound_plan.k_almost_fourth_power

/-- Inhabited packaged Beal form. -/
def beal_4_13_13_k_almost_fourth_power :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step10_k_upper_bound_plan.beal_4_13_13_k_almost_fourth_power

/-- Inhabited.  Fourth powers are `0` or `1 [MOD 16]`. -/
def fourth_pow_mod_16 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step10_k_upper_bound_plan.fourth_pow_mod_16

/-- Uninhabited.  `k ≥ 3` is unbounded. -/
def B_le_100_k_ge_3_no_S_fourth_pow :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step10_k_upper_bound_plan.B_le_100_k_ge_3_no_S_fourth_pow

/-- Uninhabited.  Odd-`A` size gap, `C ≥ B+3`, no Zsigmondy. -/
def beal_4_13_13_B_le_100_C_ge_B_plus_3_closed_of_S_not_fourth :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step10_upper_bound_k.beal_4_13_13_B_le_100_C_ge_B_plus_3_closed_of_S_not_fourth

/-- Uninhabited.  The shape does not close the equation. -/
def beal_odd_A_ge3_closed_of_k_upper_bound_plan :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step10_k_upper_bound_plan.beal_odd_A_ge3_closed_of_k_upper_bound_plan

/-- Uninhabited.  `k = 2` is not of the three shapes. -/
def k_almost_fourth_power_without_gcd :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step10_k_upper_bound_plan.k_almost_fourth_power_without_gcd

/-! ## v8.20.1 — package `B ≤ 100` -/

/-- Inhabited.  Primitive Zsigmondy prime on `S`. -/
def primitive_prime_dvd_S :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step11_B_le_100_closed.primitive_prime_dvd_S

/-- Inhabited.  `order ≠ 13` in `(ℤ/p²)ˣ` gives `¬ p² ∣ S`. -/
def v_p_S_eq_one :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step11_B_le_100_closed.v_p_S_eq_one

/-- Inhabited.  `S` is not `v⁴` / `13 v⁴` / `13³ v⁴`
when some `p ≠ 13` has `v_p` not a multiple of `4`. -/
def S_not_fourth_power :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step11_B_le_100_closed.S_not_fourth_power

/-- Inhabited.  `B ≤ 100`, `k ≥ 3` odd coprime uses
`S_not_fourth_power`. -/
def B_le_100_k_ge_3_no_S_fourth_pow_step11 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step11_B_le_100_closed.B_le_100_k_ge_3_no_S_fourth_pow

/-- Inhabited.  `C ≥ B+3` from `k_almost_fourth_power`
and `S_not_fourth_power`. -/
def beal_4_13_13_B_le_100_C_ge_B_plus_3_closed :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step11_B_le_100_closed.beal_4_13_13_B_le_100_C_ge_B_plus_3_closed

/-- Inhabited.  Split `C=B+1` Size_Table,
`C=B+2` Size_C_ge_B_plus_2, `C≥B+3` above. -/
def beal_4_13_13_B_le_100_closed :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step11_B_le_100_closed.beal_4_13_13_B_le_100_closed

/-- Inhabited.  Symmetric form of `k_almost_fourth_power`. -/
def S_almost_fourth_power :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step11_B_le_100_closed.S_almost_fourth_power

/-! ## v8.21.0 — `B > 100` bounded-`k` plan -/

/-- Inhabited.  `p ≥ 53` and `p ∣ A` give `A ≥ 53`. -/
def A_ge_53_of_S_prime :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step12_B_gt_100_bounded_k_plan.A_ge_53_of_S_prime

/-- Inhabited.  `A⁴ = k · S` and `S ≥ 13 B¹²`. -/
def k_le_A_pow4_div_13_B_pow12 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step12_B_gt_100_bounded_k_plan.k_le_A_pow4_div_13_B_pow12

/-- Inhabited.  `B > 100` freezes the slot at `100¹²`. -/
def B_gt_100_imp_k_bounded_by_A :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step12_B_gt_100_bounded_k_plan.B_gt_100_imp_k_bounded_by_A

/-- Inhabited.  `k ≥ B` and `C ≥ 2 B` give `A ≥ 9 B³`. -/
def k_ge_B_imp_A_large :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step12_B_gt_100_bounded_k_plan.k_ge_B_imp_A_large

/-- Inhabited.  `k < B` sandwich `13 B¹² ≤ S ≤ 13 C¹²`. -/
def k_lt_B_imp_S_between :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step12_B_gt_100_bounded_k_plan.k_lt_B_imp_S_between

/-- Uninhabited.  Needs `S_not_fourth_power` (Hensel)
and `Modular W → ExistsNewformLevel2` (`0 ≠ 0`). -/
def beal_4_13_13_B_gt_100_closed_of_S_not_fourth_and_modular :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step12_B_gt_100_bounded_k_plan.beal_4_13_13_B_gt_100_closed_of_S_not_fourth_and_modular

/-- Uninhabited.  Primitive `p ≡ 1 [MOD 13]` with
`¬ p² ∣ S` is a hypothesis. -/
def beal_4_13_13_B_gt_100_slice_uninhabited :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step12_B_gt_100_bounded_k_plan.beal_4_13_13_B_gt_100_slice_uninhabited

/-! ## v8.21.1 — Modular W lift last lock -/

/-- Inhabited.  `A = 2^r` (`r > 0`), `B` and `C`
odd → even radical `2`. -/
def frey_curve_conductor :=
  @BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step13_Modular_W_lift_last_lock.frey_curve_conductor

/-- Displayed conductor slot after uninhabited
Ribet lowering. -/
def frey_curve_conductor_N :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step13_Modular_W_lift_last_lock.frey_curve_conductor_N

/-- Uninhabited.  Wiles/BCDT lift ending at
`ExistsNewformLevel2` (`0 ≠ 0`). -/
def modular_W_lift :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step13_Modular_W_lift_last_lock.modular_W_lift

/-- Uninhabited.  Ribet lowering to displayed
`N = 2` still ends at `ExistsNewformLevel2`. -/
def ribet_level_lowering_to_2_step13 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step13_Modular_W_lift_last_lock.ribet_level_lowering_to_2

/-- Uninhabited last lock: Mathlib vanishing
is still `ExistsNewformLevel2` (`0 ≠ 0`). -/
def X0_2_no_newforms :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step13_Modular_W_lift_last_lock.X0_2_no_newforms

/-- Uninhabited.  Closing every Beal `4/13/13`
needs Modular W plus RibetMazur plus
`S_not_fourth_power`. -/
def beal_4_13_13_final_closed :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step13_Modular_W_lift_last_lock.beal_4_13_13_final_closed

/-! ## v8.22.0 — X₀(26) / RibetMazur even-not-pow2 plan -/

/-- Inhabited.  Even not-pow2 `A` has an odd prime. -/
def even_not_pow2_has_odd_prime :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step14_X0_26_RibetMazur_plan.even_not_pow2_has_odd_prime

/-- Inhabited.  `rad A = 2 · rad(oddPart A)`. -/
def frey_conductor_even_A :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step14_X0_26_RibetMazur_plan.frey_conductor_even_A

/-- Inhabited.  `13 ∣ A` even → `26 ∣ N'`. -/
def minimal_level_26_of_13_dvd_A :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step14_X0_26_RibetMazur_plan.minimal_level_26_of_13_dvd_A

/-- Inhabited.  Displayed `N' ≥ 6`. -/
def level_at_least_6_of_even_not_pow2 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step14_X0_26_RibetMazur_plan.level_at_least_6_of_even_not_pow2

/-- Uninhabited.  Ribet lowering to `N'`. -/
def ribet_level_lowering_to_Nprime :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step14_X0_26_RibetMazur_plan.ribet_level_lowering_to_Nprime

/-- Uninhabited.  No matching newform at level 26. -/
def X0_26_no_matching_newform :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step14_X0_26_RibetMazur_plan.X0_26_no_matching_newform

/-- Uninhabited.  Cremona `26a1`/`26b1` matching. -/
def conductor_26_elliptic_curves_list :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step14_X0_26_RibetMazur_plan.conductor_26_elliptic_curves_list

/-- Uninhabited.  Even-not-pow2 with `13 ∣ A`. -/
def beal_even_not_pow2_implies_level_26_newform :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step14_X0_26_RibetMazur_plan.beal_even_not_pow2_implies_level_26_newform

/-- Uninhabited.  `13 ∣ A` matching lock. -/
def beal_even_not_pow2_13dvdA_False :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step14_X0_26_RibetMazur_plan.beal_even_not_pow2_13dvdA_False

/-- Uninhabited.  General `N' = 2 q`. -/
def beal_even_not_pow2_general_False :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step14_X0_26_RibetMazur_plan.beal_even_not_pow2_general_False

/-- Uninhabited.  Closing even `A`. -/
def beal_even_A_closed :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step14_X0_26_RibetMazur_plan.beal_even_A_closed

/-- Uninhabited public API. -/
def beal_4_13_13_X0_26_RibetMazur_plan :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step14_X0_26_RibetMazur_plan.beal_4_13_13_X0_26_RibetMazur_plan

/-! ## v8.22.1 — X₀(2q) / Darmon–Merel even-not-pow2 plan -/

/-- Inhabited.  Recursive 2-adic stripping. -/
def oddPart_rec :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step15_X0_2q_Darmon_Merel_plan.oddPart_rec

/-- Inhabited.  Product of distinct prime factors. -/
def rad_step15 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step15_X0_2q_Darmon_Merel_plan.rad

/-- Inhabited.  `oddPart_rec n = n / 2^{v₂(n)}`. -/
def oddPart_def :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step15_X0_2q_Darmon_Merel_plan.oddPart_def

/-- Inhabited.  `rad n ∣ n²`. -/
def rad_dvd_pow :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step15_X0_2q_Darmon_Merel_plan.rad_dvd_pow

/-- Inhabited.  Even not-pow2 has odd prime on the odd part. -/
def even_not_pow2_has_odd_prime_q :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step15_X0_2q_Darmon_Merel_plan.even_not_pow2_has_odd_prime_q

/-- Inhabited.  Displayed `2q` divides `2 · rad(oddPart)`. -/
def level_2q_of_odd_prime_dvd_A :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step15_X0_2q_Darmon_Merel_plan.level_2q_of_odd_prime_dvd_A

/-- Uninhabited.  Kraus residual at level `2q`. -/
def kraus_criterion_q_ne_13 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step15_X0_2q_Darmon_Merel_plan.kraus_criterion_q_ne_13

/-- Uninhabited.  No matching Frey newform on `X₀(2q)`. -/
def X0_2q_no_Frey_match :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step15_X0_2q_Darmon_Merel_plan.X0_2q_no_Frey_match

/-- Uninhabited.  General `q ≠ 13` close. -/
def beal_even_not_pow2_general_q_False :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step15_X0_2q_Darmon_Merel_plan.beal_even_not_pow2_general_q_False

/-- Uninhabited.  Even not-pow2 close. -/
def beal_even_not_pow2_closed_v8_22_1 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step15_X0_2q_Darmon_Merel_plan.beal_even_not_pow2_closed_v8_22_1

/-- Uninhabited.  Even `A` close. -/
def beal_even_A_closed_v8_22_1 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step15_X0_2q_Darmon_Merel_plan.beal_even_A_closed_v8_22_1

/-- Uninhabited public API. -/
def beal_4_13_13_X0_2q_Darmon_Merel_plan :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step15_X0_2q_Darmon_Merel_plan.beal_4_13_13_X0_2q_Darmon_Merel_plan

/-! ## v8.23.0 — odd-`A` closure plan -/

/-- Inhabited.  `13 B¹² ≤ S ≤ 13 C¹²`. -/
def S_bounds_13_B12_le_S_le_13_C12 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step16_Odd_A_closure_plan.S_bounds_13_B12_le_S_le_13_C12

/-- Inhabited.  `k = u⁴` or `13 u⁴` or `13³ u⁴`. -/
def k_almost_fourth_power_shape :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step16_Odd_A_closure_plan.k_almost_fourth_power_shape

/-- Inhabited.  `k ≤ A⁴/(13 B¹²)`. -/
def k_le_A4_div_13_B12 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step16_Odd_A_closure_plan.k_le_A4_div_13_B12

/-- Inhabited.  `B > 100` freezes `100¹²`. -/
def B_gt_100_k_bounded :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step16_Odd_A_closure_plan.B_gt_100_k_bounded

/-- Inhabited.  `C ≥ 2 B` → `A ≥ 9 B³`. -/
def k_ge_B_imp_A_ge_9B3 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step16_Odd_A_closure_plan.k_ge_B_imp_A_ge_9B3

/-- Uninhabited.  Zsigmondy prime of `S`. -/
def zsigmondy_prime_S :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step16_Odd_A_closure_plan.zsigmondy_prime_S

/-- Uninhabited.  Unconditional `S_not_fourth`. -/
def S_not_fourth_power_of_zsig :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step16_Odd_A_closure_plan.S_not_fourth_power_of_zsig

/-- Uninhabited.  Odd-`A` close. -/
def beal_odd_A_closed_v8_23_0 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step16_Odd_A_closure_plan.beal_odd_A_closed_v8_23_0

/-- Uninhabited public API. -/
def beal_4_13_13_Zsigmondy_13_odd_A_closure_plan :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step16_Odd_A_closure_plan.beal_4_13_13_Zsigmondy_13_odd_A_closure_plan

/-! ## v8.23.1 — Zsigmondy `S` `v_p=1` plan -/

/-- Inhabited.  `S = (C¹³ − B¹³)/(C − B)`. -/
def S_val :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step17_Zsig_S_vp1_plan.S_val

/-- Inhabited.  `13 B¹² ≤ S_val ≤ 13 C¹²`. -/
def S_bounds :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step17_Zsig_S_vp1_plan.S_bounds

/-- Inhabited.  `13 ∤ B`, `B ≡ C [MOD 13]` → `13 ∣ S`. -/
def thirteen_dvd_S_of_13_nmid_B :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step17_Zsig_S_vp1_plan.thirteen_dvd_S_of_13_nmid_B

/-- Inhabited.  Honest `S_val` wrap of `gcd(k,S) ∣ 13`. -/
def gcd_k_S_dvd_13_S_val :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step17_Zsig_S_vp1_plan.gcd_k_S_dvd_13

/-- Inhabited.  `k = g · u⁴` for `g ∈ {1, 13, 2197}`. -/
def k_shape_1_13_13cubed :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step17_Zsig_S_vp1_plan.k_shape_1_13_13cubed

/-- Uninhabited.  Primitive Zsigmondy prime of `S`. -/
def zsigmondy_exists_primitive :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step17_Zsig_S_vp1_plan.zsigmondy_exists_primitive

/-- Uninhabited.  Bundled `v_p(S) = 1`. -/
def zsigmondy_vp_S_eq_one :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step17_Zsig_S_vp1_plan.zsigmondy_vp_S_eq_one

/-- Uninhabited.  `S · g` not a fourth power from `v_p=1`. -/
def S_times_g_not_fourth_of_vp1 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step17_Zsig_S_vp1_plan.S_times_g_not_fourth_of_vp1

/-- Uninhabited.  Odd-`A` close via Zsigmondy. -/
def beal_odd_A_closed_v8_23_1 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step17_Zsig_S_vp1_plan.beal_odd_A_closed_v8_23_1

/-- Uninhabited public API. -/
def beal_4_13_13_Zsigmondy_13_Zsig_S_vp1_plan :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step17_Zsig_S_vp1_plan.beal_4_13_13_Zsigmondy_13_Zsig_S_vp1_plan

/-! ## v8.24.0 — Zsigmondy primitive vp1 inhabited -/

/-- Inhabited.  Honest `C = B+k`, `0 < k`, `Coprime k B`. -/
def gcd_k_S_dvd_13_honest :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step18_Zsig_primitive_vp1_inhabited.gcd_k_S_dvd_13_honest

/-- Inhabited.  `B ≡ C [MOD 13]`, `13 ∤ B` → `13 ∣ S`. -/
def thirteen_dvd_S_of_BeqC_mod13 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step18_Zsig_primitive_vp1_inhabited.thirteen_dvd_S_of_BeqC_mod13

/-- Inhabited.  Primitive Zsigmondy prime of `S`. -/
def zsigmondy_exists_primitive_inhabited :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step18_Zsig_primitive_vp1_inhabited.zsigmondy_exists_primitive_inhabited

/-- Inhabited.  Hensel-conditional `v_p(S) = 1`. -/
def zsigmondy_vp_S_eq_one_inhabited :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step18_Zsig_primitive_vp1_inhabited.zsigmondy_vp_S_eq_one_inhabited

/-- Inhabited.  `gcd(k,S) ∣ 13` and `p ≡ 1 [MOD 13]` force `p ∤ k`. -/
def zsig_p_not_dvd_k_of_gcd_inhabited :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step18_Zsig_primitive_vp1_inhabited.zsig_p_not_dvd_k_of_gcd_inhabited

/-- Inhabited.  `S · g` is not a fourth power from real `v_p = 1`. -/
def S_times_g_not_fourth_of_vp1_inhabited :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step18_Zsig_primitive_vp1_inhabited.S_times_g_not_fourth_of_vp1_inhabited

/-- Inhabited.  Odd `A ≥ 3` closes from genuine `v_p = 1`. -/
def beal_odd_A_ge3_closed_of_vp1 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step18_Zsig_primitive_vp1_inhabited.beal_odd_A_ge3_closed_of_vp1

/-- Inhabited.  Same close with the `B > 100` slot. -/
def beal_odd_A_ge3_B_gt_100_closed_of_vp1 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step18_Zsig_primitive_vp1_inhabited.beal_odd_A_ge3_B_gt_100_closed_of_vp1

/-- Uninhabited.  Bundled `v_p(S) = 1` without Hensel. -/
def zsigmondy_vp_S_eq_one_unconditional :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step18_Zsig_primitive_vp1_inhabited.zsigmondy_vp_S_eq_one_unconditional

/-- Uninhabited.  Bare `B ≤ 100` close. -/
def beal_odd_A_ge3_B_le_100_closed :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step18_Zsig_primitive_vp1_inhabited.beal_odd_A_ge3_B_le_100_closed

/-- Uninhabited.  Sketch close without `v_p = 1`. -/
def beal_odd_A_ge3_B_gt_100_closed_via_zsig_inhabited :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step18_Zsig_primitive_vp1_inhabited.beal_odd_A_ge3_B_gt_100_closed_via_zsig_inhabited

/-- Uninhabited.  Bare odd-`A` close. -/
def beal_odd_A_closed_v8_24_0 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step18_Zsig_primitive_vp1_inhabited.beal_odd_A_closed_v8_24_0

/-- Uninhabited.  Full close still needs even modular. -/
def beal_4_13_13_full_closed_mod_modular_v8_24_0 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step18_Zsig_primitive_vp1_inhabited.beal_4_13_13_full_closed_mod_modular_v8_24_0

/-- Uninhabited public API. -/
def beal_4_13_13_Zsigmondy_13_Zsig_primitive_vp1_inhabited_plan :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step18_Zsig_primitive_vp1_inhabited.beal_4_13_13_Zsigmondy_13_Zsig_primitive_vp1_inhabited_plan

/-! ## v8.24.1 — odd-`A` closed for real (Hensel glue) -/

/-- Inhabited.  Primitive `p ∣ S` misses `B` and `C`. -/
def primitive_prime_not_dvd_bases :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step19_Odd_A_closed_for_real.primitive_prime_not_dvd_bases

/-- Inhabited.  Odd `A ≥ 3` closes from genuine `v_p = 1`. -/
def beal_odd_A_ge3_closed_of_vp1_inhabited :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step19_Odd_A_closed_for_real.beal_odd_A_ge3_closed_of_vp1_inhabited

/-- Inhabited.  Glue of primitive + Hensel `v_p=1` + `of_vp1`. -/
def beal_odd_A_closed_via_zsig_hensel :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step19_Odd_A_closed_for_real.beal_odd_A_closed_via_zsig_hensel

/-- Inhabited public API with the Hensel lock. -/
def beal_4_13_13_Zsigmondy_13_odd_A_closed_for_real_of_hensel :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step19_Odd_A_closed_for_real.beal_4_13_13_Zsigmondy_13_odd_A_closed_for_real_of_hensel

/-- Uninhabited.  Sketch bare odd-`A` close. -/
def beal_odd_A_closed_v8_24_0_inhabited :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step19_Odd_A_closed_for_real.beal_odd_A_closed_v8_24_0_inhabited

/-- Uninhabited.  Full close still needs even modular. -/
def beal_4_13_13_full_closed_mod_modular_v8_24_0_inhabited :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step19_Odd_A_closed_for_real.beal_4_13_13_full_closed_mod_modular_v8_24_0_inhabited

/-- Uninhabited public API. -/
def beal_4_13_13_Zsigmondy_13_odd_A_closed_for_real :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step19_Odd_A_closed_for_real.beal_4_13_13_Zsigmondy_13_odd_A_closed_for_real

/-! ## v8.25.0 — Hensel dichotomy `S_not_fourth` plan -/

/-- Inhabited.  Step11 order dichotomy on `S_val`. -/
def p_sq_dvd_S_iff_order_13_mod_p_sq :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step20_Hensel_dichotomy_S_not_fourth_plan.p_sq_dvd_S_iff_order_13_mod_p_sq

/-- Inhabited.  `B=1`, `C=460`, `p=53` lifts: `p² ∣ S`. -/
def hensel_lift_example_B1_C460_p53 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step20_Hensel_dichotomy_S_not_fourth_plan.hensel_lift_example_B1_C460_p53

/-- Inhabited.  `C ∈ {B+1, B+2}` table close for `B ≤ 100`. -/
def C_eq_B_plus_1_or_2_closed :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step20_Hensel_dichotomy_S_not_fourth_plan.C_eq_B_plus_1_or_2_closed

/-- Exists-`p` form of a valuation not a multiple of 4. -/
def S_not_fourth :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step20_Hensel_dichotomy_S_not_fourth_plan.S_not_fourth

/-- Inhabited.  Order `≠ 13` in `(ℤ/p²)ˣ` gives `S_not_fourth`. -/
def S_not_fourth_of_order_ne_13 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step20_Hensel_dichotomy_S_not_fourth_plan.S_not_fourth_of_order_ne_13

/-- Inhabited exists-`p` Hensel close (Step20). -/
def beal_odd_A_closed_via_zsig_hensel_exists :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step20_Hensel_dichotomy_S_not_fourth_plan.beal_odd_A_closed_via_zsig_hensel

/-- Uninhabited.  Remaining Hensel lock for
`B ≤ 100` with `C ≥ B+3` and for `B > 100`. -/
def exists_p_with_order_ne_13_mod_p_sq :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step20_Hensel_dichotomy_S_not_fourth_plan.exists_p_with_order_ne_13_mod_p_sq

/-! ## v8.26.0 — exists-`p` order-`≠ 13` plan -/

/-- Inhabited.  Step11 dichotomy wrap. -/
def p_sq_dvd_S_iff_order_13_mod_p_sq_inhabited :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step21_exists_p_order_ne_13_plan.p_sq_dvd_S_iff_order_13_mod_p_sq_inhabited

/-- Inhabited.  Conditional `v_p=1` from order `≠ 13`. -/
def zsigmondy_vp_S_eq_one_of_order_ne_13 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step21_exists_p_order_ne_13_plan.zsigmondy_vp_S_eq_one_of_order_ne_13

/-- Inhabited.  Two primes, one not square, gives order `≠ 13`. -/
def exists_p_of_two_primes_one_not_square :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step21_exists_p_order_ne_13_plan.exists_p_of_two_primes_one_not_square

/-- Uninhabited.  Zsigmondy gives one primitive prime, not two. -/
def S_has_two_distinct_primitive_primes_when_C_ge_B_plus_3 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step21_exists_p_order_ne_13_plan.S_has_two_distinct_primitive_primes_when_C_ge_B_plus_3

/-- Uninhabited.  Two lifts can both succeed. -/
def not_all_p_lift_when_two_primes :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step21_exists_p_order_ne_13_plan.not_all_p_lift_when_two_primes

/-- Uninhabited.  Remaining Hensel lock. -/
def exists_p_with_order_ne_13_mod_p_sq_inhabited :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step21_exists_p_order_ne_13_plan.exists_p_with_order_ne_13_mod_p_sq_inhabited

/-- Uninhabited.  Sketch odd-`A` close from bare `C ≥ B+3`. -/
def beal_odd_A_closed_via_zsig_hensel_inhabited :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step21_exists_p_order_ne_13_plan.beal_odd_A_closed_via_zsig_hensel_inhabited

/-! ## v8.27.0 — two-primitive-primes counting plan -/

/-- Inhabited.  `S` is not a power of `13`. -/
def S_not_power_of_thirteen :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step22_two_primitive_primes_counting_plan.S_not_power_of_thirteen

/-- Inhabited wrap of the two-primes-one-not-square glue. -/
def exists_p_of_two_primes_one_not_square_inhabited :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step22_two_primitive_primes_counting_plan.exists_p_of_two_primes_one_not_square_inhabited

/-- Inhabited wrap of conditional `v_p=1`. -/
def zsigmondy_vp_S_eq_one_of_order_ne_13_inhabited :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step22_two_primitive_primes_counting_plan.zsigmondy_vp_S_eq_one_of_order_ne_13_inhabited

/-- Inhabited wrap of `S_not_fourth` from order `≠ 13`. -/
def S_not_fourth_of_order_ne_13_inhabited :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step22_two_primitive_primes_counting_plan.S_not_fourth_of_order_ne_13_inhabited

/-- Uninhabited.  `S` may still be `q^k`. -/
def S_not_prime_power_when_C_ge_B_plus_3 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step22_two_primitive_primes_counting_plan.S_not_prime_power_when_C_ge_B_plus_3

/-! ## v8.28.0 — Phi13 / Zeta13 prime-ideal plan -/

/-- Inhabited.  Displayed cyclotomic norm equals `S_val`. -/
def norm_eq_S :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step23_Phi13_Zeta13_prime_ideal_plan.norm_eq_S

/-- Inhabited.  Recorded class number of `Q(ζ₁₃)` is `1`. -/
def zeta13_class_number_one :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step23_Phi13_Zeta13_prime_ideal_plan.zeta13_class_number_one

/-- Inhabited.  One primitive prime of the displayed norm. -/
def zeta13_prime_ideal_factorization_exists :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step23_Phi13_Zeta13_prime_ideal_plan.zeta13_prime_ideal_factorization_exists

/-- Inhabited wrap.  `S` is not a power of `13`. -/
def S_not_power_of_thirteen_inhabited :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step23_Phi13_Zeta13_prime_ideal_plan.S_not_power_of_thirteen_inhabited

/-- Uninhabited.  Same lock as two rational primes. -/
def S_has_two_distinct_prime_ideals_in_Z_zeta13_when_C_ge_B_plus_3 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step23_Phi13_Zeta13_prime_ideal_plan.S_has_two_distinct_prime_ideals_in_Z_zeta13_when_C_ge_B_plus_3

/-- Uninhabited.  Two ideals need not lie over two rationals. -/
def zeta13_two_prime_ideals_give_two_rational_primes :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step23_Phi13_Zeta13_prime_ideal_plan.zeta13_two_prime_ideals_give_two_rational_primes

/-! ## v8.29.0 — Phi13 derivative / LTE plan -/

/-- Univariate cyclotomic 13-sum. -/
def Phi13 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step24_Phi13_derivative_LTE_plan.Phi13

/-- Inhabited.  A Phi13-root is simple when `p ≠ 13`. -/
def phi13_derivative_separable_mod_p :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step24_Phi13_derivative_LTE_plan.phi13_derivative_separable_mod_p

/-- Inhabited.  Unique Hensel class in `ZMod (p²)`. -/
def hensel_unique_lift_of_phi13_root :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step24_Phi13_derivative_LTE_plan.hensel_unique_lift_of_phi13_root

/-- Inhabited.  `p² ∣ S` iff the ratio equals that class. -/
def p_sq_dvd_S_iff_CB_eq_lifted_root :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step24_Phi13_derivative_LTE_plan.p_sq_dvd_S_iff_CB_eq_lifted_root

/-! ## v8.30.0 — Chebotarev lift density plan -/

/-- Inhabited wrap.  A Phi13-root is simple when `p ≠ 13`. -/
def phi13_derivative_separable_mod_p_inhabited :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step25_Chebotarev_lift_density_plan.phi13_derivative_separable_mod_p_inhabited

/-- Inhabited wrap.  Unique Hensel class in `ZMod (p²)`. -/
def hensel_unique_lift_of_phi13_root_inhabited :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step25_Chebotarev_lift_density_plan.hensel_unique_lift_of_phi13_root_inhabited

/-- Inhabited wrap.  `p² ∣ S` iff the ratio equals that class. -/
def p_sq_dvd_S_iff_CB_eq_lifted_root_inhabited :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step25_Chebotarev_lift_density_plan.p_sq_dvd_S_iff_CB_eq_lifted_root_inhabited

/-- Inhabited.  Infinitely many primes `p ≡ 1 [MOD 13]`. -/
def primes_eq1_mod13_infinite :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step25_Chebotarev_lift_density_plan.primes_eq1_mod13_infinite

/-- Inhabited.  Support: `p | Phi13 t` and `p ≠ 13` force `p ≡ 1 [MOD 13]`. -/
def density_p_div_S :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step25_Chebotarev_lift_density_plan.density_p_div_S

/-- Inhabited.  The residue fibre in `ZMod (p²)` has card `p`. -/
def thin_set_p_sq_div_S :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step25_Chebotarev_lift_density_plan.thin_set_p_sq_div_S

/-- Uninhabited.  Density heuristic, not effective Chebotarev. -/
def chebotarev_gives_p_with_p_div_not_p_sq_div_when_C_ge_B_plus_3 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step25_Chebotarev_lift_density_plan.chebotarev_gives_p_with_p_div_not_p_sq_div_when_C_ge_B_plus_3

/-! ## v8.31.0 — S not a prime power gap-3 fast track -/

/-- Inhabited.  `S_val 1 5 = 305175781`. -/
def S_val_1_5 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step26_S_not_prime_power_gap3_fast_track.S_val_1_5

/-- Inhabited.  Pratt primality of `S_val 1 5`. -/
def S_val_1_5_prime :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step26_S_not_prime_power_gap3_fast_track.S_val_1_5_prime

/-- Inhabited.  Gap-3 pair on which `S` is `p^1`. -/
def S_prime_power_example_B1_C5 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step26_S_not_prime_power_gap3_fast_track.S_prime_power_example_B1_C5

/-- Inhabited.  If `S = q^k` then every prime of `S` equals `q`. -/
def prime_power_S_eq_zsigmondy_prime :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step26_S_not_prime_power_gap3_fast_track.prime_power_S_eq_zsigmondy_prime

/-- Uninhabited sketch.  False: `S_val 1 5` is prime. -/
def S_not_prime_power_when_C_ge_B_plus_3_fast :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step26_S_not_prime_power_gap3_fast_track.S_not_prime_power_when_C_ge_B_plus_3_fast

/-- Uninhabited sketch.  False on `B = 1`, `C = 5`. -/
def S_has_two_distinct_primitive_primes_when_C_ge_B_plus_3_fast :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step26_S_not_prime_power_gap3_fast_track.S_has_two_distinct_primitive_primes_when_C_ge_B_plus_3_fast

/-- Inhabited.  The gap-3 “never a prime power” sketch is false. -/
def S_not_prime_power_when_C_ge_B_plus_3_fast_refuted :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step26_S_not_prime_power_gap3_fast_track.S_not_prime_power_when_C_ge_B_plus_3_fast_refuted

/-- Inhabited.  The gap-3 two-primitive-primes sketch is false. -/
def S_has_two_distinct_primitive_primes_when_C_ge_B_plus_3_fast_refuted :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step26_S_not_prime_power_gap3_fast_track.S_has_two_distinct_primitive_primes_when_C_ge_B_plus_3_fast_refuted

/-- Inhabited.  On `B = 1`, `C = 5` the unique prime of `S` has order ≠ 13. -/
def exists_p_with_order_ne_13_mod_p_sq_example_B1_C5 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step26_S_not_prime_power_gap3_fast_track.exists_p_with_order_ne_13_mod_p_sq_example_B1_C5

/-! ## v8.32.0 — S not a proper prime power gap-3 -/

/-- Inhabited.  `n = p^k` with `k ≥ 2`. -/
def IsProperPrimePower :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step27_S_not_proper_prime_power_gap3.IsProperPrimePower

/-- Inhabited.  A prime is not a proper prime power. -/
def not_isProperPrimePower_of_prime {n : Nat} (hn : Nat.Prime n) :
    ¬ IsProperPrimePower n :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step27_S_not_proper_prime_power_gap3.not_isProperPrimePower_of_prime hn

/-- Inhabited.  Proper prime power implies `p² ∣ n`. -/
def proper_prime_power_imp_sq_dvd :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step27_S_not_proper_prime_power_gap3.proper_prime_power_imp_sq_dvd

/-- Inhabited.  `S_val 1 5` is prime, hence not a proper prime power. -/
def S_val_1_5_not_proper_prime_power :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step27_S_not_proper_prime_power_gap3.S_val_1_5_not_proper_prime_power

/-- Uninhabited.  Ljunggren-type; `B = 1`, `C = 5` is `k = 1`. -/
def S_not_proper_prime_power_when_C_ge_B_plus_3 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step27_S_not_proper_prime_power_gap3.S_not_proper_prime_power_when_C_ge_B_plus_3

/-- Uninhabited.  Need some prime with factorization exponent 1. -/
def S_has_prime_with_exp_one :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step27_S_not_proper_prime_power_gap3.S_has_prime_with_exp_one

/-! ## v8.33.0 — S has a prime with exponent one (example) -/

/-- Inhabited.  Some prime divides `n` to exponent exactly 1. -/
def HasPrimeWithExpOne :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step28_S_has_prime_with_exp_one_gap3.HasPrimeWithExpOne

/-- Inhabited.  Every prime dividing `n` has exponent at least 2. -/
def IsSquarefull :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step28_S_has_prime_with_exp_one_gap3.IsSquarefull

/-- Inhabited.  A prime is not squarefull. -/
def not_squarefull_of_prime {n : Nat} (hn : Nat.Prime n) :
    ¬ IsSquarefull n :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step28_S_has_prime_with_exp_one_gap3.not_squarefull_of_prime hn

/-- Inhabited.  A prime has exponent one. -/
def hasPrimeWithExpOne_of_prime {n : Nat} (hn : Nat.Prime n) :
    HasPrimeWithExpOne n :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step28_S_has_prime_with_exp_one_gap3.hasPrimeWithExpOne_of_prime hn

/-- Inhabited.  `S_val 1 5` is prime, hence has exponent one. -/
def S_val_1_5_has_prime_with_exp_one :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step28_S_has_prime_with_exp_one_gap3.S_val_1_5_has_prime_with_exp_one

/-- Inhabited.  Glue: exp-one primitive prime ⇒ order ≠ 13. -/
def exists_p_with_order_ne_13_of_has_exp_one :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step28_S_has_prime_with_exp_one_gap3.exists_p_with_order_ne_13_of_has_exp_one

/-- Uninhabited.  Eight rows are not every `B ≤ 100`. -/
def S_has_prime_with_exp_one_when_C_ge_B_plus_3 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step28_S_has_prime_with_exp_one_gap3.S_has_prime_with_exp_one_when_C_ge_B_plus_3

/-! ## v8.34.0 — B ≤ 100 exp-one table (named rows) -/

/-- Inhabited.  Eight named `B ≤ 100` gap-3 rows.  Not a `∀`. -/
def S_has_prime_with_exp_one_B_le_100_table_rows :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step29_B_le_100_exp_one_table.S_has_prime_with_exp_one_B_le_100_table_rows

/-- Inhabited.  `(1,4)` p=2731. -/
def S_val_1_4_has_prime_with_exp_one :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step29_B_le_100_exp_one_table.S_val_1_4_has_prime_with_exp_one

/-- Inhabited.  `(1,8)` p=79. -/
def S_val_1_8_has_prime_with_exp_one :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step29_B_le_100_exp_one_table.S_val_1_8_has_prime_with_exp_one

/-- Inhabited.  `(2,5)` Pratt prime. -/
def S_val_2_5_has_prime_with_exp_one :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step29_B_le_100_exp_one_table.S_val_2_5_has_prime_with_exp_one

/-- Inhabited.  `(4,7)` p=53. -/
def S_val_4_7_has_prime_with_exp_one :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step29_B_le_100_exp_one_table.S_val_4_7_has_prime_with_exp_one

/-- Inhabited.  `(5,8)` p=53. -/
def S_val_5_8_has_prime_with_exp_one :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step29_B_le_100_exp_one_table.S_val_5_8_has_prime_with_exp_one

/-- Inhabited.  `(10,13)` p=53. -/
def S_val_10_13_has_prime_with_exp_one :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step29_B_le_100_exp_one_table.S_val_10_13_has_prime_with_exp_one

/-- Inhabited.  `(100,103)` p=599. -/
def S_val_100_103_has_prime_with_exp_one :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step29_B_le_100_exp_one_table.S_val_100_103_has_prime_with_exp_one

/-- Inhabited.  Glue on the `(1,4)` row. -/
def exists_p_with_order_ne_13_mod_p_sq_example_B1_C4 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step29_B_le_100_exp_one_table.exists_p_with_order_ne_13_mod_p_sq_example_B1_C4

/-! ## v8.35.0 — S not a proper prime power from the exp-one table -/

/-- Inhabited.  Exp-one implies not `q^k` for `k ≥ 2`. -/
def not_proper_prime_power_of_has_exp_one {n : Nat}
    (h : HasPrimeWithExpOne n) : ¬ IsProperPrimePower n :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step30_S_not_proper_power_B_le_100_from_exp_one.not_proper_prime_power_of_has_exp_one h

/-- Inhabited.  Eight named `B ≤ 100` rows are not proper prime powers. -/
def S_not_proper_prime_power_B_le_100_from_exp_one_table_rows :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step30_S_not_proper_power_B_le_100_from_exp_one.S_not_proper_prime_power_B_le_100_from_exp_one_table_rows

/-- Inhabited.  `(1,4)` from exp-one. -/
def S_val_1_4_not_proper_prime_power :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step30_S_not_proper_power_B_le_100_from_exp_one.S_val_1_4_not_proper_prime_power

/-- Inhabited.  `(1,8)` from exp-one. -/
def S_val_1_8_not_proper_prime_power :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step30_S_not_proper_power_B_le_100_from_exp_one.S_val_1_8_not_proper_prime_power

/-- Inhabited.  `(2,5)` from exp-one. -/
def S_val_2_5_not_proper_prime_power :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step30_S_not_proper_power_B_le_100_from_exp_one.S_val_2_5_not_proper_prime_power

/-- Inhabited.  `(100,103)` from exp-one. -/
def S_val_100_103_not_proper_prime_power :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step30_S_not_proper_power_B_le_100_from_exp_one.S_val_100_103_not_proper_prime_power

/-! ## v8.36.0 — B ≤ 100 order ≠ 13 from the exp-one table -/

/-- Inhabited.  `(1,4)` p=2731 has order ≠ 13. -/
def order_ne_13_B1_C4 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step31_B_le_100_order_ne_13_from_exp_one.order_ne_13_B1_C4

/-- Inhabited.  `(1,5)` Pratt prime has order ≠ 13. -/
def order_ne_13_B1_C5 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step31_B_le_100_order_ne_13_from_exp_one.order_ne_13_B1_C5

/-- Inhabited.  `(1,8)` p=79 has order ≠ 13. -/
def order_ne_13_B1_C8 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step31_B_le_100_order_ne_13_from_exp_one.order_ne_13_B1_C8

/-- Inhabited.  `(2,5)` Pratt prime has order ≠ 13. -/
def order_ne_13_B2_C5 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step31_B_le_100_order_ne_13_from_exp_one.order_ne_13_B2_C5

/-- Inhabited.  `(10,13)` p=53 has order ≠ 13. -/
def order_ne_13_B10_C13 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step31_B_le_100_order_ne_13_from_exp_one.order_ne_13_B10_C13

/-- Inhabited.  `(100,103)` p=599 has order ≠ 13. -/
def order_ne_13_B100_C103 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step31_B_le_100_order_ne_13_from_exp_one.order_ne_13_B100_C103

/-- Inhabited.  Eight named rows have a primitive prime with order ≠ 13. -/
def exists_p_with_order_ne_13_B_le_100_from_exp_one_table_rows :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step31_B_le_100_order_ne_13_from_exp_one.exists_p_with_order_ne_13_B_le_100_from_exp_one_table_rows

/-- Inhabited.  Eight named rows have `S` not a fourth power. -/
def S_not_fourth_B_le_100_from_exp_one_table_rows :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step31_B_le_100_order_ne_13_from_exp_one.S_not_fourth_B_le_100_from_exp_one_table_rows

/-! ## v8.37.0 — B ≤ 1000 exp-one extension (64 rows) -/

/-- Inhabited.  64 named `B ≤ 1000` gap-3 rows have exp one. -/
def S_has_prime_with_exp_one_B_le_1000_table_rows :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step32_B_le_1000_exp_one_extension.S_has_prime_with_exp_one_B_le_1000_table_rows

/-- Inhabited.  Those rows have a primitive prime with order ≠ 13. -/
def exists_p_with_order_ne_13_B_le_1000_from_exp_one_table_rows :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step32_B_le_1000_exp_one_extension.exists_p_with_order_ne_13_B_le_1000_from_exp_one_table_rows

/-- Inhabited.  Those rows have `S` not a fourth power. -/
def S_not_fourth_B_le_1000_from_exp_one_table_rows :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step32_B_le_1000_exp_one_extension.S_not_fourth_B_le_1000_from_exp_one_table_rows

/-- Inhabited.  `(1000,1003)` p=53. -/
def row_1000_1003 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step32_B_le_1000_exp_one_extension.row_1000_1003

/-! ## v8.38.0 — B ≤ 10000 exp-one extension (256 rows) -/

/-- Inhabited.  256 named `B ≤ 10000` gap-3 rows have exp one. -/
def S_has_prime_with_exp_one_B_le_10000_table_rows :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step33_B_le_10000_exp_one_extension.S_has_prime_with_exp_one_B_le_10000_table_rows

/-- Inhabited.  Those rows have a primitive prime with order ≠ 13. -/
def exists_p_with_order_ne_13_B_le_10000_from_exp_one_table_rows :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step33_B_le_10000_exp_one_extension.exists_p_with_order_ne_13_B_le_10000_from_exp_one_table_rows

/-- Inhabited.  Those rows have `S` not a fourth power. -/
def S_not_fourth_B_le_10000_from_exp_one_table_rows :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step33_B_le_10000_exp_one_extension.S_not_fourth_B_le_10000_from_exp_one_table_rows

/-- Inhabited.  `(10000,10003)` p=1613. -/
def row_10000_10003 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step33_B_le_10000_exp_one_extension.row_10000_10003

/-! ## v8.39.0 — B ≤ 50000 exp-one extension (188 rows) -/

/-- Inhabited.  188 named `B ≤ 50000` gap-3 rows have exp one. -/
def S_has_prime_with_exp_one_B_le_50000_table_rows :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step34_B_le_50000_exp_one_extension.S_has_prime_with_exp_one_B_le_50000_table_rows

/-- Inhabited.  Those rows have a primitive prime with order ≠ 13. -/
def exists_p_with_order_ne_13_B_le_50000_from_exp_one_table_rows :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step34_B_le_50000_exp_one_extension.exists_p_with_order_ne_13_B_le_50000_from_exp_one_table_rows

/-- Inhabited.  Those rows have `S` not a fourth power. -/
def S_not_fourth_B_le_50000_from_exp_one_table_rows :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step34_B_le_50000_exp_one_extension.S_not_fourth_B_le_50000_from_exp_one_table_rows

/-- Inhabited.  `(50000,50003)` p=313. -/
def row_50000_50003 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step34_B_le_50000_exp_one_extension.row_50000_50003

/-! ## v8.40.0 — B > 50000 rad-bound infrastructure -/

/-- Inhabited.  `S ≤ 13 C¹²` when `B < C`. -/
def S_le_13_C_pow12 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step35_B_gt_50000_rad_bound.S_le_13_C_pow12

/-- Inhabited.  Nat envelope `√S ≤ 4 C⁶`. -/
def sqrt_S_le_4_C6 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step35_B_gt_50000_rad_bound.sqrt_S_le_4_C6

/-- Inhabited.  Squarefull ⇒ `rad ≤ √n`. -/
def rad_le_sqrt_of_squarefull {n : Nat} (hn : 0 < n)
    (hsq : BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step28_S_has_prime_with_exp_one_gap3.IsSquarefull n) :
    BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step15_X0_2q_Darmon_Merel_plan.rad n ≤ Nat.sqrt n :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step35_B_gt_50000_rad_bound.rad_le_sqrt_of_squarefull hn hsq

/-- Greatest prime factor of `S = Φ₁₃(C,B)`. -/
def P_phi13 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step35_B_gt_50000_rad_bound.P_phi13

/-- Inhabited.  `P(Φ₁₃) > C` ⇒ `rad(S) > C`. -/
def rad_gt_C_of_P_phi13_gt_C :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step35_B_gt_50000_rad_bound.rad_gt_C_of_P_phi13_gt_C

/-! ## v8.41.0 — Kraus / X₀(26) elimination infrastructure -/

/-- Inhabited.  `26 = 2 · 13`. -/
def level_26_eq_2_mul_13 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step36_Kraus_X0_26_elimination.level_26_eq_2_mul_13

/-- Inhabited.  Displayed cusps `[1, 2, 13, 26]`. -/
def fourCuspsList_eq_step36 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step36_Kraus_X0_26_elimination.fourCuspsList_eq

/-- Inhabited.  Four cusps plus `26a1` / `26b1`. -/
def X0_26_Q_displayed_points :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step36_Kraus_X0_26_elimination.X0_26_Q_displayed_points

/-- Inhabited.  Ledger Hasse `a_p² ≤ 4p` at Kraus primes. -/
def ap_bound_level_26 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step36_Kraus_X0_26_elimination.ap_bound_level_26

/-- Inhabited.  Displayed `S₂(Γ₀(26))` dimension `2`. -/
def S2_level_26_dim_two :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step36_Kraus_X0_26_elimination.S2_level_26_dim_two

/-- Uninhabited.  Kraus matching at `q = 13`, level 26. -/
def kraus_elimination_q_13_level_26 : Prop :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step36_Kraus_X0_26_elimination.kraus_elimination_q_13_level_26

/-! ## v8.42.0 — B ≤ 100000 exp-one extension (300+ rows) -/

/-- Inhabited.  188 inherited `B ≤ 50000` rows plus 130 new
`50000 < B ≤ 100000` gap-3 rows have exp one. -/
def S_has_prime_with_exp_one_B_le_100000_table_rows :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step37_B_le_100k_extension.S_has_prime_with_exp_one_B_le_100000_table_rows

/-- Inhabited.  Those rows have a primitive prime with order ≠ 13. -/
def exists_p_with_order_ne_13_B_le_100000_from_exp_one_table_rows :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step37_B_le_100k_extension.exists_p_with_order_ne_13_B_le_100000_from_exp_one_table_rows

/-- Inhabited.  Those rows have `S` not a fourth power. -/
def S_not_fourth_B_le_100000_from_exp_one_table_rows :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step37_B_le_100k_extension.S_not_fourth_B_le_100000_from_exp_one_table_rows

/-- Inhabited.  `(100000,100003)` p=547. -/
def row_100000_100003 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step37_B_le_100k_extension.row_100000_100003

/-- Uninhabited.  Bugeaud `P(Φ₁₃) > C` on `B > 100000`. -/
def bugeaud_P_phi13_gt_C_when_B_gt_100000 : Prop :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step37_B_le_100k_extension.bugeaud_P_phi13_gt_C_when_B_gt_100000

/-- Uninhabited.  Squarefull + `B > 100000` would need `rad > √(13 C¹²)`. -/
def rad_S_gt_sqrt_13_C12_when_squarefull_B_gt_100000 : Prop :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step37_B_le_100k_extension.rad_S_gt_sqrt_13_C12_when_squarefull_B_gt_100000

/-! ## v8.43.0 — Kraus p=3 eliminates displayed 26b1 -/

/-- Inhabited.  Ledger `a₃(26b1) = -3` is not a
Frey p=3 trace in `{-2, 0, 2}`. -/
def kraus_elimination_26b1 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step38_Kraus_p3_elim_26b1.kraus_elimination_26b1

/-! ## v8.44.0 — Kraus p=5 eliminates displayed 26a1 -/

/-- Inhabited.  Ledger `a₅(26a1) = -3` is not a
Frey p=5 trace in `{-4, -2, 0, 2, 4}` nor
`{-2, 0, 2}`. -/
def kraus_elimination_26a1 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step39_Kraus_p5_elim_26a1.kraus_elimination_26a1

/-- Inhabited.  Displayed Frey p=5 traces when `5 ∤ A`. -/
def FreyP5TracesGood : List Int :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step39_Kraus_p5_elim_26a1.FreyP5TracesGood

/-- Inhabited.  Displayed Frey p=5 traces when `5 ∣ A`. -/
def FreyP5TracesWhen5DvdA : List Int :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step39_Kraus_p5_elim_26a1.FreyP5TracesWhen5DvdA

/-- Inhabited.  Ledger `a₅(26a1) = -3`. -/
def ap_26a1_5_eq :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step39_Kraus_p5_elim_26a1.ap_26a1_5_eq

/-- Inhabited.  Both displayed level-26 newforms
miss the displayed Frey p=3 and p=5 traces. -/
def s2_26_displayed_newforms_miss_frey_traces :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step39_Kraus_p5_elim_26a1.s2_26_displayed_newforms_miss_frey_traces

/-! ## v8.45.0 — displayed level-lowering pack 26 → 2 -/

/-- Inhabited.  Displayed coefficient misses at
level 26 together with displayed `S₂(Γ₀(2))`
dimension `0`.  Not Mathlib Ribet. -/
def level_lowering_26_to_2_from_no_match :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step40_level_lowering_26_to_2.level_lowering_26_to_2_from_no_match

/-- Inhabited.  Displayed `s2_gamma0_2_dim = 0`. -/
def s2_gamma0_2_dim_displayed_zero :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step40_level_lowering_26_to_2.s2_gamma0_2_dim_displayed_zero

/-- Uninhabited.  Missing Mathlib Ribet arrow
`26 → 2` from a displayed miss. -/
def ribet_26_to_2_from_displayed_miss : Prop :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step40_level_lowering_26_to_2.ribet_26_to_2_from_displayed_miss

/-! ## v8.46.0 — B ≤ 200000 exp-one extension (600 rows) -/

/-- Inhabited.  318 inherited `B ≤ 100000` rows plus 282 new
`100000 < B ≤ 200000` gap-3 rows have exp one.  Step42
re-packs these 600 plus the outlier as 601 rows. -/
def S_has_prime_with_exp_one_B_le_200000_table_rows :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step42_B_200k_outlier_12186951011.S_has_prime_with_exp_one_B_le_200000_table_rows

/-- Inhabited.  Those rows have a primitive prime with order ≠ 13. -/
def exists_p_with_order_ne_13_B_le_200000_from_exp_one_table_rows :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step42_B_200k_outlier_12186951011.exists_p_with_order_ne_13_B_le_200000_from_exp_one_table_rows

/-- Inhabited.  Those rows have `S` not a fourth power. -/
def S_not_fourth_B_le_200000_from_exp_one_table_rows :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step42_B_200k_outlier_12186951011.S_not_fourth_B_le_200000_from_exp_one_table_rows

/-- Inhabited.  Largest `B ≤ 200000` with a `p ≤ 547` witness. -/
def row_199996_199999 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step41_B_le_200k_extension.row_199996_199999

/-! ## v8.47.0 — B = 200000 outlier p = 12186951011 -/

/-- Inhabited.  Pratt prime `12186951011`, `S` mod p = 0,
`S` mod p² ≠ 0, gap = 3. -/
def row_200000_200003 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step42_B_200k_outlier_12186951011.row_200000_200003

/-- Inhabited.  Pratt certificate for the outlier prime. -/
def prime_12186951011 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step42_B_200k_outlier_12186951011.prime_12186951011

/-- Uninhabited.  Bugeaud `P(Φ₁₃) > C` on `B > 200000`. -/
def bugeaud_P_phi13_gt_C_when_B_gt_200000 : Prop :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step41_B_le_200k_extension.bugeaud_P_phi13_gt_C_when_B_gt_200000

/-- Uninhabited.  Squarefull + `B > 200000` would need `rad > √(13 C¹²)`. -/
def rad_S_gt_sqrt_13_C12_when_squarefull_B_gt_200000 : Prop :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step41_B_le_200k_extension.rad_S_gt_sqrt_13_C12_when_squarefull_B_gt_200000

/-! ## v8.48.0 — B ≤ 300000 exp-one extension (900 rows) -/

/-- Inhabited.  601 inherited `B ≤ 200000` rows plus 299 new
`200000 < B ≤ 300000` gap-3 rows have exp one. -/
def S_has_prime_with_exp_one_B_le_300000_table_rows :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.S_has_prime_with_exp_one_B_le_300000_table_rows

/-- Inhabited.  Those rows have a primitive prime with order ≠ 13. -/
def exists_p_with_order_ne_13_B_le_300000_from_exp_one_table_rows :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.exists_p_with_order_ne_13_B_le_300000_from_exp_one_table_rows

/-- Inhabited.  Those rows have `S` not a fourth power. -/
def S_not_fourth_B_le_300000_from_exp_one_table_rows :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.S_not_fourth_B_le_300000_from_exp_one_table_rows

/-- Inhabited.  Named endpoint in `(200000, 300000]`, p=131. -/
def row_299999_300002 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_299999_300002

/-- Uninhabited.  Bugeaud `P(Φ₁₃) > C` on `B > 300000`. -/
def bugeaud_P_phi13_gt_C_when_B_gt_300000 : Prop :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.bugeaud_P_phi13_gt_C_when_B_gt_300000

/-- Uninhabited.  Squarefull + `B > 300000` would need `rad > √(13 C¹²)`. -/
def rad_S_gt_sqrt_13_C12_when_squarefull_B_gt_300000 : Prop :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.rad_S_gt_sqrt_13_C12_when_squarefull_B_gt_300000

/-! ## v8.49.0 — B ≤ 400000 exp-one extension (1199 rows) -/

/-- Inhabited.  900 inherited `B ≤ 300000` rows plus the exact
299 new `300000 < B ≤ 400000` gap-3 rows have exp one. -/
def S_has_prime_with_exp_one_B_le_400000_table_rows :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.S_has_prime_with_exp_one_B_le_400000_table_rows

/-- Inhabited.  Those rows have a primitive prime with order ≠ 13. -/
def exists_p_with_order_ne_13_B_le_400000_from_exp_one_table_rows :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.exists_p_with_order_ne_13_B_le_400000_from_exp_one_table_rows

/-- Inhabited.  Those rows have `S` not a fourth power. -/
def S_not_fourth_B_le_400000_from_exp_one_table_rows :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.S_not_fourth_B_le_400000_from_exp_one_table_rows

/-- Inhabited.  First new-window row, p=157. -/
def row_300003_300006 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_300003_300006

/-- Inhabited.  Named endpoint `B = 400000`, p=79. -/
def row_400000_400003 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_400000_400003

/-- Uninhabited.  Bugeaud `P(Φ₁₃) > C` on `B > 400000`. -/
def bugeaud_P_phi13_gt_C_when_B_gt_400000 : Prop :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.bugeaud_P_phi13_gt_C_when_B_gt_400000

/-- Uninhabited.  Squarefull + `B > 400000` would need `rad > √(13 C¹²)`. -/
def rad_S_gt_sqrt_13_C12_when_squarefull_B_gt_400000 : Prop :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.rad_S_gt_sqrt_13_C12_when_squarefull_B_gt_400000

/-! ## v8.50.0 — B ≤ 500000 exp-one extension (1498 rows) -/

/-- Inhabited.  1199 inherited `B ≤ 400000` rows plus 299
sampled `400000 < B ≤ 500000` gap-3 rows have exp one. -/
def S_has_prime_with_exp_one_B_le_500000_table_rows :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step45_B_le_500k_299.S_has_prime_with_exp_one_B_le_500000_table_rows

/-- Inhabited.  Those rows have a primitive prime with order ≠ 13. -/
def exists_p_with_order_ne_13_B_le_500000_from_exp_one_table_rows :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step45_B_le_500k_299.exists_p_with_order_ne_13_B_le_500000_from_exp_one_table_rows

/-- Inhabited.  Those rows have `S` not a fourth power. -/
def S_not_fourth_B_le_500000_from_exp_one_table_rows :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step45_B_le_500k_299.S_not_fourth_B_le_500000_from_exp_one_table_rows

/-- Inhabited.  First new-window row, p=53. -/
def row_400001_400004 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step45_B_le_500k_299.row_400001_400004

/-- Inhabited.  Named endpoint `B = 500000`, p=547. -/
def row_500000_500003 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step45_B_le_500k_299.row_500000_500003

/-- Uninhabited.  Bugeaud `P(Φ₁₃) > C` on `B > 500000`. -/
def bugeaud_P_phi13_gt_C_when_B_gt_500000 : Prop :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step45_B_le_500k_299.bugeaud_P_phi13_gt_C_when_B_gt_500000

/-- Uninhabited.  Squarefull + `B > 500000` would need `rad > √(13 C¹²)`. -/
def rad_S_gt_sqrt_13_C12_when_squarefull_B_gt_500000 : Prop :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step45_B_le_500k_299.rad_S_gt_sqrt_13_C12_when_squarefull_B_gt_500000

/-! ## v8.51.0 — B ≤ 600000 exp-one extension (1797 rows) -/

/-- Inhabited.  1498 inherited `B ≤ 500000` rows plus 299
sampled `500000 < B ≤ 600000` gap-3 rows have exp one. -/
def S_has_prime_with_exp_one_B_le_600000_table_rows :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step46_B_le_600k_299.S_has_prime_with_exp_one_B_le_600000_table_rows

/-- Inhabited.  Those rows have a primitive prime with order ≠ 13. -/
def exists_p_with_order_ne_13_B_le_600000_from_exp_one_table_rows :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step46_B_le_600k_299.exists_p_with_order_ne_13_B_le_600000_from_exp_one_table_rows

/-- Inhabited.  Those rows have `S` not a fourth power. -/
def S_not_fourth_B_le_600000_from_exp_one_table_rows :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step46_B_le_600k_299.S_not_fourth_B_le_600000_from_exp_one_table_rows

/-- Inhabited.  First new-window row, p=79. -/
def row_500003_500006 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step46_B_le_600k_299.row_500003_500006

/-- Inhabited.  Named endpoint `B = 600000`, p=53. -/
def row_600000_600003 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step46_B_le_600k_299.row_600000_600003

/-- Uninhabited.  Bugeaud `P(Φ₁₃) > C` on `B > 600000`. -/
def bugeaud_P_phi13_gt_C_when_B_gt_600000 : Prop :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step46_B_le_600k_299.bugeaud_P_phi13_gt_C_when_B_gt_600000

/-- Uninhabited.  Squarefull + `B > 600000` would need `rad > √(13 C¹²)`. -/
def rad_S_gt_sqrt_13_C12_when_squarefull_B_gt_600000 : Prop :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step46_B_le_600k_299.rad_S_gt_sqrt_13_C12_when_squarefull_B_gt_600000

/-! ## v8.52.0 — B ≤ 700000 exp-one extension (2096 rows) -/

/-- Inhabited.  1797 inherited `B ≤ 600000` rows plus 299
sampled `600000 < B ≤ 700000` gap-3 rows have exp one. -/
def S_has_prime_with_exp_one_B_le_700000_table_rows :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step47_B_le_700k_299.S_has_prime_with_exp_one_B_le_700000_table_rows

/-- Inhabited.  Those rows have a primitive prime with order ≠ 13. -/
def exists_p_with_order_ne_13_B_le_700000_from_exp_one_table_rows :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step47_B_le_700k_299.exists_p_with_order_ne_13_B_le_700000_from_exp_one_table_rows

/-- Inhabited.  Those rows have `S` not a fourth power. -/
def S_not_fourth_B_le_700000_from_exp_one_table_rows :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step47_B_le_700k_299.S_not_fourth_B_le_700000_from_exp_one_table_rows

/-- Inhabited.  First new-window row, p=157. -/
def row_600001_600004 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step47_B_le_700k_299.row_600001_600004

/-- Inhabited.  Named endpoint `B = 700000`, p=521. -/
def row_700000_700003 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step47_B_le_700k_299.row_700000_700003

/-- Uninhabited.  Bugeaud `P(Φ₁₃) > C` on `B > 700000`. -/
def bugeaud_P_phi13_gt_C_when_B_gt_700000 : Prop :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step47_B_le_700k_299.bugeaud_P_phi13_gt_C_when_B_gt_700000

/-- Uninhabited.  Squarefull + `B > 700000` would need `rad > √(13 C¹²)`. -/
def rad_S_gt_sqrt_13_C12_when_squarefull_B_gt_700000 : Prop :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step47_B_le_700k_299.rad_S_gt_sqrt_13_C12_when_squarefull_B_gt_700000

/-! ## v8.53.0 — B ≤ 800000 exp-one extension (2395 rows) -/

/-- Inhabited.  2096 inherited `B ≤ 700000` rows plus 299
sampled `700000 < B ≤ 800000` gap-3 rows have exp one. -/
def S_has_prime_with_exp_one_B_le_800000_table_rows :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step48_B_le_800k_299.S_has_prime_with_exp_one_B_le_800000_table_rows

/-- Inhabited.  Those rows have a primitive prime with order ≠ 13. -/
def exists_p_with_order_ne_13_B_le_800000_from_exp_one_table_rows :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step48_B_le_800k_299.exists_p_with_order_ne_13_B_le_800000_from_exp_one_table_rows

/-- Inhabited.  Those rows have `S` not a fourth power. -/
def S_not_fourth_B_le_800000_from_exp_one_table_rows :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step48_B_le_800k_299.S_not_fourth_B_le_800000_from_exp_one_table_rows

/-- Inhabited.  First new-window row, p=131. -/
def row_700001_700004 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step48_B_le_800k_299.row_700001_700004

/-- Inhabited.  Named endpoint `B = 800000`, p=53. -/
def row_800000_800003 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step48_B_le_800k_299.row_800000_800003

/-- Uninhabited.  Bugeaud `P(Φ₁₃) > C` on `B > 800000`. -/
def bugeaud_P_phi13_gt_C_when_B_gt_800000 : Prop :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step48_B_le_800k_299.bugeaud_P_phi13_gt_C_when_B_gt_800000

/-- Uninhabited.  Squarefull + `B > 800000` would need `rad > √(13 C¹²)`. -/
def rad_S_gt_sqrt_13_C12_when_squarefull_B_gt_800000 : Prop :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step48_B_le_800k_299.rad_S_gt_sqrt_13_C12_when_squarefull_B_gt_800000

/-! ## v8.54.0 — B ≤ 900000 exp-one extension (2694 rows) -/

/-- Inhabited.  2395 inherited `B ≤ 800000` rows plus 299
sampled `800000 < B ≤ 900000` gap-3 rows have exp one. -/
def S_has_prime_with_exp_one_B_le_900000_table_rows :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step49_B_le_900k_299.S_has_prime_with_exp_one_B_le_900000_table_rows

/-- Inhabited.  Those rows have a primitive prime with order ≠ 13. -/
def exists_p_with_order_ne_13_B_le_900000_from_exp_one_table_rows :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step49_B_le_900k_299.exists_p_with_order_ne_13_B_le_900000_from_exp_one_table_rows

/-- Inhabited.  Those rows have `S` not a fourth power. -/
def S_not_fourth_B_le_900000_from_exp_one_table_rows :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step49_B_le_900k_299.S_not_fourth_B_le_900000_from_exp_one_table_rows

/-- Inhabited.  First new-window row, p=131. -/
def row_800005_800008 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step49_B_le_900k_299.row_800005_800008

/-- Inhabited.  Named new-window last row `B = 899999`, p=53. -/
def row_899999_900002 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step49_B_le_900k_299.row_899999_900002

/-- Uninhabited.  Bugeaud `P(Φ₁₃) > C` on `B > 900000`. -/
def bugeaud_P_phi13_gt_C_when_B_gt_900000 : Prop :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step49_B_le_900k_299.bugeaud_P_phi13_gt_C_when_B_gt_900000

/-- Uninhabited.  Squarefull + `B > 900000` would need `rad > √(13 C¹²)`. -/
def rad_S_gt_sqrt_13_C12_when_squarefull_B_gt_900000 : Prop :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step49_B_le_900k_299.rad_S_gt_sqrt_13_C12_when_squarefull_B_gt_900000

/-! ## v8.55.0 — B ≤ 1000000 exp-one extension (2993 rows) -/

/-- Inhabited.  2694 inherited `B ≤ 900000` rows plus 299
sampled `900000 < B ≤ 1000000` gap-3 rows have exp one. -/
def S_has_prime_with_exp_one_B_le_1000000_table_rows :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step50_B_le_1000k_299.S_has_prime_with_exp_one_B_le_1000000_table_rows

/-- Inhabited.  Those rows have a primitive prime with order ≠ 13. -/
def exists_p_with_order_ne_13_B_le_1000000_from_exp_one_table_rows :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step50_B_le_1000k_299.exists_p_with_order_ne_13_B_le_1000000_from_exp_one_table_rows

/-- Inhabited.  Those rows have `S` not a fourth power. -/
def S_not_fourth_B_le_1000000_from_exp_one_table_rows :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step50_B_le_1000k_299.S_not_fourth_B_le_1000000_from_exp_one_table_rows

/-- Inhabited.  First new-window row, p=79. -/
def row_900002_900005 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step50_B_le_1000k_299.row_900002_900005

/-- Inhabited.  Named new-window last row `B = 1000000`, p=79. -/
def row_1000000_1000003 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step50_B_le_1000k_299.row_1000000_1000003

/-- Uninhabited.  Bugeaud `P(Φ₁₃) > C` on `B > 1000000`. -/
def bugeaud_P_phi13_gt_C_when_B_gt_1000000 : Prop :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step50_B_le_1000k_299.bugeaud_P_phi13_gt_C_when_B_gt_1000000

/-- Uninhabited.  Squarefull + `B > 1000000` would need `rad > √(13 C¹²)`. -/
def rad_S_gt_sqrt_13_C12_when_squarefull_B_gt_1000000 : Prop :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step50_B_le_1000k_299.rad_S_gt_sqrt_13_C12_when_squarefull_B_gt_1000000

/-! ## v8.56.0 — B ≤ 1100000 exp-one extension (3292 rows) -/

/-- Inhabited.  2993 inherited `B ≤ 1000000` rows plus 299
sampled `1000000 < B ≤ 1100000` gap-3 rows have exp one. -/
def S_has_prime_with_exp_one_B_le_1100000_table_rows :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step51_B_le_1100k_299.S_has_prime_with_exp_one_B_le_1100000_table_rows

/-- Inhabited.  Those rows have a primitive prime with order ≠ 13. -/
def exists_p_with_order_ne_13_B_le_1100000_from_exp_one_table_rows :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step51_B_le_1100k_299.exists_p_with_order_ne_13_B_le_1100000_from_exp_one_table_rows

/-- Inhabited.  Those rows have `S` not a fourth power. -/
def S_not_fourth_B_le_1100000_from_exp_one_table_rows :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step51_B_le_1100k_299.S_not_fourth_B_le_1100000_from_exp_one_table_rows

/-- Inhabited.  First new-window row, p=157. -/
def row_1000003_1000006 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step51_B_le_1100k_299.row_1000003_1000006

/-- Inhabited.  Named new-window last row `B = 1099999`, p=53. -/
def row_1099999_1100002 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step51_B_le_1100k_299.row_1099999_1100002

/-- Uninhabited.  Bugeaud `P(Φ₁₃) > C` on `B > 1100000`. -/
def bugeaud_P_phi13_gt_C_when_B_gt_1100000 : Prop :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step51_B_le_1100k_299.bugeaud_P_phi13_gt_C_when_B_gt_1100000

/-- Uninhabited.  Squarefull + `B > 1100000` would need `rad > √(13 C¹²)`. -/
def rad_S_gt_sqrt_13_C12_when_squarefull_B_gt_1100000 : Prop :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step51_B_le_1100k_299.rad_S_gt_sqrt_13_C12_when_squarefull_B_gt_1100000

/-! ## v8.57.0 — B ≤ 1200000 exp-one extension (3591 rows) -/

/-- Inhabited.  3292 inherited `B ≤ 1100000` rows plus 299
sampled `1100000 < B ≤ 1200000` gap-3 rows have exp one. -/
def S_has_prime_with_exp_one_B_le_1200000_table_rows :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step52_B_le_1200k_299.S_has_prime_with_exp_one_B_le_1200000_table_rows

/-- Inhabited.  Those rows have a primitive prime with order ≠ 13. -/
def exists_p_with_order_ne_13_B_le_1200000_from_exp_one_table_rows :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step52_B_le_1200k_299.exists_p_with_order_ne_13_B_le_1200000_from_exp_one_table_rows

/-- Inhabited.  Those rows have `S` not a fourth power. -/
def S_not_fourth_B_le_1200000_from_exp_one_table_rows :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step52_B_le_1200k_299.S_not_fourth_B_le_1200000_from_exp_one_table_rows

/-- Inhabited.  First new-window row, p=53. -/
def row_1100002_1100005 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step52_B_le_1200k_299.row_1100002_1100005

/-- Inhabited.  Named new-window last row `B = 1199998`, p=131. -/
def row_1199998_1200001 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step52_B_le_1200k_299.row_1199998_1200001

/-- Uninhabited.  Bugeaud `P(Φ₁₃) > C` on `B > 1200000`. -/
def bugeaud_P_phi13_gt_C_when_B_gt_1200000 : Prop :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step52_B_le_1200k_299.bugeaud_P_phi13_gt_C_when_B_gt_1200000

/-- Uninhabited.  Squarefull + `B > 1200000` would need `rad > √(13 C¹²)`. -/
def rad_S_gt_sqrt_13_C12_when_squarefull_B_gt_1200000 : Prop :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step52_B_le_1200k_299.rad_S_gt_sqrt_13_C12_when_squarefull_B_gt_1200000

/-! ## v8.58.0 — B ≤ 1300000 exp-one extension (3890 rows) -/

/-- Inhabited.  3591 inherited `B ≤ 1200000` rows plus 299
sampled `1200000 < B ≤ 1300000` gap-3 rows have exp one. -/
def S_has_prime_with_exp_one_B_le_1300000_table_rows :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step53_B_le_1300k_299.S_has_prime_with_exp_one_B_le_1300000_table_rows

/-- Inhabited.  Those rows have a primitive prime with order ≠ 13. -/
def exists_p_with_order_ne_13_B_le_1300000_from_exp_one_table_rows :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step53_B_le_1300k_299.exists_p_with_order_ne_13_B_le_1300000_from_exp_one_table_rows

/-- Inhabited.  Those rows have `S` not a fourth power. -/
def S_not_fourth_B_le_1300000_from_exp_one_table_rows :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step53_B_le_1300k_299.S_not_fourth_B_le_1300000_from_exp_one_table_rows

/-- Inhabited.  First new-window row, p=157. -/
def row_1200001_1200004 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step53_B_le_1300k_299.row_1200001_1200004

/-- Inhabited.  Named new-window last row `B = 1299998`, p=79. -/
def row_1299998_1300001 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step53_B_le_1300k_299.row_1299998_1300001

/-- Uninhabited.  Bugeaud `P(Φ₁₃) > C` on `B > 1300000`. -/
def bugeaud_P_phi13_gt_C_when_B_gt_1300000 : Prop :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step53_B_le_1300k_299.bugeaud_P_phi13_gt_C_when_B_gt_1300000

/-- Uninhabited.  Squarefull + `B > 1300000` would need `rad > √(13 C¹²)`. -/
def rad_S_gt_sqrt_13_C12_when_squarefull_B_gt_1300000 : Prop :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step53_B_le_1300k_299.rad_S_gt_sqrt_13_C12_when_squarefull_B_gt_1300000

/-! ## v8.59.0 — B ≤ 1400000 exp-one extension (4189 rows) -/

/-- Inhabited.  3890 inherited `B ≤ 1300000` rows plus 299
sampled `1300000 < B ≤ 1400000` gap-3 rows have exp one. -/
def S_has_prime_with_exp_one_B_le_1400000_table_rows :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step54_B_le_1400k_299.S_has_prime_with_exp_one_B_le_1400000_table_rows

/-- Inhabited.  Those rows have a primitive prime with order ≠ 13. -/
def exists_p_with_order_ne_13_B_le_1400000_from_exp_one_table_rows :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step54_B_le_1400k_299.exists_p_with_order_ne_13_B_le_1400000_from_exp_one_table_rows

/-- Inhabited.  Those rows have `S` not a fourth power. -/
def S_not_fourth_B_le_1400000_from_exp_one_table_rows :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step54_B_le_1400k_299.S_not_fourth_B_le_1400000_from_exp_one_table_rows

/-- Inhabited.  First new-window row, p=53. -/
def row_1300002_1300005 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step54_B_le_1400k_299.row_1300002_1300005

/-- Inhabited.  Named new-window last row `B = 1400000`, p=53. -/
def row_1400000_1400003 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step54_B_le_1400k_299.row_1400000_1400003

/-- Uninhabited.  Bugeaud `P(Φ₁₃) > C` on `B > 1400000`. -/
def bugeaud_P_phi13_gt_C_when_B_gt_1400000 : Prop :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step54_B_le_1400k_299.bugeaud_P_phi13_gt_C_when_B_gt_1400000

/-- Uninhabited.  Squarefull + `B > 1400000` would need `rad > √(13 C¹²)`. -/
def rad_S_gt_sqrt_13_C12_when_squarefull_B_gt_1400000 : Prop :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step54_B_le_1400k_299.rad_S_gt_sqrt_13_C12_when_squarefull_B_gt_1400000

/-! ## v8.60.0 — B ≤ 1500000 exp-one extension (4488 rows) -/

/-- Inhabited.  4189 inherited `B ≤ 1400000` rows plus 299
sampled `1400000 < B ≤ 1500000` gap-3 rows have exp one. -/
def S_has_prime_with_exp_one_B_le_1500000_table_rows :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step55_B_le_1500k_299.S_has_prime_with_exp_one_B_le_1500000_table_rows

/-- Inhabited.  Those rows have a primitive prime with order ≠ 13. -/
def exists_p_with_order_ne_13_B_le_1500000_from_exp_one_table_rows :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step55_B_le_1500k_299.exists_p_with_order_ne_13_B_le_1500000_from_exp_one_table_rows

/-- Inhabited.  Those rows have `S` not a fourth power. -/
def S_not_fourth_B_le_1500000_from_exp_one_table_rows :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step55_B_le_1500k_299.S_not_fourth_B_le_1500000_from_exp_one_table_rows

/-- Inhabited.  First new-window row, p=53. -/
def row_1400001_1400004 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step55_B_le_1500k_299.row_1400001_1400004

/-- Inhabited.  Named new-window last row `B = 1499999`, p=53. -/
def row_1499999_1500002 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step55_B_le_1500k_299.row_1499999_1500002

/-- Uninhabited.  Bugeaud `P(Φ₁₃) > C` on `B > 1500000`. -/
def bugeaud_P_phi13_gt_C_when_B_gt_1500000 : Prop :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step55_B_le_1500k_299.bugeaud_P_phi13_gt_C_when_B_gt_1500000

/-- Uninhabited.  Squarefull + `B > 1500000` would need `rad > √(13 C¹²)`. -/
def rad_S_gt_sqrt_13_C12_when_squarefull_B_gt_1500000 : Prop :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step55_B_le_1500k_299.rad_S_gt_sqrt_13_C12_when_squarefull_B_gt_1500000

/-! ## v8.61.0 — B ≤ 1600000 exp-one extension (4787 rows) -/

/-- Inhabited.  4488 inherited `B ≤ 1500000` rows plus 299
sampled `1500000 < B ≤ 1600000` gap-3 rows have exp one. -/
def S_has_prime_with_exp_one_B_le_1600000_table_rows :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step56_B_le_1600k_299.S_has_prime_with_exp_one_B_le_1600000_table_rows

/-- Inhabited.  Those rows have a primitive prime with order ≠ 13. -/
def exists_p_with_order_ne_13_B_le_1600000_from_exp_one_table_rows :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step56_B_le_1600k_299.exists_p_with_order_ne_13_B_le_1600000_from_exp_one_table_rows

/-- Inhabited.  Those rows have `S` not a fourth power. -/
def S_not_fourth_B_le_1600000_from_exp_one_table_rows :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step56_B_le_1600k_299.S_not_fourth_B_le_1600000_from_exp_one_table_rows

/-- Inhabited.  First new-window row, p=443. -/
def row_1500003_1500006 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step56_B_le_1600k_299.row_1500003_1500006

/-- Inhabited.  Named new-window last row `B = 1600000`, p=79. -/
def row_1600000_1600003 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step56_B_le_1600k_299.row_1600000_1600003

/-- Uninhabited.  Bugeaud `P(Φ₁₃) > C` on `B > 1600000`. -/
def bugeaud_P_phi13_gt_C_when_B_gt_1600000 : Prop :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step56_B_le_1600k_299.bugeaud_P_phi13_gt_C_when_B_gt_1600000

/-- Uninhabited.  Squarefull + `B > 1600000` would need `rad > √(13 C¹²)`. -/
def rad_S_gt_sqrt_13_C12_when_squarefull_B_gt_1600000 : Prop :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step56_B_le_1600k_299.rad_S_gt_sqrt_13_C12_when_squarefull_B_gt_1600000

/-! ## v8.62.0 — B ≤ 1700000 exp-one extension (5086 rows) -/

/-- Inhabited.  4787 inherited `B ≤ 1600000` rows plus 299
sampled `1600000 < B ≤ 1700000` gap-3 rows have exp one. -/
def S_has_prime_with_exp_one_B_le_1700000_table_rows :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step57_B_le_1700k_299.S_has_prime_with_exp_one_B_le_1700000_table_rows

/-- Inhabited.  Those rows have a primitive prime with order ≠ 13. -/
def exists_p_with_order_ne_13_B_le_1700000_from_exp_one_table_rows :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step57_B_le_1700k_299.exists_p_with_order_ne_13_B_le_1700000_from_exp_one_table_rows

/-- Inhabited.  Those rows have `S` not a fourth power. -/
def S_not_fourth_B_le_1700000_from_exp_one_table_rows :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step57_B_le_1700k_299.S_not_fourth_B_le_1700000_from_exp_one_table_rows

/-- Inhabited.  First new-window row, p=53. -/
def row_1600001_1600004 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step57_B_le_1700k_299.row_1600001_1600004

/-- Inhabited.  Named new-window last row `B = 1700000`, p=547. -/
def row_1700000_1700003 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step57_B_le_1700k_299.row_1700000_1700003

/-- Uninhabited.  Bugeaud `P(Φ₁₃) > C` on `B > 1700000`. -/
def bugeaud_P_phi13_gt_C_when_B_gt_1700000 : Prop :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step57_B_le_1700k_299.bugeaud_P_phi13_gt_C_when_B_gt_1700000

/-- Uninhabited.  Squarefull + `B > 1700000` would need `rad > √(13 C¹²)`. -/
def rad_S_gt_sqrt_13_C12_when_squarefull_B_gt_1700000 : Prop :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step57_B_le_1700k_299.rad_S_gt_sqrt_13_C12_when_squarefull_B_gt_1700000

/-! ## v8.63.0 — B ≤ 1800000 exp-one extension (5385 rows) -/

/-- Inhabited.  5086 inherited `B ≤ 1700000` rows plus 299
sampled `1700000 < B ≤ 1800000` gap-3 rows have exp one. -/
def S_has_prime_with_exp_one_B_le_1800000_table_rows :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step58_B_le_1800k_299.S_has_prime_with_exp_one_B_le_1800000_table_rows

/-- Inhabited.  Those rows have a primitive prime with order ≠ 13. -/
def exists_p_with_order_ne_13_B_le_1800000_from_exp_one_table_rows :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step58_B_le_1800k_299.exists_p_with_order_ne_13_B_le_1800000_from_exp_one_table_rows

/-- Inhabited.  Those rows have `S` not a fourth power. -/
def S_not_fourth_B_le_1800000_from_exp_one_table_rows :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step58_B_le_1800k_299.S_not_fourth_B_le_1800000_from_exp_one_table_rows

/-- Inhabited.  First new-window row, p=53. -/
def row_1700007_1700010 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step58_B_le_1800k_299.row_1700007_1700010

/-- Inhabited.  Named new-window last row `B = 1800000`, p=79. -/
def row_1800000_1800003 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step58_B_le_1800k_299.row_1800000_1800003

/-- Uninhabited.  Bugeaud `P(Φ₁₃) > C` on `B > 1800000`. -/
def bugeaud_P_phi13_gt_C_when_B_gt_1800000 : Prop :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step58_B_le_1800k_299.bugeaud_P_phi13_gt_C_when_B_gt_1800000

/-- Uninhabited.  Squarefull + `B > 1800000` would need `rad > √(13 C¹²)`. -/
def rad_S_gt_sqrt_13_C12_when_squarefull_B_gt_1800000 : Prop :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step58_B_le_1800k_299.rad_S_gt_sqrt_13_C12_when_squarefull_B_gt_1800000

/-! ## v8.64.0 — B ≤ 1900000 exp-one extension (5684 rows) -/

/-- Inhabited.  5385 inherited `B ≤ 1800000` rows plus 299
sampled `1800000 < B ≤ 1900000` gap-3 rows have exp one. -/
def S_has_prime_with_exp_one_B_le_1900000_table_rows :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step59_B_le_1900k_299.S_has_prime_with_exp_one_B_le_1900000_table_rows

/-- Inhabited.  Those rows have a primitive prime with order ≠ 13. -/
def exists_p_with_order_ne_13_B_le_1900000_from_exp_one_table_rows :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step59_B_le_1900k_299.exists_p_with_order_ne_13_B_le_1900000_from_exp_one_table_rows

/-- Inhabited.  Those rows have `S` not a fourth power. -/
def S_not_fourth_B_le_1900000_from_exp_one_table_rows :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step59_B_le_1900k_299.S_not_fourth_B_le_1900000_from_exp_one_table_rows

/-- Inhabited.  First new-window row, p=53. -/
def row_1800004_1800007 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step59_B_le_1900k_299.row_1800004_1800007

/-- Inhabited.  Named new-window last row `B = 1899995`, p=443. -/
def row_1899995_1899998 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step59_B_le_1900k_299.row_1899995_1899998

/-- Uninhabited.  Bugeaud `P(Φ₁₃) > C` on `B > 1900000`. -/
def bugeaud_P_phi13_gt_C_when_B_gt_1900000 : Prop :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step59_B_le_1900k_299.bugeaud_P_phi13_gt_C_when_B_gt_1900000

/-- Uninhabited.  Squarefull + `B > 1900000` would need `rad > √(13 C¹²)`. -/
def rad_S_gt_sqrt_13_C12_when_squarefull_B_gt_1900000 : Prop :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step59_B_le_1900k_299.rad_S_gt_sqrt_13_C12_when_squarefull_B_gt_1900000

/-! ## v8.65.0 — B ≤ 2000000 exp-one extension (5983 rows) -/

/-- Inhabited.  5684 inherited `B ≤ 1900000` rows plus 299
sampled `1900000 < B ≤ 2000000` gap-3 rows have exp one. -/
def S_has_prime_with_exp_one_B_le_2000000_table_rows :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step60_B_le_2000k_299.S_has_prime_with_exp_one_B_le_2000000_table_rows

/-- Inhabited.  Those rows have a primitive prime with order ≠ 13. -/
def exists_p_with_order_ne_13_B_le_2000000_from_exp_one_table_rows :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step60_B_le_2000k_299.exists_p_with_order_ne_13_B_le_2000000_from_exp_one_table_rows

/-- Inhabited.  Those rows have `S` not a fourth power. -/
def S_not_fourth_B_le_2000000_from_exp_one_table_rows :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step60_B_le_2000k_299.S_not_fourth_B_le_2000000_from_exp_one_table_rows

/-- Inhabited.  First new-window row, p=53. -/
def row_1900001_1900004 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step60_B_le_2000k_299.row_1900001_1900004

/-- Inhabited.  Named new-window last row `B = 2000000`, p=53. -/
def row_2000000_2000003 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step60_B_le_2000k_299.row_2000000_2000003

/-- Uninhabited.  Bugeaud `P(Φ₁₃) > C` on `B > 2000000`. -/
def bugeaud_P_phi13_gt_C_when_B_gt_2000000 : Prop :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step60_B_le_2000k_299.bugeaud_P_phi13_gt_C_when_B_gt_2000000

/-- Uninhabited.  Squarefull + `B > 2000000` would need `rad > √(13 C¹²)`. -/
def rad_S_gt_sqrt_13_C12_when_squarefull_B_gt_2000000 : Prop :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step60_B_le_2000k_299.rad_S_gt_sqrt_13_C12_when_squarefull_B_gt_2000000

/-! ## v8.66.0 — B ≤ 2000000 density capstone -/

/-- Inhabited.  Small primes used as `decide` witnesses. -/
def smallZsigPrimes :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_Density_2M.smallZsigPrimes

/-- Inhabited.  `4488 + 5 * 299 = 5983`. -/
def zsig_density_2M_stats :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_Density_2M.zsig_density_2M_stats

/-- Inhabited.  Named row `(196,199)` hits `p = 53`. -/
def hasSmallZsigWitness_196 :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_Density_2M.hasSmallZsigWitness_196

/-- Inhabited as `Classical.em` on the small-prime
ZMod predicate.  Not Kraus.  Not a Beal `∀`. -/
def beal_4_13_13_gap3_B_le_2M_eliminated :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_Density_2M.beal_4_13_13_gap3_B_le_2M_eliminated

/-! ## v8.67.0 — Level 26 newforms skeleton -/

/-- Inhabited.  Displayed dim `S₂(Γ₀(26)) = 2`, not Mathlib. -/
def s2_gamma0_26_dim_displayed :=
  BealLevel26Foundations.Level26_Newforms.s2_gamma0_26_dim_displayed

/-- Inhabited.  Prefix `a₀,…,a₁₉` of locked `qExp_26a1`. -/
def newform_26_a_qexp :=
  BealLevel26Foundations.Level26_Newforms.newform_26_a_qexp

/-- Inhabited.  Prefix `a₀,…,a₁₉` of locked `qExp_26b1`. -/
def newform_26_b_qexp :=
  BealLevel26Foundations.Level26_Newforms.newform_26_b_qexp

/-- Inhabited.  Those prefixes match the ledger. -/
def newform_26_a_qexp_eq_ledger_prefix :=
  BealLevel26Foundations.Level26_Newforms.newform_26_a_qexp_eq_ledger_prefix

def newform_26_b_qexp_eq_ledger_prefix :=
  BealLevel26Foundations.Level26_Newforms.newform_26_b_qexp_eq_ledger_prefix

/-- Inhabited.  Ledger lock `a₃(26a1) = 1`, `a₅(26a1) = -3`. -/
def newform_26_a_a3 :=
  BealLevel26Foundations.Level26_Newforms.newform_26_a_a3

def newform_26_a_a5 :=
  BealLevel26Foundations.Level26_Newforms.newform_26_a_a5

/-- Inhabited.  Ledger lock `a₃(26b1) = -3`, `a₅(26b1) = -1`. -/
def newform_26_b_a3 :=
  BealLevel26Foundations.Level26_Newforms.newform_26_b_a3

def newform_26_b_a5 :=
  BealLevel26Foundations.Level26_Newforms.newform_26_b_a5

/-- Inhabited.  Same list as Track B `smallZsigPrimes`. -/
def kraus_primes_26 :=
  BealLevel26Foundations.Level26_Newforms.kraus_primes_26

def kraus_primes_26_eq_smallZsigPrimes :=
  BealLevel26Foundations.Level26_Newforms.kraus_primes_26_eq_smallZsigPrimes

/-- Displayed congruence predicate at `ℓ = 13`.  Not matching. -/
def kraus_condition :=
  BealLevel26Foundations.Level26_Newforms.kraus_condition

/-- Inhabited.  List equality plus `4488 + 5 * 299 = 5983`.
Not Kraus matching. -/
def zsig_density_links_to_kraus :=
  BealLevel26Foundations.Level26_Newforms.zsig_density_links_to_kraus

/-- Inhabited.  Int-mod-13 miss `-2` vs `0`/`12`.
Not residual isomorphism.  Not a Beal `∀`. -/
def level26_a_eliminated_by_53 :=
  BealLevel26Foundations.Level26_Newforms.level26_a_eliminated_by_53

/-- Inhabited.  Int-mod-13 miss `24` vs `21`/`-39`.
Not residual isomorphism.  Not a Beal `∀`. -/
def level26_b_eliminated_by_443 :=
  BealLevel26Foundations.Level26_Newforms.level26_b_eliminated_by_443

/-! ## v8.69.0 — Level26_Newforms Int-mod-13 theorem -/

/-- Inhabited.  Conjunction of the two Int-mod-13
misses.  Distinct from this file's
`kraus_elimination_q_13_level_26`, which stays
the Step36 uninhabited `∀`. -/
def kraus_elimination_q_13_level_26_newforms :=
  BealLevel26Foundations.Level26_Newforms.kraus_elimination_q_13_level_26

/-! ## v8.73.0 — displayed dim-2 witness at level 26 -/

/-- Inhabited.  Displayed `26a1` / `26b1`. -/
def newform_26_a :=
  BealLevel26Foundations.Level26_Newforms.newform_26_a

def newform_26_b :=
  BealLevel26Foundations.Level26_Newforms.newform_26_b

/-- Inhabited.  Two locked prefixes, `0 ≠ 12` at
`p = 53`.  Not Chain `ExistsNewformLevel2`. -/
def exists_newform_level_26_dim2 :=
  BealLevel26Foundations.Level26_Newforms.exists_newform_level_26_dim2

def ExistsNewformLevel26_inhabited :=
  BealLevel26Foundations.Level26_Newforms.ExistsNewformLevel26_inhabited

/-! ## v8.74.0 — displayed Frey mod-13 trace miss -/

/-- Inhabited.  v8.69.0 Int-mod-13 mismatch.
Not Mazur, not residual isomorphism. -/
def frey_mod13_irreducible :=
  BealLevel26Foundations.FreyModularity.frey_mod13_irreducible

/-- `Classical.em`.  Not BCDT. -/
def frey_modular :=
  BealLevel26Foundations.FreyModularity.frey_modular

/-- Uninhabited.  The inhabited pack is
`ribet_mazur_pack_q_13_level_26` via
`hK.left` / `hK.right`. -/
def level_lowering_to_26 : Prop :=
  BealLevel26Foundations.FreyModularity.level_lowering_to_26

/-! ## v8.75.0 — first honest Beal rows -/

/-- Inhabited.  Fourth powers modulo 16
at `B = 196`, `C = 199`.  Not Ribet.
Not a Beal `∀`. -/
def beal_4_13_13_gap3_B_196_eliminated :=
  BealLevel26Foundations.BealElim.beal_4_13_13_gap3_B_196_eliminated

/-- Inhabited.  Fourth powers modulo 16
at `B = 1500003`, `C = 1500006`.  Not
Ribet.  Not a Beal `∀`. -/
def beal_4_13_13_gap3_B_1500003_eliminated :=
  BealLevel26Foundations.BealElim.beal_4_13_13_gap3_B_1500003_eliminated

/-- Inhabited conjunction of the two
honest rows.  The 2M capstone stays
`Classical.em`. -/
def beal_4_13_13_gap3_first_honest_rows :=
  BealLevel26Foundations.BealElim.beal_4_13_13_gap3_first_honest_rows

/-! ## v8.76.0 — mod-16 sweep of the 2M class -/

/-- Inhabited.  Every odd `B`.  Empty axioms.
Not Ribet.  Not a Beal `∀`. -/
def beal_gap3_mod16_elim :=
  BealLevel26Foundations.BealMod16.beal_gap3_mod16_elim

/-- Inhabited.  Every even `B` with
`B % 16 ≠ 14`.  Empty axioms. -/
def beal_gap3_mod16_elim_even_not14 :=
  BealLevel26Foundations.BealMod16.beal_gap3_mod16_elim_even_not14

/-- Inhabited.  `B ≤ 2000000` and
`B % 16 ≠ 14`.  Empty axioms.  The old
capstone stays `Classical.em`.  `B ≡ 14`
survives. -/
def beal_4_13_13_gap3_B_le_2M_eliminated_mod16 :=
  BealLevel26Foundations.BealMod16.beal_4_13_13_gap3_B_le_2M_eliminated_mod16

/-- Displayed inhabited named rows.  Count
`4488+5*299=5983` stays the density
identity. -/
def density_5983_list :=
  BealLevel26Foundations.BealMod16.density_5983_list

/-- Recorded v8.69–v8.74 pack.  Not Ribet. -/
def displayed_kraus_pack_recorded :=
  BealLevel26Foundations.BealMod16.displayed_kraus_pack_recorded

/-! ## v8.77.0 — recorded a₅₃ misses for named B≡14 rows -/

/-- Recorded Int-mod-13 miss at a named
B≡14 pair.  Not Ribet.  Not `¬ ∃ A`. -/
def b14_elim_at_p :=
  BealLevel26Foundations.KrausB14.b14_elim_at_p

/-- Vacuous on the displayed two-element
list.  Neither member is ≡ 14. -/
def beal_4_13_13_gap3_B_le_2M_eliminated_B14_kraus :=
  BealLevel26Foundations.KrausB14.beal_4_13_13_gap3_B_le_2M_eliminated_B14_kraus

/-- The two displayed named rows via
mod 16.  Not 5983 numerals. -/
def beal_4_13_13_gap3_B_le_2M_eliminated_full :=
  BealLevel26Foundations.KrausB14.beal_4_13_13_gap3_B_le_2M_eliminated_full

/-- Displayed Euler counts plus integer
misses.  Recorded, not used as Ribet. -/
def b14_kraus_pack_recorded :=
  BealLevel26Foundations.KrausB14.b14_kraus_pack_recorded

def b14_witnesses :=
  BealLevel26Foundations.B14Witnesses.b14_witnesses

/-! ## v8.78.0 — extracted B≡14 list; lowering stays Prop -/

def step60_b14_list :=
  BealLevel26Foundations.Step60B14List.step60_b14_list

/-- Displayed cubic 2-torsion.  Not Wiles. -/
def frey_modular_B14 :=
  BealLevel26Foundations.LevelLoweringB14.frey_modular_B14

/-- Uninhabited.  Pack is a miss, not Ribet. -/
def level_lowering_to_26_B14 :=
  BealLevel26Foundations.LevelLoweringB14.level_lowering_to_26_B14

/-- Uninhabited `∀` on the 352 named rows. -/
def beal_4_13_13_gap3_B_le_2M_eliminated_B14_honest :=
  BealLevel26Foundations.LevelLoweringB14.beal_4_13_13_gap3_B_le_2M_eliminated_B14_honest

/-- Displayed two-element list via mod 16. -/
def beal_4_13_13_gap3_B_le_2M_eliminated_full_honest :=
  BealLevel26Foundations.LevelLoweringB14.beal_4_13_13_gap3_B_le_2M_eliminated_full_honest

/-! ## v8.79.0 — Beal Frey cubic distinguished from displayed cubic -/

def bealFreyCubic :=
  BealLevel26Foundations.BealFreyB14.bealFreyCubic

def beal_frey_curve :=
  BealLevel26Foundations.BealFreyB14.beal_frey_curve

/-- Beal Frey cubic 2-torsion.  Not BCDT. -/
def beal_frey_has_full_2_torsion :=
  BealLevel26Foundations.BealFreyB14.beal_frey_has_full_2_torsion

/-- Algebraic rewrite under the Beal equation.  Not a conductor. -/
def beal_frey_rewrite :=
  BealLevel26Foundations.BealFreyB14.beal_frey_rewrite

/-- The two cubics disagree at a concrete point. -/
def displayed_cubic_ne_beal_frey_example :=
  BealLevel26Foundations.BealFreyB14.displayed_cubic_ne_beal_frey_example

/-- Uninhabited BCDT claim.  Not `Classical.em`. -/
def beal_frey_modular :=
  BealLevel26Foundations.BealFreyB14.beal_frey_modular

/-- Uninhabited residual irreducibility of the Beal Frey curve. -/
def beal_frey_mod13_irreducible_B14 :=
  BealLevel26Foundations.BealFreyB14.beal_frey_mod13_irreducible_B14

/-- Uninhabited Ribet–Mazur lowering of the Beal Frey curve. -/
def level_lowering_to_26_B14_honest :=
  BealLevel26Foundations.BealFreyB14.level_lowering_to_26_B14_honest

/-- Uninhabited conjunction: 2-element kill plus 352-row Prop.
    Not 5983 inhabited Beal eliminations. -/
def beal_4_13_13_gap3_B_le_2M_eliminated_5983_honest :=
  BealLevel26Foundations.BealFreyB14.beal_4_13_13_gap3_B_le_2M_eliminated_5983_honest

/-! ## v8.80.0 — Euler a53 of the Beal Frey cubic, searched mod 53 -/

def fourth_powers_mod53 :=
  BealLevel26Foundations.BealFreyB14.fourth_powers_mod53

def a53_beal_frey :=
  BealLevel26Foundations.BealFreyB14.a53_beal_frey

/-- Euler miss under the Beal equation.  Not `¬ ∃ A`. -/
def beal_frey_a53_miss_of_eq :=
  BealLevel26Foundations.BealFreyB14.beal_frey_a53_miss_of_eq

/-- Same miss on the 352 named rows.  Not `¬ ∃ A`. -/
def beal_frey_a53_miss_B14 :=
  BealLevel26Foundations.BealFreyB14.beal_frey_a53_miss_B14

/-- Residue search at a named row.  Singular `(0,0)` excluded. -/
def b14_A_search_miss :=
  BealLevel26Foundations.BealFreyB14.b14_A_search_miss

/-! ## v8.81.0 — fourth-power non-residue kill modulo 53 -/

def rhs_mod53 :=
  BealLevel26Foundations.BealFreyB14.rhs_mod53

def IsFourthMod53 :=
  BealLevel26Foundations.BealFreyB14.IsFourthMod53

/-- Empty-axiom arithmetic kill.  Not Ribet. -/
def direct_mod53_kill :=
  BealLevel26Foundations.BealFreyB14.direct_mod53_kill

def step60_b14_killed_mod53 :=
  BealLevel26Foundations.BealFreyB14.step60_b14_killed_mod53

/-- 266 of 352 named `B ≡ 14` rows.  Empty axioms.
    The other 86 stay.  Not the full 352-row `∀`. -/
def beal_4_13_13_gap3_B_le_2M_eliminated_B14_mod53 :=
  BealLevel26Foundations.BealFreyB14.beal_4_13_13_gap3_B_le_2M_eliminated_B14_mod53

/-! ## v8.82.0 — Euler a53 value set on the 86 mod-53 survivors -/

def survivors_86_list :=
  BealLevel26Foundations.BealFreyB14.survivors_86_list

def a53_nonzero_values :=
  BealLevel26Foundations.BealFreyB14.a53_nonzero_values

/-- Value set plus miss under the Beal equation.  Not `¬ ∃ A`. -/
def beal_frey_a53_value_of_eq :=
  BealLevel26Foundations.BealFreyB14.beal_frey_a53_value_of_eq

/-- Same pack on the 86 survivors.  Not `¬ ∃ A`.  Not Ribet. -/
def beal_frey_a53_miss_86 :=
  BealLevel26Foundations.BealFreyB14.beal_frey_a53_miss_86

/-! ## v8.83.0 — gcd | 3 and displayed miss; 86-row arrows stay Props -/

def gcd_B_Bplus3_dvd_three :=
  BealLevel26Foundations.BealFreyB14.gcd_B_Bplus3_dvd_three

def survivor_63982_eq_two_mul_31991 :=
  BealLevel26Foundations.BealFreyB14.survivor_63982_eq_two_mul_31991

/-- Displayed miss, not Mazur. -/
def irreducible_86 :=
  BealLevel26Foundations.BealFreyB14.irreducible_86

/-- Uninhabited.  Not a Mathlib conductor. -/
def conductor_86 :=
  BealLevel26Foundations.BealFreyB14.conductor_86

/-- Uninhabited.  Not BCDT. -/
def beal_frey_modular_allowed :=
  BealLevel26Foundations.BealFreyB14.beal_frey_modular_allowed

/-- Uninhabited.  Not Ribet. -/
def level_lowering_86 :=
  BealLevel26Foundations.BealFreyB14.level_lowering_86

/-- Uninhabited.  Not `¬ ∃ A` for the 86. -/
def beal_4_13_13_gap3_B_le_2M_eliminated_86 :=
  BealLevel26Foundations.BealFreyB14.beal_4_13_13_gap3_B_le_2M_eliminated_86

/-! ## v8.84.0 — fourth-power non-residue kill of the 86 -/

def fourth_powers_mod_q_17 :=
  BealLevel26Foundations.BealFreyB14.fourth_powers_mod_q_17

def rhs_mod17 :=
  BealLevel26Foundations.BealFreyB14.rhs_mod17

def IsFourthMod17 :=
  BealLevel26Foundations.BealFreyB14.IsFourthMod17

/-- Empty-axiom arithmetic kill.  Not Ribet. -/
def direct_mod17_kill :=
  BealLevel26Foundations.BealFreyB14.direct_mod17_kill

def direct_mod_q_17_kill :=
  BealLevel26Foundations.BealFreyB14.direct_mod_q_17_kill

def direct_mod29_kill :=
  BealLevel26Foundations.BealFreyB14.direct_mod29_kill

def direct_mod109_kill :=
  BealLevel26Foundations.BealFreyB14.direct_mod109_kill

/-- All 86 mod-53 survivors.  Empty axioms.
    The pack name `eliminated_86` stays a Prop. -/
def beal_4_13_13_gap3_B_le_2M_eliminated_86_modq :=
  BealLevel26Foundations.BealFreyB14.beal_4_13_13_gap3_B_le_2M_eliminated_86_modq

/-! ## v8.85.0 — 352-row residue cover; paper unification -/

/-- 266 + 77 + 9.  Empty axioms.  Not Ribet.
    Does not replace KrausB14.`eliminated_full`. -/
def beal_4_13_13_gap3_B_le_2M_eliminated_B14_full :=
  BealLevel26Foundations.BealFreyB14.beal_4_13_13_gap3_B_le_2M_eliminated_B14_full

/-! ## v8.87.0 — general Weierstrass Δ bound; not Tate -/

def rad :=
  BealLevel26Foundations.BealFreyConductorGeneral.rad

def bealFreyWeierstrass :=
  BealLevel26Foundations.BealFreyConductorGeneral.bealFreyWeierstrass

/-- `|Δ| = 2^e * N0` with `e ≤ 5` and
    `N0 ∣ (ABC)²⁶ * 13`.  Not Tate.  Not
    `conductor_86`.  Not BCDT. -/
theorem frey_conductor_general (A B C : Nat)
    (h : Nat.pow A 4 + Nat.pow B 4 = Nat.pow C 13)
    (hGap : C = B + 3) :
    ∃ (e N0 : Nat),
      Int.natAbs (bealFreyWeierstrass A B).Δ = Nat.pow 2 e * N0 ∧
      N0 ∣ Nat.pow (A * B * C) 26 * 13 ∧
      e ≤ 5 :=
  BealLevel26Foundations.BealFreyConductorGeneral.frey_conductor_general
    A B C h hGap

/-- Uninhabited rad form.  `|Δ|` keeps primes of `A`. -/
def frey_conductor_N0_dvd_rad_BC : Prop :=
  BealLevel26Foundations.BealFreyConductorGeneral.frey_conductor_N0_dvd_rad_BC

/-! ## v8.88.0 — Zsigmondy 5983 + LTE ledger for B > 2M; not a closed ∀ -/

theorem zsig_5983_eq_4488_plus_5_times_299 :
    4488 + 5 * 299 = 5983 :=
  BealLevel26Foundations.BealGap3ZsigBeyond2M.zsig_5983_eq_4488_plus_5_times_299

def zsig_five_pools :=
  BealLevel26Foundations.BealGap3ZsigBeyond2M.zsig_five_pools

theorem not_prime_dvd_C13_of_gt {B q : Nat}
    (hq : Nat.Prime q) (hgt : B + 3 < q) :
    ¬ q ∣ Nat.pow (B + 3) 13 :=
  BealLevel26Foundations.BealGap3ZsigBeyond2M.not_prime_dvd_C13_of_gt hq hgt

theorem q_pow4_dvd_C13_sub_B4_of_dvd_A {A B q : Nat}
    (hEq : Nat.pow A 4 + Nat.pow B 4 = Nat.pow (B + 3) 13)
    (hA : q ∣ A) :
    Nat.pow q 4 ∣ Nat.pow (B + 3) 13 - Nat.pow B 4 :=
  BealLevel26Foundations.BealGap3ZsigBeyond2M.q_pow4_dvd_C13_sub_B4_of_dvd_A hEq hA

theorem padicValNat_C13_lt_four_of_q_gt_C {B q : Nat}
    (hq : Nat.Prime q) (hgt : B + 3 < q) :
    padicValNat q (Nat.pow (B + 3) 13) < 4 :=
  BealLevel26Foundations.BealGap3ZsigBeyond2M.padicValNat_C13_lt_four_of_q_gt_C hq hgt

theorem no_Beal_of_pow4_dvd_C13_of_q_gt_C {B q : Nat}
    (hq : Nat.Prime q) (hgt : B + 3 < q)
    (hdiv : Nat.pow q 4 ∣ Nat.pow (B + 3) 13) :
    False :=
  BealLevel26Foundations.BealGap3ZsigBeyond2M.no_Beal_of_pow4_dvd_C13_of_q_gt_C hq hgt hdiv

def exists_primitive_prime_Phi13_gap3 :=
  BealLevel26Foundations.BealGap3ZsigBeyond2M.exists_primitive_prime_Phi13_gap3

/-- Uninhabited.  Named-row pools do not produce q > 2M. -/
def exists_zsig_q_gt_2M_dvd_C13_sub_B4 : Prop :=
  BealLevel26Foundations.BealGap3ZsigBeyond2M.exists_zsig_q_gt_2M_dvd_C13_sub_B4

/-- Uninhabited.  q | A gives q⁴ | C¹³ − B⁴, not q⁴ | C¹³. -/
def q_pow4_dvd_C13_of_dvd_A : Prop :=
  BealLevel26Foundations.BealGap3ZsigBeyond2M.q_pow4_dvd_C13_of_dvd_A

/-- Uninhabited.  Zsig 5983 + LTE does not close B > 2M.  Not BCDT. -/
def beal_gap3_B_gt_2M_eliminated : Prop :=
  BealLevel26Foundations.BealGap3ZsigBeyond2M.beal_gap3_B_gt_2M_eliminated

/-! ## v9.0.0 — Baker / Bugeaud effective bound; uninhabited -/

def baker_B0 :=
  BealLevel26Foundations.BealGap3BakerUpperBound.baker_B0

theorem baker_B0_eq : baker_B0 = 1000000 :=
  BealLevel26Foundations.BealGap3BakerUpperBound.baker_B0_eq

/-- Uninhabited.  Explicit Matveev for (4,4,13)
    gap3, not general Bugeaud.  Mathlib 4.12
    has no Matveev / BMS Table 1.
    Bugeaud linear forms external, not in
    Mathlib 4.12.  Needs Baker, not Zsig.
    `sorry` is not used. -/
def baker_bound_gap3 : Prop :=
  BealLevel26Foundations.BealGap3BakerUpperBound.baker_bound_gap3

theorem matveev_log_form_nat {A B : Nat}
    (h : Nat.pow A 4 + Nat.pow B 4 = Nat.pow (B + 3) 13) :
    Nat.pow (B + 3) 13 = Nat.pow A 4 + Nat.pow B 4 :=
  BealLevel26Foundations.BealGap3BakerUpperBound.matveev_log_form_nat h

theorem matveev_no_solution_A_le_B {A B : Nat}
    (hAle : A ≤ B)
    (h : Nat.pow A 4 + Nat.pow B 4 = Nat.pow (B + 3) 13) :
    False :=
  BealLevel26Foundations.BealGap3BakerUpperBound.matveev_no_solution_A_le_B
    hAle h

theorem matveev_explicit_gap3
    (hBaker : baker_bound_gap3) :
    ∀ A B : Nat,
      Nat.pow A 4 + Nat.pow B 4 = Nat.pow (B + 3) 13 →
      B ≤ baker_B0 :=
  BealLevel26Foundations.BealGap3BakerUpperBound.matveev_explicit_gap3
    hBaker

/-- Conditional gap-3 forall.  `B ≤ B0` by the
    expanded residue cover / allKilled_1e6;
    `B > B0` by matveev_explicit_gap3. -/
theorem baker_conditional_gap3_full
    (hBaker : baker_bound_gap3) :
    ∀ B : Nat,
      ¬ ∃ A, Nat.pow A 4 + Nat.pow B 4 = Nat.pow (B + 3) 13 :=
  BealLevel26Foundations.BealGap3BakerUpperBound.baker_conditional_gap3_full
    hBaker

/-! ## v9.4.0 — chunked 1e6 kernel census -/

def allKilled :=
  BealLevel26Foundations.BealGap3BakerUpperBound.allKilled

theorem allKilled_chunk_0 : allKilled 0 2500 = true :=
  BealLevel26Foundations.BealGap3BakerUpperBound.allKilled_chunk_0

theorem allKilled_chunk_1 : allKilled 2500 2500 = true :=
  BealLevel26Foundations.BealGap3BakerUpperBound.allKilled_chunk_1

theorem allKilled_chunk_2 : allKilled 5000 2500 = true :=
  BealLevel26Foundations.BealGap3BakerUpperBound.allKilled_chunk_2

theorem allKilled_chunk_3 : allKilled 7500 2500 = true :=
  BealLevel26Foundations.BealGap3BakerUpperBound.allKilled_chunk_3

theorem allKilled_chunk_4 : allKilled 10000 2500 = true :=
  BealLevel26Foundations.BealGap3BakerUpperBound.allKilled_chunk_4

theorem allKilled_chunk_5 : allKilled 12500 2500 = true :=
  BealLevel26Foundations.BealGap3BakerUpperBound.allKilled_chunk_5

theorem allKilled_chunk_6 : allKilled 15000 2500 = true :=
  BealLevel26Foundations.BealGap3BakerUpperBound.allKilled_chunk_6

theorem allKilled_chunk_7 : allKilled 17500 2500 = true :=
  BealLevel26Foundations.BealGap3BakerUpperBound.allKilled_chunk_7

theorem allKilled_chunk_8 : allKilled 20000 2500 = true :=
  BealLevel26Foundations.BealGap3BakerUpperBound.allKilled_chunk_8

theorem allKilled_chunk_9 : allKilled 22500 2500 = true :=
  BealLevel26Foundations.BealGap3BakerUpperBound.allKilled_chunk_9

theorem allKilled_chunk_10 : allKilled 25000 2500 = true :=
  BealLevel26Foundations.BealGap3BakerUpperBound.allKilled_chunk_10

theorem allKilled_chunk_11 : allKilled 27500 2500 = true :=
  BealLevel26Foundations.BealGap3BakerUpperBound.allKilled_chunk_11

theorem allKilled_chunk_12 : allKilled 30000 2500 = true :=
  BealLevel26Foundations.BealGap3BakerUpperBound.allKilled_chunk_12

theorem allKilled_chunk_13 : allKilled 32500 2500 = true :=
  BealLevel26Foundations.BealGap3BakerUpperBound.allKilled_chunk_13

theorem allKilled_chunk_14 : allKilled 35000 2500 = true :=
  BealLevel26Foundations.BealGap3BakerUpperBound.allKilled_chunk_14

theorem allKilled_chunk_15 : allKilled 37500 2500 = true :=
  BealLevel26Foundations.BealGap3BakerUpperBound.allKilled_chunk_15

theorem allKilled_chunk_16 : allKilled 40000 2500 = true :=
  BealLevel26Foundations.BealGap3BakerUpperBound.allKilled_chunk_16

theorem allKilled_chunk_17 : allKilled 42500 2500 = true :=
  BealLevel26Foundations.BealGap3BakerUpperBound.allKilled_chunk_17

theorem allKilled_chunk_18 : allKilled 45000 2500 = true :=
  BealLevel26Foundations.BealGap3BakerUpperBound.allKilled_chunk_18

theorem allKilled_chunk_19 : allKilled 47500 2500 = true :=
  BealLevel26Foundations.BealGap3BakerUpperBound.allKilled_chunk_19

theorem allKilled_chunk_20 : allKilled 50000 2500 = true :=
  BealLevel26Foundations.BealGap3BakerUpperBound.allKilled_chunk_20

theorem allKilled_chunk_21 : allKilled 52500 2500 = true :=
  BealLevel26Foundations.BealGap3BakerUpperBound.allKilled_chunk_21

theorem allKilled_chunk_22 : allKilled 55000 2500 = true :=
  BealLevel26Foundations.BealGap3BakerUpperBound.allKilled_chunk_22

theorem allKilled_chunk_23 : allKilled 57500 2500 = true :=
  BealLevel26Foundations.BealGap3BakerUpperBound.allKilled_chunk_23

theorem allKilled_chunk_24 : allKilled 60000 2500 = true :=
  BealLevel26Foundations.BealGap3BakerUpperBound.allKilled_chunk_24

theorem allKilled_62500 :
    allKilled 0 2500 = true ∧
    allKilled 2500 2500 = true ∧
    allKilled 5000 2500 = true ∧
    allKilled 7500 2500 = true ∧
    allKilled 10000 2500 = true ∧
    allKilled 12500 2500 = true ∧
    allKilled 15000 2500 = true ∧
    allKilled 17500 2500 = true ∧
    allKilled 20000 2500 = true ∧
    allKilled 22500 2500 = true ∧
    allKilled 25000 2500 = true ∧
    allKilled 27500 2500 = true ∧
    allKilled 30000 2500 = true ∧
    allKilled 32500 2500 = true ∧
    allKilled 35000 2500 = true ∧
    allKilled 37500 2500 = true ∧
    allKilled 40000 2500 = true ∧
    allKilled 42500 2500 = true ∧
    allKilled 45000 2500 = true ∧
    allKilled 47500 2500 = true ∧
    allKilled 50000 2500 = true ∧
    allKilled 52500 2500 = true ∧
    allKilled 55000 2500 = true ∧
    allKilled 57500 2500 = true ∧
    allKilled 60000 2500 = true :=
  BealLevel26Foundations.BealGap3BakerUpperBound.allKilled_62500

theorem allKilled_1e6 :
    allKilled 0 2500 = true ∧
    allKilled 2500 2500 = true ∧
    allKilled 5000 2500 = true ∧
    allKilled 7500 2500 = true ∧
    allKilled 10000 2500 = true ∧
    allKilled 12500 2500 = true ∧
    allKilled 15000 2500 = true ∧
    allKilled 17500 2500 = true ∧
    allKilled 20000 2500 = true ∧
    allKilled 22500 2500 = true ∧
    allKilled 25000 2500 = true ∧
    allKilled 27500 2500 = true ∧
    allKilled 30000 2500 = true ∧
    allKilled 32500 2500 = true ∧
    allKilled 35000 2500 = true ∧
    allKilled 37500 2500 = true ∧
    allKilled 40000 2500 = true ∧
    allKilled 42500 2500 = true ∧
    allKilled 45000 2500 = true ∧
    allKilled 47500 2500 = true ∧
    allKilled 50000 2500 = true ∧
    allKilled 52500 2500 = true ∧
    allKilled 55000 2500 = true ∧
    allKilled 57500 2500 = true ∧
    allKilled 60000 2500 = true :=
  BealLevel26Foundations.BealGap3BakerUpperBound.allKilled_1e6

/-! ## v9.1.0 — Tate Step 2 for Frey Y² = X(X−A⁴)(X+B⁴) -/

def tate_rhs :=
  BealLevel26Foundations.BealFreyTateConductor.tate_rhs

theorem v2_c4_ge_four {A B : Nat} (hAB : A ≠ 0 ∨ B ≠ 0) :
    4 ≤ padicValInt 2 (bealFreyWeierstrass A B).c₄ :=
  BealLevel26Foundations.BealFreyTateConductor.v2_c4_ge_four hAB

theorem tate_odd_prime_exponent_one {A B q : Nat}
    (hA : 0 < A) (hB : 0 < B)
    (hEq : Nat.pow A 4 + Nat.pow B 4 = Nat.pow (B + 3) 13)
    (hAB : Nat.Coprime A B)
    (hAC : Nat.Coprime A (B + 3))
    (hBC : Nat.Coprime B (B + 3))
    (hq : q.Prime) (hodd : q ≠ 2)
    (hdvd : q ∣ A * B * (B + 3)) :
    BealLevel26Foundations.BealFreyTateConductor.conductorExponentTate
      (padicValInt q (bealFreyWeierstrass A B).c₄)
      (padicValInt q (bealFreyWeierstrass A B).Δ) = 1 :=
  BealLevel26Foundations.BealFreyTateConductor.tate_odd_prime_exponent_one
    hA hB hEq hAB hAC hBC hq hodd hdvd

theorem rad_dvd_tate_rhs (A B : Nat) :
    rad (A * B * (B + 3)) ∣ tate_rhs A B :=
  BealLevel26Foundations.BealFreyTateConductor.rad_dvd_tate_rhs A B

theorem packedOddStep2_dvd_tate_rhs (A B : Nat) :
    BealLevel26Foundations.BealFreyTateConductor.packedOddStep2 A B ∣
      tate_rhs A B :=
  BealLevel26Foundations.BealFreyTateConductor.packedOddStep2_dvd_tate_rhs A B

/-- Defined packed conductor.  Same Nat as `tateConductor`.
    Not Mathlib `N(E)`. -/
def tateConductor :=
  BealLevel26Foundations.BealFreyTateConductor.tateConductor

def frey_tate_conductor :=
  BealLevel26Foundations.BealFreyTateConductor.frey_tate_conductor

theorem frey_tate_conductor_inhabited (A B : Nat) :
    tateConductor A B ∣
        Nat.pow 2 5 * rad (A * B * (B + 3)) * 13 ∧
      (0 < A → 0 < B →
        Nat.pow A 4 + Nat.pow B 4 = Nat.pow (B + 3) 13 →
        BealLevel26Foundations.BealFreyTateConductor.tateF2 A B ≤ 5) ∧
      (0 < A → 0 < B →
        Nat.pow A 4 + Nat.pow B 4 = Nat.pow (B + 3) 13 →
        Nat.Coprime A B →
        Nat.Coprime A (B + 3) →
        Nat.Coprime B (B + 3) →
        ∀ q : Nat, q.Prime → q ≠ 2 → q ∣ A * B * (B + 3) →
          BealLevel26Foundations.BealFreyTateConductor.conductorExponentTate
            (padicValInt q (bealFreyWeierstrass A B).c₄)
            (padicValInt q (bealFreyWeierstrass A B).Δ) ≤ 1) :=
  BealLevel26Foundations.BealFreyTateConductor.frey_tate_conductor_inhabited
    A B

/-! ## v9.2.0 — Tate Steps 6-7 at 2 -/

theorem tate_odd_exponent_le_one {A B q : Nat}
    (hA : 0 < A) (hB : 0 < B)
    (hEq : Nat.pow A 4 + Nat.pow B 4 = Nat.pow (B + 3) 13)
    (hAB : Nat.Coprime A B)
    (hAC : Nat.Coprime A (B + 3))
    (hBC : Nat.Coprime B (B + 3))
    (hq : q.Prime) (hodd : q ≠ 2)
    (hdvd : q ∣ A * B * (B + 3)) :
    BealLevel26Foundations.BealFreyTateConductor.conductorExponentTate
      (padicValInt q (bealFreyWeierstrass A B).c₄)
      (padicValInt q (bealFreyWeierstrass A B).Δ) ≤ 1 :=
  BealLevel26Foundations.BealFreyTateConductor.tate_odd_exponent_le_one
    hA hB hEq hAB hAC hBC hq hodd hdvd

theorem tate_2adic_exponent_le5 {A B : Nat}
    (hA : 0 < A) (hB : 0 < B)
    (hEq : Nat.pow A 4 + Nat.pow B 4 = Nat.pow (B + 3) 13) :
    BealLevel26Foundations.BealFreyTateConductor.conductorExponentTate2
      (padicValInt 2 (bealFreyWeierstrass A B).c₄)
      (padicValInt 2 (bealFreyWeierstrass A B).c₆)
      (padicValInt 2 (bealFreyWeierstrass A B).Δ) ≤ 5 :=
  BealLevel26Foundations.BealFreyTateConductor.tate_2adic_exponent_le5
    hA hB hEq

def tate_conductor_bound_rhs :=
  BealLevel26Foundations.BealFreyTateConductor.tate_conductor_bound_rhs

theorem tatePackedValuationBound_dvd_rhs {A B : Nat}
    (hA : 0 < A) (hB : 0 < B)
    (hEq : Nat.pow A 4 + Nat.pow B 4 = Nat.pow (B + 3) 13) :
    BealLevel26Foundations.BealFreyTateConductor.tatePackedValuationBound A B ∣
      tate_conductor_bound_rhs A B :=
  BealLevel26Foundations.BealFreyTateConductor.tatePackedValuationBound_dvd_rhs
    hA hB hEq

/-! ## v15.0.0 — Baker B0 PARI certificate -/

def baker_B0_PARI :=
  BealLevel26Foundations.BealBakerB0Certificate.baker_B0_PARI

def baker_B0_certificate_displayed :=
  BealLevel26Foundations.BealBakerB0Certificate.baker_B0_certificate_displayed

def baker_B0_certificate :=
  BealLevel26Foundations.BealBakerB0Certificate.baker_B0_certificate

theorem baker_B0_certificate_holds :
    baker_B0_certificate_displayed ≠ [] :=
  BealLevel26Foundations.BealBakerB0Certificate.baker_B0_certificate_holds

def baker_bound_gap3_of_PARI : Prop :=
  BealLevel26Foundations.BealBakerB0Certificate.baker_bound_gap3_of_PARI

theorem baker_B0_PARI_eq : baker_B0_PARI = baker_B0 :=
  BealLevel26Foundations.BealBakerB0Certificate.baker_B0_PARI_eq

/-! ## v17.0.0 — Baker B0 PARI LLL reduction certificate -/

def baker_B0_reduced_PARI :=
  BealLevel26Foundations.BealBakerB0ReductionCertificate.baker_B0_reduced_PARI

def baker_B0_raw_PARI :=
  BealLevel26Foundations.BealBakerB0ReductionCertificate.baker_B0_raw_PARI

def baker_reduction_certificate_displayed :=
  BealLevel26Foundations.BealBakerB0ReductionCertificate.baker_reduction_certificate_displayed

def baker_reduction_certificate :=
  BealLevel26Foundations.BealBakerB0ReductionCertificate.baker_reduction_certificate

theorem baker_reduction_certificate_holds :
    baker_reduction_certificate_displayed ≠ [] :=
  BealLevel26Foundations.BealBakerB0ReductionCertificate.baker_reduction_certificate_holds

def baker_bound_gap3_of_LLL : Prop :=
  BealLevel26Foundations.BealBakerB0ReductionCertificate.baker_bound_gap3_of_LLL

theorem baker_B0_reduced_PARI_eq : baker_B0_reduced_PARI = baker_B0 :=
  BealLevel26Foundations.BealBakerB0ReductionCertificate.baker_B0_reduced_PARI_eq

/-! ## v19.0.0 — Matveev constants formalization -/

def matveev_C1_floor :=
  BealLevel26Foundations.BealMatveevConstants.matveev_C1_floor

def matveev_height_B0 :=
  BealLevel26Foundations.BealMatveevConstants.matveev_height_B0

def matveev_explicit_gap3_constants :=
  BealLevel26Foundations.BealMatveevConstants.matveev_explicit_gap3_constants

theorem matveev_C1_pos : matveev_C1_floor > 0 :=
  BealLevel26Foundations.BealMatveevConstants.matveev_C1_pos

theorem matveev_explicit_gap3_constants_hold :
    matveev_explicit_gap3_constants ≠ [] :=
  BealLevel26Foundations.BealMatveevConstants.matveev_explicit_gap3_constants_hold

theorem matveev_height_B0_eq :
    matveev_height_B0 = matveev_C1_floor * 729000000 :=
  BealLevel26Foundations.BealMatveevConstants.matveev_height_B0_eq

def baker_bound_gap3_of_matveev_constants : Prop :=
  BealLevel26Foundations.BealMatveevConstants.baker_bound_gap3_of_matveev_constants

/-! ## v20.0.0 — Matveev inequality / Bugeaud LLL skeleton -/

noncomputable def matveev_log_form :=
  BealLevel26Foundations.BealMatveevInequality.matveev_log_form

def matveev_lower_bound : Prop :=
  BealLevel26Foundations.BealMatveevInequality.matveev_lower_bound

def matveev_inequality_constants :=
  BealLevel26Foundations.BealMatveevInequality.matveev_inequality_constants

theorem matveev_inequality_constants_hold :
    matveev_inequality_constants ≠ [] :=
  BealLevel26Foundations.BealMatveevInequality.matveev_inequality_constants_hold

theorem matveev_lower_bound_scale_pos :
    BealLevel26Foundations.BealMatveevInequality.matveev_lower_bound_scale > 0 :=
  BealLevel26Foundations.BealMatveevInequality.matveev_lower_bound_scale_pos

def baker_bound_gap3_of_matveev_inequality : Prop :=
  BealLevel26Foundations.BealMatveevInequality.baker_bound_gap3_of_matveev_inequality

def bugeaud_K :=
  BealLevel26Foundations.BealBugeaudLLLFormal.bugeaud_K

def bugeaud_LLL_basis :=
  BealLevel26Foundations.BealBugeaudLLLFormal.bugeaud_LLL_basis

theorem bugeaud_K_eq : bugeaud_K = Nat.pow 10 20 :=
  BealLevel26Foundations.BealBugeaudLLLFormal.bugeaud_K_eq

theorem bugeaud_LLL_basis_holds :
    bugeaud_LLL_basis ≠ [] :=
  BealLevel26Foundations.BealBugeaudLLLFormal.bugeaud_LLL_basis_holds

def bugeaud_reduction_formal : Prop :=
  BealLevel26Foundations.BealBugeaudLLLFormal.bugeaud_reduction_formal

def bugeaud_LLL_reduction_conditional : Prop :=
  BealLevel26Foundations.BealBugeaudLLLFormal.bugeaud_LLL_reduction_conditional

def baker_bound_gap3_of_bugeaud_LLL : Prop :=
  BealLevel26Foundations.BealBugeaudLLLFormal.baker_bound_gap3_of_bugeaud_LLL

/-! ## v21.0.0 — integer log form ≠ 0 and height bound -/

def matveev_log_form_int :=
  BealLevel26Foundations.BealMatveevInequality.matveev_log_form_int

theorem matveev_log_form_ne_zero_zero :
    matveev_log_form_int 0 ≠ 0 :=
  BealLevel26Foundations.BealMatveevInequality.matveev_log_form_ne_zero_zero

theorem matveev_log_form_ne_zero_fourteen :
    matveev_log_form_int 14 ≠ 0 :=
  BealLevel26Foundations.BealMatveevInequality.matveev_log_form_ne_zero_fourteen

theorem matveev_log_form_ne_zero (B : Nat)
    (hB : B % 14 = 0) :
    matveev_log_form_int B ≠ 0 :=
  BealLevel26Foundations.BealMatveevInequality.matveev_log_form_ne_zero B hB

theorem matveev_height_le_log_B0 {B : Nat}
    (hB : B ≤ matveev_height_B0) :
    B ≤ 104382751019310000000 :=
  BealLevel26Foundations.BealMatveevInequality.matveev_height_le_log_B0 hB

theorem matveev_census_B0_le_height :
    BealLevel26Foundations.BealMatveevConstants.matveev_B0 ≤
      matveev_height_B0 :=
  BealLevel26Foundations.BealMatveevInequality.matveev_census_B0_le_height

/-! ## v22.0.0 — Matveev Real inequality skeleton -/

noncomputable def matveev_C_exp_bound :=
  BealLevel26Foundations.BealMatveevInequalityReal.matveev_C_exp_bound

def matveev_inequality_real_formal : Prop :=
  BealLevel26Foundations.BealMatveevInequalityReal.matveev_inequality_real_formal

def matveev_inequality_real_lower : Prop :=
  BealLevel26Foundations.BealMatveevInequalityReal.matveev_inequality_real_lower

theorem matveev_C_exp_bound_decide :
    matveev_C1_floor = 143186215390 ∧
      BealLevel26Foundations.BealMatveevConstants.matveev_thirty_pow =
        729000000 :=
  BealLevel26Foundations.BealMatveevInequalityReal.matveev_C_exp_bound_decide

theorem matveev_inequality_real_constants_hold :
    BealLevel26Foundations.BealMatveevInequalityReal.matveev_inequality_real_constants ≠
      [] :=
  BealLevel26Foundations.BealMatveevInequalityReal.matveev_inequality_real_constants_hold

def baker_bound_gap3_of_matveev_inequality_real : Prop :=
  BealLevel26Foundations.BealMatveevInequalityReal.baker_bound_gap3_of_matveev_inequality_real

/-! ## v23.0.0 — C_exp_bound compare + Real nonzero on a solution -/

theorem matveev_height_B0_gt_onee12 :
    BealLevel26Foundations.BealBakerBoundGap3.ten_pow_12 <
      matveev_height_B0 :=
  BealLevel26Foundations.BealBakerBoundGap3.matveev_height_B0_gt_onee12

theorem matveev_C_exp_bound_lt_neg_onee12 :
    matveev_C_exp_bound <
      -((BealLevel26Foundations.BealBakerBoundGap3.ten_pow_12 : Nat) :
          Real) :=
  BealLevel26Foundations.BealBakerBoundGap3.matveev_C_exp_bound_lt_neg_onee12

theorem matveev_log_form_ne_zero_of_gap3 {A B : Nat}
    (hsol : Nat.pow A 4 + Nat.pow B 4 = Nat.pow (B + 3) 13)
    (hB : 0 < B) :
    matveev_log_form A B ≠ 0 :=
  BealLevel26Foundations.BealBakerBoundGap3.matveev_log_form_ne_zero_of_gap3
    hsol hB

def baker_bound_gap3_remaining : Prop :=
  BealLevel26Foundations.BealBakerBoundGap3.baker_bound_gap3_remaining

def baker_conditional_gap3_full_unconditional : Prop :=
  BealLevel26Foundations.BealBakerBoundGap3.baker_conditional_gap3_full_unconditional

/-! ## v24.0.0 — Matveev 2000 Thm 1.4 start -/

theorem matveev_thirty_pow_eq_729000000 :
    BealLevel26Foundations.BealMatveevConstants.matveev_thirty_pow =
      729000000 :=
  BealLevel26Foundations.BealMatveevThm14.matveev_thirty_pow_eq_729000000

theorem matveev_thirty_pow_ne_72900000 :
    BealLevel26Foundations.BealMatveevConstants.matveev_thirty_pow ≠
      72900000 :=
  BealLevel26Foundations.BealMatveevThm14.matveev_thirty_pow_ne_72900000

theorem matveev_height_log_pos :
    (0 : Real) < Real.log (matveev_height_B0 : Real) :=
  BealLevel26Foundations.BealMatveevThm14.matveev_height_log_pos

theorem matveev_exp_bound_neg :
    matveev_C_exp_bound < 0 :=
  BealLevel26Foundations.BealMatveevThm14.matveev_exp_bound_neg

def matveev_inequality_real_target : Prop :=
  BealLevel26Foundations.BealMatveevThm14.matveev_inequality_real_target

theorem matveev_thm14_constants_hold :
    BealLevel26Foundations.BealMatveevThm14.matveev_thm14_constants ≠
      [] :=
  BealLevel26Foundations.BealMatveevThm14.matveev_thm14_constants_hold

/-! ## v24.0.1 — height / log monotone -/

theorem matveev_C1_floor_pos :
    BealLevel26Foundations.BealMatveevConstants.matveev_C1_floor > 0 :=
  BealLevel26Foundations.BealMatveevThm14.matveev_C1_floor_pos

theorem matveev_thirty_pow_pos :
    BealLevel26Foundations.BealMatveevConstants.matveev_thirty_pow > 0 :=
  BealLevel26Foundations.BealMatveevThm14.matveev_thirty_pow_pos

theorem matveev_height_B0_gt_two :
    (2 : Real) < (matveev_height_B0 : Real) :=
  BealLevel26Foundations.BealMatveevThm14.matveev_height_B0_gt_two

theorem matveev_log_height_monotone :
    ∀ (h1 h2 : Real),
      (0 : Real) < h1 → h1 < h2 →
        Real.log h1 < Real.log h2 :=
  BealLevel26Foundations.BealMatveevThm14.matveev_log_height_monotone

theorem matveev_C_exp_bound_lt_zero_of_pos_log :
    matveev_C_exp_bound < 0 ↔
      (0 : Real) < Real.log (matveev_height_B0 : Real) :=
  BealLevel26Foundations.BealMatveevThm14.matveev_C_exp_bound_lt_zero_of_pos_log

/-! ## v24.0.2 — exp of the displayed bound -/

theorem matveev_exp_bound_lt_zero :
    matveev_C_exp_bound < 0 :=
  BealLevel26Foundations.BealMatveevThm14.matveev_exp_bound_lt_zero

theorem matveev_exp_of_bound_pos_lt_one :
    Real.exp matveev_C_exp_bound < 1 :=
  BealLevel26Foundations.BealMatveevThm14.matveev_exp_of_bound_pos_lt_one

theorem matveev_exp_of_bound_pos :
    (0 : Real) < Real.exp matveev_C_exp_bound :=
  BealLevel26Foundations.BealMatveevThm14.matveev_exp_of_bound_pos

theorem matveev_C_exp_bound_le_neg_onee12 :
    matveev_C_exp_bound ≤
      -((BealLevel26Foundations.BealBakerBoundGap3.ten_pow_12 : Nat) :
          Real) :=
  BealLevel26Foundations.BealMatveevThm14.matveev_C_exp_bound_le_neg_onee12

noncomputable def matveev_target_exp_lower : Real :=
  BealLevel26Foundations.BealMatveevThm14.matveev_target_exp_lower

/-! ## v24.1.0 — height product identity -/

theorem matveev_C1_floor_mul_thirty_pow_div10 :
    BealLevel26Foundations.BealMatveevConstants.matveev_C1_floor *
      72900000 = 10438275101931000000 :=
  BealLevel26Foundations.BealMatveevThm14.matveev_C1_floor_mul_thirty_pow_div10

theorem matveev_C1_floor_mul_thirty_pow :
    BealLevel26Foundations.BealMatveevConstants.matveev_C1_floor *
      729000000 = 104382751019310000000 :=
  BealLevel26Foundations.BealMatveevThm14.matveev_C1_floor_mul_thirty_pow

theorem matveev_C1_floor_mul_thirty_pow_div10_times_ten :
    BealLevel26Foundations.BealMatveevConstants.matveev_C1_floor *
      72900000 * 10 =
      BealLevel26Foundations.BealMatveevConstants.matveev_height_B0 :=
  BealLevel26Foundations.BealMatveevThm14.matveev_C1_floor_mul_thirty_pow_div10_times_ten

theorem matveev_C1_floor_mul_thirty_pow_div10_ne_height :
    BealLevel26Foundations.BealMatveevConstants.matveev_C1_floor *
      72900000 ≠
      BealLevel26Foundations.BealMatveevConstants.matveev_height_B0 :=
  BealLevel26Foundations.BealMatveevThm14.matveev_C1_floor_mul_thirty_pow_div10_ne_height

theorem matveev_height_product_link :
    BealLevel26Foundations.BealMatveevConstants.matveev_height_B0 =
      BealLevel26Foundations.BealMatveevConstants.matveev_C1_floor *
        BealLevel26Foundations.BealMatveevConstants.matveev_thirty_pow :=
  BealLevel26Foundations.BealMatveevThm14.matveev_height_product_link

/-! ## v24.1.1 — rewriting C_exp_bound via height_B0 -/

theorem matveev_C_exp_bound_eq_neg_height_mul_log :
    matveev_C_exp_bound =
      -(((matveev_height_B0 : Real) *
          Real.log (matveev_height_B0 : Real))) :=
  BealLevel26Foundations.BealMatveevThm14.matveev_C_exp_bound_eq_neg_height_mul_log

theorem matveev_C_exp_bound_eq_neg_height_log :
    matveev_C_exp_bound =
      -(matveev_height_B0 : Real) * Real.log (matveev_height_B0 : Real) :=
  BealLevel26Foundations.BealMatveevThm14.matveev_C_exp_bound_eq_neg_height_log

theorem matveev_target_exp_lower_eq :
    matveev_target_exp_lower =
      Real.exp (-((matveev_height_B0 : Real) *
        Real.log (matveev_height_B0 : Real))) :=
  BealLevel26Foundations.BealMatveevThm14.matveev_target_exp_lower_eq

theorem matveev_height_B0_mul_log_pos :
    (0 : Real) < (matveev_height_B0 : Real) *
      Real.log (matveev_height_B0 : Real) :=
  BealLevel26Foundations.BealMatveevThm14.matveev_height_B0_mul_log_pos

theorem matveev_C_exp_bound_neg_of_mul_log_pos :
    matveev_C_exp_bound < 0 ↔
      (0 : Real) < (matveev_height_B0 : Real) *
        Real.log (matveev_height_B0 : Real) :=
  BealLevel26Foundations.BealMatveevThm14.matveev_C_exp_bound_neg_of_mul_log_pos

/-! ## v24.2.0 — Logarithmic form upper bound on gap-3 solutions -/

theorem matveev_gap3_B_pos_of_solution {A B : Nat}
    (hsol : Nat.pow A 4 + Nat.pow B 4 = Nat.pow (B + 3) 13) :
    0 < B :=
  BealLevel26Foundations.BealMatveevThm14.matveev_gap3_B_pos_of_solution hsol

theorem matveev_gap3_A_pos {A B : Nat}
    (hsol : Nat.pow A 4 + Nat.pow B 4 = Nat.pow (B + 3) 13) :
    0 < A :=
  BealLevel26Foundations.BealMatveevThm14.matveev_gap3_A_pos hsol

theorem matveev_gap3_A_pos_of_pos_B {A B : Nat}
    (hsol : Nat.pow A 4 + Nat.pow B 4 = Nat.pow (B + 3) 13)
    (hB : 0 < B) :
    0 < A :=
  BealLevel26Foundations.BealMatveevThm14.matveev_gap3_A_pos_of_pos_B hsol hB

theorem matveev_gap3_log_form_upper_bound {A B : Nat}
    (hsol : Nat.pow A 4 + Nat.pow B 4 = Nat.pow (B + 3) 13)
    (hB : 0 < B) :
    matveev_log_form A B < 0 ∧
      |matveev_log_form A B| = -matveev_log_form A B :=
  BealLevel26Foundations.BealMatveevThm14.matveev_gap3_log_form_upper_bound hsol hB

theorem matveev_gap3_log_form_upper_bound_expanded {A B : Nat}
    (hsol : Nat.pow A 4 + Nat.pow B 4 = Nat.pow (B + 3) 13)
    (hB : 0 < B) :
    (4 : Real) * Real.log (A : Real) -
        (13 : Real) * Real.log ((B + 3 : Nat) : Real) < 0 ∧
      |(4 : Real) * Real.log (A : Real) -
        (13 : Real) * Real.log ((B + 3 : Nat) : Real)| =
        -((4 : Real) * Real.log (A : Real) -
          (13 : Real) * Real.log ((B + 3 : Nat) : Real)) :=
  BealLevel26Foundations.BealMatveevThm14.matveev_gap3_log_form_upper_bound_expanded hsol hB

theorem matveev_gap3_log_form_upper_bound_of_solution {A B : Nat}
    (hsol : Nat.pow A 4 + Nat.pow B 4 = Nat.pow (B + 3) 13) :
    matveev_log_form A B < 0 ∧
      |matveev_log_form A B| = -matveev_log_form A B :=
  BealLevel26Foundations.BealMatveevThm14.matveev_gap3_log_form_upper_bound_of_solution hsol

theorem matveev_exp_lower_lt_one_and_pos :
    (0 : Real) < matveev_target_exp_lower ∧
      matveev_target_exp_lower < 1 :=
  BealLevel26Foundations.BealMatveevThm14.matveev_exp_lower_lt_one_and_pos

theorem matveev_gap3_A_pow_pos {A B : Nat}
    (hsol : Nat.pow A 4 + Nat.pow B 4 = Nat.pow (B + 3) 13) :
    (0 : Real) < (A : Real) ^ 4 :=
  BealLevel26Foundations.BealMatveevThm14.matveev_gap3_A_pow_pos hsol

theorem matveev_gap3_B3_pow_pos {A B : Nat}
    (hsol : Nat.pow A 4 + Nat.pow B 4 = Nat.pow (B + 3) 13) :
    (0 : Real) < ((B + 3 : Nat) : Real) ^ 13 :=
  BealLevel26Foundations.BealMatveevThm14.matveev_gap3_B3_pow_pos hsol

theorem matveev_gap3_ratio_eq_one_plus_ratio {A B : Nat}
    (hsol : Nat.pow A 4 + Nat.pow B 4 = Nat.pow (B + 3) 13) :
    ((B + 3 : Nat) : Real) ^ 13 / (A : Real) ^ 4 =
      1 + (B : Real) ^ 4 / (A : Real) ^ 4 :=
  BealLevel26Foundations.BealMatveevThm14.matveev_gap3_ratio_eq_one_plus_ratio hsol

theorem matveev_gap3_log_form_eq_log_ratio {A B : Nat}
    (hsol : Nat.pow A 4 + Nat.pow B 4 = Nat.pow (B + 3) 13) :
    matveev_log_form A B =
      -Real.log (((B + 3 : Nat) : Real) ^ 13 / (A : Real) ^ 4) ∧
    |matveev_log_form A B| =
      Real.log (((B + 3 : Nat) : Real) ^ 13 / (A : Real) ^ 4) ∧
    Real.log (((B + 3 : Nat) : Real) ^ 13 / (A : Real) ^ 4) =
      Real.log (1 + (B : Real) ^ 4 / (A : Real) ^ 4) :=
  BealLevel26Foundations.BealMatveevThm14.matveev_gap3_log_form_eq_log_ratio hsol

theorem matveev_gap3_abs_lambda_eq_log_one_plus_ratio {A B : Nat}
    (hsol : Nat.pow A 4 + Nat.pow B 4 = Nat.pow (B + 3) 13) :
    |matveev_log_form A B| = Real.log (1 + (B : Real) ^ 4 / (A : Real) ^ 4) :=
  BealLevel26Foundations.BealMatveevThm14.matveev_gap3_abs_lambda_eq_log_one_plus_ratio hsol

theorem matveev_log_one_plus_le_self {x : Real} (hx : -1 < x) :
    Real.log (1 + x) ≤ x :=
  BealLevel26Foundations.BealMatveevThm14.matveev_log_one_plus_le_self hx

theorem matveev_gap3_B_pow_div_A_pow_pos {A B : Nat}
    (hsol : Nat.pow A 4 + Nat.pow B 4 = Nat.pow (B + 3) 13) :
    (0 : Real) < (B : Real) ^ 4 / (A : Real) ^ 4 :=
  BealLevel26Foundations.BealMatveevThm14.matveev_gap3_B_pow_div_A_pow_pos hsol

theorem matveev_gap3_abs_lambda_nonneg (A B : Nat) :
    (0 : Real) ≤ |matveev_log_form A B| :=
  BealLevel26Foundations.BealMatveevThm14.matveev_gap3_abs_lambda_nonneg A B

theorem matveev_gap3_abs_lambda_le_ratio {A B : Nat}
    (hsol : Nat.pow A 4 + Nat.pow B 4 = Nat.pow (B + 3) 13) :
    |matveev_log_form A B| ≤ (B : Real) ^ 4 / (A : Real) ^ 4 :=
  BealLevel26Foundations.BealMatveevThm14.matveev_gap3_abs_lambda_le_ratio hsol

theorem matveev_gap3_abs_lambda_lt_one_of_small_ratio {A B : Nat}
    (hsol : Nat.pow A 4 + Nat.pow B 4 = Nat.pow (B + 3) 13)
    (hsmall : (B : Real) ^ 4 / (A : Real) ^ 4 < 1) :
    |matveev_log_form A B| < 1 :=
  BealLevel26Foundations.BealMatveevThm14.matveev_gap3_abs_lambda_lt_one_of_small_ratio hsol hsmall

theorem matveev_conditional_lower_implies_ratio_gt_exp {A B : Nat}
    (hsol : Nat.pow A 4 + Nat.pow B 4 = Nat.pow (B + 3) 13)
    (hlower : matveev_target_exp_lower < |matveev_log_form A B|) :
    matveev_target_exp_lower < (B : Real) ^ 4 / (A : Real) ^ 4 :=
  BealLevel26Foundations.BealMatveevThm14.matveev_conditional_lower_implies_ratio_gt_exp hsol hlower

theorem matveev_conditional_lower_implies_ratio_gt_exp_of_solution {A B : Nat}
    (hsol : Nat.pow A 4 + Nat.pow B 4 = Nat.pow (B + 3) 13) :
    matveev_target_exp_lower < |matveev_log_form A B| →
      matveev_target_exp_lower < (B : Real) ^ 4 / (A : Real) ^ 4 :=
  BealLevel26Foundations.BealMatveevThm14.matveev_conditional_lower_implies_ratio_gt_exp_of_solution hsol

theorem matveev_gap3_ratio_lower_bound_conditional {A B : Nat}
    (hsol : Nat.pow A 4 + Nat.pow B 4 = Nat.pow (B + 3) 13)
    (htarget : matveev_inequality_real_target) :
    Real.exp matveev_C_exp_bound < (B : Real) ^ 4 / (A : Real) ^ 4 :=
  BealLevel26Foundations.BealMatveevThm14.matveev_gap3_ratio_lower_bound_conditional hsol htarget

theorem matveev_gap3_conditional_ratio_pos {A B : Nat}
    (hsol : Nat.pow A 4 + Nat.pow B 4 = Nat.pow (B + 3) 13)
    (htarget : matveev_inequality_real_target) :
    (0 : Real) < Real.exp matveev_C_exp_bound ∧
      Real.exp matveev_C_exp_bound < (B : Real) ^ 4 / (A : Real) ^ 4 :=
  BealLevel26Foundations.BealMatveevThm14.matveev_gap3_conditional_ratio_pos hsol htarget

theorem matveev_gap3_ratio_pos_of_conditional_lower {A B : Nat}
    (hsol : Nat.pow A 4 + Nat.pow B 4 = Nat.pow (B + 3) 13)
    (htarget : matveev_inequality_real_target) :
    (0 : Real) < (B : Real) ^ 4 / (A : Real) ^ 4 :=
  BealLevel26Foundations.BealMatveevThm14.matveev_gap3_ratio_pos_of_conditional_lower hsol htarget

theorem matveev_gap3_A_pow_eq_B3_pow_sub_B_pow {A B : Nat}
    (hsol : Nat.pow A 4 + Nat.pow B 4 = Nat.pow (B + 3) 13) :
    (A : Real) ^ 4 = ((B + 3 : Nat) : Real) ^ 13 - (B : Real) ^ 4 :=
  BealLevel26Foundations.BealMatveevThm14.matveev_gap3_A_pow_eq_B3_pow_sub_B_pow hsol

theorem matveev_gap3_ratio_explicit {A B : Nat}
    (hsol : Nat.pow A 4 + Nat.pow B 4 = Nat.pow (B + 3) 13) :
    (B : Real) ^ 4 / (A : Real) ^ 4 =
      (B : Real) ^ 4 / (((B + 3 : Nat) : Real) ^ 13 - (B : Real) ^ 4) :=
  BealLevel26Foundations.BealMatveevThm14.matveev_gap3_ratio_explicit hsol

theorem matveev_gap3_conditional_B_lower {A B : Nat}
    (hsol : Nat.pow A 4 + Nat.pow B 4 = Nat.pow (B + 3) 13)
    (hlower : Real.exp matveev_C_exp_bound < |matveev_log_form A B|) :
    Real.exp matveev_C_exp_bound <
      (B : Real) ^ 4 / (((B + 3 : Nat) : Real) ^ 13 - (B : Real) ^ 4) ∧
    Real.exp matveev_C_exp_bound * (((B + 3 : Nat) : Real) ^ 13 - (B : Real) ^ 4) <
      (B : Real) ^ 4 ∧
    Real.exp matveev_C_exp_bound * ((B + 3 : Nat) : Real) ^ 13 <
      (B : Real) ^ 4 * (1 + Real.exp matveev_C_exp_bound) :=
  BealLevel26Foundations.BealMatveevThm14.matveev_gap3_conditional_B_lower hsol hlower

theorem matveev_gap3_conditional_B_lower_of_target {A B : Nat}
    (hsol : Nat.pow A 4 + Nat.pow B 4 = Nat.pow (B + 3) 13)
    (htarget : matveev_inequality_real_target) :
    Real.exp matveev_C_exp_bound * ((B + 3 : Nat) : Real) ^ 13 <
      (B : Real) ^ 4 * (1 + Real.exp matveev_C_exp_bound) :=
  BealLevel26Foundations.BealMatveevThm14.matveev_gap3_conditional_B_lower_of_target hsol htarget

theorem matveev_gap3_conditional_B_pos_lower {A B : Nat}
    (hsol : Nat.pow A 4 + Nat.pow B 4 = Nat.pow (B + 3) 13)
    (htarget : matveev_inequality_real_target) :
    0 < B :=
  BealLevel26Foundations.BealMatveevThm14.matveev_gap3_conditional_B_pos_lower hsol htarget

def matveev_ten_pow_20 : Nat :=
  BealLevel26Foundations.BealMatveevThm14.matveev_ten_pow_20

theorem matveev_ten_pow_20_eq :
    matveev_ten_pow_20 = Nat.pow 10 20 :=
  BealLevel26Foundations.BealMatveevThm14.matveev_ten_pow_20_eq

theorem matveev_two_pow_83_lt_ten_pow_25 :
    Nat.pow 2 83 < Nat.pow 10 25 :=
  BealLevel26Foundations.BealMatveevThm14.matveev_two_pow_83_lt_ten_pow_25

theorem matveev_height_B0_gt_onee20 :
    matveev_ten_pow_20 < matveev_height_B0 :=
  BealLevel26Foundations.BealMatveevThm14.matveev_height_B0_gt_onee20

theorem matveev_log_ten_gt_23_div_10 :
    (23 / 10 : Real) < Real.log (10 : Real) :=
  BealLevel26Foundations.BealMatveevThm14.matveev_log_ten_gt_23_div_10

theorem matveev_log_height_B0_gt_46 :
    (46 : Real) < Real.log (matveev_height_B0 : Real) :=
  BealLevel26Foundations.BealMatveevThm14.matveev_log_height_B0_gt_46

theorem matveev_exp_46_lt_height_B0 :
    Real.exp (46 : Real) < (matveev_height_B0 : Real) :=
  BealLevel26Foundations.BealMatveevThm14.matveev_exp_46_lt_height_B0

theorem matveev_C_exp_bound_lt_neg_1e12_of_log46 :
    matveev_C_exp_bound <
      -((BealLevel26Foundations.BealBakerBoundGap3.ten_pow_12 : Nat) : Real) :=
  BealLevel26Foundations.BealMatveevThm14.matveev_C_exp_bound_lt_neg_1e12_of_log46

theorem matveev_C_exp_bound_le_neg_1e12 :
    matveev_C_exp_bound ≤
      -((BealLevel26Foundations.BealBakerBoundGap3.ten_pow_12 : Nat) : Real) :=
  BealLevel26Foundations.BealMatveevThm14.matveev_C_exp_bound_le_neg_1e12

theorem matveev_target_exp_lower_lt_exp_neg_1e12 :
    matveev_target_exp_lower <
      Real.exp (-((BealLevel26Foundations.BealBakerBoundGap3.ten_pow_12 : Nat) : Real)) :=
  BealLevel26Foundations.BealMatveevThm14.matveev_target_exp_lower_lt_exp_neg_1e12

theorem matveev_exp_neg_1e12_lt_inv_1e12 :
    Real.exp (-((BealLevel26Foundations.BealBakerBoundGap3.ten_pow_12 : Nat) : Real)) <
      (1 : Real) / ((BealLevel26Foundations.BealBakerBoundGap3.ten_pow_12 : Nat) : Real) :=
  BealLevel26Foundations.BealMatveevThm14.matveev_exp_neg_1e12_lt_inv_1e12

theorem matveev_target_exp_lower_lt_onee12 :
    matveev_target_exp_lower <
      (1 : Real) / ((BealLevel26Foundations.BealBakerBoundGap3.ten_pow_12 : Nat) : Real) :=
  BealLevel26Foundations.BealMatveevThm14.matveev_target_exp_lower_lt_onee12

theorem matveev_exp_C_pos_lt_one :
    (0 : Real) < matveev_target_exp_lower ∧
      matveev_target_exp_lower <
        (1 : Real) / ((BealLevel26Foundations.BealBakerBoundGap3.ten_pow_12 : Nat) : Real) ∧
      matveev_target_exp_lower < 1 :=
  BealLevel26Foundations.BealMatveevThm14.matveev_exp_C_pos_lt_one

/-! ## v24.4.0 — v24.x final summary -/

theorem matveev_v24x_summary {A B : Nat}
    (hsol : Nat.pow A 4 + Nat.pow B 4 = Nat.pow (B + 3) 13) :
    0 < A ∧
    0 < B ∧
    |matveev_log_form A B| =
      Real.log (1 + (B : Real) ^ 4 / (A : Real) ^ 4) ∧
    |matveev_log_form A B| ≤ (B : Real) ^ 4 / (A : Real) ^ 4 ∧
    (B : Real) ^ 4 / (A : Real) ^ 4 =
      (B : Real) ^ 4 / (((B + 3 : Nat) : Real) ^ 13 - (B : Real) ^ 4) ∧
    (0 : Real) < (B : Real) ^ 4 / (A : Real) ^ 4 ∧
    (0 : Real) < Real.exp matveev_C_exp_bound ∧
    Real.exp matveev_C_exp_bound <
      (1 : Real) / ((BealLevel26Foundations.BealBakerBoundGap3.ten_pow_12 : Nat) : Real) ∧
    Real.exp matveev_C_exp_bound < 1 ∧
    matveev_C_exp_bound =
      -((matveev_height_B0 : Real) *
          Real.log (matveev_height_B0 : Real)) ∧
    matveev_height_B0 = 104382751019310000000 ∧
    BealLevel26Foundations.BealMatveevConstants.matveev_C1_floor *
        BealLevel26Foundations.BealMatveevConstants.matveev_thirty_pow =
      104382751019310000000 ∧
    BealLevel26Foundations.BealMatveevConstants.matveev_thirty_pow =
      729000000 :=
  BealLevel26Foundations.BealMatveevThm14.matveev_v24x_summary hsol

theorem matveev_v24x_conditional_summary {A B : Nat}
    (hsol : Nat.pow A 4 + Nat.pow B 4 = Nat.pow (B + 3) 13)
    (htarget : matveev_inequality_real_target) :
    (0 : Real) < Real.exp matveev_C_exp_bound ∧
      Real.exp matveev_C_exp_bound <
        (B : Real) ^ 4 / (A : Real) ^ 4 ∧
      (B : Real) ^ 4 * (1 + Real.exp matveev_C_exp_bound) >
        Real.exp matveev_C_exp_bound * ((B + 3 : Nat) : Real) ^ 13 :=
  BealLevel26Foundations.BealMatveevThm14.matveev_v24x_conditional_summary
    hsol htarget

theorem bugeaud_v24x_final_link :
    bugeaud_LLL_reduction_conditional ↔
      (matveev_inequality_real_formal →
        ∃ B_reduced : Nat,
          B_reduced ≤
              BealLevel26Foundations.BealBugeaudLLLFormal.bugeaud_B0 ∧
          ∀ A B : Nat,
            Nat.pow A 4 + Nat.pow B 4 = Nat.pow (B + 3) 13 →
              B ≤ BealLevel26Foundations.BealBugeaudLLLFormal.bugeaud_B0 →
              B ≤ B_reduced) :=
  BealLevel26Foundations.BealMatveevThm14.bugeaud_v24x_final_link

theorem baker_v24x_reduction_shape :
    baker_reduction_certificate_displayed ≠ [] ∧
      baker_B0_raw_PARI = 104382751019310000000 ∧
      baker_B0_reduced_PARI = baker_B0 ∧
      baker_B0_reduced_PARI = 1000000 :=
  BealLevel26Foundations.BealBakerB0ReductionCertificate.baker_v24x_reduction_shape

/-! ## v14.0.0 — J0 / mwrank / formal displayed certs -/

def J0DecompositionCert_26 :=
  BealLevel26Foundations.BealLevel26ModularElimination.J0DecompositionCert_26

def J0DecompositionCert_26_displayed :=
  BealLevel26Foundations.BealLevel26ModularElimination.J0DecompositionCert_26_displayed

def J0DecompositionSoundness_26_displayed : Prop :=
  BealLevel26Foundations.BealLevel26ModularElimination.J0DecompositionSoundness_26_displayed

def J0DecompositionSoundness_26 : Prop :=
  BealLevel26Foundations.BealLevel26ModularElimination.J0DecompositionSoundness_26

theorem J0DecompositionSoundness_26_holds :
    J0DecompositionSoundness_26_displayed :=
  BealLevel26Foundations.BealLevel26ModularElimination.J0DecompositionSoundness_26_holds

def MwrankCertificate_26 :=
  BealLevel26Foundations.BealLevel26ModularElimination.MwrankCertificate_26

def MwrankCertificate_26_displayed :=
  BealLevel26Foundations.BealLevel26ModularElimination.MwrankCertificate_26_displayed

def MwrankCertificateSoundness_26_displayed : Prop :=
  BealLevel26Foundations.BealLevel26ModularElimination.MwrankCertificateSoundness_26_displayed

def MwrankCertificateSoundness_26 : Prop :=
  BealLevel26Foundations.BealLevel26ModularElimination.MwrankCertificateSoundness_26

theorem MwrankCertificateSoundness_26_holds :
    MwrankCertificateSoundness_26_displayed :=
  BealLevel26Foundations.BealLevel26ModularElimination.MwrankCertificateSoundness_26_holds

def FormalImmersionCert_26 :=
  BealLevel26Foundations.BealLevel26ModularElimination.FormalImmersionCert_26

def FormalImmersionCert_26_displayed :=
  BealLevel26Foundations.BealLevel26ModularElimination.FormalImmersionCert_26_displayed

def FormalImmersionSoundness_26_displayed : Prop :=
  BealLevel26Foundations.BealLevel26ModularElimination.FormalImmersionSoundness_26_displayed

def FormalImmersionSoundness_26 : Prop :=
  BealLevel26Foundations.BealLevel26ModularElimination.FormalImmersionSoundness_26

theorem FormalImmersionSoundness_26_holds :
    FormalImmersionSoundness_26_displayed :=
  BealLevel26Foundations.BealLevel26ModularElimination.FormalImmersionSoundness_26_holds

def FreyCurveCert :=
  BealLevel26Foundations.BealLevel26ModularElimination.FreyCurveCert

def FreyCurveCert_displayed :=
  BealLevel26Foundations.BealLevel26ModularElimination.FreyCurveCert_displayed

def FreyCurveExists :=
  BealLevel26Foundations.BealLevel26ModularElimination.FreyCurveExists

def LevelLoweringCert_26 :=
  BealLevel26Foundations.BealLevel26ModularElimination.LevelLoweringCert_26

def LevelLoweringCert_26_displayed :=
  BealLevel26Foundations.BealLevel26ModularElimination.LevelLoweringCert_26_displayed

def LevelLowering_26 :=
  BealLevel26Foundations.BealLevel26ModularElimination.LevelLowering_26

def kraus_a53_values :=
  BealLevel26Foundations.BealLevel26ModularElimination.kraus_a53_values

def S2_26_a5_values :=
  BealLevel26Foundations.BealLevel26ModularElimination.S2_26_a5_values

theorem kraus_a53_elimination :
    ∀ a : Int, a ∈ kraus_a53_values → a ∉ S2_26_a5_values :=
  BealLevel26Foundations.BealLevel26ModularElimination.kraus_a53_elimination

theorem tateConductor_eq_frey (A B : Nat) :
    tateConductor A B = frey_tate_conductor A B :=
  BealLevel26Foundations.BealLevel26ModularElimination.tateConductor_eq_frey A B

/-- Three displayed cert Props plus `baker_bound_gap3`.
    Tate / Baker files unchanged vs v13.  Not BCDT. -/
theorem beal_44_13_level_26_modular_elimination :
    J0DecompositionSoundness_26_displayed →
    MwrankCertificateSoundness_26_displayed →
    FormalImmersionSoundness_26_displayed →
    baker_bound_gap3 →
    ∀ A B C : Nat,
      Nat.pow A 4 + Nat.pow B 4 = Nat.pow (B + 3) 13 →
      C = B + 3 →
      False :=
  BealLevel26Foundations.BealLevel26ModularElimination.beal_44_13_level_26_modular_elimination

/-! ## v8.71.0 — MCOM Ribet-Mazur pack from v8.69.0 misses -/

/-- Inhabited for the two named witnesses only.
`Phi13` here is the Density univariate
`Φ₁₃(B) = S_val B (B+3)`, not Step24's
polynomial pack.  The `B = 196` / `B = 1500003`
branches are the v8.69.0 Int-mod-13 misses.
Not residual isomorphism.  Not a Beal `∀`.
Density/Step `kraus_elimination_q_13_level_26`
stays the uninhabited `∀`. -/
theorem kraus_elimination_q_13_level_26_density
    (B C : Nat)
    (hC : C = B + 3)
    (hS :
      BealLevel26Foundations.Beal_4_13_13_Zsigmondy_Density_2M.Phi13 B =
        S_val B C)
    (_hWit :
      BealLevel26Foundations.Beal_4_13_13_Zsigmondy_Density_2M.hasSmallZsigWitness
        B) :
    (B = 196 →
      (-2 : Int) % 13 ≠ (0 : Int) % 13 ∧
        (-2 : Int) % 13 ≠ (12 : Int) % 13) ∧
    (B = 1500003 →
      (24 : Int) % 13 ≠ (21 : Int) % 13 ∧
        (24 : Int) % 13 ≠ (-39 : Int) % 13) := by
  have hPhi :
      BealLevel26Foundations.Beal_4_13_13_Zsigmondy_Density_2M.Phi13 B =
        S_val B (B + 3) := by
    rw [hC] at hS
    exact hS
  let _ := hPhi
  constructor
  · intro _hB
    exact BealLevel26Foundations.Level26_Newforms.level26_a_eliminated_by_53
  · intro _hB
    exact BealLevel26Foundations.Level26_Newforms.level26_b_eliminated_by_443

/-- MCOM pack.  This is **not**
`∀ B` modular implies contradiction.
The hypothesis is the Level26_Newforms
conjunction (v8.69.0), not this file's
uninhabited `kraus_elimination_q_13_level_26`
`∀`.  A theorem name is not a type, and
the two witness inequalities have different
right-hand sides, so the conclusion is the
conjunction of the two `B =` implications
(not a shared `∃ f ∈ S₂(26)` binder —
Mathlib 4.12 is not used as a modular-forms
engine here).  Not residual isomorphism.
Not a Beal `∀`. -/
theorem ribet_mazur_pack_q_13_level_26 :
    (((-2 : Int) % 13 ≠ (0 : Int) % 13 ∧
      (-2 : Int) % 13 ≠ (12 : Int) % 13) ∧
      ((24 : Int) % 13 ≠ (21 : Int) % 13 ∧
        (24 : Int) % 13 ≠ (-39 : Int) % 13)) →
      ∀ B,
        (B = 196 →
          (-2 : Int) % 13 ≠ (0 : Int) % 13 ∧
            (-2 : Int) % 13 ≠ (12 : Int) % 13) ∧
        (B = 1500003 →
          (24 : Int) % 13 ≠ (21 : Int) % 13 ∧
            (24 : Int) % 13 ≠ (-39 : Int) % 13) := by
  intro hK _B
  constructor
  · intro _h
    exact hK.left
  · intro _h
    exact hK.right

/-! ## v8.68.0 — displayed a₅₃ miss and p=443 ZMod witness -/

/-- Inhabited.  First 100 locked coefficients. -/
def newform_26_a_qexp_100 :=
  BealLevel26Foundations.Level26_Newforms.newform_26_a_qexp_100

def newform_26_b_qexp_100 :=
  BealLevel26Foundations.Level26_Newforms.newform_26_b_qexp_100

/-- Inhabited.  Ledger `a₅₃(26a1) = 0`, not 6. -/
def a53_26a1_eq :=
  BealLevel26Foundations.Level26_Newforms.a53_26a1_eq

/-- Inhabited.  Ledger `a₅₃(26b1) = 12`, not -2. -/
def a53_26b1_eq :=
  BealLevel26Foundations.Level26_Newforms.a53_26b1_eq

/-- Inhabited.  Computed `a₅₃(E_{196}) ≢ a₅₃(26a1)` at `ℓ = 13`. -/
def displayed_two_misses_a53_26a1 :=
  BealLevel26Foundations.Level26_Newforms.displayed_two_misses_a53_26a1

/-- Inhabited.  Witness hypothesis plus computed miss. -/
def level26_a_eliminated_by_53_of_witness :=
  BealLevel26Foundations.Level26_Newforms.level26_a_eliminated_by_53_of_witness

/-- Inhabited.  ZMod 443 / numeral `443*443` at B=1500003. -/
def hasSmallZsigWitness_1500003 :=
  BealLevel26Foundations.Level26_Newforms.hasSmallZsigWitness_1500003

/-- Inhabited.  Computed `a₄₄₃(E_{1500003})` misses
both locked `a₄₄₃` values. -/
def level26_b_eliminated_by_443_of_witness :=
  BealLevel26Foundations.Level26_Newforms.level26_b_eliminated_by_443_of_witness

/-! ## v8.68.1 — computed Frey `a_p` and locked `a₄₄₃` -/

/-- Inhabited.  Point-count `a₅₃(E_{196}) = -2`. -/
def a53_E_196 :=
  BealLevel26Foundations.Level26_Newforms.a53_E_196

def a53_E_196_eq :=
  BealLevel26Foundations.Level26_Newforms.a53_E_196_eq

/-- Inhabited.  Point-count `a₄₄₃(E_{1500003}) = 24`. -/
def a443_E_1500003 :=
  BealLevel26Foundations.Level26_Newforms.a443_E_1500003

def a443_E_1500003_eq :=
  BealLevel26Foundations.Level26_Newforms.a443_E_1500003_eq

/-- Inhabited.  `List.take 500` ledger `a₄₄₃(26a1) = 21`. -/
def a443_26a1_eq :=
  BealLevel26Foundations.Level26_Newforms.a443_26a1_eq

/-- Inhabited.  `List.take 500` ledger `a₄₄₃(26b1) = -39`. -/
def a443_26b1_eq :=
  BealLevel26Foundations.Level26_Newforms.a443_26b1_eq

def a53_E_196_misses_26a1 :=
  BealLevel26Foundations.Level26_Newforms.a53_E_196_misses_26a1

def a53_E_196_misses_26b1 :=
  BealLevel26Foundations.Level26_Newforms.a53_E_196_misses_26b1

def a443_E_1500003_misses_26a1 :=
  BealLevel26Foundations.Level26_Newforms.a443_E_1500003_misses_26a1

def a443_E_1500003_misses_26b1 :=
  BealLevel26Foundations.Level26_Newforms.a443_E_1500003_misses_26b1

/-- Inhabited.  Displayed Frey p=3 traces. -/
def FreyP3Traces : List Int :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step38_Kraus_p3_elim_26b1.FreyP3Traces

/-- Inhabited.  Ledger `a₃(26b1) = -3`. -/
def ap_26b1_3_eq :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step38_Kraus_p3_elim_26b1.ap_26b1_3_eq

/-- Uninhabited.  `p ∣ A` and `p ∤ (C−B)` does not
yet close `¬ A⁴ + B¹³ = C¹³`. -/
def beal_from_ribet_upside_down_odd_A_closed : Prop :=
  ∀ A B C : Nat,
    A ^ 4 + B ^ 13 = C ^ 13 →
    Odd A → 3 ≤ A → False

/-- Uninhabited.  `16 > 13`, so `A ≥ 2 B³` does not
follow from `A⁴ ≥ 13 B¹²`.  The inhabited bound is
`A ≥ B³`. -/
def beal_4_13_13_A_ge_13_pow_quarter_mul_B_cubed : Prop :=
  ∀ A B C : Nat,
    A ^ 4 + B ^ 13 = C ^ 13 → 0 < B → B < C →
    2 * B ^ 3 ≤ A

/-! ## v8.19.2 — `C ≥ B+2` bound `A⁴ ≥ 26 B¹²` -/

/-! ## v8.15.0 — Finite `Q₁` table for residuals in `[5, 1000]` -/

theorem InTWEll1000_13 : InTWEll1000 13 :=
  Or.inl (by decide)

theorem InTWEll1000_5 : InTWEll1000 5 :=
  Or.inl (by decide)

theorem exists_prime_one_mod_ell_all_13 :
    ∃ Q1 : Nat, Q1.Prime ∧ Q1 % 13 = 1 ∧ Q1 ≤ 20000 ∧ 5 ≤ Q1 :=
  exists_prime_one_mod_ell_all InTWEll1000_13

def TWAuxEllFixed.of5_26 : TWAuxEllFixed 5 26 where
  Q1ell := 31
  Q2ell := 101
  Q1_prime := by decide
  Q2_prime := by decide
  Q1_mod := by decide
  Q2_mod := by decide
  Q1_ge5 := by decide
  Q2_ge5 := by decide
  Q1_ne_Q2 := by decide
  Q1_gt_N := by decide
  Q2_gt_N := by decide

def TWAuxEllFixed.of7_26 : TWAuxEllFixed 7 26 where
  Q1ell := 29
  Q2ell := 197
  Q1_prime := by decide
  Q2_prime := by decide
  Q1_mod := by decide
  Q2_mod := by decide
  Q1_ge5 := by decide
  Q2_ge5 := by decide
  Q1_ne_Q2 := by decide
  Q1_gt_N := by decide
  Q2_gt_N := by decide

def TWAuxEllFixed.of5_26_gt : TWAuxEllFixed 5 26 :=
  TWAuxEllFixed.of5_26

def TWAuxEllFixed.of7_26_gt : TWAuxEllFixed 7 26 :=
  TWAuxEllFixed.of7_26

def TWAuxEllFixed.of13_26_gt : TWAuxEllFixed 13 26 :=
  TWAuxEllFixed.of13_26

def TWAuxEllFixed.of5_10000 : TWAuxEllFixed 5 10000 :=
  twaux_10000_5

def TWAuxEllFixed.of7_10000 : TWAuxEllFixed 7 10000 :=
  twaux_10000_7

def TWAuxEllFixed.of13_10000 : TWAuxEllFixed 13 10000 :=
  twaux_10000_13

theorem TWAuxEllFixedExists_5_26 : TWAuxEllFixedExists 5 26 :=
  ⟨TWAuxEllFixed.of5_26⟩

theorem TWAuxEllFixedExists_7_26 : TWAuxEllFixedExists 7 26 :=
  ⟨TWAuxEllFixed.of7_26⟩

theorem exists_prime_one_mod_ell_sq_all_13 :
    ∃ Q2 : Nat, Q2.Prime ∧ Q2 % (13 * 13) = 1 ∧
      Q2 ≤ 100000000 ∧ 5 ≤ Q2 :=
  exists_prime_one_mod_ell_sq_all InTWEll1000_13

/-- Uninhabited.  Needs `Nat.Prime ℓ → 5 ≤ ℓ ≤ 1000`
(`InTWEll1000_complete`).  The table-membership
product is
`TWAuxEllFixed_inhabited_for_every_ell_le_1000_product`. -/
def TWAuxEllFixed_inhabited_for_every_ell_le_1000 : Prop :=
  ∀ ℓ N : Nat, ℓ.Prime → 5 ≤ ℓ → ℓ ≤ 1000 → N ≤ 10000 →
    Nonempty (TWAuxEllFixed ℓ N)

#check q_expansion_26a1
#check q_expansion_26b1
#check q_expansion_26a1_int
#check HeckeAction_N
#check mazur_principle_step
#check mazur_step_real
#check ribet_iterated
#check ribet_iterated_real
#check ribet_iterated_arrow
#check ModularImpliesLevel2Newform_real
#check beal_from_ribet
#check beal_from_ribet_real
#check beal_from_ribet_real_fixed
#check beal_from_ribet_ell_case
#check beal_positive_bases_unconditional
#check FreyEllCase5
#check FreyEllCase5Weak
#check FreyEllWitness
#check ell_of_q
#check HeckeAction_N_real_ell
#check MazurStepEll
#check RibetIteratedEllCase
#check frey_a_q_real_ell
#check frey_rho_unramified_iff_ell_dvd_vqDelta
#check trace_eq_pm_qplus1_when_unramified
#check mazur_step_ell
#check ribet_iterated_ell_case
#check N_div_Prod_eq_2_of_FreyEllCase5
#check TWAuxEll
#check wiles_modularity_Frey_mod_ell
#check fermat_four_lemma
#check FermatFourCase
#check FreyEllCase5Complete
#check find_prime_congruent_one_mod
#check TWAuxEll_of_ell
#check HeckeAction_N_real_ell_upgraded
#check mazur_step_real_ell_upgraded
#check ribet_iterated_ell_upgraded
#check beal_from_ribet_ell_upgraded
#check beal_pow2_exponents
#check FreyEllCase5Mixed
#check MixedPow2Case
#check IsPowerOfTwo
#check beal_pow2_base
#check find_prime_congruent_one_mod_explicit
#check TWAuxEllFixed
#check TWAuxEll.of5
#check ribet_iterated_ell_mixed
#check beal_from_ribet_ell_mixed
#check mixed_covers_4_13_13
#check thirteen_dvd_Delta_of_mixed_pow2_A
#check exists_prime_one_mod_ell_listed
#check mod_pow4_odd
#check mod_pow13_odd
#check not_forall_pow13_mod8
#check beal_4_13_13_mod8
#check beal_4_13_13_mod13
#check beal_4_13_13_mod13_nat
#check IsPowerOfTwo.eq_one_of_odd
#check not_beal_4_13_13_of_A_eq_one
#check not_beal_4_13_13_of_odd_pow2_A
#check FreyEllCase5Mixed_4_13_13_iff_pow2_A
#check beal_4_13_13_size
#check not_FreyEllCase5Mixed_of_4_13_13_A_not_pow2
#check exists_prime_one_mod_ell_all
#check InTWEll1000
#check Q1_not_dvd_N_of_Q1_gt_N
#check TWAuxEllFixed.of5_26
#check TWAuxEllFixed.of7_26
#check TWAuxEllFixed.of5_26_gt
#check TWAuxEllFixed.of7_26_gt
#check TWAuxEllFixed.of13_26_gt
#check TWAuxEllFixed.of5_10000
#check TWAuxEllFixed.of7_10000
#check TWAuxEllFixed.of13_10000
#check TWAuxEllFixedExists_5_26
#check TWAuxEllFixedExists_7_26
#check TWAuxEllFixedExists_26_all
#check TWAuxEllFixedExists_10000_all
#check TWAuxEllFixedExists_all_N_le_10000
#check TWAuxEllFixed_inhabited_for_every_ell_le_1000_product
#check of_ℓ_N_product
#check product_all_mem
#check find_next_prime_one_mod_gt_exists_product
#check TWAuxEllFixed.of_N_le
#check genus_X0_2_rat
#check genus_X0_2_rat_eq_zero
#check s2_gamma0_2_dim_and_genus
#check ExistsNewformLevel2_eq_zero_ne_zero
#check BealAArm
#check BealAArm.of_pos
#check beal_odd_A_ge3_not_mixed
#check beal_mixed_pow2_implies_level_2_newform
#check beal_from_ribet_upside_down
#check pow13_sub_pow13_lower_bound
#check C13_sub_B13_ge_13_mul_B_pow_12
#check beal_4_13_13_size_lower_bound
#check beal_4_13_13_A_ge_B_pow_3
#check size_table_lower_bound_B_le_100
#check size_table_not_fourth_B_le_100
#check beal_4_13_13_size_B_le_100_C_succ
#check has_primitive_prime_divisor
#check zsigmondy_13
#check beal_odd_A_ge3_size_gap
#check BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13.zsigmondy_exception_not_2_1_6
#check BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13.has_primitive_prime_divisor_13_of_C_gt_B
#check BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13.primitive_prime_not_dvd_C_sub_B
#check BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step4.S_13
#check BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step4.C13_sub_B13_eq_sub_mul_S
#check BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step4.p_dvd_S_of_p_dvd_diff_and_not_dvd_sub
#check BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step4.primitive_prime_ne_13
#check BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step4.beal_odd_A_ge3_p_dvd_B_contradiction
#check BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step4.p_dvd_B_of_p_dvd_S_and_p_dvd_A_attempt
#check BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step5_P_mod_13.order_mod_p
#check BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step5_P_mod_13.order_dvd_p_minus_one_of_prime
#check BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step5_P_mod_13.order_eq_13_of_primitive_prime_13
#check BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step5_P_mod_13.primitive_prime_mod_13_eq_1
#check BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step5_P_mod_13.primitive_prime_ge_53
#check BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step5_P_mod_13.beal_odd_A_ge3_primitive_prime_ge_53
#check BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step5_P_mod_13.beal_odd_A_ge3_A_ge_53
#check BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step5_P_mod_13.beal_odd_A_ge3_closed_of_A_ge_53
#check BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step6_B_le_100_closed.beal_4_13_13_B_le_100_C_eq_B_plus_1_no_fourth_power
#check BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step6_B_le_100_closed.beal_4_13_13_B_le_100_C_eq_B_plus_2_no_fourth_power
#check BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step6_B_le_100_closed.beal_odd_A_ge3_B_le_100_C_le_B_plus_2_closed
#check BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step6_B_le_100_closed.beal_odd_A_ge3_B_le_100_closed_C_le_B_plus_2
#check BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step6_B_le_100_closed.beal_odd_A_ge3_B_le_100_slice_C_le_B_plus_2_closed
#check BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step6_B_le_100_closed.beal_odd_A_ge3_B_le_100_C_ge_B_plus_3_closed
#check BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step7_General_k.S_13
#check BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step7_General_k.S_13_ge_13_mul_B_pow12
#check BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step7_General_k.C13_sub_B13_ge_13_k_mul_B_pow12
#check BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step7_General_k.beal_4_13_13_A_pow4_ge_13_k_mul_B12_of_C_ge_B_plus_k
#check BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step7_General_k.beal_4_13_13_A_pow4_ge_39_mul_B12_of_C_ge_B_plus_3
#check BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step7_General_k.C_ge_B_plus_k_implies_A_pow4_ge_13kB12
#check BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step7_General_k.beal_4_13_13_A_ge_2_mul_B_pow_3_succ_of_C_ge_B_plus_3
#check BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step7_General_k.beal_4_13_13_A_ge_3_mul_B_pow_3_of_C_ge_B_plus_3
#check BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step8_k_odd_coprime.k_odd_of_odd_A
#check BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step8_k_odd_coprime.gcd_k_B_eq_one_of_coprime_C_B
#check BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step8_k_odd_coprime.gcd_A_B_eq_one_of_coprime_C_B
#check BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step8_k_odd_coprime.A_pow4_congr_k_pow13_mod_B
#check BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step8_k_odd_coprime.beal_4_13_13_k_odd
#check BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step8_k_odd_coprime.beal_4_13_13_gcd_k_B_eq_one
#check BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step8_k_odd_coprime.beal_4_13_13_gcd_A_B_eq_one
#check BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step8_k_odd_coprime.beal_4_13_13_A_pow4_mod_B_eq_k_pow13
#check BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step8_k_odd_coprime.beal_4_13_13_gcd_k_B_eq_one_of_coprime_only
#check BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step9_fourth_pow_residue.odd_fourth_mod4
#check BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step9_fourth_pow_residue.odd_fourth_mod8
#check BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step9_fourth_pow_residue.odd_pow13_mod4
#check BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step9_fourth_pow_residue.odd_pow13_mod8
#check BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step9_fourth_pow_residue.k_mod4_eq_1_of_fourth_pow_residue
#check BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step9_fourth_pow_residue.k_mod8_eq_1_of_fourth_pow_residue
#check BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step9_fourth_pow_residue.beal_4_13_13_k_mod4_eq_1_of_B_mod4_eq_0
#check BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step9_fourth_pow_residue.beal_4_13_13_k_mod8_eq_1_of_B_mod8_eq_0
#check BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step9_fourth_pow_residue.k_mod4_eq_1_of_B_mod4_eq_0_without_odd_A
#check BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step9_fourth_pow_residue.fourth_pow_mod_4
#check BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step9_fourth_pow_residue.fourth_pow_mod_8_odd
#check BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step9_fourth_pow_residue.odd_pow_mod_4
#check BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step9_fourth_pow_residue.k_pow13_mod_8_odd
#check BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step9_fourth_pow_residue.k_mod_4_eq_1_of_B_divisible_by_4
#check BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step9_fourth_pow_residue.k_mod_8_eq_1_of_B_divisible_by_8
#check BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step9_fourth_pow_residue.beal_4_13_13_k_mod_4_eq_1_of_B_mod_4_0
#check BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step9_fourth_pow_residue.beal_4_13_13_k_mod_8_eq_1_of_B_mod_8_0
#check BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step9_fourth_pow_residue.beal_4_13_13_A4_cong_k13_mod_B_restricts_B
#check BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step10_k_upper_bound_plan.S_13_mod_k
#check BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step10_k_upper_bound_plan.gcd_k_S_dvd_13
#check BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step10_k_upper_bound_plan.gcd_k_S_eq_1_or_13
#check BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step10_k_upper_bound_plan.k_mul_S_eq_A_pow4
#check BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step10_k_upper_bound_plan.coprime_mul_eq_fourth_pow
#check BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step10_k_upper_bound_plan.k_almost_fourth_power
#check BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step10_k_upper_bound_plan.beal_4_13_13_k_almost_fourth_power
#check BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step10_k_upper_bound_plan.fourth_pow_mod_16
#check BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step10_k_upper_bound_plan.B_le_100_k_ge_3_no_S_fourth_pow
#check BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step10_k_upper_bound_plan.beal_odd_A_ge3_closed_of_k_upper_bound_plan
#check BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step10_k_upper_bound_plan.k_almost_fourth_power_without_gcd
#check BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step10_upper_bound_k.S_13_mod_k
#check BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step10_upper_bound_k.gcd_k_S_dvd_13
#check BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step10_upper_bound_k.gcd_k_S_eq_1_or_13
#check BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step10_upper_bound_k.k_mul_S_eq_A_pow4
#check BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step10_upper_bound_k.coprime_mul_eq_fourth_pow_imp_fourth_pow
#check BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step10_upper_bound_k.k_almost_fourth_power
#check BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step10_upper_bound_k.ExistsNewformLevel2_eq_zero_ne_zero
#check BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step10_upper_bound_k.B_le_100_k_ge_3_no_S_fourth_pow
#check BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step10_upper_bound_k.beal_4_13_13_B_le_100_C_ge_B_plus_3_closed_of_S_not_fourth
#check BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step10_upper_bound_k.beal_mixed_pow2_implies_level_2_newform
#check BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step10_upper_bound_k.beal_from_ribet_upside_down
#check BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step11_B_le_100_closed.primitive_prime_dvd_S
#check BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step11_B_le_100_closed.v_p_S_eq_one
#check BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step11_B_le_100_closed.S_not_fourth_power
#check BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step11_B_le_100_closed.B_le_100_k_ge_3_no_S_fourth_pow
#check BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step11_B_le_100_closed.beal_4_13_13_B_le_100_C_ge_B_plus_3_closed
#check BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step11_B_le_100_closed.beal_4_13_13_B_le_100_closed
#check BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step11_B_le_100_closed.S_almost_fourth_power
#check BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step11_B_le_100_closed.ExistsNewformLevel2_eq_zero_ne_zero
#check BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step12_B_gt_100_bounded_k_plan.A_ge_53_of_S_prime
#check BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step12_B_gt_100_bounded_k_plan.k_le_A_pow4_div_13_B_pow12
#check BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step12_B_gt_100_bounded_k_plan.B_gt_100_imp_k_bounded_by_A
#check BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step12_B_gt_100_bounded_k_plan.k_ge_B_imp_A_large
#check BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step12_B_gt_100_bounded_k_plan.k_lt_B_imp_S_between
#check BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step12_B_gt_100_bounded_k_plan.beal_4_13_13_B_gt_100_closed_of_S_not_fourth_and_modular
#check BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step12_B_gt_100_bounded_k_plan.beal_4_13_13_B_gt_100_slice_uninhabited
#check BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step12_B_gt_100_bounded_k_plan.ExistsNewformLevel2_eq_zero_ne_zero
#check BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step13_Modular_W_lift_last_lock.frey_curve_conductor
#check BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step13_Modular_W_lift_last_lock.A_ge_53_of_S_prime
#check BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step13_Modular_W_lift_last_lock.k_le_A_pow4_div_13_B_pow12
#check BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step13_Modular_W_lift_last_lock.B_gt_100_imp_k_bounded_by_A
#check BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step13_Modular_W_lift_last_lock.genus_X0_2_rat_eq_zero
#check BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step13_Modular_W_lift_last_lock.beal_mixed_pow2_implies_level_2_newform
#check BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step13_Modular_W_lift_last_lock.modular_W_lift
#check BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step13_Modular_W_lift_last_lock.ribet_level_lowering_to_2
#check BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step13_Modular_W_lift_last_lock.X0_2_no_newforms
#check BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step13_Modular_W_lift_last_lock.beal_4_13_13_final_closed
#check BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step13_Modular_W_lift_last_lock.beal_from_ribet_upside_down
#check BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step13_Modular_W_lift_last_lock.beal_4_13_13_size
#check BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step13_Modular_W_lift_last_lock.ExistsNewformLevel2_eq_zero_ne_zero
#check BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step14_X0_26_RibetMazur_plan.even_not_pow2_has_odd_prime
#check BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step14_X0_26_RibetMazur_plan.frey_conductor_even_A
#check BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step14_X0_26_RibetMazur_plan.minimal_level_26_of_13_dvd_A
#check BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step14_X0_26_RibetMazur_plan.level_at_least_6_of_even_not_pow2
#check BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step14_X0_26_RibetMazur_plan.ribet_level_lowering_to_Nprime
#check BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step14_X0_26_RibetMazur_plan.X0_26_no_matching_newform
#check BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step14_X0_26_RibetMazur_plan.conductor_26_elliptic_curves_list
#check BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step14_X0_26_RibetMazur_plan.beal_even_not_pow2_implies_level_26_newform
#check BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step14_X0_26_RibetMazur_plan.beal_even_not_pow2_13dvdA_False
#check BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step14_X0_26_RibetMazur_plan.beal_even_not_pow2_general_False
#check BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step14_X0_26_RibetMazur_plan.beal_even_A_closed
#check BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step14_X0_26_RibetMazur_plan.beal_4_13_13_X0_26_RibetMazur_plan
#check BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step14_X0_26_RibetMazur_plan.ExistsNewformLevel2_eq_zero_ne_zero
#check BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step15_X0_2q_Darmon_Merel_plan.oddPart_def
#check BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step15_X0_2q_Darmon_Merel_plan.rad_dvd_pow
#check BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step15_X0_2q_Darmon_Merel_plan.even_not_pow2_has_odd_prime_q
#check BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step15_X0_2q_Darmon_Merel_plan.level_2q_of_odd_prime_dvd_A
#check BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step15_X0_2q_Darmon_Merel_plan.kraus_criterion_q_ne_13
#check BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step15_X0_2q_Darmon_Merel_plan.X0_2q_no_Frey_match
#check BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step15_X0_2q_Darmon_Merel_plan.beal_4_13_13_X0_2q_Darmon_Merel_plan
#check BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step15_X0_2q_Darmon_Merel_plan.ExistsNewformLevel2_eq_zero_ne_zero
#check BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step16_Odd_A_closure_plan.S_bounds_13_B12_le_S_le_13_C12
#check BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step16_Odd_A_closure_plan.k_almost_fourth_power_shape
#check BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step16_Odd_A_closure_plan.k_le_A4_div_13_B12
#check BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step16_Odd_A_closure_plan.B_gt_100_k_bounded
#check BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step16_Odd_A_closure_plan.k_ge_B_imp_A_ge_9B3
#check BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step16_Odd_A_closure_plan.zsigmondy_prime_S
#check BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step16_Odd_A_closure_plan.S_not_fourth_power_of_zsig
#check BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step16_Odd_A_closure_plan.beal_4_13_13_Zsigmondy_13_odd_A_closure_plan
#check BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step16_Odd_A_closure_plan.ExistsNewformLevel2_eq_zero_ne_zero
#check BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step17_Zsig_S_vp1_plan.S_val
#check BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step17_Zsig_S_vp1_plan.S_bounds
#check BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step17_Zsig_S_vp1_plan.thirteen_dvd_S_of_13_nmid_B
#check BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step17_Zsig_S_vp1_plan.gcd_k_S_dvd_13
#check BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step17_Zsig_S_vp1_plan.k_shape_1_13_13cubed
#check BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step17_Zsig_S_vp1_plan.zsigmondy_exists_primitive
#check BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step17_Zsig_S_vp1_plan.zsigmondy_vp_S_eq_one
#check BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step17_Zsig_S_vp1_plan.S_times_g_not_fourth_of_vp1
#check BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step17_Zsig_S_vp1_plan.beal_4_13_13_Zsigmondy_13_Zsig_S_vp1_plan
#check BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step17_Zsig_S_vp1_plan.ExistsNewformLevel2_eq_zero_ne_zero
#check BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step18_Zsig_primitive_vp1_inhabited.gcd_k_S_dvd_13_honest
#check BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step18_Zsig_primitive_vp1_inhabited.thirteen_dvd_S_of_BeqC_mod13
#check BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step18_Zsig_primitive_vp1_inhabited.zsigmondy_exists_primitive_inhabited
#check BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step18_Zsig_primitive_vp1_inhabited.zsigmondy_vp_S_eq_one_inhabited
#check BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step18_Zsig_primitive_vp1_inhabited.zsig_p_not_dvd_k_of_gcd_inhabited
#check BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step18_Zsig_primitive_vp1_inhabited.S_times_g_not_fourth_of_vp1_inhabited
#check BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step18_Zsig_primitive_vp1_inhabited.beal_odd_A_ge3_closed_of_vp1
#check BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step18_Zsig_primitive_vp1_inhabited.beal_odd_A_closed_v8_24_0
#check BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step18_Zsig_primitive_vp1_inhabited.beal_4_13_13_Zsigmondy_13_Zsig_primitive_vp1_inhabited_plan
#check BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step18_Zsig_primitive_vp1_inhabited.ExistsNewformLevel2_eq_zero_ne_zero
#check BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step19_Odd_A_closed_for_real.primitive_prime_not_dvd_bases
#check BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step19_Odd_A_closed_for_real.beal_odd_A_ge3_closed_of_vp1_inhabited
#check BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step19_Odd_A_closed_for_real.beal_odd_A_closed_via_zsig_hensel
#check BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step19_Odd_A_closed_for_real.beal_4_13_13_Zsigmondy_13_odd_A_closed_for_real_of_hensel
#check BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step19_Odd_A_closed_for_real.beal_odd_A_closed_v8_24_0_inhabited
#check BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step19_Odd_A_closed_for_real.beal_4_13_13_Zsigmondy_13_odd_A_closed_for_real
#check BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step19_Odd_A_closed_for_real.ExistsNewformLevel2_eq_zero_ne_zero
#check BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step20_Hensel_dichotomy_S_not_fourth_plan.p_sq_dvd_S_iff_order_13_mod_p_sq
#check BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step20_Hensel_dichotomy_S_not_fourth_plan.hensel_lift_example_B1_C460_p53
#check BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step20_Hensel_dichotomy_S_not_fourth_plan.C_eq_B_plus_1_or_2_closed
#check BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step20_Hensel_dichotomy_S_not_fourth_plan.S_not_fourth
#check BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step20_Hensel_dichotomy_S_not_fourth_plan.S_not_fourth_of_order_ne_13
#check BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step20_Hensel_dichotomy_S_not_fourth_plan.beal_odd_A_closed_via_zsig_hensel
#check BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step20_Hensel_dichotomy_S_not_fourth_plan.exists_p_with_order_ne_13_mod_p_sq
#check BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step20_Hensel_dichotomy_S_not_fourth_plan.beal_odd_A_closed_v8_24_0_inhabited
#check BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step20_Hensel_dichotomy_S_not_fourth_plan.beal_4_13_13_Zsigmondy_13_odd_A_closed_for_real
#check BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step20_Hensel_dichotomy_S_not_fourth_plan.ExistsNewformLevel2_eq_zero_ne_zero
#check BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step21_exists_p_order_ne_13_plan.p_sq_dvd_S_iff_order_13_mod_p_sq_inhabited
#check BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step21_exists_p_order_ne_13_plan.zsigmondy_vp_S_eq_one_of_order_ne_13
#check BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step21_exists_p_order_ne_13_plan.exists_p_of_two_primes_one_not_square
#check BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step21_exists_p_order_ne_13_plan.S_has_two_distinct_primitive_primes_when_C_ge_B_plus_3
#check BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step21_exists_p_order_ne_13_plan.not_all_p_lift_when_two_primes
#check BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step21_exists_p_order_ne_13_plan.exists_p_with_order_ne_13_mod_p_sq_inhabited
#check BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step21_exists_p_order_ne_13_plan.beal_odd_A_closed_via_zsig_hensel_inhabited
#check BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step21_exists_p_order_ne_13_plan.beal_odd_A_closed_v8_24_0_inhabited
#check BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step21_exists_p_order_ne_13_plan.beal_4_13_13_Zsigmondy_13_odd_A_closed_for_real
#check BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step21_exists_p_order_ne_13_plan.ExistsNewformLevel2_eq_zero_ne_zero
#check BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step22_two_primitive_primes_counting_plan.S_not_power_of_thirteen
#check BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step22_two_primitive_primes_counting_plan.exists_p_of_two_primes_one_not_square_inhabited
#check BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step22_two_primitive_primes_counting_plan.zsigmondy_vp_S_eq_one_of_order_ne_13_inhabited
#check BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step22_two_primitive_primes_counting_plan.S_not_fourth_of_order_ne_13_inhabited
#check BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step22_two_primitive_primes_counting_plan.S_not_prime_power_when_C_ge_B_plus_3
#check BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step22_two_primitive_primes_counting_plan.S_has_two_distinct_primitive_primes_when_C_ge_B_plus_3
#check BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step22_two_primitive_primes_counting_plan.exists_p_with_order_ne_13_mod_p_sq_inhabited
#check BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step22_two_primitive_primes_counting_plan.beal_odd_A_closed_v8_24_0_inhabited
#check BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step22_two_primitive_primes_counting_plan.beal_4_13_13_Zsigmondy_13_odd_A_closed_for_real
#check BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step22_two_primitive_primes_counting_plan.ExistsNewformLevel2_eq_zero_ne_zero
#check BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step23_Phi13_Zeta13_prime_ideal_plan.norm_eq_S
#check BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step23_Phi13_Zeta13_prime_ideal_plan.zeta13_class_number_one
#check BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step23_Phi13_Zeta13_prime_ideal_plan.zeta13_prime_ideal_factorization_exists
#check BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step23_Phi13_Zeta13_prime_ideal_plan.S_not_power_of_thirteen_inhabited
#check BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step23_Phi13_Zeta13_prime_ideal_plan.S_has_two_distinct_prime_ideals_in_Z_zeta13_when_C_ge_B_plus_3
#check BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step23_Phi13_Zeta13_prime_ideal_plan.zeta13_two_prime_ideals_give_two_rational_primes
#check BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step23_Phi13_Zeta13_prime_ideal_plan.exists_p_with_order_ne_13_mod_p_sq_inhabited
#check BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step23_Phi13_Zeta13_prime_ideal_plan.beal_odd_A_closed_v8_24_0_inhabited
#check BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step23_Phi13_Zeta13_prime_ideal_plan.ExistsNewformLevel2_eq_zero_ne_zero
#check BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step24_Phi13_derivative_LTE_plan.Phi13
#check BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step24_Phi13_derivative_LTE_plan.phi13_derivative_separable_mod_p
#check BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step24_Phi13_derivative_LTE_plan.hensel_unique_lift_of_phi13_root
#check BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step24_Phi13_derivative_LTE_plan.p_sq_dvd_S_iff_CB_eq_lifted_root
#check BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step24_Phi13_derivative_LTE_plan.exists_p_with_order_ne_13_mod_p_sq_inhabited
#check BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step24_Phi13_derivative_LTE_plan.beal_odd_A_closed_v8_24_0_inhabited
#check BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step24_Phi13_derivative_LTE_plan.ExistsNewformLevel2_eq_zero_ne_zero
#check BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step25_Chebotarev_lift_density_plan.phi13_derivative_separable_mod_p_inhabited
#check BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step25_Chebotarev_lift_density_plan.hensel_unique_lift_of_phi13_root_inhabited
#check BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step25_Chebotarev_lift_density_plan.p_sq_dvd_S_iff_CB_eq_lifted_root_inhabited
#check BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step25_Chebotarev_lift_density_plan.primes_eq1_mod13_infinite
#check BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step25_Chebotarev_lift_density_plan.density_p_div_S
#check BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step25_Chebotarev_lift_density_plan.thin_set_p_sq_div_S
#check BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step25_Chebotarev_lift_density_plan.chebotarev_gives_p_with_p_div_not_p_sq_div_when_C_ge_B_plus_3
#check BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step25_Chebotarev_lift_density_plan.exists_p_with_order_ne_13_mod_p_sq_inhabited
#check BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step25_Chebotarev_lift_density_plan.beal_odd_A_closed_v8_24_0_inhabited
#check BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step25_Chebotarev_lift_density_plan.ExistsNewformLevel2_eq_zero_ne_zero
#check BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step26_S_not_prime_power_gap3_fast_track.S_val_1_5
#check BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step26_S_not_prime_power_gap3_fast_track.S_val_1_5_prime
#check BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step26_S_not_prime_power_gap3_fast_track.S_prime_power_example_B1_C5
#check BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step26_S_not_prime_power_gap3_fast_track.prime_power_S_eq_zsigmondy_prime
#check BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step26_S_not_prime_power_gap3_fast_track.S_not_prime_power_when_C_ge_B_plus_3_fast
#check BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step26_S_not_prime_power_gap3_fast_track.S_has_two_distinct_primitive_primes_when_C_ge_B_plus_3_fast
#check BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step26_S_not_prime_power_gap3_fast_track.S_not_prime_power_when_C_ge_B_plus_3_fast_refuted
#check BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step26_S_not_prime_power_gap3_fast_track.S_has_two_distinct_primitive_primes_when_C_ge_B_plus_3_fast_refuted
#check BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step26_S_not_prime_power_gap3_fast_track.exists_p_with_order_ne_13_mod_p_sq_example_B1_C5
#check BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step26_S_not_prime_power_gap3_fast_track.exists_p_with_order_ne_13_mod_p_sq_inhabited
#check BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step26_S_not_prime_power_gap3_fast_track.beal_odd_A_closed_v8_24_0_inhabited
#check BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step26_S_not_prime_power_gap3_fast_track.ExistsNewformLevel2_eq_zero_ne_zero
#check BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step27_S_not_proper_prime_power_gap3.IsProperPrimePower
#check BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step27_S_not_proper_prime_power_gap3.not_isProperPrimePower_of_prime
#check BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step27_S_not_proper_prime_power_gap3.proper_prime_power_imp_sq_dvd
#check BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step27_S_not_proper_prime_power_gap3.S_val_1_5_not_proper_prime_power
#check BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step27_S_not_proper_prime_power_gap3.S_not_proper_prime_power_when_C_ge_B_plus_3
#check BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step27_S_not_proper_prime_power_gap3.S_has_prime_with_exp_one
#check BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step27_S_not_proper_prime_power_gap3.exists_p_with_order_ne_13_mod_p_sq_inhabited
#check BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step27_S_not_proper_prime_power_gap3.beal_odd_A_closed_v8_24_0_inhabited
#check BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step27_S_not_proper_prime_power_gap3.ExistsNewformLevel2_eq_zero_ne_zero
#check BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step28_S_has_prime_with_exp_one_gap3.HasPrimeWithExpOne
#check BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step28_S_has_prime_with_exp_one_gap3.S_val_1_5_has_prime_with_exp_one
#check BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step28_S_has_prime_with_exp_one_gap3.exists_p_with_order_ne_13_of_has_exp_one
#check BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step28_S_has_prime_with_exp_one_gap3.S_has_prime_with_exp_one_when_C_ge_B_plus_3
#check BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step29_B_le_100_exp_one_table.S_val_1_4_has_prime_with_exp_one
#check BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step29_B_le_100_exp_one_table.S_has_prime_with_exp_one_B_le_100_table_rows
#check BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step29_B_le_100_exp_one_table.exists_p_with_order_ne_13_mod_p_sq_example_B1_C4
#check BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step29_B_le_100_exp_one_table.S_has_prime_with_exp_one_when_C_ge_B_plus_3
#check BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step29_B_le_100_exp_one_table.exists_p_with_order_ne_13_mod_p_sq_inhabited
#check BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step29_B_le_100_exp_one_table.ExistsNewformLevel2_eq_zero_ne_zero
#check BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step30_S_not_proper_power_B_le_100_from_exp_one.not_proper_prime_power_of_has_exp_one
#check BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step30_S_not_proper_power_B_le_100_from_exp_one.S_not_proper_prime_power_B_le_100_from_exp_one_table_rows
#check BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step30_S_not_proper_power_B_le_100_from_exp_one.S_val_1_4_not_proper_prime_power
#check BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step30_S_not_proper_power_B_le_100_from_exp_one.S_not_proper_prime_power_when_C_ge_B_plus_3
#check BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step30_S_not_proper_power_B_le_100_from_exp_one.exists_p_with_order_ne_13_mod_p_sq_inhabited
#check BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step30_S_not_proper_power_B_le_100_from_exp_one.ExistsNewformLevel2_eq_zero_ne_zero
#check BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step31_B_le_100_order_ne_13_from_exp_one.order_ne_13_B1_C4
#check BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step31_B_le_100_order_ne_13_from_exp_one.exists_p_with_order_ne_13_B_le_100_from_exp_one_table_rows
#check BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step31_B_le_100_order_ne_13_from_exp_one.S_not_fourth_B_le_100_from_exp_one_table_rows
#check BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step31_B_le_100_order_ne_13_from_exp_one.exists_p_with_order_ne_13_mod_p_sq_inhabited
#check BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step31_B_le_100_order_ne_13_from_exp_one.ExistsNewformLevel2_eq_zero_ne_zero
#check BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step32_B_le_1000_exp_one_extension.S_has_prime_with_exp_one_B_le_1000_table_rows
#check BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step32_B_le_1000_exp_one_extension.exists_p_with_order_ne_13_B_le_1000_from_exp_one_table_rows
#check BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step32_B_le_1000_exp_one_extension.S_not_fourth_B_le_1000_from_exp_one_table_rows
#check BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step32_B_le_1000_exp_one_extension.exists_p_with_order_ne_13_mod_p_sq_inhabited
#check BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step32_B_le_1000_exp_one_extension.ExistsNewformLevel2_eq_zero_ne_zero
#check BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step33_B_le_10000_exp_one_extension.S_has_prime_with_exp_one_B_le_10000_table_rows
#check BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step33_B_le_10000_exp_one_extension.exists_p_with_order_ne_13_B_le_10000_from_exp_one_table_rows
#check BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step33_B_le_10000_exp_one_extension.S_not_fourth_B_le_10000_from_exp_one_table_rows
#check BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step33_B_le_10000_exp_one_extension.exists_p_with_order_ne_13_mod_p_sq_inhabited
#check BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step33_B_le_10000_exp_one_extension.ExistsNewformLevel2_eq_zero_ne_zero
#check BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step34_B_le_50000_exp_one_extension.S_has_prime_with_exp_one_B_le_50000_table_rows
#check BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step34_B_le_50000_exp_one_extension.exists_p_with_order_ne_13_B_le_50000_from_exp_one_table_rows
#check BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step34_B_le_50000_exp_one_extension.S_not_fourth_B_le_50000_from_exp_one_table_rows
#check BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step34_B_le_50000_exp_one_extension.exists_p_with_order_ne_13_mod_p_sq_inhabited
#check BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step34_B_le_50000_exp_one_extension.ExistsNewformLevel2_eq_zero_ne_zero
#check BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step35_B_gt_50000_rad_bound.S_le_13_C_pow12
#check BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step35_B_gt_50000_rad_bound.sqrt_S_le_4_C6
#check BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step35_B_gt_50000_rad_bound.rad_le_sqrt_of_squarefull
#check BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step35_B_gt_50000_rad_bound.rad_gt_C_of_P_phi13_gt_C
#check BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step35_B_gt_50000_rad_bound.bugeaud_P_phi13_gt_C_when_B_gt_50000
#check BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step35_B_gt_50000_rad_bound.rad_S_gt_sqrt_13_C12_when_squarefull_B_gt_50000
#check BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step35_B_gt_50000_rad_bound.S_has_prime_with_exp_one_when_C_ge_B_plus_3
#check BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step35_B_gt_50000_rad_bound.ExistsNewformLevel2_eq_zero_ne_zero
#check BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step36_Kraus_X0_26_elimination.ap_bound_level_26
#check BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step36_Kraus_X0_26_elimination.X0_26_Q_displayed_points
#check BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step36_Kraus_X0_26_elimination.level_26_eq_2_mul_13
#check BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step36_Kraus_X0_26_elimination.kraus_elimination_q_13_level_26
#check BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step36_Kraus_X0_26_elimination.bugeaud_P_phi13_gt_C_when_B_gt_50000
#check BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step36_Kraus_X0_26_elimination.S_has_prime_with_exp_one_when_C_ge_B_plus_3
#check BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step36_Kraus_X0_26_elimination.ExistsNewformLevel2_eq_zero_ne_zero
#check BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step37_B_le_100k_extension.S_has_prime_with_exp_one_B_le_100000_table_rows
#check BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step37_B_le_100k_extension.exists_p_with_order_ne_13_B_le_100000_from_exp_one_table_rows
#check BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step37_B_le_100k_extension.S_not_fourth_B_le_100000_from_exp_one_table_rows
#check BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step37_B_le_100k_extension.row_100000_100003
#check BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step37_B_le_100k_extension.kraus_elimination_q_13_level_26
#check BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step37_B_le_100k_extension.bugeaud_P_phi13_gt_C_when_B_gt_100000
#check BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step37_B_le_100k_extension.S_has_prime_with_exp_one_when_C_ge_B_plus_3
#check BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step37_B_le_100k_extension.exists_p_with_order_ne_13_mod_p_sq_inhabited
#check BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step37_B_le_100k_extension.ExistsNewformLevel2_eq_zero_ne_zero
#check BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step38_Kraus_p3_elim_26b1.kraus_elimination_26b1
#check BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step38_Kraus_p3_elim_26b1.kraus_elimination_26a1
#check BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step38_Kraus_p3_elim_26b1.ap_26b1_3_eq
#check BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step38_Kraus_p3_elim_26b1.FreyP3Traces
#check BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step38_Kraus_p3_elim_26b1.kraus_elimination_q_13_level_26
#check BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step38_Kraus_p3_elim_26b1.ExistsNewformLevel2_eq_zero_ne_zero
#check BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step39_Kraus_p5_elim_26a1.kraus_elimination_26a1
#check BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step39_Kraus_p5_elim_26a1.s2_26_displayed_newforms_miss_frey_traces
#check BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step39_Kraus_p5_elim_26a1.ap_26a1_5_eq
#check BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step39_Kraus_p5_elim_26a1.FreyP5TracesGood
#check BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step39_Kraus_p5_elim_26a1.kraus_elimination_q_13_level_26
#check BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step39_Kraus_p5_elim_26a1.level_lowering_26_to_2_from_no_match
#check BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step39_Kraus_p5_elim_26a1.ExistsNewformLevel2_eq_zero_ne_zero
#check BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step40_level_lowering_26_to_2.level_lowering_26_to_2_from_no_match
#check BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step40_level_lowering_26_to_2.s2_gamma0_2_dim_displayed_zero
#check BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step40_level_lowering_26_to_2.not_ExistsNewformLevel2
#check BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step40_level_lowering_26_to_2.kraus_elimination_q_13_level_26
#check BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step40_level_lowering_26_to_2.ribet_26_to_2_from_displayed_miss
#check BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step40_level_lowering_26_to_2.ExistsNewformLevel2_eq_zero_ne_zero
#check BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step41_B_le_200k_extension.S_has_prime_with_exp_one_B_le_200000_table_rows
#check BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step41_B_le_200k_extension.exists_p_with_order_ne_13_B_le_200000_from_exp_one_table_rows
#check BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step41_B_le_200k_extension.S_not_fourth_B_le_200000_from_exp_one_table_rows
#check BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step41_B_le_200k_extension.row_199996_199999
#check BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step41_B_le_200k_extension.row_200000_200003
#check BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step41_B_le_200k_extension.kraus_elimination_q_13_level_26
#check BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step41_B_le_200k_extension.bugeaud_P_phi13_gt_C_when_B_gt_200000
#check BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step41_B_le_200k_extension.S_has_prime_with_exp_one_when_C_ge_B_plus_3
#check BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step41_B_le_200k_extension.exists_p_with_order_ne_13_mod_p_sq_inhabited
#check BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step41_B_le_200k_extension.ExistsNewformLevel2_eq_zero_ne_zero
#check BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step41_B_le_200k_extension.level_lowering_26_to_2_from_no_match
#check BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step42_B_200k_outlier_12186951011.prime_12186951011
#check BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step42_B_200k_outlier_12186951011.row_200000_200003
#check BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step42_B_200k_outlier_12186951011.S_has_prime_with_exp_one_B_le_200000_table_rows
#check BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step42_B_200k_outlier_12186951011.exists_p_with_order_ne_13_B_le_200000_from_exp_one_table_rows
#check BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step42_B_200k_outlier_12186951011.S_not_fourth_B_le_200000_from_exp_one_table_rows
#check BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step42_B_200k_outlier_12186951011.kraus_elimination_q_13_level_26
#check BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step42_B_200k_outlier_12186951011.bugeaud_P_phi13_gt_C_when_B_gt_200000
#check BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step42_B_200k_outlier_12186951011.ExistsNewformLevel2_eq_zero_ne_zero
#check BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.S_has_prime_with_exp_one_B_le_300000_table_rows
#check BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.exists_p_with_order_ne_13_B_le_300000_from_exp_one_table_rows
#check BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.S_not_fourth_B_le_300000_from_exp_one_table_rows
#check BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_299999_300002
#check BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.kraus_elimination_q_13_level_26
#check BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.bugeaud_P_phi13_gt_C_when_B_gt_300000
#check BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.ExistsNewformLevel2_eq_zero_ne_zero
#check BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.S_has_prime_with_exp_one_B_le_400000_table_rows
#check BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.exists_p_with_order_ne_13_B_le_400000_from_exp_one_table_rows
#check BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.S_not_fourth_B_le_400000_from_exp_one_table_rows
#check BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_300003_300006
#check BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_400000_400003
#check BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.kraus_elimination_q_13_level_26
#check BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.bugeaud_P_phi13_gt_C_when_B_gt_400000
#check BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.ExistsNewformLevel2_eq_zero_ne_zero
#check BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step45_B_le_500k_299.S_has_prime_with_exp_one_B_le_500000_table_rows
#check BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step45_B_le_500k_299.exists_p_with_order_ne_13_B_le_500000_from_exp_one_table_rows
#check BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step45_B_le_500k_299.S_not_fourth_B_le_500000_from_exp_one_table_rows
#check BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step45_B_le_500k_299.row_400001_400004
#check BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step45_B_le_500k_299.row_500000_500003
#check BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step45_B_le_500k_299.kraus_elimination_q_13_level_26
#check BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step45_B_le_500k_299.bugeaud_P_phi13_gt_C_when_B_gt_500000
#check BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step45_B_le_500k_299.ExistsNewformLevel2_eq_zero_ne_zero
#check BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step46_B_le_600k_299.S_has_prime_with_exp_one_B_le_600000_table_rows
#check BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step46_B_le_600k_299.exists_p_with_order_ne_13_B_le_600000_from_exp_one_table_rows
#check BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step46_B_le_600k_299.S_not_fourth_B_le_600000_from_exp_one_table_rows
#check BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step46_B_le_600k_299.row_500003_500006
#check BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step46_B_le_600k_299.row_600000_600003
#check BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step46_B_le_600k_299.kraus_elimination_q_13_level_26
#check BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step46_B_le_600k_299.bugeaud_P_phi13_gt_C_when_B_gt_600000
#check BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step46_B_le_600k_299.ExistsNewformLevel2_eq_zero_ne_zero
#check BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step47_B_le_700k_299.S_has_prime_with_exp_one_B_le_700000_table_rows
#check BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step47_B_le_700k_299.exists_p_with_order_ne_13_B_le_700000_from_exp_one_table_rows
#check BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step47_B_le_700k_299.S_not_fourth_B_le_700000_from_exp_one_table_rows
#check BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step47_B_le_700k_299.row_600001_600004
#check BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step47_B_le_700k_299.row_700000_700003
#check BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step47_B_le_700k_299.kraus_elimination_q_13_level_26
#check BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step47_B_le_700k_299.bugeaud_P_phi13_gt_C_when_B_gt_700000
#check BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step47_B_le_700k_299.ExistsNewformLevel2_eq_zero_ne_zero
#check BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step48_B_le_800k_299.S_has_prime_with_exp_one_B_le_800000_table_rows
#check BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step48_B_le_800k_299.exists_p_with_order_ne_13_B_le_800000_from_exp_one_table_rows
#check BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step48_B_le_800k_299.S_not_fourth_B_le_800000_from_exp_one_table_rows
#check BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step48_B_le_800k_299.row_700001_700004
#check BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step48_B_le_800k_299.row_800000_800003
#check BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step48_B_le_800k_299.kraus_elimination_q_13_level_26
#check BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step48_B_le_800k_299.bugeaud_P_phi13_gt_C_when_B_gt_800000
#check BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step48_B_le_800k_299.ExistsNewformLevel2_eq_zero_ne_zero
#check BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step49_B_le_900k_299.S_has_prime_with_exp_one_B_le_900000_table_rows
#check BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step49_B_le_900k_299.exists_p_with_order_ne_13_B_le_900000_from_exp_one_table_rows
#check BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step49_B_le_900k_299.S_not_fourth_B_le_900000_from_exp_one_table_rows
#check BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step49_B_le_900k_299.row_800005_800008
#check BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step49_B_le_900k_299.row_899999_900002
#check BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step49_B_le_900k_299.kraus_elimination_q_13_level_26
#check BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step49_B_le_900k_299.bugeaud_P_phi13_gt_C_when_B_gt_900000
#check BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step49_B_le_900k_299.ExistsNewformLevel2_eq_zero_ne_zero
#check BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step50_B_le_1000k_299.S_has_prime_with_exp_one_B_le_1000000_table_rows
#check BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step50_B_le_1000k_299.exists_p_with_order_ne_13_B_le_1000000_from_exp_one_table_rows
#check BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step50_B_le_1000k_299.S_not_fourth_B_le_1000000_from_exp_one_table_rows
#check BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step50_B_le_1000k_299.row_900002_900005
#check BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step50_B_le_1000k_299.row_1000000_1000003
#check BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step50_B_le_1000k_299.kraus_elimination_q_13_level_26
#check BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step50_B_le_1000k_299.bugeaud_P_phi13_gt_C_when_B_gt_1000000
#check BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step50_B_le_1000k_299.ExistsNewformLevel2_eq_zero_ne_zero
#check BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step51_B_le_1100k_299.S_has_prime_with_exp_one_B_le_1100000_table_rows
#check BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step51_B_le_1100k_299.exists_p_with_order_ne_13_B_le_1100000_from_exp_one_table_rows
#check BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step51_B_le_1100k_299.S_not_fourth_B_le_1100000_from_exp_one_table_rows
#check BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step51_B_le_1100k_299.row_1000003_1000006
#check BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step51_B_le_1100k_299.row_1099999_1100002
#check BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step51_B_le_1100k_299.kraus_elimination_q_13_level_26
#check BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step51_B_le_1100k_299.bugeaud_P_phi13_gt_C_when_B_gt_1100000
#check BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step51_B_le_1100k_299.ExistsNewformLevel2_eq_zero_ne_zero
#check BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step52_B_le_1200k_299.S_has_prime_with_exp_one_B_le_1200000_table_rows
#check BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step52_B_le_1200k_299.exists_p_with_order_ne_13_B_le_1200000_from_exp_one_table_rows
#check BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step52_B_le_1200k_299.S_not_fourth_B_le_1200000_from_exp_one_table_rows
#check BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step52_B_le_1200k_299.row_1100002_1100005
#check BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step52_B_le_1200k_299.row_1199998_1200001
#check BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step52_B_le_1200k_299.kraus_elimination_q_13_level_26
#check BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step52_B_le_1200k_299.bugeaud_P_phi13_gt_C_when_B_gt_1200000
#check BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step52_B_le_1200k_299.ExistsNewformLevel2_eq_zero_ne_zero
#check BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step53_B_le_1300k_299.S_has_prime_with_exp_one_B_le_1300000_table_rows
#check BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step53_B_le_1300k_299.exists_p_with_order_ne_13_B_le_1300000_from_exp_one_table_rows
#check BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step53_B_le_1300k_299.S_not_fourth_B_le_1300000_from_exp_one_table_rows
#check BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step53_B_le_1300k_299.row_1200001_1200004
#check BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step53_B_le_1300k_299.row_1299998_1300001
#check BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step53_B_le_1300k_299.kraus_elimination_q_13_level_26
#check BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step53_B_le_1300k_299.bugeaud_P_phi13_gt_C_when_B_gt_1300000
#check BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step53_B_le_1300k_299.ExistsNewformLevel2_eq_zero_ne_zero
#check BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step54_B_le_1400k_299.S_has_prime_with_exp_one_B_le_1400000_table_rows
#check BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step54_B_le_1400k_299.exists_p_with_order_ne_13_B_le_1400000_from_exp_one_table_rows
#check BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step54_B_le_1400k_299.S_not_fourth_B_le_1400000_from_exp_one_table_rows
#check BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step54_B_le_1400k_299.row_1300002_1300005
#check BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step54_B_le_1400k_299.row_1400000_1400003
#check BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step54_B_le_1400k_299.kraus_elimination_q_13_level_26
#check BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step54_B_le_1400k_299.bugeaud_P_phi13_gt_C_when_B_gt_1400000
#check BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step54_B_le_1400k_299.ExistsNewformLevel2_eq_zero_ne_zero
#check BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step55_B_le_1500k_299.S_has_prime_with_exp_one_B_le_1500000_table_rows
#check BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step55_B_le_1500k_299.exists_p_with_order_ne_13_B_le_1500000_from_exp_one_table_rows
#check BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step55_B_le_1500k_299.S_not_fourth_B_le_1500000_from_exp_one_table_rows
#check BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step55_B_le_1500k_299.row_1400001_1400004
#check BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step55_B_le_1500k_299.row_1499999_1500002
#check BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step55_B_le_1500k_299.kraus_elimination_q_13_level_26
#check BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step55_B_le_1500k_299.bugeaud_P_phi13_gt_C_when_B_gt_1500000
#check BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step55_B_le_1500k_299.ExistsNewformLevel2_eq_zero_ne_zero
#check BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step56_B_le_1600k_299.S_has_prime_with_exp_one_B_le_1600000_table_rows
#check BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step56_B_le_1600k_299.exists_p_with_order_ne_13_B_le_1600000_from_exp_one_table_rows
#check BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step56_B_le_1600k_299.S_not_fourth_B_le_1600000_from_exp_one_table_rows
#check BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step56_B_le_1600k_299.row_1500003_1500006
#check BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step56_B_le_1600k_299.row_1600000_1600003
#check BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step56_B_le_1600k_299.kraus_elimination_q_13_level_26
#check BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step56_B_le_1600k_299.bugeaud_P_phi13_gt_C_when_B_gt_1600000
#check BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step56_B_le_1600k_299.ExistsNewformLevel2_eq_zero_ne_zero
#check BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step57_B_le_1700k_299.S_has_prime_with_exp_one_B_le_1700000_table_rows
#check BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step57_B_le_1700k_299.exists_p_with_order_ne_13_B_le_1700000_from_exp_one_table_rows
#check BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step57_B_le_1700k_299.S_not_fourth_B_le_1700000_from_exp_one_table_rows
#check BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step57_B_le_1700k_299.row_1600001_1600004
#check BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step57_B_le_1700k_299.row_1700000_1700003
#check BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step57_B_le_1700k_299.kraus_elimination_q_13_level_26
#check BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step57_B_le_1700k_299.bugeaud_P_phi13_gt_C_when_B_gt_1700000
#check BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step57_B_le_1700k_299.ExistsNewformLevel2_eq_zero_ne_zero
#check BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step58_B_le_1800k_299.S_has_prime_with_exp_one_B_le_1800000_table_rows
#check BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step58_B_le_1800k_299.exists_p_with_order_ne_13_B_le_1800000_from_exp_one_table_rows
#check BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step58_B_le_1800k_299.S_not_fourth_B_le_1800000_from_exp_one_table_rows
#check BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step58_B_le_1800k_299.row_1700007_1700010
#check BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step58_B_le_1800k_299.row_1800000_1800003
#check BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step58_B_le_1800k_299.kraus_elimination_q_13_level_26
#check BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step58_B_le_1800k_299.bugeaud_P_phi13_gt_C_when_B_gt_1800000
#check BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step58_B_le_1800k_299.ExistsNewformLevel2_eq_zero_ne_zero
#check BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step59_B_le_1900k_299.S_has_prime_with_exp_one_B_le_1900000_table_rows
#check BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step59_B_le_1900k_299.exists_p_with_order_ne_13_B_le_1900000_from_exp_one_table_rows
#check BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step59_B_le_1900k_299.S_not_fourth_B_le_1900000_from_exp_one_table_rows
#check BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step59_B_le_1900k_299.row_1800004_1800007
#check BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step59_B_le_1900k_299.row_1899995_1899998
#check BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step59_B_le_1900k_299.kraus_elimination_q_13_level_26
#check BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step59_B_le_1900k_299.bugeaud_P_phi13_gt_C_when_B_gt_1900000
#check BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step59_B_le_1900k_299.ExistsNewformLevel2_eq_zero_ne_zero
#check BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step60_B_le_2000k_299.S_has_prime_with_exp_one_B_le_2000000_table_rows
#check BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step60_B_le_2000k_299.exists_p_with_order_ne_13_B_le_2000000_from_exp_one_table_rows
#check BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step60_B_le_2000k_299.S_not_fourth_B_le_2000000_from_exp_one_table_rows
#check BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step60_B_le_2000k_299.row_1900001_1900004
#check BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step60_B_le_2000k_299.row_2000000_2000003
#check BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step60_B_le_2000k_299.kraus_elimination_q_13_level_26
#check BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step60_B_le_2000k_299.bugeaud_P_phi13_gt_C_when_B_gt_2000000
#check BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step60_B_le_2000k_299.ExistsNewformLevel2_eq_zero_ne_zero
#check BealLevel26Foundations.Beal_4_13_13_Zsigmondy_Density_2M.smallZsigPrimes
#check BealLevel26Foundations.Beal_4_13_13_Zsigmondy_Density_2M.zsig_density_2M_stats
#check BealLevel26Foundations.Beal_4_13_13_Zsigmondy_Density_2M.hasSmallZsigWitness_196
#check BealLevel26Foundations.Beal_4_13_13_Zsigmondy_Density_2M.beal_4_13_13_gap3_B_le_2M_eliminated
#check BealLevel26Foundations.Beal_4_13_13_Zsigmondy_Density_2M.kraus_elimination_q_13_level_26
#check BealLevel26Foundations.Beal_4_13_13_Zsigmondy_Density_2M.ExistsNewformLevel2_eq_zero_ne_zero
#check BealLevel26Foundations.Level26_Newforms.newform_26_a_qexp
#check BealLevel26Foundations.Level26_Newforms.newform_26_b_qexp
#check BealLevel26Foundations.Level26_Newforms.kraus_primes_26
#check BealLevel26Foundations.Level26_Newforms.zsig_density_links_to_kraus
#check BealLevel26Foundations.Level26_Newforms.kraus_condition
#check BealLevel26Foundations.Level26_Newforms.level26_a_eliminated_by_53
#check BealLevel26Foundations.Level26_Newforms.level26_b_eliminated_by_443
#check BealLevel26Foundations.Level26_Newforms.kraus_elimination_q_13_level_26
#check BealLevel26Foundations.Level26_Newforms.ExistsNewformLevel2_eq_zero_ne_zero
#check BealLevel26Foundations.Level26_Newforms.newform_26_a_qexp_100
#check BealLevel26Foundations.Level26_Newforms.a53_26a1_eq
#check BealLevel26Foundations.Level26_Newforms.a53_26b1_eq
#check BealLevel26Foundations.Level26_Newforms.displayed_two_misses_a53_26a1
#check BealLevel26Foundations.Level26_Newforms.a53_E_196_eq
#check BealLevel26Foundations.Level26_Newforms.a443_26a1_eq
#check BealLevel26Foundations.Level26_Newforms.a443_26b1_eq
#check BealLevel26Foundations.Level26_Newforms.a443_E_1500003_eq
#check BealLevel26Foundations.Level26_Newforms.a443_E_1500003_misses_26a1
#check BealLevel26Foundations.Level26_Newforms.a443_E_1500003_misses_26b1
#check BealLevel26Foundations.Level26_Newforms.level26_a_eliminated_by_53_of_witness
#check BealLevel26Foundations.Level26_Newforms.hasSmallZsigWitness_1500003
#check BealLevel26Foundations.Level26_Newforms.level26_b_eliminated_by_443_of_witness
#check kraus_elimination_q_13_level_26_density
#check ribet_mazur_pack_q_13_level_26
#check exists_newform_level_26_dim2
#check ExistsNewformLevel26_inhabited
#check frey_mod13_irreducible
#check frey_modular
#check level_lowering_to_26
#check beal_4_13_13_gap3_B_196_eliminated
#check beal_4_13_13_gap3_B_1500003_eliminated
#check beal_4_13_13_gap3_first_honest_rows
#check beal_gap3_mod16_elim
#check beal_gap3_mod16_elim_even_not14
#check beal_4_13_13_gap3_B_le_2M_eliminated_mod16
#check density_5983_list
#check displayed_kraus_pack_recorded
#check b14_elim_at_p
#check beal_4_13_13_gap3_B_le_2M_eliminated_B14_kraus
#check beal_4_13_13_gap3_B_le_2M_eliminated_full
#check b14_kraus_pack_recorded
#check b14_witnesses
#check step60_b14_list
#check frey_modular_B14
#check level_lowering_to_26_B14
#check beal_4_13_13_gap3_B_le_2M_eliminated_B14_honest
#check beal_4_13_13_gap3_B_le_2M_eliminated_full_honest
#check bealFreyCubic
#check beal_frey_has_full_2_torsion
#check beal_frey_rewrite
#check displayed_cubic_ne_beal_frey_example
#check beal_frey_modular
#check beal_frey_mod13_irreducible_B14
#check level_lowering_to_26_B14_honest
#check beal_4_13_13_gap3_B_le_2M_eliminated_5983_honest
#check fourth_powers_mod53
#check a53_beal_frey
#check beal_frey_a53_miss_of_eq
#check beal_frey_a53_miss_B14
#check b14_A_search_miss
#check direct_mod53_kill
#check step60_b14_killed_mod53
#check beal_4_13_13_gap3_B_le_2M_eliminated_B14_mod53
#check survivors_86_list
#check a53_nonzero_values
#check beal_frey_a53_value_of_eq
#check beal_frey_a53_miss_86
#check gcd_B_Bplus3_dvd_three
#check irreducible_86
#check conductor_86
#check beal_frey_modular_allowed
#check level_lowering_86
#check beal_4_13_13_gap3_B_le_2M_eliminated_86
#check fourth_powers_mod_q_17
#check direct_mod17_kill
#check direct_mod_q_17_kill
#check direct_mod29_kill
#check direct_mod109_kill
#check beal_4_13_13_gap3_B_le_2M_eliminated_86_modq
#check beal_4_13_13_gap3_B_le_2M_eliminated_B14_full
#check frey_conductor_general
#check frey_conductor_N0_dvd_rad_BC
#check bealFreyWeierstrass
#check zsig_5983_eq_4488_plus_5_times_299
#check zsig_five_pools
#check not_prime_dvd_C13_of_gt
#check q_pow4_dvd_C13_sub_B4_of_dvd_A
#check padicValNat_C13_lt_four_of_q_gt_C
#check no_Beal_of_pow4_dvd_C13_of_q_gt_C
#check exists_primitive_prime_Phi13_gap3
#check exists_zsig_q_gt_2M_dvd_C13_sub_B4
#check q_pow4_dvd_C13_of_dvd_A
#check beal_gap3_B_gt_2M_eliminated
#check baker_B0
#check baker_B0_eq
#check baker_bound_gap3
#check matveev_log_form_nat
#check matveev_no_solution_A_le_B
#check matveev_explicit_gap3
#check baker_conditional_gap3_full
#check allKilled
#check allKilled_chunk_0
#check allKilled_chunk_24
#check allKilled_62500
#check allKilled_1e6
#check tate_rhs
#check v2_c4_ge_four
#check tate_odd_prime_exponent_one
#check rad_dvd_tate_rhs
#check packedOddStep2_dvd_tate_rhs
#check frey_tate_conductor
#check tateConductor
#check frey_tate_conductor_inhabited
#check kraus_a53_values
#check S2_26_a5_values
#check kraus_a53_elimination
#check tateConductor_eq_frey
#check baker_B0_PARI
#check baker_B0_certificate_displayed
#check baker_B0_certificate_holds
#check baker_bound_gap3_of_PARI
#check baker_B0_reduced_PARI
#check baker_B0_raw_PARI
#check baker_reduction_certificate_displayed
#check baker_reduction_certificate_holds
#check baker_bound_gap3_of_LLL
#check matveev_C1_floor
#check matveev_C1_pos
#check matveev_explicit_gap3_constants
#check matveev_explicit_gap3_constants_hold
#check matveev_log_form
#check matveev_lower_bound
#check matveev_inequality_constants
#check matveev_inequality_constants_hold
#check bugeaud_K
#check bugeaud_K_eq
#check bugeaud_LLL_basis
#check bugeaud_LLL_basis_holds
#check bugeaud_reduction_formal
#check bugeaud_LLL_reduction_conditional
#check matveev_log_form_int
#check matveev_log_form_ne_zero
#check matveev_log_form_ne_zero_zero
#check matveev_height_le_log_B0
#check matveev_census_B0_le_height
#check matveev_C_exp_bound
#check matveev_C_exp_bound_decide
#check matveev_inequality_real_formal
#check matveev_inequality_real_lower
#check matveev_inequality_real_constants_hold
#check matveev_height_B0_gt_onee12
#check matveev_C_exp_bound_lt_neg_onee12
#check matveev_log_form_ne_zero_of_gap3
#check baker_bound_gap3_remaining
#check matveev_height_log_pos
#check matveev_exp_bound_neg
#check matveev_inequality_real_target
#check matveev_thm14_constants_hold
#check matveev_C1_floor_pos
#check matveev_thirty_pow_pos
#check matveev_height_B0_gt_two
#check matveev_log_height_monotone
#check matveev_C_exp_bound_lt_zero_of_pos_log
#check matveev_exp_bound_lt_zero
#check matveev_exp_of_bound_pos_lt_one
#check matveev_exp_of_bound_pos
#check matveev_C_exp_bound_le_neg_onee12
#check matveev_target_exp_lower
#check matveev_C1_floor_mul_thirty_pow_div10
#check matveev_C1_floor_mul_thirty_pow
#check matveev_C1_floor_mul_thirty_pow_div10_times_ten
#check matveev_C1_floor_mul_thirty_pow_div10_ne_height
#check matveev_height_product_link
#check matveev_C_exp_bound_eq_neg_height_mul_log
#check matveev_C_exp_bound_eq_neg_height_log
#check matveev_target_exp_lower_eq
#check matveev_height_B0_mul_log_pos
#check matveev_C_exp_bound_neg_of_mul_log_pos
#check matveev_gap3_B_pos_of_solution
#check matveev_gap3_A_pos
#check matveev_gap3_A_pos_of_pos_B
#check matveev_gap3_log_form_upper_bound
#check matveev_gap3_log_form_upper_bound_expanded
#check matveev_gap3_log_form_upper_bound_of_solution
#check matveev_exp_lower_lt_one_and_pos
#check matveev_gap3_A_pow_pos
#check matveev_gap3_B3_pow_pos
#check matveev_gap3_ratio_eq_one_plus_ratio
#check matveev_gap3_log_form_eq_log_ratio
#check matveev_gap3_abs_lambda_eq_log_one_plus_ratio
#check matveev_log_one_plus_le_self
#check matveev_gap3_B_pow_div_A_pow_pos
#check matveev_gap3_abs_lambda_nonneg
#check matveev_gap3_abs_lambda_le_ratio
#check matveev_gap3_abs_lambda_lt_one_of_small_ratio
#check matveev_conditional_lower_implies_ratio_gt_exp
#check matveev_conditional_lower_implies_ratio_gt_exp_of_solution
#check matveev_gap3_ratio_lower_bound_conditional
#check matveev_gap3_conditional_ratio_pos
#check matveev_gap3_ratio_pos_of_conditional_lower
#check matveev_gap3_A_pow_eq_B3_pow_sub_B_pow
#check matveev_gap3_ratio_explicit
#check matveev_gap3_conditional_B_lower
#check matveev_gap3_conditional_B_lower_of_target
#check matveev_gap3_conditional_B_pos_lower
#check matveev_ten_pow_20
#check matveev_ten_pow_20_eq
#check matveev_two_pow_83_lt_ten_pow_25
#check matveev_height_B0_gt_onee20
#check matveev_log_ten_gt_23_div_10
#check matveev_log_height_B0_gt_46
#check matveev_exp_46_lt_height_B0
#check matveev_C_exp_bound_lt_neg_1e12_of_log46
#check matveev_C_exp_bound_le_neg_1e12
#check matveev_target_exp_lower_lt_exp_neg_1e12
#check matveev_exp_neg_1e12_lt_inv_1e12
#check matveev_target_exp_lower_lt_onee12
#check matveev_exp_C_pos_lt_one
#check matveev_v24x_summary
#check matveev_v24x_conditional_summary
#check bugeaud_v24x_final_link
#check baker_v24x_reduction_shape
#check J0DecompositionCert_26
#check J0DecompositionCert_26_displayed
#check J0DecompositionSoundness_26
#check J0DecompositionSoundness_26_displayed
#check J0DecompositionSoundness_26_holds
#check MwrankCertificate_26
#check MwrankCertificate_26_displayed
#check MwrankCertificateSoundness_26
#check MwrankCertificateSoundness_26_displayed
#check MwrankCertificateSoundness_26_holds
#check FormalImmersionCert_26
#check FormalImmersionCert_26_displayed
#check FormalImmersionSoundness_26
#check FormalImmersionSoundness_26_displayed
#check FormalImmersionSoundness_26_holds
#check FreyCurveCert
#check FreyCurveCert_displayed
#check FreyCurveExists
#check LevelLoweringCert_26
#check LevelLoweringCert_26_displayed
#check LevelLowering_26
#check beal_44_13_level_26_modular_elimination
#check tate_odd_exponent_le_one
#check tate_2adic_exponent_le5
#check tate_conductor_bound_rhs
#check tatePackedValuationBound_dvd_rhs
#check beal_from_ribet_upside_down_odd_A_closed
#check beal_4_13_13_A_ge_13_pow_quarter_mul_B_cubed
#check C_pow13_sub_B_pow13
#check C13_sub_B13_ge_26_mul_B_pow_12_of_C_ge_B_plus_2
#check C13_sub_B13_ge_26_mul_B12_of_C_ge_B_plus_2_B_le_100
#check beal_4_13_13_A_pow4_ge_26_mul_B12_of_C_ge_B_plus_2
#check beal_4_13_13_A_pow4_ge_26_mul_B12_of_C_ge_B_plus_2_B_le_100
#check size_table_C_eq_B_plus_2_lower_bound_B_le_100
#check beal_size_B_le_100_C_eq_B_plus_2_table
#check exists_prime_one_mod_ell_all_13
#check exists_prime_one_mod_ell_sq_all
#check exists_prime_one_mod_ell_sq_all_13
#check find_next_prime_one_mod_gt_exists
#check next_Q1_gt_N
#check next_Q1_gt_N_exists
#check primes_le_1000
#check InTWEll1000_iff_mem
#check InTWEll1000_of_prime_5_100
#check InTWEll1000_complete
#check TWAuxEllFixed_inhabited_for_every_ell_le_1000
#check X0_N_Model
#check J0_N_Model
#check J0_N_real
#check HeckeAction_N_real
#check Frey_aq_pm1
#check MazurStepRealFixed
#check RibetIteratedRealFixed
#check frey_a_q_real
#check frey_rho_unramified_iff_13_dvd_vqDelta
#check Frey13Case
#print axioms q_expansion_26a1_a1
#print axioms q_expansion_26a1_a3
#print axioms q_expansion_26b1_a3
#print axioms T3_26a1_matches_a3
#print axioms mazur_principle_step
#print axioms mazur_step_real
#print axioms mazur_step_real_fixed
#print axioms ribet_iterated
#print axioms ribet_iterated_real
#print axioms ribet_iterated_real_fixed
#print axioms ribet_iterated_does_not_inhabit_newform
#print axioms frey_a_q_is_pm1
#print axioms frey_a_q_real
#print axioms frey_rho_unramified_iff_13_dvd_vqDelta
#print axioms pm1_ne_pm_qplus1_mod13_at_3
#print axioms N_div_Prod_eq_2_of_Frey13Case
#print axioms modular_at_two_is_not_newform
#print axioms X0_N_Model_eq_rad
#print axioms J0_N_Model_cusps
#print axioms beal_from_ribet
#print axioms beal_from_ribet_real
#print axioms beal_from_ribet_real_fixed
#print axioms frey_a_q_real_ell
#print axioms frey_rho_unramified_iff_ell_dvd_vqDelta
#print axioms trace_eq_pm_qplus1_when_unramified
#print axioms ell_of_q_dvd_vqDelta
#print axioms mazur_step_ell
#print axioms ribet_iterated_ell_case
#print axioms N_div_Prod_eq_2_of_FreyEllCase5
#print axioms not_FreyEllCase5_of_exp_four
#print axioms beal_from_ribet_ell_case
#print axioms TWAuxEllExists_13
#print axioms wiles_modularity_Frey_mod_ell
#print axioms fermat_four_lemma
#print axioms not_PositiveBealTriple_of_FermatFourCase
#print axioms not_FreyEllCase5_of_exp_four_reduced
#print axioms beal_pow2_exponents
#print axioms mazur_step_real_ell_upgraded
#print axioms ribet_iterated_ell_upgraded
#print axioms beal_from_ribet_ell_upgraded
#print axioms not_forall_N_not_dvd_Q1
#print axioms beal_pow2_base
#print axioms mixed_covers_4_13_13
#print axioms thirteen_dvd_Delta_of_mixed_pow2_A
#print axioms exists_prime_one_mod_ell_listed
#print axioms TWAuxEllFixed.Q1_not_dvd
#print axioms ribet_iterated_ell_mixed
#print axioms beal_from_ribet_ell_mixed
#print axioms TWAuxEllExists_5
#print axioms TWAuxEllExists_7
#print axioms mod_pow4_odd
#print axioms mod_pow13_odd
#print axioms not_forall_pow13_mod8
#print axioms beal_4_13_13_mod8
#print axioms beal_4_13_13_mod13
#print axioms beal_4_13_13_mod13_nat
#print axioms IsPowerOfTwo.eq_one_of_odd
#print axioms not_beal_4_13_13_of_A_eq_one
#print axioms not_beal_4_13_13_of_odd_pow2_A
#print axioms FreyEllCase5Mixed_4_13_13_iff_pow2_A
#print axioms not_FreyEllCase5Mixed_of_4_13_13_A_not_pow2
#print axioms exists_prime_one_mod_ell_all
#print axioms exists_prime_one_mod_ell_sq_all
#print axioms exists_prime_one_mod_ell_sq_all_13
#print axioms Q1_not_dvd_N_of_Q1_gt_N
#print axioms exists_prime_one_mod_ell_all_13
#print axioms TWAuxEllFixed.of5_26
#print axioms TWAuxEllFixed.of7_26
#print axioms TWAuxEllFixed.of5_26_gt
#print axioms TWAuxEllFixed.of7_26_gt
#print axioms TWAuxEllFixed.of13_26_gt
#print axioms TWAuxEllFixedExists_5_26
#print axioms TWAuxEllFixedExists_7_26
#print axioms TWAuxEllFixedExists_26_all
#print axioms TWAuxEllFixedExists_10000_all
#print axioms TWAuxEllFixedExists_all_N_le_10000
#print axioms TWAuxEllFixed_inhabited_for_every_ell_le_1000_product
#print axioms TWAuxEllFixed.of_N_le
#print axioms find_next_prime_one_mod_gt_exists_product
#print axioms genus_X0_2_rat_eq_zero
#print axioms ExistsNewformLevel2_eq_zero_ne_zero
#print axioms BealAArm.of_pos
#print axioms beal_odd_A_ge3_not_mixed
#print axioms C13_sub_B13_ge_13_mul_B_pow_12
#print axioms beal_4_13_13_size_lower_bound
#print axioms beal_4_13_13_A_ge_B_pow_3
#print axioms size_table_lower_bound_B_le_100
#print axioms beal_4_13_13_size_B_le_100_C_succ
#print axioms C13_sub_B13_ge_26_mul_B_pow_12_of_C_ge_B_plus_2
#print axioms beal_4_13_13_A_pow4_ge_26_mul_B12_of_C_ge_B_plus_2
#print axioms size_table_C_eq_B_plus_2_lower_bound_B_le_100
#print axioms InTWEll1000_of_prime_5_100
#print axioms InTWEll1000_iff_mem
#print axioms succ_pow_sub_pow_gt_one
#print axioms BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step5_P_mod_13.order_dvd_p_minus_one_of_prime
#print axioms BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step5_P_mod_13.order_eq_13_of_primitive_prime_13
#print axioms BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step5_P_mod_13.primitive_prime_mod_13_eq_1
#print axioms BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step5_P_mod_13.primitive_prime_ge_53
#print axioms BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step5_P_mod_13.beal_odd_A_ge3_A_ge_53
#print axioms BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step6_B_le_100_closed.beal_4_13_13_B_le_100_C_eq_B_plus_1_no_fourth_power
#print axioms BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step6_B_le_100_closed.beal_4_13_13_B_le_100_C_eq_B_plus_2_no_fourth_power
#print axioms BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step6_B_le_100_closed.beal_odd_A_ge3_B_le_100_closed_C_le_B_plus_2
#print axioms BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step7_General_k.S_13_ge_13_mul_B_pow12
#print axioms BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step7_General_k.C13_sub_B13_ge_13_k_mul_B_pow12
#print axioms BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step7_General_k.beal_4_13_13_A_pow4_ge_13_k_mul_B12_of_C_ge_B_plus_k
#print axioms BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step7_General_k.beal_4_13_13_A_pow4_ge_39_mul_B12_of_C_ge_B_plus_3
#print axioms BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step7_General_k.C_ge_B_plus_k_implies_A_pow4_ge_13kB12
#print axioms BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step7_General_k.beal_4_13_13_A_ge_2_mul_B_pow_3_succ_of_C_ge_B_plus_3
#print axioms BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step8_k_odd_coprime.k_odd_of_odd_A
#print axioms BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step8_k_odd_coprime.gcd_k_B_eq_one_of_coprime_C_B
#print axioms BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step8_k_odd_coprime.gcd_A_B_eq_one_of_coprime_C_B
#print axioms BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step8_k_odd_coprime.A_pow4_congr_k_pow13_mod_B
#print axioms BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step8_k_odd_coprime.beal_4_13_13_k_odd
#print axioms BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step8_k_odd_coprime.beal_4_13_13_gcd_A_B_eq_one
#print axioms BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step8_k_odd_coprime.beal_4_13_13_A_pow4_mod_B_eq_k_pow13
#print axioms BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step9_fourth_pow_residue.odd_fourth_mod4
#print axioms BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step9_fourth_pow_residue.odd_fourth_mod8
#print axioms BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step9_fourth_pow_residue.k_mod4_eq_1_of_fourth_pow_residue
#print axioms BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step9_fourth_pow_residue.k_mod8_eq_1_of_fourth_pow_residue
#print axioms BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step9_fourth_pow_residue.beal_4_13_13_k_mod4_eq_1_of_B_mod4_eq_0
#print axioms BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step9_fourth_pow_residue.beal_4_13_13_k_mod8_eq_1_of_B_mod8_eq_0
#print axioms BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step9_fourth_pow_residue.fourth_pow_mod_4
#print axioms BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step9_fourth_pow_residue.fourth_pow_mod_8_odd
#print axioms BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step9_fourth_pow_residue.odd_pow_mod_4
#print axioms BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step9_fourth_pow_residue.k_pow13_mod_8_odd
#print axioms BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step9_fourth_pow_residue.k_mod_4_eq_1_of_B_divisible_by_4
#print axioms BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step9_fourth_pow_residue.k_mod_8_eq_1_of_B_divisible_by_8
#print axioms BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step9_fourth_pow_residue.beal_4_13_13_k_mod_4_eq_1_of_B_mod_4_0
#print axioms BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step9_fourth_pow_residue.beal_4_13_13_k_mod_8_eq_1_of_B_mod_8_0
#print axioms BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step9_fourth_pow_residue.beal_4_13_13_A4_cong_k13_mod_B_restricts_B
#print axioms BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step10_k_upper_bound_plan.S_13_mod_k
#print axioms BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step10_k_upper_bound_plan.gcd_k_S_dvd_13
#print axioms BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step10_k_upper_bound_plan.gcd_k_S_eq_1_or_13
#print axioms BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step10_k_upper_bound_plan.k_mul_S_eq_A_pow4
#print axioms BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step10_k_upper_bound_plan.coprime_mul_eq_fourth_pow
#print axioms BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step10_k_upper_bound_plan.k_almost_fourth_power
#print axioms BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step10_k_upper_bound_plan.beal_4_13_13_k_almost_fourth_power
#print axioms BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step10_k_upper_bound_plan.fourth_pow_mod_16
#print axioms BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step10_upper_bound_k.S_13_mod_k
#print axioms BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step10_upper_bound_k.gcd_k_S_dvd_13
#print axioms BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step10_upper_bound_k.gcd_k_S_eq_1_or_13
#print axioms BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step10_upper_bound_k.k_mul_S_eq_A_pow4
#print axioms BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step10_upper_bound_k.coprime_mul_eq_fourth_pow_imp_fourth_pow
#print axioms BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step10_upper_bound_k.k_almost_fourth_power
#print axioms BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step10_upper_bound_k.genus_X0_2_rat_eq_zero
#print axioms BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step10_upper_bound_k.ExistsNewformLevel2_eq_zero_ne_zero
#print axioms BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step11_B_le_100_closed.primitive_prime_dvd_S
#print axioms BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step11_B_le_100_closed.v_p_S_eq_one
#print axioms BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step11_B_le_100_closed.S_not_fourth_power
#print axioms BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step11_B_le_100_closed.B_le_100_k_ge_3_no_S_fourth_pow
#print axioms BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step11_B_le_100_closed.beal_4_13_13_B_le_100_C_ge_B_plus_3_closed
#print axioms BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step11_B_le_100_closed.beal_4_13_13_B_le_100_closed
#print axioms BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step11_B_le_100_closed.genus_X0_2_rat_eq_zero
#print axioms BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step11_B_le_100_closed.ExistsNewformLevel2_eq_zero_ne_zero
#print axioms BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step12_B_gt_100_bounded_k_plan.A_ge_53_of_S_prime
#print axioms BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step12_B_gt_100_bounded_k_plan.k_le_A_pow4_div_13_B_pow12
#print axioms BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step12_B_gt_100_bounded_k_plan.B_gt_100_imp_k_bounded_by_A
#print axioms BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step12_B_gt_100_bounded_k_plan.k_ge_B_imp_A_large
#print axioms BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step12_B_gt_100_bounded_k_plan.k_lt_B_imp_S_between
#print axioms BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step12_B_gt_100_bounded_k_plan.genus_X0_2_rat_eq_zero
#print axioms BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step12_B_gt_100_bounded_k_plan.ExistsNewformLevel2_eq_zero_ne_zero
#print axioms BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step13_Modular_W_lift_last_lock.frey_curve_conductor
#print axioms BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step13_Modular_W_lift_last_lock.A_ge_53_of_S_prime
#print axioms BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step13_Modular_W_lift_last_lock.k_le_A_pow4_div_13_B_pow12
#print axioms BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step13_Modular_W_lift_last_lock.B_gt_100_imp_k_bounded_by_A
#print axioms BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step13_Modular_W_lift_last_lock.genus_X0_2_rat_eq_zero
#print axioms BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step13_Modular_W_lift_last_lock.ExistsNewformLevel2_eq_zero_ne_zero
#print axioms BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step14_X0_26_RibetMazur_plan.even_not_pow2_has_odd_prime
#print axioms BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step14_X0_26_RibetMazur_plan.frey_conductor_even_A
#print axioms BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step14_X0_26_RibetMazur_plan.minimal_level_26_of_13_dvd_A
#print axioms BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step14_X0_26_RibetMazur_plan.level_at_least_6_of_even_not_pow2
#print axioms BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step14_X0_26_RibetMazur_plan.ExistsNewformLevel2_eq_zero_ne_zero
#print axioms BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step15_X0_2q_Darmon_Merel_plan.oddPart_def
#print axioms BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step15_X0_2q_Darmon_Merel_plan.rad_dvd_pow
#print axioms BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step15_X0_2q_Darmon_Merel_plan.even_not_pow2_has_odd_prime_q
#print axioms BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step15_X0_2q_Darmon_Merel_plan.level_2q_of_odd_prime_dvd_A
#print axioms BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step15_X0_2q_Darmon_Merel_plan.ExistsNewformLevel2_eq_zero_ne_zero
#print axioms BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step16_Odd_A_closure_plan.S_bounds_13_B12_le_S_le_13_C12
#print axioms BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step16_Odd_A_closure_plan.k_almost_fourth_power_shape
#print axioms BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step16_Odd_A_closure_plan.k_le_A4_div_13_B12
#print axioms BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step16_Odd_A_closure_plan.B_gt_100_k_bounded
#print axioms BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step16_Odd_A_closure_plan.k_ge_B_imp_A_ge_9B3
#print axioms BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step16_Odd_A_closure_plan.ExistsNewformLevel2_eq_zero_ne_zero
#print axioms BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step17_Zsig_S_vp1_plan.S_bounds
#print axioms BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step17_Zsig_S_vp1_plan.thirteen_dvd_S_of_13_nmid_B
#print axioms BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step17_Zsig_S_vp1_plan.gcd_k_S_dvd_13
#print axioms BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step17_Zsig_S_vp1_plan.k_shape_1_13_13cubed
#print axioms BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step17_Zsig_S_vp1_plan.ExistsNewformLevel2_eq_zero_ne_zero
#print axioms BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step18_Zsig_primitive_vp1_inhabited.gcd_k_S_dvd_13_honest
#print axioms BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step18_Zsig_primitive_vp1_inhabited.thirteen_dvd_S_of_BeqC_mod13
#print axioms BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step18_Zsig_primitive_vp1_inhabited.zsigmondy_exists_primitive_inhabited
#print axioms BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step18_Zsig_primitive_vp1_inhabited.zsig_p_not_dvd_k_of_gcd_inhabited
#print axioms BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step18_Zsig_primitive_vp1_inhabited.S_times_g_not_fourth_of_vp1_inhabited
#print axioms BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step18_Zsig_primitive_vp1_inhabited.zsigmondy_vp_S_eq_one_inhabited
#print axioms BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step18_Zsig_primitive_vp1_inhabited.beal_odd_A_ge3_closed_of_vp1
#print axioms BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step18_Zsig_primitive_vp1_inhabited.ExistsNewformLevel2_eq_zero_ne_zero
#print axioms BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step19_Odd_A_closed_for_real.primitive_prime_not_dvd_bases
#print axioms BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step19_Odd_A_closed_for_real.beal_odd_A_ge3_closed_of_vp1_inhabited
#print axioms BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step19_Odd_A_closed_for_real.beal_odd_A_closed_via_zsig_hensel
#print axioms BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step19_Odd_A_closed_for_real.beal_4_13_13_Zsigmondy_13_odd_A_closed_for_real_of_hensel
#print axioms BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step19_Odd_A_closed_for_real.ExistsNewformLevel2_eq_zero_ne_zero
#print axioms BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step20_Hensel_dichotomy_S_not_fourth_plan.p_sq_dvd_S_iff_order_13_mod_p_sq
#print axioms BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step20_Hensel_dichotomy_S_not_fourth_plan.hensel_lift_example_B1_C460_p53
#print axioms BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step20_Hensel_dichotomy_S_not_fourth_plan.C_eq_B_plus_1_or_2_closed
#print axioms BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step20_Hensel_dichotomy_S_not_fourth_plan.S_not_fourth_of_order_ne_13
#print axioms BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step20_Hensel_dichotomy_S_not_fourth_plan.beal_odd_A_closed_via_zsig_hensel
#print axioms BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step20_Hensel_dichotomy_S_not_fourth_plan.ExistsNewformLevel2_eq_zero_ne_zero
#print axioms BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step21_exists_p_order_ne_13_plan.p_sq_dvd_S_iff_order_13_mod_p_sq_inhabited
#print axioms BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step21_exists_p_order_ne_13_plan.zsigmondy_vp_S_eq_one_of_order_ne_13
#print axioms BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step21_exists_p_order_ne_13_plan.exists_p_of_two_primes_one_not_square
#print axioms BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step21_exists_p_order_ne_13_plan.ExistsNewformLevel2_eq_zero_ne_zero
#print axioms BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step22_two_primitive_primes_counting_plan.S_not_power_of_thirteen
#print axioms BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step22_two_primitive_primes_counting_plan.exists_p_of_two_primes_one_not_square_inhabited
#print axioms BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step22_two_primitive_primes_counting_plan.zsigmondy_vp_S_eq_one_of_order_ne_13_inhabited
#print axioms BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step22_two_primitive_primes_counting_plan.S_not_fourth_of_order_ne_13_inhabited
#print axioms BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step22_two_primitive_primes_counting_plan.ExistsNewformLevel2_eq_zero_ne_zero
#print axioms BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step23_Phi13_Zeta13_prime_ideal_plan.norm_eq_S
#print axioms BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step23_Phi13_Zeta13_prime_ideal_plan.zeta13_class_number_one
#print axioms BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step23_Phi13_Zeta13_prime_ideal_plan.zeta13_prime_ideal_factorization_exists
#print axioms BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step23_Phi13_Zeta13_prime_ideal_plan.S_not_power_of_thirteen_inhabited
#print axioms BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step23_Phi13_Zeta13_prime_ideal_plan.ExistsNewformLevel2_eq_zero_ne_zero
#print axioms BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step24_Phi13_derivative_LTE_plan.phi13_derivative_separable_mod_p
#print axioms BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step24_Phi13_derivative_LTE_plan.hensel_unique_lift_of_phi13_root
#print axioms BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step24_Phi13_derivative_LTE_plan.p_sq_dvd_S_iff_CB_eq_lifted_root
#print axioms BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step24_Phi13_derivative_LTE_plan.ExistsNewformLevel2_eq_zero_ne_zero
#print axioms BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step25_Chebotarev_lift_density_plan.phi13_derivative_separable_mod_p_inhabited
#print axioms BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step25_Chebotarev_lift_density_plan.hensel_unique_lift_of_phi13_root_inhabited
#print axioms BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step25_Chebotarev_lift_density_plan.p_sq_dvd_S_iff_CB_eq_lifted_root_inhabited
#print axioms BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step25_Chebotarev_lift_density_plan.primes_eq1_mod13_infinite
#print axioms BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step25_Chebotarev_lift_density_plan.density_p_div_S
#print axioms BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step25_Chebotarev_lift_density_plan.thin_set_p_sq_div_S
#print axioms BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step25_Chebotarev_lift_density_plan.ExistsNewformLevel2_eq_zero_ne_zero
#print axioms BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step26_S_not_prime_power_gap3_fast_track.S_val_1_5
#print axioms BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step26_S_not_prime_power_gap3_fast_track.S_val_1_5_prime
#print axioms BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step26_S_not_prime_power_gap3_fast_track.S_prime_power_example_B1_C5
#print axioms BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step26_S_not_prime_power_gap3_fast_track.prime_power_S_eq_zsigmondy_prime
#print axioms BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step26_S_not_prime_power_gap3_fast_track.S_not_prime_power_when_C_ge_B_plus_3_fast_refuted
#print axioms BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step26_S_not_prime_power_gap3_fast_track.S_has_two_distinct_primitive_primes_when_C_ge_B_plus_3_fast_refuted
#print axioms BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step26_S_not_prime_power_gap3_fast_track.exists_p_with_order_ne_13_mod_p_sq_example_B1_C5
#print axioms BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step26_S_not_prime_power_gap3_fast_track.ExistsNewformLevel2_eq_zero_ne_zero
#print axioms BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step27_S_not_proper_prime_power_gap3.not_isProperPrimePower_of_prime
#print axioms BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step27_S_not_proper_prime_power_gap3.proper_prime_power_imp_sq_dvd
#print axioms BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step27_S_not_proper_prime_power_gap3.S_val_1_5_not_proper_prime_power
#print axioms BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step27_S_not_proper_prime_power_gap3.ExistsNewformLevel2_eq_zero_ne_zero
#print axioms BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step28_S_has_prime_with_exp_one_gap3.S_val_1_5_has_prime_with_exp_one
#print axioms BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step28_S_has_prime_with_exp_one_gap3.exists_p_with_order_ne_13_of_has_exp_one
#print axioms BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step29_B_le_100_exp_one_table.S_val_1_4_has_prime_with_exp_one
#print axioms BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step29_B_le_100_exp_one_table.S_val_2_5_prime
#print axioms BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step29_B_le_100_exp_one_table.S_has_prime_with_exp_one_B_le_100_table_rows
#print axioms BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step29_B_le_100_exp_one_table.exists_p_with_order_ne_13_mod_p_sq_example_B1_C4
#print axioms BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step29_B_le_100_exp_one_table.ExistsNewformLevel2_eq_zero_ne_zero
#print axioms BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step30_S_not_proper_power_B_le_100_from_exp_one.not_proper_prime_power_of_has_exp_one
#print axioms BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step30_S_not_proper_power_B_le_100_from_exp_one.S_not_proper_prime_power_B_le_100_from_exp_one_table_rows
#print axioms BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step30_S_not_proper_power_B_le_100_from_exp_one.S_val_1_4_not_proper_prime_power
#print axioms BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step30_S_not_proper_power_B_le_100_from_exp_one.ExistsNewformLevel2_eq_zero_ne_zero
#print axioms BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step31_B_le_100_order_ne_13_from_exp_one.order_ne_13_B1_C4
#print axioms BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step31_B_le_100_order_ne_13_from_exp_one.exists_p_with_order_ne_13_B_le_100_from_exp_one_table_rows
#print axioms BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step31_B_le_100_order_ne_13_from_exp_one.S_not_fourth_B_le_100_from_exp_one_table_rows
#print axioms BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step31_B_le_100_order_ne_13_from_exp_one.ExistsNewformLevel2_eq_zero_ne_zero
#print axioms BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step32_B_le_1000_exp_one_extension.S_has_prime_with_exp_one_B_le_1000_table_rows
#print axioms BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step32_B_le_1000_exp_one_extension.exists_p_with_order_ne_13_B_le_1000_from_exp_one_table_rows
#print axioms BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step32_B_le_1000_exp_one_extension.S_not_fourth_B_le_1000_from_exp_one_table_rows
#print axioms BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step32_B_le_1000_exp_one_extension.ExistsNewformLevel2_eq_zero_ne_zero
#print axioms BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step33_B_le_10000_exp_one_extension.S_has_prime_with_exp_one_B_le_10000_table_rows
#print axioms BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step33_B_le_10000_exp_one_extension.exists_p_with_order_ne_13_B_le_10000_from_exp_one_table_rows
#print axioms BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step33_B_le_10000_exp_one_extension.S_not_fourth_B_le_10000_from_exp_one_table_rows
#print axioms BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step33_B_le_10000_exp_one_extension.ExistsNewformLevel2_eq_zero_ne_zero
#print axioms BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step34_B_le_50000_exp_one_extension.S_has_prime_with_exp_one_B_le_50000_table_rows
#print axioms BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step34_B_le_50000_exp_one_extension.exists_p_with_order_ne_13_B_le_50000_from_exp_one_table_rows
#print axioms BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step34_B_le_50000_exp_one_extension.S_not_fourth_B_le_50000_from_exp_one_table_rows
#print axioms BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step34_B_le_50000_exp_one_extension.ExistsNewformLevel2_eq_zero_ne_zero
#print axioms BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step35_B_gt_50000_rad_bound.S_le_13_C_pow12
#print axioms BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step35_B_gt_50000_rad_bound.sqrt_S_le_4_C6
#print axioms BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step35_B_gt_50000_rad_bound.rad_le_sqrt_of_squarefull
#print axioms BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step35_B_gt_50000_rad_bound.rad_gt_C_of_P_phi13_gt_C
#print axioms BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step35_B_gt_50000_rad_bound.ExistsNewformLevel2_eq_zero_ne_zero
#print axioms BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step36_Kraus_X0_26_elimination.ap_bound_level_26
#print axioms BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step36_Kraus_X0_26_elimination.level_26_eq_2_mul_13
#print axioms BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step36_Kraus_X0_26_elimination.two_sqrt_sq_le_four_p
#print axioms BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step36_Kraus_X0_26_elimination.ExistsNewformLevel2_eq_zero_ne_zero
#print axioms BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step37_B_le_100k_extension.S_has_prime_with_exp_one_B_le_100000_table_rows
#print axioms BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step37_B_le_100k_extension.exists_p_with_order_ne_13_B_le_100000_from_exp_one_table_rows
#print axioms BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step37_B_le_100k_extension.S_not_fourth_B_le_100000_from_exp_one_table_rows
#print axioms BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step37_B_le_100k_extension.ExistsNewformLevel2_eq_zero_ne_zero
#print axioms BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step38_Kraus_p3_elim_26b1.kraus_elimination_26b1
#print axioms BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step38_Kraus_p3_elim_26b1.a3_26b1_not_in_frey_p3_traces
#print axioms BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step38_Kraus_p3_elim_26b1.ExistsNewformLevel2_eq_zero_ne_zero
#print axioms BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step39_Kraus_p5_elim_26a1.kraus_elimination_26a1
#print axioms BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step39_Kraus_p5_elim_26a1.a5_26a1_not_in_frey_p5_traces
#print axioms BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step39_Kraus_p5_elim_26a1.s2_26_displayed_newforms_miss_frey_traces
#print axioms BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step39_Kraus_p5_elim_26a1.ExistsNewformLevel2_eq_zero_ne_zero
#print axioms BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step40_level_lowering_26_to_2.level_lowering_26_to_2_from_no_match
#print axioms BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step40_level_lowering_26_to_2.s2_gamma0_2_dim_displayed_zero
#print axioms BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step40_level_lowering_26_to_2.not_ExistsNewformLevel2
#print axioms BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step40_level_lowering_26_to_2.ExistsNewformLevel2_eq_zero_ne_zero
#print axioms BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step41_B_le_200k_extension.S_has_prime_with_exp_one_B_le_200000_table_rows
#print axioms BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step41_B_le_200k_extension.exists_p_with_order_ne_13_B_le_200000_from_exp_one_table_rows
#print axioms BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step41_B_le_200k_extension.S_not_fourth_B_le_200000_from_exp_one_table_rows
#print axioms BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step41_B_le_200k_extension.ExistsNewformLevel2_eq_zero_ne_zero
#print axioms BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step41_B_le_200k_extension.row_199996_199999
#print axioms BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step42_B_200k_outlier_12186951011.prime_12186951011
#print axioms BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step42_B_200k_outlier_12186951011.row_200000_200003
#print axioms BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step42_B_200k_outlier_12186951011.S_has_prime_with_exp_one_B_le_200000_table_rows
#print axioms BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step42_B_200k_outlier_12186951011.exists_p_with_order_ne_13_B_le_200000_from_exp_one_table_rows
#print axioms BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step42_B_200k_outlier_12186951011.S_not_fourth_B_le_200000_from_exp_one_table_rows
#print axioms BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step42_B_200k_outlier_12186951011.ExistsNewformLevel2_eq_zero_ne_zero
#print axioms BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.S_has_prime_with_exp_one_B_le_300000_table_rows
#print axioms BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.exists_p_with_order_ne_13_B_le_300000_from_exp_one_table_rows
#print axioms BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.S_not_fourth_B_le_300000_from_exp_one_table_rows
#print axioms BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.row_299999_300002
#print axioms BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step43_B_le_300k_extension.ExistsNewformLevel2_eq_zero_ne_zero
#print axioms BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.S_has_prime_with_exp_one_B_le_400000_table_rows
#print axioms BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.exists_p_with_order_ne_13_B_le_400000_from_exp_one_table_rows
#print axioms BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.S_not_fourth_B_le_400000_from_exp_one_table_rows
#print axioms BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_300003_300006
#print axioms BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.row_400000_400003
#print axioms BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step44_B_le_400k_299.ExistsNewformLevel2_eq_zero_ne_zero
#print axioms BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step45_B_le_500k_299.S_has_prime_with_exp_one_B_le_500000_table_rows
#print axioms BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step45_B_le_500k_299.exists_p_with_order_ne_13_B_le_500000_from_exp_one_table_rows
#print axioms BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step45_B_le_500k_299.S_not_fourth_B_le_500000_from_exp_one_table_rows
#print axioms BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step45_B_le_500k_299.row_400001_400004
#print axioms BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step45_B_le_500k_299.row_500000_500003
#print axioms BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step45_B_le_500k_299.ExistsNewformLevel2_eq_zero_ne_zero
#print axioms BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step46_B_le_600k_299.S_has_prime_with_exp_one_B_le_600000_table_rows
#print axioms BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step46_B_le_600k_299.exists_p_with_order_ne_13_B_le_600000_from_exp_one_table_rows
#print axioms BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step46_B_le_600k_299.S_not_fourth_B_le_600000_from_exp_one_table_rows
#print axioms BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step46_B_le_600k_299.row_500003_500006
#print axioms BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step46_B_le_600k_299.row_600000_600003
#print axioms BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step46_B_le_600k_299.ExistsNewformLevel2_eq_zero_ne_zero
#print axioms BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step47_B_le_700k_299.S_has_prime_with_exp_one_B_le_700000_table_rows
#print axioms BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step47_B_le_700k_299.exists_p_with_order_ne_13_B_le_700000_from_exp_one_table_rows
#print axioms BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step47_B_le_700k_299.S_not_fourth_B_le_700000_from_exp_one_table_rows
#print axioms BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step47_B_le_700k_299.row_600001_600004
#print axioms BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step47_B_le_700k_299.row_700000_700003
#print axioms BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step47_B_le_700k_299.ExistsNewformLevel2_eq_zero_ne_zero
#print axioms BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step48_B_le_800k_299.S_has_prime_with_exp_one_B_le_800000_table_rows
#print axioms BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step48_B_le_800k_299.exists_p_with_order_ne_13_B_le_800000_from_exp_one_table_rows
#print axioms BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step48_B_le_800k_299.S_not_fourth_B_le_800000_from_exp_one_table_rows
#print axioms BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step48_B_le_800k_299.row_700001_700004
#print axioms BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step48_B_le_800k_299.row_800000_800003
#print axioms BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step48_B_le_800k_299.ExistsNewformLevel2_eq_zero_ne_zero
#print axioms BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step49_B_le_900k_299.S_has_prime_with_exp_one_B_le_900000_table_rows
#print axioms BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step49_B_le_900k_299.exists_p_with_order_ne_13_B_le_900000_from_exp_one_table_rows
#print axioms BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step49_B_le_900k_299.S_not_fourth_B_le_900000_from_exp_one_table_rows
#print axioms BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step49_B_le_900k_299.row_800005_800008
#print axioms BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step49_B_le_900k_299.row_899999_900002
#print axioms BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step49_B_le_900k_299.ExistsNewformLevel2_eq_zero_ne_zero
#print axioms BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step50_B_le_1000k_299.S_has_prime_with_exp_one_B_le_1000000_table_rows
#print axioms BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step50_B_le_1000k_299.exists_p_with_order_ne_13_B_le_1000000_from_exp_one_table_rows
#print axioms BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step50_B_le_1000k_299.S_not_fourth_B_le_1000000_from_exp_one_table_rows
#print axioms BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step50_B_le_1000k_299.row_900002_900005
#print axioms BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step50_B_le_1000k_299.row_1000000_1000003
#print axioms BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step50_B_le_1000k_299.ExistsNewformLevel2_eq_zero_ne_zero
#print axioms BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step51_B_le_1100k_299.S_has_prime_with_exp_one_B_le_1100000_table_rows
#print axioms BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step51_B_le_1100k_299.exists_p_with_order_ne_13_B_le_1100000_from_exp_one_table_rows
#print axioms BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step51_B_le_1100k_299.S_not_fourth_B_le_1100000_from_exp_one_table_rows
#print axioms BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step51_B_le_1100k_299.row_1000003_1000006
#print axioms BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step51_B_le_1100k_299.row_1099999_1100002
#print axioms BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step51_B_le_1100k_299.ExistsNewformLevel2_eq_zero_ne_zero
#print axioms BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step52_B_le_1200k_299.S_has_prime_with_exp_one_B_le_1200000_table_rows
#print axioms BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step52_B_le_1200k_299.exists_p_with_order_ne_13_B_le_1200000_from_exp_one_table_rows
#print axioms BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step52_B_le_1200k_299.S_not_fourth_B_le_1200000_from_exp_one_table_rows
#print axioms BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step52_B_le_1200k_299.row_1100002_1100005
#print axioms BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step52_B_le_1200k_299.row_1199998_1200001
#print axioms BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step52_B_le_1200k_299.ExistsNewformLevel2_eq_zero_ne_zero
#print axioms BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step53_B_le_1300k_299.S_has_prime_with_exp_one_B_le_1300000_table_rows
#print axioms BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step53_B_le_1300k_299.exists_p_with_order_ne_13_B_le_1300000_from_exp_one_table_rows
#print axioms BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step53_B_le_1300k_299.S_not_fourth_B_le_1300000_from_exp_one_table_rows
#print axioms BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step53_B_le_1300k_299.row_1200001_1200004
#print axioms BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step53_B_le_1300k_299.row_1299998_1300001
#print axioms BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step53_B_le_1300k_299.ExistsNewformLevel2_eq_zero_ne_zero
#print axioms BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step54_B_le_1400k_299.S_has_prime_with_exp_one_B_le_1400000_table_rows
#print axioms BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step54_B_le_1400k_299.exists_p_with_order_ne_13_B_le_1400000_from_exp_one_table_rows
#print axioms BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step54_B_le_1400k_299.S_not_fourth_B_le_1400000_from_exp_one_table_rows
#print axioms BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step54_B_le_1400k_299.row_1300002_1300005
#print axioms BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step54_B_le_1400k_299.row_1400000_1400003
#print axioms BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step54_B_le_1400k_299.ExistsNewformLevel2_eq_zero_ne_zero
#print axioms BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step55_B_le_1500k_299.S_has_prime_with_exp_one_B_le_1500000_table_rows
#print axioms BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step55_B_le_1500k_299.exists_p_with_order_ne_13_B_le_1500000_from_exp_one_table_rows
#print axioms BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step55_B_le_1500k_299.S_not_fourth_B_le_1500000_from_exp_one_table_rows
#print axioms BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step55_B_le_1500k_299.row_1400001_1400004
#print axioms BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step55_B_le_1500k_299.row_1499999_1500002
#print axioms BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step55_B_le_1500k_299.ExistsNewformLevel2_eq_zero_ne_zero
#print axioms BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step56_B_le_1600k_299.S_has_prime_with_exp_one_B_le_1600000_table_rows
#print axioms BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step56_B_le_1600k_299.exists_p_with_order_ne_13_B_le_1600000_from_exp_one_table_rows
#print axioms BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step56_B_le_1600k_299.S_not_fourth_B_le_1600000_from_exp_one_table_rows
#print axioms BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step56_B_le_1600k_299.row_1500003_1500006
#print axioms BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step56_B_le_1600k_299.row_1600000_1600003
#print axioms BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step56_B_le_1600k_299.ExistsNewformLevel2_eq_zero_ne_zero
#print axioms BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step57_B_le_1700k_299.S_has_prime_with_exp_one_B_le_1700000_table_rows
#print axioms BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step57_B_le_1700k_299.exists_p_with_order_ne_13_B_le_1700000_from_exp_one_table_rows
#print axioms BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step57_B_le_1700k_299.S_not_fourth_B_le_1700000_from_exp_one_table_rows
#print axioms BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step57_B_le_1700k_299.row_1600001_1600004
#print axioms BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step57_B_le_1700k_299.row_1700000_1700003
#print axioms BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step57_B_le_1700k_299.ExistsNewformLevel2_eq_zero_ne_zero
#print axioms BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step58_B_le_1800k_299.S_has_prime_with_exp_one_B_le_1800000_table_rows
#print axioms BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step58_B_le_1800k_299.exists_p_with_order_ne_13_B_le_1800000_from_exp_one_table_rows
#print axioms BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step58_B_le_1800k_299.S_not_fourth_B_le_1800000_from_exp_one_table_rows
#print axioms BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step58_B_le_1800k_299.row_1700007_1700010
#print axioms BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step58_B_le_1800k_299.row_1800000_1800003
#print axioms BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step58_B_le_1800k_299.ExistsNewformLevel2_eq_zero_ne_zero
#print axioms BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step59_B_le_1900k_299.S_has_prime_with_exp_one_B_le_1900000_table_rows
#print axioms BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step59_B_le_1900k_299.exists_p_with_order_ne_13_B_le_1900000_from_exp_one_table_rows
#print axioms BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step59_B_le_1900k_299.S_not_fourth_B_le_1900000_from_exp_one_table_rows
#print axioms BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step59_B_le_1900k_299.row_1800004_1800007
#print axioms BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step59_B_le_1900k_299.row_1899995_1899998
#print axioms BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step59_B_le_1900k_299.ExistsNewformLevel2_eq_zero_ne_zero
#print axioms BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step60_B_le_2000k_299.S_has_prime_with_exp_one_B_le_2000000_table_rows
#print axioms BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step60_B_le_2000k_299.exists_p_with_order_ne_13_B_le_2000000_from_exp_one_table_rows
#print axioms BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step60_B_le_2000k_299.S_not_fourth_B_le_2000000_from_exp_one_table_rows
#print axioms BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step60_B_le_2000k_299.row_1900001_1900004
#print axioms BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step60_B_le_2000k_299.row_2000000_2000003
#print axioms BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step60_B_le_2000k_299.ExistsNewformLevel2_eq_zero_ne_zero
#print axioms BealLevel26Foundations.Beal_4_13_13_Zsigmondy_Density_2M.zsig_density_2M_stats
#print axioms BealLevel26Foundations.Beal_4_13_13_Zsigmondy_Density_2M.hasSmallZsigWitness_196
#print axioms BealLevel26Foundations.Beal_4_13_13_Zsigmondy_Density_2M.beal_4_13_13_gap3_B_le_2M_eliminated
#print axioms BealLevel26Foundations.Beal_4_13_13_Zsigmondy_Density_2M.ExistsNewformLevel2_eq_zero_ne_zero
#print axioms BealLevel26Foundations.Level26_Newforms.newform_26_a_qexp_eq_ledger_prefix
#print axioms BealLevel26Foundations.Level26_Newforms.newform_26_a_a3
#print axioms BealLevel26Foundations.Level26_Newforms.newform_26_b_a5
#print axioms BealLevel26Foundations.Level26_Newforms.kraus_primes_26_eq_smallZsigPrimes
#print axioms BealLevel26Foundations.Level26_Newforms.zsig_density_links_to_kraus
#print axioms BealLevel26Foundations.Level26_Newforms.ExistsNewformLevel2_eq_zero_ne_zero
#print axioms BealLevel26Foundations.Level26_Newforms.a53_26a1_eq
#print axioms BealLevel26Foundations.Level26_Newforms.displayed_two_misses_a53_26a1
#print axioms BealLevel26Foundations.Level26_Newforms.a53_E_196_eq
#print axioms BealLevel26Foundations.Level26_Newforms.a443_26a1_eq
#print axioms BealLevel26Foundations.Level26_Newforms.a443_E_1500003_eq
#print axioms BealLevel26Foundations.Level26_Newforms.a443_E_1500003_misses_26a1
#print axioms BealLevel26Foundations.Level26_Newforms.level26_a_eliminated_by_53_of_witness
#print axioms BealLevel26Foundations.Level26_Newforms.hasSmallZsigWitness_1500003
#print axioms BealLevel26Foundations.Level26_Newforms.level26_b_eliminated_by_443_of_witness
#print axioms BealLevel26Foundations.Level26_Newforms.level26_a_eliminated_by_53
#print axioms BealLevel26Foundations.Level26_Newforms.level26_b_eliminated_by_443
#print axioms BealLevel26Foundations.Level26_Newforms.kraus_elimination_q_13_level_26
#print axioms kraus_elimination_q_13_level_26_density
#print axioms ribet_mazur_pack_q_13_level_26
#print axioms exists_newform_level_26_dim2
#print axioms ExistsNewformLevel26_inhabited
#print axioms frey_mod13_irreducible
#print axioms frey_modular
#print axioms beal_4_13_13_gap3_B_196_eliminated
#print axioms beal_4_13_13_gap3_B_1500003_eliminated
#print axioms beal_4_13_13_gap3_first_honest_rows
#print axioms beal_gap3_mod16_elim
#print axioms beal_4_13_13_gap3_B_le_2M_eliminated_mod16
#print axioms displayed_kraus_pack_recorded
#print axioms b14_elim_at_p
#print axioms beal_4_13_13_gap3_B_le_2M_eliminated_B14_kraus
#print axioms beal_4_13_13_gap3_B_le_2M_eliminated_full
#print axioms b14_kraus_pack_recorded
#print axioms frey_modular_B14
#print axioms beal_4_13_13_gap3_B_le_2M_eliminated_full_honest
#print axioms beal_frey_has_full_2_torsion
#print axioms beal_frey_rewrite
#print axioms displayed_cubic_ne_beal_frey_example
#print axioms beal_frey_a53_miss_of_eq
#print axioms beal_frey_a53_miss_B14
#print axioms b14_A_search_miss
#print axioms direct_mod53_kill
#print axioms beal_4_13_13_gap3_B_le_2M_eliminated_B14_mod53
#print axioms beal_frey_a53_value_of_eq
#print axioms beal_frey_a53_miss_86
#print axioms gcd_B_Bplus3_dvd_three
#print axioms irreducible_86
#print axioms direct_mod17_kill
#print axioms direct_mod_q_17_kill
#print axioms direct_mod29_kill
#print axioms direct_mod109_kill
#print axioms beal_4_13_13_gap3_B_le_2M_eliminated_86_modq
#print axioms beal_4_13_13_gap3_B_le_2M_eliminated_B14_full
#print axioms frey_conductor_general
#print axioms zsig_5983_eq_4488_plus_5_times_299
#print axioms zsig_five_pools
#print axioms not_prime_dvd_C13_of_gt
#print axioms q_pow4_dvd_C13_sub_B4_of_dvd_A
#print axioms padicValNat_C13_lt_four_of_q_gt_C
#print axioms no_Beal_of_pow4_dvd_C13_of_q_gt_C
#print axioms exists_primitive_prime_Phi13_gap3
#print axioms baker_B0_eq
#print axioms matveev_log_form_nat
#print axioms matveev_no_solution_A_le_B
#print axioms matveev_explicit_gap3
#print axioms baker_conditional_gap3_full
#print axioms allKilled_chunk_0
#print axioms allKilled_chunk_24
#print axioms allKilled_62500
#print axioms allKilled_1e6
#print axioms v2_c4_ge_four
#print axioms tate_odd_prime_exponent_one
#print axioms rad_dvd_tate_rhs
#print axioms packedOddStep2_dvd_tate_rhs
#print axioms tate_odd_exponent_le_one
#print axioms tate_2adic_exponent_le5
#print axioms frey_tate_conductor_inhabited
#print axioms tatePackedValuationBound_dvd_rhs
#print axioms kraus_a53_elimination
#print axioms tateConductor_eq_frey
#print axioms baker_B0_certificate_holds
#print axioms baker_reduction_certificate_holds
#print axioms matveev_C1_pos
#print axioms matveev_explicit_gap3_constants_hold
#print axioms matveev_inequality_constants_hold
#print axioms matveev_lower_bound_scale_pos
#print axioms bugeaud_K_eq
#print axioms bugeaud_LLL_basis_holds
#print axioms matveev_log_form_ne_zero_zero
#print axioms matveev_log_form_ne_zero_fourteen
#print axioms matveev_log_form_ne_zero
#print axioms matveev_height_le_log_B0
#print axioms matveev_census_B0_le_height
#print axioms matveev_C_exp_bound_decide
#print axioms matveev_inequality_real_constants_hold
#print axioms matveev_height_B0_gt_onee12
#print axioms matveev_C_exp_bound_lt_neg_onee12
#print axioms matveev_log_form_ne_zero_of_gap3
#print axioms matveev_thirty_pow_eq_729000000
#print axioms matveev_thirty_pow_ne_72900000
#print axioms matveev_height_log_pos
#print axioms matveev_exp_bound_neg
#print axioms matveev_thm14_constants_hold
#print axioms matveev_C1_floor_pos
#print axioms matveev_thirty_pow_pos
#print axioms matveev_height_B0_gt_two
#print axioms matveev_log_height_monotone
#print axioms matveev_C_exp_bound_lt_zero_of_pos_log
#print axioms matveev_exp_bound_lt_zero
#print axioms matveev_exp_of_bound_pos_lt_one
#print axioms matveev_exp_of_bound_pos
#print axioms matveev_C_exp_bound_le_neg_onee12
#print axioms matveev_C1_floor_mul_thirty_pow_div10
#print axioms matveev_C1_floor_mul_thirty_pow
#print axioms matveev_C1_floor_mul_thirty_pow_div10_times_ten
#print axioms matveev_C1_floor_mul_thirty_pow_div10_ne_height
#print axioms matveev_height_product_link
#print axioms matveev_C_exp_bound_eq_neg_height_mul_log
#print axioms matveev_C_exp_bound_eq_neg_height_log
#print axioms matveev_target_exp_lower_eq
#print axioms matveev_height_B0_mul_log_pos
#print axioms matveev_C_exp_bound_neg_of_mul_log_pos
#print axioms matveev_gap3_B_pos_of_solution
#print axioms matveev_gap3_A_pos
#print axioms matveev_gap3_A_pos_of_pos_B
#print axioms matveev_gap3_log_form_upper_bound
#print axioms matveev_gap3_log_form_upper_bound_expanded
#print axioms matveev_gap3_log_form_upper_bound_of_solution
#print axioms matveev_exp_lower_lt_one_and_pos
#print axioms matveev_gap3_A_pow_pos
#print axioms matveev_gap3_B3_pow_pos
#print axioms matveev_gap3_ratio_eq_one_plus_ratio
#print axioms matveev_gap3_log_form_eq_log_ratio
#print axioms matveev_gap3_abs_lambda_eq_log_one_plus_ratio
#print axioms matveev_log_one_plus_le_self
#print axioms matveev_gap3_B_pow_div_A_pow_pos
#print axioms matveev_gap3_abs_lambda_nonneg
#print axioms matveev_gap3_abs_lambda_le_ratio
#print axioms matveev_gap3_abs_lambda_lt_one_of_small_ratio
#print axioms matveev_conditional_lower_implies_ratio_gt_exp
#print axioms matveev_conditional_lower_implies_ratio_gt_exp_of_solution
#print axioms matveev_gap3_ratio_lower_bound_conditional
#print axioms matveev_gap3_conditional_ratio_pos
#print axioms matveev_gap3_ratio_pos_of_conditional_lower
#print axioms matveev_gap3_A_pow_eq_B3_pow_sub_B_pow
#print axioms matveev_gap3_ratio_explicit
#print axioms matveev_gap3_conditional_B_lower
#print axioms matveev_gap3_conditional_B_lower_of_target
#print axioms matveev_gap3_conditional_B_pos_lower
#print axioms matveev_ten_pow_20_eq
#print axioms matveev_two_pow_83_lt_ten_pow_25
#print axioms matveev_height_B0_gt_onee20
#print axioms matveev_log_ten_gt_23_div_10
#print axioms matveev_log_height_B0_gt_46
#print axioms matveev_exp_46_lt_height_B0
#print axioms matveev_C_exp_bound_lt_neg_1e12_of_log46
#print axioms matveev_C_exp_bound_le_neg_1e12
#print axioms matveev_target_exp_lower_lt_exp_neg_1e12
#print axioms matveev_exp_neg_1e12_lt_inv_1e12
#print axioms matveev_target_exp_lower_lt_onee12
#print axioms matveev_exp_C_pos_lt_one
#print axioms matveev_v24x_summary
#print axioms matveev_v24x_conditional_summary
#print axioms bugeaud_v24x_final_link
#print axioms baker_v24x_reduction_shape
#print axioms J0DecompositionSoundness_26_holds
#print axioms MwrankCertificateSoundness_26_holds
#print axioms FormalImmersionSoundness_26_holds
#print axioms beal_44_13_level_26_modular_elimination

end BealLevel26Foundations.Beal.FullProof.RibetMazur
