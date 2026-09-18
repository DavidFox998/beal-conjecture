/-
Copyright (c) 2026 David Fox. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: David Fox
-/
/-
  Root module. Separate Lake target `BealMatveevBealV25B0Search`.
  Do **not** add `Beal/Matveev/Ribet29C_Residue16_L23.lean`:
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
import Ribet29C_Residue16
import LLLTargetB8_C1_lower_bound

/-!
# Residue `(A,B) ≡ (1,6) (mod 7)` at `l = 23`

`1636a62` showed `l = 11` is mixed on `(1,6) (mod 7)`. This
file checks `l = 23` with the same `sqCount` as `Level32Table`
(not `count_E_Fp_32a1 := 0`, not `frey_a23 := 0`).

* `32a1` has `a₂₃ = 0` (`#E(𝔽₂₃) = 24`), matching the LMFDB
  table already in `Level32Table`. It is **not** `−6`.
* Good on-solution residues mod `23` are mixed: eight have
  `a₂₃ = 0` (match), ten have `a₂₃ ∈ {8,4,−4}`.
* Residue `(1,6) (mod 7)` does **not** determine `A,B (mod 23)`
  (`7` and `23` are coprime). CRT lifts inherit every
  on-solution `𝔽₂₃` trace, including `a₂₃ = 0` matches
  (`A=1, B=118`) and mismatches (`A=50, B=160`, `a₂₃ = 8`).
* The `1636a62` witness `A=15, B=69` is **bad** at `23`
  (`23 ∣ 69`), so it is not a good-reduction test at `l = 23`.
* `(a·7+1) % 161` is not CRT (`crt(1,0) = 92`, not `1`).

Ribet-to-32 stays `def Prop`. The `(1,6)` class and full
`29 ∣ C` stay `def Prop`. Does **not** mint v25. 0 sorry.
0 new axioms. `C1_floor = 143186215390`. `B0_nat = 1000000`.
Tag `v24-v24x-final-rank3-shape-nogo` stays at `c1d173e`.
-/

namespace BealMatveevBeal.Ribet29CResidue16L23

open BealMatveevBeal.BealMatveevBealV25B0Search
open BealMatveevBeal.DarmonMerelFrey4413
open BealMatveevBeal.Level32Table
open BealMatveevBeal.Ribet29CLowering
open BealMatveevBeal.Ribet29CResidue16
open BealMatveevBeal.LLLTargetB8
open BealMatveevBeal.LLLTargetB8C1LowerBound
open Nat

/-! ## `32a1` at `l = 23`: `a₂₃ = 0`, not `−6` -/

theorem newform_32a1_ap_23 : newform_32a1_ap 23 = some 0 := by decide

theorem curve32a1_ap_23 : curve32a1_ap 23 = 0 := by native_decide

theorem lmfdb_32a1_a23_matches_curve :
    curve32a1_ap 23 = 0 ∧ newform_32a1_ap 23 = some 0 :=
  ⟨curve32a1_ap_23, newform_32a1_ap_23⟩

/-! ## CRT `7 × 23`: every `𝔽₂₃` residue lifts to `≡ 1 (mod 7)` -/

theorem exists_lift_mod7_one :
    ∀ a : Fin 23, ∃ n < 161, n % 7 = 1 ∧ n % 23 = a.val := by
  native_decide

theorem exists_lift_mod7_six :
    ∀ b : Fin 23, ∃ n < 161, n % 7 = 6 ∧ n % 23 = b.val := by
  native_decide

theorem not_user_crt_formula :
    ¬ ∀ a < 23, (a * 7 + 1) % 161 % 23 = a ∧ (a * 7 + 1) % 161 % 7 = 1 := by
  decide

/-! ## Good on-solution residues mod `23` are mixed -/

theorem residue_1_3_onsol_mod23 :
    (1 ^ 4 + 3 ^ 4) % 23 = ((3 + 3) ^ 13) % 23 := by decide

theorem residue_4_22_onsol_mod23 :
    (4 ^ 4 + 22 ^ 4) % 23 = ((22 + 3) ^ 13) % 23 := by decide

theorem frey_a23_match_example : frey_ap 23 1 3 = 0 := by native_decide

theorem frey_a23_mismatch_example : frey_ap 23 4 22 = 8 := by native_decide

