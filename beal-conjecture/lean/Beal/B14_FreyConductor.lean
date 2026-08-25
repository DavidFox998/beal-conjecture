import Beal.B14_FreyConductor_Core
import Beal.B01_Def
import Beal.B10_RibetReal_Core
import Mathlib.Data.Nat.Factorization.Basic
import Mathlib.Data.Nat.Factorization.PrimePow
import Mathlib.Tactic

open scoped BigOperators

namespace BealFreyConductor

def Rad (n : Nat) : Nat :=
  ∏ p in n.primeFactors, p

theorem rad_dvd_self (n : Nat) : Rad n ∣ n := by
  unfold Rad
  exact Nat.prod_primeFactors_dvd n

theorem prime_factor_of_rad {n p : Nat} (h : p ∣ Rad n) : p ∣ n :=
  Nat.dvd_trans h (rad_dvd_self n)

theorem prime14Core_to_natPrime {p : Nat} (hp : Prime14Core p) : Nat.Prime p := by
  apply Nat.prime_def_lt.mpr
  refine ⟨hp.1, ?_⟩
  intro m hm hDiv
  rcases hDiv with ⟨q, hpq⟩
  rcases hp.2 m q hpq with hOne | hOther
  · exact hOne
  · subst q
    have hpm : p = m := by simpa using hpq
    exact (Nat.ne_of_lt hm hpm.symm).elim

theorem natPrime_to_prime14Core {p : Nat} (hp : Nat.Prime p) : Prime14Core p := by
  refine ⟨Nat.lt_of_lt_of_le (by decide : 1 < 2) hp.two_le, ?_⟩
  intro a b hab
  rcases (Nat.dvd_prime hp).mp ⟨b, hab⟩ with hOne | hSelf
  · exact Or.inl hOne
  · right
    subst a
    apply Nat.mul_left_cancel hp.pos
    exact hab.symm.trans (Nat.mul_one p).symm

/--
At the approved Mathlib factorization boundary, a positive product whose
radical is the prime `p` has no prime divisor other than `p`. Therefore each
positive factor is a power of `p` (with `1 = p^0`).

This theorem intentionally lives in the B14 wrapper: its finite
factorization proof is not part of the zero-axiom Core import surface.
-/
theorem radical_prime_imp_prime_power {A B C p : Nat}
    (hp : Nat.Prime p) (hA : 0 < A) (hB : 0 < B) (hC : 0 < C)
    (hRad : Rad (A * B * C) = p) :
    RadPrimePowerCertificate14Core A B C p := by
  have hABC0 : A * B * C ≠ 0 := by
    exact Nat.ne_of_gt (Nat.mul_pos (Nat.mul_pos hA hB) hC)
  have hA0 : A ≠ 0 := Nat.ne_of_gt hA
  have hB0 : B ≠ 0 := Nat.ne_of_gt hB
  have hC0 : C ≠ 0 := Nat.ne_of_gt hC
  have hAeq : A = p ^ A.primeFactorsList.length := by
    apply Nat.eq_prime_pow_of_unique_prime_dvd hA0
    intro d hdPrime hdA
    have hdABC : d ∣ A * B * C :=
      dvd_mul_of_dvd_left (dvd_mul_of_dvd_left hdA B) C
    have hdMem : d ∈ (A * B * C).primeFactors :=
      Nat.mem_primeFactors.mpr ⟨hdPrime, hdABC, hABC0⟩
    have hdRad : d ∣ Rad (A * B * C) := by
      simpa [Rad] using (Finset.dvd_prod_of_mem (fun q : Nat => q) hdMem)
    have hdp : d ∣ p := by simpa [hRad] using hdRad
    rcases (Nat.dvd_prime hp).mp hdp with hdOne | hdEq
    · exact (hdPrime.ne_one hdOne).elim
    · exact hdEq
  have hBeq : B = p ^ B.primeFactorsList.length := by
    apply Nat.eq_prime_pow_of_unique_prime_dvd hB0
    intro d hdPrime hdB
    have hdABC : d ∣ A * B * C :=
      dvd_mul_of_dvd_left (dvd_mul_of_dvd_right hdB A) C
    have hdMem : d ∈ (A * B * C).primeFactors :=
      Nat.mem_primeFactors.mpr ⟨hdPrime, hdABC, hABC0⟩
    have hdRad : d ∣ Rad (A * B * C) := by
      simpa [Rad] using (Finset.dvd_prod_of_mem (fun q : Nat => q) hdMem)
    have hdp : d ∣ p := by simpa [hRad] using hdRad
    rcases (Nat.dvd_prime hp).mp hdp with hdOne | hdEq
    · exact (hdPrime.ne_one hdOne).elim
    · exact hdEq
  have hCeq : C = p ^ C.primeFactorsList.length := by
    apply Nat.eq_prime_pow_of_unique_prime_dvd hC0
    intro d hdPrime hdC
    have hdABC : d ∣ A * B * C := dvd_mul_of_dvd_right hdC (A * B)
    have hdMem : d ∈ (A * B * C).primeFactors :=
      Nat.mem_primeFactors.mpr ⟨hdPrime, hdABC, hABC0⟩
    have hdRad : d ∣ Rad (A * B * C) := by
      simpa [Rad] using (Finset.dvd_prod_of_mem (fun q : Nat => q) hdMem)
    have hdp : d ∣ p := by simpa [hRad] using hdRad
    rcases (Nat.dvd_prime hp).mp hdp with hdOne | hdEq
    · exact (hdPrime.ne_one hdOne).elim
    · exact hdEq
  exact ⟨A.primeFactorsList.length, B.primeFactorsList.length,
    C.primeFactorsList.length, hAeq, hBeq, hCeq⟩

