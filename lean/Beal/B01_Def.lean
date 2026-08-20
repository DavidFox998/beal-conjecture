-- B01_Def — Mathlib wrapper and backwards-compatible public API.
--
-- The actual Beal statement lives in B01_Def_Core, deliberately without
-- imports. Downstream bricks import this wrapper and keep using the historical
-- names below.

import Beal.B01_Def_Core
import Mathlib.Data.Nat.GCD.Basic
import Mathlib.Tactic

-- Historical Mathlib-facing API.  The foundational core deliberately uses an
-- explicit common-divisor witness, while this wrapper retains `Nat.gcd`.
def IsBealSolution (A B C x y z : Nat) : Prop :=
  0 < A ∧ 0 < B ∧ 0 < C ∧
  2 < x ∧ 2 < y ∧ 2 < z ∧
  A ^ x + B ^ y = C ^ z ∧
  Nat.gcd A (Nat.gcd B C) = 1

def BealConjecture : Prop :=
  ∀ A B C x y z, IsBealSolution A B C x y z → False

theorem primitiveTripleCore_of_gcd_eq_one {A B C : Nat}
  (hGcd : Nat.gcd A (Nat.gcd B C) = 1) :
  PrimitiveTripleCore A B C := by
  intro d hA hB hC
  rcases hA with ⟨qA, hqA⟩
  rcases hB with ⟨qB, hqB⟩
  rcases hC with ⟨qC, hqC⟩
  have hdA : d ∣ A := ⟨qA, hqA⟩
  have hdB : d ∣ B := ⟨qB, hqB⟩
  have hdC : d ∣ C := ⟨qC, hqC⟩
  have hdBC : d ∣ Nat.gcd B C := Nat.dvd_gcd hdB hdC
  have hdABC : d ∣ Nat.gcd A (Nat.gcd B C) := Nat.dvd_gcd hdA hdBC
  have hdOne : d ∣ 1 := by simpa [hGcd] using hdABC
  exact Nat.dvd_one.mp hdOne

theorem gcd_eq_one_of_primitiveTripleCore {A B C : Nat}
  (hPrimitive : PrimitiveTripleCore A B C) :
  Nat.gcd A (Nat.gcd B C) = 1 :=
  hPrimitive (Nat.gcd A (Nat.gcd B C))
    (Nat.gcd_dvd_left A (Nat.gcd B C))
    (Nat.dvd_trans (Nat.gcd_dvd_right A (Nat.gcd B C)) (Nat.gcd_dvd_left B C))
    (Nat.dvd_trans (Nat.gcd_dvd_right A (Nat.gcd B C)) (Nat.gcd_dvd_right B C))

theorem isBealSolution_wrapper_to_core {A B C x y z : Nat}
  (h : IsBealSolution A B C x y z) :
  IsBealSolutionCore A B C x y z := by
  rcases h with ⟨hA, hB, hC, hx, hy, hz, hEq, hGcd⟩
  exact ⟨hA, hB, hC, hx, hy, hz, hEq, primitiveTripleCore_of_gcd_eq_one hGcd⟩

theorem isBealSolutionCore_to_wrapper {A B C x y z : Nat}
  (h : IsBealSolutionCore A B C x y z) :
  IsBealSolution A B C x y z := by
  rcases h with ⟨hA, hB, hC, hx, hy, hz, hEq, hPrimitive⟩
  exact ⟨hA, hB, hC, hx, hy, hz, hEq, gcd_eq_one_of_primitiveTripleCore hPrimitive⟩

theorem bealConjecture_wrapper_to_core
  (h : BealConjecture) : BealConjectureCore :=
  fun A B C x y z hSolution =>
    h A B C x y z (isBealSolutionCore_to_wrapper hSolution)

theorem bealConjectureCore_to_wrapper
  (h : BealConjectureCore) : BealConjecture :=
  fun A B C x y z hSolution =>
    h A B C x y z (isBealSolution_wrapper_to_core hSolution)

#print axioms IsBealSolutionCore
#print axioms BealConjectureCore
#print axioms IsBealSolution
#print axioms BealConjecture
#print axioms primitiveTripleCore_of_gcd_eq_one
#print axioms gcd_eq_one_of_primitiveTripleCore
#print axioms isBealSolution_wrapper_to_core
#print axioms isBealSolutionCore_to_wrapper
#print axioms bealConjecture_wrapper_to_core
#print axioms bealConjectureCore_to_wrapper
-- The core declarations are zero-axiom; the gcd compatibility bridges may use
-- proposition extensionality through Lean's `Nat.gcd` implementation.
