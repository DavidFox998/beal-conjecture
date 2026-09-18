/-
Copyright (c) 2026 David Fox. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: David Fox
-/
/-
  Root module. Separate Lake target `BealMatveevBealV25B0Search`.
  Do **not** add `Beal/Matveev/Level32Table.lean`:
  `.submodules Beal.Matveev` would pull it into the default glob.
  Do **not** import `Beal.Matveev.MatveevThm14General`,
  `Beal.Matveev.BealMatveevBealV25B0Search`, or
  `Beal.Matveev.PAdicLLL`.
-/
import BealMatveevBealV25B0Search
import DarmonMerelFrey4413
import LLLTargetB8_C1_lower_bound

/-!
# Level 32 newform table (LMFDB `32a1`, not a v25 mint)

LMFDB: `S₂(Γ₀(32))` has dimension `1`, unique newform `32a1`,
attached to `E : y² = x³ + 4x` of conductor 32.
Certificate:
<https://www.lmfdb.org/ModularForm/GL2/Q/holomorphic/32/2/a/a/>
(the `/32/2/0/a/` URL is the same object). q-expansion
`q − 2q⁵ − 3q⁹ + 6q¹³ + ⋯`.

The dimension numeral is **LMFDB data**, not a Mathlib theorem
that `dim S₂(Γ₀(32)) = 1`. Coefficients `a₃=0`, `a₅=−2`, `a₇=0`,
`a₁₃=6`, `a₂₉=−10` are **recomputed** by counting points of
`y² = x³ + 4x` over `𝔽_p`.

Frey traces of `y² = x(x−A⁴)(x+B⁴)`:

* Good reduction at `3` or `5` **matches** `32a1` (`a₃=0`, `a₅=−2`).
  Those primes do not eliminate.
* At `7`, some on-solution residues match (`A≡1, B≡6`) and some
  do not (`A≡2, B≡3`, `a₇=−4`).
* At `29`, **every** good-reduction on-solution residue has
  `a₂₉ ≠ −10`. A solution with `29 ∤ ABC` cannot arise from
  `32a1`. Solutions with `29 ∣ ABC` are not killed.

So `level_32_no_newform` / `level_32_no_newform_for_Frey_gap3`
stay `def Prop`. The implication “Ribet + empty table ⇒ no
`B ≥ B0` solution” does **not** inhabit either hypothesis.
That is the `e5a95f5` LLL nogo: `LLL_reduces_C1_to_lt_nine` is
equivalent to no `B ≥ B0` solution, not a C-scaling close.

Does **not** mint v25. 0 sorry. 0 new axioms.
`C1_floor = 143186215390`. `B0_nat = 1000000`.
Tag `v24-v24x-final-rank3-shape-nogo` stays at `c1d173e`.
-/

namespace BealMatveevBeal.Level32Table

open BealMatveevBeal.BealMatveevBealV25B0Search
open BealMatveevBeal.DarmonMerelFrey4413
open BealMatveevBeal.LLLTargetB8
open BealMatveevBeal.LLLTargetB8C1LowerBound
open Nat

/-! ## LMFDB numerals (not a Mathlib dimension theorem) -/

/-- LMFDB `dim S₂(Γ₀(32))`. Not `ModularForm` in Mathlib 4.12. -/
def S2_Gamma0_32_dim : ℕ := 1

theorem S2_Gamma0_32_dim_eq_one : S2_Gamma0_32_dim = 1 := rfl

def S2_Gamma0_32_newforms : List String := ["32a1"]

theorem S2_Gamma0_32_newforms_length :
    S2_Gamma0_32_newforms.length = S2_Gamma0_32_dim := rfl

/-- Recorded `a_n(32a1)` from LMFDB / the curve `y² = x³ + 4x`.
    Missing indices are `none`, not a fake `0`. -/
def newform_32a1_ap_table : List (ℕ × ℤ) :=
  [(1, 1), (3, 0), (5, -2), (7, 0), (9, -3), (11, 0), (13, 6),
   (17, 2), (19, 0), (23, 0), (29, -10)]

def newform_32a1_ap (n : ℕ) : Option ℤ :=
  (newform_32a1_ap_table.find? (fun pair => pair.1 = n)).map Prod.snd

