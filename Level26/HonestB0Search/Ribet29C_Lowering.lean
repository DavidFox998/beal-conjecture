/-
Copyright (c) 2026 David Fox. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: David Fox
-/
/-
  Root module. Separate Lake target `BealMatveevBealV25B0Search`.
  Do **not** add `Beal/Matveev/Ribet29C_Lowering.lean`:
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
import Level928Table
import LLLTargetB8_C1_lower_bound

/-!
# `29 ∣ C` lowering candidate and the `l = 7` residue `A≡2, B≡3`

`61c1980` proved that `29` divides at most one of `A,B,C`. This
file treats the remaining **`29 ∣ C`, `29 ∤ AB`** branch:

* `v₂₉(Δ) = 26 v₂₉(C)` and `13 ∣ v₂₉(Δ)` already in
  `Level928Table` (`padicValNat`, not a `v_p := 0` stub).
* Ribet “unramified at `29` ⇒ residual conductor divides `32`”
  stays `def Prop`. No new axiom. `B` even still puts `2` in
  `rad(AB)`, so displayed odd residual need not be `32`.
* At `l = 7`, residue `(A,B) ≡ (2,3)` is on-solution, good
  reduction, and `a₇ = −4 ≠ 0 = a₇(32a1)`. That **slice** dies
  if traces must match `32a1`. Residue `(1,6)` still matches
  (`a₇ = 0`), so the whole `29 ∣ C` branch stays `def Prop`.

Does **not** mint v25. 0 sorry. 0 new axioms.
`C1_floor = 143186215390`. `B0_nat = 1000000`.
Tag `v24-v24x-final-rank3-shape-nogo` stays at `c1d173e`.
-/

namespace BealMatveevBeal.Ribet29CLowering

open BealMatveevBeal.BealMatveevBealV25B0Search
open BealMatveevBeal.DarmonMerelFrey4413
open BealMatveevBeal.Level32Table
open BealMatveevBeal.Level928Table
open BealMatveevBeal.LLLTargetB8
open BealMatveevBeal.LLLTargetB8C1LowerBound
open Nat

/-! ## Re-export: `v₂₉(Δ) = 26 v₂₉(C)` when `29 ∤ AB` -/

theorem v29_Delta_of_29_dvd_C {A B : ℕ}
    (hsol : A ^ 4 + B ^ 4 = (B + 3) ^ 13)
    (hA : A ≠ 0) (hB : B ≠ 0)
    (hpA : ¬ 29 ∣ A) (hpB : ¬ 29 ∣ B) :
    padicValNat 29 (freyDiscNat A B) =
      26 * padicValNat 29 (B + 3) :=
  padicValNat_freyDiscNat_29_at_C hsol hA hB hpA hpB

theorem thirteen_dvd_26_mul_v29_C (B : ℕ) :
    13 ∣ 26 * padicValNat 29 (B + 3) :=
  Dvd.dvd.mul_right thirteen_dvd_twenty_six _

theorem thirteen_dvd_v29_Delta_of_29_dvd_C {A B : ℕ}
    (hsol : A ^ 4 + B ^ 4 = (B + 3) ^ 13)
    (hBpos : 1 ≤ B)
    (hpA : ¬ 29 ∣ A) (hpB : ¬ 29 ∣ B) (hpC : 29 ∣ B + 3) :
    13 ∣ padicValNat 29 (freyDiscNat A B) ∧
      26 ≤ padicValNat 29 (freyDiscNat A B) :=
  thirteen_dvd_v29_Delta_of_only_C hsol hBpos hpA hpB hpC

/-! ## Ribet at `29 ∣ C` stays `def Prop` (no new axiom) -/

/-- If `13 ∣ v₂₉(Δ)` then `ρ_{E,13}` is unramified at `29` and the
    remaining odd residual divides `32`. Uninhabited: other odd
    primes in `AB` need not drop, and `B` even puts `2` in `rad(AB)`.
    Not an axiom; the only Darmon–Merel axiom is
    `BealTrueV25.darmon_merel_4413_axiom`. -/
def ribet_unramified_at_29_of_dvd_C : Prop :=
  ∀ A B : ℕ, A ^ 4 + B ^ 4 = (B + 3) ^ 13 →
    29 ∣ B + 3 → ¬ 29 ∣ A → ¬ 29 ∣ B →
      residualOddEstimate A B ∣ 32

