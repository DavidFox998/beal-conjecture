/-
Copyright (c) 2026 David Fox. All rights reserved.
Released under MIT license as described in the file LICENSE.
Authors: David Fox

Track B v8.19.6 — `B ≤ 100` slice closed for odd
`A` when `C = B+1` or `C = B+2`, using `A ≥ 53`,
`A ≥ B³`, and the decide tables.
Keeps v8.19.5 `p ≡ 1 [MOD 13]`, `p ≥ 53`, `A ≥ 53`.
Keeps v8.19.4 `S_13`, `p ∣ S`, `p ≠ 13`,
`p ∣ A → ¬ p ∣ B`.
Keeps v8.19.3 `zsigmondy_13` inhabited.

`C ≥ B+3` stays open.  `B > 100` stays open.
Does **not** inhabit `ExistsNewformLevel2`.
Does **not** drop `ModularImpliesLevel2Newform`.
Not imported by the 24-module none chain.
-/

import BealLevel26Foundations.Beal.FullProof.Beal_4_13_13_Size_Table
import BealLevel26Foundations.Beal_4_13_13_Size_C_ge_B_plus_2
import BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step5_P_mod_13
import Mathlib.Tactic

namespace BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step6_B_le_100_closed

open BealLevel26Foundations.Beal.FullProof.Beal_4_13_13_Size_Table
open BealLevel26Foundations.Beal_4_13_13_Size_C_ge_B_plus_2
open BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step5_P_mod_13

/-- `C = B+2` difference. -/
def sizeDiff26 (B : Nat) : Nat :=
  (B + 2) ^ 13 - B ^ 13

theorem sizeDiff26_eq (B : Nat) :
    sizeDiff26 B = (B + 2) ^ 13 - B ^ 13 :=
  rfl

theorem sizeDiff26_eq_C_plus_2_table (B : Nat) :
    sizeDiff26 B = sizeDiff13_C_eq_B_plus_2 B :=
  rfl

set_option maxHeartbeats 8000000

theorem not_pow4_sizeDiff26_1_10
    {B : Nat} (hB : B ∈ Finset.Icc 1 10)
    (A : Nat) : A ^ 4 ≠ sizeDiff26 B := by
  fin_cases hB
  · have hD : sizeDiff26 1 = 1594322 := by decide
    have h1 : (35 : Nat) ^ 4 < 1594322 := by decide
    have h2 : 1594322 < (35 + 1) ^ 4 := by decide
    exact hD ▸ not_pow4_of_between h1 h2 A
  · have hD : sizeDiff26 2 = 67100672 := by decide
    have h1 : (90 : Nat) ^ 4 < 67100672 := by decide
    have h2 : 67100672 < (90 + 1) ^ 4 := by decide
    exact hD ▸ not_pow4_of_between h1 h2 A
  · have hD : sizeDiff26 3 = 1219108802 := by decide
    have h1 : (186 : Nat) ^ 4 < 1219108802 := by decide
    have h2 : 1219108802 < (186 + 1) ^ 4 := by decide
    exact hD ▸ not_pow4_of_between h1 h2 A
  · have hD : sizeDiff26 4 = 12993585152 := by decide
    have h1 : (337 : Nat) ^ 4 < 12993585152 := by decide
    have h2 : 12993585152 < (337 + 1) ^ 4 := by decide
    exact hD ▸ not_pow4_of_between h1 h2 A
  · have hD : sizeDiff26 5 = 95668307282 := by decide
    have h1 : (556 : Nat) ^ 4 < 95668307282 := by decide
    have h2 : 95668307282 < (556 + 1) ^ 4 := by decide
    exact hD ▸ not_pow4_of_between h1 h2 A
  · have hD : sizeDiff26 6 = 536695119872 := by decide
    have h1 : (855 : Nat) ^ 4 < 536695119872 := by decide
    have h2 : 536695119872 < (855 + 1) ^ 4 := by decide
    exact hD ▸ not_pow4_of_between h1 h2 A
  · have hD : sizeDiff26 7 = 2444976817922 := by decide
    have h1 : (1250 : Nat) ^ 4 < 2444976817922 := by decide
    have h2 : 2444976817922 < (1250 + 1) ^ 4 := by decide
    exact hD ▸ not_pow4_of_between h1 h2 A
  · have hD : sizeDiff26 8 = 9450244186112 := by decide
    have h1 : (1753 : Nat) ^ 4 < 9450244186112 := by decide
    have h2 : 9450244186112 < (1753 + 1) ^ 4 := by decide
    exact hD ▸ not_pow4_of_between h1 h2 A
  · have hD : sizeDiff26 9 = 31980846315602 := by decide
    have h1 : (2378 : Nat) ^ 4 < 31980846315602 := by decide
    have h2 : 31980846315602 < (2378 + 1) ^ 4 := by decide
    exact hD ▸ not_pow4_of_between h1 h2 A
  · have hD : sizeDiff26 10 = 96993205379072 := by decide
    have h1 : (3138 : Nat) ^ 4 < 96993205379072 := by decide
    have h2 : 96993205379072 < (3138 + 1) ^ 4 := by decide
    exact hD ▸ not_pow4_of_between h1 h2 A

