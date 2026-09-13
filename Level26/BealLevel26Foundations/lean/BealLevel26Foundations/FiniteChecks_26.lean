import BealLevel26Foundations.FiniteEvidence

namespace BealLevel26Foundations.FiniteChecks26

open BealLevel26Foundations.FiniteEvidence

/-!
# Finite checks at 2 and 13

This module gives a stable name to the exhaustive `8 × 10` finite-field audit.
It does not identify the surviving indices with a genuine cohomological
2-Selmer group; in fact, the checked finite candidate audit has cardinality
eight and is proved not to be a singleton.
-/

theorem finite_checks_at_2_and_13 :
    ∀ entry : LedgerEntry, passesBadPrimeChecks entry = true :=
  all_80_bad_prime_checks_pass

theorem finite_checks_are_not_singleton :
    finiteCandidateAudit ≠ ({⟨0, by decide⟩} : Finset SUnitIndex) :=
  finiteCandidateAudit_not_singleton

#print axioms finite_checks_at_2_and_13
#print axioms finite_checks_are_not_singleton

end BealLevel26Foundations.FiniteChecks26