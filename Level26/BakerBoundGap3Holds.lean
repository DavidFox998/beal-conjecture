/-
Copyright (c) 2026 David Fox. All rights reserved.
Released under MIT license as described in the file LICENSE.
Authors: David Fox

Beal Level 26 v25 wiring: B ≤ B0 unconditional, still not v25.

Depends on Matveev-Beal 4bd15bd for the n=2 shape of
`matveev_theorem_1_4_general` (hGen). That package
requires this repo's Level26 subtree, so this file
does not `require` Matveev-Beal (Lake cycle). Prop
shapes are duplicated here.

v24.4.0 db7a556 / 22732209 closed |Λ| ≤ B^4/A^4,
conditional toward B0 = 10^6. Still uninhabited:
hGen (Mathlib 4.12 has no Matveev 2000 Thm 1.4)
and LLL / Bugeaud (`bugeaud_LLL_reduction_conditional`).

α₁ = A, α₂ = B+3. Not `1 < B` and not `A < B+3`.
-/
import BealLevel26Foundations.Beal.FullProof.BealGap3BakerUpperBound
import BealLevel26Foundations.Beal.FullProof.BealMatveevThm14
import BealLevel26Foundations.Beal.FullProof.BealMatveevConstants
import BealLevel26Foundations.Beal.FullProof.BealMatveevInequality
import BealLevel26Foundations.Beal.FullProof.BealMatveevInequalityReal
import BealLevel26Foundations.Beal.FullProof.BealBakerB0ReductionCertificate

namespace BealLevel26BakerBound

open Real
open BealLevel26Foundations.BealGap3BakerUpperBound
open BealLevel26Foundations.BealMatveevThm14
open BealLevel26Foundations.BealMatveevInequality
open BealLevel26Foundations.BealMatveevInequalityReal
open BealLevel26Foundations.BealMatveevConstants

/-! ## Displayed constants from Matveev-Beal 4bd15bd -/

def C1_floor : ℕ := 143186215390
def height_B0 : ℕ := 104382751019310000000
def B0 : ℕ := 1000000

theorem C1_floor_eq : C1_floor = 143186215390 := rfl
theorem height_B0_eq : height_B0 = 104382751019310000000 := rfl
theorem B0_eq : B0 = 1000000 := rfl
theorem B0_eq_baker_B0 : B0 = baker_B0 := rfl
theorem B0_eq_pow10_6 : B0 = Nat.pow 10 6 := by decide
theorem C1_floor_eq_level26 : C1_floor = matveev_C1_floor := rfl
theorem height_B0_eq_level26 : height_B0 = matveev_height_B0 := rfl

/-! ## hGen, same n=2 shape as Matveev-Beal 4bd15bd

    α₁ = A, α₂ = B+3 (the second real is not Nat `B`).
    `1 < B` is the wrong hyp: Nat `B = 1` occurs. -/

def matveev_theorem_1_4_general_prop : Prop :=
  ∀ (α1 α2 : ℝ) (_h1 : 1 < α1) (_h2 : 1 < α2),
    |4 * Real.log α1 - 13 * Real.log α2| >
      Real.exp
        (-(C1_floor : ℝ) * Real.log α1 * Real.log α2 *
          (Real.log (13 : ℝ) + Real.log (Real.log (13 : ℝ)) +
            Real.log α1 + Real.log α2))

/-! ## LLL / Bugeaud: hGen + |Λ| ≤ B^4/A^4 → B ≤ B0

    Still a def Prop. Mathlib 4.12 has no LLL reduction
    of linear forms that closes B > 10^6. The PARI cert
    in `BealBakerB0ReductionCertificate` is a nonempty
    list, not this implication. -/

def bugeaud_LLL_reduction_conditional : Prop :=
  matveev_theorem_1_4_general_prop →
    ∀ A B : ℕ,
      A ^ 4 + B ^ 4 = (B + 3) ^ 13 →
        0 < B →
          B ≤ B0

/-- Matveev lower on the B ≤ B0 range. Proved in
    Matveev-Beal 4bd15bd as
    `matveev_gap3_lower_of_general_of_B_le_B0`.
    Duplicated here as a def Prop (no reverse import).
    The full `matveev_inequality_real_target` is ∀ solutions;
    this is only the B ≤ 10^6 slice. -/
def matveev_gap3_lower_on_B0_range : Prop :=
  matveev_theorem_1_4_general_prop →
    ∀ A B : ℕ,
      0 < B →
        B ≤ B0 →
          A ^ 4 + B ^ 4 = (B + 3) ^ 13 →
            |matveev_log_form A B| > Real.exp matveev_C_exp_bound

/-- Packaging: LLL on every solution plus hGen gives
    `baker_bound_gap3` (`∃ B0 = 10^6, B > B0 → no solution`).
    Does not inhabit hGen or hLLL. No sorry. -/
