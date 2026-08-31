import Beal.Mazur.X0_26_RationalPoints

namespace Beal17Mazur

open Beal.FreyTate

/-!
# Complete prime coverage for the B17 Mazur boundary

`FreyMazurContext` records the numerical range used by this branch: the
residual prime is at least `11` and at most `37`.  The theorem below checks,
inside Lean, that a prime in this interval is exactly one of `11`, `13`, `17`,
`19`, `23`, `29`, `31`, or `37`.

The seven non-13 cases remain explicit theorem-valued semistable/Kenku--Mazur
inputs.  In particular, `23`, `29`, and `31` are not silently discarded by
merely quoting the shorter classical exceptional list.  The
`13` case is intentionally absent from that record: it is supplied only by the
genuine level-26 global rational-point certificate and its Frey realization.
Thus the final constructor has no unrestricted fallback branch.
-/

/-- The exact local hypotheses consumed by each non-13 Kenku--Mazur case. -/
def SemistableExceptionalPrimeExclusion (q : Nat) : Prop :=
  ∀ context : FreyMazurContext,
    context.p = q →
    HasFullRationalTwoTorsion context →
    HasGoodReductionAt context.model context.p →
    IsSemistableAt context.model context.p →
    RationalPIsogenyKernel context →
    False

/-- The seven prime exclusions not handled by `X₀(26)`.

There is deliberately no catch-all field and no `p = 13` field.  A caller must
provide exactly the remaining prime-degree results, specialized to the
canonical Frey model and its proved full rational `E[2]`, good-reduction, and
semistability certificates.
-/
structure KenkuMazurExceptionalPrimeInputs where
  prime11 : SemistableExceptionalPrimeExclusion 11
  prime17 : SemistableExceptionalPrimeExclusion 17
  prime19 : SemistableExceptionalPrimeExclusion 19
  prime23 : SemistableExceptionalPrimeExclusion 23
  prime29 : SemistableExceptionalPrimeExclusion 29
  prime31 : SemistableExceptionalPrimeExclusion 31
  prime37 : SemistableExceptionalPrimeExclusion 37

/-- Every prime admitted by the B17 numerical context is one of the eight
prime degrees in its closed numerical range.

This is the complete finite case split.  Primality eliminates every composite
integer in the closed interval `[11, 37]`; no list of selected examples is
used.
-/
theorem b17_residual_prime_cases (context : FreyMazurContext) :
    context.p = 11 ∨ context.p = 13 ∨ context.p = 17 ∨
      context.p = 19 ∨ context.p = 23 ∨ context.p = 29 ∨
      context.p = 31 ∨ context.p = 37 := by
  have hlo : 11 ≤ context.p := context.eleven_le
  have hhi : context.p ≤ 37 := context.kenku_mazur_bound
  have hp : Nat.Prime context.p := context.prime
  interval_cases context.p <;> norm_num at hp ⊢

/-- Assemble the complete Mazur supplier from the genuine level-26 theorem at
`p = 13` and the seven precisely named remaining prime inputs. -/
theorem mazur_classification_of_complete_prime_inputs
    (level26 : FreyPIsogenyExclusion 13)
    (remaining : KenkuMazurExceptionalPrimeInputs) :
    MazurRationalIsogenyClassification := by
  intro context hFull hGood hSemistable kernel
  rcases b17_residual_prime_cases context with
      h11 | h13 | h17 | h19 | h23 | h29 | h31 | h37
  · exact remaining.prime11 context h11 hFull hGood hSemistable kernel
  · exact level26 context h13 ⟨kernel⟩
  · exact remaining.prime17 context h17 hFull hGood hSemistable kernel
  · exact remaining.prime19 context h19 hFull hGood hSemistable kernel
  · exact remaining.prime23 context h23 hFull hGood hSemistable kernel
  · exact remaining.prime29 context h29 hFull hGood hSemistable kernel
  · exact remaining.prime31 context h31 hFull hGood hSemistable kernel
  · exact remaining.prime37 context h37 hFull hGood hSemistable kernel

/-- Construct the existing Mazur supplier from one complete proof-relevant
certificate.

The `p = 13` branch can only enter through
`Frey_13_exclusion_of_global_certificate`; the other seven branches can only
enter through their named Kenku--Mazur fields.
-/
theorem mazur_classification_of_global_certificate
    (level26 : X0_26GlobalClassificationCertificate)
    (remaining : KenkuMazurExceptionalPrimeInputs) :
    MazurRationalIsogenyClassification :=
  mazur_classification_of_complete_prime_inputs
    (Frey_13_exclusion_of_global_certificate level26) remaining

/-- B17 residual irreducibility with complete prime coverage and no local
classification parameter hidden at the use site. -/
theorem frey_irreducible_of_complete_prime_coverage
    (level26 : X0_26GlobalClassificationCertificate)
    (remaining : KenkuMazurExceptionalPrimeInputs)
    (context : FreyMazurContext) :
    ¬ FreyResidualRepresentationReducible context :=
  frey_irreducible_of_mazur
    (mazur_classification_of_global_certificate level26 remaining)
    context context.hasFullRationalTwoTorsion

#print axioms SemistableExceptionalPrimeExclusion
#print axioms KenkuMazurExceptionalPrimeInputs
#print axioms b17_residual_prime_cases
#print axioms mazur_classification_of_complete_prime_inputs
#print axioms mazur_classification_of_global_certificate
#print axioms frey_irreducible_of_complete_prime_coverage

end Beal17Mazur