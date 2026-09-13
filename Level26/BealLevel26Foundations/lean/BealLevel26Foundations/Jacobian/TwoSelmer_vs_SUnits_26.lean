import Beal.Foundations.J0DecompositionCertificate
import BealLevel26Foundations.FiniteEvidence
import BealLevel26Foundations.FiniteChecks_26
import BealLevel26Foundations.Jacobian.J0_26_DecompActual
import Mathlib.Data.ZMod.Basic
import Mathlib.Tactic

namespace BealLevel26Foundations.Jacobian.TwoSelmer_vs_SUnits_26

open Beal.Foundations.J0DecompositionCertificate
open BealLevel26Foundations.FiniteEvidence
open BealLevel26Foundations.FiniteChecks26
open BealLevel26Foundations.Jacobian.J0_26_DecompActual

/-!
# v4.0.2 S-unit audit versus genuine cohomological 2-Selmer

This module audits the eight signed S-unit indices that accompany the
v1.4.0 sources

* `sagemath/level_26_ledger.json`
  (SHA-256 `0259fe957cc348b7286e233ce717fac47c30ad174b05e8e1c5fb70626f511151`);
* `sagemath/certs/j0_26_decomposition.json`
  (`certified_mwrank = 0` on both `26a1` and `26b1`);
* `sagemath/certs/formal_immersion_M3.json`

against genuine cohomological 2-Selmer.  The eight indices are the
signed squarefree units supported at the bad primes `{2, 13}` of
conductor `26`, namely `[1, -1, 2, -2, 13, -13, 26, -26]`.  They are
the S-unit list used by the finite `8 × 10` descent audit that
accompanies the Sage `E.rank()` values stored in
`j0_26_decomposition.json`.  This file does not parse JSON and does
not add a certificate.

The finite audit retains every index and is proved not to be a
singleton.  Per the v1.0 README boundary, that is why the audit is not
a genuine 2-Selmer calculation: comparison with the genuine
cohomological 2-Selmer group remains future mathematics.

`MwrankCertificateSoundness_26` packages those Sage
`certified_mwrank = 0` values for `26a` and `26b` together with the
already-decided finite model `s₁ = q₁ + q₂`, `s₂ = -q₁ q₂` and the
q-expansion distinction `a₂ = -1` versus `1` from
`J0_26_DecompActual`.  Mathlib 4.12 has no Jacobian, Galois
cohomology, or Mordell--Weil group.  This file does not identify the
audit with `Sel₂(J₀(26)/ℚ)` and does not prove a rank theorem.
-/

/-- Signed squarefree S-units at `{2, 13}` used by the finite audit. -/
def sUnitsFromDecomposition : List Int :=
  sUnits

theorem sUnitsFromDecomposition_eq :
    sUnitsFromDecomposition = [1, -1, 2, -2, 13, -13, 26, -26] :=
  rfl

theorem sUnitsFromDecomposition_length :
    sUnitsFromDecomposition.length = 8 :=
  sUnits_length

theorem sUnitsFromDecomposition_nodup :
    sUnitsFromDecomposition.Nodup :=
  sUnits_nodup

/-- Finite candidate audit of the eight S-unit indices. -/
def sUnitAudit26 : Finset SUnitIndex :=
  finiteCandidateAudit

theorem sUnitAudit26_eq_univ :
    sUnitAudit26 = (Finset.univ : Finset SUnitIndex) :=
  finiteCandidateAudit_eq_univ

/-- The audit retains all eight S-unit indices. -/
theorem sUnitAudit26_retains_all_eight :
    sUnitAudit26.card = 8 :=
  finiteCandidateAudit_card

/-- The audit is not a singleton, so it is not the mislabeled
"genuine 2-Selmer is `{1}`" calculation. -/
theorem sUnitAudit26_not_singleton :
    sUnitAudit26 ≠ ({⟨0, by decide⟩} : Finset SUnitIndex) :=
  finiteCandidateAudit_not_singleton

/-- v1.0 boundary, kernel-checked: eight surviving indices means this
is not genuine cohomological 2-Selmer. -/
theorem sUnitAudit26_is_not_genuine_2Selmer :
    sUnitAudit26.card = 8 ∧
      sUnitAudit26 ≠ ({⟨0, by decide⟩} : Finset SUnitIndex) :=
  ⟨sUnitAudit26_retains_all_eight, sUnitAudit26_not_singleton⟩

theorem sUnitAudit26_matches_finite_checks :
    sUnitAudit26 ≠ ({⟨0, by decide⟩} : Finset SUnitIndex) :=
  finite_checks_are_not_singleton

theorem certifiedMwrank_26a :
    factor26a1.certifiedMwrank = 0 :=
  factor26a1_certifiedMwrank

theorem certifiedMwrank_26b :
    factor26b1.certifiedMwrank = 0 :=
  factor26b1_certifiedMwrank

theorem finite_model_s1_s2 (q1 q2 : ZMod 3) :
    q1 ^ 2 + q2 ^ 2 = s1 q1 q2 ^ 2 + 2 * s2 q1 q2 :=
  s1_s2_sum_of_squares q1 q2

theorem certified_a2_26a : certified26a.a2 = -1 :=
  certified26a_a2

theorem certified_a2_26b : certified26b.a2 = 1 :=
  certified26b_a2

/-- Finite mwrank-certificate package for `26a` and `26b`.

This is Sage `E.rank()` output together with the eight-index S-unit
audit and the already-decided `s₁,s₂` model and q-expansion `a₂`
distinction.  It is not a cohomological 2-Selmer identification and
does not discharge the parent geometric `MwrankCertificateSoundness_26`
premise. -/
def MwrankCertificateSoundness_26 : Prop :=
  sUnitAudit26.card = 8 ∧
    sUnitAudit26 ≠ ({⟨0, by decide⟩} : Finset SUnitIndex) ∧
    factor26a1.certifiedMwrank = 0 ∧
    factor26b1.certifiedMwrank = 0 ∧
    certified26a.a2 = -1 ∧
    certified26b.a2 = 1 ∧
    certified26a.a2 ≠ certified26b.a2 ∧
    (∀ q1 q2 : ZMod 3,
      q1 ^ 2 + q2 ^ 2 = s1 q1 q2 ^ 2 + 2 * s2 q1 q2)

theorem MwrankCertificateSoundness_26.certified :
    MwrankCertificateSoundness_26 :=
  ⟨sUnitAudit26_retains_all_eight, sUnitAudit26_not_singleton,
    certifiedMwrank_26a, certifiedMwrank_26b,
    certified_a2_26a, certified_a2_26b, by decide,
    finite_model_s1_s2⟩

#print axioms sUnitsFromDecomposition_eq
#print axioms sUnitAudit26_retains_all_eight
#print axioms sUnitAudit26_not_singleton
#print axioms sUnitAudit26_is_not_genuine_2Selmer
#print axioms MwrankCertificateSoundness_26.certified

end BealLevel26Foundations.Jacobian.TwoSelmer_vs_SUnits_26
