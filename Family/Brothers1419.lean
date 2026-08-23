import Mathlib

namespace Eutheos

def popcount (n : Nat) : Nat := (Nat.bits n).count true

def brothers_35 : List Nat :=
  [1419, 1841, 2474, 4584, 5428, 5639, 6694, 9648, 9859, 10914, 12813, 13024, 13446, 16611, 18088, 18510, 21042, 21253, 24629, 25473, 25684, 29060, 33069, 34124, 35601, 39188, 40032, 41298, 41509, 42564, 43408, 44041, 49738, 51848, 52481]

def brothers_35_finset : Finset Nat := brothers_35.toFinset

theorem all_brothers_residue_153 : brothers_35.all (· % 211 == 153) = true := by native_decide
theorem brothers_Nodup : brothers_35.Nodup := by native_decide
theorem brothers_card_35 : brothers_35_finset.card = 35 := by native_decide

def p5 : Nat := 3993746143633

end Eutheos