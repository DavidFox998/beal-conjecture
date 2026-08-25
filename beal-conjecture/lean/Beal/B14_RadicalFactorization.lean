-- B14_RadicalFactorization — finite-factorization bridge for the exact radical.

import Beal.B14_FreyConductor_Core
import Mathlib.Data.Nat.Factorization.Basic
import Mathlib.Data.Nat.Factorization.PrimePow
import Mathlib.Tactic

open scoped BigOperators

namespace BealRadicalFactorization

/-- The product of the distinct prime factors of a natural number. -/
def Rad (n : Nat) : Nat :=
  ∏ p in n.primeFactors, p

theorem radical_prime_imp_prime_power {A B C p : Nat}
    (hp : Nat.Prime p) (hA : 0 < A) (hB : 0 < B) (hC : 0 < C)
    (hRad : Rad (A * B * C) = p) :
    RadPrimePowerCertificate14Core A B C p := by
  have hABC0 : A * B * C ≠ 0 :=
    Nat.ne_of_gt (Nat.mul_pos (Nat.mul_pos hA hB) hC)
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

#print axioms Rad
#print axioms radical_prime_imp_prime_power

end BealRadicalFactorization