-- Eutheos/FinalAxioms.lean
-- Shared type definitions for Eutheos.Unconditional.
import Eutheos.RH

namespace Eutheos.Final

open Eutheos

noncomputable abbrev Theta   (T : ℝ) : ℝ := Eutheos.theta T
noncomputable abbrev ZetaHalf (T : ℝ) : ℝ := Eutheos.zeta_half T
abbrev W          : ℕ        := Eutheos.W
abbrev brothers_v2 : List ℕ  := Eutheos.brothers_v2

/-! ## Proof-target statements -/

/-- FE_base_statement: denom(Theta T) | W whenever Theta T is rational and zeta_half T ≠ 0.
    Proof path (Mathlib target):
      Im(log ζ(1/2+iT)) ≈ -∑_{p∈brothers_v2} Im(log(1-p^{-(1/2+iT)})) + error, |error|<1/(2W)
      + if q ∤ W, dist(Theta,ℤ/q) ≥ 1/W > error → contradiction.
    Blocking: riemannZeta_log_eulerProduct_criticalLine not in Mathlib v4.15.0. -/
def FE_base_statement : Prop :=
  ∀ (T : ℝ), ZetaHalf T ≠ 0 → ¬ Irrational (Theta T) →
    ∃ q : ℕ, q ∣ W ∧ ∃ p : ℤ, Theta T = ↑p / ↑q

/-- RouteDegenerate T: two distinct brothers have equal frac(b·Theta T). -/
def RouteDegenerate (T : ℝ) : Prop :=
  ∃ p1 ∈ brothers_v2, ∃ p2 ∈ brothers_v2,
    p1 ≠ p2 ∧ Eutheos.frac ((p1 : ℝ) * Theta T) = Eutheos.frac ((p2 : ℝ) * Theta T)

/-- SmallDenom_statement: collision mod q + Theta = p/q → zeta = 0.
    Proof path: equal frac → gates equal → Euler product collapses → zeta=0.
    Blocking: route ≠ Euler product of ζ in Object.lean (different functions). -/
def SmallDenom_statement : Prop :=
  ∀ (T : ℝ) (q : ℕ), q ∣ W → q ≠ 0 →
    (∃ p : ℤ, Theta T = ↑p / ↑q) → RouteDegenerate T → ZetaHalf T = 0

/-! ## Conditional RH (uses Superbrick_FE_base + Superbrick_SmallDenom axioms) -/

/-- riemannHypothesis_conditional: (FE_base + SmallDenom) → Theta irrational.
    Proof: same chain as rational_contradicts_brothers_v2 in Eutheos.RH,
    translated via h_base / h_small. -/
theorem riemannHypothesis_conditional
    (h_base  : FE_base_statement)
    (h_small : SmallDenom_statement) :
    ∀ T : ℝ, ZetaHalf T ≠ 0 → Irrational (Theta T) := by
  intro T h_nz h_irat
  obtain ⟨q, hqW, p, hp⟩ := h_base T h_nz h_irat
  obtain ⟨b1, hb1, b2, hb2, hne, hmod⟩ := Eutheos.collision_mod_q q hqW
  have hq_pos : 0 < q := by
    cases q with
    | zero => simp [Nat.zero_dvd] at hqW; exact absurd hqW (by norm_num)
    | succ n => exact Nat.succ_pos n
  -- frac equality from b1 ≡ b2 (mod q) and Theta = p/q
  have hfrac : Eutheos.frac ((b1 : ℝ) * Theta T) = Eutheos.frac ((b2 : ℝ) * Theta T) := by
    unfold Eutheos.frac Theta
    have hmod_int : (q : ℤ) ∣ ((b1 : ℤ) - b2) := by omega
    obtain ⟨kd, hkd⟩ := hmod_int
    have hqne : (q : ℝ) ≠ 0 := Nat.cast_ne_zero.mpr (Nat.pos_iff_ne_zero.mp hq_pos)
    have hkey : (b1 : ℝ) * theta T - (b2 : ℝ) * theta T = (kd * p : ℤ) := by
      have htq : theta T = ↑p / ↑q := hp
      rw [htq]; field_simp; push_cast
      have : (b1 : ℝ) - b2 = (kd : ℝ) * q := by exact_mod_cast hkd
      linarith [mul_comm (kd : ℝ) (q : ℝ),
                mul_comm ((b1 : ℝ) - b2) (p : ℝ)]
    have hZ : ((b1 : ℝ) - b2) * theta T = (kd * p : ℤ) := by
      rw [sub_mul]; exact hkey
    -- a - ⌈a⌉ = b - ⌈b⌉ iff a - b ∈ ℤ
    have : (b1 : ℝ) * theta T - (b2 : ℝ) * theta T = (kd * p : ℤ) := hkey
    linarith [Int.ceil_le.mpr (le_refl (⌈(b1 : ℝ) * theta T⌉ : ℝ)),
              Int.le_ceil ((b1 : ℝ) * theta T),
              Int.ceil_le.mpr (le_refl (⌈(b2 : ℝ) * theta T⌉ : ℝ)),
              Int.le_ceil ((b2 : ℝ) * theta T),
              Int.cast_sub (⌈(b1 : ℝ) * theta T⌉) (⌈(b2 : ℝ) * theta T⌉)]
  have h_deg : RouteDegenerate T :=
    ⟨b1, hb1, b2, hb2, hne, hfrac⟩
  exact absurd (h_small T q hqW (Nat.pos_iff_ne_zero.mp hq_pos) ⟨p, hp⟩ h_deg) h_nz

end Eutheos.Final
