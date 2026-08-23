/-
  # C18 — Kim-Sarnak Spectral Gap Certificate for X₀(143)

  ## What this file proves

  Discharges **KimSarnak_OPEN**: `∀ N squarefree, 975/4096 ≤ lambda_1 N`.

  The proof uses existing surfaces from KimSarnak/GelbartJacquet.lean:
    - `KimSarnak.LambdaToNu_OPEN`:  λ₁(N) = 1/4 − ν(N)²  (Selberg 1956)
    - `KimSarnak.NuBound_OPEN`:     squarefree N ⟹ |ν(N)| ≤ 7/64  (Kim-Sarnak 2003)

  Proved arithmetic certificates (classical trio, no sorry):
    1. `ks_sq_bound`:   |ν| ≤ 7/64 ⟹ ν² ≤ (7/64)²
    2. `ks_lambda_lb`:  ν² ≤ (7/64)² ⟹ 975/4096 ≤ 1/4 − ν²
       (core identity: 1/4 − (7/64)² = 975/4096 by norm_num)

  The combinator `kim_sarnak_squarefree_proved` threads these over the two
  GelbartJacquet surfaces. `KimSarnak_OPEN_discharged` wires into C13.

  ## Axiom footprint

  ```
  #print axioms TheoremaAureum.KimSarnak_OPEN_discharged
  -- [propext, Classical.choice, Quot.sound]
  ```

  SORRY: 0.  No native_decide.  Classical trio only.
  Route B: KimSarnak surface discharged (conditional on LambdaToNu + NuBound).
  RH remains OPEN.
-/

import Towers.RH.Chain.C14_BC6SpectralGap
import Towers.RH.KimSarnak.GelbartJacquet
import Mathlib.Algebra.Squarefree.Basic

namespace TheoremaAureum

open KimSarnak

/-! ## Arithmetic certificates (proved, classical trio) -/

/-- |ν| ≤ 7/64 ⟹ ν² ≤ (7/64)². -/
private lemma ks_sq_bound {ν : ℝ} (h : |ν| ≤ 7 / 64) :
    ν ^ 2 ≤ (7 / 64 : ℝ) ^ 2 := by
  have h1 : |ν| ^ 2 ≤ (7 / 64 : ℝ) ^ 2 :=
    pow_le_pow_left (abs_nonneg ν) h 2
  rwa [sq_abs] at h1

/-- ν² ≤ (7/64)² ⟹ 975/4096 ≤ 1/4 − ν².
    Core: 1/4 − (7/64)² = 975/4096 by norm_num. -/
private lemma ks_lambda_lb {ν : ℝ} (h : ν ^ 2 ≤ (7 / 64 : ℝ) ^ 2) :
    (975 : ℝ) / 4096 ≤ 1 / 4 - ν ^ 2 := by
  have h49 : (7 / 64 : ℝ) ^ 2 = 49 / 4096 := by norm_num
  linarith [h49 ▸ h]

/-! ## Main combinator -/

/-- **kim_sarnak_squarefree_proved**: ∀ N squarefree, 975/4096 ≤ lambda_1 N.

    Given:
      h_ltn : LambdaToNu_OPEN   (GelbartJacquet: λ₁ = 1/4 − ν²)
      h_nu  : NuBound_OPEN      (GelbartJacquet: squarefree N ⟹ |ν| ≤ 7/64)

    Proof:
      1. h_ltn N : lambda_1 N = 1/4 − spectral_parameter N²
      2. h_nu N hN : |spectral_parameter N| ≤ 7/64
      3. ks_sq_bound : (spectral_parameter N)² ≤ (7/64)²
      4. ks_lambda_lb : 975/4096 ≤ 1/4 − (spectral_parameter N)²
      5. rw h_ltn : 975/4096 ≤ lambda_1 N  ∎

    #print axioms kim_sarnak_squarefree_proved:
      {propext, Classical.choice, Quot.sound} -/
theorem kim_sarnak_squarefree_proved
    (h_ltn : LambdaToNu_OPEN)
    (h_nu  : NuBound_OPEN) :
    ∀ N : ℕ, Squarefree N → (975 : ℝ) / 4096 ≤ lambda_1 N := by
  intro N hN
  rw [h_ltn N]
  exact ks_lambda_lb (ks_sq_bound (h_nu N hN))

/-! ## Discharge KimSarnak_OPEN -/

/-- **KimSarnak_OPEN discharged (C18 certificate).**

    `KimSarnak_OPEN : Prop := ∀ N squarefree, 975/4096 ≤ lambda_1 N`
    is proved conditional on:
      - `KimSarnak.LambdaToNu_OPEN`  (GelbartJacquet.lean — Selberg identity)
      - `KimSarnak.NuBound_OPEN`     (GelbartJacquet.lean — Kim-Sarnak 2003)

    These are the existing named surfaces from the scaffolding; not re-defined here.
    Arithmetic: 1/4 − (7/64)² = 975/4096 proved above (norm_num).

    `#print axioms KimSarnak_OPEN_discharged`
    → `{propext, Classical.choice, Quot.sound}` -/
theorem KimSarnak_OPEN_discharged
    (h_ltn : LambdaToNu_OPEN)
    (h_nu  : NuBound_OPEN) :
    KimSarnak_OPEN :=
  kim_sarnak_squarefree_proved h_ltn h_nu

end TheoremaAureum
