import Mathlib.Data.ZMod.Basic
import Mathlib.LinearAlgebra.Matrix.Determinant.Basic
import Mathlib.Tactic

namespace BealLevel26Foundations.FiniteEvidence

/-!
# Kernel-checked level-26 finite evidence

This module independently records the finite data used by the conditional
level-26 development. It proves only arithmetic facts about the displayed
eigenform coefficients, basis change, matrix, S-unit list, quartic rows, and
finite-field searches. It does not identify the ledger with a cohomological
2-Selmer group, infer a Mordell--Weil rank, or identify the resulting matrix
with the actual Abel--Jacobi differential.
-/

/-- The first two normalized coefficients of the LMFDB `26a1` eigenline. -/
def coefficients26a1 : Fin 2 → Int
  | 0 => 1
  | 1 => -1

/-- The first two normalized coefficients of the LMFDB `26b1` eigenline. -/
def coefficients26b1 : Fin 2 → Int
  | 0 => 1
  | 1 => 1

/-- The first-two-coefficient matrix of the two normalized eigenlines mod 3. -/
def coefficientMatrix : Matrix (Fin 2) (Fin 2) (ZMod 3) :=
  !![coefficients26a1 0, coefficients26b1 0;
     coefficients26a1 1, coefficients26b1 1]

/-- The explicit cotangent-coordinate basis change used by the finite
certificate. Its geometric interpretation remains a separate theorem. -/
def basisChange : Matrix (Fin 2) (Fin 2) (ZMod 3) :=
  !![1, 0; 1, 1]

/-- The displayed mod-3 matrix is derived from the coefficient matrix and
basis change, rather than entered as an Abel--Jacobi differential table. -/
def M3 : Matrix (Fin 2) (Fin 2) (ZMod 3) :=
  basisChange * coefficientMatrix

theorem coefficientMatrix_eq :
    coefficientMatrix = !![1, 1; 2, 1] := by decide

theorem M3_eq :
    M3 = !![1, 1; 0, 2] := by decide

theorem M3_det : Matrix.det M3 = 2 := by
  rw [M3_eq]
  norm_num [Matrix.det_fin_two]

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

theorem sUnits_length : sUnits.length = 8 := by decide
theorem sUnits_nodup : sUnits.Nodup := by decide

abbrev SUnitIndex := Fin sUnits.length

theorem sUnitIndex_card : Fintype.card SUnitIndex = 8 := by decide

/-- The four coefficient rows attached to the `26a1` factor. -/
def quartics26a1 : List BinaryQuartic :=
  [⟨1, 2, -15, 16, 0⟩, ⟨1, 2, -3, 4, 12⟩,
    ⟨1, 2, 9, 24, 16⟩, ⟨3, 2, -3, 4, 4⟩]

/-- The six coefficient rows attached to the `26b1` factor. -/
def quartics26b1 : List BinaryQuartic :=
  [⟨1, 2, -23, 28, -12⟩, ⟨-1, 0, -5, 26, -16⟩,
    ⟨-1, 2, -11, 36, -26⟩, ⟨-1, 2, 13, 12, -10⟩,
    ⟨-3, -2, 1, 12, -4⟩, ⟨-4, -3, 10, 13, 0⟩]

theorem quartics26a1_length : quartics26a1.length = 4 := by decide
theorem quartics26b1_length : quartics26b1.length = 6 := by decide

def ledger : List BinaryQuartic :=
  quartics26a1 ++ quartics26b1

theorem ledger_length : ledger.length = 10 := by decide

/-- Homogeneous evaluation of one row over `ZMod p`. -/
def BinaryQuartic.evalMod
    (q : BinaryQuartic) {p : Nat} [NeZero p]
    (x z : ZMod p) : ZMod p :=
  (q.a : ZMod p) * x ^ 4 +
    (q.b : ZMod p) * x ^ 3 * z +
    (q.c : ZMod p) * x ^ 2 * z ^ 2 +
    (q.d : ZMod p) * x * z ^ 3 +
    (q.e : ZMod p) * z ^ 4

/-- Exhaustive finite-field point search for the signed twist
`d * y² = q(x,z)` on the displayed homogeneous row. -/
def BinaryQuartic.hasFpPointForTwist
    (q : BinaryQuartic) (d : Int) (p : Nat) [NeZero p] : Bool :=
  (List.range p).any fun x =>
    (List.range p).any fun z =>
      (decide (x ≠ 0 ∨ z ≠ 0)) &&
        (List.range p).any fun y =>
          decide ((d : ZMod p) * (y : ZMod p) ^ 2 =
            q.evalMod (x : ZMod p) (z : ZMod p))

/-- The exact `8 × 10` finite search grid. -/
abbrev LedgerEntry := SUnitIndex × Fin ledger.length

theorem ledgerEntry_card : Fintype.card LedgerEntry = 80 := by decide

def passesBadPrimeChecks (entry : LedgerEntry) : Bool :=
  let d := sUnits[entry.1]
  let q := ledger[entry.2]
  q.hasFpPointForTwist d 2 &&
    q.hasFpPointForTwist d 13

theorem all_80_bad_prime_checks_pass :
    ∀ entry : LedgerEntry, passesBadPrimeChecks entry = true := by decide

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

#print axioms coefficientMatrix_eq
#print axioms M3_eq
#print axioms M3_det_nonzero
#print axioms ledger_length
#print axioms ledgerEntry_card
#print axioms all_80_bad_prime_checks_pass
#print axioms finiteCandidateAudit_not_singleton

end BealLevel26Foundations.FiniteEvidence