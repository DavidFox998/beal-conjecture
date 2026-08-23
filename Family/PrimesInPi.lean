import Mathlib.Analysis.SpecialFunctions.Log.Basic
import Mathlib.Data.Nat.Prime.Basic
import Family.Brothers1419

namespace Eutheos

def alpha0_num : Nat := 3141592653
def alpha0_den : Nat := 10000000000

def frac_rat_nat (n : Nat) : Nat := (n * alpha0_num) % alpha0_den
def dist_rat_nat (n : Nat) : Nat :=
  let f := frac_rat_nat n
  Nat.min f (alpha0_den - f)

def is_exceptional_rat (p : Nat) : Bool :=
  p ≥ 2 && dist_rat_nat p * p < alpha0_den

def S4 : List Nat := [2, 3, 19, 191]
def exceptional_upto_1000 : List Nat :=
  (List.range 1000).filter (fun p => is_exceptional_rat p && Nat.Prime p)

theorem exceptional_upto_1000_eq : exceptional_upto_1000 = S4 := by native_decide

def desert_192_1000 : List Nat :=
  ((List.range (1000 - 192)).map (· + 192)).filter
    (fun p => is_exceptional_rat p && Nat.Prime p)

theorem desert_192_1000_empty : desert_192_1000 = [] := by native_decide

end Eutheos