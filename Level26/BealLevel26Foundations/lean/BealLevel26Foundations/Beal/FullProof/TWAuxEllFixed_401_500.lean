/-
Copyright (c) 2026 David Fox. All rights reserved.
Released under MIT license as described in the file LICENSE.
Authors: David Fox

Track B v8.17.0 — `TWAuxEllFixed` at `N = 26` and `N = 10000`
for residuals in `primes401to500`.  `Qᵢ > N` so `Qᵢ ∤ N`.
Not `∀ N ≤ 10000`.  `ℓ = 941` needs `Q₁ = 30113`
(`N + 21000`, not `N + 20000`).
-/

import BealLevel26Foundations.Beal.FullProof.TWAuxEllFixedCore
import BealLevel26Foundations.Beal.FullProof.TWPrimesQ2_401_500
import Mathlib.Tactic

namespace BealLevel26Foundations.Beal.FullProof.TWAuxEllFixed_401_500

open BealLevel26Foundations.Beal.FullProof.TWAuxEllFixedCore
open BealLevel26Foundations.Beal.FullProof.TWPrimes_401_500
open BealLevel26Foundations.Beal.FullProof.TWPrimesQ2_401_500
open BealLevel26Foundations.Beal.FullProof.TWPrimesPratt

set_option maxHeartbeats 4000000
set_option maxRecDepth 2048
def twaux_26_401 : TWAuxEllFixed 401 26 where
  Q1ell := 3209
  Q2ell := 4824031
  Q1_prime := by norm_num
  Q2_prime := (q2_witness_401).1
  Q1_mod := by decide
  Q2_mod := by decide
  Q1_ge5 := by decide
  Q2_ge5 := by decide
  Q1_ne_Q2 := by decide
  Q1_gt_N := by decide
  Q2_gt_N := by decide

theorem twaux_exists_26_401 : TWAuxEllFixedExists 401 26 :=
  ⟨twaux_26_401⟩

def twaux_10000_401 : TWAuxEllFixed 401 10000 where
  Q1ell := 10427
  Q2ell := 4824031
  Q1_prime := by norm_num
  Q2_prime := (q2_witness_401).1
  Q1_mod := by decide
  Q2_mod := by decide
  Q1_ge5 := by decide
  Q2_ge5 := by decide
  Q1_ne_Q2 := by decide
  Q1_gt_N := by decide
  Q2_gt_N := by decide

theorem twaux_exists_10000_401 : TWAuxEllFixedExists 401 10000 :=
  ⟨twaux_10000_401⟩

def twaux_26_409 : TWAuxEllFixed 409 26 where
  Q1ell := 1637
  Q2ell := 6022117
  Q1_prime := by norm_num
  Q2_prime := (q2_witness_409).1
  Q1_mod := by decide
  Q2_mod := by decide
  Q1_ge5 := by decide
  Q2_ge5 := by decide
  Q1_ne_Q2 := by decide
  Q1_gt_N := by decide
  Q2_gt_N := by decide

theorem twaux_exists_26_409 : TWAuxEllFixedExists 409 26 :=
  ⟨twaux_26_409⟩

def twaux_10000_409 : TWAuxEllFixed 409 10000 where
  Q1ell := 13907
  Q2ell := 6022117
  Q1_prime := by norm_num
  Q2_prime := (q2_witness_409).1
  Q1_mod := by decide
  Q2_mod := by decide
  Q1_ge5 := by decide
  Q2_ge5 := by decide
  Q1_ne_Q2 := by decide
  Q1_gt_N := by decide
  Q2_gt_N := by decide

theorem twaux_exists_10000_409 : TWAuxEllFixedExists 409 10000 :=
  ⟨twaux_10000_409⟩

def twaux_26_419 : TWAuxEllFixed 419 26 where
  Q1ell := 839
  Q2ell := 2106733
  Q1_prime := by norm_num
  Q2_prime := (q2_witness_419).1
  Q1_mod := by decide
  Q2_mod := by decide
  Q1_ge5 := by decide
  Q2_ge5 := by decide
  Q1_ne_Q2 := by decide
  Q1_gt_N := by decide
  Q2_gt_N := by decide

theorem twaux_exists_26_419 : TWAuxEllFixedExists 419 26 :=
  ⟨twaux_26_419⟩

def twaux_10000_419 : TWAuxEllFixed 419 10000 where
  Q1ell := 15923
  Q2ell := 2106733
  Q1_prime := by norm_num
  Q2_prime := (q2_witness_419).1
  Q1_mod := by decide
  Q2_mod := by decide
  Q1_ge5 := by decide
  Q2_ge5 := by decide
  Q1_ne_Q2 := by decide
  Q1_gt_N := by decide
  Q2_gt_N := by decide

