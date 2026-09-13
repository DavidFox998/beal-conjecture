/-
Copyright (c) 2026 David Fox. All rights reserved.
Released under MIT license as described in the file LICENSE.
Authors: David Fox

Track B v8.17.0 — `TWAuxEllFixed` at `N = 26` and `N = 10000`
for residuals in `primes101to200`.  `Qᵢ > N` so `Qᵢ ∤ N`.
Not `∀ N ≤ 10000`.  `ℓ = 941` needs `Q₁ = 30113`
(`N + 21000`, not `N + 20000`).
-/

import BealLevel26Foundations.Beal.FullProof.TWAuxEllFixedCore
import BealLevel26Foundations.Beal.FullProof.TWPrimesQ2_101_200
import Mathlib.Tactic

namespace BealLevel26Foundations.Beal.FullProof.TWAuxEllFixed_101_200

open BealLevel26Foundations.Beal.FullProof.TWAuxEllFixedCore
open BealLevel26Foundations.Beal.FullProof.TWPrimes_101_200
open BealLevel26Foundations.Beal.FullProof.TWPrimesQ2_101_200
open BealLevel26Foundations.Beal.FullProof.TWPrimesPratt

set_option maxHeartbeats 4000000
set_option maxRecDepth 2048
def twaux_26_101 : TWAuxEllFixed 101 26 where
  Q1ell := 607
  Q2ell := 224423
  Q1_prime := by norm_num
  Q2_prime := (q2_witness_101).1
  Q1_mod := by decide
  Q2_mod := by decide
  Q1_ge5 := by decide
  Q2_ge5 := by decide
  Q1_ne_Q2 := by decide
  Q1_gt_N := by decide
  Q2_gt_N := by decide

theorem twaux_exists_26_101 : TWAuxEllFixedExists 101 26 :=
  ⟨twaux_26_101⟩

def twaux_10000_101 : TWAuxEllFixed 101 10000 where
  Q1ell := 10303
  Q2ell := 224423
  Q1_prime := by norm_num
  Q2_prime := (q2_witness_101).1
  Q1_mod := by decide
  Q2_mod := by decide
  Q1_ge5 := by decide
  Q2_ge5 := by decide
  Q1_ne_Q2 := by decide
  Q1_gt_N := by decide
  Q2_gt_N := by decide

theorem twaux_exists_10000_101 : TWAuxEllFixedExists 101 10000 :=
  ⟨twaux_10000_101⟩

def twaux_26_103 : TWAuxEllFixed 103 26 where
  Q1ell := 619
  Q2ell := 42437
  Q1_prime := by norm_num
  Q2_prime := (q2_witness_103).1
  Q1_mod := by decide
  Q2_mod := by decide
  Q1_ge5 := by decide
  Q2_ge5 := by decide
  Q1_ne_Q2 := by decide
  Q1_gt_N := by decide
  Q2_gt_N := by decide

theorem twaux_exists_26_103 : TWAuxEllFixedExists 103 26 :=
  ⟨twaux_26_103⟩

def twaux_10000_103 : TWAuxEllFixed 103 10000 where
  Q1ell := 10301
  Q2ell := 42437
  Q1_prime := by norm_num
  Q2_prime := (q2_witness_103).1
  Q1_mod := by decide
  Q2_mod := by decide
  Q1_ge5 := by decide
  Q2_ge5 := by decide
  Q1_ne_Q2 := by decide
  Q1_gt_N := by decide
  Q2_gt_N := by decide

theorem twaux_exists_10000_103 : TWAuxEllFixedExists 103 10000 :=
  ⟨twaux_10000_103⟩

def twaux_26_107 : TWAuxEllFixed 107 26 where
  Q1ell := 643
  Q2ell := 206083
  Q1_prime := by norm_num
  Q2_prime := (q2_witness_107).1
  Q1_mod := by decide
  Q2_mod := by decide
  Q1_ge5 := by decide
  Q2_ge5 := by decide
  Q1_ne_Q2 := by decide
  Q1_gt_N := by decide
  Q2_gt_N := by decide

