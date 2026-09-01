import Beal.B14_FreyConductor_Core
import Beal.B13_RibetRealDefs
import Beal.B01_Def

set_option linter.unusedVariables false

namespace BealFreyConductor

open BealRibetReal

-- Real Frey conductor: for Beal solution, N = product of primes dividing ABC, up to factor 2
def FreyConductorDividesABC (A B C : Nat) (N : Nat) : Prop :=
  ∀ p : Nat, Nat.Prime p → p ∣ N → p ∣ A ∨ p ∣ B ∨ p ∣ C

def BealPrimesNotDivideConductor : Prop :=
  ∀ A B C x y z p N,
    IsBealSolution A B C x y z →
    Nat.Prime p → 5 ≤ p →
    ¬ (p ∣ A) → ¬ (p ∣ B) → ¬ (p ∣ C) →
    FreyConductorDividesABC A B C N →
    ¬ (p ∣ N)

theorem beal_primes_not_divide_conductor_trivial : BealPrimesNotDivideConductor :=
  fun A B C x y z p N _ _ _ hNA hNB hNC hDiv hPN =>
    by
      have hOr := hDiv p ‹Nat.Prime p› hPN
      rcases hOr with hA | hB | hC
      · exact hNA hA
      · exact hNB hB
      · exact hNC hC

#print axioms beal_primes_not_divide_conductor_trivial

end BealFreyConductor
