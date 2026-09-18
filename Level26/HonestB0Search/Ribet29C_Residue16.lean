/-
Copyright (c) 2026 David Fox. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: David Fox
-/
/-
  Root module. Separate Lake target `BealMatveevBealV25B0Search`.
  Do **not** add `Beal/Matveev/Ribet29C_Residue16.lean`:
  `.submodules Beal.Matveev` would pull it into the default glob.
  Do **not** import `Beal.Matveev.MatveevThm14General`,
  `Beal.Matveev.BealMatveevBealV25B0Search`, or
  `Beal.Matveev.PAdicLLL`. Do **not** add a Ribet axiom:
  the only repo axiom for Darmon–Merel is
  `BealTrueV25.darmon_merel_4413_axiom` on the default target.
-/
import BealMatveevBealV25B0Search
import DarmonMerelFrey4413
import Level32Table
import Ribet29C_Lowering
import LLLTargetB8_C1_lower_bound

/-!
# Residue `(A,B) ≡ (1,6) (mod 7)` at `l = 11`

`49d4ade` killed `(A,B) ≡ (2,3) (mod 7)` at `l = 7`
(`a₇ = −4 ≠ 0`). The surviving class `(1,6)` **matches**
`32a1` at `7` (`a₇ = 0`). This file checks `l = 11`.

Point counts of the displayed Frey model (same `sqCount` as
`Level32Table`, not a `count_Fp_Frey := 0` stub):

* `32a1` has `a₁₁ = 0` (`#E(𝔽₁₁) = 12`).
* The representatives `A=1, B=6` are **not** on-solution
  over `𝔽₁₁`, and `frey_ap 11 1 6 = 0` **matches** `32a1`.
  They do not give `a₁₁ = −6`.
* Good on-solution residues mod `11` are mixed: `(4,3)` and
  `(7,3)` have `a₁₁ = 0`; `(2,6)` and `(9,6)` have `a₁₁ = −4`.
* Residue `(1,6) (mod 7)` does **not** determine `A,B (mod 11)`.
  CRT lifts include both an `a₁₁ = 0` match (`A=15, B=69`) and
  an `a₁₁ = −4` mismatch (`A=57, B=6`). The class is not killed.
* The other `a₇ = 0` class `(6,6) (mod 7)` also survives `l = 7`.
  `(5,3) (mod 7)` mismatches like `(2,3)`.

Ribet-to-32 stays `def Prop`. Full `29 ∣ C` stays `def Prop`.
Does **not** mint v25. 0 sorry. 0 new axioms.
`C1_floor = 143186215390`. `B0_nat = 1000000`.
Tag `v24-v24x-final-rank3-shape-nogo` stays at `c1d173e`.
-/

namespace BealMatveevBeal.Ribet29CResidue16

open BealMatveevBeal.BealMatveevBealV25B0Search
open BealMatveevBeal.DarmonMerelFrey4413
open BealMatveevBeal.Level32Table
open BealMatveevBeal.Ribet29CLowering
open BealMatveevBeal.LLLTargetB8
open BealMatveevBeal.LLLTargetB8C1LowerBound
open Nat

/-! ## `32a1` at `l = 11`: `a₁₁ = 0` -/

theorem newform_32a1_ap_11 : newform_32a1_ap 11 = some 0 := by decide

theorem curve32a1_ap_11 : curve32a1_ap 11 = 0 := by native_decide

theorem lmfdb_32a1_a11_matches_curve :
    curve32a1_ap 11 = 0 ∧ newform_32a1_ap 11 = some 0 :=
  ⟨curve32a1_ap_11, newform_32a1_ap_11⟩

/-! ## Representatives `(1,6)` do not kill at `11` -/

theorem residue_1_6_not_onsol_mod11 :
    (1 ^ 4 + 6 ^ 4) % 11 ≠ ((6 + 3) ^ 13) % 11 := by decide

theorem frey_a11_at_1_6 : frey_ap 11 1 6 = 0 := by native_decide