theorem twaux_exists_26_107 : TWAuxEllFixedExists 107 26 :=
  ⟨twaux_26_107⟩

def twaux_10000_107 : TWAuxEllFixed 107 10000 where
  Q1ell := 10273
  Q2ell := 206083
  Q1_prime := by norm_num
  Q2_prime := (q2_witness_107).1
  Q1_mod := by decide
  Q2_mod := by decide
  Q1_ge5 := by decide
  Q2_ge5 := by decide
  Q1_ne_Q2 := by decide
  Q1_gt_N := by decide
  Q2_gt_N := by decide

theorem twaux_exists_10000_107 : TWAuxEllFixedExists 107 10000 :=
  ⟨twaux_10000_107⟩

def twaux_26_109 : TWAuxEllFixed 109 26 where
  Q1ell := 1091
  Q2ell := 71287
  Q1_prime := by norm_num
  Q2_prime := (q2_witness_109).1
  Q1_mod := by decide
  Q2_mod := by decide
  Q1_ge5 := by decide
  Q2_ge5 := by decide
  Q1_ne_Q2 := by decide
  Q1_gt_N := by decide
  Q2_gt_N := by decide

theorem twaux_exists_26_109 : TWAuxEllFixedExists 109 26 :=
  ⟨twaux_26_109⟩

def twaux_10000_109 : TWAuxEllFixed 109 10000 where
  Q1ell := 10247
  Q2ell := 71287
  Q1_prime := by norm_num
  Q2_prime := (q2_witness_109).1
  Q1_mod := by decide
  Q2_mod := by decide
  Q1_ge5 := by decide
  Q2_ge5 := by decide
  Q1_ne_Q2 := by decide
  Q1_gt_N := by decide
  Q2_gt_N := by decide

theorem twaux_exists_10000_109 : TWAuxEllFixedExists 109 10000 :=
  ⟨twaux_10000_109⟩

def twaux_26_113 : TWAuxEllFixed 113 26 where
  Q1ell := 227
  Q2ell := 127691
  Q1_prime := by norm_num
  Q2_prime := (q2_witness_113).1
  Q1_mod := by decide
  Q2_mod := by decide
  Q1_ge5 := by decide
  Q2_ge5 := by decide
  Q1_ne_Q2 := by decide
  Q1_gt_N := by decide
  Q2_gt_N := by decide

theorem twaux_exists_26_113 : TWAuxEllFixedExists 113 26 :=
  ⟨twaux_26_113⟩

def twaux_10000_113 : TWAuxEllFixed 113 10000 where
  Q1ell := 11527
  Q2ell := 127691
  Q1_prime := by norm_num
  Q2_prime := (q2_witness_113).1
  Q1_mod := by decide
  Q2_mod := by decide
  Q1_ge5 := by decide
  Q2_ge5 := by decide
  Q1_ne_Q2 := by decide
  Q1_gt_N := by decide
  Q2_gt_N := by decide

theorem twaux_exists_10000_113 : TWAuxEllFixedExists 113 10000 :=
  ⟨twaux_10000_113⟩

def twaux_26_127 : TWAuxEllFixed 127 26 where
  Q1ell := 509
  Q2ell := 193549
  Q1_prime := by norm_num
  Q2_prime := (q2_witness_127).1
  Q1_mod := by decide
  Q2_mod := by decide
  Q1_ge5 := by decide
  Q2_ge5 := by decide
  Q1_ne_Q2 := by decide
  Q1_gt_N := by decide
  Q2_gt_N := by decide

theorem twaux_exists_26_127 : TWAuxEllFixedExists 127 26 :=
  ⟨twaux_26_127⟩

def twaux_10000_127 : TWAuxEllFixed 127 10000 where
  Q1ell := 11177
  Q2ell := 193549
  Q1_prime := by norm_num
  Q2_prime := (q2_witness_127).1
  Q1_mod := by decide
  Q2_mod := by decide
  Q1_ge5 := by decide
  Q2_ge5 := by decide
  Q1_ne_Q2 := by decide
  Q1_gt_N := by decide
  Q2_gt_N := by decide

