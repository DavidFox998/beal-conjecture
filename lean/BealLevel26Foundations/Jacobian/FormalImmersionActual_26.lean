import Beal.Foundations.FormalImmersionM3
import BealLevel26Foundations.Jacobian.PicardAbelJacobiIdentification_26
import BealLevel26Foundations.Mazur.EndgameScaffold
import BealLevel26Foundations.M3_Explicit
import Mathlib.Data.ZMod.Basic
import Mathlib.LinearAlgebra.Matrix.Determinant.Basic
import Mathlib.Tactic

namespace BealLevel26Foundations.Jacobian.FormalImmersionActual26

open Beal.Foundations.FormalImmersionM3
open BealLevel26Foundations.Jacobian.PicardAbelJacobiIdentification26
open BealLevel26Foundations.Mazur.EndgameScaffold
open BealLevel26Foundations.M3Explicit

/-!
# v4.0.3 formal-immersion-at-2 from q-expansion cotangent data

This module loads the v1.4.0 sources

* `sagemath/level_26_ledger.json`
  (SHA-256 `0259fe957cc348b7286e233ce717fac47c30ad174b05e8e1c5fb70626f511151`);
* `sagemath/certs/j0_26_decomposition.json`;
* `sagemath/certs/formal_immersion_M3.json`

as the already-promoted Lean `M₃` and
`PicardAbelJacobiIdentification_26`.  It does not parse JSON and does
not add a certificate.

Formal immersion *at the prime 2* is packaged here as injectivity of
the q-expansion cotangent matrix over `ZMod 3`: `M₃ = [[1, 1], [0, 2]]`
has `det = 2 ≠ 0`, so `v ↦ M₃ v` has trivial kernel.  Under
`PicardAbelJacobiIdentification_26`, any supplied matrix equal to that
q-expansion `M₃` is likewise injective.

`FormalImmersionAtTwo26.of_qExpansion` is an inhabitant of the Mazur
scaffold premise.  It replaces that premise by finite matrix
injectivity.  Mathlib 4.12 has no Jacobian and no formal-immersion API.
This is not a scheme-theoretic immersion of `X₀(26)` in `J₀(26)`, and
it does not identify `X₀(26)(ℚ)` with four cusps.

v4.0.13 names `formalImmersion_at_2_surjective_from_M3` as
`of_qExpansion.input.det ≠ 0`.  Blueprint citation: Mazur 1978
Prop III.3.2 checks formal immersion at `p = 2` via the
q-expansion matrix modulo 3.  The Lean `Prop` is that determinant
check over `ZMod 3`.  It is not surjectivity of a map of
completed local rings.
-/

/-- Cotangent-map injectivity: trivial kernel of `mulVec`. -/
def cotangentInjective (M : Matrix (Fin 2) (Fin 2) (ZMod 3)) : Prop :=
  ∀ v : Fin 2 → ZMod 3, M.mulVec v = 0 → v = 0

theorem qExpansionM3_eq_certified :
    qExpansionM3 = !![1, 1; 0, 2] :=
  qExpansionM3_eq

theorem det_two_by_two_ring :
    (1 : ZMod 3) * 2 - 1 * 0 = 2 := by
  ring

theorem certifiedM3_det_by_ring :
    Matrix.det (!![1, 1; 0, 2] : Matrix (Fin 2) (Fin 2) (ZMod 3)) = 2 := by
  decide

theorem qExpansionM3_det_by_ring :
    Matrix.det qExpansionM3 = 2 := by
  rw [qExpansionM3_eq]
  exact certifiedM3_det_by_ring

theorem qExpansionM3_det_ne_zero :
    Matrix.det qExpansionM3 ≠ 0 := by
  rw [qExpansionM3_det_by_ring]
  decide

theorem qExpansionM3_eq_certifiedM3 :
    qExpansionM3 = certifiedM3 := by
  rw [qExpansionM3_eq, certifiedM3_eq]

/-- `M₃` is involutive over `ZMod 3`, so it is its own inverse. -/
theorem certifiedM3_mul_self :
    (!![1, 1; 0, 2] : Matrix (Fin 2) (Fin 2) (ZMod 3)) * !![1, 1; 0, 2] =
      1 := by
  decide

theorem certifiedM3_cotangent_injective :
    cotangentInjective (!![1, 1; 0, 2]) := by
  intro v hv
  let M : Matrix (Fin 2) (Fin 2) (ZMod 3) := !![1, 1; 0, 2]
  have h : M.mulVec (M.mulVec v) = (M * M).mulVec v :=
    Matrix.mulVec_mulVec v M M
  have hM : M * M = (1 : Matrix (Fin 2) (Fin 2) (ZMod 3)) :=
    certifiedM3_mul_self
  rw [hv, Matrix.mulVec_zero, hM, Matrix.one_mulVec] at h
  exact h.symm

