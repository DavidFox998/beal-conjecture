/-
Copyright (c) 2026 David Fox. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: David Fox
-/
/-
  Honest Kolyvagin / Fintype *display* for v28. Separate Lake
  targets `HonestB0Search` and `Level26` (`srcDir` this
  folder). Do **not** add `Beal/Matveev/`. Do **not**
  import `Beal.Matveev.MatveevThm14General` or
  `BealTrueV25`. Do **not** add a Kolyvagin axiom.
  Do **not** overwrite `BSD_MordellWeil.lean`.
-/
import Mathlib.Data.Nat.Prime.Basic
import Mathlib.Data.Finset.Basic
import Kolyvagin_MW_Rank0_26a1_26b1
import TwoDescent_26a1_26
import BSD_MordellWeil
import J0_26_BSD_26a1_26b1
import LLLTargetB8_C1_lower_bound
import Mathlib.Data.Fintype.Basic
import Mathlib.Data.Fintype.Card

/-!
# `Nonempty (Fintype α) → Fintype α` (v28)

Inhabits the **typeclass upgrade** and the Kolyvagin *display*
from `Kolyvagin_MW_Rank0_26a1_26b1_inhabited` (`6e88d94` /
`51bba93`):

* `Nonempty (Fintype α) ↔ Finite α`
* `Fintype.ofFinite` extracts data from `Finite`
* `Nonempty (Fintype α) → Fintype α` via that pair
  (`Classical.choice` on `.some`)
* `Fintype.ofSubsingleton a` when `Subsingleton α` and a
  witness `a` exists (card `1`)
* `|Sel₂| = 1`, `3 · 7 = 21`, `L/Ω = 1/3` and `1/7`
* `¬ IsRankZero` on Cremona `26a1` / `26b1`

`IsRankZero := Subsingleton` is **refuted** on both models
(torsion points `(4,4)` / `(1,0)`). The Subsingleton→Fintype
path therefore does **not** apply to those `MordellWeilGroup`s.
Algebraic MW rank 0 as `Nonempty (Fintype (E(ℚ)))` stays
`def Prop` on the parent.

Parent names `MW_rank_zero_fintype`,
`Kolyvagin_L_nonzero_imp_MW_rank_zero`,
`TwoDescent_implies_MW_rank_zero_fintype` stay `def Prop`.

No `def Prop` in this file. No `sorry`. No new axiom.
No Wiles. No Kato/Kolyvagin.
-/

set_option linter.dupNamespace false

namespace BealMatveevBeal.Kolyvagin_Fintype_Subsingleton_inhabited

open Nat Finset Classical
open BealMatveevBeal.BealMatveevBealV25B0Search
open BealMatveevBeal.Kolyvagin_MW_Rank0_26a1_26b1
open BealMatveevBeal.TwoDescent_26a1_26
open BealMatveevBeal.BSD_MordellWeil
open BealMatveevBeal.J0_26_BSD_26a1_26b1
open BealMatveevBeal.LLLTargetB8
open BealMatveevBeal.LLLTargetB8C1LowerBound

/-! ## Re-export parent numerals (`6e88d94`) -/

theorem not_IsRankZero_26a1_reexport' :
    ¬ MordellWeilGroup.IsRankZero curve26a1_Q :=
  not_IsRankZero_26a1_reexport

theorem not_IsRankZero_26b1_reexport' :
    ¬ MordellWeilGroup.IsRankZero curve26b1_Q :=
  not_IsRankZero_26b1_reexport

theorem Sel2_card_both_one_reexport :
    Sel2_card_26a1 = 1 ∧ Sel2_card_26b1 = 1 :=
  Sel2_card_both_one

theorem torsion_3_mul_7_eq_21_reexport :
    TorsionOrder_26a1 * TorsionOrder_26b1 = 21 :=
  torsion_3_mul_7_eq_21

theorem L_over_Omega_26a1_eq_one_third_reexport :
    BealMatveevBeal.J0_26_BSD_26a1_26b1.L_over_Omega_26a1 = (1 / 3 : ℚ) :=
  BealMatveevBeal.J0_26_BSD_26a1_26b1.L_over_Omega_26a1_eq

theorem L_over_Omega_26b1_eq_one_seventh_reexport :
    BealMatveevBeal.J0_26_BSD_26a1_26b1.L_over_Omega_26b1 = (1 / 7 : ℚ) :=
  BealMatveevBeal.J0_26_BSD_26a1_26b1.L_over_Omega_26b1_eq

/-! ## Typeclass upgrade (any `Type*`, not `E(ℚ)`) -/

theorem nonempty_Fintype_iff_Finite {α : Type*} :
    Nonempty (Fintype α) ↔ Finite α :=
  (finite_iff_nonempty_fintype α).symm

/-- Data from a `Finite` instance. Mathlib `Fintype.ofFinite`. -/
noncomputable def Fintype_of_Finite (α : Type*) [Finite α] : Fintype α :=
  Fintype.ofFinite α