theorem twaux_exists_10000_127 : TWAuxEllFixedExists 127 10000 :=
  ⟨twaux_10000_127⟩

def twaux_26_131 : TWAuxEllFixed 131 26 where
  Q1ell := 263
  Q2ell := 102967
  Q1_prime := by norm_num
  Q2_prime := (q2_witness_131).1
  Q1_mod := by decide
  Q2_mod := by decide
  Q1_ge5 := by decide
  Q2_ge5 := by decide
  Q1_ne_Q2 := by decide
  Q1_gt_N := by decide
  Q2_gt_N := by decide

theorem twaux_exists_26_131 : TWAuxEllFixedExists 131 26 :=
  ⟨twaux_26_131⟩

def twaux_10000_131 : TWAuxEllFixed 131 10000 where
  Q1ell := 12577
  Q2ell := 102967
  Q1_prime := by norm_num
  Q2_prime := (q2_witness_131).1
  Q1_mod := by decide
  Q2_mod := by decide
  Q1_ge5 := by decide
  Q2_ge5 := by decide
  Q1_ne_Q2 := by decide
  Q1_gt_N := by decide
  Q2_gt_N := by decide

theorem twaux_exists_10000_131 : TWAuxEllFixedExists 131 10000 :=
  ⟨twaux_10000_131⟩

def twaux_26_137 : TWAuxEllFixed 137 26 where
  Q1ell := 823
  Q2ell := 525533
  Q1_prime := by norm_num
  Q2_prime := (q2_witness_137).1
  Q1_mod := by decide
  Q2_mod := by decide
  Q1_ge5 := by decide
  Q2_ge5 := by decide
  Q1_ne_Q2 := by decide
  Q1_gt_N := by decide
  Q2_gt_N := by decide

theorem twaux_exists_26_137 : TWAuxEllFixedExists 137 26 :=
  ⟨twaux_26_137⟩

def twaux_10000_137 : TWAuxEllFixed 137 10000 where
  Q1ell := 10139
  Q2ell := 525533
  Q1_prime := by norm_num
  Q2_prime := (q2_witness_137).1
  Q1_mod := by decide
  Q2_mod := by decide
  Q1_ge5 := by decide
  Q2_ge5 := by decide
  Q1_ne_Q2 := by decide
  Q1_gt_N := by decide
  Q2_gt_N := by decide

theorem twaux_exists_10000_137 : TWAuxEllFixedExists 137 10000 :=
  ⟨twaux_10000_137⟩

def twaux_26_139 : TWAuxEllFixed 139 26 where
  Q1ell := 557
  Q2ell := 309137
  Q1_prime := by norm_num
  Q2_prime := (q2_witness_139).1
  Q1_mod := by decide
  Q2_mod := by decide
  Q1_ge5 := by decide
  Q2_ge5 := by decide
  Q1_ne_Q2 := by decide
  Q1_gt_N := by decide
  Q2_gt_N := by decide

theorem twaux_exists_26_139 : TWAuxEllFixedExists 139 26 :=
  ⟨twaux_26_139⟩

def twaux_10000_139 : TWAuxEllFixed 139 10000 where
  Q1ell := 10009
  Q2ell := 309137
  Q1_prime := by norm_num
  Q2_prime := (q2_witness_139).1
  Q1_mod := by decide
  Q2_mod := by decide
  Q1_ge5 := by decide
  Q2_ge5 := by decide
  Q1_ne_Q2 := by decide
  Q1_gt_N := by decide
  Q2_gt_N := by decide

theorem twaux_exists_10000_139 : TWAuxEllFixedExists 139 10000 :=
  ⟨twaux_10000_139⟩

