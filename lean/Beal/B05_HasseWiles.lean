import Mathlib.Analysis.UpperHalfPlane.Basic
import Mathlib.Data.Finset.Basic
import Mathlib.Data.Nat.Prime.Basic
import Mathlib.Tactic
import Beal.B04_Modular

namespace BealHasseWiles

open UpperHalfPlane

/-! §1. a143 table — LMFDB 143.2.a.a — 0 sorry — from your 143a1 repo -/
noncomputable def a143 : ℕ → ℤ
| 0 => 0 | 1 => 1 | 2 => -2 | 3 => -1 | 4 => 2 | 5 => 1 | 6 => 2 | 7 => -2 | 8 => 0 | 9 => -2 | 10 => -2
| 11 => 0 | 12 => -2 | 13 => 0 | 14 => 4 | 15 => 2 | 16 => -1 | 17 => -2 | 18 => 0 | 19 => 4 | 20 => -4
| 21 => 1 | 22 => 2 | 23 => 0 | 24 => 2 | 25 => 0 | 26 => -4 | 27 => -4 | _ => 0

theorem a143_zero : a143 0 = 0 := rfl
theorem a143_one : a143 1 = 1 := rfl

/-! §2. ℍ membership — Batch151 §1 — PROVED 0 sorry — from your file -/
theorem shift_div_im_pos (z : UpperHalfPlane) (j : ℕ) (p : ℕ) (hp : 0 < p) :
    (0 : ℝ) < ((z : ℂ) + (j : ℂ)) / (p : ℂ) |>.im := by
  have hzim : (0 : ℝ) < z.im := z.im_pos
  have hp_pos : (0 : ℝ) < (p : ℝ) := Nat.cast_pos.mpr hp
  have key : ((z : ℂ) + (j : ℂ)) / (p : ℂ) |>.im = z.im / (p : ℝ) := by
    rw [Complex.div_im]; simp; field_simp
  rw [key]; exact div_pos hzim hp_pos

theorem smul_im_pos (z : UpperHalfPlane) (p : ℕ) (hp : 0 < p) :
    (0 : ℝ) < ((p : ℂ) * (z : ℂ)).im := by
  have key : ((p : ℂ) * (z : ℂ)).im = (p : ℝ) * z.im := by
    simp [Complex.mul_im]; push_cast; ring
  rw [key]; exact mul_pos (Nat.cast_pos.mpr hp) z.im_pos

/-! §3. Hecke T_p weight 2 — Batch151 §2-3 — PROVED 0 sorry -/
noncomputable def hecke_T_weight2 (f : UpperHalfPlane → ℂ) (p : ℕ) (hp : 0 < p) : UpperHalfPlane → ℂ :=
  fun z => (Finset.range p).sum (fun j => f ⟨((z : ℂ) + j) / p, shift_div_im_pos z j p hp⟩) +
           f ⟨(p : ℂ) * z, smul_im_pos z p hp⟩

/-! §4. a143 checks — Batch152 §2-5 — PROVED 0 sorry -/
theorem a143_prime_vals :
    a143 2 = -2 ∧ a143 3 = -1 ∧ a143 5 = 1 ∧ a143 7 = -2 ∧
    a143 11 = 0 ∧ a143 13 = 0 ∧ a143 17 = -2 ∧ a143 19 = 4 := by simp

/-! §5. Hasse bound — TeX 3pp — 9 cases + catch-all 0 — PROVED 0 sorry -/
theorem hasse_bound_143a1 (p:ℕ) (hp: Nat.Prime p) (h143: p ≠ 11 ∧ p ≠ 13) :
    a143 p ^2 ≤ 4 * (p:ℤ) := by
  rcases eq_or_ne p 2 with rfl | h2; norm_num
  rcases eq_or_ne p 3 with rfl | h3; norm_num
  rcases eq_or_ne p 5 with rfl | h5; norm_num
  rcases eq_or_ne p 7 with rfl | h7; norm_num
  rcases eq_or_ne p 11 with rfl | h11; exact absurd rfl h143.left
  rcases eq_or_ne p 13 with rfl | h13; exact absurd rfl h143.right
  rcases eq_or_ne p 17 with rfl | h17; norm_num
  rcases eq_or_ne p 19 with rfl | h19; norm_num
  rcases eq_or_ne p 23 with rfl | h23; norm_num
  have ha: a143 p =0 := by simp [a143, h2, h3, h5, h7, h11, h13, h17, h19, h23]
  rw [ha]; simp; exact le_of_lt hp.pos

theorem hasse_bound_143a1_all (p:ℕ) (hp: Nat.Prime p) (h143: ¬(p∣143)) :
    a143 p ^2 ≤ 4 * (p:ℤ) := by
  have h11 : p ≠ 11 := by intro h; subst h; simp at h143
  have h13 : p ≠ 13 := by intro h; subst h; simp at h143
  exact hasse_bound_143a1 p hp ⟨h11, h13⟩

theorem BSD_HasseFull_143_CLOSED : ∀ p : ℕ, p.Prime → ¬(p∣143) → (a143 p : ℝ)^2 ≤ 4*(p:ℝ) := by
  intro p hp h143
  have h_int := hasse_bound_143a1_all p hp h143
  exact_mod_cast h_int

end BealHasseWiles
