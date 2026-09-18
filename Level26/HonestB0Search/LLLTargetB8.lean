/-
Copyright (c) 2026 David Fox. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: David Fox
-/
/-
  Root module. Separate Lake target `BealMatveevBealV25B0Search`
  (same lib as `BealMatveevBealV25B0Search.lean`). Do **not** add
  `Beal/Matveev/LLLTargetB8.lean`: `.submodules Beal.Matveev`
  would pull it into the default glob. Do **not** import
  `Beal.Matveev.MatveevThm14General`. Do **not** import
  `Beal.Matveev.PAdicLLL` from this root module (LEAN_PATH); the
  floor lattice `b1=(1,0)` is defined here and already nogo'd
  for Euclidean `≥ B0` in root `PAdicLLL.lean`.
-/
import BealMatveevBealV25B0Search

/-!
# LLL target `|Λ| ≥ B⁻⁸` (not a v25 mint)

On a gap-3 solution with `B ≥ 100` one already has
`|Λ| ≤ 2/B⁹` (`abs_Lambda_lt_two_div_B_pow_nine` at `f12ad03`).
If LLL lifted Matveev’s `B^{−C1}` lower bound with
`C1 = 143186215390` down to `|Λ| ≥ B⁻⁸`, then
`1/B⁸ ≤ 2/B⁹`, hence `B ≤ 2`, contradicting `B ≥ B0 = 10⁶`.
That would close the infinite branch `B ≥ B0`. The finite
branch `B ≤ B0` still needs Darmon–Merel `(4,4,13)` (the extra
axiom in `BealTrueV25`, not the default glob). This file does
**not** inhabit the LLL lift, does **not** inhabit
`LLL_reduces_bound_to_B0_v25`, and does **not** mint
`v25.0.0-Beal-44-13-Level-26-Baker-B0-Unconditional-foundations`.

Three lattices:

* Old nogo `L`: `b1 = (1,0)`, `b2 = (⌊C log(B+3)⌋, 1)`, `λ₁ = 1`.
  No nonzero integer vector has Euclidean length `< 1`.
* `L'`: `b1' = (C, ⌊C log(B+3)⌋)`, `b2' = (0, C)`, `C = 10⁴⁸`,
  `det = C²`, `λ₁ = C`. First coordinates are multiples of `C`,
  so `(1,0)` is not in `L'`. `C·(2/B⁹) < C/2` is true arithmetic.
  `v_short'` lies in `L'` on small `|Λ|` only if it is `0`.
* 3-dim Bugeaud–Laurent `L3` (`ℤ×ℤ×ℤ`, not `Fin 3 → ℤ`):
  `b1_3 = (1,0,0)`, `b2_3 = (0,1,0)`,
  `b3_3 = (⌊C₃ log(B+3)⌋, ⌊C₃ log A⌋, C₃)` with `C₃ = 10³⁰`,
  `det = C₃`. Minkowski’s *upper* bound is `λ₁ ≲ C₃^{1/3} = 10¹⁰`.
  The lattice contains `(1,0,0)`, so `λ₁ = 1`, not `10`. The paste
  `‖4·b3_3 − 13·b1_3‖ ≈ C₃·|Λ|` is false: that combo has third
  coordinate `4 C₃` and length `≥ 4 C₃`. The real LLL gap is
  exponent reduction: Matveev `C1 = 143186215390`; a typical
  Bugeaud–Laurent `C1'` is `30`–`50`, still `> 8`. Need `C1' ≤ 8`
  (i.e. `< 9`) to get `|Λ| ≥ B⁻⁸`. `C1' ≥ 9` does not beat
  `|Λ| ≤ 2/B⁹`. So `abs_Lambda_ge_B_pow_neg_eight` and
  `LLL_reduces_C1_to_lt_nine` stay `def Prop`.

0 sorry. Tag `v24-v24x-final-rank3-shape-nogo` stays at `c1d173e`.
-/

namespace BealMatveevBeal.LLLTargetB8

open BealMatveevBeal.BealMatveevBealV25B0Search

/-- Honest LLL goal: `|Λ| ≥ B⁻⁸` on a solution with `B ≥ 100`.
    Same statement as `abs_Lambda_ge_inv_B_pow_eight`. Uninhabited. -/
noncomputable def abs_Lambda_ge_B_pow_neg_eight : Prop :=
  abs_Lambda_ge_inv_B_pow_eight

theorem abs_Lambda_ge_B_pow_neg_eight_eq :
    abs_Lambda_ge_B_pow_neg_eight = abs_Lambda_ge_inv_B_pow_eight :=
  rfl

/-- Matveev exponent. Same numeral as `C1_floor`. -/
def C1_Matveev : ℕ := C1_floor

theorem C1_Matveev_eq : C1_Matveev = 143186215390 := C1_floor_eq

/-- Need `C1' < 9`, i.e. `C1' ≤ 8`, to get `|Λ| ≥ B⁻⁸`. -/
def C1_LLL_target : ℕ := 8

theorem C1_LLL_target_eq : C1_LLL_target = 8 := rfl

/-- Literature-scale Bugeaud–Laurent output. Not a theorem that LLL
    attains these; numerals for the gap `8 < 30 ≤ 50`. -/
def C1_LLL_typical_lo : ℕ := 30

def C1_LLL_typical_hi : ℕ := 50

theorem C1_LLL_target_lt_typical_lo :
    C1_LLL_target < C1_LLL_typical_lo := by
  decide

theorem C1_LLL_typical_lo_le_hi :
    C1_LLL_typical_lo ≤ C1_LLL_typical_hi := by
  decide

theorem C1_LLL_typical_lo_lt_Matveev :
    C1_LLL_typical_lo < C1_Matveev := by
  decide

/-- Reduce Matveev `C1 = 143186215390` to an exponent `≤ 8` (`< 9`).
    Uninhabited: a typical Bugeaud–Laurent `C1'` is `30`–`50`, not
    `≤ 8`. Stays `def Prop`. -/
noncomputable def LLL_reduces_C1_to_lt_nine : Prop :=
  ∃ C1' : ℕ, C1' ≤ C1_LLL_target ∧
    ∀ {A B : ℕ}, B0_nat ≤ B → A ^ 4 + B ^ 4 = (B + 3) ^ 13 →
      (1 : ℝ) / (B : ℝ) ^ C1' ≤
        |4 * Real.log (A : ℝ) - 13 * Real.log ((B : ℝ) + 3)|

/-- Packaged v25 LLL close. Uninhabited: the first two conjuncts
    are the missing lower bound; the third is the large-`B`
    nogo they would imply. Rank-3
    `BealMatveevBealV25Rank3.LLL_reduces_bound_to_B0_v25` is a
    different `def Prop` in another target. -/
noncomputable def LLL_reduces_bound_to_B0_v25 : Prop :=
  abs_Lambda_ge_B_pow_neg_eight ∧
    LLL_reduces_C1_to_lt_nine ∧
      ∀ {A B : ℕ}, B0_nat ≤ B → A ^ 4 + B ^ 4 = (B + 3) ^ 13 → False

theorem one_div_pow_eight_le_two_div_pow_nine_implies_B_le_two
    {B : ℕ} (hB : 1 ≤ B)
    (hle : (1 : ℝ) / (B : ℝ) ^ 8 ≤ 2 / (B : ℝ) ^ 9) : B ≤ 2 := by
  have hBpos : (0 : ℝ) < (B : ℝ) := by exact_mod_cast (Nat.succ_le_iff.mp hB)
  have h8 : (0 : ℝ) < (B : ℝ) ^ 8 := pow_pos hBpos 8
  have h9 : (0 : ℝ) < (B : ℝ) ^ 9 := pow_pos hBpos 9
  have hmul : (1 : ℝ) * (B : ℝ) ^ 9 ≤ 2 * (B : ℝ) ^ 8 :=
    (div_le_div_iff h8 h9).mp hle
  simp only [one_mul] at hmul
  have hcancel : (B : ℝ) ^ 8 * (B : ℝ) ≤ (B : ℝ) ^ 8 * 2 := by
    convert hmul using 1; ring
  have hB2 : (B : ℝ) ≤ 2 := le_of_mul_le_mul_left hcancel h8
  exact_mod_cast hB2

/-- If LLL inhabits `|Λ| ≥ B⁻⁸`, the proved `|Λ| ≤ 2/B⁹` forces
    `B ≤ 2`, contradicting `B ≥ B0 = 10⁶`. Does **not** inhabit
    the LLL hypothesis. -/
