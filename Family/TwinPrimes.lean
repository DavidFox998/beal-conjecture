import Family.Brothers1419

namespace Eutheos

def twin_pairs : List (Nat × Nat) := [(11, 13), (17, 19), (191, 193), (2, 3)]

def brothers_mod (p : Nat) : List Nat := brothers_35.map (· % p)

theorem brothers_avoid_twin_191_193 :
    (brothers_35.filter (fun b => b % 191 = 0)).length = 1 ∧
    (brothers_35.filter (fun b => b % 193 = 0)).length = 0 := by native_decide

theorem mod_191_Nodup : (brothers_mod 191).Nodup := by native_decide
theorem mod_191_193_product_Nodup :
    (brothers_35.map (· % (191 * 193))).Nodup := by native_decide

end Eutheos