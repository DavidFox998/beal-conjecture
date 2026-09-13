/-
Copyright (c) 2026 David Fox. All rights reserved.
Released under MIT license as described in the file LICENSE.
Authors: David Fox

Track B v8.17.0 — `TWAuxEllFixed` at `N = 26` and `N = 10000`
for residuals in `primes501to600`.  `Qᵢ > N` so `Qᵢ ∤ N`.
Not `∀ N ≤ 10000`.  `ℓ = 941` needs `Q₁ = 30113`
(`N + 21000`, not `N + 20000`).
-/

import BealLevel26Foundations.Beal.FullProof.TWAuxEllFixedCore
import BealLevel26Foundations.Beal.FullProof.TWPrimesQ2_501_600
import Mathlib.Tactic

namespace BealLevel26Foundations.Beal.FullProof.TWAuxEllFixed_501_600

open BealLevel26Foundations.Beal.FullProof.TWAuxEllFixedCore
open BealLevel26Foundations.Beal.FullProof.TWPrimes_501_600
open BealLevel26Foundations.Beal.FullProof.TWPrimesQ2_501_600
open BealLevel26Foundations.Beal.FullProof.TWPrimesPratt

set_option maxHeartbeats 4000000
set_option maxRecDepth 2048
def twaux_26_503 : TWAuxEllFixed 503 26 where
  Q1ell := 3019
  Q2ell := 2530091
  Q1_prime := by norm_num
  Q2_prime := (q2_witness_503).1
  Q1_mod := by decide
  Q2_mod := by decide
  Q1_ge5 := by decide
  Q2_ge5 := by decide
  Q1_ne_Q2 := by decide
  Q1_gt_N := by decide
  Q2_gt_N := by decide

theorem twaux_exists_26_503 : TWAuxEllFixedExists 503 26 :=
  ⟨twaux_26_503⟩

def twaux_10000_503 : TWAuxEllFixed 503 10000 where
  Q1ell := 10061
  Q2ell := 2530091
  Q1_prime := by norm_num
  Q2_prime := (q2_witness_503).1
  Q1_mod := by decide
  Q2_mod := by decide
  Q1_ge5 := by decide
  Q2_ge5 := by decide
  Q1_ne_Q2 := by decide
  Q1_gt_N := by decide
  Q2_gt_N := by decide

theorem twaux_exists_10000_503 : TWAuxEllFixedExists 503 10000 :=
  ⟨twaux_10000_503⟩

def twaux_26_509 : TWAuxEllFixed 509 26 where
  Q1ell := 1019
  Q2ell := 2590811
  Q1_prime := by norm_num
  Q2_prime := (q2_witness_509).1
  Q1_mod := by decide
  Q2_mod := by decide
  Q1_ge5 := by decide
  Q2_ge5 := by decide
  Q1_ne_Q2 := by decide
  Q1_gt_N := by decide
  Q2_gt_N := by decide

theorem twaux_exists_26_509 : TWAuxEllFixedExists 509 26 :=
  ⟨twaux_26_509⟩

def twaux_10000_509 : TWAuxEllFixed 509 10000 where
  Q1ell := 10181
  Q2ell := 2590811
  Q1_prime := by norm_num
  Q2_prime := (q2_witness_509).1
  Q1_mod := by decide
  Q2_mod := by decide
  Q1_ge5 := by decide
  Q2_ge5 := by decide
  Q1_ne_Q2 := by decide
  Q1_gt_N := by decide
  Q2_gt_N := by decide

theorem twaux_exists_10000_509 : TWAuxEllFixedExists 509 10000 :=
  ⟨twaux_10000_509⟩

def twaux_26_521 : TWAuxEllFixed 521 26 where
  Q1ell := 16673
  Q2ell := 4343057
  Q1_prime := by norm_num
  Q2_prime := (q2_witness_521).1
  Q1_mod := by decide
  Q2_mod := by decide
  Q1_ge5 := by decide
  Q2_ge5 := by decide
  Q1_ne_Q2 := by decide
  Q1_gt_N := by decide
  Q2_gt_N := by decide

theorem twaux_exists_26_521 : TWAuxEllFixedExists 521 26 :=
  ⟨twaux_26_521⟩

def twaux_10000_521 : TWAuxEllFixed 521 10000 where
  Q1ell := 16673
  Q2ell := 4343057
  Q1_prime := by norm_num
  Q2_prime := (q2_witness_521).1
  Q1_mod := by decide
  Q2_mod := by decide
  Q1_ge5 := by decide
  Q2_ge5 := by decide
  Q1_ne_Q2 := by decide
  Q1_gt_N := by decide
  Q2_gt_N := by decide

theorem twaux_exists_10000_521 : TWAuxEllFixedExists 521 10000 :=
  ⟨twaux_10000_521⟩