theorem exists_good_onsol_a23_match_32a1 :
    ∃ (A B : Fin 23),
      A.val ≠ 0 ∧ B.val ≠ 0 ∧ (B.val + 3) % 23 ≠ 0 ∧
        (A.val ^ 4 + B.val ^ 4) % 23 = ((B.val + 3) ^ 13) % 23 ∧
        frey_ap 23 A.val B.val = 0 :=
  ⟨⟨1, by decide⟩, ⟨3, by decide⟩, by native_decide⟩

theorem exists_good_onsol_a23_mismatch_32a1 :
    ∃ (A B : Fin 23),
      A.val ≠ 0 ∧ B.val ≠ 0 ∧ (B.val + 3) % 23 ≠ 0 ∧
        (A.val ^ 4 + B.val ^ 4) % 23 = ((B.val + 3) ^ 13) % 23 ∧
        frey_ap 23 A.val B.val = 8 :=
  ⟨⟨4, by decide⟩, ⟨22, by decide⟩, by native_decide⟩

theorem frey_a23_on_sol_eq_zero_or_eight_or_four_or_neg_four :
    ∀ (A B : Fin 23),
      A.val ≠ 0 → B.val ≠ 0 →
        (A.val ^ 4 + B.val ^ 4) % 23 ≠ 0 →
        (A.val ^ 4 + B.val ^ 4) % 23 = ((B.val + 3) ^ 13) % 23 →
        frey_ap 23 A.val B.val = 0 ∨
          frey_ap 23 A.val B.val = 8 ∨
            frey_ap 23 A.val B.val = 4 ∨
              frey_ap 23 A.val B.val = -4 := by
  native_decide

/-! ## Traces at `23` depend only on `A, B mod 23` -/

theorem not_dvd_twenty_three_of_mod {n r : ℕ}
    (hr : r ≠ 0) (h : n % 23 = r) : ¬ 23 ∣ n := by
  intro hd
  have hz : n % 23 = 0 := mod_eq_zero_of_dvd hd
  exact hr (h ▸ hz)

theorem twenty_three_good_of_residue_1_3 {A B : ℕ}
    (hA : A % 23 = 1) (hB : B % 23 = 3) :
    ¬ 23 ∣ A ∧ ¬ 23 ∣ B ∧ ¬ 23 ∣ B + 3 := by
  refine ⟨not_dvd_twenty_three_of_mod (by decide : (1 : ℕ) ≠ 0) hA,
    not_dvd_twenty_three_of_mod (by decide : (3 : ℕ) ≠ 0) hB, ?_⟩
  have hC : (B + 3) % 23 = 6 := by
    have h3 : 3 % 23 = 3 := by decide
    calc
      (B + 3) % 23 = (B % 23 + 3 % 23) % 23 := Nat.add_mod B 3 23
      _ = (3 + 3) % 23 := by rw [hB, h3]
      _ = 6 := by decide
  exact not_dvd_twenty_three_of_mod (by decide : (6 : ℕ) ≠ 0) hC

theorem a23_of_residue_1_3 {A B : ℕ}
    (hA : A % 23 = 1) (hB : B % 23 = 3) :
    frey_ap 23 A B = 0 := by
  have h := frey_ap_mod 23 A B
  rw [hA, hB] at h
  rw [h, frey_a23_match_example]

theorem a23_of_residue_4_22 {A B : ℕ}
    (hA : A % 23 = 4) (hB : B % 23 = 22) :
    frey_ap 23 A B = 8 := by
  have h := frey_ap_mod 23 A B
  rw [hA, hB] at h
  rw [h, frey_a23_mismatch_example]

theorem a23_ne_32a1_of_residue_4_22 {A B : ℕ}
    (hA : A % 23 = 4) (hB : B % 23 = 22) :
    frey_ap 23 A B ≠ curve32a1_ap 23 := by
  rw [a23_of_residue_4_22 hA hB, curve32a1_ap_23]
  decide