theorem not_pow4_sizeDiff26_11_20
    {B : Nat} (hB : B ∈ Finset.Icc 11 20)
    (A : Nat) : A ^ 4 ≠ sizeDiff26 B := by
  fin_cases hB
  · have hD : sizeDiff26 11 = 268352394448322 := by decide
    have h1 : (4047 : Nat) ^ 4 < 268352394448322 := by decide
    have h2 : 268352394448322 < (4047 + 1) ^ 4 := by decide
    exact hD ▸ not_pow4_of_between h1 h2 A
  · have hD : sizeDiff26 12 = 686721567875072 := by decide
    have h1 : (5119 : Nat) ^ 4 < 686721567875072 := by decide
    have h2 : 686721567875072 < (5119 + 1) ^ 4 := by decide
    exact hD ▸ not_pow4_of_between h1 h2 A
  · have hD : sizeDiff26 13 = 1643319961767122 := by decide
    have h1 : (6366 : Nat) ^ 4 < 1643319961767122 := by decide
    have h2 : 1643319961767122 < (6366 + 1) ^ 4 := by decide
    exact hD ▸ not_pow4_of_between h1 h2 A
  · have hD : sizeDiff26 14 = 3709884854116352 := by decide
    have h1 : (7804 : Nat) ^ 4 < 3709884854116352 := by decide
    have h2 : 3709884854116352 < (7804 + 1) ^ 4 := by decide
    exact hD ▸ not_pow4_of_between h1 h2 A
  · have hD : sizeDiff26 15 = 7958382964546562 := by decide
    have h1 : (9445 : Nat) ^ 4 < 7958382964546562 := by decide
    have h2 : 7958382964546562 < (9445 + 1) ^ 4 := by decide
    exact hD ▸ not_pow4_of_between h1 h2 A
  · have hD : sizeDiff26 16 = 16319365238300672 := by decide
    have h1 : (11302 : Nat) ^ 4 < 16319365238300672 := by decide
    have h2 : 16319365238300672 < (11302 + 1) ^ 4 := by decide
    exact hD ▸ not_pow4_of_between h1 h2 A
  · have hD : sizeDiff26 17 = 32148405429351122 := by decide
    have h1 : (13390 : Nat) ^ 4 < 32148405429351122 := by decide
    have h2 : 32148405429351122 < (13390 + 1) ^ 4 := by decide
    exact hD ▸ not_pow4_of_between h1 h2 A
  · have hD : sizeDiff26 18 = 61097035134328832 := by decide
    have h1 : (15721 : Nat) ^ 4 < 61097035134328832 := by decide
    have h2 : 61097035134328832 < (15721 + 1) ^ 4 := by decide
    exact hD ▸ not_pow4_of_between h1 h2 A
  · have hD : sizeDiff26 19 = 112419394276862402 := by decide
    have h1 : (18310 : Nat) ^ 4 < 112419394276862402 := by decide
    have h2 : 112419394276862402 < (18310 + 1) ^ 4 := by decide
    exact hD ▸ not_pow4_of_between h1 h2 A
  · have hD : sizeDiff26 20 = 200890057883082752 := by decide
    have h1 : (21170 : Nat) ^ 4 < 200890057883082752 := by decide
    have h2 : 200890057883082752 < (21170 + 1) ^ 4 := by decide
    exact hD ▸ not_pow4_of_between h1 h2 A

theorem not_pow4_sizeDiff26_21_30
    {B : Nat} (hB : B ∈ Finset.Icc 21 30)
    (A : Nat) : A ^ 4 ≠ sizeDiff26 B := by
  fin_cases hB
  · have hD : sizeDiff26 21 = 349563984197347922 := by decide
    have h1 : (24315 : Nat) ^ 4 < 349563984197347922 := by decide
    have h2 : 349563984197347922 < (24315 + 1) ^ 4 := by decide
    exact hD ▸ not_pow4_of_between h1 h2 A
  · have hD : sizeDiff26 22 = 593678280582275072 := by decide
    have h1 : (27757 : Nat) ^ 4 < 593678280582275072 := by decide
    have h2 : 593678280582275072 < (27757 + 1) ^ 4 := by decide
    exact hD ▸ not_pow4_of_between h1 h2 A
  · have hD : sizeDiff26 23 = 986079757448298242 := by decide
    have h1 : (31512 : Nat) ^ 4 < 986079757448298242 := by decide
    have h2 : 986079757448298242 < (31512 + 1) ^ 4 := by decide
    exact hD ▸ not_pow4_of_between h1 h2 A
  · have hD : sizeDiff26 24 = 1604664534738378752 := by decide
    have h1 : (35591 : Nat) ^ 4 < 1604664534738378752 := by decide
    have h2 : 1604664534738378752 < (35591 + 1) ^ 4 := by decide
    exact hD ▸ not_pow4_of_between h1 h2 A
  · have hD : sizeDiff26 25 = 2562439033634210642 := by decide
    have h1 : (40009 : Nat) ^ 4 < 2562439033634210642 := by decide
    have h2 : 2562439033634210642 < (40009 + 1) ^ 4 := by decide
    exact hD ▸ not_pow4_of_between h1 h2 A
  · have hD : sizeDiff26 26 = 4020958549294211072 := by decide
    have h1 : (44779 : Nat) ^ 4 < 4020958549294211072 := by decide
    have h2 : 4020958549294211072 < (44779 + 1) ^ 4 := by decide
    exact hD ▸ not_pow4_of_between h1 h2 A
  · have hD : sizeDiff26 27 = 6208073559939625922 := by decide
    have h1 : (49915 : Nat) ^ 4 < 6208073559939625922 := by decide
    have h2 : 6208073559939625922 < (49915 + 1) ^ 4 := by decide
    exact hD ▸ not_pow4_of_between h1 h2 A
  · have hD : sizeDiff26 28 = 9441118577502052352 := by decide
    have h1 : (55431 : Nat) ^ 4 < 9441118577502052352 := by decide
    have h2 : 9441118577502052352 < (55431 + 1) ^ 4 := by decide
    exact hD ▸ not_pow4_of_between h1 h2 A
  · have hD : sizeDiff26 29 = 14156917584486440402 := by decide
    have h1 : (61339 : Nat) ^ 4 < 14156917584486440402 := by decide
    have h2 : 14156917584486440402 < (61339 + 1) ^ 4 := by decide
    exact hD ▸ not_pow4_of_between h1 h2 A
  · have hD : sizeDiff26 30 = 20950258147419103232 := by decide
    have h1 : (67654 : Nat) ^ 4 < 20950258147419103232 := by decide
    have h2 : 20950258147419103232 < (67654 + 1) ^ 4 := by decide
    exact hD ▸ not_pow4_of_between h1 h2 A

