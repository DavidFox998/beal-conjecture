/-
Copyright (c) 2026 David Fox. All rights reserved.
Released under MIT license as described in the file LICENSE.
Authors: David Fox

Track B v8.17.0 — `TWAuxEllFixed` at `N = 26` and `N = 10000`
for residuals in `primes701to800`.  `Qᵢ > N` so `Qᵢ ∤ N`.
Not `∀ N ≤ 10000`.  `ℓ = 941` needs `Q₁ = 30113`
(`N + 21000`, not `N + 20000`).
-/

import BealLevel26Foundations.Beal.FullProof.TWAuxEllFixedCore
import BealLevel26Foundations.Beal.FullProof.TWPrimesQ2_701_800
import Mathlib.Tactic

namespace BealLevel26Foundations.Beal.FullProof.TWAuxEllFixed_701_800

open BealLevel26Foundations.Beal.FullProof.TWAuxEllFixedCore
open BealLevel26Foundations.Beal.FullProof.TWPrimes_701_800
open BealLevel26Foundations.Beal.FullProof.TWPrimesQ2_701_800
open BealLevel26Foundations.Beal.FullProof.TWPrimesPratt

set_option maxHeartbeats 4000000
set_option maxRecDepth 2048
def twaux_26_701 : TWAuxEllFixed 701 26 where
  Q1ell := 12619
  Q2ell := 7862417
  Q1_prime := by norm_num
  Q2_prime := (q2_witness_701).1
  Q1_mod := by decide
  Q2_mod := by decide
  Q1_ge5 := by decide
  Q2_ge5 := by decide
  Q1_ne_Q2 := by decide
  Q1_gt_N := by decide
  Q2_gt_N := by decide

theorem twaux_exists_26_701 : TWAuxEllFixedExists 701 26 :=
  ⟨twaux_26_701⟩

def twaux_10000_701 : TWAuxEllFixed 701 10000 where
  Q1ell := 12619
  Q2ell := 7862417
  Q1_prime := by norm_num
  Q2_prime := (q2_witness_701).1
  Q1_mod := by decide
  Q2_mod := by decide
  Q1_ge5 := by decide
  Q2_ge5 := by decide
  Q1_ne_Q2 := by decide
  Q1_gt_N := by decide
  Q2_gt_N := by decide

theorem twaux_exists_10000_701 : TWAuxEllFixedExists 701 10000 :=
  ⟨twaux_10000_701⟩

def twaux_26_709 : TWAuxEllFixed 709 26 where
  Q1ell := 2837
  Q2ell := 8042897
  Q1_prime := by norm_num
  Q2_prime := (q2_witness_709).1
  Q1_mod := by decide
  Q2_mod := by decide
  Q1_ge5 := by decide
  Q2_ge5 := by decide
  Q1_ne_Q2 := by decide
  Q1_gt_N := by decide
  Q2_gt_N := by decide

theorem twaux_exists_26_709 : TWAuxEllFixedExists 709 26 :=
  ⟨twaux_26_709⟩

def twaux_10000_709 : TWAuxEllFixed 709 10000 where
  Q1ell := 12763
  Q2ell := 8042897
  Q1_prime := by norm_num
  Q2_prime := (q2_witness_709).1
  Q1_mod := by decide
  Q2_mod := by decide
  Q1_ge5 := by decide
  Q2_ge5 := by decide
  Q1_ne_Q2 := by decide
  Q1_gt_N := by decide
  Q2_gt_N := by decide

theorem twaux_exists_10000_709 : TWAuxEllFixedExists 709 10000 :=
  ⟨twaux_10000_709⟩

def twaux_26_719 : TWAuxEllFixed 719 26 where
  Q1ell := 1439
  Q2ell := 8271377
  Q1_prime := by norm_num
  Q2_prime := (q2_witness_719).1
  Q1_mod := by decide
  Q2_mod := by decide
  Q1_ge5 := by decide
  Q2_ge5 := by decide
  Q1_ne_Q2 := by decide
  Q1_gt_N := by decide
  Q2_gt_N := by decide

theorem twaux_exists_26_719 : TWAuxEllFixedExists 719 26 :=
  ⟨twaux_26_719⟩

def twaux_10000_719 : TWAuxEllFixed 719 10000 where
  Q1ell := 10067
  Q2ell := 8271377
  Q1_prime := by norm_num
  Q2_prime := (q2_witness_719).1
  Q1_mod := by decide
  Q2_mod := by decide
  Q1_ge5 := by decide
  Q2_ge5 := by decide
  Q1_ne_Q2 := by decide
  Q1_gt_N := by decide
  Q2_gt_N := by decide

theorem twaux_exists_10000_719 : TWAuxEllFixedExists 719 10000 :=
  ⟨twaux_10000_719⟩