theorem a11_at_1_6_matches_32a1 :
    frey_ap 11 1 6 = curve32a1_ap 11 := by
  rw [frey_a11_at_1_6, curve32a1_ap_11]

/-! ## Good on-solution residues mod `11` are mixed -/

theorem frey_a11_match_example : frey_ap 11 4 3 = 0 := by native_decide

theorem frey_a11_mismatch_example : frey_ap 11 2 6 = -4 := by native_decide

theorem frey_a11_mismatch_example_9_6 : frey_ap 11 9 6 = -4 := by native_decide

theorem residue_4_3_onsol_mod11 :
    (4 ^ 4 + 3 ^ 4) % 11 = ((3 + 3) ^ 13) % 11 := by decide

theorem residue_2_6_onsol_mod11 :
    (2 ^ 4 + 6 ^ 4) % 11 = ((6 + 3) ^ 13) % 11 := by decide

theorem frey_a11_on_sol_eq_zero_or_neg_four :
    ∀ (A B : Fin 11),
      A.val ≠ 0 → B.val ≠ 0 →
        (A.val ^ 4 + B.val ^ 4) % 11 ≠ 0 →
        (A.val ^ 4 + B.val ^ 4) % 11 = ((B.val + 3) ^ 13) % 11 →
        frey_ap 11 A.val B.val = 0 ∨
          frey_ap 11 A.val B.val = -4 := by
  native_decide

theorem exists_good_onsol_a11_match_32a1 :
    ∃ (A B : Fin 11),
      A.val ≠ 0 ∧ B.val ≠ 0 ∧ (B.val + 3) % 11 ≠ 0 ∧
        (A.val ^ 4 + B.val ^ 4) % 11 = ((B.val + 3) ^ 13) % 11 ∧
        frey_ap 11 A.val B.val = 0 :=
  ⟨⟨4, by decide⟩, ⟨3, by decide⟩, by native_decide⟩

theorem exists_good_onsol_a11_mismatch_32a1 :
    ∃ (A B : Fin 11),
      A.val ≠ 0 ∧ B.val ≠ 0 ∧ (B.val + 3) % 11 ≠ 0 ∧
        (A.val ^ 4 + B.val ^ 4) % 11 = ((B.val + 3) ^ 13) % 11 ∧
        frey_ap 11 A.val B.val = -4 :=
  ⟨⟨2, by decide⟩, ⟨6, by decide⟩, by native_decide⟩

/-! ## Traces at `11` depend only on `A, B mod 11` -/

theorem not_dvd_eleven_of_mod {n r : ℕ}
    (hr : r ≠ 0) (h : n % 11 = r) : ¬ 11 ∣ n := by
  intro hd
  have hz : n % 11 = 0 := mod_eq_zero_of_dvd hd
  exact hr (h ▸ hz)

theorem eleven_good_of_residue_2_6 {A B : ℕ}
    (hA : A % 11 = 2) (hB : B % 11 = 6) :
    ¬ 11 ∣ A ∧ ¬ 11 ∣ B ∧ ¬ 11 ∣ B + 3 := by
  refine ⟨not_dvd_eleven_of_mod (by decide : (2 : ℕ) ≠ 0) hA,
    not_dvd_eleven_of_mod (by decide : (6 : ℕ) ≠ 0) hB, ?_⟩
  have hC : (B + 3) % 11 = 9 := by
    have h3 : 3 % 11 = 3 := by decide
    calc
      (B + 3) % 11 = (B % 11 + 3 % 11) % 11 := Nat.add_mod B 3 11
      _ = (6 + 3) % 11 := by rw [hB, h3]
      _ = 9 := by decide
  exact not_dvd_eleven_of_mod (by decide : (9 : ℕ) ≠ 0) hC

theorem a11_of_residue_2_6 {A B : ℕ}
    (hA : A % 11 = 2) (hB : B % 11 = 6) :
    frey_ap 11 A B = -4 := by
  have h := frey_ap_mod 11 A B
  rw [hA, hB] at h
  rw [h, frey_a11_mismatch_example]

