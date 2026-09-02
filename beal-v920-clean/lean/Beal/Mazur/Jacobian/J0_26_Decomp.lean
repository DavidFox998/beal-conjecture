import Beal.Mazur.Gates.Descent_26_RankProof
import Beal.Mazur.Jacobian.E26
import Beal.Mazur.Gates.Descent_26_PhaseA
import Beal.Mazur.X0_26_Model
import Mathlib.LinearAlgebra.Matrix.Determinant.Basic

namespace Beal17Mazur.Jacobian.J0_26_Decomp

open Beal17Mazur.Gates
open Beal17Mazur.Gates.Descent26RankProof

noncomputable section

/-!
# The conditional level-26 Jacobian transport

The finite model of `X₀(26)` and the two elliptic factors are genuine objects
already checked elsewhere in this development.  Mathlib 4.12 does not provide
a genus-two Jacobian or an abelian-variety isogeny API.  This file therefore
separates three layers:

* the kernel-checked genus certificate and length-twenty coefficient tables;
* a typed rational-point-group shadow of the missing isogeny;
* an explicit rank-transport certificate used together with Phase A.

In particular, equality of a finite coefficient prefix is evidence for the
decomposition, not a proof of it.  No unconditional isogeny or rank statement
is introduced here.
-/

/-! ## The certified genus-two model -/

/-- The existing degree/discriminant certificate gives genus two.

This is deliberately not described as a scheme-level Riemann--Hurwitz theorem:
the pinned Mathlib version has no hyperelliptic-curve genus API. -/
theorem X0_26_certified_genus_two :
    X0_26_certifiedGenus = 2 :=
  X0_26_genus

/-! ## Finite q-expansion evidence -/

/-- The first twenty normalized coefficients attached to the displayed
`26a1` factor, beginning with the coefficient of `q`. -/
def E26a1_qExpansion_20 : List Int :=
  [1, 1, -3, 1, -1, -3, 1, 1, 6, -1,
    -2, -3, -1, 1, 3, 1, -3, 6, 6, -1]

/-- The first twenty normalized coefficients attached to the displayed
`26b1` factor, beginning with the coefficient of `q`. -/
def E26b1_qExpansion_20 : List Int :=
  [1, -1, 1, 1, -3, -1, -1, -1, -2, 3,
    6, 1, 1, 1, -3, 1, -3, 2, 2, -3]

/-- The two coefficient rows recorded for the level-26 cusp-form basis.

This is finite replay data.  It is not a formal modular form and carries no
claim that the first twenty coefficients determine a Jacobian isogeny. -/
def J0_26_newformBasis_qExpansion_20 : List (List Int) :=
  [[1, 1, -3, 1, -1, -3, 1, 1, 6, -1,
      -2, -3, -1, 1, 3, 1, -3, 6, 6, -1],
    [1, -1, 1, 1, -3, -1, -1, -1, -2, 3,
      6, 1, 1, 1, -3, 1, -3, 2, 2, -3]]

/-- Kernel-checked equality of the two finite coefficient rows. -/
theorem qExpansion_20_matches_E26_factors :
    J0_26_newformBasis_qExpansion_20 =
      [E26a1_qExpansion_20, E26b1_qExpansion_20] := by
  decide

theorem E26a1_qExpansion_20_length :
    E26a1_qExpansion_20.length = 20 := by
  decide

theorem E26b1_qExpansion_20_length :
    E26b1_qExpansion_20.length = 20 := by
  decide

/-! ## `S₂(26)` real finite decomposition evidence -/

/-- The LMFDB `26.a` newform coefficients `a₁, …, a₁₀₀`.

