import Beal.Mazur.Gates.Descent_26_Bridge
import Beal.Mazur.Jacobian.E26

namespace Beal17Mazur.Gates.SecondDescentReal26

open Beal17Mazur.Jacobian
open Beal17Mazur.Gates
open Beal17Mazur.Gates.Descent26Bridge

/-!
# Executable level-26 bad-prime audit

This module performs the complete finite computation currently justified
inside Lean: every pair in the eight-element S-unit index set and the ten-row
quartic ledger is checked at `p = 2` and `p = 13`.

The quartic evaluator does not depend on the S-unit index, and every ledger row
has a finite-field point at both primes.  Consequently all eighty pairs pass.
This is an honest replay of the available finite data, not a proof that the
abstract 2-Selmer group is `{1}`.  The genuine
The independently checked JSON certificate now records strong Hensel
approximations at `2^6` and `13^2`.  Lean does not parse JSON as a theorem:
their p-adic conclusions enter through the proof-relevant
`GenuinePAdicCertificate_26` interface, while covering completeness and
Selmer-to-rank soundness remain explicit in `Descent_26_RankProof`.
-/

/-- One entry in the complete finite Phase A search grid. -/
abbrev SecondDescentCheckEntry_26 :=
  SUnits_26 × Fin ledger.length

/-- The quartic selected by an entry in the finite search grid. -/
def quarticOfEntry (entry : SecondDescentCheckEntry_26) : BinaryQuartic :=
  ledger.get entry.2

/-- The complete search grid contains `8 × 10 = 80` entries. -/
theorem secondDescentCheckEntry_card_80 :
    Fintype.card SecondDescentCheckEntry_26 = 80 := by
  decide

/-- The ten `p = 2` outcomes, in combined-ledger order. -/
def ledgerFp2Results : List Bool :=
  E26a1Fp2Results ++ E26b1Fp2Results

/-- The ten `p = 13` outcomes, in combined-ledger order. -/
def ledgerFp13Results : List Bool :=
  E26a1Fp13Results ++ E26b1Fp13Results

theorem ledgerFp2Results_checked :
    ledgerFp2Results = List.replicate 10 true := by
  unfold ledgerFp2Results
  rw [E26a1Fp2Results_checked, E26b1Fp2Results_checked]
  decide

theorem ledgerFp13Results_checked :
    ledgerFp13Results = List.replicate 10 true := by
  unfold ledgerFp13Results
  rw [E26a1Fp13Results_checked, E26b1Fp13Results_checked]
  decide

/-- Executable bad-prime check for one S-unit/ledger pair.

The two lists are the actual `BinaryQuartic.hasFpPoint` results from Phase A,
concatenated in the same four-plus-six order as `ledger`. -/
def passesBadPrimeChecks (entry : SecondDescentCheckEntry_26) : Bool :=
  (ledgerFp2Results.getD entry.2.val false) &&
    ledgerFp13Results.getD entry.2.val false

/-- Every one of the eighty finite entries passes both bad-prime checks.

The proof reduces the full finite function to the existing `Finset.range`
searches in `BinaryQuartic.hasFpPoint` and closes by kernel computation. -/
theorem all_80_bad_prime_checks_pass :
    ∀ entry : SecondDescentCheckEntry_26,
      passesBadPrimeChecks entry = true := by
  rintro ⟨_sUnit, row⟩
  have hRowLtTen : row.val < 10 := by
    simpa [ledger_length] using row.isLt
  rw [passesBadPrimeChecks, ledgerFp2Results_checked,
    ledgerFp13Results_checked]
  simp [List.getD, hRowLtTen]
  change (List.replicate 10 true)[row.val] = true
  exact List.getElem_replicate true (by simpa using hRowLtTen)

/-- S-unit indices surviving the available bad-prime computation.

This is deliberately named a *finite candidate audit*, not a Selmer group:
the current data has no S-unit-dependent covering map or local-obstruction
table. -/
def finiteCandidateAudit_26 : Finset SUnits_26 :=
  Finset.univ.filter fun sUnit =>
    ∀ row : Fin ledger.length,
      passesBadPrimeChecks (sUnit, row)

/-- The available local checks retain all eight S-unit representatives. -/
theorem finiteCandidateAudit_eq_univ :
    finiteCandidateAudit_26 = Finset.univ := by
  ext sUnit
  simp [finiteCandidateAudit_26, all_80_bad_prime_checks_pass]

theorem finiteCandidateAudit_card_8 :
    finiteCandidateAudit_26.card = 8 := by
  rw [finiteCandidateAudit_eq_univ, Finset.card_univ,
    sUnits_26_card_8_decide]

