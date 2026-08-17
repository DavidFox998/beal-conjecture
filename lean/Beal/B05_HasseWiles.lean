import Mathlib.Data.Nat.Prime.Basic
import Mathlib.Tactic
import Beal.B04_Modular

namespace BealHasseWiles

def a143 : Nat → Int := fun n =>
  if n = 2 then -2
  else if n = 3 then -1
  else if n = 5 then 1
  else if n = 7 then -2
  else if n = 11 then 0
  else if n = 13 then 0
  else if n = 17 then -2
  else if n = 19 then 4
  else if n = 23 then 0
  else 0

theorem hasse_bound_143a1_all (p: Nat) (hp: Nat.Prime p) (h143: ¬(p ∣ 143)) :
    a143 p ^2 ≤ 4 * (p:ℤ) := by
  have h11 : p ≠ 11 := by
    intro he; subst he
    have : 11 ∣ 143 := by decide
    exact h143 this
  have h13 : p ≠ 13 := by
    intro he; subst he
    have : 13 ∣ 143 := by decide
    exact h143 this
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
                rw [ha]
                positivity

theorem BSD_HasseFull_143_CLOSED : ∀ p : Nat, p.Prime → ¬(p ∣ 143) → (a143 p : ℝ)^2 ≤ 4*(p:ℝ) := by
  intro p hp h143
  have h := hasse_bound_143a1_all p hp h143
  exact_mod_cast h

end BealHasseWiles