theorem newform_32a1_ap_1 : newform_32a1_ap 1 = some 1 := by decide
theorem newform_32a1_ap_3 : newform_32a1_ap 3 = some 0 := by decide
theorem newform_32a1_ap_5 : newform_32a1_ap 5 = some (-2) := by decide
theorem newform_32a1_ap_7 : newform_32a1_ap 7 = some 0 := by decide
theorem newform_32a1_ap_9 : newform_32a1_ap 9 = some (-3) := by decide
theorem newform_32a1_ap_13 : newform_32a1_ap 13 = some 6 := by decide
theorem newform_32a1_ap_29 : newform_32a1_ap 29 = some (-10) := by decide

/-- Weight-2 trivial-character Hecke recurrence `a_{p²} = a_p² − p`
    at `p = 3`: `0 − 3 = −3`. -/
theorem a9_of_a3 :
    (0 : ℤ) ^ 2 - 3 = -3 := by decide

/-! ## Point counting over `𝔽_p` -/

/-- Number of `y` with `y² ≡ r (mod p)`. Euler’s criterion at an
    odd prime: `1` if `r ≡ 0`, `2` if quadratic residue, else `0`. -/
def sqCount (p r : ℕ) : ℕ :=
  let r' := r % p
  if r' = 0 then 1
  else if r' ^ ((p - 1) / 2) % p = 1 then 2 else 0

def rhsFreyNat (p A B x : ℕ) : ℕ :=
  let A4 := A ^ 4 % p
  let B4 := B ^ 4 % p
  let a2 := (B4 + p - A4) % p
  let a4 := (p - A4 * B4 % p) % p
  let x2 := x * x % p
  let x3 := x2 * x % p
  (x3 + a2 * x2 + a4 * x) % p

def affineCountFrey (p A B : ℕ) : ℕ :=
  (List.range p).foldl (fun acc x => acc + sqCount p (rhsFreyNat p A B x)) 0

/-- `a_p = p + 1 − #E(𝔽_p) = p − #affine`, one point at infinity. -/
def frey_ap (p A B : ℕ) : ℤ :=
  (p : ℤ) - (affineCountFrey p A B : ℤ)

/-- `y² = x³ + 4x` (LMFDB 32.a1 / `32a1`). -/
def rhs32a1 (p x : ℕ) : ℕ :=
  (x ^ 3 + 4 * x) % p

def affineCount32a1 (p : ℕ) : ℕ :=
  (List.range p).foldl (fun acc x => acc + sqCount p (rhs32a1 p x)) 0

def curve32a1_ap (p : ℕ) : ℤ :=
  (p : ℤ) - (affineCount32a1 p : ℤ)

theorem sqCount_five :
    sqCount 5 0 = 1 ∧ sqCount 5 1 = 2 ∧ sqCount 5 2 = 0 ∧
      sqCount 5 4 = 2 := by native_decide

theorem curve32a1_ap_3 : curve32a1_ap 3 = 0 := by native_decide
theorem curve32a1_ap_5 : curve32a1_ap 5 = -2 := by native_decide
theorem curve32a1_ap_7 : curve32a1_ap 7 = 0 := by native_decide
theorem curve32a1_ap_13 : curve32a1_ap 13 = 6 := by native_decide
theorem curve32a1_ap_29 : curve32a1_ap 29 = -10 := by native_decide

theorem lmfdb_32a1_qexp_matches_curve :
    curve32a1_ap 3 = 0 ∧ curve32a1_ap 5 = -2 ∧ curve32a1_ap 7 = 0 ∧
      curve32a1_ap 13 = 6 ∧ curve32a1_ap 29 = -10 :=
  ⟨curve32a1_ap_3, curve32a1_ap_5, curve32a1_ap_7,
    curve32a1_ap_13, curve32a1_ap_29⟩

/-! ## Frey traces at `l = 3, 5` match `32a1` (do not eliminate) -/

theorem frey_a3_match_32a1 :
    ∀ (A B : Fin 3),
      A.val ≠ 0 → B.val ≠ 0 →
        (A.val ^ 4 + B.val ^ 4) % 3 ≠ 0 →
        (A.val ^ 4 + B.val ^ 4) % 3 = ((B.val + 3) ^ 13) % 3 →
        frey_ap 3 A.val B.val = 0 := by
  native_decide

theorem frey_a5_match_32a1 :
    ∀ (A B : Fin 5),
      A.val ≠ 0 → B.val ≠ 0 →
        (A.val ^ 4 + B.val ^ 4) % 5 ≠ 0 →
        (A.val ^ 4 + B.val ^ 4) % 5 = ((B.val + 3) ^ 13) % 5 →
        frey_ap 5 A.val B.val = -2 := by
  native_decide