def twaux_26_523 : TWAuxEllFixed 523 26 where
  Q1ell := 5231
  Q2ell := 6017639
  Q1_prime := by norm_num
  Q2_prime := (q2_witness_523).1
  Q1_mod := by decide
  Q2_mod := by decide
  Q1_ge5 := by decide
  Q2_ge5 := by decide
  Q1_ne_Q2 := by decide
  Q1_gt_N := by decide
  Q2_gt_N := by decide

theorem twaux_exists_26_523 : TWAuxEllFixedExists 523 26 :=
  ⟨twaux_26_523⟩

def twaux_10000_523 : TWAuxEllFixed 523 10000 where
  Q1ell := 12553
  Q2ell := 6017639
  Q1_prime := by norm_num
  Q2_prime := (q2_witness_523).1
  Q1_mod := by decide
  Q2_mod := by decide
  Q1_ge5 := by decide
  Q2_ge5 := by decide
  Q1_ne_Q2 := by decide
  Q1_gt_N := by decide
  Q2_gt_N := by decide

theorem twaux_exists_10000_523 : TWAuxEllFixedExists 523 10000 :=
  ⟨twaux_10000_523⟩

def twaux_26_541 : TWAuxEllFixed 541 26 where
  Q1ell := 9739
  Q2ell := 6438983
  Q1_prime := by norm_num
  Q2_prime := (q2_witness_541).1
  Q1_mod := by decide
  Q2_mod := by decide
  Q1_ge5 := by decide
  Q2_ge5 := by decide
  Q1_ne_Q2 := by decide
  Q1_gt_N := by decide
  Q2_gt_N := by decide

theorem twaux_exists_26_541 : TWAuxEllFixedExists 541 26 :=
  ⟨twaux_26_541⟩

def twaux_10000_541 : TWAuxEllFixed 541 10000 where
  Q1ell := 11903
  Q2ell := 6438983
  Q1_prime := by norm_num
  Q2_prime := (q2_witness_541).1
  Q1_mod := by decide
  Q2_mod := by decide
  Q1_ge5 := by decide
  Q2_ge5 := by decide
  Q1_ne_Q2 := by decide
  Q1_gt_N := by decide
  Q2_gt_N := by decide

theorem twaux_exists_10000_541 : TWAuxEllFixedExists 541 10000 :=
  ⟨twaux_10000_541⟩

def twaux_26_547 : TWAuxEllFixed 547 26 where
  Q1ell := 5471
  Q2ell := 1196837
  Q1_prime := by norm_num
  Q2_prime := (q2_witness_547).1
  Q1_mod := by decide
  Q2_mod := by decide
  Q1_ge5 := by decide
  Q2_ge5 := by decide
  Q1_ne_Q2 := by decide
  Q1_gt_N := by decide
  Q2_gt_N := by decide

theorem twaux_exists_26_547 : TWAuxEllFixedExists 547 26 :=
  ⟨twaux_26_547⟩

def twaux_10000_547 : TWAuxEllFixed 547 10000 where
  Q1ell := 16411
  Q2ell := 1196837
  Q1_prime := by norm_num
  Q2_prime := (q2_witness_547).1
  Q1_mod := by decide
  Q2_mod := by decide
  Q1_ge5 := by decide
  Q2_ge5 := by decide
  Q1_ne_Q2 := by decide
  Q1_gt_N := by decide
  Q2_gt_N := by decide

theorem twaux_exists_10000_547 : TWAuxEllFixedExists 547 10000 :=
  ⟨twaux_10000_547⟩

def twaux_26_557 : TWAuxEllFixed 557 26 where
  Q1ell := 3343
  Q2ell := 18614941
  Q1_prime := by norm_num
  Q2_prime := (q2_witness_557).1
  Q1_mod := by decide
  Q2_mod := by decide
  Q1_ge5 := by decide
  Q2_ge5 := by decide
  Q1_ne_Q2 := by decide
  Q1_gt_N := by decide
  Q2_gt_N := by decide

theorem twaux_exists_26_557 : TWAuxEllFixedExists 557 26 :=
  ⟨twaux_26_557⟩

def twaux_10000_557 : TWAuxEllFixed 557 10000 where
  Q1ell := 24509
  Q2ell := 18614941
  Q1_prime := by norm_num
  Q2_prime := (q2_witness_557).1
  Q1_mod := by decide
  Q2_mod := by decide
  Q1_ge5 := by decide
  Q2_ge5 := by decide
  Q1_ne_Q2 := by decide
  Q1_gt_N := by decide
  Q2_gt_N := by decide

theorem twaux_exists_10000_557 : TWAuxEllFixedExists 557 10000 :=
  ⟨twaux_10000_557⟩

