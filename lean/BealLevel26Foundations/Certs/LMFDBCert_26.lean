import Beal.Foundations.J0DecompositionCertificate
import BealLevel26Foundations.Jacobian.J0_26_DecompActual
import Mathlib.Tactic

namespace BealLevel26Foundations.Certs.LMFDBCert26

open Beal.Foundations.J0DecompositionCertificate
open BealLevel26Foundations.Jacobian.J0_26_DecompActual

/-!
# v4.0.15 LMFDB *display* data (not unconditional rank zero)

`lean/BealLevel26Foundations/Certs/LMFDB_26.json` stores the finite
table written by `scripts/fetch_LMFDB.py`: LMFDB labels `26.a1` /
`26.b1`, conductor `26`, displayed rank `0`, torsion strings, and
`a₂ = -1` versus `1`.  The script does not contact LMFDB.org.
This file does not parse JSON.

`LMFDB_26a1_rankZero` and `LMFDB_26b1_rankZero` are those displayed
fields.  They are not `True`, not `trivial`, and not a Mathlib
Mordell--Weil theorem.  Extra computational evidence does not make
`J0_26_Q_RankZero26.rankZero` unconditional.

`J0_26_rankZero_from_LMFDB` is the conjunction of the two displayed
packages together with the already-certified Sage `certified_mwrank`
fields and the q-expansion `a₂` distinction.  It does not inhabit
`J0_26_Q_RankZero26` as `True` and does not add `theorem BealTheorem`.

The frozen v1.4.0 ledger SHA-256
`0259fe957cc348b7286e233ce717fac47c30ad174b05e8e1c5fb70626f511151`
is unchanged.
-/

/-- One displayed LMFDB row.  Not a Mordell--Weil group. -/
structure LMFDBEllipticCurveDisplay26 where
  label : String
  conductor : Nat
  displayedRank : Nat
  torsion : String
  ap2 : Int

def lmfdb26a1 : LMFDBEllipticCurveDisplay26 where
  label := "26.a1"
  conductor := 26
  displayedRank := 0
  torsion := "Z/3Z"
  ap2 := -1

def lmfdb26b1 : LMFDBEllipticCurveDisplay26 where
  label := "26.b1"
  conductor := 26
  displayedRank := 0
  torsion := "Z/7Z"
  ap2 := 1

/-- Displayed `26.a1` row: rank field `0`, conductor `26`, `a₂ = -1`.
Not a Mordell--Weil theorem. -/
def LMFDB_26a1_rankZero : Prop :=
  lmfdb26a1.label = "26.a1" ∧
    lmfdb26a1.conductor = 26 ∧
    lmfdb26a1.displayedRank = 0 ∧
    lmfdb26a1.torsion = "Z/3Z" ∧
    lmfdb26a1.ap2 = -1

theorem LMFDB_26a1_rankZero.certified : LMFDB_26a1_rankZero :=
  ⟨rfl, rfl, rfl, rfl, rfl⟩

/-- Displayed `26.b1` row: rank field `0`, conductor `26`, `a₂ = 1`.
Not a Mordell--Weil theorem. -/
def LMFDB_26b1_rankZero : Prop :=
  lmfdb26b1.label = "26.b1" ∧
    lmfdb26b1.conductor = 26 ∧
    lmfdb26b1.displayedRank = 0 ∧
    lmfdb26b1.torsion = "Z/7Z" ∧
    lmfdb26b1.ap2 = 1

theorem LMFDB_26b1_rankZero.certified : LMFDB_26b1_rankZero :=
  ⟨rfl, rfl, rfl, rfl, rfl⟩

/-- Displayed LMFDB ranks match Sage `certified_mwrank` and the
q-expansion `a₂` distinction.  Two `Nat`/`Int` equalities.  Not
unconditional Mordell--Weil rank zero. -/
def J0_26_rankZero_from_LMFDB : Prop :=
  LMFDB_26a1_rankZero ∧
    LMFDB_26b1_rankZero ∧
    lmfdb26a1.displayedRank = factor26a1.certifiedMwrank ∧
    lmfdb26b1.displayedRank = factor26b1.certifiedMwrank ∧
    lmfdb26a1.ap2 = certified26a.a2 ∧
    lmfdb26b1.ap2 = certified26b.a2

theorem J0_26_rankZero_from_LMFDB.certified :
    J0_26_rankZero_from_LMFDB :=
  ⟨LMFDB_26a1_rankZero.certified, LMFDB_26b1_rankZero.certified,
    rfl, rfl, certified26a_a2.symm, certified26b_a2.symm⟩

#print axioms LMFDB_26a1_rankZero.certified
#print axioms LMFDB_26b1_rankZero.certified
#print axioms J0_26_rankZero_from_LMFDB.certified

end BealLevel26Foundations.Certs.LMFDBCert26
