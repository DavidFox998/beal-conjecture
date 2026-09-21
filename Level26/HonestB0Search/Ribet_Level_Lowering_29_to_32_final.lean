/-
Copyright (c) 2026 David Fox. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: David Fox
-/
/-
  Honest v29 *final* Ribet / 928→32 display. Lake targets
  `HonestB0Search` and `Level26` (`srcDir` this folder).
  Do **not** add `Beal/Matveev/`. Do **not** import
  `Beal.Matveev.MatveevThm14General` or `BealTrueV25`.
  Do **not** add a Ribet axiom. Do **not** convert the
  parent `def Prop` names on `Ribet_Level_Lowering_29_to_32.lean`.
-/
import Mathlib.Data.Nat.Prime.Basic
import Mathlib.Data.Finset.Basic
import Ribet_Level_Lowering_29_to_32
import Ribet_No_Newforms_At_32_inhabited
import Level32Table
import LLLTargetB8
import LLLTargetB8_C1_lower_bound

/-!
# Ribet `928 → 32` final display (v29)

v31 rename: the three former re-export *names*
`Ribet_928_to_32`, `no_newforms_at_32_mod13`,
`explicit_a29_mod13`, and the former packaged
`Ribet_Level_Lowering_29_to_32_final`, are removed. All
four had the identical type — the inhabited conjunction
from `Ribet_No_Newforms_At_32_inhabited` (`e80431f` /
`a93402e`): `928 / 29 = 32`, `32 · 29 = 928`, `29 ∤ 32`,
`2⁴ = 16`, `16 ∣ 32`, displayed `dim S₂(Γ₀(32)) = 1`,
displayed `dim S₂(Γ₀(16)) = 0`, Sturm `32 · 3 / 2 = 48`,
`2 · 48 / 12 = 8`, Frey-matching Finset `∅` (`card = 0`) —
but their names suggested a level-lowering statement, that
no newforms exist at level `32` mod `13` (the development
records a one-dimensional newspace, `32a1`), or an explicit
computation of `a₂₉`, none of which this file does. The
single canonical name is now
`displayed_level32_arithmetic_and_newspace_data`. There is
no compatibility alias for the old names.

The parent file `Ribet_Level_Lowering_29_to_32.lean` is
unchanged and keeps its own, differently-scoped names as
`def Prop`. This file does not convert them, and the rename
above is local to this namespace.

Kept unchanged (genuinely computed, in `Level32Table.lean`):
`no_match_32a1_of_good_red_29`,
`no_sol_with_good_red_29_of_trace_match`. Those describe
their actual conditional conclusions and are not part of
this rename.

LMFDB / `Level32Table` record `dim S₂(Γ₀(32))` **new**
as `1` (unique `32a1`). The pasted equality
`CuspForms(32,2).new_subspace().dimension() = 0` is
**not** a theorem. Honest display: matching Finset
`card = 0` versus displayed full new dim `1`. SAGE
`sagemath/ribet_no_newforms_32.sage` and
`sagemath/certs/ribet_no_newforms_32.json` pin
`full=1`, `new=1`, `level16=0`, `sturm=8`.

Lean 4.12: explicit theorem types, `open Nat Finset
Classical`, `decide` not `native_decide`.

No `def Prop`. No `sorry`. No new axiom. No Wiles.
-/

namespace BealMatveevBeal.Ribet_Level_Lowering_29_to_32_final

set_option linter.dupNamespace false

open Nat Finset Classical
open BealMatveevBeal.Ribet_Level_Lowering_29_to_32
open BealMatveevBeal.Ribet_No_Newforms_At_32_inhabited
open BealMatveevBeal.Level32Table
open BealMatveevBeal.BealMatveevBealV25B0Search
open BealMatveevBeal.LLLTargetB8

/-! ## Explicit Lean 4.12 numeral types — `decide`, not `native_decide` -/

theorem nine_twenty_eight_div_twenty_nine : 928 / 29 = 32 := by decide

theorem thirty_two_mul_twenty_nine : (32 : ℕ) * 29 = 928 := by decide