theorem not_pow4_sizeDiff26_31_40
    {B : Nat} (hB : B ∈ Finset.Icc 31 40)
    (A : Nat) : A ^ 4 ≠ sizeDiff26 B := by
  fin_cases hB
  · have hD : sizeDiff26 31 = 30622807696003461122 := by decide
    have h1 : (74389 : Nat) ^ 4 < 30622807696003461122 := by decide
    have h2 : 30622807696003461122 < (74389 + 1) ^ 4 := by decide
    exact hD ▸ not_pow4_of_between h1 h2 A
  · have hD : sizeDiff26 32 = 44244815098146332672 := by decide
    have h1 : (81557 : Nat) ^ 4 < 44244815098146332672 := by decide
    have h2 : 44244815098146332672 < (81557 + 1) ^ 4 := by decide
    exact hD ▸ not_pow4_of_between h1 h2 A
  · have hD : sizeDiff26 33 = 63232363788533918162 := by decide
    have h1 : (89173 : Nat) ^ 4 < 63232363788533918162 := by decide
    have h2 : 63232363788533918162 < (89173 + 1) ^ 4 := by decide
    exact hD ▸ not_pow4_of_between h1 h2 A
  · have hD : sizeDiff26 34 = 89443424934012772352 := by decide
    have h1 : (97249 : Nat) ^ 4 < 89443424934012772352 := by decide
    have h2 : 89443424934012772352 < (97249 + 1) ^ 4 := by decide
    exact hD ▸ not_pow4_of_between h1 h2 A
  · have hD : sizeDiff26 35 = 125296506434098883522 := by decide
    have h1 : (105799 : Nat) ^ 4 < 125296506434098883522 := by decide
    have h2 : 125296506434098883522 < (105799 + 1) ^ 4 := by decide
    exact hD ▸ not_pow4_of_between h1 h2 A
  · have hD : sizeDiff26 36 = 173916312343231619072 := by decide
    have h1 : (114837 : Nat) ^ 4 < 173916312343231619072 := by decide
    have h2 : 173916312343231619072 < (114837 + 1) ^ 4 := by decide
    exact hD ▸ not_pow4_of_between h1 h2 A
  · have hD : sizeDiff26 37 = 239311524351399274322 := by decide
    have h1 : (124377 : Nat) ^ 4 < 239311524351399274322 := by decide
    have h2 : 239311524351399274322 < (124377 + 1) ^ 4 := by decide
    exact hD ▸ not_pow4_of_between h1 h2 A
  · have hD : sizeDiff26 38 = 326590599477190172672 := by decide
    have h1 : (134431 : Nat) ^ 4 < 326590599477190172672 := by decide
    have h2 : 326590599477190172672 < (134431 + 1) ^ 4 := by decide
    exact hD ▸ not_pow4_of_between h1 h2 A
  · have hD : sizeDiff26 39 = 442222353747533049602 := by decide
    have h1 : (145014 : Nat) ^ 4 < 442222353747533049602 := by decide
    have h2 : 442222353747533049602 < (145014 + 1) ^ 4 := by decide
    exact hD ▸ not_pow4_of_between h1 h2 A
  · have hD : sizeDiff26 40 = 594349078438866624512 := by decide
    have h1 : (156138 : Nat) ^ 4 < 594349078438866624512 := by decide
    have h2 : 594349078438866624512 < (156138 + 1) ^ 4 := by decide
    exact hD ▸ not_pow4_of_between h1 h2 A

