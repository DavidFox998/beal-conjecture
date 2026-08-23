import Family.Brothers1419

namespace Eutheos

def exceptional_4 : List Nat := [2, 3, 19, 191]
def exceptional_5 : List Nat := [2, 3, 19, 191, p5]
def desert_product : Nat := 2 * 3 * 19 * 191
def wormhole_product : Nat := 11 * 13 * 17 * 19

def brothers_mod (p : Nat) : List Nat := brothers_35.map (· % p)

theorem brothers_mod_191_Nodup : (brothers_mod 191).Nodup := by native_decide

end Eutheos