def twaux_26_727 : TWAuxEllFixed 727 26 where
  Q1ell := 2909
  Q2ell := 21141161
  Q1_prime := by norm_num
  Q2_prime := (q2_witness_727).1
  Q1_mod := by decide
  Q2_mod := by decide
  Q1_ge5 := by decide
  Q2_ge5 := by decide
  Q1_ne_Q2 := by decide
  Q1_gt_N := by decide
  Q2_gt_N := by decide

theorem twaux_exists_26_727 : TWAuxEllFixedExists 727 26 :=
  ⟨twaux_26_727⟩

def twaux_10000_727 : TWAuxEllFixed 727 10000 where
  Q1ell := 11633
  Q2ell := 21141161
  Q1_prime := by norm_num
  Q2_prime := (q2_witness_727).1
  Q1_mod := by decide
  Q2_mod := by decide
  Q1_ge5 := by decide
  Q2_ge5 := by decide
  Q1_ne_Q2 := by decide
  Q1_gt_N := by decide
  Q2_gt_N := by decide

theorem twaux_exists_10000_727 : TWAuxEllFixedExists 727 10000 :=
  ⟨twaux_10000_727⟩

def twaux_26_733 : TWAuxEllFixed 733 26 where
  Q1ell := 7331
  Q2ell := 18267827
  Q1_prime := by norm_num
  Q2_prime := (q2_witness_733).1
  Q1_mod := by decide
  Q2_mod := by decide
  Q1_ge5 := by decide
  Q2_ge5 := by decide
  Q1_ne_Q2 := by decide
  Q1_gt_N := by decide
  Q2_gt_N := by decide

theorem twaux_exists_26_733 : TWAuxEllFixedExists 733 26 :=
  ⟨twaux_26_733⟩

def twaux_10000_733 : TWAuxEllFixed 733 10000 where
  Q1ell := 16127
  Q2ell := 18267827
  Q1_prime := by norm_num
  Q2_prime := (q2_witness_733).1
  Q1_mod := by decide
  Q2_mod := by decide
  Q1_ge5 := by decide
  Q2_ge5 := by decide
  Q1_ne_Q2 := by decide
  Q1_gt_N := by decide
  Q2_gt_N := by decide

theorem twaux_exists_10000_733 : TWAuxEllFixedExists 733 10000 :=
  ⟨twaux_10000_733⟩

def twaux_26_739 : TWAuxEllFixed 739 26 where
  Q1ell := 2957
  Q2ell := 6553453
  Q1_prime := by norm_num
  Q2_prime := (q2_witness_739).1
  Q1_mod := by decide
  Q2_mod := by decide
  Q1_ge5 := by decide
  Q2_ge5 := by decide
  Q1_ne_Q2 := by decide
  Q1_gt_N := by decide
  Q2_gt_N := by decide

theorem twaux_exists_26_739 : TWAuxEllFixedExists 739 26 :=
  ⟨twaux_26_739⟩

def twaux_10000_739 : TWAuxEllFixed 739 10000 where
  Q1ell := 17737
  Q2ell := 6553453
  Q1_prime := by norm_num
  Q2_prime := (q2_witness_739).1
  Q1_mod := by decide
  Q2_mod := by decide
  Q1_ge5 := by decide
  Q2_ge5 := by decide
  Q1_ne_Q2 := by decide
  Q1_gt_N := by decide
  Q2_gt_N := by decide

theorem twaux_exists_10000_739 : TWAuxEllFixedExists 739 10000 :=
  ⟨twaux_10000_739⟩

def twaux_26_743 : TWAuxEllFixed 743 26 where
  Q1ell := 1487
  Q2ell := 6624589
  Q1_prime := by norm_num
  Q2_prime := (q2_witness_743).1
  Q1_mod := by decide
  Q2_mod := by decide
  Q1_ge5 := by decide
  Q2_ge5 := by decide
  Q1_ne_Q2 := by decide
  Q1_gt_N := by decide
  Q2_gt_N := by decide

theorem twaux_exists_26_743 : TWAuxEllFixedExists 743 26 :=
  ⟨twaux_26_743⟩

def twaux_10000_743 : TWAuxEllFixed 743 10000 where
  Q1ell := 19319
  Q2ell := 6624589
  Q1_prime := by norm_num
  Q2_prime := (q2_witness_743).1
  Q1_mod := by decide
  Q2_mod := by decide
  Q1_ge5 := by decide
  Q2_ge5 := by decide
  Q1_ne_Q2 := by decide
  Q1_gt_N := by decide
  Q2_gt_N := by decide

theorem twaux_exists_10000_743 : TWAuxEllFixedExists 743 10000 :=
  ⟨twaux_10000_743⟩