theorem baker_bound_gap3_of_LLL
    (hLLL : bugeaud_LLL_reduction_conditional)
    (hGen : matveev_theorem_1_4_general_prop) :
    baker_bound_gap3 := by
  refine ⟨Nat.pow 10 6, rfl, ?_⟩
  intro B hBgt hEx
  rcases hEx with ⟨A, hsol⟩
  have hBpos : 0 < B :=
    Nat.lt_trans (by decide : 0 < Nat.pow 10 6) hBgt
  have hle : B ≤ B0 := hLLL hGen A B hsol hBpos
  have hB0 : B0 = Nat.pow 10 6 := B0_eq_pow10_6
  exact (Nat.not_le.mpr hBgt) (hB0 ▸ hle)

/-- Already a theorem in Level26. Unconditional forall
    only after `baker_bound_gap3` is inhabited. -/
theorem gap3_forall_of_baker_unconditional
    (hBaker : baker_bound_gap3) :
    ∀ B : ℕ,
      ¬ ∃ A : ℕ, A ^ 4 + B ^ 4 = (B + 3) ^ 13 :=
  baker_conditional_gap3_full hBaker

/-- v25 chain as a named Prop. Not a theorem until
    hGen and hLLL are inhabited. -/
def v25_Baker_B0_unconditional : Prop :=
  matveev_theorem_1_4_general_prop →
    bugeaud_LLL_reduction_conditional →
      ∀ B : ℕ, ¬ ∃ A : ℕ, A ^ 4 + B ^ 4 = (B + 3) ^ 13

theorem v25_of_hGen_hLLL
    (hGen : matveev_theorem_1_4_general_prop)
    (hLLL : bugeaud_LLL_reduction_conditional) :
    ∀ B : ℕ, ¬ ∃ A : ℕ, A ^ 4 + B ^ 4 = (B + 3) ^ 13 :=
  gap3_forall_of_baker_unconditional (baker_bound_gap3_of_LLL hLLL hGen)

/-- Tag target once hGen + hLLL have 0 sorry:
    `v25.0.0-Beal-44-13-Level-26-Baker-B0-Unconditional`.
    DOI stays concept 22379293; new version DOI would
    mint from v24.4.0 22732209. Not that tag. -/
def v25_tag_target : Prop := v25_Baker_B0_unconditional

/-! ## Names from the previous wiring pass -/

/-- Intended implication from the *uniform* Matveev target
    to `baker_bound_gap3`. Different from
    `bugeaud_LLL_reduction_conditional` (that one takes hGen).
    Uninhabited. -/
def baker_bound_gap3_of_matveev_gap3_lower : Prop :=
  matveev_inequality_real_target → baker_bound_gap3

def baker_bound_gap3_holds : Prop := baker_bound_gap3

theorem baker_conditional_gap3_full_of_holds
    (hBaker : baker_bound_gap3) :
    ∀ B : Nat,
      ¬ ∃ A, Nat.pow A 4 + Nat.pow B 4 = Nat.pow (B + 3) 13 :=
  baker_conditional_gap3_full hBaker

#check C1_floor
#check height_B0
#check B0
#check matveev_theorem_1_4_general_prop
#check bugeaud_LLL_reduction_conditional
#check matveev_gap3_lower_on_B0_range
#check baker_bound_gap3_of_LLL
#check gap3_forall_of_baker_unconditional
#check v25_of_hGen_hLLL
#check baker_bound_gap3
#check baker_bound_gap3_holds
#check matveev_inequality_real_target
#print axioms C1_floor_eq
#print axioms B0_eq_baker_B0
#print axioms B0_eq_pow10_6
#print axioms baker_bound_gap3_of_LLL
#print axioms gap3_forall_of_baker_unconditional
#print axioms v25_of_hGen_hLLL
#print axioms baker_conditional_gap3_full_of_holds

end BealLevel26BakerBound

namespace Level26.BakerBoundGap3Holds

open BealLevel26BakerBound

def baker_bound_gap3_of_matveev_gap3_lower : Prop :=
  BealLevel26BakerBound.baker_bound_gap3_of_matveev_gap3_lower

def baker_bound_gap3_holds : Prop :=
  BealLevel26BakerBound.baker_bound_gap3_holds

theorem baker_conditional_gap3_full_of_holds
    (hBaker : BealLevel26Foundations.BealGap3BakerUpperBound.baker_bound_gap3) :
    ∀ B : Nat,
      ¬ ∃ A, Nat.pow A 4 + Nat.pow B 4 = Nat.pow (B + 3) 13 :=
  BealLevel26BakerBound.baker_conditional_gap3_full_of_holds hBaker

end Level26.BakerBoundGap3Holds
