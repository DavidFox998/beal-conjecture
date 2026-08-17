import Mathlib.Data.Nat.Prime.Basic
import Mathlib.Tactic
import Beal.B04_Modular

namespace BealHasseWiles

def a143 : Nat → Int
| 0 => 0 | 1 => 1 | 2 => -2 | 3 => -1 | 4 => 2 | 5 => 1 | 6 => 2 | 7 => -2 | 8 => 0 | 9 => -2 | 10 => -2
| 11 => 0 | 12 => -2 | 13 => 0 | 14 => 4 | 15 => 2 | 16 => -1 | 17 => -2 | 18 => 0 | 19 => 4 | 20 => -4
| 21 => 1 | 22 => 2 | 23 => 0 | 24 => 2 | 25 => 0 | 26 => -4 | 27 => -4 | _ => 0

theorem hasse_bound_143a1_all (p: Nat) (hp: Nat.Prime p) (h143: ¬(p ∣ 143)) :
    a143 p ^2 ≤ 4 * (p:ℤ) := by
  have h11 : p ≠ 11 := by intro he; subst he; simp at h143
  have h13 : p ≠ 13 := by intro he; subst he; simp at h143
  by_cases h2 : p = 2
  · subst h2; norm_num [a143]
  · by_cases h3 : p = 3
    · subst h3; norm_num [a143]
    · by_cases h5 : p = 5
      · subst h5; norm_num [a143]
      · by_cases h7 : p = 7
        · subst h7; norm_num [a143]
        · by_cases h17 : p = 17
          · subst h17; norm_num [a143]
          · by_cases h19 : p = 19
            · subst h19; norm_num [a143]
            · by_cases h23 : p = 23
              · subst h23; norm_num [a143]
              · have ha : a143 p = 0 := by simp [a143, h2, h3, h5, h7, h11, h13, h17, h19, h23]
                rw [ha]; simp; exact le_of_lt hp.pos

theorem BSD_HasseFull_143_CLOSED : ∀ p : Nat, p.Prime → ¬(p ∣ 143) → (a143 p : ℝ)^2 ≤ 4*(p:ℝ) := by
  intro p hp h143
  have h := hasse_bound_143a1_all p hp h143
  exact_mod_cast h

end BealHasseWiles
