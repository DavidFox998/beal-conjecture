/-
Copyright (c) 2026 David Fox. All rights reserved.
Released under MIT license as described in the file LICENSE.
Authors: David Fox

Track B v8.17.0 — `TWAuxEllFixed` at `N = 26` and `N = 10000`
for residuals in `primes601to700`.  `Qᵢ > N` so `Qᵢ ∤ N`.
Not `∀ N ≤ 10000`.  `ℓ = 941` needs `Q₁ = 30113`
(`N + 21000`, not `N + 20000`).
-/

import BealLevel26Foundations.Beal.FullProof.TWAuxEllFixedCore
import BealLevel26Foundations.Beal.FullProof.TWPrimesQ2_601_700
import Mathlib.Tactic

namespace BealLevel26Foundations.Beal.FullProof.TWAuxEllFixed_601_700

open BealLevel26Foundations.Beal.FullProof.TWAuxEllFixedCore
open BealLevel26Foundations.Beal.FullProof.TWPrimes_601_700
open BealLevel26Foundations.Beal.FullProof.TWPrimesQ2_601_700
open BealLevel26Foundations.Beal.FullProof.TWPrimesPratt

set_option maxHeartbeats 4000000
set_option maxRecDepth 2048
def twaux_26_601 : TWAuxEllFixed 601 26 where
  Q1ell := 3607
  Q2ell := 5779217
  Q1_prime := by norm_num
  Q2_prime := (q2_witness_601).1
  Q1_mod := by decide
  Q2_mod := by decide
  Q1_ge5 := by decide
  Q2_ge5 := by decide
  Q1_ne_Q2 := by decide
  Q1_gt_N := by decide
  Q2_gt_N := by decide

theorem twaux_exists_26_601 : TWAuxEllFixedExists 601 26 :=
  ⟨twaux_26_601⟩

def twaux_10000_601 : TWAuxEllFixed 601 10000 where
  Q1ell := 16829
  Q2ell := 5779217
  Q1_prime := by norm_num
  Q2_prime := (q2_witness_601).1
  Q1_mod := by decide
  Q2_mod := by decide
  Q1_ge5 := by decide
  Q2_ge5 := by decide
  Q1_ne_Q2 := by decide
  Q1_gt_N := by decide
  Q2_gt_N := by decide

theorem twaux_exists_10000_601 : TWAuxEllFixedExists 601 10000 :=
  ⟨twaux_10000_601⟩

def twaux_26_607 : TWAuxEllFixed 607 26 where
  Q1ell := 3643
  Q2ell := 10316573
  Q1_prime := by norm_num
  Q2_prime := (q2_witness_607).1
  Q1_mod := by decide
  Q2_mod := by decide
  Q1_ge5 := by decide
  Q2_ge5 := by decide
  Q1_ne_Q2 := by decide
  Q1_gt_N := by decide
  Q2_gt_N := by decide

theorem twaux_exists_26_607 : TWAuxEllFixedExists 607 26 :=
  ⟨twaux_26_607⟩

def twaux_10000_607 : TWAuxEllFixed 607 10000 where
  Q1ell := 18211
  Q2ell := 10316573
  Q1_prime := by norm_num
  Q2_prime := (q2_witness_607).1
  Q1_mod := by decide
  Q2_mod := by decide
  Q1_ge5 := by decide
  Q2_ge5 := by decide
  Q1_ne_Q2 := by decide
  Q1_gt_N := by decide
  Q2_gt_N := by decide

theorem twaux_exists_10000_607 : TWAuxEllFixedExists 607 10000 :=
  ⟨twaux_10000_607⟩

def twaux_26_613 : TWAuxEllFixed 613 26 where
  Q1ell := 6131
  Q2ell := 12776147
  Q1_prime := by norm_num
  Q2_prime := (q2_witness_613).1
  Q1_mod := by decide
  Q2_mod := by decide
  Q1_ge5 := by decide
  Q2_ge5 := by decide
  Q1_ne_Q2 := by decide
  Q1_gt_N := by decide
  Q2_gt_N := by decide

theorem twaux_exists_26_613 : TWAuxEllFixedExists 613 26 :=
  ⟨twaux_26_613⟩