theorem a11_ne_32a1_of_residue_2_6 {A B : ℕ}
    (hA : A % 11 = 2) (hB : B % 11 = 6) :
    frey_ap 11 A B ≠ curve32a1_ap 11 := by
  rw [a11_of_residue_2_6 hA hB, curve32a1_ap_11]
  decide

theorem a11_of_residue_9_6 {A B : ℕ}
    (hA : A % 11 = 9) (hB : B % 11 = 6) :
    frey_ap 11 A B = -4 := by
  have h := frey_ap_mod 11 A B
  rw [hA, hB] at h
  rw [h, frey_a11_mismatch_example_9_6]

theorem a11_ne_32a1_of_residue_9_6 {A B : ℕ}
    (hA : A % 11 = 9) (hB : B % 11 = 6) :
    frey_ap 11 A B ≠ curve32a1_ap 11 := by
  rw [a11_of_residue_9_6 hA hB, curve32a1_ap_11]
  decide

theorem a11_of_residue_4_3 {A B : ℕ}
    (hA : A % 11 = 4) (hB : B % 11 = 3) :
    frey_ap 11 A B = 0 := by
  have h := frey_ap_mod 11 A B
  rw [hA, hB] at h
  rw [h, frey_a11_match_example]

/-! ## `(1,6) (mod 7)` still has both an `a₁₁` match and a mismatch -/

def residue_1_6_mod7 (A B : ℕ) : Prop :=
  A % 7 = 1 ∧ B % 7 = 6

def residue_1_6_good_at_11 (A B : ℕ) : Prop :=
  A % 7 = 1 ∧ B % 7 = 6 ∧ ¬ 11 ∣ A ∧ ¬ 11 ∣ B ∧ ¬ 11 ∣ B + 3

theorem onsol_mod11_of_mod {A B a b : ℕ}
    (hA : A % 11 = a) (hB : B % 11 = b)
    (hsol : (a ^ 4 + b ^ 4) % 11 = ((b + 3) ^ 13) % 11) :
    (A ^ 4 + B ^ 4) % 11 = ((B + 3) ^ 13) % 11 := by
  calc
    (A ^ 4 + B ^ 4) % 11
        = ((A % 11) ^ 4 + (B % 11) ^ 4) % 11 := (add_pow4_mod 11 A B).symm
    _ = (a ^ 4 + b ^ 4) % 11 := by rw [hA, hB]
    _ = ((b + 3) ^ 13) % 11 := hsol
    _ = ((B % 11 + 3) ^ 13) % 11 := by rw [hB]
    _ = (B + 3) ^ 13 % 11 := pow13_add3_mod (by decide : 3 < 11)

/-- CRT lift of `(1,6) (mod 7)` that is on-solution and good at
    `11` with `a₁₁ = 0`. Not a global gap-3 solution. -/
theorem residue_1_6_has_a11_match_witness :
    ∃ A B : ℕ, residue_1_6_good_at_11 A B ∧
      (A ^ 4 + B ^ 4) % 11 = ((B + 3) ^ 13) % 11 ∧
      frey_ap 11 A B = 0 := by
  refine ⟨15, 69, ⟨by decide, by decide, by decide, by decide, by decide⟩, ?onsol, ?ap⟩
  · exact onsol_mod11_of_mod (by decide : 15 % 11 = 4)
      (by decide : 69 % 11 = 3) residue_4_3_onsol_mod11
  · exact a11_of_residue_4_3 (by decide : 15 % 11 = 4)
      (by decide : 69 % 11 = 3)

/-- CRT lift of `(1,6) (mod 7)` with `a₁₁ = −4`. Not a global
    gap-3 solution. -/