theorem not_pow4_sizeDiff26_41_50
    {B : Nat} (hB : B ∈ Finset.Icc 41 50)
    (A : Nat) : A ^ 4 ≠ sizeDiff26 B := by
  fin_cases hB
  · have hD : sizeDiff26 41 = 793161021967277155922 := by decide
    have h1 : (167818 : Nat) ^ 4 < 793161021967277155922 := by decide
    have h2 : 793161021967277155922 < (167818 + 1) ^ 4 := by decide
    exact hD ▸ not_pow4_of_between h1 h2 A
  · have hD : sizeDiff26 42 = 1051342275739347279872 := by decide
    have h1 : (180067 : Nat) ^ 4 < 1051342275739347279872 := by decide
    have h2 : 1051342275739347279872 < (180067 + 1) ^ 4 := by decide
    exact hD ▸ not_pow4_of_between h1 h2 A
  · have hD : sizeDiff26 43 = 1384599435689633042882 := by decide
    have h1 : (192899 : Nat) ^ 4 < 1384599435689633042882 := by decide
    have h2 : 1384599435689633042882 < (192899 + 1) ^ 4 := by decide
    exact hD ▸ not_pow4_of_between h1 h2 A
  · have hD : sizeDiff26 44 = 1812285882805326897152 := by decide
    have h1 : (206327 : Nat) ^ 4 < 1812285882805326897152 := by decide
    have h2 : 1812285882805326897152 < (206327 + 1) ^ 4 := by decide
    exact hD ▸ not_pow4_of_between h1 h2 A
  · have hD : sizeDiff26 45 = 2358136146148659349202 := by decide
    have h1 : (220364 : Nat) ^ 4 < 2358136146148659349202 := by decide
    have h2 : 2358136146148659349202 < (220364 + 1) ^ 4 := by decide
    exact hD ▸ not_pow4_of_between h1 h2 A
  · have hD : sizeDiff26 46 = 3051126591724670492672 := by decide
    have h1 : (235025 : Nat) ^ 4 < 3051126591724670492672 := by decide
    have h2 : 3051126591724670492672 < (235025 + 1) ^ 4 := by decide
    exact hD ▸ not_pow4_of_between h1 h2 A
  · have hD : sizeDiff26 47 = 3926480631527171128322 := by decide
    have h1 : (250323 : Nat) ^ 4 < 3926480631527171128322 := by decide
    have h2 : 3926480631527171128322 < (250323 + 1) ^ 4 := by decide
    exact hD ▸ not_pow4_of_between h1 h2 A
  · have hD : sizeDiff26 48 = 5026838781291788705792 := by decide
    have h1 : (266270 : Nat) ^ 4 < 5026838781291788705792 := by decide
    have h2 : 5026838781291788705792 < (266270 + 1) ^ 4 := by decide
    exact hD ▸ not_pow4_of_between h1 h2 A
  · have hD : sizeDiff26 49 = 6403616225508937890002 := by decide
    have h1 : (282882 : Nat) ^ 4 < 6403616225508937890002 := by decide
    have h2 : 6403616225508937890002 < (282882 + 1) ^ 4 := by decide
    exact hD ▸ not_pow4_of_between h1 h2 A
  · have hD : sizeDiff26 50 = 8118573087285010030592 := by decide
    have h1 : (300171 : Nat) ^ 4 < 8118573087285010030592 := by decide
    have h2 : 8118573087285010030592 < (300171 + 1) ^ 4 := by decide
    exact hD ▸ not_pow4_of_between h1 h2 A

theorem not_pow4_sizeDiff26_51_60
    {B : Nat} (hB : B ∈ Finset.Icc 51 60)
    (A : Nat) : A ^ 4 ≠ sizeDiff26 B := by
  fin_cases hB
  · have hD : sizeDiff26 51 = 10245625362449794000322 := by decide
    have h1 : (318151 : Nat) ^ 4 < 10245625362449794000322 := by decide
    have h2 : 10245625362449794000322 < (318151 + 1) ^ 4 := by decide
    exact hD ▸ not_pow4_of_between h1 h2 A
  · have hD : sizeDiff26 52 = 12872927476246443548672 := by decide
    have h1 : (336836 : Nat) ^ 4 < 12872927476246443548672 := by decide
    have h2 : 12872927476246443548672 < (336836 + 1) ^ 4 := by decide
    exact hD ▸ not_pow4_of_between h1 h2 A
  · have hD : sizeDiff26 53 = 16105260671965535288402 := by decide
    have h1 : (356239 : Nat) ^ 4 < 16105260671965535288402 := by decide
    have h2 : 16105260671965535288402 < (356239 + 1) ^ 4 := by decide
    exact hD ▸ not_pow4_of_between h1 h2 A
  · have hD : sizeDiff26 54 = 20066764959571733553152 := by decide
    have h1 : (376373 : Nat) ^ 4 < 20066764959571733553152 := by decide
    have h2 : 20066764959571733553152 < (376373 + 1) ^ 4 := by decide
    exact hD ▸ not_pow4_of_between h1 h2 A
  · have hD : sizeDiff26 55 = 24904056154924039591682 := by decide
    have h1 : (397253 : Nat) ^ 4 < 24904056154924039591682 := by decide
    have h2 : 24904056154924039591682 < (397253 + 1) ^ 4 := by decide
    exact hD ▸ not_pow4_of_between h1 h2 A
  · have hD : sizeDiff26 56 = 30789773643453681999872 := by decide
    have h1 : (418891 : Nat) ^ 4 < 30789773643453681999872 := by decide
    have h2 : 30789773643453681999872 < (418891 + 1) ^ 4 := by decide
    exact hD ▸ not_pow4_of_between h1 h2 A
  · have hD : sizeDiff26 57 = 37926608923636369219922 := by decide
    have h1 : (441302 : Nat) ^ 4 < 37926608923636369219922 := by decide
    have h2 : 37926608923636369219922 < (441302 + 1) ^ 4 := by decide
    exact hD ▸ not_pow4_of_between h1 h2 A
  · have hD : sizeDiff26 58 = 46551869743443130867712 := by decide
    have h1 : (464498 : Nat) ^ 4 < 46551869743443130867712 := by decide
    have h2 : 46551869743443130867712 < (464498 + 1) ^ 4 := by decide
    exact hD ▸ not_pow4_of_between h1 h2 A
  · have hD : sizeDiff26 59 = 56942639756020325361602 := by decide
    have h1 : (488494 : Nat) ^ 4 < 56942639756020325361602 := by decide
    have h2 : 56942639756020325361602 < (488494 + 1) ^ 4 := by decide
    exact hD ▸ not_pow4_of_between h1 h2 A
  · have hD : sizeDiff26 60 = 69421599108669788905472 := by decide
    have h1 : (513302 : Nat) ^ 4 < 69421599108669788905472 := by decide
    have h2 : 69421599108669788905472 < (513302 + 1) ^ 4 := by decide
    exact hD ▸ not_pow4_of_between h1 h2 A