theorem onsol_mod23_of_mod {A B a b : ℕ}
    (hA : A % 23 = a) (hB : B % 23 = b)
    (hsol : (a ^ 4 + b ^ 4) % 23 = ((b + 3) ^ 13) % 23) :
    (A ^ 4 + B ^ 4) % 23 = ((B + 3) ^ 13) % 23 := by
  calc
    (A ^ 4 + B ^ 4) % 23
        = ((A % 23) ^ 4 + (B % 23) ^ 4) % 23 := (add_pow4_mod 23 A B).symm
    _ = (a ^ 4 + b ^ 4) % 23 := by rw [hA, hB]
    _ = ((b + 3) ^ 13) % 23 := hsol
    _ = ((B % 23 + 3) ^ 13) % 23 := by rw [hB]
    _ = (B + 3) ^ 13 % 23 := pow13_add3_mod (by decide : 3 < 23)

/-! ## `(1,6) (mod 7)` still has both an `a₂₃` match and a mismatch -/

def residue_1_6_good_at_23 (A B : ℕ) : Prop :=
  A % 7 = 1 ∧ B % 7 = 6 ∧ ¬ 23 ∣ A ∧ ¬ 23 ∣ B ∧ ¬ 23 ∣ B + 3

/-- CRT lift of `(1,6) (mod 7)` that is on-solution and good at
    `23` with `a₂₃ = 0`. Not a global gap-3 solution. -/
theorem residue_1_6_has_a23_match_witness :
    ∃ A B : ℕ, residue_1_6_good_at_23 A B ∧
      (A ^ 4 + B ^ 4) % 23 = ((B + 3) ^ 13) % 23 ∧
      frey_ap 23 A B = 0 := by
  refine ⟨1, 118, ⟨by decide, by decide, by decide, by decide, by decide⟩, ?onsol, ?ap⟩
  · exact onsol_mod23_of_mod (by decide : 1 % 23 = 1)
      (by decide : 118 % 23 = 3) residue_1_3_onsol_mod23
  · exact a23_of_residue_1_3 (by decide : 1 % 23 = 1)
      (by decide : 118 % 23 = 3)

/-- CRT lift of `(1,6) (mod 7)` with `a₂₃ = 8`. Not a global
    gap-3 solution. -/
theorem residue_1_6_has_a23_mismatch_witness :
    ∃ A B : ℕ, residue_1_6_good_at_23 A B ∧
      (A ^ 4 + B ^ 4) % 23 = ((B + 3) ^ 13) % 23 ∧
      frey_ap 23 A B = 8 := by
  refine ⟨50, 160, ⟨by decide, by decide, by decide, by decide, by decide⟩, ?onsol, ?ap⟩
  · exact onsol_mod23_of_mod (by decide : 50 % 23 = 4)
      (by decide : 160 % 23 = 22) residue_4_22_onsol_mod23
  · exact a23_of_residue_4_22 (by decide : 50 % 23 = 4)
      (by decide : 160 % 23 = 22)

/-- Compatible with `29 ∣ C`, good at `23`, and `a₂₃ = 0`.
    The `(1,6)` class on the `29 ∣ C` branch is not killed at `23`. -/
theorem exists_residue_1_6_29C_good23_a23_match :
    ∃ A B : ℕ, residue_1_6_good_at_23 A B ∧ 29 ∣ B + 3 ∧
      frey_ap 23 A B = 0 := by
  refine ⟨1, 2694, ⟨by decide, by decide, by decide, by decide, by decide⟩,
    by decide, ?ap⟩
  exact a23_of_residue_1_3 (by decide : 1 % 23 = 1)
    (by decide : 2694 % 23 = 3)

/-! ## `1636a62` witness `A=15, B=69` is bad at `23` -/

theorem witness_15_69_dvd_23 : 23 ∣ 69 := by decide

theorem witness_15_69_bad_at_23 :
    ¬ residue_1_6_good_at_23 15 69 := by
  intro h
  exact h.2.2.2.1 witness_15_69_dvd_23

theorem witness_15_69_not_onsol_mod23 :
    (15 ^ 4 + 69 ^ 4) % 23 ≠ ((69 + 3) ^ 13) % 23 := by
  have h4 := (add_pow4_mod 23 15 69).symm
  have h13 := pow13_add3_mod (p := 23) (B := 69) (by decide : 3 < 23)
  have hA : 15 % 23 = 15 := by decide
  have hB : 69 % 23 = 0 := by decide
  rw [h4, hA, hB, ← h13, hB]
  decide

/-! ## Implications: mismatch slices die; the `(1,6)` class does not -/