theorem residue_1_6_has_a11_mismatch_witness :
    ∃ A B : ℕ, residue_1_6_good_at_11 A B ∧
      (A ^ 4 + B ^ 4) % 11 = ((B + 3) ^ 13) % 11 ∧
      frey_ap 11 A B = -4 := by
  refine ⟨57, 6, ⟨by decide, by decide, by decide, by decide, by decide⟩, ?onsol, ?ap⟩
  · exact onsol_mod11_of_mod (by decide : 57 % 11 = 2)
      (by decide : 6 % 11 = 6) residue_2_6_onsol_mod11
  · exact a11_of_residue_2_6 (by decide : 57 % 11 = 2)
      (by decide : 6 % 11 = 6)

/-- CRT class `B ≡ 6 (mod 7)` and `B ≡ −3 (mod 29)` is nonempty.
    Witness `B = 55` is `0 (mod 11)`, so it is **bad** at `11`. -/
theorem exists_B_mod_203_residue_6_and_29 :
    ∃ n < 203, n % 7 = 6 ∧ n % 29 = 26 :=
  ⟨55, by decide, by decide, by decide⟩

/-- Compatible with `29 ∣ C`, good at `11`, and `a₁₁ = 0`.
    The `(1,6)` class on the `29 ∣ C` branch is not killed at `11`. -/
theorem exists_residue_1_6_29C_good11_a11_match :
    ∃ A B : ℕ, residue_1_6_good_at_11 A B ∧ 29 ∣ B + 3 ∧
      frey_ap 11 A B = 0 := by
  refine ⟨15, 1070, ⟨by decide, by decide, by decide, by decide, by decide⟩,
    by decide, ?ap⟩
  exact a11_of_residue_4_3 (by decide : 15 % 11 = 4)
    (by decide : 1070 % 11 = 3)

/-! ## Remaining mod-`7` classes: `(5,3)` dies like `(2,3)`; `(6,6)` matches -/

theorem a7_of_residue_5_3 {A B : ℕ}
    (hA : A % 7 = 5) (hB : B % 7 = 3) :
    frey_ap 7 A B = -4 := by
  have h := frey_ap_mod 7 A B
  rw [hA, hB] at h
  have h53 : frey_ap 7 5 3 = -4 := by native_decide
  rw [h, h53]

theorem a7_ne_32a1_of_residue_5_3 {A B : ℕ}
    (hA : A % 7 = 5) (hB : B % 7 = 3) :
    frey_ap 7 A B ≠ curve32a1_ap 7 := by
  rw [a7_of_residue_5_3 hA hB, curve32a1_ap_7]
  decide

theorem a7_of_residue_6_6 {A B : ℕ}
    (hA : A % 7 = 6) (hB : B % 7 = 6) :
    frey_ap 7 A B = 0 := by
  have h := frey_ap_mod 7 A B
  rw [hA, hB] at h
  have h66 : frey_ap 7 6 6 = 0 := by native_decide
  rw [h, h66]

theorem a7_of_residue_1_6 {A B : ℕ}
    (hA : A % 7 = 1) (hB : B % 7 = 6) :
    frey_ap 7 A B = 0 := by
  have h := frey_ap_mod 7 A B
  rw [hA, hB] at h
  rw [h, frey_a7_match_example]

/-! ## Implications: mismatch slices die; the `(1,6)` class does not -/

theorem no_sol_residue_2_6_mod11_of_a11_match
    (h_match :
      ∀ A B : ℕ, A ^ 4 + B ^ 4 = (B + 3) ^ 13 →
        A % 11 = 2 → B % 11 = 6 →
        frey_ap 11 A B = curve32a1_ap 11)
    {A B : ℕ}
    (hsol : A ^ 4 + B ^ 4 = (B + 3) ^ 13)
    (hA : A % 11 = 2) (hB : B % 11 = 6) : False :=
  a11_ne_32a1_of_residue_2_6 hA hB (h_match A B hsol hA hB)

