-- FORMALIZED: certificates/Bands_269_Certificate.pdf
-- Source: attached_assets/bands_269_1780968901406.json + rake_v16_c07.py
-- Kernel: propext, Classical.choice, Quot.sound only
import TheoremaAureum.C01_Arakelov
import Mathlib.Data.ZMod.Basic
import Mathlib.Data.Nat.Prime.Basic
import Mathlib.Algebra.Order.Floor

/-!
# Bands 269 — S(2π/7) Rake v1.6 Four-Condition Sieve

Formalizes the mathematical content of `certificates/Bands_269_Certificate.pdf`.

The certificate applies four conditions to every CF denominator h of 2π/7,
finding BANDS = [127, 414679] that pass all conditions:

  [1] h is prime (Miller-Rabin)
  [2] dist(h) · h < 1  (Diophantine: h is a CF best approximator to 2π/7)
  [3] 3^h ≡ 3 (mod 7)  (Lemma G0.3 Galois residue gate)
  [4] arakelov_term(genus = 13) > 0  (C07 Arakelov fix — was 0, now 24)

Source data (bands_269.json, SHA 10b980a14ce637… [enriched]):
  bands: [127, 414679], N_end: 10^15
  Pre-enrichment SHA: 6775013b… (same mathematical content, added band_details field)
  arakelov_term_genus_13: 24
  lean_binding: C01_Arakelov.lean theorem ArakelovPositivity_X0_143

Lean formally verifies ALL FOUR conditions for both bands.

Kernel axioms: propext, Classical.choice, Quot.sound
-/

namespace TheoremaAureum

open Real

/-! ## Condition [1]: Primality of the two bands -/

/-- 127 is prime (band h₁ of S(2π/7)). -/
theorem band1_prime : Nat.Prime 127 := by decide

/-- 414679 is prime (band h₂ of S(2π/7)). -/
theorem band2_prime : Nat.Prime 414679 := by decide

/-! ## Condition [2]: Diophantine distance bound — h is a CF best approximator to 2π/7

    For h = 127 and h = 414679, proved from π-bounds (pi_gt_d6, pi_lt_d6,
    pi_gt_d20, pi_lt_d20). -/

/-- **condition2_127**: |127 · (2π/7) − 114| < 1/127.
    Equivalently: dist(127) · 127 < 1 where dist(127) = ‖127 · (2π/7)‖.

    Numerics: 127·(2π/7) = 254π/7 ≈ 113.9949 (nearest integer = 114);
    distance ≈ 0.005068; threshold 1/127 ≈ 0.007874.
    Proof uses Real.pi_gt_d6 (π > 3.141592) and Real.pi_lt_d6 (π < 3.141593). -/
theorem condition2_127 : |(127 : ℝ) * (2 * Real.pi / 7) - 114| < 1 / 127 := by
  have hpi_lb := Real.pi_gt_d6
  have hpi_ub := Real.pi_lt_d6
  rw [show (127 : ℝ) * (2 * Real.pi / 7) - 114 = (254 * Real.pi - 798) / 7 by ring]
  rw [abs_lt]
  constructor
  · rw [lt_div_iff (by norm_num : (0 : ℝ) < 7)]
    have h1 : (798 : ℝ) - 7 / 127 < 254 * 3.141592 := by norm_num
    nlinarith
  · rw [div_lt_iff (by norm_num : (0 : ℝ) < 7)]
    have h2 : (254 : ℝ) * 3.141593 < 798 + 7 / 127 := by norm_num
    nlinarith

/-- **condition2_414679**: |414679 · (2π/7) − 372215| < 1/414679.
    Equivalently: dist(414679) · 414679 < 1.

    Numerics: 414679·(2π/7) = 829358π/7 ≈ 372214.9999994 (nearest integer = 372215);
    distance ≈ 6×10⁻⁷; threshold 1/414679 ≈ 2.41×10⁻⁶.
    Proof uses Real.pi_gt_d20 and Real.pi_lt_d20 (20-decimal-place bounds). -/
theorem condition2_414679 : |(414679 : ℝ) * (2 * Real.pi / 7) - 372215| < 1 / 414679 := by
  have hpi_lb := Real.pi_gt_d20
  have hpi_ub := Real.pi_lt_d20
  rw [show (414679 : ℝ) * (2 * Real.pi / 7) - 372215 =
      (829358 * Real.pi - 2605505) / 7 by ring]
  rw [abs_lt]
  constructor
  · rw [lt_div_iff (by norm_num : (0 : ℝ) < 7)]
    have h1 : (2605505 : ℝ) - 7 / 414679 <
        829358 * 3.14159265358979323846 := by norm_num
    nlinarith
  · rw [div_lt_iff (by norm_num : (0 : ℝ) < 7)]
    have h2 : (829358 : ℝ) * 3.14159265358979323847 < 2605505 + 7 / 414679 := by norm_num
    nlinarith