theorem no_sol_of_abs_Lambda_ge_B_pow_neg_eight
    (hge : abs_Lambda_ge_B_pow_neg_eight)
    {A B : ℕ} (hB0 : B0_nat ≤ B)
    (hsol : A ^ 4 + B ^ 4 = (B + 3) ^ 13) : False := by
  have h100B0 : 100 ≤ B0_nat := by
    rw [B0_nat_eq]
    decide
  have h100 : 100 ≤ B := h100B0.trans hB0
  have hup := abs_Lambda_lt_two_div_B_pow_nine h100 hsol
  have hlow := hge h100 hsol
  have hle : (1 : ℝ) / (B : ℝ) ^ 8 ≤ 2 / (B : ℝ) ^ 9 :=
    hlow.trans hup
  have h1 : 1 ≤ B := le_trans (by decide : (1 : ℕ) ≤ 100) h100
  have hB2 : B ≤ 2 :=
    one_div_pow_eight_le_two_div_pow_nine_implies_B_le_two h1 hle
  have hB0le2 : B0_nat ≤ 2 := hB0.trans hB2
  rw [B0_nat_eq] at hB0le2
  exact (by decide : ¬((1000000 : ℕ) ≤ 2)) hB0le2

/-- Same implication, packaged as the large-`B` nogo. -/
theorem LLL_closes_B_ge_B0_of_pow_neg_eight
    (hge : abs_Lambda_ge_B_pow_neg_eight) :
    ∀ {A B : ℕ}, B0_nat ≤ B → A ^ 4 + B ^ 4 = (B + 3) ^ 13 → False :=
  no_sol_of_abs_Lambda_ge_B_pow_neg_eight hge

theorem two_le_B_of_B0 {B : ℕ} (hB : B0_nat ≤ B) : 2 ≤ B := by
  have hB0 : (1000000 : ℕ) ≤ B := by
    simpa [B0_nat_eq] using hB
  exact le_trans (by decide : (2 : ℕ) ≤ 1000000) hB0

/-- `C1' ≥ 9` cannot beat `|Λ| ≤ 2/B⁹`. Typical `30`–`50` is in this
    range, so it does not close `B ≥ B0`. -/
theorem inv_pow_C1_ge_nine_le_two_div_pow_nine
    {B C1' : ℕ} (hB : B0_nat ≤ B) (hC : 9 ≤ C1') :
    (1 : ℝ) / (B : ℝ) ^ C1' ≤ 2 / (B : ℝ) ^ 9 := by
  have hB2 : 2 ≤ B := two_le_B_of_B0 hB
  have hBpos : (0 : ℝ) < (B : ℝ) := by
    exact_mod_cast (lt_of_lt_of_le (by decide : (0 : ℕ) < 2) hB2)
  have hB1 : (1 : ℝ) ≤ (B : ℝ) := by
    exact_mod_cast (le_trans (by decide : (1 : ℕ) ≤ 2) hB2)
  have hpow : (B : ℝ) ^ 9 ≤ (B : ℝ) ^ C1' :=
    pow_le_pow_right hB1 hC
  have hle1 : (1 : ℝ) / (B : ℝ) ^ C1' ≤ 1 / (B : ℝ) ^ 9 :=
    div_le_div_of_nonneg_left (by norm_num) (pow_pos hBpos 9) hpow
  have hle2 : (1 : ℝ) / (B : ℝ) ^ 9 ≤ 2 / (B : ℝ) ^ 9 :=
    div_le_div_of_nonneg_right (by norm_num : (1 : ℝ) ≤ 2)
      (pow_nonneg (le_of_lt hBpos) 9)
  exact hle1.trans hle2

/-- If LLL inhabits some `C1' ≤ 8`, then `|Λ| ≥ B⁻⁸` on `B ≥ B0` and
    the proved `|Λ| ≤ 2/B⁹` forces `B ≤ 2`. Does **not** inhabit
    `LLL_reduces_C1_to_lt_nine`. -/
