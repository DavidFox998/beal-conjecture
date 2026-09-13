/-
Copyright (c) 2026 David Fox. All rights reserved.
Released under MIT license as described in the file LICENSE.
Authors: David Fox

Track B v8.17.0 — `TWAuxEllFixed` at `N = 26` and `N = 10000`
for residuals in `primes201to300`.  `Qᵢ > N` so `Qᵢ ∤ N`.
Not `∀ N ≤ 10000`.  `ℓ = 941` needs `Q₁ = 30113`
(`N + 21000`, not `N + 20000`).
-/

import BealLevel26Foundations.Beal.FullProof.TWAuxEllFixedCore
import BealLevel26Foundations.Beal.FullProof.TWPrimesQ2_201_300
import Mathlib.Tactic

namespace BealLevel26Foundations.Beal.FullProof.TWAuxEllFixed_201_300

open BealLevel26Foundations.Beal.FullProof.TWAuxEllFixedCore
open BealLevel26Foundations.Beal.FullProof.TWPrimes_201_300
open BealLevel26Foundations.Beal.FullProof.TWPrimesQ2_201_300
open BealLevel26Foundations.Beal.FullProof.TWPrimesPratt

set_option maxHeartbeats 4000000
set_option maxRecDepth 2048
def twaux_26_211 : TWAuxEllFixed 211 26 where
  Q1ell := 2111
  Q2ell := 534253
  Q1_prime := by norm_num
  Q2_prime := (q2_witness_211).1
  Q1_mod := by decide
  Q2_mod := by decide
  Q1_ge5 := by decide
  Q2_ge5 := by decide
  Q1_ne_Q2 := by decide
  Q1_gt_N := by decide
  Q2_gt_N := by decide

theorem twaux_exists_26_211 : TWAuxEllFixedExists 211 26 :=
  ⟨twaux_26_211⟩

def twaux_10000_211 : TWAuxEllFixed 211 10000 where
  Q1ell := 10973
  Q2ell := 534253
  Q1_prime := by norm_num
  Q2_prime := (q2_witness_211).1
  Q1_mod := by decide
  Q2_mod := by decide
  Q1_ge5 := by decide
  Q2_ge5 := by decide
  Q1_ne_Q2 := by decide
  Q1_gt_N := by decide
  Q2_gt_N := by decide

theorem twaux_exists_10000_211 : TWAuxEllFixedExists 211 10000 :=
  ⟨twaux_10000_211⟩

def twaux_26_223 : TWAuxEllFixed 223 26 where
  Q1ell := 2677
  Q2ell := 497291
  Q1_prime := by norm_num
  Q2_prime := (q2_witness_223).1
  Q1_mod := by decide
  Q2_mod := by decide
  Q1_ge5 := by decide
  Q2_ge5 := by decide
  Q1_ne_Q2 := by decide
  Q1_gt_N := by decide
  Q2_gt_N := by decide

theorem twaux_exists_26_223 : TWAuxEllFixedExists 223 26 :=
  ⟨twaux_26_223⟩

def twaux_10000_223 : TWAuxEllFixed 223 10000 where
  Q1ell := 10259
  Q2ell := 497291
  Q1_prime := by norm_num
  Q2_prime := (q2_witness_223).1
  Q1_mod := by decide
  Q2_mod := by decide
  Q1_ge5 := by decide
  Q2_ge5 := by decide
  Q1_ne_Q2 := by decide
  Q1_gt_N := by decide
  Q2_gt_N := by decide

theorem twaux_exists_10000_223 : TWAuxEllFixedExists 223 10000 :=
  ⟨twaux_10000_223⟩

def twaux_26_227 : TWAuxEllFixed 227 26 where
  Q1ell := 5449
  Q2ell := 618349
  Q1_prime := by norm_num
  Q2_prime := (q2_witness_227).1
  Q1_mod := by decide
  Q2_mod := by decide
  Q1_ge5 := by decide
  Q2_ge5 := by decide
  Q1_ne_Q2 := by decide
  Q1_gt_N := by decide
  Q2_gt_N := by decide

theorem twaux_exists_26_227 : TWAuxEllFixedExists 227 26 :=
  ⟨twaux_26_227⟩