theorem twaux_exists_10000_419 : TWAuxEllFixedExists 419 10000 :=
  ⟨twaux_10000_419⟩

def twaux_26_421 : TWAuxEllFixed 421 26 where
  Q1ell := 4211
  Q2ell := 2126893
  Q1_prime := by norm_num
  Q2_prime := (q2_witness_421).1
  Q1_mod := by decide
  Q2_mod := by decide
  Q1_ge5 := by decide
  Q2_ge5 := by decide
  Q1_ne_Q2 := by decide
  Q1_gt_N := by decide
  Q2_gt_N := by decide

theorem twaux_exists_26_421 : TWAuxEllFixedExists 421 26 :=
  ⟨twaux_26_421⟩

def twaux_10000_421 : TWAuxEllFixed 421 10000 where
  Q1ell := 11789
  Q2ell := 2126893
  Q1_prime := by norm_num
  Q2_prime := (q2_witness_421).1
  Q1_mod := by decide
  Q2_mod := by decide
  Q1_ge5 := by decide
  Q2_ge5 := by decide
  Q1_ne_Q2 := by decide
  Q1_gt_N := by decide
  Q2_gt_N := by decide

theorem twaux_exists_10000_421 : TWAuxEllFixedExists 421 10000 :=
  ⟨twaux_10000_421⟩

def twaux_26_431 : TWAuxEllFixed 431 26 where
  Q1ell := 863
  Q2ell := 1114567
  Q1_prime := by norm_num
  Q2_prime := (q2_witness_431).1
  Q1_mod := by decide
  Q2_mod := by decide
  Q1_ge5 := by decide
  Q2_ge5 := by decide
  Q1_ne_Q2 := by decide
  Q1_gt_N := by decide
  Q2_gt_N := by decide

theorem twaux_exists_26_431 : TWAuxEllFixedExists 431 26 :=
  ⟨twaux_26_431⟩

def twaux_10000_431 : TWAuxEllFixed 431 10000 where
  Q1ell := 24137
  Q2ell := 1114567
  Q1_prime := by norm_num
  Q2_prime := (q2_witness_431).1
  Q1_mod := by decide
  Q2_mod := by decide
  Q1_ge5 := by decide
  Q2_ge5 := by decide
  Q1_ne_Q2 := by decide
  Q1_gt_N := by decide
  Q2_gt_N := by decide

theorem twaux_exists_10000_431 : TWAuxEllFixedExists 431 10000 :=
  ⟨twaux_10000_431⟩

def twaux_26_433 : TWAuxEllFixed 433 26 where
  Q1ell := 1733
  Q2ell := 3374803
  Q1_prime := by norm_num
  Q2_prime := (q2_witness_433).1
  Q1_mod := by decide
  Q2_mod := by decide
  Q1_ge5 := by decide
  Q2_ge5 := by decide
  Q1_ne_Q2 := by decide
  Q1_gt_N := by decide
  Q2_gt_N := by decide

theorem twaux_exists_26_433 : TWAuxEllFixedExists 433 26 :=
  ⟨twaux_26_433⟩

def twaux_10000_433 : TWAuxEllFixed 433 10000 where
  Q1ell := 14723
  Q2ell := 3374803
  Q1_prime := by norm_num
  Q2_prime := (q2_witness_433).1
  Q1_mod := by decide
  Q2_mod := by decide
  Q1_ge5 := by decide
  Q2_ge5 := by decide
  Q1_ne_Q2 := by decide
  Q1_gt_N := by decide
  Q2_gt_N := by decide

theorem twaux_exists_10000_433 : TWAuxEllFixedExists 433 10000 :=
  ⟨twaux_10000_433⟩

def twaux_26_439 : TWAuxEllFixed 439 26 where
  Q1ell := 4391
  Q2ell := 1156327
  Q1_prime := by norm_num
  Q2_prime := (q2_witness_439).1
  Q1_mod := by decide
  Q2_mod := by decide
  Q1_ge5 := by decide
  Q2_ge5 := by decide
  Q1_ne_Q2 := by decide
  Q1_gt_N := by decide
  Q2_gt_N := by decide

theorem twaux_exists_26_439 : TWAuxEllFixedExists 439 26 :=
  ⟨twaux_26_439⟩

def twaux_10000_439 : TWAuxEllFixed 439 10000 where
  Q1ell := 13171
  Q2ell := 1156327
  Q1_prime := by norm_num
  Q2_prime := (q2_witness_439).1
  Q1_mod := by decide
  Q2_mod := by decide
  Q1_ge5 := by decide
  Q2_ge5 := by decide
  Q1_ne_Q2 := by decide
  Q1_gt_N := by decide
  Q2_gt_N := by decide

