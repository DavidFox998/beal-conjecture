import Mathlib.RingTheory.Noetherian
import Mathlib.RingTheory.Nilpotent.Lemmas
import Mathlib.RingTheory.LocalRing.MaximalIdeal.Basic
import Mathlib.RingTheory.Ideal.MinimalPrime

/-!
Elementary Noetherian local dimension prerequisites. These lemmas do not
assert the principal ideal theorem or a bound on the height of a prime.
-/

namespace Beal.General

/-- If a commutative ring has exactly one prime ideal, its nilradical is
that prime ideal. -/
theorem nilradical_eq_unique_prime {R : Type*} [CommRing R]
    (P : Ideal R) (hP : P.IsPrime)
    (hunique : ∀ Q : Ideal R, Q.IsPrime → Q = P) :
    nilradical R = P := by
  ext x
  rw [mem_nilradical, nilpotent_iff_mem_prime]
  constructor
  · intro hx
    exact hx P hP
  · intro hx Q hQ
    rwa [hunique Q hQ]

/-- A Noetherian local ring with only its maximal prime has nilpotent
maximal ideal. A separate finite-length argument is needed to deduce
that the ring is Artinian. -/
theorem noetherian_local_unique_prime_maximal_nilpotent
    {R : Type*} [CommRing R] [LocalRing R] [IsNoetherianRing R]
    (hunique : ∀ P : Ideal R, P.IsPrime →
      P = LocalRing.maximalIdeal R) :
    IsNilpotent (LocalRing.maximalIdeal R) := by
  have hrad : nilradical R = LocalRing.maximalIdeal R :=
    nilradical_eq_unique_prime _ (LocalRing.maximalIdeal.isMaximal R).isPrime hunique
  rw [← hrad]
  exact IsNoetherianRing.isNilpotent_nilradical R

/-- If the maximal ideal is minimal over an ideal in a local ring, it is
the radical of that ideal. -/
theorem radical_eq_maximal_of_minimal_prime
    {R : Type*} [CommRing R] [LocalRing R]
    (I : Ideal R)
    (hmin : LocalRing.maximalIdeal R ∈ I.minimalPrimes) :
    I.radical = LocalRing.maximalIdeal R := by
  apply le_antisymm
  · exact hmin.1.1.radical_le_iff.mpr hmin.1.2
  · rw [Ideal.radical_eq_sInf]
    apply le_sInf
    intro J hJ
    exact hmin.2 ⟨hJ.2, hJ.1⟩ (LocalRing.le_maximalIdeal hJ.2.ne_top)

/-- In the Noetherian case, a power of the maximal ideal is contained
in every ideal over which it is a minimal prime. This is the
nilpotence statement for the corresponding local quotient. -/
theorem maximal_pow_le_of_minimal_prime
    {R : Type*} [CommRing R] [LocalRing R] [IsNoetherianRing R]
    (I : Ideal R)
    (hmin : LocalRing.maximalIdeal R ∈ I.minimalPrimes) :
    ∃ n : ℕ, (LocalRing.maximalIdeal R) ^ n ≤ I := by
  have hfg : I.radical.FG := IsNoetherian.noetherian _
  obtain ⟨n, hn⟩ := Ideal.exists_radical_pow_le_of_fg I hfg
  rw [radical_eq_maximal_of_minimal_prime I hmin] at hn
  exact ⟨n, hn⟩

#print axioms nilradical_eq_unique_prime
#print axioms noetherian_local_unique_prime_maximal_nilpotent
#print axioms radical_eq_maximal_of_minimal_prime
#print axioms maximal_pow_le_of_minimal_prime

end Beal.General