def ribet_29C_lowers_to_32 : Prop :=
  ribet_unramified_at_29_of_dvd_C

/-! ## Point-count traces depend only on `A, B mod p` -/

theorem rhsFreyNat_mod (p A B x : ℕ) :
    rhsFreyNat p A B x = rhsFreyNat p (A % p) (B % p) x := by
  simp [rhsFreyNat, Nat.pow_mod A 4 p, Nat.pow_mod B 4 p]

theorem affineCountFrey_mod (p A B : ℕ) :
    affineCountFrey p A B = affineCountFrey p (A % p) (B % p) := by
  unfold affineCountFrey
  have h :
      (fun acc x => acc + sqCount p (rhsFreyNat p A B x)) =
        fun acc x => acc + sqCount p (rhsFreyNat p (A % p) (B % p) x) := by
    funext acc x
    rw [rhsFreyNat_mod]
  rw [h]

theorem frey_ap_mod (p A B : ℕ) :
    frey_ap p A B = frey_ap p (A % p) (B % p) := by
  simp [frey_ap, affineCountFrey_mod]

/-! ## Residue `(2,3) mod 7`: on-solution, good reduction, `a₇ = −4` -/

theorem residue_2_3_mod7_cong :
    (2 ^ 4 + 3 ^ 4) % 7 = ((3 + 3) ^ 13) % 7 := by decide

theorem residue_2_3_good_red_7 :
    ¬ 7 ∣ 2 ∧ ¬ 7 ∣ 3 ∧ ¬ 7 ∣ 3 + 3 := by decide

theorem a7_mismatch_at_2_3 :
    frey_ap 7 2 3 = -4 ∧ curve32a1_ap 7 = 0 :=
  ⟨frey_a7_mismatch_example, curve32a1_ap_7⟩

theorem a7_match_at_1_6 :
    frey_ap 7 1 6 = 0 :=
  frey_a7_match_example

theorem not_dvd_seven_of_mod {n r : ℕ}
    (hr : r ≠ 0) (h : n % 7 = r) : ¬ 7 ∣ n := by
  intro hd
  have hz : n % 7 = 0 := mod_eq_zero_of_dvd hd
  exact hr (h ▸ hz)

theorem seven_good_of_residue_2_3 {A B : ℕ}
    (hA : A % 7 = 2) (hB : B % 7 = 3) :
    ¬ 7 ∣ A ∧ ¬ 7 ∣ B ∧ ¬ 7 ∣ B + 3 := by
  refine ⟨not_dvd_seven_of_mod (by decide : (2 : ℕ) ≠ 0) hA,
    not_dvd_seven_of_mod (by decide : (3 : ℕ) ≠ 0) hB, ?_⟩
  have hC : (B + 3) % 7 = 6 := by
    have h3 : 3 % 7 = 3 := by decide
    calc
      (B + 3) % 7 = (B % 7 + 3 % 7) % 7 := Nat.add_mod B 3 7
      _ = (3 + 3) % 7 := by rw [hB, h3]
      _ = 6 := by decide
  exact not_dvd_seven_of_mod (by decide : (6 : ℕ) ≠ 0) hC

theorem a7_of_residue_2_3 {A B : ℕ}
    (hA : A % 7 = 2) (hB : B % 7 = 3) :
    frey_ap 7 A B = -4 := by
  have h := frey_ap_mod 7 A B
  rw [hA, hB] at h
  rw [h, frey_a7_mismatch_example]

theorem a7_ne_32a1_of_residue_2_3 {A B : ℕ}
    (hA : A % 7 = 2) (hB : B % 7 = 3) :
    frey_ap 7 A B ≠ curve32a1_ap 7 := by
  rw [a7_of_residue_2_3 hA hB, curve32a1_ap_7]
  decide

/-- CRT class `B ≡ 3 (mod 7)` and `B ≡ −3 (mod 29)` is nonempty.
    Not a global gap-3 solution. -/
theorem exists_B_mod_203_residue_7_and_29 :
    ∃ n < 203, n % 7 = 3 ∧ n % 29 = 26 :=
  ⟨171, by decide, by decide, by decide⟩

/-- Existence of a global solution in this class stays `def Prop`. -/
def residue_2_3_mod7_on_solution : Prop :=
  ∃ A B : ℕ, A % 7 = 2 ∧ B % 7 = 3 ∧
    A ^ 4 + B ^ 4 = (B + 3) ^ 13 ∧ 29 ∣ B + 3