theorem twenty_nine_nmid_thirty_two : ¬ 29 ∣ (32 : ℕ) := by decide

theorem two_pow_four_eq_sixteen : (2 : ℕ) ^ 4 = 16 := by decide

theorem sixteen_dvd_thirty_two : 16 ∣ (32 : ℕ) := by decide

theorem displayed_S2_Gamma0_32_dim : S2_Gamma0_32_dim = 1 :=
  S2_Gamma0_32_dim_eq_one_reexport'

theorem displayed_S2_Gamma0_16_dim : S2_Gamma0_16_dim = 0 :=
  S2_Gamma0_16_dim_eq

theorem displayed_index_sturm_48 : (32 : ℕ) * 3 / 2 = 48 := by decide

theorem displayed_sturm_bound_8 : (2 : ℕ) * 48 / 12 = 8 := by decide

theorem displayed_matching_empty_card :
    ((∅ : Finset ℕ).card) = 0 := by decide

/-- Canonical v31 name for the packaged displayed data:
    numerals plus the empty Frey-matching Finset versus the
    displayed newspace dimension `1`. Re-export of
    `no_newforms_at_32` (`e80431f`). Not abstract Ribet level
    lowering, not a claim that no newforms exist at level
    `32` mod `13` (LMFDB records dimension `1`, newform
    `32a1`), not Sage `new_subspace().dimension() = 0`, and
    not a computation of `a₂₉`. Replaces the removed aliases
    `Ribet_928_to_32`, `no_newforms_at_32_mod13`,
    `explicit_a29_mod13`, and the removed packaged
    `Ribet_Level_Lowering_29_to_32_final` (v29 and earlier),
    all of which had this exact type. -/
theorem displayed_level32_arithmetic_and_newspace_data :
    928 / 29 = 32 ∧
      (32 : ℕ) * 29 = 928 ∧
      ¬ 29 ∣ 32 ∧
      S2_Gamma0_32_dim = 1 ∧
      displayed_old_level = 16 ∧
      S2_Gamma0_16_dim = 0 ∧
      (2 : ℕ) ^ 4 = 16 ∧
      16 ∣ 32 ∧
      (32 : ℕ) * 3 / 2 = 48 ∧
      (2 : ℕ) * 48 / 12 = 8 ∧
      displayed_frey_matching_newforms.card = 0 ∧
      S2_Gamma0_32_dim ≠ displayed_frey_matching_newforms.card :=
  no_newforms_at_32

theorem LLL_nogo_persists_after_Ribet_928_to_32_v29 :
    LLL_reduces_C1_to_lt_nine ↔
      ∀ {A B : ℕ}, BealMatveevBealV25B0Search.B0_nat ≤ B →
        A ^ 4 + B ^ 4 ≠ (B + 3) ^ 13 :=
  LLL_nogo_persists_after_Ribet_No_Newforms_v28

#check nine_twenty_eight_div_twenty_nine
#check thirty_two_mul_twenty_nine
#check twenty_nine_nmid_thirty_two
#check two_pow_four_eq_sixteen
#check sixteen_dvd_thirty_two
#check displayed_S2_Gamma0_32_dim
#check displayed_S2_Gamma0_16_dim
#check displayed_index_sturm_48
#check displayed_sturm_bound_8
#check displayed_matching_empty_card
#check displayed_level32_arithmetic_and_newspace_data
#check BealMatveevBeal.Ribet_Level_Lowering_29_to_32.Ribet_928_to_32
#check BealMatveevBeal.Ribet_Level_Lowering_29_to_32.no_newforms_at_32_mod13
#check BealMatveevBeal.Ribet_Level_Lowering_29_to_32.explicit_a29_mod13
#print axioms nine_twenty_eight_div_twenty_nine
#print axioms displayed_matching_empty_card
#print axioms displayed_S2_Gamma0_32_dim
#print axioms displayed_level32_arithmetic_and_newspace_data
#print axioms LLL_nogo_persists_after_Ribet_928_to_32_v29

end BealMatveevBeal.Ribet_Level_Lowering_29_to_32_final
