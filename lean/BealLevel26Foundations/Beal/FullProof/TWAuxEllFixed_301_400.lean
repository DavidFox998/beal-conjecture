/-
Copyright (c) 2026 David Fox. All rights reserved.
Released under MIT license as described in the file LICENSE.
Authors: David Fox

Track B v8.17.0 — `TWAuxEllFixed` at `N = 26` and `N = 10000`
for residuals in `primes301to400`.  `Qᵢ > N` so `Qᵢ ∤ N`.
Not `∀ N ≤ 10000`.  `ℓ = 941` needs `Q₁ = 30113`
(`N + 21000`, not `N + 20000`).
-/

import BealLevel26Foundations.Beal.FullProof.TWAuxEllFixedCore
import BealLevel26Foundations.Beal.FullProof.TWPrimesQ2_301_400
import Mathlib.Tactic

namespace BealLevel26Foundations.Beal.FullProof.TWAuxEllFixed_301_400

open BealLevel26Foundations.Beal.FullProof.TWAuxEllFixedCore
open BealLevel26Foundations.Beal.FullProof.TWPrimes_301_400
open BealLevel26Foundations.Beal.FullProof.TWPrimesQ2_301_400
open BealLevel26Foundations.Beal.FullProof.TWPrimesPratt

set_option maxHeartbeats 4000000
set_option maxRecDepth 2048
def twaux_26_307 : TWAuxEllFixed 307 26 where
  Q1ell := 1229
  Q2ell := 2638973
  Q1_prime := by norm_num
  Q2_prime := (q2_witness_307).1
  Q1_mod := by decide
  Q2_mod := by decide
  Q1_ge5 := by decide
  Q2_ge5 := by decide
  Q1_ne_Q2 := by decide
  Q1_gt_N := by decide
  Q2_gt_N := by decide

theorem twaux_exists_26_307 : TWAuxEllFixedExists 307 26 :=
  ⟨twaux_26_307⟩

def twaux_10000_307 : TWAuxEllFixed 307 10000 where
  Q1ell := 12281
  Q2ell := 2638973
  Q1_prime := by norm_num
  Q2_prime := (q2_witness_307).1
  Q1_mod := by decide
  Q2_mod := by decide
  Q1_ge5 := by decide
  Q2_ge5 := by decide
  Q1_ne_Q2 := by decide
  Q1_gt_N := by decide
  Q2_gt_N := by decide

theorem twaux_exists_10000_307 : TWAuxEllFixedExists 307 10000 :=
  ⟨twaux_10000_307⟩

def twaux_26_311 : TWAuxEllFixed 311 26 where
  Q1ell := 1867
  Q2ell := 1547537
  Q1_prime := by norm_num
  Q2_prime := (q2_witness_311).1
  Q1_mod := by decide
  Q2_mod := by decide
  Q1_ge5 := by decide
  Q2_ge5 := by decide
  Q1_ne_Q2 := by decide
  Q1_gt_N := by decide
  Q2_gt_N := by decide

theorem twaux_exists_26_311 : TWAuxEllFixedExists 311 26 :=
  ⟨twaux_26_311⟩

def twaux_10000_311 : TWAuxEllFixed 311 10000 where
  Q1ell := 11197
  Q2ell := 1547537
  Q1_prime := by norm_num
  Q2_prime := (q2_witness_311).1
  Q1_mod := by decide
  Q2_mod := by decide
  Q1_ge5 := by decide
  Q2_ge5 := by decide
  Q1_ne_Q2 := by decide
  Q1_gt_N := by decide
  Q2_gt_N := by decide

theorem twaux_exists_10000_311 : TWAuxEllFixedExists 311 10000 :=
  ⟨twaux_10000_311⟩

def twaux_26_313 : TWAuxEllFixed 313 26 where
  Q1ell := 1879
  Q2ell := 979691
  Q1_prime := by norm_num
  Q2_prime := (q2_witness_313).1
  Q1_mod := by decide
  Q2_mod := by decide
  Q1_ge5 := by decide
  Q2_ge5 := by decide
  Q1_ne_Q2 := by decide
  Q1_gt_N := by decide
  Q2_gt_N := by decide

theorem twaux_exists_26_313 : TWAuxEllFixedExists 313 26 :=
  ⟨twaux_26_313⟩

