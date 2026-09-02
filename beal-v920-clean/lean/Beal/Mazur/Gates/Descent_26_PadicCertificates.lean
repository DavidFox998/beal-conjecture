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

* local points for every S-unit/ledger pair at both bad primes.

The JSON producer supplies integer Hensel approximations, but JSON is not a
theorem.  Lean therefore accepts only the resulting proof-relevant p-adic
points; a checker or transcript cannot inhabit this structure by itself.  The
coefficient-covering enumeration is proved separately in
`Descent_26_Bridge`; this module supplies local points but does not identify
the resulting finite set with an abstract Selmer group.
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
  all_points :
    ∀ sUnit : SUnits_26, ∀ row : Fin ledger.length,
      HasRequiredBadPrimePoints
        (Q_S2_13.get sUnit) (ledger.get row)

theorem pAdicAdmissible_univ_of_genuineCertificate
    (certificate : GenuinePAdicCertificate_26) :
    {sUnit : SUnits_26 | IsPAdicallyAdmissible_26 sUnit} =
      Set.univ := by
  ext sUnit
  simp only [Set.mem_setOf_eq, Set.mem_univ, iff_true]
  exact certificate.all_points sUnit

#print axioms pAdicAdmissible_univ_of_genuineCertificate

end

end Beal17Mazur.Gates.Descent26PadicCertificates