def twaux_26_149 : TWAuxEllFixed 149 26 where
  Q1ell := 1193
  Q2ell := 222011
  Q1_prime := by norm_num
  Q2_prime := (q2_witness_149).1
  Q1_mod := by decide
  Q2_mod := by decide
  Q1_ge5 := by decide
  Q2_ge5 := by decide
  Q1_ne_Q2 := by decide
  Q1_gt_N := by decide
  Q2_gt_N := by decide

theorem twaux_exists_26_149 : TWAuxEllFixedExists 149 26 :=
  ⟨twaux_26_149⟩

def twaux_10000_149 : TWAuxEllFixed 149 10000 where
  Q1ell := 10133
  Q2ell := 222011
  Q1_prime := by norm_num
  Q2_prime := (q2_witness_149).1
  Q1_mod := by decide
  Q2_mod := by decide
  Q1_ge5 := by decide
  Q2_ge5 := by decide
  Q1_ne_Q2 := by decide
  Q1_gt_N := by decide
  Q2_gt_N := by decide

theorem twaux_exists_10000_149 : TWAuxEllFixedExists 149 10000 :=
  ⟨twaux_10000_149⟩

def twaux_26_151 : TWAuxEllFixed 151 26 where
  Q1ell := 907
  Q2ell := 273613
  Q1_prime := by norm_num
  Q2_prime := (q2_witness_151).1
  Q1_mod := by decide
  Q2_mod := by decide
  Q1_ge5 := by decide
  Q2_ge5 := by decide
  Q1_ne_Q2 := by decide
  Q1_gt_N := by decide
  Q2_gt_N := by decide

theorem twaux_exists_26_151 : TWAuxEllFixedExists 151 26 :=
  ⟨twaux_26_151⟩

def twaux_10000_151 : TWAuxEllFixed 151 10000 where
  Q1ell := 11779
  Q2ell := 273613
  Q1_prime := by norm_num
  Q2_prime := (q2_witness_151).1
  Q1_mod := by decide
  Q2_mod := by decide
  Q1_ge5 := by decide
  Q2_ge5 := by decide
  Q1_ne_Q2 := by decide
  Q1_gt_N := by decide
  Q2_gt_N := by decide

theorem twaux_exists_10000_151 : TWAuxEllFixedExists 151 10000 :=
  ⟨twaux_10000_151⟩

def twaux_26_157 : TWAuxEllFixed 157 26 where
  Q1ell := 1571
  Q2ell := 98597
  Q1_prime := by norm_num
  Q2_prime := (q2_witness_157).1
  Q1_mod := by decide
  Q2_mod := by decide
  Q1_ge5 := by decide
  Q2_ge5 := by decide
  Q1_ne_Q2 := by decide
  Q1_gt_N := by decide
  Q2_gt_N := by decide

theorem twaux_exists_26_157 : TWAuxEllFixedExists 157 26 :=
  ⟨twaux_26_157⟩

def twaux_10000_157 : TWAuxEllFixed 157 10000 where
  Q1ell := 11933
  Q2ell := 98597
  Q1_prime := by norm_num
  Q2_prime := (q2_witness_157).1
  Q1_mod := by decide
  Q2_mod := by decide
  Q1_ge5 := by decide
  Q2_ge5 := by decide
  Q1_ne_Q2 := by decide
  Q1_gt_N := by decide
  Q2_gt_N := by decide

theorem twaux_exists_10000_157 : TWAuxEllFixedExists 157 10000 :=
  ⟨twaux_10000_157⟩

def twaux_26_163 : TWAuxEllFixed 163 26 where
  Q1ell := 653
  Q2ell := 106277
  Q1_prime := by norm_num
  Q2_prime := (q2_witness_163).1
  Q1_mod := by decide
  Q2_mod := by decide
  Q1_ge5 := by decide
  Q2_ge5 := by decide
  Q1_ne_Q2 := by decide
  Q1_gt_N := by decide
  Q2_gt_N := by decide

theorem twaux_exists_26_163 : TWAuxEllFixedExists 163 26 :=
  ⟨twaux_26_163⟩