theorem twaux_exists_10000_439 : TWAuxEllFixedExists 439 10000 :=
  ⟨twaux_10000_439⟩

def twaux_26_443 : TWAuxEllFixed 443 26 where
  Q1ell := 887
  Q2ell := 3532483
  Q1_prime := by norm_num
  Q2_prime := (q2_witness_443).1
  Q1_mod := by decide
  Q2_mod := by decide
  Q1_ge5 := by decide
  Q2_ge5 := by decide
  Q1_ne_Q2 := by decide
  Q1_gt_N := by decide
  Q2_gt_N := by decide

theorem twaux_exists_26_443 : TWAuxEllFixedExists 443 26 :=
  ⟨twaux_26_443⟩

def twaux_10000_443 : TWAuxEllFixed 443 10000 where
  Q1ell := 11519
  Q2ell := 3532483
  Q1_prime := by norm_num
  Q2_prime := (q2_witness_443).1
  Q1_mod := by decide
  Q2_mod := by decide
  Q1_ge5 := by decide
  Q2_ge5 := by decide
  Q1_ne_Q2 := by decide
  Q1_gt_N := by decide
  Q2_gt_N := by decide

theorem twaux_exists_10000_443 : TWAuxEllFixedExists 443 10000 :=
  ⟨twaux_10000_443⟩

def twaux_26_449 : TWAuxEllFixed 449 26 where
  Q1ell := 3593
  Q2ell := 3628819
  Q1_prime := by norm_num
  Q2_prime := (q2_witness_449).1
  Q1_mod := by decide
  Q2_mod := by decide
  Q1_ge5 := by decide
  Q2_ge5 := by decide
  Q1_ne_Q2 := by decide
  Q1_gt_N := by decide
  Q2_gt_N := by decide

theorem twaux_exists_26_449 : TWAuxEllFixedExists 449 26 :=
  ⟨twaux_26_449⟩

def twaux_10000_449 : TWAuxEllFixed 449 10000 where
  Q1ell := 14369
  Q2ell := 3628819
  Q1_prime := by norm_num
  Q2_prime := (q2_witness_449).1
  Q1_mod := by decide
  Q2_mod := by decide
  Q1_ge5 := by decide
  Q2_ge5 := by decide
  Q1_ne_Q2 := by decide
  Q1_gt_N := by decide
  Q2_gt_N := by decide

theorem twaux_exists_10000_449 : TWAuxEllFixedExists 449 10000 :=
  ⟨twaux_10000_449⟩

def twaux_26_457 : TWAuxEllFixed 457 26 where
  Q1ell := 13711
  Q2ell := 5012377
  Q1_prime := by norm_num
  Q2_prime := (q2_witness_457).1
  Q1_mod := by decide
  Q2_mod := by decide
  Q1_ge5 := by decide
  Q2_ge5 := by decide
  Q1_ne_Q2 := by decide
  Q1_gt_N := by decide
  Q2_gt_N := by decide

theorem twaux_exists_26_457 : TWAuxEllFixedExists 457 26 :=
  ⟨twaux_26_457⟩

def twaux_10000_457 : TWAuxEllFixed 457 10000 where
  Q1ell := 13711
  Q2ell := 5012377
  Q1_prime := by norm_num
  Q2_prime := (q2_witness_457).1
  Q1_mod := by decide
  Q2_mod := by decide
  Q1_ge5 := by decide
  Q2_ge5 := by decide
  Q1_ne_Q2 := by decide
  Q1_gt_N := by decide
  Q2_gt_N := by decide

theorem twaux_exists_10000_457 : TWAuxEllFixedExists 457 10000 :=
  ⟨twaux_10000_457⟩

def twaux_26_461 : TWAuxEllFixed 461 26 where
  Q1ell := 2767
  Q2ell := 2550253
  Q1_prime := by norm_num
  Q2_prime := (q2_witness_461).1
  Q1_mod := by decide
  Q2_mod := by decide
  Q1_ge5 := by decide
  Q2_ge5 := by decide
  Q1_ne_Q2 := by decide
  Q1_gt_N := by decide
  Q2_gt_N := by decide

theorem twaux_exists_26_461 : TWAuxEllFixedExists 461 26 :=
  ⟨twaux_26_461⟩