def twaux_10000_227 : TWAuxEllFixed 227 10000 where
  Q1ell := 11351
  Q2ell := 618349
  Q1_prime := by norm_num
  Q2_prime := (q2_witness_227).1
  Q1_mod := by decide
  Q2_mod := by decide
  Q1_ge5 := by decide
  Q2_ge5 := by decide
  Q1_ne_Q2 := by decide
  Q1_gt_N := by decide
  Q2_gt_N := by decide

theorem twaux_exists_10000_227 : TWAuxEllFixedExists 227 10000 :=
  ⟨twaux_10000_227⟩

def twaux_26_229 : TWAuxEllFixed 229 26 where
  Q1ell := 2749
  Q2ell := 524411
  Q1_prime := by norm_num
  Q2_prime := (q2_witness_229).1
  Q1_mod := by decide
  Q2_mod := by decide
  Q1_ge5 := by decide
  Q2_ge5 := by decide
  Q1_ne_Q2 := by decide
  Q1_gt_N := by decide
  Q2_gt_N := by decide

theorem twaux_exists_26_229 : TWAuxEllFixedExists 229 26 :=
  ⟨twaux_26_229⟩

def twaux_10000_229 : TWAuxEllFixed 229 10000 where
  Q1ell := 10993
  Q2ell := 524411
  Q1_prime := by norm_num
  Q2_prime := (q2_witness_229).1
  Q1_mod := by decide
  Q2_mod := by decide
  Q1_ge5 := by decide
  Q2_ge5 := by decide
  Q1_ne_Q2 := by decide
  Q1_gt_N := by decide
  Q2_gt_N := by decide

theorem twaux_exists_10000_229 : TWAuxEllFixedExists 229 10000 :=
  ⟨twaux_10000_229⟩

def twaux_26_233 : TWAuxEllFixed 233 26 where
  Q1ell := 467
  Q2ell := 217157
  Q1_prime := by norm_num
  Q2_prime := (q2_witness_233).1
  Q1_mod := by decide
  Q2_mod := by decide
  Q1_ge5 := by decide
  Q2_ge5 := by decide
  Q1_ne_Q2 := by decide
  Q1_gt_N := by decide
  Q2_gt_N := by decide

theorem twaux_exists_26_233 : TWAuxEllFixedExists 233 26 :=
  ⟨twaux_26_233⟩

def twaux_10000_233 : TWAuxEllFixed 233 10000 where
  Q1ell := 10253
  Q2ell := 217157
  Q1_prime := by norm_num
  Q2_prime := (q2_witness_233).1
  Q1_mod := by decide
  Q2_mod := by decide
  Q1_ge5 := by decide
  Q2_ge5 := by decide
  Q1_ne_Q2 := by decide
  Q1_gt_N := by decide
  Q2_gt_N := by decide

theorem twaux_exists_10000_233 : TWAuxEllFixedExists 233 10000 :=
  ⟨twaux_10000_233⟩

def twaux_26_239 : TWAuxEllFixed 239 26 where
  Q1ell := 479
  Q2ell := 571211
  Q1_prime := by norm_num
  Q2_prime := (q2_witness_239).1
  Q1_mod := by decide
  Q2_mod := by decide
  Q1_ge5 := by decide
  Q2_ge5 := by decide
  Q1_ne_Q2 := by decide
  Q1_gt_N := by decide
  Q2_gt_N := by decide

theorem twaux_exists_26_239 : TWAuxEllFixedExists 239 26 :=
  ⟨twaux_26_239⟩

def twaux_10000_239 : TWAuxEllFixed 239 10000 where
  Q1ell := 10039
  Q2ell := 571211
  Q1_prime := by norm_num
  Q2_prime := (q2_witness_239).1
  Q1_mod := by decide
  Q2_mod := by decide
  Q1_ge5 := by decide
  Q2_ge5 := by decide
  Q1_ne_Q2 := by decide
  Q1_gt_N := by decide
  Q2_gt_N := by decide

theorem twaux_exists_10000_239 : TWAuxEllFixedExists 239 10000 :=
  ⟨twaux_10000_239⟩

def twaux_26_241 : TWAuxEllFixed 241 26 where
  Q1ell := 1447
  Q2ell := 348487
  Q1_prime := by norm_num
  Q2_prime := (q2_witness_241).1
  Q1_mod := by decide
  Q2_mod := by decide
  Q1_ge5 := by decide
  Q2_ge5 := by decide
  Q1_ne_Q2 := by decide
  Q1_gt_N := by decide
  Q2_gt_N := by decide

