import Mathlib.Data.ZMod.Basic
import Mathlib.Tactic

namespace BealLevel26Foundations.Mazur.Genus26Real

/-!
# Executable level-26 genus arithmetic

This file closes the finite arithmetic entering the genus formula:

* the congruence-subgroup index is `42`;
* the cusp count is `4`;
* the order-two elliptic correction is `2`;
* the order-three elliptic correction is `0`;
* the cleared Riemann--Hurwitz equation forces genus `2`.

Mathlib 4.12 defines `Gamma0` but does not provide the modular curve or its
Riemann--Hurwitz theorem. Therefore `genusArithmetic26 = 2` is an
unconditional arithmetic certificate, not a claim that the geometric
identification has already been formalized.
-/

def indexGamma0Arithmetic26 : Nat :=
  26 * (2 + 1) / 2 * (13 + 1) / 13

theorem index_Gamma0_26_arithmetic :
    indexGamma0Arithmetic26 = 42 := by
  decide

def divisors26 : List Nat :=
  (List.range 27).filter fun d => d ≠ 0 && 26 % d = 0

theorem divisors26_eq :
    divisors26 = [1, 2, 13, 26] := by
  decide

/-- At squarefree level 26 each divisor contributes
`φ(gcd(d, 26/d)) = φ(1) = 1`. -/
def cuspCount26 : Nat :=
  divisors26.length

theorem cuspCount26_eq_four : cuspCount26 = 4 := by
  decide

def orderTwoResidues26 : List Nat :=
  (List.range 26).filter fun a => (a * a + 1) % 26 = 0

theorem orderTwoResidues26_eq :
    orderTwoResidues26 = [5, 21] := by
  decide

def ellipticOrderTwoCount26 : Nat :=
  orderTwoResidues26.length

theorem ellipticOrderTwoCount26_eq_two :
    ellipticOrderTwoCount26 = 2 := by
  decide

def orderThreeResidues26 : List Nat :=
  (List.range 26).filter fun a => (a * a + a + 1) % 26 = 0

theorem orderThreeResidues26_eq :
    orderThreeResidues26 = [] := by
  decide

def ellipticOrderThreeCount26 : Nat :=
  orderThreeResidues26.length

theorem ellipticOrderThreeCount26_eq_zero :
    ellipticOrderThreeCount26 = 0 := by
  decide

/-- The unique natural number satisfying the cleared genus equation for the
computed signature. -/
def genusArithmetic26 : Nat := 2

theorem cleared_genus_formula_26 :
    12 * genusArithmetic26 +
        3 * ellipticOrderTwoCount26 +
        4 * ellipticOrderThreeCount26 +
        6 * cuspCount26 =
      indexGamma0Arithmetic26 + 12 := by
  decide

theorem genus_X0_26_arithmetic_eq_2 :
    genusArithmetic26 = 2 :=
  rfl

#print axioms index_Gamma0_26_arithmetic
#print axioms divisors26_eq
#print axioms orderTwoResidues26_eq
#print axioms orderThreeResidues26_eq
#print axioms cleared_genus_formula_26
#print axioms genus_X0_26_arithmetic_eq_2

end BealLevel26Foundations.Mazur.Genus26Real