/-! ## Condition [3]: Lemma G0.3 — Galois residue gate 3^h ≡ 3 (mod 7) -/

/-- (3 : ZMod 7)^6 = 1.  The multiplicative order of 3 in (ℤ/7ℤ)× divides 6. -/
private lemma ord3_mod7 : (3 : ZMod 7) ^ 6 = 1 := by decide

/-- 127 = 6·21 + 1. -/
private lemma h127_mod6 : 127 = 6 * 21 + 1 := by norm_num

/-- 414679 = 6·69113 + 1. -/
private lemma h414679_mod6 : 414679 = 6 * 69113 + 1 := by norm_num

/-- G0.3 condition for band h = 127: 3^127 ≡ 3 (mod 7). -/
theorem g03_127 : (3 : ZMod 7) ^ 127 = 3 := by
  rw [h127_mod6, pow_add, pow_mul, ord3_mod7, one_pow, one_mul, pow_one]

/-- G0.3 condition for band h = 414679: 3^414679 ≡ 3 (mod 7). -/
theorem g03_414679 : (3 : ZMod 7) ^ 414679 = 3 := by
  rw [h414679_mod6, pow_add, pow_mul, ord3_mod7, one_pow, one_mul, pow_one]

/-! ## Condition [4]: Arakelov gate — always passes for X₀(143) -/

/-- The arakelov_term for genus 13 equals 24.
    Corrected 2026-06-04: was 0 (making C07 vacuously False); now 2·13 − 2 = 24. -/
theorem arakelov_term_genus13 : arakelovSelfIntersection (X₀ 143) = 24 :=
  arakelovSelfIntersection_X0_143

/-- Condition [4] passes for both bands: the Arakelov gate is strictly positive. -/
theorem arakelov_gate_positive : 0 < arakelovSelfIntersection (X₀ 143) := by
  rw [arakelov_term_genus13]; norm_num

/-- **ArakelovPositivity (X₀ 143)** — the C07 hypothesis.
    Condition [4] holds for every CF denominator h (it depends only on genus = 13,
    not on h), so the Arakelov gate never eliminates a candidate. -/
theorem arakelov_condition_always_passes : ArakelovPositivity (X₀ 143) :=
  ArakelovPositivity_X0_143

/-! ## General theorem: ArakelovPositivity for all genus ≥ 2 surfaces -/

/-- **arakelov_positivity_of_genus_ge2**: ArakelovPositivity holds for every
    arithmetic surface with genus ≥ 2. -/
theorem arakelov_positivity_of_genus_ge2 {X : ArithmeticSurface}
    (hg : 2 ≤ X.genus) : ArakelovPositivity X := by
  unfold ArakelovPositivity arakelovSelfIntersection
  rw [if_pos hg]
  have h : (2 : ℝ) ≤ (X.genus : ℝ) := by exact_mod_cast hg
  linarith

/-! ## Combined band certificate (all four conditions) -/

/-- **bands_all_conditions_127**: band h = 127 satisfies all four conditions.
    Conditions [1],[3],[4] are proved by algebra/decide.
    Condition [2] is proved from π-bounds (pi_gt_d6, pi_lt_d6). -/
theorem bands_all_conditions_127 :
    Nat.Prime 127 ∧
    |(127 : ℝ) * (2 * Real.pi / 7) - 114| < 1 / 127 ∧
    (3 : ZMod 7) ^ 127 = 3 ∧
    ArakelovPositivity (X₀ 143) :=
  ⟨band1_prime, condition2_127, g03_127, arakelov_condition_always_passes⟩

/-- **bands_all_conditions_414679**: band h = 414679 satisfies all four conditions.
    Condition [2] is proved from 20-decimal-place π-bounds. -/
theorem bands_all_conditions_414679 :
    Nat.Prime 414679 ∧
    |(414679 : ℝ) * (2 * Real.pi / 7) - 372215| < 1 / 414679 ∧
    (3 : ZMod 7) ^ 414679 = 3 ∧
    ArakelovPositivity (X₀ 143) :=
  ⟨band2_prime, condition2_414679, g03_414679, arakelov_condition_always_passes⟩

/-- **bands_conditions_134**: compatibility alias — both bands satisfy [1],[3],[4].
    Condition [2] is also proved; use bands_all_conditions_127/414679 for the full
    four-condition certificate. -/
theorem bands_conditions_134 :
    Nat.Prime 127 ∧ (3 : ZMod 7)^127 = 3 ∧ ArakelovPositivity (X₀ 143) ∧
    Nat.Prime 414679 ∧ (3 : ZMod 7)^414679 = 3 :=
  ⟨band1_prime, g03_127, arakelov_condition_always_passes,
   band2_prime, g03_414679⟩

end TheoremaAureum