theorem twaux_exists_26_241 : TWAuxEllFixedExists 241 26 :=
  ⟨twaux_26_241⟩

def twaux_10000_241 : TWAuxEllFixed 241 10000 where
  Q1ell := 11087
  Q2ell := 348487
  Q1_prime := by norm_num
  Q2_prime := (q2_witness_241).1
  Q1_mod := by decide
  Q2_mod := by decide
  Q1_ge5 := by decide
  Q2_ge5 := by decide
  Q1_ne_Q2 := by decide
  Q1_gt_N := by decide
  Q2_gt_N := by decide

theorem twaux_exists_10000_241 : TWAuxEllFixedExists 241 10000 :=
  ⟨twaux_10000_241⟩

def twaux_26_251 : TWAuxEllFixed 251 26 where
  Q1ell := 503
  Q2ell := 1008017
  Q1_prime := by norm_num
  Q2_prime := (q2_witness_251).1
  Q1_mod := by decide
  Q2_mod := by decide
  Q1_ge5 := by decide
  Q2_ge5 := by decide
  Q1_ne_Q2 := by decide
  Q1_gt_N := by decide
  Q2_gt_N := by decide

theorem twaux_exists_26_251 : TWAuxEllFixedExists 251 26 :=
  ⟨twaux_26_251⟩

def twaux_10000_251 : TWAuxEllFixed 251 10000 where
  Q1ell := 12049
  Q2ell := 1008017
  Q1_prime := by norm_num
  Q2_prime := (q2_witness_251).1
  Q1_mod := by decide
  Q2_mod := by decide
  Q1_ge5 := by decide
  Q2_ge5 := by decide
  Q1_ne_Q2 := by decide
  Q1_gt_N := by decide
  Q2_gt_N := by decide

theorem twaux_exists_10000_251 : TWAuxEllFixedExists 251 10000 :=
  ⟨twaux_10000_251⟩

def twaux_26_257 : TWAuxEllFixed 257 26 where
  Q1ell := 1543
  Q2ell := 1981471
  Q1_prime := by norm_num
  Q2_prime := (q2_witness_257).1
  Q1_mod := by decide
  Q2_mod := by decide
  Q1_ge5 := by decide
  Q2_ge5 := by decide
  Q1_ne_Q2 := by decide
  Q1_gt_N := by decide
  Q2_gt_N := by decide

theorem twaux_exists_26_257 : TWAuxEllFixedExists 257 26 :=
  ⟨twaux_26_257⟩

def twaux_10000_257 : TWAuxEllFixed 257 10000 where
  Q1ell := 13879
  Q2ell := 1981471
  Q1_prime := by norm_num
  Q2_prime := (q2_witness_257).1
  Q1_mod := by decide
  Q2_mod := by decide
  Q1_ge5 := by decide
  Q2_ge5 := by decide
  Q1_ne_Q2 := by decide
  Q1_gt_N := by decide
  Q2_gt_N := by decide

theorem twaux_exists_10000_257 : TWAuxEllFixedExists 257 10000 :=
  ⟨twaux_10000_257⟩

def twaux_26_263 : TWAuxEllFixed 263 26 where
  Q1ell := 1579
  Q2ell := 1936733
  Q1_prime := by norm_num
  Q2_prime := (q2_witness_263).1
  Q1_mod := by decide
  Q2_mod := by decide
  Q1_ge5 := by decide
  Q2_ge5 := by decide
  Q1_ne_Q2 := by decide
  Q1_gt_N := by decide
  Q2_gt_N := by decide

theorem twaux_exists_26_263 : TWAuxEllFixedExists 263 26 :=
  ⟨twaux_26_263⟩

def twaux_10000_263 : TWAuxEllFixed 263 10000 where
  Q1ell := 11047
  Q2ell := 1936733
  Q1_prime := by norm_num
  Q2_prime := (q2_witness_263).1
  Q1_mod := by decide
  Q2_mod := by decide
  Q1_ge5 := by decide
  Q2_ge5 := by decide
  Q1_ne_Q2 := by decide
  Q1_gt_N := by decide
  Q2_gt_N := by decide

theorem twaux_exists_10000_263 : TWAuxEllFixedExists 263 10000 :=
  ⟨twaux_10000_263⟩