theorem frey_a3_example : frey_ap 3 1 2 = 0 := by native_decide
theorem frey_a5_example : frey_ap 5 1 4 = -2 := by native_decide

/-! ## `l = 7`: mixed — some residues match, some do not -/

theorem frey_a7_match_example : frey_ap 7 1 6 = 0 := by native_decide
theorem frey_a7_mismatch_example : frey_ap 7 2 3 = -4 := by native_decide

/-! ## `l = 29`: every good on-solution residue mismatches `32a1` -/

theorem frey_a29_ne_32a1_fin :
    ∀ (A B : Fin 29),
      A.val ≠ 0 → B.val ≠ 0 →
        (A.val ^ 4 + B.val ^ 4) % 29 ≠ 0 →
        (A.val ^ 4 + B.val ^ 4) % 29 = ((B.val + 3) ^ 13) % 29 →
        frey_ap 29 A.val B.val ≠ (-10 : ℤ) := by
  native_decide

theorem add_pow4_mod (p A B : ℕ) :
    ((A % p) ^ 4 + (B % p) ^ 4) % p = (A ^ 4 + B ^ 4) % p := by
  have hA := Nat.pow_mod A 4 p
  have hB := Nat.pow_mod B 4 p
  calc
    ((A % p) ^ 4 + (B % p) ^ 4) % p
        = ((A % p) ^ 4 % p + (B % p) ^ 4 % p) % p := Nat.add_mod _ _ p
    _ = (A ^ 4 % p + B ^ 4 % p) % p := by rw [← hA, ← hB]
    _ = (A ^ 4 + B ^ 4) % p := (Nat.add_mod _ _ p).symm

theorem pow13_add3_mod {p B : ℕ} (hp : 3 < p) :
    ((B % p + 3) ^ 13) % p = (B + 3) ^ 13 % p := by
  have h3 : 3 % p = 3 := Nat.mod_eq_of_lt hp
  have hsum : (B + 3) % p = (B % p + 3) % p := by
    rw [Nat.add_mod, h3]
  have hpow := Nat.pow_mod (B + 3) 13 p
  have hpow' := Nat.pow_mod (B % p + 3) 13 p
  calc
    ((B % p + 3) ^ 13) % p
        = ((B % p + 3) % p) ^ 13 % p := hpow'
    _ = ((B + 3) % p) ^ 13 % p := by rw [← hsum]
    _ = (B + 3) ^ 13 % p := hpow.symm

theorem not_dvd_mod_ne {p n : ℕ} (h : ¬ p ∣ n) : n % p ≠ 0 :=
  fun h0 => h (dvd_of_mod_eq_zero h0)

/-- A gap-3 solution with good reduction at `29` cannot match
    `32a1` (`a₂₉ = −10`). Does **not** rule out `29 ∣ ABC`. -/
theorem no_match_32a1_of_good_red_29
    {A B : ℕ}
    (hsol : A ^ 4 + B ^ 4 = (B + 3) ^ 13)
    (hA : ¬ 29 ∣ A) (hB : ¬ 29 ∣ B) (hC : ¬ 29 ∣ B + 3) :
    frey_ap 29 (A % 29) (B % 29) ≠ (-10 : ℤ) := by
  have hp : (0 : ℕ) < 29 := by decide
  have hA0 : A % 29 ≠ 0 := not_dvd_mod_ne hA
  have hB0 : B % 29 ≠ 0 := not_dvd_mod_ne hB
  have hAft : A % 29 < 29 := mod_lt A hp
  have hBft : B % 29 < 29 := mod_lt B hp
  have hpow4 := add_pow4_mod 29 A B
  have hpow13 := pow13_add3_mod (p := 29) (B := B) (by decide)
  have hsolmod : (A ^ 4 + B ^ 4) % 29 = (B + 3) ^ 13 % 29 := by
    rw [hsol]
  have honsol :
      ((A % 29) ^ 4 + (B % 29) ^ 4) % 29 =
        ((B % 29 + 3) ^ 13) % 29 := by
    rw [hpow4, hsolmod, hpow13]
  have hDelta : ((A % 29) ^ 4 + (B % 29) ^ 4) % 29 ≠ 0 := by
    intro h0
    have h13 : (B + 3) ^ 13 % 29 = 0 := by
      rw [← hsolmod, ← hpow4, h0]
    have hdvd : 29 ∣ (B + 3) ^ 13 := dvd_of_mod_eq_zero h13
    have hP : Nat.Prime 29 := by decide
    exact hC (hP.dvd_of_dvd_pow hdvd)
  exact frey_a29_ne_32a1_fin ⟨A % 29, hAft⟩ ⟨B % 29, hBft⟩
    hA0 hB0 hDelta honsol