theorem no_sol_of_LLL_reduces_C1_to_lt_nine
    (h : LLL_reduces_C1_to_lt_nine)
    {A B : ℕ} (hB0 : B0_nat ≤ B)
    (hsol : A ^ 4 + B ^ 4 = (B + 3) ^ 13) : False := by
  rcases h with ⟨C1', hC1', hlow⟩
  have h100B0 : 100 ≤ B0_nat := by
    rw [B0_nat_eq]
    decide
  have h100 : 100 ≤ B := h100B0.trans hB0
  have hup := abs_Lambda_lt_two_div_B_pow_nine h100 hsol
  have hge := hlow hB0 hsol
  have hB2 : 2 ≤ B := two_le_B_of_B0 hB0
  have hBpos : (0 : ℝ) < (B : ℝ) := by
    exact_mod_cast (lt_of_lt_of_le (by decide : (0 : ℕ) < 2) hB2)
  have hB1 : (1 : ℝ) ≤ (B : ℝ) := by
    exact_mod_cast (le_trans (by decide : (1 : ℕ) ≤ 2) hB2)
  have hpow : (B : ℝ) ^ C1' ≤ (B : ℝ) ^ 8 :=
    pow_le_pow_right hB1 hC1'
  have hlow8 : (1 : ℝ) / (B : ℝ) ^ 8 ≤ (1 : ℝ) / (B : ℝ) ^ C1' :=
    div_le_div_of_nonneg_left (by norm_num) (pow_pos hBpos C1') hpow
  have hle : (1 : ℝ) / (B : ℝ) ^ 8 ≤ 2 / (B : ℝ) ^ 9 :=
    (hlow8.trans hge).trans hup
  have h1 : 1 ≤ B := le_trans (by decide : (1 : ℕ) ≤ 2) hB2
  have hB2' : B ≤ 2 :=
    one_div_pow_eight_le_two_div_pow_nine_implies_B_le_two h1 hle
  have hB0le2 : B0_nat ≤ 2 := hB0.trans hB2'
  rw [B0_nat_eq] at hB0le2
  exact (by decide : ¬((1000000 : ℕ) ≤ 2)) hB0le2

/-- Correct `by_cases` shape. Does **not** inhabit either
    branch: `B ≤ B0` is still `gap3_B_le_B0_no_solution`
    (`def Prop`, or Darmon–Merel in `BealTrueV25`), and
    `B ≥ B0` still needs `abs_Lambda_ge_B_pow_neg_eight`. -/
theorem future_v25_shape_of_B8_lift :
    gap3_B_le_B0_no_solution →
      abs_Lambda_ge_B_pow_neg_eight →
        ∀ B A : ℕ, A ^ 4 + B ^ 4 ≠ (B + 3) ^ 13 := by
  intro hLe hge B A hsol
  by_cases h : B ≤ B0_nat
  · exact hLe B h A hsol
  · exact no_sol_of_abs_Lambda_ge_B_pow_neg_eight hge (le_of_not_le h) hsol

/-! ## Old nogo lattice `b1 = (1,0)` (`λ₁ = 1`)

    Same Euclidean `(1,0)` that `PAdicLLL` already showed has
    length `1 < B0`. Scaling `C` to `10⁴⁸` does not add `(1,0)`
    to a higher `λ₁`: this lattice still contains it. -/

/-- Lattice scale `C = B0⁸ = 10⁴⁸`. At `B = B0` one has `C/B⁸ = 1`;
    for `B > B0` one has `C/B⁸ < 1`. Not `C1_floor`. -/
def C_LLL : ℕ := 10 ^ 48

theorem C_LLL_eq : C_LLL = 10 ^ 48 := rfl

theorem C_LLL_pos : 0 < C_LLL := by
  rw [C_LLL_eq]
  exact Nat.pos_pow_of_pos 48 (by decide : (0 : ℕ) < 10)

theorem C_LLL_one_lt : (1 : ℕ) < C_LLL := by
  rw [C_LLL_eq]
  decide

def b1 : ℤ × ℤ := (1, 0)

noncomputable def cLog (B : ℕ) : ℤ :=
  ⌊(C_LLL : ℝ) * Real.log ((B : ℝ) + 3)⌋

noncomputable def b2 (B : ℕ) : ℤ × ℤ := (cLog B, 1)

theorem b1_eq : b1 = (1, 0) := rfl

theorem b2_snd (B : ℕ) : (b2 B).2 = 1 := rfl

/-- `ℤ b1 + ℤ b2`. A general vector is `(k + l · cLog B, l)`. -/
noncomputable def L (B : ℕ) : Set (ℤ × ℤ) :=
  { v | ∃ k l : ℤ, v = (k + l * cLog B, l) }

noncomputable def euc (v : ℤ × ℤ) : ℝ :=
  Real.sqrt ((v.1 : ℝ) ^ 2 + (v.2 : ℝ) ^ 2)

theorem euc_nonneg (v : ℤ × ℤ) : 0 ≤ euc v :=
  Real.sqrt_nonneg _

theorem euc_sq (v : ℤ × ℤ) :
    euc v ^ 2 = (v.1 : ℝ) ^ 2 + (v.2 : ℝ) ^ 2 := by
  unfold euc
  exact Real.sq_sqrt (add_nonneg (sq_nonneg _) (sq_nonneg _))

theorem euc_b1 : euc b1 = 1 := by
  unfold euc b1
  simp [Real.sqrt_one]

theorem b1_mem_L (B : ℕ) : b1 ∈ L B := by
  refine ⟨1, 0, ?_⟩
  simp [b1]

theorem L_eq_combo (B : ℕ) (v : ℤ × ℤ) :
    v ∈ L B ↔ ∃ k l : ℤ, v = (k + l * cLog B, l) :=
  Iff.rfl

theorem million_eq_ten_pow_six : (1000000 : ℝ) = 10 ^ 6 := by
  norm_num

theorem million_pow_eight : (1000000 : ℝ) ^ 8 = (10 : ℝ) ^ 48 := by
  rw [million_eq_ten_pow_six, ← pow_mul]

theorem million_pow_nine : (1000000 : ℝ) ^ 9 = (10 : ℝ) ^ 54 := by
  rw [million_eq_ten_pow_six, ← pow_mul]

theorem C_LLL_real : (C_LLL : ℝ) = (10 : ℝ) ^ 48 := by
  rw [C_LLL_eq]
  exact Nat.cast_pow (10 : ℕ) 48

/-- `C / B0⁸ = 1`. Equality, not a lower bound for all `B ≥ B0`. -/
theorem C_LLL_div_B0_pow_eight_eq_one :
    (C_LLL : ℝ) / (B0_nat : ℝ) ^ 8 = 1 := by
  have hC : (C_LLL : ℝ) = (10 : ℝ) ^ 48 := C_LLL_real
  have hB0 : (B0_nat : ℝ) = (1000000 : ℝ) := by
    rw [B0_nat_eq]
    norm_num
  rw [hC, hB0, million_pow_eight]
  have hne : (10 : ℝ) ^ 48 ≠ 0 := by norm_num
  field_simp [hne]

/-- For `B ≥ B0`, `C/B⁸` is at most `1` (decreases in `B`). -/
theorem C_LLL_div_B_pow_eight_le_one {B : ℕ} (hB : B0_nat ≤ B) :
    (C_LLL : ℝ) / (B : ℝ) ^ 8 ≤ 1 := by
  have hB0 : (1000000 : ℕ) ≤ B := by
    simpa [B0_nat_eq] using hB
  have hBreal : (1000000 : ℝ) ≤ (B : ℝ) := by exact_mod_cast hB0
  have hpow : (1000000 : ℝ) ^ 8 ≤ (B : ℝ) ^ 8 :=
    pow_le_pow_left (by norm_num) hBreal 8
  have hnum : 0 ≤ (C_LLL : ℝ) := Nat.cast_nonneg _
  have hle : (C_LLL : ℝ) / (B : ℝ) ^ 8 ≤ (C_LLL : ℝ) / (1000000 : ℝ) ^ 8 :=
    div_le_div_of_nonneg_left hnum (pow_pos (by norm_num) 8) hpow
  have hC : (C_LLL : ℝ) / (1000000 : ℝ) ^ 8 = 1 := by
    have hB0r : (B0_nat : ℝ) = 1000000 := by
      rw [B0_nat_eq]
      norm_num
    simpa [hB0r] using C_LLL_div_B0_pow_eight_eq_one
  exact hle.trans_eq hC

/-- The paste `1 ≤ C/B⁸` for `B ≥ B0` is the wrong direction
    when `B > B0`. It holds on `1 ≤ B ≤ B0`. -/
theorem C_mul_inv_B_pow_eight_ge_one {B : ℕ} (hBpos : 1 ≤ B)
    (hB : B ≤ B0_nat) : 1 ≤ (C_LLL : ℝ) / (B : ℝ) ^ 8 := by
  have hBposR : (0 : ℝ) < (B : ℝ) := by
    exact_mod_cast (Nat.succ_le_iff.mp hBpos)
  have hBreal : (B : ℝ) ≤ (B0_nat : ℝ) := by exact_mod_cast hB
  have hpow : (B : ℝ) ^ 8 ≤ (B0_nat : ℝ) ^ 8 :=
    pow_le_pow_left (le_of_lt hBposR) hBreal 8
  have hnum : 0 ≤ (C_LLL : ℝ) := Nat.cast_nonneg _
  have hle : (C_LLL : ℝ) / (B0_nat : ℝ) ^ 8 ≤ (C_LLL : ℝ) / (B : ℝ) ^ 8 :=
    div_le_div_of_nonneg_left hnum (pow_pos hBposR 8) hpow
  have h1 : (C_LLL : ℝ) / (B0_nat : ℝ) ^ 8 = 1 :=
    C_LLL_div_B0_pow_eight_eq_one
  exact h1.symm.trans_le hle

/-- `C · 2/B⁹ ≤ 2·10⁻⁶ < 1` on `B ≥ B0`. Still true at `C = 10⁴⁸`. -/
theorem C_LLL_mul_two_div_B_pow_nine_lt_one {B : ℕ} (hB : B0_nat ≤ B) :
    (C_LLL : ℝ) * (2 / (B : ℝ) ^ 9) < 1 := by
  have hB0 : (1000000 : ℕ) ≤ B := by
    simpa [B0_nat_eq] using hB
  have hBreal : (1000000 : ℝ) ≤ (B : ℝ) := by exact_mod_cast hB0
  have hpow : (1000000 : ℝ) ^ 9 ≤ (B : ℝ) ^ 9 :=
    pow_le_pow_left (by norm_num) hBreal 9
  have hfrac : 2 / (B : ℝ) ^ 9 ≤ 2 / (1000000 : ℝ) ^ 9 :=
    div_le_div_of_nonneg_left (by norm_num) (pow_pos (by norm_num) 9) hpow
  have hle : (C_LLL : ℝ) * (2 / (B : ℝ) ^ 9) ≤
      (C_LLL : ℝ) * (2 / (1000000 : ℝ) ^ 9) :=
    mul_le_mul_of_nonneg_left hfrac (Nat.cast_nonneg _)
  have hval : (C_LLL : ℝ) * (2 / (1000000 : ℝ) ^ 9) =
      2 * (10 : ℝ) ^ 48 / (10 : ℝ) ^ 54 := by
    rw [C_LLL_real, million_pow_nine]
    ring
  have hlt : 2 * (10 : ℝ) ^ 48 / (10 : ℝ) ^ 54 < 1 := by
    rw [div_lt_one (pow_pos (by norm_num) 54)]
    norm_num
  exact lt_of_le_of_lt (hle.trans_eq hval) hlt

/-- `C · (2/B⁹) < C/2` on `B ≥ B0`. Cancels `C`: `4/B⁹ < 1`. -/
theorem C_mul_two_div_B_pow_nine_lt_C_div_two {B : ℕ} (hB : B0_nat ≤ B) :
    (C_LLL : ℝ) * (2 / (B : ℝ) ^ 9) < (C_LLL : ℝ) / 2 := by
  have hCpos : (0 : ℝ) < (C_LLL : ℝ) := by
    exact_mod_cast C_LLL_pos
  have hB0 : (1000000 : ℕ) ≤ B := by
    simpa [B0_nat_eq] using hB
  have hBpos : (0 : ℝ) < (B : ℝ) := by
    exact_mod_cast (lt_of_lt_of_le (by decide : (0 : ℕ) < 1000000) hB0)
  have hden : (0 : ℝ) < (B : ℝ) ^ 9 := pow_pos hBpos 9
  have h4 : (4 : ℝ) < (B : ℝ) ^ 9 := by
    have h100 : (1000000 : ℝ) ≤ (B : ℝ) := by exact_mod_cast hB0
    have hpow : (1000000 : ℝ) ^ 9 ≤ (B : ℝ) ^ 9 :=
      pow_le_pow_left (by norm_num) h100 9
    exact lt_of_lt_of_le (by norm_num : (4 : ℝ) < (1000000 : ℝ) ^ 9) hpow
  have hcross : (2 : ℝ) * 2 < (1 : ℝ) * (B : ℝ) ^ 9 := by
    have hL : (2 : ℝ) * 2 = 4 := by norm_num
    have hR : (1 : ℝ) * (B : ℝ) ^ 9 = (B : ℝ) ^ 9 := one_mul _
    rw [hL, hR]
    exact h4
  have hfrac : (2 : ℝ) / (B : ℝ) ^ 9 < 1 / 2 :=
    (div_lt_div_iff hden (by norm_num : (0 : ℝ) < 2)).mpr hcross
  have hmul : (C_LLL : ℝ) * (2 / (B : ℝ) ^ 9) < (C_LLL : ℝ) * (1 / 2) :=
    mul_lt_mul_of_pos_left hfrac hCpos
  have hhalf : (C_LLL : ℝ) * (1 / 2) = (C_LLL : ℝ) / 2 :=
    mul_one_div (C_LLL : ℝ) 2
  rwa [hhalf] at hmul

theorem int_sq_ge_one_of_ne_zero {z : ℤ} (hz : z ≠ 0) : (1 : ℤ) ≤ z ^ 2 :=
  Int.add_one_le_of_lt (sq_pos_of_ne_zero hz)

/-- Nonzero integer pairs have Euclidean length `≥ 1`. -/
theorem euc_ge_one_of_ne_zero (v : ℤ × ℤ) (hne : v ≠ 0) : 1 ≤ euc v := by
  have hsum : (1 : ℝ) ≤ (v.1 : ℝ) ^ 2 + (v.2 : ℝ) ^ 2 := by
    rcases em (v.1 = 0) with h1 | h1
    · rcases em (v.2 = 0) with h2 | h2
      · exact (hne (Prod.ext h1 h2)).elim
      · have : (1 : ℤ) ≤ v.2 ^ 2 := int_sq_ge_one_of_ne_zero h2
        have : (1 : ℝ) ≤ (v.2 : ℝ) ^ 2 := by
          exact_mod_cast this
        have hx : (0 : ℝ) ≤ (v.1 : ℝ) ^ 2 := sq_nonneg _
        linarith
    · have : (1 : ℤ) ≤ v.1 ^ 2 := int_sq_ge_one_of_ne_zero h1
      have : (1 : ℝ) ≤ (v.1 : ℝ) ^ 2 := by
        exact_mod_cast this
      have hy : (0 : ℝ) ≤ (v.2 : ℝ) ^ 2 := sq_nonneg _
      linarith
  have hsqrt := Real.sqrt_le_sqrt hsum
  simpa [euc, Real.sqrt_one] using hsqrt

/-- `λ₁ ≥ 1` from `b1 = (1,0)` and the integer lattice. -/
theorem lambda1_ge_one {B : ℕ} : ∀ v ∈ L B, v ≠ 0 → 1 ≤ euc v := by
  intro v _ hv
  exact euc_ge_one_of_ne_zero v hv

theorem euc_lt_one_iff_eq_zero (v : ℤ × ℤ) : euc v < 1 ↔ v = 0 := by
  constructor
  · intro hlt
    by_contra hne
    exact (not_lt.mpr (euc_ge_one_of_ne_zero v hne)) hlt
  · intro hv
    subst hv
    unfold euc
    simp [Real.sqrt_zero]

/-- No nonzero integer vector (hence no lattice vector) has
    Euclidean length in `(0,1)`. This is the hole in
    “`C·|Λ|` is a lattice length”. -/
theorem not_exists_nonzero_euc_lt_one (B : ℕ) :
    ¬ ∃ v ∈ L B, v ≠ 0 ∧ euc v < 1 := by
  intro ⟨v, _, hne, hlt⟩
  exact hne ((euc_lt_one_iff_eq_zero v).mp hlt)

/-- Candidate “short” vector: second coordinate `0`, so it is a
    multiple of `b1`. The extra integer `k` can always cancel
    the first coordinate. -/
noncomputable def v_short (A B : ℕ) (k : ℤ) : ℤ × ℤ :=
  (⌊(C_LLL : ℝ) * Real.log (A : ℝ)⌋ - 13 * cLog B - k, 0)

theorem v_short_snd (A B : ℕ) (k : ℤ) : (v_short A B k).2 = 0 := rfl

theorem v_short_mem_L (A B : ℕ) (k : ℤ) : v_short A B k ∈ L B := by
  refine ⟨⌊(C_LLL : ℝ) * Real.log (A : ℝ)⌋ - 13 * cLog B - k, 0, ?_⟩
  simp [v_short]

theorem v_short_eq_zero_iff (A B : ℕ) (k : ℤ) :
    v_short A B k = 0 ↔
      k = ⌊(C_LLL : ℝ) * Real.log (A : ℝ)⌋ - 13 * cLog B := by
  constructor
  · intro h
    have h1 := congrArg Prod.fst h
    simp [v_short] at h1
    linarith
  · intro hk
    simp [v_short, hk]

/-- `∃ k` with `euc (v_short k) < 1` is true because some `k`
    makes `v_short = 0`. This does **not** use `|Λ|` and does
    **not** produce a nonzero short vector. -/
theorem exists_k_v_short_euc_lt_one (A B : ℕ) :
    ∃ k : ℤ, euc (v_short A B k) < 1 := by
  refine ⟨⌊(C_LLL : ℝ) * Real.log (A : ℝ)⌋ - 13 * cLog B, ?_⟩
  have hz : v_short A B
      (⌊(C_LLL : ℝ) * Real.log (A : ℝ)⌋ - 13 * cLog B) = 0 :=
    (v_short_eq_zero_iff A B _).mpr rfl
  rw [hz]
  exact (euc_lt_one_iff_eq_zero 0).mpr rfl

theorem v_short_euc_lt_one_iff_zero (A B : ℕ) (k : ℤ) :
    euc (v_short A B k) < 1 ↔ v_short A B k = 0 :=
  euc_lt_one_iff_eq_zero _

/-- The `h_exists` hypothesis of the lift: a small `|Λ|` would
    have to produce a *nonzero* lattice vector of length `< 1`.
    Uninhabited — that vector cannot exist in `ℤ×ℤ`. -/
noncomputable def short_vector_from_Lambda_lt_B8 (A B : ℕ) : Prop :=
  |4 * Real.log (A : ℝ) - 13 * Real.log ((B : ℝ) + 3)| <
      1 / (B : ℝ) ^ 8 →
    ∃ v ∈ L B, v ≠ 0 ∧ euc v < 1

/-- If a small `|Λ|` produced a nonzero `v ∈ L` of length `< 1`,
    then `|Λ| ≥ B⁻⁸`. Instantiating `h_short` is `lambda1_ge_one`.
    Instantiating `h_exists` is `short_vector_from_Lambda_lt_B8`,
    which `not_exists_nonzero_euc_lt_one` refutes. -/
theorem LLL_lift_to_B8_of_short_vector {A B : ℕ} (_hB : B0_nat ≤ B)
    (h_short : ∀ v ∈ L B, v ≠ 0 → 1 ≤ euc v)
    (h_exists :
      |4 * Real.log (A : ℝ) - 13 * Real.log ((B : ℝ) + 3)| <
          1 / (B : ℝ) ^ 8 →
        ∃ v ∈ L B, v ≠ 0 ∧ euc v < 1) :
    1 / (B : ℝ) ^ 8 ≤
      |4 * Real.log (A : ℝ) - 13 * Real.log ((B : ℝ) + 3)| := by
  by_contra hlt
  have ⟨v, hvL, hv_ne, hv_lt⟩ := h_exists (lt_of_not_ge hlt)
  have hge := h_short v hvL hv_ne
  linarith

/-- Same implication with `lambda1_ge_one` already plugged in. -/
theorem LLL_lift_to_B8_of_exists_short {A B : ℕ} (hB : B0_nat ≤ B)
    (h_exists : short_vector_from_Lambda_lt_B8 A B) :
    1 / (B : ℝ) ^ 8 ≤
      |4 * Real.log (A : ℝ) - 13 * Real.log ((B : ℝ) + 3)| :=
  LLL_lift_to_B8_of_short_vector hB lambda1_ge_one h_exists

/-- Floor error `< 1` on `C log(B+3)`. Kills an integer kernel;
    it does not produce a vector of length `C·|Λ|`. -/
theorem cLog_error_lt_one (B : ℕ) :
    |(C_LLL : ℝ) * Real.log ((B : ℝ) + 3) - cLog B| < 1 := by
  unfold cLog
  rw [Int.self_sub_floor, abs_of_nonneg (Int.fract_nonneg _)]
  exact Int.fract_lt_one _

/-- On a solution with `B ≥ B0`, `|Λ| ≤ 2/B⁹` so
    `C·|Λ| ≤ C·2/B⁹ < 1`. Combined with `λ₁ ≥ 1` this shows
    `C·|Λ|` is **smaller than every nonzero lattice length**,
    hence cannot itself be a lattice length. -/
theorem C_LLL_mul_abs_Lambda_lt_one_of_sol {A B : ℕ}
    (hB : B0_nat ≤ B) (hsol : A ^ 4 + B ^ 4 = (B + 3) ^ 13) :
    (C_LLL : ℝ) *
      |4 * Real.log (A : ℝ) - 13 * Real.log ((B : ℝ) + 3)| < 1 := by
  have h100B0 : 100 ≤ B0_nat := by
    rw [B0_nat_eq]
    decide
  have h100 : 100 ≤ B := h100B0.trans hB
  have hup := abs_Lambda_lt_two_div_B_pow_nine h100 hsol
  have hC : 0 ≤ (C_LLL : ℝ) := Nat.cast_nonneg _
  have hmul :
      (C_LLL : ℝ) *
        |4 * Real.log (A : ℝ) - 13 * Real.log ((B : ℝ) + 3)| ≤
      (C_LLL : ℝ) * (2 / (B : ℝ) ^ 9) :=
    mul_le_mul_of_nonneg_left hup hC
  exact lt_of_le_of_lt hmul (C_LLL_mul_two_div_B_pow_nine_lt_one hB)

/-! ## New lattice `L'`: no `(1,0)`, `det = C²`, `λ₁ = C`

    Columns `(C, ⌊C log(B+3)⌋)` and `(0, C)`. A general vector is
    `(k C, k·cLog + l C)`. First coordinate is always a multiple
    of `C`, so `(1,0) ∉ L'`. Euclidean `λ₁ = C` is a theorem
    (`b2'` has length `C`; every nonzero combo is at least that).
    `v_short'` is **not** a free `L'`-vector: if its first
    coordinate has absolute value `< C`, membership forces `0`. -/

noncomputable def b1' (B : ℕ) : ℤ × ℤ := ((C_LLL : ℤ), cLog B)

def b2' : ℤ × ℤ := (0, (C_LLL : ℤ))

theorem b1'_fst (B : ℕ) : (b1' B).1 = (C_LLL : ℤ) := rfl

