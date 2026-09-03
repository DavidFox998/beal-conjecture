import Mathlib.Data.ZMod.Basic
import Mathlib.LinearAlgebra.Matrix.Determinant.Basic
import Mathlib.Tactic

namespace BealLevel26Foundations.FiniteEvidence

/-!
# Kernel-checked level-26 finite evidence

This module independently records the finite data used by the conditional
level-26 development.  It proves only arithmetic facts about the displayed
matrix, S-unit list, quartic rows, and finite-field searches.  It does not
identify the ledger with a 2-Selmer group or infer a Mordell--Weil rank.
-/

/-- The displayed mod-3 cotangent matrix.  Its interpretation as an actual
Abel--Jacobi differential is deliberately outside this finite module. -/
def M3 : Matrix (Fin 2) (Fin 2) (ZMod 3) :=
  !![1, 1; 0, 2]

theorem M3_det : Matrix.det M3 = 2 := by
  norm_num [M3, Matrix.det_fin_two]

theorem M3_det_nonzero : Matrix.det M3 ≠ 0 := by
  rw [M3_det]
  decide

/-- A binary quartic row `(a,b,c,d,e)` from the archived mwrank output. -/
structure BinaryQuartic where
  a : Int
  b : Int
  c : Int
  d : Int
  e : Int
  deriving DecidableEq, Repr

/-- Signed squarefree representatives supported at `{2,13}`. -/
def sUnits : List Int :=
  [1, -1, 2, -2, 13, -13, 26, -26]

theorem sUnits_length : sUnits.length = 8 := by
  decide

theorem sUnits_nodup : sUnits.Nodup := by
  decide

abbrev SUnitIndex := Fin sUnits.length

theorem sUnitIndex_card : Fintype.card SUnitIndex = 8 := by
  decide

/-- The four coefficient rows attached to the `26a1` factor. -/
def quartics26a1 : List BinaryQuartic :=
  [⟨1, 2, -15, 16, 0⟩, ⟨1, 2, -3, 4, 12⟩,
    ⟨1, 2, 9, 24, 16⟩, ⟨3, 2, -3, 4, 4⟩]

/-- The six coefficient rows attached to the `26b1` factor. -/
def quartics26b1 : List BinaryQuartic :=
  [⟨1, 2, -23, 28, -12⟩, ⟨-1, 0, -5, 26, -16⟩,
    ⟨-1, 2, -11, 36, -26⟩, ⟨-1, 2, 13, 12, -10⟩,
    ⟨-3, -2, 1, 12, -4⟩, ⟨-4, -3, 10, 13, 0⟩]

theorem quartics26a1_length : quartics26a1.length = 4 := by
  decide

theorem quartics26b1_length : quartics26b1.length = 6 := by
  decide

def ledger : List BinaryQuartic :=
  quartics26a1 ++ quartics26b1

theorem ledger_length : ledger.length = 10 := by
  decide

/-- Homogeneous evaluation of one row over `ZMod p`. -/
def BinaryQuartic.evalMod
    (q : BinaryQuartic) {p : Nat} [NeZero p]
    (x z : ZMod p) : ZMod p :=
  (q.a : ZMod p) * x ^ 4 +
    (q.b : ZMod p) * x ^ 3 * z +
    (q.c : ZMod p) * x ^ 2 * z ^ 2 +
    (q.d : ZMod p) * x * z ^ 3 +
    (q.e : ZMod p) * z ^ 4

/-- Exhaustive finite-field point search on the displayed homogeneous row. -/
def BinaryQuartic.hasFpPoint
    (q : BinaryQuartic) (p : Nat) [NeZero p] : Bool :=
  (List.range p).any fun x =>
    (List.range p).any fun z =>
      (decide (x ≠ 0 ∨ z ≠ 0)) &&
        (List.range p).any fun y =>
          decide ((y : ZMod p) ^ 2 =
            q.evalMod (x : ZMod p) (z : ZMod p))

def ledgerFp2Results : List Bool :=
  ledger.map fun q => q.hasFpPoint 2

def ledgerFp13Results : List Bool :=
  ledger.map fun q => q.hasFpPoint 13

theorem ledgerFp2Results_checked :
    ledgerFp2Results = List.replicate 10 true := by
  decide

theorem ledgerFp13Results_checked :
    ledgerFp13Results = List.replicate 10 true := by
  decide

/-- The exact `8 × 10` finite search grid. -/
abbrev LedgerEntry := SUnitIndex × Fin ledger.length

theorem ledgerEntry_card : Fintype.card LedgerEntry = 80 := by
  decide

def passesBadPrimeChecks (entry : LedgerEntry) : Bool :=
  (ledgerFp2Results.getD entry.2.val false) &&
    ledgerFp13Results.getD entry.2.val false

theorem all_80_bad_prime_checks_pass :
    ∀ entry : LedgerEntry, passesBadPrimeChecks entry = true := by
  rintro ⟨_sUnit, row⟩
  have hRowLtTen : row.val < 10 := by
    simpa [ledger_length] using row.isLt
  rw [passesBadPrimeChecks, ledgerFp2Results_checked,
    ledgerFp13Results_checked]
  simp [List.getD, hRowLtTen]
  change (List.replicate 10 true)[row.val] = true
  exact List.getElem_replicate true (by simpa using hRowLtTen)

/-- The available finite checks retain every S-unit index. -/
def finiteCandidateAudit : Finset SUnitIndex :=
  Finset.univ.filter fun sUnit =>
    ∀ row : Fin ledger.length, passesBadPrimeChecks (sUnit, row)

theorem finiteCandidateAudit_eq_univ :
    finiteCandidateAudit = Finset.univ := by
  ext sUnit
  simp [finiteCandidateAudit, all_80_bad_prime_checks_pass]

theorem finiteCandidateAudit_card :
    finiteCandidateAudit.card = 8 := by
  rw [finiteCandidateAudit_eq_univ, Finset.card_univ, sUnitIndex_card]

/-- The finite audit is explicitly not a singleton Selmer computation. -/
theorem finiteCandidateAudit_not_singleton :
    finiteCandidateAudit ≠ ({⟨0, by decide⟩} : Finset SUnitIndex) := by
  intro hSingleton
  have hCard := congrArg Finset.card hSingleton
  rw [finiteCandidateAudit_card, Finset.card_singleton] at hCard
  omega

#print axioms M3_det_nonzero
#print axioms ledger_length
#print axioms ledgerEntry_card
#print axioms all_80_bad_prime_checks_pass
#print axioms finiteCandidateAudit_not_singleton

end BealLevel26Foundations.FiniteEvidence