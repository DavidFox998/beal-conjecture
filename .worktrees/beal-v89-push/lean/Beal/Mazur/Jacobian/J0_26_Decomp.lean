import Beal.Mazur.Gates.Descent_26_RankProof
import Beal.Mazur.Jacobian.E26
import Beal.Mazur.Gates.Descent_26_PhaseA
import Beal.Mazur.X0_26_Model

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
  obtain ⟨ha, hb⟩ := freeRankZero_of_secondDescent hPhaseA
  rw [rank_J0_eq_sum transport,
    transport.rank_E26a1_zero_of_free_rank_zero ha,
    transport.rank_E26b1_zero_of_free_rank_zero hb,
    Nat.zero_add]

#print axioms X0_26_certified_genus_two
#print axioms qExpansion_20_matches_E26_factors
#print axioms rank_J0_eq_sum
#print axioms rank_J0_zero_of_PhaseA

end

end Beal17Mazur.Jacobian.J0_26_Decomp