The coefficients are the nonconstant part of the explicit LMFDB download
`/EllipticCurve/Q/download_qexp/26.a1/100`.  The repository's older
`E26a1_qExpansion_20` name follows its displayed-factor ordering and is the
other LMFDB class row; the two naming conventions are compared explicitly
below rather than silently conflated. -/
def f_26a_qExpansion_100 : List Int :=
  [1, -1, 1, 1, -3, -1, -1, -1, -2, 3,
    6, 1, 1, 1, -3, 1, -3, 2, 2, -3,
    -1, -6, 0, -1, 4, -1, -5, -1, 6, 3,
    -4, -1, 6, 3, 3, -2, -7, -2, 1, 3,
    0, 1, -1, 6, 6, 0, 3, 1, -6, -4,
    -3, 1, 0, 5, -18, 1, 2, -6, -6, -3,
    8, 4, 2, 1, -3, -6, 14, -3, 0, -3,
    -3, 2, 2, 7, 4, 2, -6, -1, 8, -3,
    1, 0, 12, -1, 9, 1, 6, -6, -6, -6,
    -1, 0, -4, -3, -6, -1, -10, 6, -12, 4]

/-- The LMFDB `26.b` newform coefficients `a₁, …, a₁₀₀`, from the matching
explicit q-expansion download. -/
def f_26b_qExpansion_100 : List Int :=
  [1, 1, -3, 1, -1, -3, 1, 1, 6, -1,
    -2, -3, -1, 1, 3, 1, -3, 6, 6, -1,
    -3, -2, -4, -3, -4, -1, -9, 1, 2, 3,
    4, 1, 6, -3, -1, 6, 3, 6, 3, -1,
    0, -3, -5, -2, -6, -4, 13, -3, -6, -4,
    9, -1, 12, -9, 2, 1, -18, 2, -10, 3,
    -8, 4, 6, 1, 1, 6, -2, -3, 12, -1,
    -5, 6, -10, 3, 12, 6, -2, 3, -4, -1,
    9, 0, 0, -3, 3, -5, -6, -2, 6, -6,
    -1, -4, -12, 13, -6, -3, 14, -6, -12, -4]

theorem f_26a_qExpansion_100_length :
    f_26a_qExpansion_100.length = 100 := by
  decide

theorem f_26b_qExpansion_100_length :
    f_26b_qExpansion_100.length = 100 := by
  decide

/-- The old twenty-entry rows are retained verbatim and checked against the
first twenty coefficients of the two LMFDB class rows.  This theorem records
the historical factor-label swap openly. -/
theorem qExpansion_100_first_twenty_matches_legacy_rows :
    f_26a_qExpansion_100.take 20 = E26b1_qExpansion_20 ∧
      f_26b_qExpansion_100.take 20 = E26a1_qExpansion_20 := by
  decide

/-- The two LMFDB coefficient rows are distinct already at `a₂`. -/
theorem newforms_distinct_decided :
    f_26a_qExpansion_100 ≠ f_26b_qExpansion_100 := by
  decide

/-- All bad-prime multiplication indices visible in a coefficient table
through `a₁₀₀`: `(2,n)` for `n ≤ 50` and `(13,n)` for `n ≤ 7`. -/
def heckeMultiplicationIndices_2_13_100 : List (Nat × Nat) :=
  [(2, 1), (2, 2), (2, 3), (2, 4), (2, 5), (2, 6), (2, 7), (2, 8),
    (2, 9), (2, 10), (2, 11), (2, 12), (2, 13), (2, 14), (2, 15), (2, 16),
    (2, 17), (2, 18), (2, 19), (2, 20), (2, 21), (2, 22), (2, 23), (2, 24),
    (2, 25), (2, 26), (2, 27), (2, 28), (2, 29), (2, 30), (2, 31), (2, 32),
    (2, 33), (2, 34), (2, 35), (2, 36), (2, 37), (2, 38), (2, 39), (2, 40),
    (2, 41), (2, 42), (2, 43), (2, 44), (2, 45), (2, 46), (2, 47), (2, 48),
    (2, 49), (2, 50), (13, 1), (13, 2), (13, 3), (13, 4), (13, 5), (13, 6),
    (13, 7)]

theorem heckeMultiplicationIndices_2_13_100_length :
    heckeMultiplicationIndices_2_13_100.length = 57 := by
  decide

/-- The finite bad-prime `Uₚ` recurrence for a q-expansion row.

