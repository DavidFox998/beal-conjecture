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
  rcases eq_or_ne p 2 with rfl | h2; norm_num
  rcases eq_or_ne p 3 with rfl | h3; norm_num
  rcases eq_or_ne p 5 with rfl | h5; norm_num
  rcases eq_or_ne p 7 with rfl | h7; norm_num
  rcases eq_or_ne p 11 with rfl | h11; have : p ≠ 11 := by intro h; subst h; simp at h143; exact absurd rfl h143.left
  rcases eq_or_ne p 13 with rfl | h13; have : p ≠ 13 := by intro h; subst h; simp at h143; exact absurd rfl h143.right
  rcases eq_or_ne p 17 with rfl | h17; norm_num
  rcases eq_or_ne p 19 with rfl | h19; norm_num
  rcases eq_or_ne p 23 with rfl | h23; norm_num
  have ha: a143 p =0 := by simp [a143, h2, h3, h5, h7, h17, h19, h23, h11, h13]
  rw [ha]; simp; exact le_of_lt hp.pos

end BealHasseWiles