/-- The inhabited upgrade: a mere `Nonempty (Fintype α)` yields
    a `Fintype α` by choice. Not a proof that any particular
    `MordellWeilGroup` is finite. -/
noncomputable def Fintype_of_nonempty_Fintype {α : Type*}
    (h : Nonempty (Fintype α)) : Fintype α :=
  have : Finite α := (finite_iff_nonempty_fintype α).mpr h
  Fintype.ofFinite α

theorem Fintype_of_nonempty_Fintype_spec {α : Type*}
    (h : Nonempty (Fintype α)) :
    Nonempty (Fintype α) :=
  ⟨Fintype_of_nonempty_Fintype h⟩

/-- Subsingleton + witness ⇒ `Fintype` of card `1`.
    This is pasted `IsRankZero` (only `{0}`). It does **not**
    apply to `26a1` / `26b1` (`¬ IsRankZero`). -/
def Fintype_of_Subsingleton {α : Type*} [Subsingleton α] (a : α) :
    Fintype α :=
  Fintype.ofSubsingleton a

theorem Fintype_card_of_Subsingleton {α : Type*} [Subsingleton α] (a : α) :
    @Fintype.card α (Fintype_of_Subsingleton a) = 1 :=
  Fintype.card_ofSubsingleton a

theorem Unit_is_Fintype_card_one :
    @Fintype.card Unit (Fintype_of_Subsingleton ()) = 1 :=
  Fintype_card_of_Subsingleton ()

/-! ## Subsingleton path is blocked on the displayed curves -/

theorem IsRankZero_is_Subsingleton_on_26a1 :
    MordellWeilGroup.IsRankZero curve26a1_Q ↔
      Subsingleton (MordellWeilGroup curve26a1_Q) :=
  Iff.rfl

theorem IsRankZero_is_Subsingleton_on_26b1 :
    MordellWeilGroup.IsRankZero curve26b1_Q ↔
      Subsingleton (MordellWeilGroup curve26b1_Q) :=
  Iff.rfl

theorem not_Subsingleton_MW_26a1 :
    ¬ Subsingleton (MordellWeilGroup curve26a1_Q) :=
  not_IsRankZero_26a1_reexport'

theorem not_Subsingleton_MW_26b1 :
    ¬ Subsingleton (MordellWeilGroup curve26b1_Q) :=
  not_IsRankZero_26b1_reexport'

/-! ## Packaged v28 display -/

/-- Numerals plus the typeclass upgrade. Does **not** inhabit
    `MW_rank_zero_fintype` / Kato / TwoDescent⇒rank 0.
    Does **not** apply `ofSubsingleton` to `E(ℚ)` (`¬ IsRankZero`). -/
theorem Kolyvagin_Fintype_Subsingleton_inhabited :
    ¬ MordellWeilGroup.IsRankZero curve26a1_Q ∧
      ¬ MordellWeilGroup.IsRankZero curve26b1_Q ∧
      ¬ Subsingleton (MordellWeilGroup curve26a1_Q) ∧
      ¬ Subsingleton (MordellWeilGroup curve26b1_Q) ∧
      Sel2_card_26a1 = 1 ∧ Sel2_card_26b1 = 1 ∧
      TorsionOrder_26a1 * TorsionOrder_26b1 = 21 ∧
      BealMatveevBeal.J0_26_BSD_26a1_26b1.L_over_Omega_26a1 = (1 / 3 : ℚ) ∧
      BealMatveevBeal.J0_26_BSD_26a1_26b1.L_over_Omega_26b1 = (1 / 7 : ℚ) ∧
      @Fintype.card Unit (Fintype_of_Subsingleton ()) = 1 :=
  ⟨not_IsRankZero_26a1_reexport',
    not_IsRankZero_26b1_reexport',
    not_Subsingleton_MW_26a1,
    not_Subsingleton_MW_26b1,
    Sel2_card_26a1_eq, Sel2_card_26b1_eq,
    torsion_3_mul_7_eq_21_reexport,
    L_over_Omega_26a1_eq_one_third_reexport,
    L_over_Omega_26b1_eq_one_seventh_reexport,
    Unit_is_Fintype_card_one⟩

theorem LLL_nogo_persists_after_Kolyvagin_Fintype_v28 :
    LLL_reduces_C1_to_lt_nine ↔
      ∀ {A B : ℕ}, BealMatveevBealV25B0Search.B0_nat ≤ B →
        A ^ 4 + B ^ 4 ≠ (B + 3) ^ 13 :=
  LLL_reduces_C1_to_lt_nine_iff_no_sol_ge_B0

#check Fintype_of_nonempty_Fintype
#check Fintype_of_Subsingleton
#check not_Subsingleton_MW_26a1
#check Kolyvagin_Fintype_Subsingleton_inhabited
#print axioms Kolyvagin_Fintype_Subsingleton_inhabited
#print axioms Fintype_card_of_Subsingleton
#print axioms LLL_nogo_persists_after_Kolyvagin_Fintype_v28

end BealMatveevBeal.Kolyvagin_Fintype_Subsingleton_inhabited