def twaux_26_269 : TWAuxEllFixed 269 26 where
  Q1ell := 2153
  Q2ell := 434167
  Q1_prime := by norm_num
  Q2_prime := (q2_witness_269).1
  Q1_mod := by decide
  Q2_mod := by decide
  Q1_ge5 := by decide
  Q2_ge5 := by decide
  Q1_ne_Q2 := by decide
  Q1_gt_N := by decide
  Q2_gt_N := by decide

theorem twaux_exists_26_269 : TWAuxEllFixedExists 269 26 :=
  ⟨twaux_26_269⟩

def twaux_10000_269 : TWAuxEllFixed 269 10000 where
  Q1ell := 10223
  Q2ell := 434167
  Q1_prime := by norm_num
  Q2_prime := (q2_witness_269).1
  Q1_mod := by decide
  Q2_mod := by decide
  Q1_ge5 := by decide
  Q2_ge5 := by decide
  Q1_ne_Q2 := by decide
  Q1_gt_N := by decide
  Q2_gt_N := by decide

theorem twaux_exists_10000_269 : TWAuxEllFixedExists 269 10000 :=
  ⟨twaux_10000_269⟩

def twaux_26_271 : TWAuxEllFixed 271 26 where
  Q1ell := 1627
  Q2ell := 734411
  Q1_prime := by norm_num
  Q2_prime := (q2_witness_271).1
  Q1_mod := by decide
  Q2_mod := by decide
  Q1_ge5 := by decide
  Q2_ge5 := by decide
  Q1_ne_Q2 := by decide
  Q1_gt_N := by decide
  Q2_gt_N := by decide

theorem twaux_exists_26_271 : TWAuxEllFixedExists 271 26 :=
  ⟨twaux_26_271⟩

def twaux_10000_271 : TWAuxEllFixed 271 10000 where
  Q1ell := 11383
  Q2ell := 734411
  Q1_prime := by norm_num
  Q2_prime := (q2_witness_271).1
  Q1_mod := by decide
  Q2_mod := by decide
  Q1_ge5 := by decide
  Q2_ge5 := by decide
  Q1_ne_Q2 := by decide
  Q1_gt_N := by decide
  Q2_gt_N := by decide

theorem twaux_exists_10000_271 : TWAuxEllFixedExists 271 10000 :=
  ⟨twaux_10000_271⟩

def twaux_26_277 : TWAuxEllFixed 277 26 where
  Q1ell := 1109
  Q2ell := 3069161
  Q1_prime := by norm_num
  Q2_prime := (q2_witness_277).1
  Q1_mod := by decide
  Q2_mod := by decide
  Q1_ge5 := by decide
  Q2_ge5 := by decide
  Q1_ne_Q2 := by decide
  Q1_gt_N := by decide
  Q2_gt_N := by decide

theorem twaux_exists_26_277 : TWAuxEllFixedExists 277 26 :=
  ⟨twaux_26_277⟩

def twaux_10000_277 : TWAuxEllFixed 277 10000 where
  Q1ell := 12743
  Q2ell := 3069161
  Q1_prime := by norm_num
  Q2_prime := (q2_witness_277).1
  Q1_mod := by decide
  Q2_mod := by decide
  Q1_ge5 := by decide
  Q2_ge5 := by decide
  Q1_ne_Q2 := by decide
  Q1_gt_N := by decide
  Q2_gt_N := by decide

theorem twaux_exists_10000_277 : TWAuxEllFixedExists 277 10000 :=
  ⟨twaux_10000_277⟩

def twaux_26_281 : TWAuxEllFixed 281 26 where
  Q1ell := 563
  Q2ell := 789611
  Q1_prime := by norm_num
  Q2_prime := (q2_witness_281).1
  Q1_mod := by decide
  Q2_mod := by decide
  Q1_ge5 := by decide
  Q2_ge5 := by decide
  Q1_ne_Q2 := by decide
  Q1_gt_N := by decide
  Q2_gt_N := by decide

theorem twaux_exists_26_281 : TWAuxEllFixedExists 281 26 :=
  ⟨twaux_26_281⟩

def twaux_10000_281 : TWAuxEllFixed 281 10000 where
  Q1ell := 14051
  Q2ell := 789611
  Q1_prime := by norm_num
  Q2_prime := (q2_witness_281).1
  Q1_mod := by decide
  Q2_mod := by decide
  Q1_ge5 := by decide
  Q2_ge5 := by decide
  Q1_ne_Q2 := by decide
  Q1_gt_N := by decide
  Q2_gt_N := by decide