def twaux_10000_313 : TWAuxEllFixed 313 10000 where
  Q1ell := 13147
  Q2ell := 979691
  Q1_prime := by norm_num
  Q2_prime := (q2_witness_313).1
  Q1_mod := by decide
  Q2_mod := by decide
  Q1_ge5 := by decide
  Q2_ge5 := by decide
  Q1_ne_Q2 := by decide
  Q1_gt_N := by decide
  Q2_gt_N := by decide

theorem twaux_exists_10000_313 : TWAuxEllFixedExists 313 10000 :=
  ⟨twaux_10000_313⟩

def twaux_26_317 : TWAuxEllFixed 317 26 where
  Q1ell := 8243
  Q2ell := 401957
  Q1_prime := by norm_num
  Q2_prime := (q2_witness_317).1
  Q1_mod := by decide
  Q2_mod := by decide
  Q1_ge5 := by decide
  Q2_ge5 := by decide
  Q1_ne_Q2 := by decide
  Q1_gt_N := by decide
  Q2_gt_N := by decide

theorem twaux_exists_26_317 : TWAuxEllFixedExists 317 26 :=
  ⟨twaux_26_317⟩

def twaux_10000_317 : TWAuxEllFixed 317 10000 where
  Q1ell := 15217
  Q2ell := 401957
  Q1_prime := by norm_num
  Q2_prime := (q2_witness_317).1
  Q1_mod := by decide
  Q2_mod := by decide
  Q1_ge5 := by decide
  Q2_ge5 := by decide
  Q1_ne_Q2 := by decide
  Q1_gt_N := by decide
  Q2_gt_N := by decide

theorem twaux_exists_10000_317 : TWAuxEllFixedExists 317 10000 :=
  ⟨twaux_10000_317⟩

def twaux_26_331 : TWAuxEllFixed 331 26 where
  Q1ell := 1987
  Q2ell := 1752977
  Q1_prime := by norm_num
  Q2_prime := (q2_witness_331).1
  Q1_mod := by decide
  Q2_mod := by decide
  Q1_ge5 := by decide
  Q2_ge5 := by decide
  Q1_ne_Q2 := by decide
  Q1_gt_N := by decide
  Q2_gt_N := by decide

theorem twaux_exists_26_331 : TWAuxEllFixedExists 331 26 :=
  ⟨twaux_26_331⟩

def twaux_10000_331 : TWAuxEllFixed 331 10000 where
  Q1ell := 13241
  Q2ell := 1752977
  Q1_prime := by norm_num
  Q2_prime := (q2_witness_331).1
  Q1_mod := by decide
  Q2_mod := by decide
  Q1_ge5 := by decide
  Q2_ge5 := by decide
  Q1_ne_Q2 := by decide
  Q1_gt_N := by decide
  Q2_gt_N := by decide

theorem twaux_exists_10000_331 : TWAuxEllFixedExists 331 10000 :=
  ⟨twaux_10000_331⟩

def twaux_26_337 : TWAuxEllFixed 337 26 where
  Q1ell := 3371
  Q2ell := 454277
  Q1_prime := by norm_num
  Q2_prime := (q2_witness_337).1
  Q1_mod := by decide
  Q2_mod := by decide
  Q1_ge5 := by decide
  Q2_ge5 := by decide
  Q1_ne_Q2 := by decide
  Q1_gt_N := by decide
  Q2_gt_N := by decide

theorem twaux_exists_26_337 : TWAuxEllFixedExists 337 26 :=
  ⟨twaux_26_337⟩

def twaux_10000_337 : TWAuxEllFixed 337 10000 where
  Q1ell := 10111
  Q2ell := 454277
  Q1_prime := by norm_num
  Q2_prime := (q2_witness_337).1
  Q1_mod := by decide
  Q2_mod := by decide
  Q1_ge5 := by decide
  Q2_ge5 := by decide
  Q1_ne_Q2 := by decide
  Q1_gt_N := by decide
  Q2_gt_N := by decide

theorem twaux_exists_10000_337 : TWAuxEllFixedExists 337 10000 :=
  ⟨twaux_10000_337⟩

def twaux_26_347 : TWAuxEllFixed 347 26 where
  Q1ell := 2083
  Q2ell := 1444909
  Q1_prime := by norm_num
  Q2_prime := (q2_witness_347).1
  Q1_mod := by decide
  Q2_mod := by decide
  Q1_ge5 := by decide
  Q2_ge5 := by decide
  Q1_ne_Q2 := by decide
  Q1_gt_N := by decide
  Q2_gt_N := by decide