theorem not_pow4_sizeDiff26_61_70
    {B : Nat} (hB : B ∈ Finset.Icc 61 70)
    (A : Nat) : A ^ 4 ≠ sizeDiff26 B := by
  fin_cases hB
  · have hD : sizeDiff26 61 = 84363577262013400762322 := by decide
    have h1 : (538937 : Nat) ^ 4 < 84363577262013400762322 := by decide
    have h2 : 84363577262013400762322 < (538937 + 1) ^ 4 := by decide
    exact hD ▸ not_pow4_of_between h1 h2 A
  · have hD : sizeDiff26 62 = 102202915634987504771072 := by decide
    have h1 : (565413 : Nat) ^ 4 < 102202915634987504771072 := by decide
    have h2 : 102202915634987504771072 < (565413 + 1) ^ 4 := by decide
    exact hD ▸ not_pow4_of_between h1 h2 A
  · have hD : sizeDiff26 63 = 123441724407705181470722 := by decide
    have h1 : (592741 : Nat) ^ 4 < 123441724407705181470722 := by decide
    have h2 : 123441724407705181470722 < (592741 + 1) ^ 4 := by decide
    exact hD ▸ not_pow4_of_between h1 h2 A
  · have hD : sizeDiff26 64 = 148659125010672848740352 := by decide
    have h1 : (620937 : Nat) ^ 4 < 148659125010672848740352 := by decide
    have h2 : 148659125010672848740352 < (620937 + 1) ^ 4 := by decide
    exact hD ▸ not_pow4_of_between h1 h2 A
  · have hD : sizeDiff26 65 = 178521577508530090794962 := by decide
    have h1 : (650013 : Nat) ^ 4 < 178521577508530090794962 := by decide
    have h2 : 178521577508530090794962 < (650013 + 1) ^ 4 := by decide
    exact hD ▸ not_pow4_of_between h1 h2 A
  · have hD : sizeDiff26 66 = 213794400273341908508672 := by decide
    have h1 : (679984 : Nat) ^ 4 < 213794400273341908508672 := by decide
    have h2 : 213794400273341908508672 < (679984 + 1) ^ 4 := by decide
    exact hD ▸ not_pow4_of_between h1 h2 A
  · have hD : sizeDiff26 67 = 255354598061233058781122 := by decide
    have h1 : (710863 : Nat) ^ 4 < 255354598061233058781122 := by decide
    have h2 : 255354598061233058781122 < (710863 + 1) ^ 4 := by decide
    exact hD ▸ not_pow4_of_between h1 h2 A
  · have hD : sizeDiff26 68 = 304205123882327949074432 := by decide
    have h1 : (742662 : Nat) ^ 4 < 304205123882327949074432 := by decide
    have h2 : 304205123882327949074432 < (742662 + 1) ^ 4 := by decide
    exact hD ▸ not_pow4_of_between h1 h2 A
  · have hD : sizeDiff26 69 = 361490709913863103064402 := by decide
    have h1 : (775397 : Nat) ^ 4 < 361490709913863103064402 := by decide
    have h2 : 361490709913863103064402 < (775397 + 1) ^ 4 := by decide
    exact hD ▸ not_pow4_of_between h1 h2 A
  · have hD : sizeDiff26 70 = 428515413177104682033152 := by decide
    have h1 : (809080 : Nat) ^ 4 < 428515413177104682033152 := by decide
    have h2 : 428515413177104682033152 < (809080 + 1) ^ 4 := by decide
    exact hD ▸ not_pow4_of_between h1 h2 A

theorem not_pow4_sizeDiff26_71_80
    {B : Nat} (hB : B ∈ Finset.Icc 71 80)
    (A : Nat) : A ^ 4 ≠ sizeDiff26 B := by
  fin_cases hB
  · have hD : sizeDiff26 71 = 506762032808291295409922 := by decide
    have h1 : (843725 : Nat) ^ 4 < 506762032808291295409922 := by decide
    have h2 : 506762032808291295409922 < (843725 + 1) ^ 4 := by decide
    exact hD ▸ not_pow4_of_between h1 h2 A
  · have hD : sizeDiff26 72 = 597913567531033371779072 := by decide
    have h1 : (879345 : Nat) ^ 4 < 597913567531033371779072 := by decide
    have h2 : 597913567531033371779072 < (879345 + 1) ^ 4 := by decide
    exact hD ▸ not_pow4_of_between h1 h2 A
  · have hD : sizeDiff26 73 = 703876894412088799605842 := by decide
    have h1 : (915955 : Nat) ^ 4 < 703876894412088799605842 := by decide
    have h2 : 703876894412088799605842 < (915955 + 1) ^ 4 := by decide
    exact hD ▸ not_pow4_of_between h1 h2 A
  · have hD : sizeDiff26 74 = 826808863184720051658752 := by decide
    have h1 : (953567 : Nat) ^ 4 < 826808863184720051658752 := by decide
    have h2 : 826808863184720051658752 < (953567 + 1) ^ 4 := by decide
    exact hD ▸ not_pow4_of_between h1 h2 A
  · have hD : sizeDiff26 75 = 969145014385318255343042 := by decide
    have h1 : (992195 : Nat) ^ 4 < 969145014385318255343042 := by decide
    have h2 : 969145014385318255343042 < (992195 + 1) ^ 4 := by decide
    exact hD ▸ not_pow4_of_between h1 h2 A
  · have hD : sizeDiff26 76 = 1133631144301942803587072 := by decide
    have h1 : (1031853 : Nat) ^ 4 < 1133631144301942803587072 := by decide
    have h2 : 1133631144301942803587072 < (1031853 + 1) ^ 4 := by decide
    exact hD ▸ not_pow4_of_between h1 h2 A
  · have hD : sizeDiff26 77 = 1323357955311062176243922 := by decide
    have h1 : (1072554 : Nat) ^ 4 < 1323357955311062176243922 := by decide
    have h2 : 1323357955311062176243922 < (1072554 + 1) ^ 4 := by decide
    exact hD ▸ not_pow4_of_between h1 h2 A
  · have hD : sizeDiff26 78 = 1541799046615199090941952 := by decide
    have h1 : (1114312 : Nat) ^ 4 < 1541799046615199090941952 := by decide
    have h2 : 1541799046615199090941952 < (1114312 + 1) ^ 4 := by decide
    exact hD ▸ not_pow4_of_between h1 h2 A
  · have hD : sizeDiff26 79 = 1792852517724415181798402 := by decide
    have h1 : (1157140 : Nat) ^ 4 < 1792852517724415181798402 := by decide
    have h2 : 1792852517724415181798402 < (1157140 + 1) ^ 4 := by decide
    exact hD ▸ not_pow4_of_between h1 h2 A
  · have hD : sizeDiff26 80 = 2080886475284591651397632 := by decide
    have h1 : (1201052 : Nat) ^ 4 < 2080886475284591651397632 := by decide
    have h2 : 2080886475284591651397632 < (1201052 + 1) ^ 4 := by decide
    exact hD ▸ not_pow4_of_between h1 h2 A

