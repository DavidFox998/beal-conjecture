/-
  # C17 — Arakelov Pairing Certificate for X₀(143)

  ## What this file proves

  Discharges **Arakelov_Pairing_OPEN**: `0 < arakelovPairing_X0_143`.

  `arakelovPairing_X0_143` is defined in C01 as:
    `24·log(143) − (35/3·log(11) + 12·log(13) + K_infty_143)`
  where `K_infty_143 = 5.022` (JK 1996 Table 1, N=143).

  Proof sketch:
  1. `exp_one_lt_d9 : exp 1 < 2.718... < 11`  →  `log(11) > 1`
  2. `37/3·log(11) > 37/3 > 5.022 = K_infty_143`
  3. `log(143) = log(11) + log(13)` by multiplicativity
  4. `24·log(143) − (35/3·log(11) + 12·log(13) + K_infty_143)`
      = `37/3·log(11) + 12·log(13) − K_infty_143 > 0`

  ## Axiom footprint (verified by verify_weil_cluster.sh Phase 6)

  ```
  #print axioms TheoremaAureum.arakelovPairing_X0_143_pos_cert
  -- 'TheoremaAureum.arakelovPairing_X0_143_pos_cert' depends on axioms:
  --   [propext, Classical.choice, Quot.sound]

  #print axioms TheoremaAureum.Arakelov_Pairing_OPEN_discharged
  -- 'TheoremaAureum.Arakelov_Pairing_OPEN_discharged' depends on axioms:
  --   [propext, Classical.choice, Quot.sound]
  ```

  SORRY: 0.  No native_decide.  Classical trio only.
  Route B open surfaces: 5 → 4.  RH remains OPEN.
-/

import Towers.RH.Chain.C01_Arakelov
import Towers.RH.Chain.C13_ArakelovToRH
import Mathlib.Data.Complex.ExponentialBounds

namespace TheoremaAureum

open Real

/-! ## Step 1 — log(11) > 1 via exp_one_lt_d9 -/

/-- `exp(1) < 2.7182818286 < 11`, hence `log(11) > 1`. -/
private lemma log_11_gt_one : (1 : ℝ) < Real.log 11 := by
  have h_exp : Real.exp 1 < 11 :=
    lt_trans exp_one_lt_d9 (by norm_num)
  have h_log : Real.log (Real.exp 1) < Real.log 11 :=
    Real.log_lt_log (Real.exp_pos 1) h_exp
  rwa [Real.log_exp] at h_log

/-! ## Step 2 — 37/3·log(11) + 12·log(13) exceeds K_infty_143 -/

/-- `K_infty_143 < 37/3·log(11) + 12·log(13)`.
    Key bound: `log(11) > 1` and `37/3 ≈ 12.33 > 5.022 = K_infty_143`. -/
private lemma margin_gt_K_infty :
    K_infty_143 < 37 / 3 * Real.log 11 + 12 * Real.log 13 := by
  have h11 : (1 : ℝ) < Real.log 11 := log_11_gt_one
  have h13 : (0 : ℝ) < Real.log 13 := Real.log_pos (by norm_num)
  have h37 : (37 : ℝ) / 3 < 37 / 3 * Real.log 11 :=
    calc (37 : ℝ) / 3 = 37 / 3 * 1       := (mul_one _).symm
      _ < 37 / 3 * Real.log 11            := by
            apply mul_lt_mul_of_pos_left h11; norm_num
  have h_ki : K_infty_143 < (37 : ℝ) / 3 := by
    unfold K_infty_143; norm_num
  linarith [mul_pos (by norm_num : (0:ℝ) < 12) h13]

/-! ## Step 3 — positivity of arakelovPairing_X0_143 -/

/-- `log(143) = log(11) + log(13)` (143 = 11 · 13). -/
private lemma log_143_split :
    Real.log 143 = Real.log 11 + Real.log 13 := by
  rw [show (143 : ℝ) = 11 * 13 from by norm_num]
  exact Real.log_mul (by norm_num) (by norm_num)

/-- `arakelovPairing_X0_143 = 24·log(143) − K_143_val > 0`.
    Proof: expand `log(143)`, collect terms, apply margin lemma. -/
theorem arakelovPairing_X0_143_pos_cert :
    (0 : ℝ) < arakelovPairing_X0_143 := by
  have h_mg := margin_gt_K_infty
  have h_expand : (24 : ℝ) * Real.log 143 =
      24 * Real.log 11 + 24 * Real.log 13 := by
    rw [log_143_split]; ring
  unfold arakelovPairing_X0_143 K_143_val
  linarith [h_expand]

/-! ## Discharge Arakelov_Pairing_OPEN -/

/-- **Arakelov_Pairing_OPEN discharged (C17 certificate).**

    `Arakelov_Pairing_OPEN : Prop := 0 < arakelovPairing_X0_143`
    is proved — 0 sorry, classical trio only.

    Route B open surfaces: 5 → 4 remaining.
    `_root_.RiemannHypothesis` remains **OPEN**.

    `#print axioms Arakelov_Pairing_OPEN_discharged`
    → `{propext, Classical.choice, Quot.sound}` -/
theorem Arakelov_Pairing_OPEN_discharged : Arakelov_Pairing_OPEN :=
  arakelovPairing_X0_143_pos_cert

end TheoremaAureum