theorem twaux_exists_26_347 : TWAuxEllFixedExists 347 26 :=
  ⟨twaux_26_347⟩

def twaux_10000_347 : TWAuxEllFixed 347 10000 where
  Q1ell := 13187
  Q2ell := 1444909
  Q1_prime := by norm_num
  Q2_prime := (q2_witness_347).1
  Q1_mod := by decide
  Q2_mod := by decide
  Q1_ge5 := by decide
  Q2_ge5 := by decide
  Q1_ne_Q2 := by decide
  Q1_gt_N := by decide
  Q2_gt_N := by decide

theorem twaux_exists_10000_347 : TWAuxEllFixedExists 347 10000 :=
  ⟨twaux_10000_347⟩

def twaux_26_349 : TWAuxEllFixed 349 26 where
  Q1ell := 3491
  Q2ell := 4384837
  Q1_prime := by norm_num
  Q2_prime := (q2_witness_349).1
  Q1_mod := by decide
  Q2_mod := by decide
  Q1_ge5 := by decide
  Q2_ge5 := by decide
  Q1_ne_Q2 := by decide
  Q1_gt_N := by decide
  Q2_gt_N := by decide

theorem twaux_exists_26_349 : TWAuxEllFixedExists 349 26 :=
  ⟨twaux_26_349⟩

def twaux_10000_349 : TWAuxEllFixed 349 10000 where
  Q1ell := 11867
  Q2ell := 4384837
  Q1_prime := by norm_num
  Q2_prime := (q2_witness_349).1
  Q1_mod := by decide
  Q2_mod := by decide
  Q1_ge5 := by decide
  Q2_ge5 := by decide
  Q1_ne_Q2 := by decide
  Q1_gt_N := by decide
  Q2_gt_N := by decide

theorem twaux_exists_10000_349 : TWAuxEllFixedExists 349 10000 :=
  ⟨twaux_10000_349⟩

def twaux_26_353 : TWAuxEllFixed 353 26 where
  Q1ell := 4943
  Q2ell := 3489053
  Q1_prime := by norm_num
  Q2_prime := (q2_witness_353).1
  Q1_mod := by decide
  Q2_mod := by decide
  Q1_ge5 := by decide
  Q2_ge5 := by decide
  Q1_ne_Q2 := by decide
  Q1_gt_N := by decide
  Q2_gt_N := by decide

theorem twaux_exists_26_353 : TWAuxEllFixedExists 353 26 :=
  ⟨twaux_26_353⟩

def twaux_10000_353 : TWAuxEllFixed 353 10000 where
  Q1ell := 14827
  Q2ell := 3489053
  Q1_prime := by norm_num
  Q2_prime := (q2_witness_353).1
  Q1_mod := by decide
  Q2_mod := by decide
  Q1_ge5 := by decide
  Q2_ge5 := by decide
  Q1_ne_Q2 := by decide
  Q1_gt_N := by decide
  Q2_gt_N := by decide

theorem twaux_exists_10000_353 : TWAuxEllFixedExists 353 10000 :=
  ⟨twaux_10000_353⟩

def twaux_26_359 : TWAuxEllFixed 359 26 where
  Q1ell := 719
  Q2ell := 773287
  Q1_prime := by norm_num
  Q2_prime := (q2_witness_359).1
  Q1_mod := by decide
  Q2_mod := by decide
  Q1_ge5 := by decide
  Q2_ge5 := by decide
  Q1_ne_Q2 := by decide
  Q1_gt_N := by decide
  Q2_gt_N := by decide

theorem twaux_exists_26_359 : TWAuxEllFixedExists 359 26 :=
  ⟨twaux_26_359⟩

def twaux_10000_359 : TWAuxEllFixed 359 10000 where
  Q1ell := 10771
  Q2ell := 773287
  Q1_prime := by norm_num
  Q2_prime := (q2_witness_359).1
  Q1_mod := by decide
  Q2_mod := by decide
  Q1_ge5 := by decide
  Q2_ge5 := by decide
  Q1_ne_Q2 := by decide
  Q1_gt_N := by decide
  Q2_gt_N := by decide

theorem twaux_exists_10000_359 : TWAuxEllFixedExists 359 10000 :=
  ⟨twaux_10000_359⟩