theorem twaux_exists_10000_281 : TWAuxEllFixedExists 281 10000 :=
  ⟨twaux_10000_281⟩

def twaux_26_283 : TWAuxEllFixed 283 26 where
  Q1ell := 1699
  Q2ell := 961069
  Q1_prime := by norm_num
  Q2_prime := (q2_witness_283).1
  Q1_mod := by decide
  Q2_mod := by decide
  Q1_ge5 := by decide
  Q2_ge5 := by decide
  Q1_ne_Q2 := by decide
  Q1_gt_N := by decide
  Q2_gt_N := by decide

theorem twaux_exists_26_283 : TWAuxEllFixedExists 283 26 :=
  ⟨twaux_26_283⟩

def twaux_10000_283 : TWAuxEllFixed 283 10000 where
  Q1ell := 11321
  Q2ell := 961069
  Q1_prime := by norm_num
  Q2_prime := (q2_witness_283).1
  Q1_mod := by decide
  Q2_mod := by decide
  Q1_ge5 := by decide
  Q2_ge5 := by decide
  Q1_ne_Q2 := by decide
  Q1_gt_N := by decide
  Q2_gt_N := by decide

theorem twaux_exists_10000_283 : TWAuxEllFixedExists 283 10000 :=
  ⟨twaux_10000_283⟩

def twaux_26_293 : TWAuxEllFixed 293 26 where
  Q1ell := 587
  Q2ell := 2403773
  Q1_prime := by norm_num
  Q2_prime := (q2_witness_293).1
  Q1_mod := by decide
  Q2_mod := by decide
  Q1_ge5 := by decide
  Q2_ge5 := by decide
  Q1_ne_Q2 := by decide
  Q1_gt_N := by decide
  Q2_gt_N := by decide

theorem twaux_exists_26_293 : TWAuxEllFixedExists 293 26 :=
  ⟨twaux_26_293⟩

def twaux_10000_293 : TWAuxEllFixed 293 10000 where
  Q1ell := 12893
  Q2ell := 2403773
  Q1_prime := by norm_num
  Q2_prime := (q2_witness_293).1
  Q1_mod := by decide
  Q2_mod := by decide
  Q1_ge5 := by decide
  Q2_ge5 := by decide
  Q1_ne_Q2 := by decide
  Q1_gt_N := by decide
  Q2_gt_N := by decide

theorem twaux_exists_10000_293 : TWAuxEllFixedExists 293 10000 :=
  ⟨twaux_10000_293⟩

theorem TWAuxEllFixedExists_26_201_300 {ℓ : Nat}
    (h : ℓ ∈ primes201to300) : TWAuxEllFixedExists ℓ 26 := by
  fin_cases h
  · exact twaux_exists_26_211
  · exact twaux_exists_26_223
  · exact twaux_exists_26_227
  · exact twaux_exists_26_229
  · exact twaux_exists_26_233
  · exact twaux_exists_26_239
  · exact twaux_exists_26_241
  · exact twaux_exists_26_251
  · exact twaux_exists_26_257
  · exact twaux_exists_26_263
  · exact twaux_exists_26_269
  · exact twaux_exists_26_271
  · exact twaux_exists_26_277
  · exact twaux_exists_26_281
  · exact twaux_exists_26_283
  · exact twaux_exists_26_293

theorem TWAuxEllFixedExists_10000_201_300 {ℓ : Nat}
    (h : ℓ ∈ primes201to300) : TWAuxEllFixedExists ℓ 10000 := by
  fin_cases h
  · exact twaux_exists_10000_211
  · exact twaux_exists_10000_223
  · exact twaux_exists_10000_227
  · exact twaux_exists_10000_229
  · exact twaux_exists_10000_233
  · exact twaux_exists_10000_239
  · exact twaux_exists_10000_241
  · exact twaux_exists_10000_251
  · exact twaux_exists_10000_257
  · exact twaux_exists_10000_263
  · exact twaux_exists_10000_269
  · exact twaux_exists_10000_271
  · exact twaux_exists_10000_277
  · exact twaux_exists_10000_281
  · exact twaux_exists_10000_283
  · exact twaux_exists_10000_293

end BealLevel26Foundations.Beal.FullProof.TWAuxEllFixed_201_300
