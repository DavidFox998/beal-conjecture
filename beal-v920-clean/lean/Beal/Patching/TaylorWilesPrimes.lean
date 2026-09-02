/-
  Patching/TaylorWilesPrimes — explicit Taylor–Wiles prime data

  The Eutheos fixed-point inequality is arithmetic input.  It does not by
  itself prove the existence of Taylor–Wiles primes or a Frobenius separation
  theorem.  This module therefore records the finite prime sets and their
  congruence properties as inspectable data indexed by the jitter witness.
-/
import Beal.ArakelovRH.DesertBrothers.JitterInterface
import Mathlib.Data.Nat.Prime.Basic

namespace Beal.Patching

open Beal.ArakelovRH.DesertBrothers

/-- One finite Taylor–Wiles prime level.

    `Q` is explicit data.  The congruence and primality fields state the
    arithmetic obligations a genuine prime-selection theorem must establish;
    no existence claim is made here. -/
structure TaylorWilesPrimeLevel (ℓ n : ℕ) where
  Q : List ℕ
  nodup : Q.Nodup
  prime : ∀ q : ℕ, q ∈ Q → q.Prime
  away_from_ℓ : ∀ q : ℕ, q ∈ Q → q ≠ ℓ
  congruent_one : ∀ q : ℕ, q ∈ Q → q % (ℓ ^ n) = 1 % (ℓ ^ n)

/-- A compatible family of explicit Taylor–Wiles prime levels, indexed by the
    Eutheos jitter certificate used by the surrounding geometric scaffold.

    The family is a Type-valued supplier.  In particular, this declaration
    does not claim that `j.jitter_lt_reciprocal` constructs the levels. -/
structure TaylorWilesPrimeSystem
    (p ℓ : ℕ) (j : EutheosJitter p) where
  level : ∀ n : ℕ, TaylorWilesPrimeLevel ℓ n

/-- The only conclusion extracted directly from the jitter certificate is its
    denominator-cleared separation inequality. -/
theorem jitter_separation
    {p ℓ : ℕ} {j : EutheosJitter p}
    (_Q : TaylorWilesPrimeSystem p ℓ j) :
    p * scaledNearestIntegerDistance p < alpha0Denominator :=
  j.jitter_lt_reciprocal

#print axioms TaylorWilesPrimeLevel
#print axioms TaylorWilesPrimeSystem
#print axioms jitter_separation
-- Expected foundational dependencies: none beyond the imported certificate.

end Beal.Patching