def twaux_10000_613 : TWAuxEllFixed 613 10000 where
  Q1ell := 13487
  Q2ell := 12776147
  Q1_prime := by norm_num
  Q2_prime := (q2_witness_613).1
  Q1_mod := by decide
  Q2_mod := by decide
  Q1_ge5 := by decide
  Q2_ge5 := by decide
  Q1_ne_Q2 := by decide
  Q1_gt_N := by decide
  Q2_gt_N := by decide

theorem twaux_exists_10000_613 : TWAuxEllFixedExists 613 10000 :=
  ⟨twaux_10000_613⟩

def twaux_26_617 : TWAuxEllFixed 617 26 where
  Q1ell := 4937
  Q2ell := 4568269
  Q1_prime := by norm_num
  Q2_prime := (q2_witness_617).1
  Q1_mod := by decide
  Q2_mod := by decide
  Q1_ge5 := by decide
  Q2_ge5 := by decide
  Q1_ne_Q2 := by decide
  Q1_gt_N := by decide
  Q2_gt_N := by decide

theorem twaux_exists_26_617 : TWAuxEllFixedExists 617 26 :=
  ⟨twaux_26_617⟩

def twaux_10000_617 : TWAuxEllFixed 617 10000 where
  Q1ell := 23447
  Q2ell := 4568269
  Q1_prime := by norm_num
  Q2_prime := (q2_witness_617).1
  Q1_mod := by decide
  Q2_mod := by decide
  Q1_ge5 := by decide
  Q2_ge5 := by decide
  Q1_ne_Q2 := by decide
  Q1_gt_N := by decide
  Q2_gt_N := by decide

theorem twaux_exists_10000_617 : TWAuxEllFixedExists 617 10000 :=
  ⟨twaux_10000_617⟩

def twaux_26_619 : TWAuxEllFixed 619 26 where
  Q1ell := 2477
  Q2ell := 4597933
  Q1_prime := by norm_num
  Q2_prime := (q2_witness_619).1
  Q1_mod := by decide
  Q2_mod := by decide
  Q1_ge5 := by decide
  Q2_ge5 := by decide
  Q1_ne_Q2 := by decide
  Q1_gt_N := by decide
  Q2_gt_N := by decide

theorem twaux_exists_26_619 : TWAuxEllFixedExists 619 26 :=
  ⟨twaux_26_619⟩

def twaux_10000_619 : TWAuxEllFixed 619 10000 where
  Q1ell := 13619
  Q2ell := 4597933
  Q1_prime := by norm_num
  Q2_prime := (q2_witness_619).1
  Q1_mod := by decide
  Q2_mod := by decide
  Q1_ge5 := by decide
  Q2_ge5 := by decide
  Q1_ne_Q2 := by decide
  Q1_gt_N := by decide
  Q2_gt_N := by decide

theorem twaux_exists_10000_619 : TWAuxEllFixedExists 619 10000 :=
  ⟨twaux_10000_619⟩

def twaux_26_631 : TWAuxEllFixed 631 26 where
  Q1ell := 6311
  Q2ell := 4777933
  Q1_prime := by norm_num
  Q2_prime := (q2_witness_631).1
  Q1_mod := by decide
  Q2_mod := by decide
  Q1_ge5 := by decide
  Q2_ge5 := by decide
  Q1_ne_Q2 := by decide
  Q1_gt_N := by decide
  Q2_gt_N := by decide

theorem twaux_exists_26_631 : TWAuxEllFixedExists 631 26 :=
  ⟨twaux_26_631⟩

def twaux_10000_631 : TWAuxEllFixed 631 10000 where
  Q1ell := 13883
  Q2ell := 4777933
  Q1_prime := by norm_num
  Q2_prime := (q2_witness_631).1
  Q1_mod := by decide
  Q2_mod := by decide
  Q1_ge5 := by decide
  Q2_ge5 := by decide
  Q1_ne_Q2 := by decide
  Q1_gt_N := by decide
  Q2_gt_N := by decide

theorem twaux_exists_10000_631 : TWAuxEllFixedExists 631 10000 :=
  ⟨twaux_10000_631⟩

def twaux_26_641 : TWAuxEllFixed 641 26 where
  Q1ell := 1283
  Q2ell := 7395859
  Q1_prime := by norm_num
  Q2_prime := (q2_witness_641).1
  Q1_mod := by decide
  Q2_mod := by decide
  Q1_ge5 := by decide
  Q2_ge5 := by decide
  Q1_ne_Q2 := by decide
  Q1_gt_N := by decide
  Q2_gt_N := by decide