theorem radical_eq_prime_to_core_prime_case {A B C p : Nat}
    (hp : Nat.Prime p) (hA : 0 < A) (hB : 0 < B) (hC : 0 < C)
    (hRad : Rad (A * B * C) = p) :
    RadPrimeCase14Core A B C p := by
  have hABC0 : A * B * C ≠ 0 := by
    exact Nat.ne_of_gt (Nat.mul_pos (Nat.mul_pos hA hB) hC)
  refine ⟨?_, natPrime_to_prime14Core hp⟩
  constructor
  · simpa [hRad] using rad_dvd_self (A * B * C)
  · intro q hqCore hqABC
    have hqPrime : Nat.Prime q := prime14Core_to_natPrime hqCore
    have hqMem : q ∈ (A * B * C).primeFactors :=
      Nat.mem_primeFactors.mpr ⟨hqPrime, hqABC, hABC0⟩
    have hqRad : q ∣ Rad (A * B * C) := by
      simpa [Rad] using (Finset.dvd_prod_of_mem (fun r : Nat => r) hqMem)
    simpa [hRad] using hqRad

def FreyConductorReal (A B C _ _ _ : Nat) : Nat :=
  2 * Rad (A * B * C)

/-!
The concrete semistable conductor output has the shape `2 * p`. Since the
concrete conductor is `2 * Rad (A * B * C)`, cancellation exposes the prime
radical and lets the approved `primeFactors` bridge above produce the Core
prime-power certificate.
-/
theorem frey_conductor_to_rad_prime_case
    {A B C x y z : Nat}
    (hA : 0 < A) (hB : 0 < B) (hC : 0 < C)
    (hSemistable :
      ∃ p, 5 ≤ p ∧ IsPrime10Core p ∧
        FreyConductorReal A B C x y z = 2 * p) :
    ∃ p, 5 ≤ p ∧ IsPrime10Core p ∧
      RadPrimeCase14Core A B C p := by
  rcases hSemistable with ⟨p, hpFive, hpCore, hConductor⟩
  have hp : Nat.Prime p := by
    apply Nat.prime_def_lt.mpr
    refine ⟨hpCore.1, ?_⟩
    intro m hm hDiv
    rcases hpCore.2 m hDiv with hOne | hSelf
    · exact hOne
    · exact (Nat.ne_of_lt hm hSelf).elim
  have hRad : Rad (A * B * C) = p := by
    unfold FreyConductorReal at hConductor
    apply Nat.mul_left_cancel (by decide : 0 < 2)
    exact hConductor
  refine ⟨p, hpFive, hpCore, ?_⟩
  exact radical_eq_prime_to_core_prime_case hp hA hB hC hRad

theorem frey_conductor_to_rad_prime_power
    {A B C x y z : Nat}
    (hA : 0 < A) (hB : 0 < B) (hC : 0 < C)
    (hSemistable :
      ∃ p, 5 ≤ p ∧ IsPrime10Core p ∧
        FreyConductorReal A B C x y z = 2 * p) :
    ∃ p, 5 ≤ p ∧ IsPrime10Core p ∧
      RadPrimePowerCertificate14Core A B C p := by
  rcases hSemistable with ⟨p, hpFive, hpCore, hConductor⟩
  have hp : Nat.Prime p := by
    apply Nat.prime_def_lt.mpr
    refine ⟨hpCore.1, ?_⟩
    intro m hm hDiv
    rcases hpCore.2 m hDiv with hOne | hSelf
    · exact hOne
    · exact (Nat.ne_of_lt hm hSelf).elim
  have hRad : Rad (A * B * C) = p := by
    unfold FreyConductorReal at hConductor
    apply Nat.mul_left_cancel (by decide : 0 < 2)
    exact hConductor
  refine ⟨p, hpFive, hpCore, ?_⟩
  exact radical_prime_imp_prime_power hp hA hB hC hRad

def FreyConductorComputation : Prop :=
  ∀ A B C x y z,
    IsBealSolution A B C x y z →
    ∃ p, 5 ≤ p ∧ IsPrime10Core p ∧
      FreyConductorReal A B C x y z = 2 * p

/--
This is the remaining deep arithmetic input at the Frey-conductor boundary.
Its statement is conditional on a Beal solution, and its wrapper uses
Mathlib's finite-factorization boundary (`propext`, `Classical.choice`, and
`Quot.sound`), documented and audited separately from the zero-axiom Core.
-/
axiom frey_conductor_computation : FreyConductorComputation

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
#print axioms Rad
#print axioms rad_dvd_self
#print axioms prime_factor_of_rad
#print axioms prime14Core_to_natPrime
#print axioms natPrime_to_prime14Core
#print axioms radical_prime_imp_prime_power
#print axioms radical_eq_prime_to_core_prime_case
#print axioms frey_conductor_to_rad_prime_case
#print axioms frey_conductor_to_rad_prime_power
#print axioms FreyConductorReal
#print axioms FreyConductorComputation

end BealFreyConductor