/-- In particular, the current finite audit is not the singleton containing
the representative at index zero. -/
theorem finiteCandidateAudit_not_singleton :
    finiteCandidateAudit_26 ≠ ({⟨0, by decide⟩} : Finset SUnits_26) := by
  intro hSingleton
  have hCard := congrArg Finset.card hSingleton
  rw [finiteCandidateAudit_card_8, Finset.card_singleton] at hCard
  omega

/-! ## S-unit-dependent reproducible congruence certificate -/

/-- The actual twisted covering congruence used by the reproducible producer:
`twist * y² = q(x,z) (mod p^k)`.  Unlike the old evaluator, this depends on
the S-unit representative. -/
def twistedCongruenceHasPoint (twist : Int) (q : BinaryQuartic)
    (p exponent : Nat) : Bool :=
  let modulus := p ^ exponent
  (List.range modulus).any fun x =>
    (List.range modulus).any fun z =>
      (decide (x % p ≠ 0 ∨ z % p ≠ 0)) &&
        (List.range modulus).any fun y =>
          decide (
            (twist * (y : Int) ^ 2 - HomogQuartic q (x : Int) (z : Int)) %
                (modulus : Int) = 0)

def sUnitValue (d : SUnits_26) : Int :=
  Q_S2_13.get d

/-- Every listed S-unit/covering pair has a primitive congruence witness after
reduction modulo `2` and `13`.  The JSON certificate independently checks the
strong Hensel inequality for integer approximations found modulo `2^6` and
`13^2`; this theorem deliberately proves only the reductions visible here. -/
theorem all_twisted_congruence_witnesses_checked :
    ∀ entry : SecondDescentCheckEntry_26,
      twistedCongruenceHasPoint (sUnitValue entry.1) (quarticOfEntry entry) 2 1 = true ∧
      twistedCongruenceHasPoint (sUnitValue entry.1) (quarticOfEntry entry) 13 1 = true := by
  decide

/-! ## Historical external mwrank report fields -/

/-- The normalized finite fields copied from the historical external report.

This structure records only data that Lean can compare by computation.  In
particular, the two zero Selmer ranks are transcript fields, not internally
verified statements about a formal Lean Selmer group or outputs of the
dependency-free congruence producer. -/
structure MwrankTranscript_26 where
  curve26a1Model : List Int
  curve26b1Model : List Int
  curve26a1Quartics : List BinaryQuartic
  curve26b1Quartics : List BinaryQuartic
  curve26a1ReportedRank : Nat
  curve26b1ReportedRank : Nat
  curve26a1ReportedSelmerRank : Nat
  curve26b1ReportedSelmerRank : Nat
  deriving DecidableEq, Repr

/-- Normalized transcript data in the same factor-label ordering as `E26.lean`.

The source text contains inconsistent prose labels inherited from the earlier
log.  The models are therefore paired here by their coefficients and
discriminants, not by those prose labels. -/
def genuineMwrankTranscript_26 : MwrankTranscript_26 where
  curve26a1Model := [1, -1, 1, -3, 3]
  curve26b1Model := [1, 0, 1, -5, -8]
  curve26a1Quartics := E26a1MwrankQuartics
  curve26b1Quartics := E26b1MwrankQuartics
  curve26a1ReportedRank := 0
  curve26b1ReportedRank := 0
  curve26a1ReportedSelmerRank := 0
  curve26b1ReportedSelmerRank := 0

theorem genuineMwrankTranscript_models_checked :
    genuineMwrankTranscript_26.curve26a1Model = [1, -1, 1, -3, 3] ∧
      genuineMwrankTranscript_26.curve26b1Model = [1, 0, 1, -5, -8] := by
  decide

theorem genuineMwrankTranscript_quartics_checked :
    genuineMwrankTranscript_26.curve26a1Quartics =
        E26a1MwrankQuartics ∧
      genuineMwrankTranscript_26.curve26b1Quartics =
        E26b1MwrankQuartics := by
  decide

theorem genuineMwrankTranscript_zero_reports_checked :
    genuineMwrankTranscript_26.curve26a1ReportedRank = 0 ∧
      genuineMwrankTranscript_26.curve26b1ReportedRank = 0 ∧
      genuineMwrankTranscript_26.curve26a1ReportedSelmerRank = 0 ∧
      genuineMwrankTranscript_26.curve26b1ReportedSelmerRank = 0 := by
  decide

#print axioms secondDescentCheckEntry_card_80
#print axioms ledgerFp2Results_checked
#print axioms ledgerFp13Results_checked
#print axioms all_80_bad_prime_checks_pass
#print axioms finiteCandidateAudit_eq_univ
#print axioms finiteCandidateAudit_card_8
#print axioms finiteCandidateAudit_not_singleton
#print axioms all_twisted_congruence_witnesses_checked
#print axioms genuineMwrankTranscript_models_checked
#print axioms genuineMwrankTranscript_quartics_checked
#print axioms genuineMwrankTranscript_zero_reports_checked

end Beal17Mazur.Gates.SecondDescentReal26