def twaux_26_367 : TWAuxEllFixed 367 26 where
  Q1ell := 2203
  Q2ell := 1616269
  Q1_prime := by norm_num
  Q2_prime := (q2_witness_367).1
  Q1_mod := by decide
  Q2_mod := by decide
  Q1_ge5 := by decide
  Q2_ge5 := by decide
  Q1_ne_Q2 := by decide
  Q1_gt_N := by decide
  Q2_gt_N := by decide

theorem twaux_exists_26_367 : TWAuxEllFixedExists 367 26 :=
  ⟨twaux_26_367⟩

def twaux_10000_367 : TWAuxEllFixed 367 10000 where
  Q1ell := 12479
  Q2ell := 1616269
  Q1_prime := by norm_num
  Q2_prime := (q2_witness_367).1
  Q1_mod := by decide
  Q2_mod := by decide
  Q1_ge5 := by decide
  Q2_ge5 := by decide
  Q1_ne_Q2 := by decide
  Q1_gt_N := by decide
  Q2_gt_N := by decide

theorem twaux_exists_10000_367 : TWAuxEllFixedExists 367 10000 :=
  ⟨twaux_10000_367⟩

def twaux_26_373 : TWAuxEllFixed 373 26 where
  Q1ell := 1493
  Q2ell := 2504323
  Q1_prime := by norm_num
  Q2_prime := (q2_witness_373).1
  Q1_mod := by decide
  Q2_mod := by decide
  Q1_ge5 := by decide
  Q2_ge5 := by decide
  Q1_ne_Q2 := by decide
  Q1_gt_N := by decide
  Q2_gt_N := by decide

theorem twaux_exists_26_373 : TWAuxEllFixedExists 373 26 :=
  ⟨twaux_26_373⟩

def twaux_10000_373 : TWAuxEllFixed 373 10000 where
  Q1ell := 15667
  Q2ell := 2504323
  Q1_prime := by norm_num
  Q2_prime := (q2_witness_373).1
  Q1_mod := by decide
  Q2_mod := by decide
  Q1_ge5 := by decide
  Q2_ge5 := by decide
  Q1_ne_Q2 := by decide
  Q1_gt_N := by decide
  Q2_gt_N := by decide

theorem twaux_exists_10000_373 : TWAuxEllFixedExists 373 10000 :=
  ⟨twaux_10000_373⟩

def twaux_26_379 : TWAuxEllFixed 379 26 where
  Q1ell := 4549
  Q2ell := 1436411
  Q1_prime := by norm_num
  Q2_prime := (q2_witness_379).1
  Q1_mod := by decide
  Q2_mod := by decide
  Q1_ge5 := by decide
  Q2_ge5 := by decide
  Q1_ne_Q2 := by decide
  Q1_gt_N := by decide
  Q2_gt_N := by decide

theorem twaux_exists_26_379 : TWAuxEllFixedExists 379 26 :=
  ⟨twaux_26_379⟩

def twaux_10000_379 : TWAuxEllFixed 379 10000 where
  Q1ell := 10613
  Q2ell := 1436411
  Q1_prime := by norm_num
  Q2_prime := (q2_witness_379).1
  Q1_mod := by decide
  Q2_mod := by decide
  Q1_ge5 := by decide
  Q2_ge5 := by decide
  Q1_ne_Q2 := by decide
  Q1_gt_N := by decide
  Q2_gt_N := by decide

theorem twaux_exists_10000_379 : TWAuxEllFixedExists 379 10000 :=
  ⟨twaux_10000_379⟩

def twaux_26_383 : TWAuxEllFixed 383 26 where
  Q1ell := 4597
  Q2ell := 3520537
  Q1_prime := by norm_num
  Q2_prime := (q2_witness_383).1
  Q1_mod := by decide
  Q2_mod := by decide
  Q1_ge5 := by decide
  Q2_ge5 := by decide
  Q1_ne_Q2 := by decide
  Q1_gt_N := by decide
  Q2_gt_N := by decide

theorem twaux_exists_26_383 : TWAuxEllFixedExists 383 26 :=
  ⟨twaux_26_383⟩

def twaux_10000_383 : TWAuxEllFixed 383 10000 where
  Q1ell := 11491
  Q2ell := 3520537
  Q1_prime := by norm_num
  Q2_prime := (q2_witness_383).1
  Q1_mod := by decide
  Q2_mod := by decide
  Q1_ge5 := by decide
  Q2_ge5 := by decide
  Q1_ne_Q2 := by decide
  Q1_gt_N := by decide
  Q2_gt_N := by decide

