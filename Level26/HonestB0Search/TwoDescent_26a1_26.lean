/-
Copyright (c) 2026 David Fox. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: David Fox
-/
/-
  Root module. Separate Lake target `BealMatveevBealV25B0Search`.
  Do **not** add `Beal/Matveev/TwoDescent_26a1_26.lean`:
  `.submodules Beal.Matveev` would pull it into the default glob.
  Do **not** create a TrueV25 subdirectory for this file:
  that path conflicts with root `BealTrueV25.lean` on the default
  glob, and this target must **not** pull in the TrueV25 module.
  Relocated from the lake package
  `BealLevel26Foundations.Descent.TwoDescent_26a1_26` /
  `Selmer_26` (displayed `|Sel₂| = 1`, not a Selmer group).
-/
import BealMatveevBealV25B0Search
import LLLTargetB8_C1_lower_bound

/-!
# Displayed 2-descent / Selmer-bound names for Cremona `26a1`/`26b1`

Blueprint: a genuine 2-descent computes `E(ℚ)/2E(ℚ)` from
2-coverings `C_d : d w² = f(x)`.  For `26a1` the full 2-torsion
is not rational, so 2-isogeny descent is unavailable. Mathlib
4.12 has no `SelmerGroup` and no `mwrank`.

Scan of this tree and the lake package: the kernel
`TwoDescent_26a1_26.lean` lives under
`.lake/packages/beal_level_26_foundations/.../Descent/`.
Sage `certified_mwrank` is `E.rank()` in
`sagemath/j0_26_decomp_foundation.sage`. PARI `|Sel₂|=1` is
empty `ell2cover` plus odd torsion in
`scripts/verify_descent_26.py`. The JSON
`certs/pari_x0_26_four_cusps.json` records `sel2: 1` and the
Descent_26 SHA-256
`d9d907f6cf29e9a90731184f082d430d33128f0f857e6a8124a1eef0b8e39260`,
but its field `torsion: 2` is **not** `|E(ℚ)_tors|` (LMFDB
orders are `3` and `7`).

**Inhabited numerals.** `|Sel₂| = 1` (`Sel2_card_*` /
`SelmerBound_*`); Sage rank *display* `0`
(`certified_mwrank_*`); torsion-order Nats `3` and `7`;
`2⁰ = 1`; `3 · 7 = 21`; `1 = 1 → 0 = 0` under the name
`Sel2_rank0_implies_rank0_*` (displayed Nats, not Mordell–Weil).
`RankZero_*_from_Selmer` is `SelmerBound_* = 1`, i.e. `1 = 1`.
`Sha2_*_trivial` is the same `1 = 1`. Not Sha[2] triviality.
Not a Selmer group. Not a two-descent. Not a Mordell–Weil
theorem. Not Wiles. Not an L-function.

**Uninhabited (`def Prop`).** Jacobian rank 0 of `J₀(26)` is
`X0_26_Full2Torsion.J0_26_rank0` (Kenku alias) and
`J0_26_rank0_via_mwrank`. This file does **not** inhabit those
names and does **not** package the displayed `0 = 0 ∧ 0 = 0`
pair as a Jacobian-rank title. `mwrank_displays_are_Mathlib_MW`
stays `def Prop`.

Does **not** mint v25. No `sorry`. No new axiom.
`main` stays `6247c63`.
-/

namespace BealMatveevBeal.TwoDescent_26a1_26

open BealMatveevBeal.BealMatveevBealV25B0Search
open BealMatveevBeal.LLLTargetB8
open BealMatveevBeal.LLLTargetB8C1LowerBound

/-! ## Displayed torsion orders (LMFDB, not `|Sel₂|`) -/

/-- Displayed torsion order for Cremona `26a1` (`ℤ/3ℤ`).
    Not `|Sel₂|`. Not JSON `torsion: 2`. -/
def TorsionOrder_26a1 : ℕ := 3