theorem twaux_exists_26_641 : TWAuxEllFixedExists 641 26 :=
  ⟨twaux_26_641⟩

def twaux_10000_641 : TWAuxEllFixed 641 10000 where
  Q1ell := 12821
  Q2ell := 7395859
  Q1_prime := by norm_num
  Q2_prime := (q2_witness_641).1
  Q1_mod := by decide
  Q2_mod := by decide
  Q1_ge5 := by decide
  Q2_ge5 := by decide
  Q1_ne_Q2 := by decide
  Q1_gt_N := by decide
  Q2_gt_N := by decide

theorem twaux_exists_10000_641 : TWAuxEllFixedExists 641 10000 :=
  ⟨twaux_10000_641⟩

def twaux_26_643 : TWAuxEllFixed 643 26 where
  Q1ell := 7717
  Q2ell := 4961389
  Q1_prime := by norm_num
  Q2_prime := (q2_witness_643).1
  Q1_mod := by decide
  Q2_mod := by decide
  Q1_ge5 := by decide
  Q2_ge5 := by decide
  Q1_ne_Q2 := by decide
  Q1_gt_N := by decide
  Q2_gt_N := by decide

theorem twaux_exists_26_643 : TWAuxEllFixedExists 643 26 :=
  ⟨twaux_26_643⟩

def twaux_10000_643 : TWAuxEllFixed 643 10000 where
  Q1ell := 10289
  Q2ell := 4961389
  Q1_prime := by norm_num
  Q2_prime := (q2_witness_643).1
  Q1_mod := by decide
  Q2_mod := by decide
  Q1_ge5 := by decide
  Q2_ge5 := by decide
  Q1_ne_Q2 := by decide
  Q1_gt_N := by decide
  Q2_gt_N := by decide

theorem twaux_exists_10000_643 : TWAuxEllFixedExists 643 10000 :=
  ⟨twaux_10000_643⟩

def twaux_26_647 : TWAuxEllFixed 647 26 where
  Q1ell := 9059
  Q2ell := 1674437
  Q1_prime := by norm_num
  Q2_prime := (q2_witness_647).1
  Q1_mod := by decide
  Q2_mod := by decide
  Q1_ge5 := by decide
  Q2_ge5 := by decide
  Q1_ne_Q2 := by decide
  Q1_gt_N := by decide
  Q2_gt_N := by decide

theorem twaux_exists_26_647 : TWAuxEllFixedExists 647 26 :=
  ⟨twaux_26_647⟩

def twaux_10000_647 : TWAuxEllFixed 647 10000 where
  Q1ell := 12941
  Q2ell := 1674437
  Q1_prime := by norm_num
  Q2_prime := (q2_witness_647).1
  Q1_mod := by decide
  Q2_mod := by decide
  Q1_ge5 := by decide
  Q2_ge5 := by decide
  Q1_ne_Q2 := by decide
  Q1_gt_N := by decide
  Q2_gt_N := by decide

theorem twaux_exists_10000_647 : TWAuxEllFixedExists 647 10000 :=
  ⟨twaux_10000_647⟩

def twaux_26_653 : TWAuxEllFixed 653 26 where
  Q1ell := 1307
  Q2ell := 1705637
  Q1_prime := by norm_num
  Q2_prime := (q2_witness_653).1
  Q1_mod := by decide
  Q2_mod := by decide
  Q1_ge5 := by decide
  Q2_ge5 := by decide
  Q1_ne_Q2 := by decide
  Q1_gt_N := by decide
  Q2_gt_N := by decide

theorem twaux_exists_26_653 : TWAuxEllFixedExists 653 26 :=
  ⟨twaux_26_653⟩

def twaux_10000_653 : TWAuxEllFixed 653 10000 where
  Q1ell := 16979
  Q2ell := 1705637
  Q1_prime := by norm_num
  Q2_prime := (q2_witness_653).1
  Q1_mod := by decide
  Q2_mod := by decide
  Q1_ge5 := by decide
  Q2_ge5 := by decide
  Q1_ne_Q2 := by decide
  Q1_gt_N := by decide
  Q2_gt_N := by decide

theorem twaux_exists_10000_653 : TWAuxEllFixedExists 653 10000 :=
  ⟨twaux_10000_653⟩