theorem not_pow4_sizeDiff26_81_90
    {B : Nat} (hB : B ∈ Finset.Icc 81 90)
    (A : Nat) : A ^ 4 ≠ sizeDiff26 B := by
  fin_cases hB
  · have hD : sizeDiff26 81 = 2410788753082200027111122 := by decide
    have h1 : (1246062 : Nat) ^ 4 < 2410788753082200027111122 := by decide
    have h2 : 2410788753082200027111122 < (1246062 + 1) ^ 4 := by decide
    exact hD ▸ not_pow4_of_between h1 h2 A
  · have hD : sizeDiff26 82 = 2788021175286603736604672 := by decide
    have h1 : (1292182 : Nat) ^ 4 < 2788021175286603736604672 := by decide
    have h2 : 2788021175286603736604672 < (1292182 + 1) ^ 4 := by decide
    exact hD ▸ not_pow4_of_between h1 h2 A
  · have hD : sizeDiff26 83 = 3218678714265756800909762 := by decide
    have h1 : (1339428 : Nat) ^ 4 < 3218678714265756800909762 := by decide
    have h2 : 3218678714265756800909762 < (1339428 + 1) ^ 4 := by decide
    exact hD ▸ not_pow4_of_between h1 h2 A
  · have hD : sizeDiff26 84 = 3709553916669330724708352 := by decide
    have h1 : (1387811 : Nat) ^ 4 < 3709553916669330724708352 := by decide
    have h2 : 3709553916669330724708352 < (1387811 + 1) ^ 4 := by decide
    exact hD ▸ not_pow4_of_between h1 h2 A
  · have hD : sizeDiff26 85 = 4268206994955667390819922 := by decide
    have h1 : (1437346 : Nat) ^ 4 < 4268206994955667390819922 := by decide
    have h2 : 4268206994955667390819922 < (1437346 + 1) ^ 4 := by decide
    exact hD ▸ not_pow4_of_between h1 h2 A
  · have hD : sizeDiff26 86 = 4903042006187402192003072 := by decide
    have h1 : (1488046 : Nat) ^ 4 < 4903042006187402192003072 := by decide
    have h2 : 4903042006187402192003072 < (1488046 + 1) ^ 4 := by decide
    exact hD ▸ not_pow4_of_between h1 h2 A
  · have hD : sizeDiff26 87 = 5623389565778032969240322 := by decide
    have h1 : (1539924 : Nat) ^ 4 < 5623389565778032969240322 := by decide
    have h2 : 5623389565778032969240322 < (1539924 + 1) ^ 4 := by decide
    exact hD ▸ not_pow4_of_between h1 h2 A
  · have hD : sizeDiff26 88 = 6439596570982071695286272 := by decide
    have h1 : (1592995 : Nat) ^ 4 < 6439596570982071695286272 := by decide
    have h2 : 6439596570982071695286272 < (1592995 + 1) ^ 4 := by decide
    exact hD ▸ not_pow4_of_between h1 h2 A
  · have hD : sizeDiff26 89 = 7363123437329704735563602 := by decide
    have h1 : (1647272 : Nat) ^ 4 < 7363123437329704735563602 := by decide
    have h2 : 7363123437329704735563602 < (1647272 + 1) ^ 4 := by decide
    exact hD ▸ not_pow4_of_between h1 h2 A
  · have hD : sizeDiff26 90 = 8406649380959166246182912 := by decide
    have h1 : (1702768 : Nat) ^ 4 < 8406649380959166246182912 := by decide
    have h2 : 8406649380959166246182912 < (1702768 + 1) ^ 4 := by decide
    exact hD ▸ not_pow4_of_between h1 h2 A