def twaux_26_751 : TWAuxEllFixed 751 26 where
  Q1ell := 4507
  Q2ell := 10152019
  Q1_prime := by norm_num
  Q2_prime := (q2_witness_751).1
  Q1_mod := by decide
  Q2_mod := by decide
  Q1_ge5 := by decide
  Q2_ge5 := by decide
  Q1_ne_Q2 := by decide
  Q1_gt_N := by decide
  Q2_gt_N := by decide

theorem twaux_exists_26_751 : TWAuxEllFixedExists 751 26 :=
  ⟨twaux_26_751⟩

def twaux_10000_751 : TWAuxEllFixed 751 10000 where
  Q1ell := 22531
  Q2ell := 10152019
  Q1_prime := by norm_num
  Q2_prime := (q2_witness_751).1
  Q1_mod := by decide
  Q2_mod := by decide
  Q1_ge5 := by decide
  Q2_ge5 := by decide
  Q1_ne_Q2 := by decide
  Q1_gt_N := by decide
  Q2_gt_N := by decide

theorem twaux_exists_10000_751 : TWAuxEllFixedExists 751 10000 :=
  ⟨twaux_10000_751⟩

def twaux_26_757 : TWAuxEllFixed 757 26 where
  Q1ell := 12113
  Q2ell := 13753177
  Q1_prime := by norm_num
  Q2_prime := (q2_witness_757).1
  Q1_mod := by decide
  Q2_mod := by decide
  Q1_ge5 := by decide
  Q2_ge5 := by decide
  Q1_ne_Q2 := by decide
  Q1_gt_N := by decide
  Q2_gt_N := by decide

theorem twaux_exists_26_757 : TWAuxEllFixedExists 757 26 :=
  ⟨twaux_26_757⟩

def twaux_10000_757 : TWAuxEllFixed 757 10000 where
  Q1ell := 12113
  Q2ell := 13753177
  Q1_prime := by norm_num
  Q2_prime := (q2_witness_757).1
  Q1_mod := by decide
  Q2_mod := by decide
  Q1_ge5 := by decide
  Q2_ge5 := by decide
  Q1_ne_Q2 := by decide
  Q1_gt_N := by decide
  Q2_gt_N := by decide

theorem twaux_exists_10000_757 : TWAuxEllFixedExists 757 10000 :=
  ⟨twaux_10000_757⟩

def twaux_26_761 : TWAuxEllFixed 761 26 where
  Q1ell := 1523
  Q2ell := 5791211
  Q1_prime := by norm_num
  Q2_prime := (q2_witness_761).1
  Q1_mod := by decide
  Q2_mod := by decide
  Q1_ge5 := by decide
  Q2_ge5 := by decide
  Q1_ne_Q2 := by decide
  Q1_gt_N := by decide
  Q2_gt_N := by decide

theorem twaux_exists_26_761 : TWAuxEllFixedExists 761 26 :=
  ⟨twaux_26_761⟩

def twaux_10000_761 : TWAuxEllFixed 761 10000 where
  Q1ell := 27397
  Q2ell := 5791211
  Q1_prime := by norm_num
  Q2_prime := (q2_witness_761).1
  Q1_mod := by decide
  Q2_mod := by decide
  Q1_ge5 := by decide
  Q2_ge5 := by decide
  Q1_ne_Q2 := by decide
  Q1_gt_N := by decide
  Q2_gt_N := by decide

theorem twaux_exists_10000_761 : TWAuxEllFixedExists 761 10000 :=
  ⟨twaux_10000_761⟩

def twaux_26_769 : TWAuxEllFixed 769 26 where
  Q1ell := 7691
  Q2ell := 13009943
  Q1_prime := by norm_num
  Q2_prime := (q2_witness_769).1
  Q1_mod := by decide
  Q2_mod := by decide
  Q1_ge5 := by decide
  Q2_ge5 := by decide
  Q1_ne_Q2 := by decide
  Q1_gt_N := by decide
  Q2_gt_N := by decide

theorem twaux_exists_26_769 : TWAuxEllFixedExists 769 26 :=
  ⟨twaux_26_769⟩

def twaux_10000_769 : TWAuxEllFixed 769 10000 where
  Q1ell := 18457
  Q2ell := 13009943
  Q1_prime := by norm_num
  Q2_prime := (q2_witness_769).1
  Q1_mod := by decide
  Q2_mod := by decide
  Q1_ge5 := by decide
  Q2_ge5 := by decide
  Q1_ne_Q2 := by decide
  Q1_gt_N := by decide
  Q2_gt_N := by decide

theorem twaux_exists_10000_769 : TWAuxEllFixedExists 769 10000 :=
  ⟨twaux_10000_769⟩

def twaux_26_773 : TWAuxEllFixed 773 26 where
  Q1ell := 4639
  Q2ell := 2390117
  Q1_prime := by norm_num
  Q2_prime := (q2_witness_773).1
  Q1_mod := by decide
  Q2_mod := by decide
  Q1_ge5 := by decide
  Q2_ge5 := by decide
  Q1_ne_Q2 := by decide
  Q1_gt_N := by decide
  Q2_gt_N := by decide