def twaux_26_659 : TWAuxEllFixed 659 26 where
  Q1ell := 1319
  Q2ell := 5211373
  Q1_prime := by norm_num
  Q2_prime := (q2_witness_659).1
  Q1_mod := by decide
  Q2_mod := by decide
  Q1_ge5 := by decide
  Q2_ge5 := by decide
  Q1_ne_Q2 := by decide
  Q1_gt_N := by decide
  Q2_gt_N := by decide

theorem twaux_exists_26_659 : TWAuxEllFixedExists 659 26 :=
  ⟨twaux_26_659⟩

def twaux_10000_659 : TWAuxEllFixed 659 10000 where
  Q1ell := 11863
  Q2ell := 5211373
  Q1_prime := by norm_num
  Q2_prime := (q2_witness_659).1
  Q1_mod := by decide
  Q2_mod := by decide
  Q1_ge5 := by decide
  Q2_ge5 := by decide
  Q1_ne_Q2 := by decide
  Q1_gt_N := by decide
  Q2_gt_N := by decide

theorem twaux_exists_10000_659 : TWAuxEllFixedExists 659 10000 :=
  ⟨twaux_10000_659⟩

def twaux_26_661 : TWAuxEllFixed 661 26 where
  Q1ell := 3967
  Q2ell := 2621527
  Q1_prime := by norm_num
  Q2_prime := (q2_witness_661).1
  Q1_mod := by decide
  Q2_mod := by decide
  Q1_ge5 := by decide
  Q2_ge5 := by decide
  Q1_ne_Q2 := by decide
  Q1_gt_N := by decide
  Q2_gt_N := by decide

theorem twaux_exists_26_661 : TWAuxEllFixedExists 661 26 :=
  ⟨twaux_26_661⟩

def twaux_10000_661 : TWAuxEllFixed 661 10000 where
  Q1ell := 14543
  Q2ell := 2621527
  Q1_prime := by norm_num
  Q2_prime := (q2_witness_661).1
  Q1_mod := by decide
  Q2_mod := by decide
  Q1_ge5 := by decide
  Q2_ge5 := by decide
  Q1_ne_Q2 := by decide
  Q1_gt_N := by decide
  Q2_gt_N := by decide

theorem twaux_exists_10000_661 : TWAuxEllFixedExists 661 10000 :=
  ⟨twaux_10000_661⟩

def twaux_26_673 : TWAuxEllFixed 673 26 where
  Q1ell := 2693
  Q2ell := 9964439
  Q1_prime := by norm_num
  Q2_prime := (q2_witness_673).1
  Q1_mod := by decide
  Q2_mod := by decide
  Q1_ge5 := by decide
  Q2_ge5 := by decide
  Q1_ne_Q2 := by decide
  Q1_gt_N := by decide
  Q2_gt_N := by decide

theorem twaux_exists_26_673 : TWAuxEllFixedExists 673 26 :=
  ⟨twaux_26_673⟩

def twaux_10000_673 : TWAuxEllFixed 673 10000 where
  Q1ell := 24229
  Q2ell := 9964439
  Q1_prime := by norm_num
  Q2_prime := (q2_witness_673).1
  Q1_mod := by decide
  Q2_mod := by decide
  Q1_ge5 := by decide
  Q2_ge5 := by decide
  Q1_ne_Q2 := by decide
  Q1_gt_N := by decide
  Q2_gt_N := by decide

theorem twaux_exists_10000_673 : TWAuxEllFixedExists 673 10000 :=
  ⟨twaux_10000_673⟩

def twaux_26_677 : TWAuxEllFixed 677 26 where
  Q1ell := 5417
  Q2ell := 1833317
  Q1_prime := by norm_num
  Q2_prime := (q2_witness_677).1
  Q1_mod := by decide
  Q2_mod := by decide
  Q1_ge5 := by decide
  Q2_ge5 := by decide
  Q1_ne_Q2 := by decide
  Q1_gt_N := by decide
  Q2_gt_N := by decide

theorem twaux_exists_26_677 : TWAuxEllFixedExists 677 26 :=
  ⟨twaux_26_677⟩

def twaux_10000_677 : TWAuxEllFixed 677 10000 where
  Q1ell := 16249
  Q2ell := 1833317
  Q1_prime := by norm_num
  Q2_prime := (q2_witness_677).1
  Q1_mod := by decide
  Q2_mod := by decide
  Q1_ge5 := by decide
  Q2_ge5 := by decide
  Q1_ne_Q2 := by decide
  Q1_gt_N := by decide
  Q2_gt_N := by decide