theorem not_pow4_sizeDiff26_91_100
    {B : Nat} (hB : B ∈ Finset.Icc 91 100)
    (A : Nat) : A ^ 4 ≠ sizeDiff26 B := by
  fin_cases hB
  · have hD : sizeDiff26 91 = 9584186310943437416233922 := by decide
    have h1 : (1759498 : Nat) ^ 4 < 9584186310943437416233922 := by decide
    have h2 : 9584186310943437416233922 < (1759498 + 1) ^ 4 := by decide
    exact hD ▸ not_pow4_of_between h1 h2 A
  · have hD : sizeDiff26 92 = 10911201928290651142479872 := by decide
    have h1 : (1817473 : Nat) ^ 4 < 10911201928290651142479872 := by decide
    have h2 : 10911201928290651142479872 < (1817473 + 1) ^ 4 := by decide
    exact hD ▸ not_pow4_of_between h1 h2 A
  · have hD : sizeDiff26 93 = 12404752662369038835798482 := by decide
    have h1 : (1876709 : Nat) ^ 4 < 12404752662369038835798482 := by decide
    have h2 : 12404752662369038835798482 < (1876709 + 1) ^ 4 := by decide
    exact hD ▸ not_pow4_of_between h1 h2 A
  · have hD : sizeDiff26 94 = 14083627111117849533489152 := by decide
    have h1 : (1937218 : Nat) ^ 4 < 14083627111117849533489152 := by decide
    have h2 : 14083627111117849533489152 < (1937218 + 1) ^ 4 := by decide
    exact hD ▸ not_pow4_of_between h1 h2 A
  · have hD : sizeDiff26 95 = 15968500688606974554009602 := by decide
    have h1 : (1999014 : Nat) ^ 4 < 15968500688606974554009602 := by decide
    have h2 : 15968500688606974554009602 < (1999014 + 1) ^ 4 := by decide
    exact hD ▸ not_pow4_of_between h1 h2 A
  · have hD : sizeDiff26 96 = 18082102222352736349724672 := by decide
    have h1 : (2062111 : Nat) ^ 4 < 18082102222352736349724672 := by decide
    have h2 : 18082102222352736349724672 < (2062111 + 1) ^ 4 := by decide
    exact hD ▸ not_pow4_of_between h1 h2 A
  · have hD : sizeDiff26 97 = 20449393283339312756602322 := by decide
    have h1 : (2126523 : Nat) ^ 4 < 20449393283339312756602322 := by decide
    have h2 : 20449393283339312756602322 < (2126523 + 1) ^ 4 := by decide
    exact hD ▸ not_pow4_of_between h1 h2 A
  · have hD : sizeDiff26 98 = 23097761073989596728123392 := by decide
    have h1 : (2192262 : Nat) ^ 4 < 23097761073989596728123392 := by decide
    have h2 : 23097761073989596728123392 < (2192262 + 1) ^ 4 := by decide
    exact hD ▸ not_pow4_of_between h1 h2 A
  · have hD : sizeDiff26 99 = 26057225743432143001560002 := by decide
    have h1 : (2259342 : Nat) ^ 4 < 26057225743432143001560002 := by decide
    have h2 : 26057225743432143001560002 < (2259342 + 1) ^ 4 := by decide
    exact hD ▸ not_pow4_of_between h1 h2 A
  · have hD : sizeDiff26 100 = 29360663045379622466772992 := by decide
    have h1 : (2327777 : Nat) ^ 4 < 29360663045379622466772992 := by decide
    have h2 : 29360663045379622466772992 < (2327777 + 1) ^ 4 := by decide
    exact hD ▸ not_pow4_of_between h1 h2 A

theorem size_table_C_eq_B_plus_2_not_fourth_B_le_100
    {B : Nat} (hB : B ∈ Finset.Icc 1 100) (A : Nat) :
    A ^ 4 ≠ sizeDiff26 B := by
  have hmem := Finset.mem_Icc.mp hB
  rcases le_or_lt B 10 with h10 | h10
  · exact not_pow4_sizeDiff26_1_10 (Finset.mem_Icc.mpr ⟨hmem.1, h10⟩) A
  rcases le_or_lt B 20 with h20 | h20
  · exact not_pow4_sizeDiff26_11_20
      (Finset.mem_Icc.mpr ⟨Nat.succ_le_of_lt h10, h20⟩) A
  rcases le_or_lt B 30 with h30 | h30
  · exact not_pow4_sizeDiff26_21_30
      (Finset.mem_Icc.mpr ⟨Nat.succ_le_of_lt h20, h30⟩) A
  rcases le_or_lt B 40 with h40 | h40
  · exact not_pow4_sizeDiff26_31_40
      (Finset.mem_Icc.mpr ⟨Nat.succ_le_of_lt h30, h40⟩) A
  rcases le_or_lt B 50 with h50 | h50
  · exact not_pow4_sizeDiff26_41_50
      (Finset.mem_Icc.mpr ⟨Nat.succ_le_of_lt h40, h50⟩) A
  rcases le_or_lt B 60 with h60 | h60
  · exact not_pow4_sizeDiff26_51_60
      (Finset.mem_Icc.mpr ⟨Nat.succ_le_of_lt h50, h60⟩) A
  rcases le_or_lt B 70 with h70 | h70
  · exact not_pow4_sizeDiff26_61_70
      (Finset.mem_Icc.mpr ⟨Nat.succ_le_of_lt h60, h70⟩) A
  rcases le_or_lt B 80 with h80 | h80
  · exact not_pow4_sizeDiff26_71_80
      (Finset.mem_Icc.mpr ⟨Nat.succ_le_of_lt h70, h80⟩) A
  rcases le_or_lt B 90 with h90 | h90
  · exact not_pow4_sizeDiff26_81_90
      (Finset.mem_Icc.mpr ⟨Nat.succ_le_of_lt h80, h90⟩) A
  exact not_pow4_sizeDiff26_91_100
    (Finset.mem_Icc.mpr ⟨Nat.succ_le_of_lt h90, hmem.2⟩) A