/-- Displayed torsion order for Cremona `26b1` (`ℤ/7ℤ`).
    Not `|Sel₂|`. -/
def TorsionOrder_26b1 : ℕ := 7

theorem TorsionOrder_26a1_eq : TorsionOrder_26a1 = 3 := rfl

theorem TorsionOrder_26b1_eq : TorsionOrder_26b1 = 7 := rfl

theorem TorsionOrder_26a1_ne_two : TorsionOrder_26a1 ≠ 2 := by
  decide

theorem TorsionOrder_26b1_ne_two : TorsionOrder_26b1 ≠ 2 := by
  decide

/-! ## Displayed `|Sel₂|` (PARI `ell2cover` empty, odd torsion) -/

/-- PARI `|Sel₂| = 1` on `26a1`. Not a Selmer group.
    Mathlib 4.12 has no `SelmerGroup`. Not a two-descent. -/
def SelmerBound_26a1 : ℕ := 1

/-- PARI `|Sel₂| = 1` on `26b1`. Not a Selmer group. -/
def SelmerBound_26b1 : ℕ := 1

/-- User-facing alias of `SelmerBound_26a1`. -/
def Sel2_card_26a1 : ℕ := SelmerBound_26a1

def Sel2_card_26b1 : ℕ := SelmerBound_26b1

theorem SelmerBound_26a1_eq : SelmerBound_26a1 = 1 := rfl

theorem SelmerBound_26b1_eq : SelmerBound_26b1 = 1 := rfl

theorem Sel2_card_26a1_eq : Sel2_card_26a1 = 1 := rfl

theorem Sel2_card_26b1_eq : Sel2_card_26b1 = 1 := rfl

theorem SelmerBound_26a1_is_not_torsion_order :
    TorsionOrder_26a1 = 3 ∧ SelmerBound_26a1 = 1 ∧
      TorsionOrder_26a1 ≠ SelmerBound_26a1 := by
  decide

theorem SelmerBound_26b1_is_not_torsion_order :
    TorsionOrder_26b1 = 7 ∧ SelmerBound_26b1 = 1 ∧
      TorsionOrder_26b1 ≠ SelmerBound_26b1 := by
  decide

/-- Displayed `𝔽₂`-dimension of that PARI card: `2⁰ = 1`.
    Not an `mwrank` run. Named apart from
    `X0_26_Full2Torsion.Selmer_2_rank_*` so both modules can
    be opened together. -/
def Sel2_F2_dim_26a1 : ℕ := 0

def Sel2_F2_dim_26b1 : ℕ := 0

theorem two_pow_sel2_F2_dim_26a1 :
    (2 : ℕ) ^ Sel2_F2_dim_26a1 = Sel2_card_26a1 := by
  decide

theorem two_pow_sel2_F2_dim_26b1 :
    (2 : ℕ) ^ Sel2_F2_dim_26b1 = Sel2_card_26b1 := by
  decide

/-! ## Sage `certified_mwrank` *display* (not Mathlib MW) -/

/-- Sage `E.rank()` on Cremona `26a1`
    (`sagemath/j0_26_decomp_foundation.sage`). Displayed Nat,
    not a cohomological Mordell–Weil theorem. -/
def certified_mwrank_26a1 : ℕ := 0

/-- Sage `E.rank()` on Cremona `26b1`. Displayed Nat. -/
def certified_mwrank_26b1 : ℕ := 0

theorem certified_mwrank_26a1_eq : certified_mwrank_26a1 = 0 := rfl

theorem certified_mwrank_26b1_eq : certified_mwrank_26b1 = 0 := rfl

/-- Displayed Sage ranks are both `0`. This Prop is
    `0 = 0 ∧ 0 = 0`. Not Jacobian rank 0. -/
def certified_mwrank_both_zero : Prop :=
  certified_mwrank_26a1 = 0 ∧ certified_mwrank_26b1 = 0

theorem certified_mwrank_both_zero_holds : certified_mwrank_both_zero :=
  ⟨rfl, rfl⟩