For every displayed pair `(p,n)`, this checks `a_(pn) = a_p a_n`.  This is
finite replay evidence, not a construction of Mathlib analytic eigenforms. -/
def passesBadPrimeHeckeTable (coefficients : List Int) : Bool :=
  coefficients.getD 0 0 = 1 &&
    heckeMultiplicationIndices_2_13_100.all fun row =>
      coefficients.getD (row.1 * row.2 - 1) 0 =
        coefficients.getD (row.1 - 1) 0 *
          coefficients.getD (row.2 - 1) 0

theorem f_26a_normalized_eigen_at_2_13_decided :
    passesBadPrimeHeckeTable f_26a_qExpansion_100 = true := by
  decide

theorem f_26b_normalized_eigen_at_2_13_decided :
    passesBadPrimeHeckeTable f_26b_qExpansion_100 = true := by
  decide

/-- The finite dimension token for the level-26 weight-two cusp-form space.

As in the repository's level-2 endpoint, this records the standard
`dim S₂(Γ₀(N)) = genus X₀(N)` bridge at weight two.  It deliberately reuses
the existing finite genus certificate and does not claim a new scheme-level
Riemann--Roch or Riemann--Hurwitz formalization. -/
def dim_S2_26 : Nat :=
  X0_26_certifiedGenus

theorem s2_26_dimension_eq_certified_genus :
    dim_S2_26 = X0_26_certifiedGenus := by
  decide

theorem s2_26_dim_two_decided :
    dim_S2_26 = 2 := by
  decide

/-- The kernel-decidable `S₂(26)` finite decomposition evidence. -/
def S2_26_Decomp_Real : Prop :=
  f_26a_qExpansion_100.length = 100 ∧
    f_26b_qExpansion_100.length = 100 ∧
    f_26a_qExpansion_100.take 20 = E26b1_qExpansion_20 ∧
    f_26b_qExpansion_100.take 20 = E26a1_qExpansion_20 ∧
    f_26a_qExpansion_100 ≠ f_26b_qExpansion_100 ∧
    passesBadPrimeHeckeTable f_26a_qExpansion_100 = true ∧
    passesBadPrimeHeckeTable f_26b_qExpansion_100 = true ∧
    dim_S2_26 = X0_26_certifiedGenus ∧
    dim_S2_26 = 2

theorem s2_26_decomp_real_decided : S2_26_Decomp_Real := by
  unfold S2_26_Decomp_Real
  exact
    ⟨by decide, by decide, by decide, by decide, by decide,
      f_26a_normalized_eigen_at_2_13_decided,
      f_26b_normalized_eigen_at_2_13_decided,
      s2_26_dimension_eq_certified_genus,
      s2_26_dim_two_decided⟩

/-- A local replay of the existing mod-3 determinant row.  The geometric
meaning of that row remains conditional in the formal-immersion module. -/
def J0_26_dAJ_matrix_mod_3_replay :
    Matrix (Fin 2) (Fin 2) (ZMod 3) :=
  !![1, 1; 0, 2]

theorem J0_26_mod3_det_replay_decided :
    Matrix.det J0_26_dAJ_matrix_mod_3_replay ≠ 0 := by
  decide

/-- Real finite evidence supporting the Phase B decomposition.

This proposition combines only replayable q-expansion, Hecke, dimension,
model, and determinant checks.  It is intentionally separate from
`JacobianTransportCertificate_26`, whose inhabitant must still supply the
missing genus-two Jacobian/isogeny transport. -/
def JacobianTransportCertificate_Real_26 : Prop :=
  S2_26_Decomp_Real ∧
    X0_26_degree = 6 ∧
    X0_26_discriminant ≠ 0 ∧
    X0_26_certifiedGenus = 2 ∧
    Matrix.det J0_26_dAJ_matrix_mod_3_replay ≠ 0

theorem j0_26_transport_evidence_real :
    S2_26_Decomp_Real → JacobianTransportCertificate_Real_26 := by
  intro hS2
  exact ⟨hS2, rfl, X0_26_discriminant_ne_zero, X0_26_genus,
    J0_26_mod3_det_replay_decided⟩

/-! ## The explicit geometric and rank boundaries -/