theorem twaux_exists_26_773 : TWAuxEllFixedExists 773 26 :=
  ⟨twaux_26_773⟩

def twaux_10000_773 : TWAuxEllFixed 773 10000 where
  Q1ell := 15461
  Q2ell := 2390117
  Q1_prime := by norm_num
  Q2_prime := (q2_witness_773).1
  Q1_mod := by decide
  Q2_mod := by decide
  Q1_ge5 := by decide
  Q2_ge5 := by decide
  Q1_ne_Q2 := by decide
  Q1_gt_N := by decide
  Q2_gt_N := by decide

theorem twaux_exists_10000_773 : TWAuxEllFixedExists 773 10000 :=
  ⟨twaux_10000_773⟩

def twaux_26_787 : TWAuxEllFixed 787 26 where
  Q1ell := 4723
  Q2ell := 17342333
  Q1_prime := by norm_num
  Q2_prime := (q2_witness_787).1
  Q1_mod := by decide
  Q2_mod := by decide
  Q1_ge5 := by decide
  Q2_ge5 := by decide
  Q1_ne_Q2 := by decide
  Q1_gt_N := by decide
  Q2_gt_N := by decide

theorem twaux_exists_26_787 : TWAuxEllFixedExists 787 26 :=
  ⟨twaux_26_787⟩

def twaux_10000_787 : TWAuxEllFixed 787 10000 where
  Q1ell := 22037
  Q2ell := 17342333
  Q1_prime := by norm_num
  Q2_prime := (q2_witness_787).1
  Q1_mod := by decide
  Q2_mod := by decide
  Q1_ge5 := by decide
  Q2_ge5 := by decide
  Q1_ne_Q2 := by decide
  Q1_gt_N := by decide
  Q2_gt_N := by decide

theorem twaux_exists_10000_787 : TWAuxEllFixedExists 787 10000 :=
  ⟨twaux_10000_787⟩

def twaux_26_797 : TWAuxEllFixed 797 26 where
  Q1ell := 4783
  Q2ell := 6352091
  Q1_prime := by norm_num
  Q2_prime := (q2_witness_797).1
  Q1_mod := by decide
  Q2_mod := by decide
  Q1_ge5 := by decide
  Q2_ge5 := by decide
  Q1_ne_Q2 := by decide
  Q1_gt_N := by decide
  Q2_gt_N := by decide

theorem twaux_exists_26_797 : TWAuxEllFixedExists 797 26 :=
  ⟨twaux_26_797⟩

def twaux_10000_797 : TWAuxEllFixed 797 10000 where
  Q1ell := 11159
  Q2ell := 6352091
  Q1_prime := by norm_num
  Q2_prime := (q2_witness_797).1
  Q1_mod := by decide
  Q2_mod := by decide
  Q1_ge5 := by decide
  Q2_ge5 := by decide
  Q1_ne_Q2 := by decide
  Q1_gt_N := by decide
  Q2_gt_N := by decide

theorem twaux_exists_10000_797 : TWAuxEllFixedExists 797 10000 :=
  ⟨twaux_10000_797⟩

theorem TWAuxEllFixedExists_26_701_800 {ℓ : Nat}
    (h : ℓ ∈ primes701to800) : TWAuxEllFixedExists ℓ 26 := by
  fin_cases h
  · exact twaux_exists_26_701
  · exact twaux_exists_26_709
  · exact twaux_exists_26_719
  · exact twaux_exists_26_727
  · exact twaux_exists_26_733
  · exact twaux_exists_26_739
  · exact twaux_exists_26_743
  · exact twaux_exists_26_751
  · exact twaux_exists_26_757
  · exact twaux_exists_26_761
  · exact twaux_exists_26_769
  · exact twaux_exists_26_773
  · exact twaux_exists_26_787
  · exact twaux_exists_26_797

theorem TWAuxEllFixedExists_10000_701_800 {ℓ : Nat}
    (h : ℓ ∈ primes701to800) : TWAuxEllFixedExists ℓ 10000 := by
  fin_cases h
  · exact twaux_exists_10000_701
  · exact twaux_exists_10000_709
  · exact twaux_exists_10000_719
  · exact twaux_exists_10000_727
  · exact twaux_exists_10000_733
  · exact twaux_exists_10000_739
  · exact twaux_exists_10000_743
  · exact twaux_exists_10000_751
  · exact twaux_exists_10000_757
  · exact twaux_exists_10000_761
  · exact twaux_exists_10000_769
  · exact twaux_exists_10000_773
  · exact twaux_exists_10000_787
  · exact twaux_exists_10000_797

end BealLevel26Foundations.Beal.FullProof.TWAuxEllFixed_701_800