/-- `1 = 1 → 0 = 0` on displayed Nats. Not mwrank.
    Not `J0_26_rank0`. -/
theorem Sel2_rank0_implies_rank0_26a1 :
    Sel2_card_26a1 = 1 → certified_mwrank_26a1 = 0 := by
  intro _h
  native_decide

theorem Sel2_rank0_implies_rank0_26b1 :
    Sel2_card_26b1 = 1 → certified_mwrank_26b1 = 0 := by
  intro _h
  native_decide

theorem torsion_orders_mul_eq_twenty_one :
    TorsionOrder_26a1 * TorsionOrder_26b1 = 21 := by
  decide

/-! ## `1 = 1` names (not Sha, not MW) -/

/-- `1 = 1` on the displayed `|Sel₂|` Nat. Not Sha[2] triviality. -/
def Sha2_26a1_trivial : Prop := SelmerBound_26a1 = 1

/-- `1 = 1` on the displayed `|Sel₂|` Nat. Not Sha[2] triviality. -/
def Sha2_26b1_trivial : Prop := SelmerBound_26b1 = 1

/-- Alias of `Sha2_26a1_trivial` (`1 = 1`). Not a Mordell–Weil theorem. -/
def RankZero_26a1_from_Selmer : Prop := Sha2_26a1_trivial

/-- Alias of `Sha2_26b1_trivial` (`1 = 1`). Not a Mordell–Weil theorem. -/
def RankZero_26b1_from_Selmer : Prop := Sha2_26b1_trivial

theorem Sha2_26a1_trivial_is_one_eq_one : Sha2_26a1_trivial = (1 = 1) :=
  rfl

theorem Sha2_26b1_trivial_is_one_eq_one : Sha2_26b1_trivial = (1 = 1) :=
  rfl

theorem RankZero_26a1_from_Selmer_is_one_eq_one :
    RankZero_26a1_from_Selmer = (1 = 1) :=
  rfl

theorem RankZero_26b1_from_Selmer_is_one_eq_one :
    RankZero_26b1_from_Selmer = (1 = 1) :=
  rfl

/-- Displayed Sage ranks being `0` is **not** Mathlib MW of
    `J₀(26)`. This name stays a `def Prop` (the payload is the
    displayed `0 = 0` pair). Jacobian rank 0 remains
    `X0_26_Full2Torsion.J0_26_rank0` / `J0_26_rank0_via_mwrank`.
    **Not** an axiom. **Not** `J0_26_rank0`. -/
def mwrank_displays_are_Mathlib_MW : Prop :=
  certified_mwrank_both_zero

theorem LLL_nogo_persists_after_TwoDescent :
    LLL_reduces_C1_to_lt_nine ↔
      ∀ {A B : ℕ}, B0_nat ≤ B → A ^ 4 + B ^ 4 ≠ (B + 3) ^ 13 :=
  LLL_reduces_C1_to_lt_nine_iff_no_sol_ge_B0

#check SelmerBound_26a1_eq
#check Sel2_card_26a1_eq
#check TorsionOrder_26a1_eq
#check TorsionOrder_26a1_ne_two
#check certified_mwrank_26a1_eq
#check certified_mwrank_both_zero_holds
#check Sel2_rank0_implies_rank0_26a1
#check two_pow_sel2_F2_dim_26a1
#check torsion_orders_mul_eq_twenty_one
#check Sha2_26a1_trivial_is_one_eq_one
#check RankZero_26a1_from_Selmer_is_one_eq_one
#check mwrank_displays_are_Mathlib_MW
#check LLL_nogo_persists_after_TwoDescent
#print axioms SelmerBound_26a1_eq
#print axioms Sel2_rank0_implies_rank0_26a1
#print axioms Sha2_26a1_trivial_is_one_eq_one
#print axioms LLL_nogo_persists_after_TwoDescent

end BealMatveevBeal.TwoDescent_26a1_26
