import Beal.B01_Def

def Frey_AB (A x : Nat) : Nat := A ^ x
def Frey_C (C z : Nat) : Nat := C ^ z

def Frey_discriminant (A B C x y z : Nat) : Int :=
    - (16 : Int) * (A ^ x * B ^ y * C ^ z) ^ 2

theorem frey_discriminant_ne_zero (A B C x y z : Nat)
  (hA : 0 < A) (hB : 0 < B) (hC : 0 < C) :
  Frey_discriminant A B C x y z ≠ 0 := by
  unfold Frey_discriminant
  have h : 0 < A ^ x * B ^ y * C ^ z := by
    exact Nat.mul_pos (Nat.mul_pos (Nat.pow_pos hA) (Nat.pow_pos hB)) (Nat.pow_pos hC)
  simp [pow_ne_zero, ne_of_gt h]
