import Beal.Mazur.Gates.Descent_26_Bridge
import Mathlib.NumberTheory.Padics.PadicNumbers
import Mathlib.Tactic

namespace Beal17Mazur.Gates.Descent26PadicCertificates

open Beal17Mazur.Jacobian
open Beal17Mazur.Gates
open Beal17Mazur.Gates.Descent26Bridge

noncomputable section

/-!
# Genuine level-26 p-adic certificate interface

The old Phase A evaluator checks points over `ZMod 2` and `ZMod 13`.  This
module does not promote those finite-field points to p-adic points.  Instead it
defines the actual twisted homogeneous quartic predicates over `ℚ_[2]` and
`ℚ_[13]`, and gives a proof-relevant certificate shape containing:

* local points for the identity S-unit on every ledger row; and
* a genuine local obstruction for every nonidentity S-unit.

No certificate value is constructed here.  The external Sage/mwrank transcript
does not contain the witnesses required by this structure.
-/

def HasQpTwistedPoint
    (sUnit : Int) (q : BinaryQuartic) (p : Nat) (hp : Nat.Prime p) : Prop := by
  letI : Fact (Nat.Prime p) := ⟨hp⟩
  exact ∃ x z y : ℚ_[p], (x ≠ 0 ∨ z ≠ 0) ∧
    (sUnit : ℚ_[p]) * y ^ 2 =
      (q.a : ℚ_[p]) * x ^ 4 +
        (q.b : ℚ_[p]) * x ^ 3 * z +
        (q.c : ℚ_[p]) * x ^ 2 * z ^ 2 +
        (q.d : ℚ_[p]) * x * z ^ 3 +
        (q.e : ℚ_[p]) * z ^ 4

def HasRequiredBadPrimePoints
    (sUnit : Int) (q : BinaryQuartic) : Prop :=
  HasQpTwistedPoint sUnit q 2 (by norm_num) ∧
    HasQpTwistedPoint sUnit q 13 (by norm_num)

def IsPAdicallyAdmissible_26 (sUnit : SUnits_26) : Prop :=
  ∀ row : Fin ledger.length,
    HasRequiredBadPrimePoints (Q_S2_13.get sUnit) (ledger.get row)

def identitySUnitIndex_26 : SUnits_26 :=
  ⟨0, by decide⟩

structure GenuinePAdicCertificate_26 where
  identity_points :
    ∀ row : Fin ledger.length,
      HasRequiredBadPrimePoints
        (Q_S2_13.get identitySUnitIndex_26) (ledger.get row)
  nonidentity_obstructions :
    ∀ sUnit : SUnits_26, sUnit ≠ identitySUnitIndex_26 →
      ∃ row : Fin ledger.length,
        ¬ HasQpTwistedPoint (Q_S2_13.get sUnit) (ledger.get row) 2 (by norm_num) ∨
        ¬ HasQpTwistedPoint (Q_S2_13.get sUnit) (ledger.get row) 13 (by norm_num)

theorem pAdicSingleton_of_genuineCertificate
    (certificate : GenuinePAdicCertificate_26) :
    {sUnit : SUnits_26 | IsPAdicallyAdmissible_26 sUnit} =
      {identitySUnitIndex_26} := by
  ext sUnit
  constructor
  · intro hAdmissible
    have hSame : sUnit = identitySUnitIndex_26 := by
      by_contra hNonidentity
      obtain ⟨row, hAtTwo, hAtThirteen⟩ :=
        certificate.nonidentity_obstructions sUnit hNonidentity
      rcases hAtTwo with hAtTwo | hAtThirteen
      · exact hAtTwo (hAdmissible row).1
      · exact hAtThirteen (hAdmissible row).2
    simpa [hSame]
  · intro hIdentity
    have hSame : sUnit = identitySUnitIndex_26 := by
      simpa using hIdentity
    simpa [hSame] using certificate.identity_points

#print axioms pAdicSingleton_of_genuineCertificate

end

end Beal17Mazur.Gates.Descent26PadicCertificates