theorem no_sol_ge_B0_29C_residue_2_6_mod11_of_a11_match
    (h_match :
      ∀ A B : ℕ, A ^ 4 + B ^ 4 = (B + 3) ^ 13 →
        A % 11 = 2 → B % 11 = 6 →
        frey_ap 11 A B = curve32a1_ap 11)
    {A B : ℕ} (_hB : B0_nat ≤ B)
    (_hC : 29 ∣ B + 3)
    (hsol : A ^ 4 + B ^ 4 = (B + 3) ^ 13)
    (hA : A % 11 = 2) (hB11 : B % 11 = 6) : False :=
  no_sol_residue_2_6_mod11_of_a11_match h_match hsol hA hB11

/-- If Ribet put `29 ∣ C` at residual `32` **and** traces matched
    `32a1` at `11` on residue `(2,6) (mod 11)`, that slice dies.
    Does **not** close `(1,6) (mod 7)`. `h_ribet` is recorded so
    the lowering claim stays visible; the contradiction is `a₁₁`. -/
theorem no_sol_ge_B0_29C_of_ribet_and_a11_residue_2_6
    (_h_ribet : ribet_29C_lowers_to_32)
    (h_match :
      ∀ A B : ℕ, A ^ 4 + B ^ 4 = (B + 3) ^ 13 →
        A % 11 = 2 → B % 11 = 6 →
        frey_ap 11 A B = curve32a1_ap 11)
    {A B : ℕ} (hB : B0_nat ≤ B)
    (hC : 29 ∣ B + 3)
    (hA : A % 11 = 2) (hB11 : B % 11 = 6)
    (hsol : A ^ 4 + B ^ 4 = (B + 3) ^ 13) : False :=
  no_sol_ge_B0_29C_residue_2_6_mod11_of_a11_match h_match hB hC hsol hA hB11

/-- Combined 7+11 close of `29 ∣ C` when `29 ∤ AB`. Uninhabited:
    `(1,6)` and `(6,6) (mod 7)` still match at `7`, and `(1,6)`
    has `a₁₁ = 0` lifts (including with `29 ∣ C`). -/
def no_sol_ge_B0_29C_of_7_and_11 : Prop :=
  ∀ B A : ℕ, B0_nat ≤ B → 29 ∣ B + 3 → ¬ 29 ∣ A → ¬ 29 ∣ B →
    A ^ 4 + B ^ 4 ≠ (B + 3) ^ 13

def full_29C_eliminated : Prop :=
  no_sol_ge_B0_29C_of_7_and_11

/-- `l = 11` does not eliminate every `(1,6) (mod 7)` solution. -/
def residue_1_6_eliminated_at_11 : Prop :=
  ∀ A B : ℕ, residue_1_6_good_at_11 A B →
    A ^ 4 + B ^ 4 = (B + 3) ^ 13 →
    frey_ap 11 A B ≠ curve32a1_ap 11

/-- Same `e5a95f5` equivalence. The 7+11 sieve does not replace
    C-scaling. -/
theorem LLL_nogo_persists_after_Residue16 :
    LLL_reduces_C1_to_lt_nine ↔
      ∀ {A B : ℕ}, B0_nat ≤ B → A ^ 4 + B ^ 4 ≠ (B + 3) ^ 13 :=
  LLL_reduces_C1_to_lt_nine_iff_no_sol_ge_B0

#check curve32a1_ap_11
#check a11_at_1_6_matches_32a1
#check residue_1_6_not_onsol_mod11
#check a11_ne_32a1_of_residue_2_6
#check residue_1_6_has_a11_match_witness
#check exists_residue_1_6_29C_good11_a11_match
#check a7_of_residue_6_6
#check no_sol_ge_B0_29C_of_ribet_and_a11_residue_2_6
#check no_sol_ge_B0_29C_of_7_and_11
#check full_29C_eliminated
#check LLL_nogo_persists_after_Residue16
#print axioms curve32a1_ap_11
#print axioms a11_ne_32a1_of_residue_2_6
#print axioms residue_1_6_has_a11_match_witness
#print axioms LLL_nogo_persists_after_Residue16

end BealMatveevBeal.Ribet29CResidue16