def twaux_10000_461 : TWAuxEllFixed 461 10000 where
  Q1ell := 11987
  Q2ell := 2550253
  Q1_prime := by norm_num
  Q2_prime := (q2_witness_461).1
  Q1_mod := by decide
  Q2_mod := by decide
  Q1_ge5 := by decide
  Q2_ge5 := by decide
  Q1_ne_Q2 := by decide
  Q1_gt_N := by decide
  Q2_gt_N := by decide

theorem twaux_exists_10000_461 : TWAuxEllFixedExists 461 10000 :=
  ⟨twaux_10000_461⟩

def twaux_26_463 : TWAuxEllFixed 463 26 where
  Q1ell := 5557
  Q2ell := 17578259
  Q1_prime := by norm_num
  Q2_prime := (q2_witness_463).1
  Q1_mod := by decide
  Q2_mod := by decide
  Q1_ge5 := by decide
  Q2_ge5 := by decide
  Q1_ne_Q2 := by decide
  Q1_gt_N := by decide
  Q2_gt_N := by decide

theorem twaux_exists_26_463 : TWAuxEllFixedExists 463 26 :=
  ⟨twaux_26_463⟩

def twaux_10000_463 : TWAuxEllFixed 463 10000 where
  Q1ell := 11113
  Q2ell := 17578259
  Q1_prime := by norm_num
  Q2_prime := (q2_witness_463).1
  Q1_mod := by decide
  Q2_mod := by decide
  Q1_ge5 := by decide
  Q2_ge5 := by decide
  Q1_ne_Q2 := by decide
  Q1_gt_N := by decide
  Q2_gt_N := by decide

theorem twaux_exists_10000_463 : TWAuxEllFixedExists 463 10000 :=
  ⟨twaux_10000_463⟩

def twaux_26_467 : TWAuxEllFixed 467 26 where
  Q1ell := 2803
  Q2ell := 4797959
  Q1_prime := by norm_num
  Q2_prime := (q2_witness_467).1
  Q1_mod := by decide
  Q2_mod := by decide
  Q1_ge5 := by decide
  Q2_ge5 := by decide
  Q1_ne_Q2 := by decide
  Q1_gt_N := by decide
  Q2_gt_N := by decide

theorem twaux_exists_26_467 : TWAuxEllFixedExists 467 26 :=
  ⟨twaux_26_467⟩

def twaux_10000_467 : TWAuxEllFixed 467 10000 where
  Q1ell := 12143
  Q2ell := 4797959
  Q1_prime := by norm_num
  Q2_prime := (q2_witness_467).1
  Q1_mod := by decide
  Q2_mod := by decide
  Q1_ge5 := by decide
  Q2_ge5 := by decide
  Q1_ne_Q2 := by decide
  Q1_gt_N := by decide
  Q2_gt_N := by decide

theorem twaux_exists_10000_467 : TWAuxEllFixedExists 467 10000 :=
  ⟨twaux_10000_467⟩

def twaux_26_479 : TWAuxEllFixed 479 26 where
  Q1ell := 3833
  Q2ell := 5047703
  Q1_prime := by norm_num
  Q2_prime := (q2_witness_479).1
  Q1_mod := by decide
  Q2_mod := by decide
  Q1_ge5 := by decide
  Q2_ge5 := by decide
  Q1_ne_Q2 := by decide
  Q1_gt_N := by decide
  Q2_gt_N := by decide

theorem twaux_exists_26_479 : TWAuxEllFixedExists 479 26 :=
  ⟨twaux_26_479⟩

def twaux_10000_479 : TWAuxEllFixed 479 10000 where
  Q1ell := 11497
  Q2ell := 5047703
  Q1_prime := by norm_num
  Q2_prime := (q2_witness_479).1
  Q1_mod := by decide
  Q2_mod := by decide
  Q1_ge5 := by decide
  Q2_ge5 := by decide
  Q1_ne_Q2 := by decide
  Q1_gt_N := by decide
  Q2_gt_N := by decide

theorem twaux_exists_10000_479 : TWAuxEllFixedExists 479 10000 :=
  ⟨twaux_10000_479⟩

def twaux_26_487 : TWAuxEllFixed 487 26 where
  Q1ell := 1949
  Q2ell := 9486761
  Q1_prime := by norm_num
  Q2_prime := (q2_witness_487).1
  Q1_mod := by decide
  Q2_mod := by decide
  Q1_ge5 := by decide
  Q2_ge5 := by decide
  Q1_ne_Q2 := by decide
  Q1_gt_N := by decide
  Q2_gt_N := by decide

theorem twaux_exists_26_487 : TWAuxEllFixedExists 487 26 :=
  ⟨twaux_26_487⟩