def twaux_10000_163 : TWAuxEllFixed 163 10000 where
  Q1ell := 10433
  Q2ell := 106277
  Q1_prime := by norm_num
  Q2_prime := (q2_witness_163).1
  Q1_mod := by decide
  Q2_mod := by decide
  Q1_ge5 := by decide
  Q2_ge5 := by decide
  Q1_ne_Q2 := by decide
  Q1_gt_N := by decide
  Q2_gt_N := by decide

theorem twaux_exists_10000_163 : TWAuxEllFixedExists 163 10000 :=
  ⟨twaux_10000_163⟩

def twaux_26_167 : TWAuxEllFixed 167 26 where
  Q1ell := 2339
  Q2ell := 278891
  Q1_prime := by norm_num
  Q2_prime := (q2_witness_167).1
  Q1_mod := by decide
  Q2_mod := by decide
  Q1_ge5 := by decide
  Q2_ge5 := by decide
  Q1_ne_Q2 := by decide
  Q1_gt_N := by decide
  Q2_gt_N := by decide

theorem twaux_exists_26_167 : TWAuxEllFixedExists 167 26 :=
  ⟨twaux_26_167⟩

def twaux_10000_167 : TWAuxEllFixed 167 10000 where
  Q1ell := 14029
  Q2ell := 278891
  Q1_prime := by norm_num
  Q2_prime := (q2_witness_167).1
  Q1_mod := by decide
  Q2_mod := by decide
  Q1_ge5 := by decide
  Q2_ge5 := by decide
  Q1_ne_Q2 := by decide
  Q1_gt_N := by decide
  Q2_gt_N := by decide

theorem twaux_exists_10000_167 : TWAuxEllFixedExists 167 10000 :=
  ⟨twaux_10000_167⟩

def twaux_26_173 : TWAuxEllFixed 173 26 where
  Q1ell := 347
  Q2ell := 538723
  Q1_prime := by norm_num
  Q2_prime := (q2_witness_173).1
  Q1_mod := by decide
  Q2_mod := by decide
  Q1_ge5 := by decide
  Q2_ge5 := by decide
  Q1_ne_Q2 := by decide
  Q1_gt_N := by decide
  Q2_gt_N := by decide

theorem twaux_exists_26_173 : TWAuxEllFixedExists 173 26 :=
  ⟨twaux_26_173⟩

def twaux_10000_173 : TWAuxEllFixed 173 10000 where
  Q1ell := 12457
  Q2ell := 538723
  Q1_prime := by norm_num
  Q2_prime := (q2_witness_173).1
  Q1_mod := by decide
  Q2_mod := by decide
  Q1_ge5 := by decide
  Q2_ge5 := by decide
  Q1_ne_Q2 := by decide
  Q1_gt_N := by decide
  Q2_gt_N := by decide

theorem twaux_exists_10000_173 : TWAuxEllFixedExists 173 10000 :=
  ⟨twaux_10000_173⟩

def twaux_26_179 : TWAuxEllFixed 179 26 where
  Q1ell := 359
  Q2ell := 512657
  Q1_prime := by norm_num
  Q2_prime := (q2_witness_179).1
  Q1_mod := by decide
  Q2_mod := by decide
  Q1_ge5 := by decide
  Q2_ge5 := by decide
  Q1_ne_Q2 := by decide
  Q1_gt_N := by decide
  Q2_gt_N := by decide

theorem twaux_exists_26_179 : TWAuxEllFixedExists 179 26 :=
  ⟨twaux_26_179⟩

def twaux_10000_179 : TWAuxEllFixed 179 10000 where
  Q1ell := 12889
  Q2ell := 512657
  Q1_prime := by norm_num
  Q2_prime := (q2_witness_179).1
  Q1_mod := by decide
  Q2_mod := by decide
  Q1_ge5 := by decide
  Q2_ge5 := by decide
  Q1_ne_Q2 := by decide
  Q1_gt_N := by decide
  Q2_gt_N := by decide

theorem twaux_exists_10000_179 : TWAuxEllFixedExists 179 10000 :=
  ⟨twaux_10000_179⟩