theorem twaux_exists_10000_383 : TWAuxEllFixedExists 383 10000 :=
  ⟨twaux_10000_383⟩

def twaux_26_389 : TWAuxEllFixed 389 26 where
  Q1ell := 9337
  Q2ell := 907927
  Q1_prime := by norm_num
  Q2_prime := (q2_witness_389).1
  Q1_mod := by decide
  Q2_mod := by decide
  Q1_ge5 := by decide
  Q2_ge5 := by decide
  Q1_ne_Q2 := by decide
  Q1_gt_N := by decide
  Q2_gt_N := by decide

theorem twaux_exists_26_389 : TWAuxEllFixedExists 389 26 :=
  ⟨twaux_26_389⟩

def twaux_10000_389 : TWAuxEllFixed 389 10000 where
  Q1ell := 14783
  Q2ell := 907927
  Q1_prime := by norm_num
  Q2_prime := (q2_witness_389).1
  Q1_mod := by decide
  Q2_mod := by decide
  Q1_ge5 := by decide
  Q2_ge5 := by decide
  Q1_ne_Q2 := by decide
  Q1_gt_N := by decide
  Q2_gt_N := by decide

theorem twaux_exists_10000_389 : TWAuxEllFixedExists 389 10000 :=
  ⟨twaux_10000_389⟩

def twaux_26_397 : TWAuxEllFixed 397 26 where
  Q1ell := 2383
  Q2ell := 2836963
  Q1_prime := by norm_num
  Q2_prime := (q2_witness_397).1
  Q1_mod := by decide
  Q2_mod := by decide
  Q1_ge5 := by decide
  Q2_ge5 := by decide
  Q1_ne_Q2 := by decide
  Q1_gt_N := by decide
  Q2_gt_N := by decide

theorem twaux_exists_26_397 : TWAuxEllFixedExists 397 26 :=
  ⟨twaux_26_397⟩

def twaux_10000_397 : TWAuxEllFixed 397 10000 where
  Q1ell := 11117
  Q2ell := 2836963
  Q1_prime := by norm_num
  Q2_prime := (q2_witness_397).1
  Q1_mod := by decide
  Q2_mod := by decide
  Q1_ge5 := by decide
  Q2_ge5 := by decide
  Q1_ne_Q2 := by decide
  Q1_gt_N := by decide
  Q2_gt_N := by decide

theorem twaux_exists_10000_397 : TWAuxEllFixedExists 397 10000 :=
  ⟨twaux_10000_397⟩

theorem TWAuxEllFixedExists_26_301_400 {ℓ : Nat}
    (h : ℓ ∈ primes301to400) : TWAuxEllFixedExists ℓ 26 := by
  fin_cases h
  · exact twaux_exists_26_307
  · exact twaux_exists_26_311
  · exact twaux_exists_26_313
  · exact twaux_exists_26_317
  · exact twaux_exists_26_331
  · exact twaux_exists_26_337
  · exact twaux_exists_26_347
  · exact twaux_exists_26_349
  · exact twaux_exists_26_353
  · exact twaux_exists_26_359
  · exact twaux_exists_26_367
  · exact twaux_exists_26_373
  · exact twaux_exists_26_379
  · exact twaux_exists_26_383
  · exact twaux_exists_26_389
  · exact twaux_exists_26_397

theorem TWAuxEllFixedExists_10000_301_400 {ℓ : Nat}
    (h : ℓ ∈ primes301to400) : TWAuxEllFixedExists ℓ 10000 := by
  fin_cases h
  · exact twaux_exists_10000_307
  · exact twaux_exists_10000_311
  · exact twaux_exists_10000_313
  · exact twaux_exists_10000_317
  · exact twaux_exists_10000_331
  · exact twaux_exists_10000_337
  · exact twaux_exists_10000_347
  · exact twaux_exists_10000_349
  · exact twaux_exists_10000_353
  · exact twaux_exists_10000_359
  · exact twaux_exists_10000_367
  · exact twaux_exists_10000_373
  · exact twaux_exists_10000_379
  · exact twaux_exists_10000_383
  · exact twaux_exists_10000_389
  · exact twaux_exists_10000_397

end BealLevel26Foundations.Beal.FullProof.TWAuxEllFixed_301_400
