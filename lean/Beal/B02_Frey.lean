import Mathlib.Data.Nat.Prime.Basic
import Mathlib.Tactic
import Beal.B01_Def

def Frey_AB (A x : Nat) : Nat := A ^ x
def Frey_C (C z : Nat) : Nat := C ^ z

def Frey_discriminant (A B C x y z : Nat) : Int :=
  -16 * ((A ^ x * B ^ y * C ^ z : Nat) : Int) ^ 2

theorem frey_discriminant_ne_zero (A B C x y z : Nat)
  (hA : 0 < A) (hB : 0 < B) (hC : 0 < C) :
  Frey_discriminant A B C x y z ≠ 0 := by
  unfold Frey_discriminant
  have hAx : 0 < A ^ x := Nat.pow_pos hA
  have hBy : 0 < B ^ y := Nat.pow_pos hB
  have hCz : 0 < C ^ z := Nat.pow_pos hC
  have hAB : 0 < A ^ x * B ^ y := Nat.mul_pos hAx hBy
  have hABC : 0 < A ^ x * B ^ y * C ^ z := Nat.mul_pos hAB hCz
  have hABC_ne_nat : A ^ x * B ^ y * C ^ z ≠ 0 := Nat.ne_of_gt hABC
  have hABC_ne_int : ((A ^ x * B ^ y * C ^ z : Nat) : Int) ≠ 0 := by
    exact_mod_cast hABC_ne_nat
  have h16 : (-16 : Int) ≠ 0 := by decide
  exact mul_ne_zero h16 (pow_ne_zero 2 hABC_ne_int)