def twaux_26_181 : TWAuxEllFixed 181 26 where
  Q1ell := 1087
  Q2ell := 720743
  Q1_prime := by norm_num
  Q2_prime := (q2_witness_181).1
  Q1_mod := by decide
  Q2_mod := by decide
  Q1_ge5 := by decide
  Q2_ge5 := by decide
  Q1_ne_Q2 := by decide
  Q1_gt_N := by decide
  Q2_gt_N := by decide

theorem twaux_exists_26_181 : TWAuxEllFixedExists 181 26 :=
  ⟨twaux_26_181⟩

def twaux_10000_181 : TWAuxEllFixed 181 10000 where
  Q1ell := 10499
  Q2ell := 720743
  Q1_prime := by norm_num
  Q2_prime := (q2_witness_181).1
  Q1_mod := by decide
  Q2_mod := by decide
  Q1_ge5 := by decide
  Q2_ge5 := by decide
  Q1_ne_Q2 := by decide
  Q1_gt_N := by decide
  Q2_gt_N := by decide

theorem twaux_exists_10000_181 : TWAuxEllFixedExists 181 10000 :=
  ⟨twaux_10000_181⟩

def twaux_26_191 : TWAuxEllFixed 191 26 where
  Q1ell := 383
  Q2ell := 218887
  Q1_prime := by norm_num
  Q2_prime := (q2_witness_191).1
  Q1_mod := by decide
  Q2_mod := by decide
  Q1_ge5 := by decide
  Q2_ge5 := by decide
  Q1_ne_Q2 := by decide
  Q1_gt_N := by decide
  Q2_gt_N := by decide

theorem twaux_exists_26_191 : TWAuxEllFixedExists 191 26 :=
  ⟨twaux_26_191⟩

def twaux_10000_191 : TWAuxEllFixed 191 10000 where
  Q1ell := 16427
  Q2ell := 218887
  Q1_prime := by norm_num
  Q2_prime := (q2_witness_191).1
  Q1_mod := by decide
  Q2_mod := by decide
  Q1_ge5 := by decide
  Q2_ge5 := by decide
  Q1_ne_Q2 := by decide
  Q1_gt_N := by decide
  Q2_gt_N := by decide

theorem twaux_exists_10000_191 : TWAuxEllFixedExists 191 10000 :=
  ⟨twaux_10000_191⟩

def twaux_26_193 : TWAuxEllFixed 193 26 where
  Q1ell := 773
  Q2ell := 148997
  Q1_prime := by norm_num
  Q2_prime := (q2_witness_193).1
  Q1_mod := by decide
  Q2_mod := by decide
  Q1_ge5 := by decide
  Q2_ge5 := by decide
  Q1_ne_Q2 := by decide
  Q1_gt_N := by decide
  Q2_gt_N := by decide

theorem twaux_exists_26_193 : TWAuxEllFixedExists 193 26 :=
  ⟨twaux_26_193⟩

def twaux_10000_193 : TWAuxEllFixed 193 10000 where
  Q1ell := 10037
  Q2ell := 148997
  Q1_prime := by norm_num
  Q2_prime := (q2_witness_193).1
  Q1_mod := by decide
  Q2_mod := by decide
  Q1_ge5 := by decide
  Q2_ge5 := by decide
  Q1_ne_Q2 := by decide
  Q1_gt_N := by decide
  Q2_gt_N := by decide

theorem twaux_exists_10000_193 : TWAuxEllFixedExists 193 10000 :=
  ⟨twaux_10000_193⟩

def twaux_26_197 : TWAuxEllFixed 197 26 where
  Q1ell := 3547
  Q2ell := 853799
  Q1_prime := by norm_num
  Q2_prime := (q2_witness_197).1
  Q1_mod := by decide
  Q2_mod := by decide
  Q1_ge5 := by decide
  Q2_ge5 := by decide
  Q1_ne_Q2 := by decide
  Q1_gt_N := by decide
  Q2_gt_N := by decide