theorem b2'_eq : b2' = (0, (C_LLL : ℤ)) := rfl

noncomputable def L' (B : ℕ) : Set (ℤ × ℤ) :=
  { v | ∃ k l : ℤ, v = (k * (C_LLL : ℤ), k * cLog B + l * (C_LLL : ℤ)) }

theorem L'_eq_combo (B : ℕ) (v : ℤ × ℤ) :
    v ∈ L' B ↔
      ∃ k l : ℤ, v = (k * (C_LLL : ℤ), k * cLog B + l * (C_LLL : ℤ)) :=
  Iff.rfl

theorem b2'_mem_L' (B : ℕ) : b2' ∈ L' B := by
  refine ⟨0, 1, ?_⟩
  simp [b2']

theorem b1'_mem_L' (B : ℕ) : b1' B ∈ L' B := by
  refine ⟨1, 0, ?_⟩
  simp [b1']

theorem not_b1_mem_L' (B : ℕ) : b1 ∉ L' B := by
  intro ⟨k, _, hk⟩
  have hfst : (1 : ℤ) = k * (C_LLL : ℤ) := by
    simpa [b1] using congrArg Prod.fst hk
  have habs : Int.natAbs (k * (C_LLL : ℤ)) = 1 := by
    rw [← hfst]
    exact Int.natAbs_ofNat 1
  have hmul : Int.natAbs k * C_LLL = 1 := by
    rw [Int.natAbs_mul k (C_LLL : ℤ), Int.natAbs_ofNat C_LLL] at habs
    exact habs
  have hdvd : C_LLL ∣ 1 := ⟨Int.natAbs k, by
    rw [mul_comm, eq_comm]
    exact hmul⟩
  exact Nat.not_dvd_of_pos_of_lt (by decide : (0 : ℕ) < 1) C_LLL_one_lt hdvd

/-- `det = C · C − ⌊C log⌋ · 0 = C²`. -/
theorem det_L' (B : ℕ) :
    Int.natAbs ((b1' B).1 * b2'.2 - (b1' B).2 * b2'.1) = C_LLL ^ 2 := by
  unfold b1' b2'
  simp only [mul_zero, sub_zero]
  have h : (C_LLL : ℤ) * (C_LLL : ℤ) = ((C_LLL * C_LLL : ℕ) : ℤ) := by
    rw [Int.natCast_mul]
  rw [h, Int.natAbs_ofNat, pow_two]

theorem euc_ge_abs_fst (v : ℤ × ℤ) : |(v.1 : ℝ)| ≤ euc v := by
  have hle : (v.1 : ℝ) ^ 2 ≤ (v.1 : ℝ) ^ 2 + (v.2 : ℝ) ^ 2 :=
    le_add_of_nonneg_right (sq_nonneg _)
  have hsqrt := Real.sqrt_le_sqrt hle
  simpa [euc, Real.sqrt_sq_eq_abs] using hsqrt

theorem euc_ge_abs_snd (v : ℤ × ℤ) : |(v.2 : ℝ)| ≤ euc v := by
  have hle : (v.2 : ℝ) ^ 2 ≤ (v.1 : ℝ) ^ 2 + (v.2 : ℝ) ^ 2 :=
    le_add_of_nonneg_left (sq_nonneg _)
  have hsqrt := Real.sqrt_le_sqrt hle
  simpa [euc, Real.sqrt_sq_eq_abs] using hsqrt

theorem euc_b2' : euc b2' = (C_LLL : ℝ) := by
  change Real.sqrt (((0 : ℤ) : ℝ) ^ 2 + ((C_LLL : ℤ) : ℝ) ^ 2) = (C_LLL : ℝ)
  have h0 : ((0 : ℤ) : ℝ) ^ 2 = 0 := by simp
  rw [h0, zero_add]
  have hC : ((C_LLL : ℤ) : ℝ) = (C_LLL : ℝ) := by simp
  rw [hC]
  exact Real.sqrt_sq (Nat.cast_nonneg _)

theorem abs_mul_C_ge_C {k : ℤ} (hk : k ≠ 0) :
    (C_LLL : ℝ) ≤ |Int.cast (k * (C_LLL : ℤ))| := by
  have h1 : (1 : ℤ) ≤ |k| := Int.add_one_le_of_lt (abs_pos.mpr hk)
  have hC : (0 : ℝ) ≤ (C_LLL : ℝ) := Nat.cast_nonneg _
  have hcast : Int.cast (k * (C_LLL : ℤ)) = (k : ℝ) * (C_LLL : ℝ) := by
    rw [Int.cast_mul]
    simp
  rw [hcast, abs_mul, abs_of_nonneg hC]
  have h1R : (1 : ℝ) ≤ |(k : ℝ)| := by
    exact_mod_cast h1
  nlinarith

/-- Every nonzero `v ∈ L'` has Euclidean length `≥ C`. -/
theorem lambda1_ge_C_LLL {B : ℕ} : ∀ v ∈ L' B, v ≠ 0 → (C_LLL : ℝ) ≤ euc v := by
  intro v hv hne
  rcases hv with ⟨k, l, rfl⟩
  rcases em (k = 0) with hk | hk
  · subst hk
    simp only [zero_mul, zero_add]
    have hl : l ≠ 0 := by
      intro hl
      subst hl
      apply hne
      simp
    have hge : (C_LLL : ℝ) ≤ |Int.cast (l * (C_LLL : ℤ))| := abs_mul_C_ge_C hl
    have hsnd := euc_ge_abs_snd ((0 : ℤ), l * (C_LLL : ℤ))
    exact hge.trans (by simpa using hsnd)
  · have hge : (C_LLL : ℝ) ≤ |Int.cast (k * (C_LLL : ℤ))| := abs_mul_C_ge_C hk
    have hfst :=
      euc_ge_abs_fst (k * (C_LLL : ℤ), k * cLog B + l * (C_LLL : ℤ))
    exact hge.trans (by simpa using hfst)

/-- User target `λ₁ ≥ C/2`. Follows from `λ₁ ≥ C`. -/
theorem lambda1_ge_C_div_two {B : ℕ} :
    ∀ v ∈ L' B, v ≠ 0 → (C_LLL : ℝ) / 2 ≤ euc v := by
  intro v hv hne
  have hC : (C_LLL : ℝ) ≤ euc v := lambda1_ge_C_LLL v hv hne
  have hhalf : (C_LLL : ℝ) / 2 ≤ (C_LLL : ℝ) := by
    have : (0 : ℝ) ≤ (C_LLL : ℝ) := Nat.cast_nonneg _
    linarith
  exact hhalf.trans hC

theorem not_exists_nonzero_euc_lt_C_div_two (B : ℕ) :
    ¬ ∃ v ∈ L' B, v ≠ 0 ∧ euc v < (C_LLL : ℝ) / 2 := by
  intro ⟨v, hv, hne, hlt⟩
  exact (not_lt.mpr (lambda1_ge_C_div_two v hv hne)) hlt

noncomputable def kA (A : ℕ) : ℤ :=
  ⌊(C_LLL : ℝ) * Real.log (A : ℝ)⌋

/-- Candidate short vector for `L'`. First coordinate approximates
    `C·Λ`; second is `0`. In `L'` only if the first coordinate is
    a multiple of `C`. -/
noncomputable def v_short' (A B : ℕ) : ℤ × ℤ :=
  (4 * kA A - 13 * cLog B, 0)

theorem v_short'_snd (A B : ℕ) : (v_short' A B).2 = 0 := rfl

theorem kA_error_lt_one (A : ℕ) :
    |(C_LLL : ℝ) * Real.log (A : ℝ) - kA A| < 1 := by
  unfold kA
  rw [Int.self_sub_floor, abs_of_nonneg (Int.fract_nonneg _)]
  exact Int.fract_lt_one _

theorem v_short'_sub_C_Lambda_lt_seventeen (A B : ℕ) :
    |((v_short' A B).1 : ℝ) -
        (C_LLL : ℝ) * (4 * Real.log (A : ℝ) - 13 * Real.log ((B : ℝ) + 3))| <
      17 := by
  have hA : |(kA A : ℝ) - (C_LLL : ℝ) * Real.log (A : ℝ)| < 1 := by
    simpa [abs_sub_comm] using kA_error_lt_one A
  have hB : |(cLog B : ℝ) - (C_LLL : ℝ) * Real.log ((B : ℝ) + 3)| < 1 := by
    simpa [abs_sub_comm] using cLog_error_lt_one B
  unfold v_short'
  have heq : ((4 * kA A - 13 * cLog B : ℤ) : ℝ) -
      (C_LLL : ℝ) * (4 * Real.log (A : ℝ) - 13 * Real.log ((B : ℝ) + 3)) =
        4 * ((kA A : ℝ) - (C_LLL : ℝ) * Real.log (A : ℝ)) -
          13 * ((cLog B : ℝ) - (C_LLL : ℝ) * Real.log ((B : ℝ) + 3)) := by
    simp [Int.cast_sub, Int.cast_mul]
    ring
  rw [heq]
  have h4 : |4 * ((kA A : ℝ) - (C_LLL : ℝ) * Real.log (A : ℝ))| < 4 := by
    rw [abs_mul, abs_of_nonneg (by norm_num : (0 : ℝ) ≤ 4)]
    nlinarith
  have h13 : |13 * ((cLog B : ℝ) - (C_LLL : ℝ) * Real.log ((B : ℝ) + 3))| < 13 := by
    rw [abs_mul, abs_of_nonneg (by norm_num : (0 : ℝ) ≤ 13)]
    nlinarith
  have htri :
      |4 * ((kA A : ℝ) - (C_LLL : ℝ) * Real.log (A : ℝ)) -
          13 * ((cLog B : ℝ) - (C_LLL : ℝ) * Real.log ((B : ℝ) + 3))| ≤
        |4 * ((kA A : ℝ) - (C_LLL : ℝ) * Real.log (A : ℝ))| +
          |13 * ((cLog B : ℝ) - (C_LLL : ℝ) * Real.log ((B : ℝ) + 3))| := by
    have hx :=
      abs_add
        (4 * ((kA A : ℝ) - (C_LLL : ℝ) * Real.log (A : ℝ)))
        (-(13 * ((cLog B : ℝ) - (C_LLL : ℝ) * Real.log ((B : ℝ) + 3))))
    simpa [sub_eq_add_neg, abs_neg] using hx
  calc
    |4 * ((kA A : ℝ) - (C_LLL : ℝ) * Real.log (A : ℝ)) -
        13 * ((cLog B : ℝ) - (C_LLL : ℝ) * Real.log ((B : ℝ) + 3))| ≤
        |4 * ((kA A : ℝ) - (C_LLL : ℝ) * Real.log (A : ℝ))| +
          |13 * ((cLog B : ℝ) - (C_LLL : ℝ) * Real.log ((B : ℝ) + 3))| :=
      htri
    _ < 4 + 13 := add_lt_add h4 h13
    _ = 17 := by norm_num

theorem v_short'_fst_abs_lt_C_of_Lambda_lt {A B : ℕ} (hB : B0_nat ≤ B)
    (hΛ : |4 * Real.log (A : ℝ) - 13 * Real.log ((B : ℝ) + 3)| <
      1 / (B : ℝ) ^ 8) :
    |((v_short' A B).1 : ℝ)| < (C_LLL : ℝ) := by
  have herr := v_short'_sub_C_Lambda_lt_seventeen A B
  have hCpos : (0 : ℝ) < (C_LLL : ℝ) := by exact_mod_cast C_LLL_pos
  have hC : 0 ≤ (C_LLL : ℝ) := le_of_lt hCpos
  have hB0 : (1000000 : ℕ) ≤ B := by
    simpa [B0_nat_eq] using hB
  have hBpos : (0 : ℝ) < (B : ℝ) := by
    exact_mod_cast (lt_of_lt_of_le (by decide : (0 : ℕ) < 1000000) hB0)
  have hpow : (0 : ℝ) < (B : ℝ) ^ 8 := pow_pos hBpos 8
  have hCΛ :
      |(C_LLL : ℝ) * (4 * Real.log (A : ℝ) - 13 * Real.log ((B : ℝ) + 3))| <
        (C_LLL : ℝ) / (B : ℝ) ^ 8 := by
    rw [abs_mul, abs_of_nonneg hC]
    calc
      (C_LLL : ℝ) *
          |4 * Real.log (A : ℝ) - 13 * Real.log ((B : ℝ) + 3)| <
          (C_LLL : ℝ) * (1 / (B : ℝ) ^ 8) :=
        mul_lt_mul_of_pos_left hΛ hCpos
      _ = (C_LLL : ℝ) / (B : ℝ) ^ 8 := by
        field_simp [hpow.ne']
  have htri :
      |((v_short' A B).1 : ℝ)| ≤
        |((v_short' A B).1 : ℝ) -
            (C_LLL : ℝ) * (4 * Real.log (A : ℝ) - 13 * Real.log ((B : ℝ) + 3))| +
          |(C_LLL : ℝ) * (4 * Real.log (A : ℝ) - 13 * Real.log ((B : ℝ) + 3))| := by
    simpa using abs_add
      (((v_short' A B).1 : ℝ) -
        (C_LLL : ℝ) * (4 * Real.log (A : ℝ) - 13 * Real.log ((B : ℝ) + 3)))
      ((C_LLL : ℝ) * (4 * Real.log (A : ℝ) - 13 * Real.log ((B : ℝ) + 3)))

  have hsum :
      |((v_short' A B).1 : ℝ)| < 17 + (C_LLL : ℝ) / (B : ℝ) ^ 8 :=
    lt_of_le_of_lt htri (add_lt_add herr hCΛ)
  have h18 : 17 + (C_LLL : ℝ) / (B : ℝ) ^ 8 ≤ 18 := by
    have hC8 : (C_LLL : ℝ) / (B : ℝ) ^ 8 ≤ 1 :=
      C_LLL_div_B_pow_eight_le_one hB
    linarith
  have h18C : (18 : ℝ) < (C_LLL : ℝ) := by
    rw [C_LLL_real]
    norm_num
  exact lt_trans (hsum.trans_le h18) h18C

/-- If `|first coord| < C` and `v_short' ∈ L'`, then `v_short' = 0`. -/
theorem v_short'_mem_L'_imp_eq_zero {A B : ℕ}
    (hmem : v_short' A B ∈ L' B)
    (hlt : |((v_short' A B).1 : ℝ)| < (C_LLL : ℝ)) :
    v_short' A B = 0 := by
  rcases hmem with ⟨k, l, hk⟩
  have hfst := congrArg Prod.fst hk
  have hsnd := congrArg Prod.snd hk
  have hk0 : k = 0 := by
    by_contra hkne
    have hge := abs_mul_C_ge_C hkne
    have habs : |Int.cast (k * (C_LLL : ℤ))| < (C_LLL : ℝ) := by
      simpa [hfst] using hlt
    exact (not_le.mpr habs) hge
  subst hk0
  have hCne : (C_LLL : ℤ) ≠ 0 := by exact_mod_cast C_LLL_pos.ne'
  have hl0 : l = 0 := by
    have : l * (C_LLL : ℤ) = 0 := by
      simpa [v_short'] using hsnd.symm
    exact (mul_eq_zero.mp this).resolve_right hCne
  subst hl0
  simpa using hk

/-- On `|Λ| < B⁻⁸` and `B ≥ B0`, `v_short' ∈ L'` forces `v_short' = 0`.
    So this candidate is not a nonzero short lattice vector. -/
theorem v_short'_mem_L'_of_Lambda_lt_imp_zero {A B : ℕ} (hB : B0_nat ≤ B)
    (hΛ : |4 * Real.log (A : ℝ) - 13 * Real.log ((B : ℝ) + 3)| <
      1 / (B : ℝ) ^ 8)
    (hmem : v_short' A B ∈ L' B) : v_short' A B = 0 :=
  v_short'_mem_L'_imp_eq_zero hmem (v_short'_fst_abs_lt_C_of_Lambda_lt hB hΛ)

/-- The paste `v_short'_mem_L'` is not a theorem: membership requires
    the first coordinate to be a multiple of `C`. On small `|Λ|` that
    forces the zero vector. Stays `def Prop`. -/
noncomputable def v_short'_mem_L' (A B : ℕ) : Prop :=
  v_short' A B ∈ L' B

/-- If a small `|Λ|` produced a nonzero `v ∈ L'` of length `< C/2`,
    then `|Λ| ≥ B⁻⁸`. The `h_exists` hypothesis is refuted by
    `not_exists_nonzero_euc_lt_C_div_two`. -/
theorem LLL_lift_to_B8_of_short_vector_C48 {A B : ℕ} (_hB : B0_nat ≤ B)
    (h_short : ∀ v ∈ L' B, v ≠ 0 → (C_LLL : ℝ) / 2 ≤ euc v)
    (h_exists :
      |4 * Real.log (A : ℝ) - 13 * Real.log ((B : ℝ) + 3)| <
          1 / (B : ℝ) ^ 8 →
        ∃ v ∈ L' B, v ≠ 0 ∧ euc v < (C_LLL : ℝ) / 2) :
    1 / (B : ℝ) ^ 8 ≤
      |4 * Real.log (A : ℝ) - 13 * Real.log ((B : ℝ) + 3)| := by
  by_contra hlt
  have ⟨v, hvL, hv_ne, hv_lt⟩ := h_exists (lt_of_not_ge hlt)
  have hge := h_short v hvL hv_ne
  linarith

noncomputable def short_vector_from_Lambda_lt_B8_C48 (A B : ℕ) : Prop :=
  |4 * Real.log (A : ℝ) - 13 * Real.log ((B : ℝ) + 3)| <
      1 / (B : ℝ) ^ 8 →
    ∃ v ∈ L' B, v ≠ 0 ∧ euc v < (C_LLL : ℝ) / 2

/-! ## 3-dim Bugeaud–Laurent lattice `L3`

    Generators `(1,0,0)`, `(0,1,0)`, `(⌊C₃ log(B+3)⌋, ⌊C₃ log A⌋, C₃)`
    with `C₃ = 10³⁰`. A general vector is
    `(k + m·c1, l + m·c2, m·C₃)`. Determinant of this upper-triangular
    generating triple is `C₃`. Minkowski supplies an *upper* bound
    `λ₁ ≲ C₃^{1/3} = 10¹⁰`. The lattice contains `(1,0,0)`, so
    `λ₁ = 1`. The paste `λ₁ ≥ 10` is false. The paste
    `4·b3_3 − 13·b1_3` of length `C₃·|Λ|` is false: third coordinate
    `4 C₃`. Do **not** import `Beal.Matveev.PAdicLLL`. -/

def C_LLL_3 : ℕ := 10 ^ 30

theorem C_LLL_3_eq : C_LLL_3 = 10 ^ 30 := rfl

theorem C_LLL_3_pos : 0 < C_LLL_3 := by
  rw [C_LLL_3_eq]
  exact Nat.pos_pow_of_pos 30 (by decide : (0 : ℕ) < 10)

theorem C_LLL_3_real : (C_LLL_3 : ℝ) = (10 : ℝ) ^ 30 := by
  rw [C_LLL_3_eq]
  exact Nat.cast_pow (10 : ℕ) 30

theorem C_LLL_3_eq_ten_pow_ten_cubed :
    C_LLL_3 = ((10 : ℕ) ^ 10) ^ 3 := by
  rw [C_LLL_3_eq, ← Nat.pow_mul]

theorem ten_pow_ten_pow_three_real :
    ((10 : ℝ) ^ 10) ^ 3 = (10 : ℝ) ^ 30 := by
  rw [← pow_mul]

theorem one_lt_ten_pow_ten : (1 : ℝ) < (10 : ℝ) ^ 10 := by
  norm_num

def b1_3 : ℤ × ℤ × ℤ := (1, 0, 0)

def b2_3 : ℤ × ℤ × ℤ := (0, 1, 0)

noncomputable def cLogB3 (B : ℕ) : ℤ :=
  ⌊(C_LLL_3 : ℝ) * Real.log ((B : ℝ) + 3)⌋

noncomputable def cLogA3 (A : ℕ) : ℤ :=
  ⌊(C_LLL_3 : ℝ) * Real.log (A : ℝ)⌋

noncomputable def b3_3 (A B : ℕ) : ℤ × ℤ × ℤ :=
  (cLogB3 B, cLogA3 A, (C_LLL_3 : ℤ))

theorem b1_3_eq : b1_3 = (1, 0, 0) := rfl

theorem b2_3_eq : b2_3 = (0, 1, 0) := rfl

theorem b1_3_ne_zero : b1_3 ≠ 0 := by
  intro h
  have hfst := congrArg Prod.fst h
  simp [b1_3] at hfst

/-- `ℤ b1_3 + ℤ b2_3 + ℤ b3_3`. -/
noncomputable def L3 (A B : ℕ) : Set (ℤ × ℤ × ℤ) :=
  { v | ∃ k l m : ℤ,
      v = (k + m * cLogB3 B, l + m * cLogA3 A, m * (C_LLL_3 : ℤ)) }

noncomputable def euc3 (v : ℤ × ℤ × ℤ) : ℝ :=
  Real.sqrt ((v.1 : ℝ) ^ 2 + (v.2.1 : ℝ) ^ 2 + (v.2.2 : ℝ) ^ 2)

theorem euc3_nonneg (v : ℤ × ℤ × ℤ) : 0 ≤ euc3 v :=
  Real.sqrt_nonneg _

theorem euc3_b1_3 : euc3 b1_3 = 1 := by
  unfold euc3 b1_3
  simp [Real.sqrt_one]

theorem b1_3_mem_L3 (A B : ℕ) : b1_3 ∈ L3 A B := by
  refine ⟨1, 0, 0, ?_⟩
  simp [b1_3]

theorem b2_3_mem_L3 (A B : ℕ) : b2_3 ∈ L3 A B := by
  refine ⟨0, 1, 0, ?_⟩
  simp [b2_3]

theorem b3_3_mem_L3 (A B : ℕ) : b3_3 A B ∈ L3 A B := by
  refine ⟨0, 0, 1, ?_⟩
  simp [b3_3]

/-- Diagonal product `1 · 1 · C₃ = C₃`. -/
theorem det_L3 (A B : ℕ) :
    Int.natAbs (b1_3.1 * b2_3.2.1 * (b3_3 A B).2.2) = C_LLL_3 := by
  simp [b1_3, b2_3, b3_3, Int.natAbs_ofNat]

theorem euc3_ge_one_of_ne_zero (v : ℤ × ℤ × ℤ) (hne : v ≠ 0) :
    1 ≤ euc3 v := by
  have hsum : (1 : ℝ) ≤
      (v.1 : ℝ) ^ 2 + (v.2.1 : ℝ) ^ 2 + (v.2.2 : ℝ) ^ 2 := by
    rcases em (v.1 = 0) with h1 | h1
    · rcases em (v.2.1 = 0) with h2 | h2
      · rcases em (v.2.2 = 0) with h3 | h3
        · exact (hne (Prod.ext h1 (Prod.ext h2 h3))).elim
        · have : (1 : ℤ) ≤ v.2.2 ^ 2 := int_sq_ge_one_of_ne_zero h3
          have : (1 : ℝ) ≤ (v.2.2 : ℝ) ^ 2 := by exact_mod_cast this
          have hx : (0 : ℝ) ≤ (v.1 : ℝ) ^ 2 := sq_nonneg _
          have hy : (0 : ℝ) ≤ (v.2.1 : ℝ) ^ 2 := sq_nonneg _
          linarith
      · have : (1 : ℤ) ≤ v.2.1 ^ 2 := int_sq_ge_one_of_ne_zero h2
        have : (1 : ℝ) ≤ (v.2.1 : ℝ) ^ 2 := by exact_mod_cast this
        have hx : (0 : ℝ) ≤ (v.1 : ℝ) ^ 2 := sq_nonneg _
        have hz : (0 : ℝ) ≤ (v.2.2 : ℝ) ^ 2 := sq_nonneg _
        linarith
    · have : (1 : ℤ) ≤ v.1 ^ 2 := int_sq_ge_one_of_ne_zero h1
      have : (1 : ℝ) ≤ (v.1 : ℝ) ^ 2 := by exact_mod_cast this
      have hy : (0 : ℝ) ≤ (v.2.1 : ℝ) ^ 2 := sq_nonneg _
      have hz : (0 : ℝ) ≤ (v.2.2 : ℝ) ^ 2 := sq_nonneg _
      linarith
  have hsqrt := Real.sqrt_le_sqrt hsum
  simpa [euc3, Real.sqrt_one] using hsqrt

/-- True `λ₁ ≥ 1`. The paste `λ₁ ≥ 10` is false (`euc3 b1_3 = 1`). -/
theorem L3_lambda1_ge {A B : ℕ} :
    ∀ v ∈ L3 A B, v ≠ 0 → (1 : ℝ) ≤ euc3 v := by
  intro v _ hv
  exact euc3_ge_one_of_ne_zero v hv

theorem not_L3_lambda1_ge_ten (A B : ℕ) :
    ¬ ∀ v ∈ L3 A B, v ≠ 0 → (10 : ℝ) ≤ euc3 v := by
  intro h
  have h1 := h b1_3 (b1_3_mem_L3 A B) b1_3_ne_zero
  rw [euc3_b1_3] at h1
  exact (by norm_num : ¬((10 : ℝ) ≤ 1)) h1

/-- Minkowski scale `10¹⁰` is an *upper*-bound heuristic, not `λ₁`.
    Actual `λ₁ ≤ 1 < 10¹⁰`. -/
theorem L3_lambda1_lt_minkowski_scale :
    euc3 b1_3 < (10 : ℝ) ^ 10 := by
  rw [euc3_b1_3]
  exact one_lt_ten_pow_ten

theorem ten_pow_thirty_div_forty_eight :
    (10 : ℝ) ^ 30 / (10 : ℝ) ^ 48 = 1 / (10 : ℝ) ^ 18 := by
  have h10 : (10 : ℝ) ≠ 0 := by norm_num
  field_simp [h10]
  rw [← pow_add]

theorem C_LLL_3_mul_inv_B_pow_eight_lt_half {B : ℕ} (hB : B0_nat ≤ B) :
    (C_LLL_3 : ℝ) / (B : ℝ) ^ 8 < 1 / 2 := by
  have hB0 : (1000000 : ℕ) ≤ B := by
    simpa [B0_nat_eq] using hB
  have hBreal : (1000000 : ℝ) ≤ (B : ℝ) := by exact_mod_cast hB0
  have hpow : (1000000 : ℝ) ^ 8 ≤ (B : ℝ) ^ 8 :=
    pow_le_pow_left (by norm_num) hBreal 8
  have hnum : 0 ≤ (C_LLL_3 : ℝ) := Nat.cast_nonneg _
  have hle : (C_LLL_3 : ℝ) / (B : ℝ) ^ 8 ≤ (C_LLL_3 : ℝ) / (1000000 : ℝ) ^ 8 :=
    div_le_div_of_nonneg_left hnum (pow_pos (by norm_num) 8) hpow
  have hC : (C_LLL_3 : ℝ) / (1000000 : ℝ) ^ 8 =
      (10 : ℝ) ^ 30 / (10 : ℝ) ^ 48 := by
    rw [C_LLL_3_real, million_pow_eight]
  have hlt : (10 : ℝ) ^ 30 / (10 : ℝ) ^ 48 < 1 / 2 := by
    rw [ten_pow_thirty_div_forty_eight]
    norm_num
  exact lt_of_le_of_lt (hle.trans_eq hC) hlt

theorem not_exists_nonzero_euc3_lt_one (A B : ℕ) :
    ¬ ∃ v ∈ L3 A B, v ≠ 0 ∧ euc3 v < 1 := by
  intro ⟨v, _, hne, hlt⟩
  exact (not_lt.mpr (euc3_ge_one_of_ne_zero v hne)) hlt

/-- Displayed combo `4·b3_3 − 13·b1_3`. Third coordinate `4 C₃`,
    length `≥ 4 C₃`, not `C₃·|Λ|`. -/
noncomputable def v_combo3 (A B : ℕ) : ℤ × ℤ × ℤ :=
  (4 * cLogB3 B - 13, 4 * cLogA3 A, 4 * (C_LLL_3 : ℤ))

theorem v_combo3_mem_L3 (A B : ℕ) : v_combo3 A B ∈ L3 A B := by
  refine ⟨(-13 : ℤ), 0, 4, ?_⟩
  apply Prod.ext
  · simp [v_combo3]
    ring
  · apply Prod.ext
    · simp [v_combo3]
    · simp [v_combo3]

theorem euc3_ge_abs_third (v : ℤ × ℤ × ℤ) : |(v.2.2 : ℝ)| ≤ euc3 v := by
  have hle : (v.2.2 : ℝ) ^ 2 ≤
      (v.1 : ℝ) ^ 2 + (v.2.1 : ℝ) ^ 2 + (v.2.2 : ℝ) ^ 2 := by
    have hx : (0 : ℝ) ≤ (v.1 : ℝ) ^ 2 := sq_nonneg _
    have hy : (0 : ℝ) ≤ (v.2.1 : ℝ) ^ 2 := sq_nonneg _
    linarith
  have hsqrt := Real.sqrt_le_sqrt hle
  simpa [euc3, Real.sqrt_sq_eq_abs] using hsqrt

theorem v_combo3_euc_ge_four_C (A B : ℕ) :
    4 * (C_LLL_3 : ℝ) ≤ euc3 (v_combo3 A B) := by
  unfold v_combo3
  have hthird :=
    euc3_ge_abs_third (4 * cLogB3 B - 13, 4 * cLogA3 A, 4 * (C_LLL_3 : ℤ))
  have hC : (0 : ℝ) ≤ (C_LLL_3 : ℝ) := Nat.cast_nonneg _
  have h4 : (0 : ℝ) ≤ (4 : ℝ) := by norm_num
  have hcast : Int.cast (4 * (C_LLL_3 : ℤ)) = (4 : ℝ) * (C_LLL_3 : ℝ) := by
    rw [Int.cast_mul]
    simp
  have habs : |Int.cast (4 * (C_LLL_3 : ℤ))| = 4 * (C_LLL_3 : ℝ) := by
    rw [hcast, abs_mul, abs_of_nonneg h4, abs_of_nonneg hC]
  have hle : |Int.cast (4 * (C_LLL_3 : ℤ))| ≤
      euc3 (4 * cLogB3 B - 13, 4 * cLogA3 A, 4 * (C_LLL_3 : ℤ)) := by
    simpa using hthird
  rwa [habs] at hle

#check abs_Lambda_ge_B_pow_neg_eight
#check LLL_reduces_C1_to_lt_nine
#check LLL_reduces_bound_to_B0_v25
#check no_sol_of_abs_Lambda_ge_B_pow_neg_eight
#check LLL_closes_B_ge_B0_of_pow_neg_eight
#check future_v25_shape_of_B8_lift
#check C_LLL_eq
#check lambda1_ge_one
#check v_short_mem_L
#check not_exists_nonzero_euc_lt_one
#check LLL_lift_to_B8_of_short_vector
#check C_mul_inv_B_pow_eight_ge_one
#check C_LLL_div_B_pow_eight_le_one
#check C_LLL_mul_two_div_B_pow_nine_lt_one
#check C_mul_two_div_B_pow_nine_lt_C_div_two
#check C_LLL_mul_abs_Lambda_lt_one_of_sol
#check det_L'
#check lambda1_ge_C_div_two
#check not_exists_nonzero_euc_lt_C_div_two
#check not_b1_mem_L'
#check v_short'_mem_L'_of_Lambda_lt_imp_zero
#check LLL_lift_to_B8_of_short_vector_C48
#check C1_Matveev_eq
#check C1_LLL_target_eq
#check C1_LLL_target_lt_typical_lo
#check inv_pow_C1_ge_nine_le_two_div_pow_nine
#check no_sol_of_LLL_reduces_C1_to_lt_nine
#check C_LLL_3_eq
#check det_L3
#check L3_lambda1_ge
#check not_L3_lambda1_ge_ten
#check L3_lambda1_lt_minkowski_scale
#check C_LLL_3_mul_inv_B_pow_eight_lt_half
#check not_exists_nonzero_euc3_lt_one
#check v_combo3_mem_L3
#check v_combo3_euc_ge_four_C
#print axioms no_sol_of_abs_Lambda_ge_B_pow_neg_eight
#print axioms future_v25_shape_of_B8_lift
#print axioms lambda1_ge_one
#print axioms lambda1_ge_C_div_two
#print axioms not_exists_nonzero_euc_lt_C_div_two
#print axioms C_mul_two_div_B_pow_nine_lt_C_div_two
#print axioms LLL_lift_to_B8_of_short_vector_C48
#print axioms L3_lambda1_ge
#print axioms not_L3_lambda1_ge_ten
#print axioms det_L3
#print axioms no_sol_of_LLL_reduces_C1_to_lt_nine
#print axioms inv_pow_C1_ge_nine_le_two_div_pow_nine
#print axioms v_combo3_euc_ge_four_C

end BealMatveevBeal.LLLTargetB8