/-- Rational points on the product of the two genuine elliptic factors. -/
abbrev E26FactorPoints :=
  MordellWeilGroup E26a1W × MordellWeilGroup E26b1W

/-- The rational-point-group shadow of an isogeny.

The finite-kernel clause and bounded-cokernel clause are the group-theoretic
properties expected from the map on rational points induced by an isogeny.
They do not construct an abelian variety or assert that an arbitrary group is
the Jacobian of the displayed curve. -/
structure RationalPointIsogenyShadow
    (J0_26 : Type*) [AddCommGroup J0_26] where
  toFactors : J0_26 →+ E26FactorPoints
  finite_kernel : Set.Finite {P : J0_26 | toFactors P = 0}
  bounded_cokernel :
    ∃ n : Nat, 0 < n ∧
      ∀ Q : E26FactorPoints, ∃ P : J0_26, toFactors P = n • Q

/-- The decomposition statement kept as an explicit proposition.

An inhabitant must supply an actual group homomorphism with finite kernel and
bounded cokernel; finite coefficient equality alone cannot inhabit it. -/
def J0_26_isogenous_to_E26a1_x_E26b1
    (J0_26 : Type*) [AddCommGroup J0_26] : Prop :=
  Nonempty (RationalPointIsogenyShadow J0_26)

/-- The complete Phase B transport certificate.

`rank_J0`, `rank_E26a1`, and `rank_E26b1` are semantic rank values supplied by
the future Mordell--Weil/Jacobian development.  The three proof fields are the
precise missing bridges: isogeny invariance/additivity and conversion of the
Phase A torsion predicates to rank zero. -/
structure JacobianTransport_26
    (J0_26 : Type*) [AddCommGroup J0_26] where
  decomposition : J0_26_isogenous_to_E26a1_x_E26b1 J0_26
  coefficient_match :
    J0_26_newformBasis_qExpansion_20 =
      [E26a1_qExpansion_20, E26b1_qExpansion_20]
  rank_J0 : Nat
  rank_E26a1 : Nat
  rank_E26b1 : Nat
  rank_preservation : rank_J0 = rank_E26a1 + rank_E26b1
  rank_E26a1_zero_of_free_rank_zero :
    IsFreeRankZero E26a1W → rank_E26a1 = 0
  rank_E26b1_zero_of_free_rank_zero :
    IsFreeRankZero E26b1W → rank_E26b1 = 0

/-- Rank preservation is exposed only from the explicit Phase B certificate. -/
theorem rank_J0_eq_sum
    {J0_26 : Type*} [AddCommGroup J0_26]
    (transport : JacobianTransport_26 J0_26) :
    transport.rank_J0 =
      transport.rank_E26a1 + transport.rank_E26b1 :=
  transport.rank_preservation

/-- Phase A plus the explicit Jacobian transport certificate gives rank zero.

The transport certificate is a visible argument: Phase A alone does not prove
the level-26 Jacobian decomposition or rank preservation. -/
theorem rank_J0_zero_of_PhaseA
    {J0_26 : Type*} [AddCommGroup J0_26]
    (transport : JacobianTransport_26 J0_26) :
    SecondDescentHypothesis_26 ∧ TorsionOdd_26 →
      transport.rank_J0 = 0 := by
  intro hPhaseA
  obtain ⟨ha, hb⟩ := freeRankZero_of_secondDescent hPhaseA.1
  rw [rank_J0_eq_sum transport,
    transport.rank_E26a1_zero_of_free_rank_zero ha,
    transport.rank_E26b1_zero_of_free_rank_zero hb,
    Nat.zero_add]

#print axioms X0_26_certified_genus_two
#print axioms qExpansion_20_matches_E26_factors
#print axioms s2_26_dim_two_decided
#print axioms newforms_distinct_decided
#print axioms f_26a_normalized_eigen_at_2_13_decided
#print axioms f_26b_normalized_eigen_at_2_13_decided
#print axioms j0_26_transport_evidence_real
#print axioms rank_J0_eq_sum
#print axioms rank_J0_zero_of_PhaseA

end

end Beal17Mazur.Jacobian.J0_26_Decomp