theorem twaux_exists_26_197 : TWAuxEllFixedExists 197 26 :=
  ⟨twaux_26_197⟩

def twaux_10000_197 : TWAuxEllFixed 197 10000 where
  Q1ell := 10639
  Q2ell := 853799
  Q1_prime := by norm_num
  Q2_prime := (q2_witness_197).1
  Q1_mod := by decide
  Q2_mod := by decide
  Q1_ge5 := by decide
  Q2_ge5 := by decide
  Q1_ne_Q2 := by decide
  Q1_gt_N := by decide
  Q2_gt_N := by decide

theorem twaux_exists_10000_197 : TWAuxEllFixedExists 197 10000 :=
  ⟨twaux_10000_197⟩

def twaux_26_199 : TWAuxEllFixed 199 26 where
  Q1ell := 797
  Q2ell := 237607
  Q1_prime := by norm_num
  Q2_prime := (q2_witness_199).1
  Q1_mod := by decide
  Q2_mod := by decide
  Q1_ge5 := by decide
  Q2_ge5 := by decide
  Q1_ne_Q2 := by decide
  Q1_gt_N := by decide
  Q2_gt_N := by decide

theorem twaux_exists_26_199 : TWAuxEllFixedExists 199 26 :=
  ⟨twaux_26_199⟩

def twaux_10000_199 : TWAuxEllFixed 199 10000 where
  Q1ell := 11941
  Q2ell := 237607
  Q1_prime := by norm_num
  Q2_prime := (q2_witness_199).1
  Q1_mod := by decide
  Q2_mod := by decide
  Q1_ge5 := by decide
  Q2_ge5 := by decide
  Q1_ne_Q2 := by decide
  Q1_gt_N := by decide
  Q2_gt_N := by decide

theorem twaux_exists_10000_199 : TWAuxEllFixedExists 199 10000 :=
  ⟨twaux_10000_199⟩

theorem TWAuxEllFixedExists_26_101_200 {ℓ : Nat}
    (h : ℓ ∈ primes101to200) : TWAuxEllFixedExists ℓ 26 := by
  fin_cases h
  · exact twaux_exists_26_101
  · exact twaux_exists_26_103
  · exact twaux_exists_26_107
  · exact twaux_exists_26_109
  · exact twaux_exists_26_113
  · exact twaux_exists_26_127
  · exact twaux_exists_26_131
  · exact twaux_exists_26_137
  · exact twaux_exists_26_139
  · exact twaux_exists_26_149
  · exact twaux_exists_26_151
  · exact twaux_exists_26_157
  · exact twaux_exists_26_163
  · exact twaux_exists_26_167
  · exact twaux_exists_26_173
  · exact twaux_exists_26_179
  · exact twaux_exists_26_181
  · exact twaux_exists_26_191
  · exact twaux_exists_26_193
  · exact twaux_exists_26_197
  · exact twaux_exists_26_199

theorem TWAuxEllFixedExists_10000_101_200 {ℓ : Nat}
    (h : ℓ ∈ primes101to200) : TWAuxEllFixedExists ℓ 10000 := by
  fin_cases h
  · exact twaux_exists_10000_101
  · exact twaux_exists_10000_103
  · exact twaux_exists_10000_107
  · exact twaux_exists_10000_109
  · exact twaux_exists_10000_113
  · exact twaux_exists_10000_127
  · exact twaux_exists_10000_131
  · exact twaux_exists_10000_137
  · exact twaux_exists_10000_139
  · exact twaux_exists_10000_149
  · exact twaux_exists_10000_151
  · exact twaux_exists_10000_157
  · exact twaux_exists_10000_163
  · exact twaux_exists_10000_167
  · exact twaux_exists_10000_173
  · exact twaux_exists_10000_179
  · exact twaux_exists_10000_181
  · exact twaux_exists_10000_191
  · exact twaux_exists_10000_193
  · exact twaux_exists_10000_197
  · exact twaux_exists_10000_199

end BealLevel26Foundations.Beal.FullProof.TWAuxEllFixed_101_200