theorem no_sol_residue_4_22_mod23_of_a23_match
    (h_match :
      ∀ A B : ℕ, A ^ 4 + B ^ 4 = (B + 3) ^ 13 →
        A % 23 = 4 → B % 23 = 22 →
        frey_ap 23 A B = curve32a1_ap 23)
    {A B : ℕ}
    (hsol : A ^ 4 + B ^ 4 = (B + 3) ^ 13)
    (hA : A % 23 = 4) (hB : B % 23 = 22) : False :=
  a23_ne_32a1_of_residue_4_22 hA hB (h_match A B hsol hA hB)

theorem no_sol_ge_B0_29C_residue_4_22_mod23_of_a23_match
    (h_match :
      ∀ A B : ℕ, A ^ 4 + B ^ 4 = (B + 3) ^ 13 →
        A % 23 = 4 → B % 23 = 22 →
        frey_ap 23 A B = curve32a1_ap 23)
    {A B : ℕ} (_hB : B0_nat ≤ B)
    (_hC : 29 ∣ B + 3)
    (hsol : A ^ 4 + B ^ 4 = (B + 3) ^ 13)
    (hA : A % 23 = 4) (hB23 : B % 23 = 22) : False :=
  no_sol_residue_4_22_mod23_of_a23_match h_match hsol hA hB23

/-- If Ribet put `29 ∣ C` at residual `32` **and** traces matched
    `32a1` at `23` on residue `(4,22) (mod 23)`, that slice dies.
    Does **not** close `(1,6) (mod 7)`. -/
theorem no_sol_ge_B0_29C_of_ribet_and_a23_residue_4_22
    (_h_ribet : ribet_29C_lowers_to_32)
    (h_match :
      ∀ A B : ℕ, A ^ 4 + B ^ 4 = (B + 3) ^ 13 →
        A % 23 = 4 → B % 23 = 22 →
        frey_ap 23 A B = curve32a1_ap 23)
    {A B : ℕ} (hB : B0_nat ≤ B)
    (hC : 29 ∣ B + 3)
    (hA : A % 23 = 4) (hB23 : B % 23 = 22)
    (hsol : A ^ 4 + B ^ 4 = (B + 3) ^ 13) : False :=
  no_sol_ge_B0_29C_residue_4_22_mod23_of_a23_match h_match hB hC hsol hA hB23

/-- `l = 23` does not eliminate every `(1,6) (mod 7)` solution:
    CRT lifts with `a₂₃ = 0` exist, including with `29 ∣ C`. -/
def residue_1_6_eliminated_at_23 : Prop :=
  ∀ A B : ℕ, residue_1_6_good_at_23 A B →
    A ^ 4 + B ^ 4 = (B + 3) ^ 13 →
    frey_ap 23 A B ≠ curve32a1_ap 23

/-- Combined close of the `(1,6)` class on `29 ∣ C`. Uninhabited. -/
def no_sol_ge_B0_29C_1_6_of_l23 : Prop :=
  ∀ B A : ℕ, B0_nat ≤ B → 29 ∣ B + 3 →
    A % 7 = 1 → B % 7 = 6 →
    A ^ 4 + B ^ 4 ≠ (B + 3) ^ 13

/-- Same `e5a95f5` equivalence. The `l = 23` scan does not replace
    C-scaling. -/
theorem LLL_nogo_persists_after_L23 :
    LLL_reduces_C1_to_lt_nine ↔
      ∀ {A B : ℕ}, B0_nat ≤ B → A ^ 4 + B ^ 4 ≠ (B + 3) ^ 13 :=
  LLL_reduces_C1_to_lt_nine_iff_no_sol_ge_B0

#check curve32a1_ap_23
#check exists_lift_mod7_one
#check residue_1_6_has_a23_match_witness
#check residue_1_6_has_a23_mismatch_witness
#check exists_residue_1_6_29C_good23_a23_match
#check witness_15_69_bad_at_23
#check residue_1_6_has_a11_match_witness
#check no_sol_ge_B0_29C_of_ribet_and_a23_residue_4_22
#check residue_1_6_eliminated_at_23
#check no_sol_ge_B0_29C_1_6_of_l23
#check LLL_nogo_persists_after_L23
#print axioms curve32a1_ap_23
#print axioms residue_1_6_has_a23_match_witness
#print axioms witness_15_69_not_onsol_mod23
#print axioms LLL_nogo_persists_after_L23

end BealMatveevBeal.Ribet29CResidue16L23