theorem twaux_exists_10000_677 : TWAuxEllFixedExists 677 10000 :=
  ⟨twaux_10000_677⟩

def twaux_26_683 : TWAuxEllFixed 683 26 where
  Q1ell := 1367
  Q2ell := 1865957
  Q1_prime := by norm_num
  Q2_prime := (q2_witness_683).1
  Q1_mod := by decide
  Q2_mod := by decide
  Q1_ge5 := by decide
  Q2_ge5 := by decide
  Q1_ne_Q2 := by decide
  Q1_gt_N := by decide
  Q2_gt_N := by decide

theorem twaux_exists_26_683 : TWAuxEllFixedExists 683 26 :=
  ⟨twaux_26_683⟩

def twaux_10000_683 : TWAuxEllFixed 683 10000 where
  Q1ell := 28687
  Q2ell := 1865957
  Q1_prime := by norm_num
  Q2_prime := (q2_witness_683).1
  Q1_mod := by decide
  Q2_mod := by decide
  Q1_ge5 := by decide
  Q2_ge5 := by decide
  Q1_ne_Q2 := by decide
  Q1_gt_N := by decide
  Q2_gt_N := by decide

theorem twaux_exists_10000_683 : TWAuxEllFixedExists 683 10000 :=
  ⟨twaux_10000_683⟩

def twaux_26_691 : TWAuxEllFixed 691 26 where
  Q1ell := 6911
  Q2ell := 2864887
  Q1_prime := by norm_num
  Q2_prime := (q2_witness_691).1
  Q1_mod := by decide
  Q2_mod := by decide
  Q1_ge5 := by decide
  Q2_ge5 := by decide
  Q1_ne_Q2 := by decide
  Q1_gt_N := by decide
  Q2_gt_N := by decide

theorem twaux_exists_26_691 : TWAuxEllFixedExists 691 26 :=
  ⟨twaux_26_691⟩

def twaux_10000_691 : TWAuxEllFixed 691 10000 where
  Q1ell := 11057
  Q2ell := 2864887
  Q1_prime := by norm_num
  Q2_prime := (q2_witness_691).1
  Q1_mod := by decide
  Q2_mod := by decide
  Q1_ge5 := by decide
  Q2_ge5 := by decide
  Q1_ne_Q2 := by decide
  Q1_gt_N := by decide
  Q2_gt_N := by decide

theorem twaux_exists_10000_691 : TWAuxEllFixedExists 691 10000 :=
  ⟨twaux_10000_691⟩

theorem TWAuxEllFixedExists_26_601_700 {ℓ : Nat}
    (h : ℓ ∈ primes601to700) : TWAuxEllFixedExists ℓ 26 := by
  fin_cases h
  · exact twaux_exists_26_601
  · exact twaux_exists_26_607
  · exact twaux_exists_26_613
  · exact twaux_exists_26_617
  · exact twaux_exists_26_619
  · exact twaux_exists_26_631
  · exact twaux_exists_26_641
  · exact twaux_exists_26_643
  · exact twaux_exists_26_647
  · exact twaux_exists_26_653
  · exact twaux_exists_26_659
  · exact twaux_exists_26_661
  · exact twaux_exists_26_673
  · exact twaux_exists_26_677
  · exact twaux_exists_26_683
  · exact twaux_exists_26_691

theorem TWAuxEllFixedExists_10000_601_700 {ℓ : Nat}
    (h : ℓ ∈ primes601to700) : TWAuxEllFixedExists ℓ 10000 := by
  fin_cases h
  · exact twaux_exists_10000_601
  · exact twaux_exists_10000_607
  · exact twaux_exists_10000_613
  · exact twaux_exists_10000_617
  · exact twaux_exists_10000_619
  · exact twaux_exists_10000_631
  · exact twaux_exists_10000_641
  · exact twaux_exists_10000_643
  · exact twaux_exists_10000_647
  · exact twaux_exists_10000_653
  · exact twaux_exists_10000_659
  · exact twaux_exists_10000_661
  · exact twaux_exists_10000_673
  · exact twaux_exists_10000_677
  · exact twaux_exists_10000_683
  · exact twaux_exists_10000_691

end BealLevel26Foundations.Beal.FullProof.TWAuxEllFixed_601_700