def twaux_26_563 : TWAuxEllFixed 563 26 where
  Q1ell := 7883
  Q2ell := 6973319
  Q1_prime := by norm_num
  Q2_prime := (q2_witness_563).1
  Q1_mod := by decide
  Q2_mod := by decide
  Q1_ge5 := by decide
  Q2_ge5 := by decide
  Q1_ne_Q2 := by decide
  Q1_gt_N := by decide
  Q2_gt_N := by decide

theorem twaux_exists_26_563 : TWAuxEllFixedExists 563 26 :=
  ⟨twaux_26_563⟩

def twaux_10000_563 : TWAuxEllFixed 563 10000 where
  Q1ell := 11261
  Q2ell := 6973319
  Q1_prime := by norm_num
  Q2_prime := (q2_witness_563).1
  Q1_mod := by decide
  Q2_mod := by decide
  Q1_ge5 := by decide
  Q2_ge5 := by decide
  Q1_ne_Q2 := by decide
  Q1_gt_N := by decide
  Q2_gt_N := by decide

theorem twaux_exists_10000_563 : TWAuxEllFixedExists 563 10000 :=
  ⟨twaux_10000_563⟩

def twaux_26_569 : TWAuxEllFixed 569 26 where
  Q1ell := 6829
  Q2ell := 7122743
  Q1_prime := by norm_num
  Q2_prime := (q2_witness_569).1
  Q1_mod := by decide
  Q2_mod := by decide
  Q1_ge5 := by decide
  Q2_ge5 := by decide
  Q1_ne_Q2 := by decide
  Q1_gt_N := by decide
  Q2_gt_N := by decide

theorem twaux_exists_26_569 : TWAuxEllFixedExists 569 26 :=
  ⟨twaux_26_569⟩

def twaux_10000_569 : TWAuxEllFixed 569 10000 where
  Q1ell := 10243
  Q2ell := 7122743
  Q1_prime := by norm_num
  Q2_prime := (q2_witness_569).1
  Q1_mod := by decide
  Q2_mod := by decide
  Q1_ge5 := by decide
  Q2_ge5 := by decide
  Q1_ne_Q2 := by decide
  Q1_gt_N := by decide
  Q2_gt_N := by decide

theorem twaux_exists_10000_569 : TWAuxEllFixedExists 569 10000 :=
  ⟨twaux_10000_569⟩

def twaux_26_571 : TWAuxEllFixed 571 26 where
  Q1ell := 5711
  Q2ell := 9129149
  Q1_prime := by norm_num
  Q2_prime := (q2_witness_571).1
  Q1_mod := by decide
  Q2_mod := by decide
  Q1_ge5 := by decide
  Q2_ge5 := by decide
  Q1_ne_Q2 := by decide
  Q1_gt_N := by decide
  Q2_gt_N := by decide

theorem twaux_exists_26_571 : TWAuxEllFixedExists 571 26 :=
  ⟨twaux_26_571⟩

def twaux_10000_571 : TWAuxEllFixed 571 10000 where
  Q1ell := 26267
  Q2ell := 9129149
  Q1_prime := by norm_num
  Q2_prime := (q2_witness_571).1
  Q1_mod := by decide
  Q2_mod := by decide
  Q1_ge5 := by decide
  Q2_ge5 := by decide
  Q1_ne_Q2 := by decide
  Q1_gt_N := by decide
  Q2_gt_N := by decide

theorem twaux_exists_10000_571 : TWAuxEllFixedExists 571 10000 :=
  ⟨twaux_10000_571⟩

def twaux_26_577 : TWAuxEllFixed 577 26 where
  Q1ell := 2309
  Q2ell := 7324439
  Q1_prime := by norm_num
  Q2_prime := (q2_witness_577).1
  Q1_mod := by decide
  Q2_mod := by decide
  Q1_ge5 := by decide
  Q2_ge5 := by decide
  Q1_ne_Q2 := by decide
  Q1_gt_N := by decide
  Q2_gt_N := by decide

theorem twaux_exists_26_577 : TWAuxEllFixedExists 577 26 :=
  ⟨twaux_26_577⟩

def twaux_10000_577 : TWAuxEllFixed 577 10000 where
  Q1ell := 20773
  Q2ell := 7324439
  Q1_prime := by norm_num
  Q2_prime := (q2_witness_577).1
  Q1_mod := by decide
  Q2_mod := by decide
  Q1_ge5 := by decide
  Q2_ge5 := by decide
  Q1_ne_Q2 := by decide
  Q1_gt_N := by decide
  Q2_gt_N := by decide

theorem twaux_exists_10000_577 : TWAuxEllFixedExists 577 10000 :=
  ⟨twaux_10000_577⟩

def twaux_26_587 : TWAuxEllFixed 587 26 where
  Q1ell := 8219
  Q2ell := 1378277
  Q1_prime := by norm_num
  Q2_prime := (q2_witness_587).1
  Q1_mod := by decide
  Q2_mod := by decide
  Q1_ge5 := by decide
  Q2_ge5 := by decide
  Q1_ne_Q2 := by decide
  Q1_gt_N := by decide
  Q2_gt_N := by decide