/-- Q-expansion cotangent map is injective over `ZMod 3`. -/
theorem qExpansionM3_cotangent_injective :
    cotangentInjective qExpansionM3 := by
  rw [qExpansionM3_eq]
  exact certifiedM3_cotangent_injective

/-- Formal-immersion-at-2 criterion from q-expansion data: the
cotangent map is injective. -/
theorem cotangentMap_injective_at_two :
    cotangentInjective qExpansionM3 ∧ Matrix.det qExpansionM3 = 2 ∧
      Matrix.det qExpansionM3 ≠ 0 :=
  ⟨qExpansionM3_cotangent_injective, qExpansionM3_det_by_ring,
    qExpansionM3_det_ne_zero⟩

/-- Picard identification transfers injectivity to a supplied matrix. -/
theorem cotangentInjective_of_picard
    {actual_dAJ_at_infinity : Matrix (Fin 2) (Fin 2) (ZMod 3)}
    (hPicard : PicardAbelJacobiIdentification_26 actual_dAJ_at_infinity) :
    cotangentInjective actual_dAJ_at_infinity ∧
      Matrix.det actual_dAJ_at_infinity = 2 := by
  have hEq : actual_dAJ_at_infinity = qExpansionM3 :=
    PicardAbelJacobiIdentification_26.eq_ledgerM3 hPicard
  exact ⟨hEq ▸ qExpansionM3_cotangent_injective,
    hEq ▸ qExpansionM3_det_by_ring⟩

/-- Finite package that inhabits the Mazur `FormalImmersionAtTwo26`
premise.  `actualFormalImmersionAtTwo` is q-expansion cotangent
injectivity, not a scheme-theoretic formal immersion. -/
def FormalImmersionAtTwo26.of_qExpansion :
    FormalImmersionAtTwo26 where
  input := qExpansionM3
  input_eq := qExpansionM3_eq
  input_det := qExpansionM3_det_by_ring
  actualFormalImmersionAtTwo := cotangentInjective qExpansionM3
  actualFormalImmersionAtTwo_witness := qExpansionM3_cotangent_injective

theorem FormalImmersionAtTwo26.of_qExpansion_replaces_premise :
    FormalImmersionAtTwo26.of_qExpansion.input = !![1, 1; 0, 2] ∧
      Matrix.det FormalImmersionAtTwo26.of_qExpansion.input = 2 ∧
      FormalImmersionAtTwo26.of_qExpansion.actualFormalImmersionAtTwo :=
  ⟨FormalImmersionAtTwo26.of_qExpansion.input_eq,
    FormalImmersionAtTwo26.of_qExpansion.input_det,
    FormalImmersionAtTwo26.of_qExpansion.actualFormalImmersionAtTwo_witness⟩

theorem FormalImmersionAtTwo26.of_qExpansion_eq_certifiedM3 :
    FormalImmersionAtTwo26.of_qExpansion.input = certifiedM3 :=
  qExpansionM3_eq_certifiedM3

/-- Named `det ≠ 0` package.  Blueprint citation: Mazur 1978
Prop III.3.2, formal immersion at `p = 2` checked via the
q-expansion matrix modulo 3.  This `Prop` is
`FormalImmersionAtTwo26.of_qExpansion.input.det ≠ 0` over
`ZMod 3`.  It is not surjectivity of a map of completed local
rings. -/
def formalImmersion_at_2_surjective_from_M3 : Prop :=
  FormalImmersionAtTwo26.of_qExpansion.input.det ≠ 0

/-- `input.det = 2` over `ZMod 3`; `2 ≠ 0` by `decide`. -/
theorem formalImmersion_at_2_surjective_from_M3.certified :
    formalImmersion_at_2_surjective_from_M3 := by
  unfold formalImmersion_at_2_surjective_from_M3
  rw [FormalImmersionAtTwo26.of_qExpansion.input_det]
  decide

#print axioms qExpansionM3_det_by_ring
#print axioms qExpansionM3_cotangent_injective
#print axioms cotangentMap_injective_at_two
#print axioms cotangentInjective_of_picard
#print axioms FormalImmersionAtTwo26.of_qExpansion_replaces_premise
#print axioms formalImmersion_at_2_surjective_from_M3.certified

end BealLevel26Foundations.Jacobian.FormalImmersionActual26