def twaux_10000_487 : TWAuxEllFixed 487 10000 where
  Q1ell := 11689
  Q2ell := 9486761
  Q1_prime := by norm_num
  Q2_prime := (q2_witness_487).1
  Q1_mod := by decide
  Q2_mod := by decide
  Q1_ge5 := by decide
  Q2_ge5 := by decide
  Q1_ne_Q2 := by decide
  Q1_gt_N := by decide
  Q2_gt_N := by decide

theorem twaux_exists_10000_487 : TWAuxEllFixedExists 487 10000 :=
  ⟨twaux_10000_487⟩

def twaux_26_491 : TWAuxEllFixed 491 26 where
  Q1ell := 983
  Q2ell := 2892973
  Q1_prime := by norm_num
  Q2_prime := (q2_witness_491).1
  Q1_mod := by decide
  Q2_mod := by decide
  Q1_ge5 := by decide
  Q2_ge5 := by decide
  Q1_ne_Q2 := by decide
  Q1_gt_N := by decide
  Q2_gt_N := by decide

theorem twaux_exists_26_491 : TWAuxEllFixedExists 491 26 :=
  ⟨twaux_26_491⟩

def twaux_10000_491 : TWAuxEllFixed 491 10000 where
  Q1ell := 14731
  Q2ell := 2892973
  Q1_prime := by norm_num
  Q2_prime := (q2_witness_491).1
  Q1_mod := by decide
  Q2_mod := by decide
  Q1_ge5 := by decide
  Q2_ge5 := by decide
  Q1_ne_Q2 := by decide
  Q1_gt_N := by decide
  Q2_gt_N := by decide

theorem twaux_exists_10000_491 : TWAuxEllFixedExists 491 10000 :=
  ⟨twaux_10000_491⟩

def twaux_26_499 : TWAuxEllFixed 499 26 where
  Q1ell := 1997
  Q2ell := 6972029
  Q1_prime := by norm_num
  Q2_prime := (q2_witness_499).1
  Q1_mod := by decide
  Q2_mod := by decide
  Q1_ge5 := by decide
  Q2_ge5 := by decide
  Q1_ne_Q2 := by decide
  Q1_gt_N := by decide
  Q2_gt_N := by decide

theorem twaux_exists_26_499 : TWAuxEllFixedExists 499 26 :=
  ⟨twaux_26_499⟩

def twaux_10000_499 : TWAuxEllFixed 499 10000 where
  Q1ell := 10979
  Q2ell := 6972029
  Q1_prime := by norm_num
  Q2_prime := (q2_witness_499).1
  Q1_mod := by decide
  Q2_mod := by decide
  Q1_ge5 := by decide
  Q2_ge5 := by decide
  Q1_ne_Q2 := by decide
  Q1_gt_N := by decide
  Q2_gt_N := by decide

theorem twaux_exists_10000_499 : TWAuxEllFixedExists 499 10000 :=
  ⟨twaux_10000_499⟩

theorem TWAuxEllFixedExists_26_401_500 {ℓ : Nat}
    (h : ℓ ∈ primes401to500) : TWAuxEllFixedExists ℓ 26 := by
  fin_cases h
  · exact twaux_exists_26_401
  · exact twaux_exists_26_409
  · exact twaux_exists_26_419
  · exact twaux_exists_26_421
  · exact twaux_exists_26_431
  · exact twaux_exists_26_433
  · exact twaux_exists_26_439
  · exact twaux_exists_26_443
  · exact twaux_exists_26_449
  · exact twaux_exists_26_457
  · exact twaux_exists_26_461
  · exact twaux_exists_26_463
  · exact twaux_exists_26_467
  · exact twaux_exists_26_479
  · exact twaux_exists_26_487
  · exact twaux_exists_26_491
  · exact twaux_exists_26_499

theorem TWAuxEllFixedExists_10000_401_500 {ℓ : Nat}
    (h : ℓ ∈ primes401to500) : TWAuxEllFixedExists ℓ 10000 := by
  fin_cases h
  · exact twaux_exists_10000_401
  · exact twaux_exists_10000_409
  · exact twaux_exists_10000_419
  · exact twaux_exists_10000_421
  · exact twaux_exists_10000_431
  · exact twaux_exists_10000_433
  · exact twaux_exists_10000_439
  · exact twaux_exists_10000_443
  · exact twaux_exists_10000_449
  · exact twaux_exists_10000_457
  · exact twaux_exists_10000_461
  · exact twaux_exists_10000_463
  · exact twaux_exists_10000_467
  · exact twaux_exists_10000_479
  · exact twaux_exists_10000_487
  · exact twaux_exists_10000_491
  · exact twaux_exists_10000_499

end BealLevel26Foundations.Beal.FullProof.TWAuxEllFixed_401_500