theorem twaux_exists_26_587 : TWAuxEllFixedExists 587 26 :=
  ⟨twaux_26_587⟩

def twaux_10000_587 : TWAuxEllFixed 587 10000 where
  Q1ell := 10567
  Q2ell := 1378277
  Q1_prime := by norm_num
  Q2_prime := (q2_witness_587).1
  Q1_mod := by decide
  Q2_mod := by decide
  Q1_ge5 := by decide
  Q2_ge5 := by decide
  Q1_ne_Q2 := by decide
  Q1_gt_N := by decide
  Q2_gt_N := by decide

theorem twaux_exists_10000_587 : TWAuxEllFixedExists 587 10000 :=
  ⟨twaux_10000_587⟩

def twaux_26_593 : TWAuxEllFixed 593 26 where
  Q1ell := 1187
  Q2ell := 6329683
  Q1_prime := by norm_num
  Q2_prime := (q2_witness_593).1
  Q1_mod := by decide
  Q2_mod := by decide
  Q1_ge5 := by decide
  Q2_ge5 := by decide
  Q1_ne_Q2 := by decide
  Q1_gt_N := by decide
  Q2_gt_N := by decide

theorem twaux_exists_26_593 : TWAuxEllFixedExists 593 26 :=
  ⟨twaux_26_593⟩

def twaux_10000_593 : TWAuxEllFixed 593 10000 where
  Q1ell := 17791
  Q2ell := 6329683
  Q1_prime := by norm_num
  Q2_prime := (q2_witness_593).1
  Q1_mod := by decide
  Q2_mod := by decide
  Q1_ge5 := by decide
  Q2_ge5 := by decide
  Q1_ne_Q2 := by decide
  Q1_gt_N := by decide
  Q2_gt_N := by decide

theorem twaux_exists_10000_593 : TWAuxEllFixedExists 593 10000 :=
  ⟨twaux_10000_593⟩

def twaux_26_599 : TWAuxEllFixed 599 26 where
  Q1ell := 4793
  Q2ell := 15069643
  Q1_prime := by norm_num
  Q2_prime := (q2_witness_599).1
  Q1_mod := by decide
  Q2_mod := by decide
  Q1_ge5 := by decide
  Q2_ge5 := by decide
  Q1_ne_Q2 := by decide
  Q1_gt_N := by decide
  Q2_gt_N := by decide

theorem twaux_exists_26_599 : TWAuxEllFixedExists 599 26 :=
  ⟨twaux_26_599⟩

def twaux_10000_599 : TWAuxEllFixed 599 10000 where
  Q1ell := 11981
  Q2ell := 15069643
  Q1_prime := by norm_num
  Q2_prime := (q2_witness_599).1
  Q1_mod := by decide
  Q2_mod := by decide
  Q1_ge5 := by decide
  Q2_ge5 := by decide
  Q1_ne_Q2 := by decide
  Q1_gt_N := by decide
  Q2_gt_N := by decide

theorem twaux_exists_10000_599 : TWAuxEllFixedExists 599 10000 :=
  ⟨twaux_10000_599⟩

theorem TWAuxEllFixedExists_26_501_600 {ℓ : Nat}
    (h : ℓ ∈ primes501to600) : TWAuxEllFixedExists ℓ 26 := by
  fin_cases h
  · exact twaux_exists_26_503
  · exact twaux_exists_26_509
  · exact twaux_exists_26_521
  · exact twaux_exists_26_523
  · exact twaux_exists_26_541
  · exact twaux_exists_26_547
  · exact twaux_exists_26_557
  · exact twaux_exists_26_563
  · exact twaux_exists_26_569
  · exact twaux_exists_26_571
  · exact twaux_exists_26_577
  · exact twaux_exists_26_587
  · exact twaux_exists_26_593
  · exact twaux_exists_26_599

theorem TWAuxEllFixedExists_10000_501_600 {ℓ : Nat}
    (h : ℓ ∈ primes501to600) : TWAuxEllFixedExists ℓ 10000 := by
  fin_cases h
  · exact twaux_exists_10000_503
  · exact twaux_exists_10000_509
  · exact twaux_exists_10000_521
  · exact twaux_exists_10000_523
  · exact twaux_exists_10000_541
  · exact twaux_exists_10000_547
  · exact twaux_exists_10000_557
  · exact twaux_exists_10000_563
  · exact twaux_exists_10000_569
  · exact twaux_exists_10000_571
  · exact twaux_exists_10000_577
  · exact twaux_exists_10000_587
  · exact twaux_exists_10000_593
  · exact twaux_exists_10000_599

end BealLevel26Foundations.Beal.FullProof.TWAuxEllFixed_501_600