/-- If modularity/Ribet forced `a₂₉(Frey) = a₂₉(32a1)` at good
    reduction, there is no solution with `29 ∤ ABC`. -/
theorem no_sol_with_good_red_29_of_trace_match
    (h_match :
      ∀ A B : ℕ, A ^ 4 + B ^ 4 = (B + 3) ^ 13 →
        ¬ 29 ∣ A → ¬ 29 ∣ B → ¬ 29 ∣ B + 3 →
        frey_ap 29 (A % 29) (B % 29) = (-10 : ℤ))
    {A B : ℕ}
    (hsol : A ^ 4 + B ^ 4 = (B + 3) ^ 13)
    (hA : ¬ 29 ∣ A) (hB : ¬ 29 ∣ B) (hC : ¬ 29 ∣ B + 3) : False :=
  no_match_32a1_of_good_red_29 hsol hA hB hC (h_match A B hsol hA hB hC)

/-! ## Empty-table claim stays `def Prop` -/

/-- Kraus claim: every positive solution has a good prime of
    trace mismatch with `32a1`. Uninhabited: `l = 3,5` match,
    and solutions with `29 ∣ ABC` survive the `p = 29` scan. -/
def level_32_no_newform_for_Frey_gap3 : Prop :=
  ∀ A B : ℕ, A ^ 4 + B ^ 4 = (B + 3) ^ 13 → 0 < B →
    ∃ l : ℕ, Nat.Prime l ∧ l ≠ 2 ∧ l ≠ 13 ∧
      ¬ l ∣ A ∧ ¬ l ∣ B ∧ ¬ l ∣ B + 3 ∧
      some (frey_ap l (A % l) (B % l)) ≠ newform_32a1_ap l

/-- Alias of the displayed residual empty-table claim. Still
    uninhabited: dim-1 + `{32a1}` is not Kraus elimination. -/
def level_32_no_newform : Prop :=
  BealMatveevBeal.DarmonMerelFrey4413.level_32_no_newform

/-- If Ribet put every `B > 0` solution at residual 32 and the
    level-32 table were empty, there would be no `B ≥ B0`
    solution. Does **not** inhabit either hypothesis. -/
theorem no_sol_ge_B0_of_level_32_table
    (h_ribet : ribet_lowers_Frey_to_level_32)
    (h_no_match : BealMatveevBeal.DarmonMerelFrey4413.level_32_no_newform)
    {A B : ℕ} (hB : B0_nat ≤ B)
    (hsol : A ^ 4 + B ^ 4 = (B + 3) ^ 13) : False :=
  no_sol_ge_B0_of_ribet_and_level_32_table h_ribet h_no_match hB hsol

/-- Same vacuous LLL converse as `e5a95f5`: no `B ≥ B0` solution
    ⇒ `LLL_reduces_C1_to_lt_nine`. A completed level-32 table
    would explain the LLL nogo without C scaling. -/
theorem LLL_reduces_C1_to_lt_nine_of_no_sol_ge_B0_level32
    (h : ∀ B : ℕ, B0_nat ≤ B → ∀ A : ℕ,
      A ^ 4 + B ^ 4 ≠ (B + 3) ^ 13) :
    LLL_reduces_C1_to_lt_nine :=
  LLL_reduces_C1_to_lt_nine_of_no_sol_ge_B0_frey h

theorem level_32_table_lmfdb_numerals :
    S2_Gamma0_32_dim = 1 ∧ S2_Gamma0_32_newforms.length = 1 :=
  ⟨S2_Gamma0_32_dim_eq_one, S2_Gamma0_32_newforms_length⟩

#check S2_Gamma0_32_dim_eq_one
#check newform_32a1_ap_5
#check curve32a1_ap_5
#check frey_a3_match_32a1
#check frey_a5_match_32a1
#check frey_a7_mismatch_example
#check no_match_32a1_of_good_red_29
#check level_32_no_newform_for_Frey_gap3
#check no_sol_ge_B0_of_level_32_table
#check LLL_reduces_C1_to_lt_nine_of_no_sol_ge_B0_level32
#print axioms curve32a1_ap_5
#print axioms frey_a3_match_32a1
#print axioms no_match_32a1_of_good_red_29
#print axioms no_sol_ge_B0_of_level_32_table

end BealMatveevBeal.Level32Table
