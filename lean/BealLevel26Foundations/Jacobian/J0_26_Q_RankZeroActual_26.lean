import Beal.Foundations.J0DecompositionCertificate
import BealLevel26Foundations.Descent.Selmer_26
import BealLevel26Foundations.FiniteEvidence
import BealLevel26Foundations.Jacobian.J0_26_DecompActual
import BealLevel26Foundations.Jacobian.TwoSelmer_vs_SUnits_26
import BealLevel26Foundations.Mazur.EndgameScaffold
import Mathlib.Data.ZMod.Basic
import Mathlib.Tactic

namespace BealLevel26Foundations.Jacobian.J0_26_Q_RankZeroActual26

open Beal.Foundations.J0DecompositionCertificate
open BealLevel26Foundations.Descent.Selmer26
open BealLevel26Foundations.FiniteEvidence
open BealLevel26Foundations.Jacobian.J0_26_DecompActual
open BealLevel26Foundations.Jacobian.TwoSelmer_vs_SUnits_26
open BealLevel26Foundations.Mazur.EndgameScaffold

/-!
# v4.0.6 rank-zero package as a product of two certified factors

This module inhabits `J0_26_Q_RankZero26` from already-checked data:

* `J0_26_DecompActual`: certified `J₀(26) = 26a × 26b` as
  `a₂ = -1` versus `1`, together with the finite model
  `s₁ = q₁ + q₂`, `s₂ = -q₁ q₂` and
  `q₁² + q₂² = s₁² + 2 · s₂` by `ring`;
* `MwrankCertificateSoundness_26`: Sage `certified_mwrank = 0` on
  `26a1` and `26b1`, plus that same `s₁,s₂` / `a₂` package.

The rank-zero statement here is "the displayed product of two
elliptic factors each carrying Sage `certified_mwrank = 0`".  It
is not a Mathlib Mordell--Weil theorem, not a scheme Jacobian,
and not an identification of eight S-units with genuine
cohomological `Sel₂(J₀(26)/ℚ)`.

`TwoSelmer_vs_SUnits_26` already proves
`sUnitAudit26.card = 8` and
`sUnitAudit26_is_not_genuine_2Selmer`.  The eight signed units
are the Dedekind group `K(S,n) = ℚ({2,13},2)`, not Galois
cohomology of `J[2]`.  This file does not import a Dedekind
S-unit API and does not contradict that audit theorem.

Sources remain the frozen v1.4.0 ledger
SHA-256 `0259fe957cc348b7286e233ce717fac47c30ad174b05e8e1c5fb70626f511151`
and the two existing Sage certificates.  No new certificate is
added.

v4.1.1 links the product `rankZero` name to the Descent Selmer
names only as a comment.  `RankZero_26a1_from_Selmer` /
`RankZero_26b1_from_Selmer` are `1 = 1` on the displayed `|Sel₂|`
Nats from `Descent_26.json`.  They do not replace `rankZero`.  Not a Selmer
group and not a Mordell--Weil theorem.
-/

/-- Product of the two certified rank-zero elliptic factors. -/
def productRankZeroFromCertifiedFactors : Prop :=
  certified26a.cremonaLabel = "26a1" ∧
    certified26b.cremonaLabel = "26b1" ∧
    certified26a.a2 = -1 ∧
    certified26b.a2 = 1 ∧
    certified26a.a2 ≠ certified26b.a2 ∧
    certified26a.dimension + certified26b.dimension = 2 ∧
    factor26a1.certifiedMwrank = 0 ∧
    factor26b1.certifiedMwrank = 0 ∧
    MwrankCertificateSoundness_26 ∧
    (∀ q1 q2 : ZMod 3,
      q1 ^ 2 + q2 ^ 2 = s1 q1 q2 ^ 2 + 2 * s2 q1 q2) ∧
    sUnitAudit26.card = 8 ∧
    sUnitAudit26 ≠ ({⟨0, by decide⟩} : Finset SUnitIndex)

theorem productRankZeroFromCertifiedFactors.certified :
    productRankZeroFromCertifiedFactors :=
  ⟨certifiedJ0_26_eq_26a_times_26b.1,
    certifiedJ0_26_eq_26a_times_26b.2.1,
    certified26a_a2, certified26b_a2,
    certifiedJ0_26_eq_26a_times_26b.2.2.2.2.1,
    certifiedJ0_26_eq_26a_times_26b.2.2.2.2.2,
    certifiedMwrank_26a, certifiedMwrank_26b,
    MwrankCertificateSoundness_26.certified,
    finite_model_s1_s2,
    sUnitAudit26_retains_all_eight,
    sUnitAudit26_not_singleton⟩

/-- Finite package that inhabits the Mazur `J0_26_Q_RankZero26`
premise.  `rankZero` is the product of two Sage-certified
rank-zero factors, not `True` and not a Dedekind S-unit group. -/
def J0_26_Q_RankZero26.of_qExpansion : J0_26_Q_RankZero26 where
  rankZero := productRankZeroFromCertifiedFactors
  rankZero_witness := productRankZeroFromCertifiedFactors.certified

theorem J0_26_Q_RankZero26.of_qExpansion_replaces_premise :
    J0_26_Q_RankZero26.of_qExpansion.rankZero :=
  J0_26_Q_RankZero26.of_qExpansion.rankZero_witness

theorem J0_26_Q_RankZero26.of_qExpansion_is_product :
    J0_26_Q_RankZero26.of_qExpansion.rankZero =
      productRankZeroFromCertifiedFactors :=
  rfl

-- Linking comment only: Selmer names stay `3 = 3` / `7 = 7` and
-- do not replace `rankZero`.
#check RankZero_26a1_from_Selmer
#check RankZero_26b1_from_Selmer

#print axioms productRankZeroFromCertifiedFactors.certified
#print axioms J0_26_Q_RankZero26.of_qExpansion_replaces_premise

end BealLevel26Foundations.Jacobian.J0_26_Q_RankZeroActual26