theorem beal_4_13_13_B_le_100_C_eq_B_plus_1_no_fourth_power
    (B : Nat) (hB1 : 1 ≤ B) (hB100 : B ≤ 100) :
    ¬ ∃ A : Nat,
        A ^ 4 = (B + 1) ^ 13 - B ^ 13 ∧ Odd A ∧ 53 ≤ A ∧ B ^ 3 ≤ A := by
  intro h
  rcases h with ⟨A, hA4, _hOdd, _hGe53, _hGeB3⟩
  have hmem : B ∈ Finset.Icc 1 100 := Finset.mem_Icc.mpr ⟨hB1, hB100⟩
  have hne : A ^ 4 ≠ sizeDiff13 B := size_table_not_fourth_B_le_100 hmem A
  exact hne (hA4.trans (sizeDiff13_eq B).symm)

theorem beal_4_13_13_B_le_100_C_eq_B_plus_2_no_fourth_power
    (B : Nat) (hB1 : 1 ≤ B) (hB100 : B ≤ 100) :
    ¬ ∃ A : Nat,
        A ^ 4 = (B + 2) ^ 13 - B ^ 13 ∧ Odd A ∧ 53 ≤ A ∧ B ^ 3 ≤ A := by
  intro h
  rcases h with ⟨A, hA4, _hOdd, _hGe53, _hGeB3⟩
  have hmem : B ∈ Finset.Icc 1 100 := Finset.mem_Icc.mpr ⟨hB1, hB100⟩
  have hne : A ^ 4 ≠ sizeDiff26 B :=
    size_table_C_eq_B_plus_2_not_fourth_B_le_100 hmem A
  exact hne (hA4.trans (sizeDiff26_eq B).symm)

theorem beal_odd_A_ge3_B_le_100_C_le_B_plus_2_closed
    (A B C : Nat) (h : A ^ 4 + B ^ 13 = C ^ 13)
    (hOddA : Odd A ∧ 3 ≤ A) (hB1 : 1 ≤ B) (hB100 : B ≤ 100)
    (hCge1 : B + 1 ≤ C) (hCle2 : C ≤ B + 2)
    (_hA_ge_53 : 53 ≤ A) (_hA_ge_B3 : B ^ 3 ≤ A) : False := by
  have hCeq : C = B + 1 ∨ C = B + 2 := by omega
  have hOdd : Odd A := hOddA.1
  have hGe53 : 53 ≤ A := _hA_ge_53
  have hGeB3 : B ^ 3 ≤ A := _hA_ge_B3
  rcases hCeq with h1 | h2
  · have hDiff : A ^ 4 = (B + 1) ^ 13 - B ^ 13 := by
      rw [h1] at h
      rw [← h, Nat.add_comm, Nat.add_sub_cancel_left]
    exact beal_4_13_13_B_le_100_C_eq_B_plus_1_no_fourth_power
      B hB1 hB100 ⟨A, hDiff, hOdd, hGe53, hGeB3⟩
  · have hDiff : A ^ 4 = (B + 2) ^ 13 - B ^ 13 := by
      rw [h2] at h
      rw [← h, Nat.add_comm, Nat.add_sub_cancel_left]
    exact beal_4_13_13_B_le_100_C_eq_B_plus_2_no_fourth_power
      B hB1 hB100 ⟨A, hDiff, hOdd, hGe53, hGeB3⟩

/-- Packaged slice: derive `A ≥ 53` and `A ≥ B³`,
then close `C ∈ {B+1, B+2}` for `B ≤ 100`. -/
theorem beal_odd_A_ge3_B_le_100_closed_C_le_B_plus_2
    (A B C : Nat) (h : A ^ 4 + B ^ 13 = C ^ 13)
    (hOddA : Odd A ∧ 3 ≤ A) (hCoprime : Nat.Coprime C B)
    (hB1 : 1 ≤ B) (hB100 : B ≤ 100)
    (hCge1 : B + 1 ≤ C) (hCle2 : C ≤ B + 2) : False := by
  have hApos : 0 < A := Nat.zero_lt_of_lt hOddA.2
  have hA53 : 53 ≤ A := beal_odd_A_ge3_A_ge_53 A B C h hOddA hCoprime
  have hAB3 : B ^ 3 ≤ A := beal_4_13_13_A_ge_B_pow_3 h hApos
  exact beal_odd_A_ge3_B_le_100_C_le_B_plus_2_closed
    A B C h hOddA hB1 hB100 hCge1 hCle2 hA53 hAB3

theorem beal_odd_A_ge3_B_le_100_slice_C_le_B_plus_2_closed :
    ∀ A B C : Nat,
      A ^ 4 + B ^ 13 = C ^ 13 →
      Odd A ∧ 3 ≤ A → Nat.Coprime C B →
      1 ≤ B → B ≤ 100 → B + 1 ≤ C → C ≤ B + 2 → False :=
  beal_odd_A_ge3_B_le_100_closed_C_le_B_plus_2

/-- Uninhabited.  `C ≥ B+3` is outside the
`C = B+1` / `C = B+2` tables. -/
def beal_odd_A_ge3_B_le_100_C_ge_B_plus_3_closed : Prop :=
  ∀ A B C : Nat,
    A ^ 4 + B ^ 13 = C ^ 13 →
    Odd A → 3 ≤ A → Nat.Coprime C B →
    1 ≤ B → B ≤ 100 → B + 3 ≤ C → False

end BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step6_B_le_100_closed