/-! ## Implications: match-at-7 kills residue `(2,3)`, not all `29 ∣ C` -/

/-- If modularity/Ribet forced `a₇(Frey) = a₇(32a1)` on this
    residue, there is no such solution. -/
theorem no_sol_residue_2_3_of_a7_match
    (h_match :
      ∀ A B : ℕ, A ^ 4 + B ^ 4 = (B + 3) ^ 13 →
        A % 7 = 2 → B % 7 = 3 →
        frey_ap 7 A B = curve32a1_ap 7)
    {A B : ℕ}
    (hsol : A ^ 4 + B ^ 4 = (B + 3) ^ 13)
    (hA : A % 7 = 2) (hB : B % 7 = 3) : False :=
  a7_ne_32a1_of_residue_2_3 hA hB (h_match A B hsol hA hB)

/-- Same slice on the `29 ∣ C` branch. Does **not** close residues
    that match at `7` (e.g. `(1,6)`). -/
theorem no_sol_ge_B0_29C_residue_2_3_of_a7_match
    (h_match :
      ∀ A B : ℕ, A ^ 4 + B ^ 4 = (B + 3) ^ 13 →
        A % 7 = 2 → B % 7 = 3 →
        frey_ap 7 A B = curve32a1_ap 7)
    {A B : ℕ} (_hB : B0_nat ≤ B)
    (_hC : 29 ∣ B + 3)
    (hsol : A ^ 4 + B ^ 4 = (B + 3) ^ 13)
    (hA : A % 7 = 2) (hB7 : B % 7 = 3) : False :=
  no_sol_residue_2_3_of_a7_match h_match hsol hA hB7

/-- If Ribet put `29 ∣ C` solutions at residual `32` **and** traces
    matched `32a1` at `7` on residue `(2,3)`, that slice dies.
    Neither hypothesis is inhabited. `h_ribet` is recorded so the
    lowering claim stays visible; the contradiction is the `a₇`
    mismatch. -/
theorem no_sol_ge_B0_29C_branch_of_ribet_and_a7
    (_h_ribet : ribet_29C_lowers_to_32)
    (h_match :
      ∀ A B : ℕ, A ^ 4 + B ^ 4 = (B + 3) ^ 13 →
        A % 7 = 2 → B % 7 = 3 →
        frey_ap 7 A B = curve32a1_ap 7)
    {A B : ℕ} (hB : B0_nat ≤ B)
    (hC : 29 ∣ B + 3)
    (hA : A % 7 = 2) (hB7 : B % 7 = 3)
    (hsol : A ^ 4 + B ^ 4 = (B + 3) ^ 13) : False :=
  no_sol_ge_B0_29C_residue_2_3_of_a7_match h_match hB hC hsol hA hB7

/-- Full `29 ∣ C` close. Uninhabited: `(1,6) mod 7` matches `32a1`. -/
def no_sol_ge_B0_29C_branch : Prop :=
  ∀ B A : ℕ, B0_nat ≤ B → 29 ∣ B + 3 →
    A ^ 4 + B ^ 4 ≠ (B + 3) ^ 13

/-- Same `e5a95f5` equivalence. `29 ∣ C` lowering does not replace
    C-scaling. -/
theorem LLL_nogo_persists_after_Ribet29C :
    LLL_reduces_C1_to_lt_nine ↔
      ∀ {A B : ℕ}, B0_nat ≤ B → A ^ 4 + B ^ 4 ≠ (B + 3) ^ 13 :=
  LLL_reduces_C1_to_lt_nine_iff_no_sol_ge_B0

#check v29_Delta_of_29_dvd_C
#check thirteen_dvd_v29_Delta_of_29_dvd_C
#check ribet_29C_lowers_to_32
#check a7_ne_32a1_of_residue_2_3
#check no_sol_ge_B0_29C_branch_of_ribet_and_a7
#check no_sol_ge_B0_29C_branch
#check LLL_nogo_persists_after_Ribet29C
#print axioms v29_Delta_of_29_dvd_C
#print axioms a7_ne_32a1_of_residue_2_3
#print axioms no_sol_ge_B0_29C_branch_of_ribet_and_a7
#print axioms LLL_nogo_persists_after_Ribet29C

end BealMatveevBeal.Ribet29CLowering
