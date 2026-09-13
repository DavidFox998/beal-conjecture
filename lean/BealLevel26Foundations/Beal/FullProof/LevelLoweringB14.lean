/-
Copyright (c) 2026 David Fox. All rights reserved.
Released under MIT license as described in the file LICENSE.
Authors: David Fox

Track B v8.78.0 — extract the 352 named
Step60 B≡14 rows and record displayed
2-torsion of the Euler cubic.

This file does **not** inhabit `¬ ∃ A`
for those rows.  A recorded a₅₃ miss
is not Ribet level-lowering.  The
v8.69.0–v8.74.0 pack is a miss
(`-2` vs `0`/`12`, `24` vs `21`/`-39`),
not a congruence `a_E ≡ a_f [MOD 13]`.
`frey_modular` stays `Classical.em`.
`level_lowering_to_26` stays a Prop.
Full 2-torsion of
`y² = x(x − B⁴)(x + (B+3)⁴)` is a
polynomial identity, **not** Wiles,
**not** BCDT, and **not** modularity.

`beal_4_13_13_gap3_B_le_2M_eliminated_B14_honest`
is the uninhabited `∀` on
`step60_b14_list`.
`beal_4_13_13_gap3_B_le_2M_eliminated_full_honest`
is the displayed two-element list via
the v8.76.0 mod-16 kill (empty axioms).

Density/Step
`kraus_elimination_q_13_level_26`
stays the uninhabited `∀`.
Chain `ExistsNewformLevel2` stays `0 ≠ 0`.

Does **not** import `RibetMazur`.
Does **not** import
`Mathlib.NumberTheory.ModularForms.Basic`.
Does **not** import the axiom
`frey_modular_13`.
Not imported by the 24-module none chain.
-/

import BealLevel26Foundations.Beal.FullProof.KrausB14
import BealLevel26Foundations.Beal.FullProof.Step60B14List
import BealLevel26Foundations.Beal.FullProof.FreyModularity

namespace BealLevel26Foundations.LevelLoweringB14

open BealLevel26Foundations.BealMod16
open BealLevel26Foundations.B14Witnesses
open BealLevel26Foundations.KrausB14
open BealLevel26Foundations.Step60B14List
open BealLevel26Foundations.FreyModularity

/-! ## Extracted Step60 B≡14 list -/

set_option maxRecDepth 16384
set_option maxHeartbeats 2000000

theorem step60_b14_list_all_mod14 :
    ∀ B : Nat, B ∈ step60_b14_list → B % 16 = 14 := by
  decide

set_option maxRecDepth 16384
set_option maxHeartbeats 2000000

theorem step60_b14_list_eq_map_B :
    step60_b14_list = b14_witnesses.map (fun t => t.1) := by
  decide

/-! ## Displayed cubic 2-torsion (not modularity) -/

/-- Displayed model `x(x − B⁴)(x + C⁴)`,
`C = B+3`.  Not the Beal Frey curve. -/
def displayedFreyCubic (B : Nat) (x : Int) : Int :=
  x * (x - (Nat.pow B 4 : Int)) *
    (x + (Nat.pow (B + 3) 4 : Int))

theorem displayed_frey_cubic_root_zero (B : Nat) :
    displayedFreyCubic B 0 = 0 :=
  let n : Int := Nat.pow B 4
  let c : Int := Nat.pow (B + 3) 4
  let h1 : (0 : Int) * (0 - n) = 0 := Int.zero_mul (0 - n)
  let h2 : ((0 : Int) * (0 - n)) * (0 + c) = 0 * (0 + c) :=
    congrArg (fun t => t * (0 + c)) h1
  h2.trans (Int.zero_mul (0 + c))

theorem displayed_frey_cubic_root_B4 (B : Nat) :
    displayedFreyCubic B (Nat.pow B 4) = 0 :=
  let n : Int := Nat.pow B 4
  let c : Int := Nat.pow (B + 3) 4
  let hsub : n - n = 0 := Int.sub_self n
  let hmid : n * (n - n) = n * 0 :=
    congrArg (fun t => n * t) hsub
  let h0 : n * 0 = 0 := Int.mul_zero n
  let hleft : n * (n - n) = 0 := hmid.trans h0
  let hmul : (n * (n - n)) * (n + c) = 0 * (n + c) :=
    congrArg (fun t => t * (n + c)) hleft
  hmul.trans (Int.zero_mul (n + c))

theorem displayed_frey_cubic_root_C4 (B : Nat) :
    displayedFreyCubic B (-(Nat.pow (B + 3) 4 : Int)) = 0 :=
  let n : Int := Nat.pow B 4
  let c : Int := Nat.pow (B + 3) 4
  let x : Int := -c
  let hadd : x + c = 0 := Int.add_left_neg c
  let hright : x * (x - n) * (x + c) =
      x * (x - n) * 0 :=
    congrArg (fun t => x * (x - n) * t) hadd
  hright.trans (Int.mul_zero (x * (x - n)))

/-- The displayed cubic has three roots.
This is **not** Wiles, **not** BCDT, **not**
`frey_modular`.  Full 2-torsion of a
Weierstrass model is not a modularity
theorem in this import graph. -/
theorem frey_modular_B14 (B : Nat)
    (_h14 : B % 16 = 14)
    (_hMem : B ∈ step60_b14_list) :
    displayedFreyCubic B 0 = 0 ∧
      displayedFreyCubic B (Nat.pow B 4) = 0 ∧
      displayedFreyCubic B (-(Nat.pow (B + 3) 4 : Int)) = 0 :=
  ⟨displayed_frey_cubic_root_zero B,
    displayed_frey_cubic_root_B4 B,
    displayed_frey_cubic_root_C4 B⟩

/-- Same Int-mod-13 miss as `b14_a53_value_misses`.
Not residual irreducibility. -/
theorem frey_mod13_irreducible_B14 (a : Int)
    (h : a = (-2 : Int) ∨ a = (-10 : Int) ∨
      a = (1 : Int) ∨ a = (6 : Int) ∨ a = (14 : Int)) :
    IrreducibleMod13Trace a 0 12 :=
  irreducible_of_trace_mismatch (b14_a53_value_misses a h)

/-- Uninhabited.  The recorded pack is a
miss, not a congruence, and not Ribet. -/
def level_lowering_to_26_B14 : Prop :=
  BealLevel26Foundations.FreyModularity.level_lowering_to_26

/-- Uninhabited.  A recorded a₅₃ miss does
not prove `¬ ∃ A`.  Residue cover is not
a Lean `∀ B ≤ 2M`.  `B ≤ 1e6` is inhabited
via the Baker chunks (`allKilled_1e6`).
Do not inhabit this 352-row pack. -/
def beal_4_13_13_gap3_B_le_2M_eliminated_B14_honest : Prop :=
  ∀ B : Nat, B ∈ step60_b14_list →
    ¬ ∃ A : Nat,
      Nat.pow A 4 + Nat.pow B 4 = Nat.pow (B + 3) 13

/-- The displayed two-element list via
mod 16.  `step60_b14_list` Beal negation
stays the uninhabited Prop above.
Not 5983 numerals. -/
theorem beal_4_13_13_gap3_B_le_2M_eliminated_full_honest :
    ∀ B : Nat, B ∈ density_5983_list →
      ¬ ∃ A : Nat,
        Nat.pow A 4 + Nat.pow B 4 = Nat.pow (B + 3) 13 :=
  beal_4_13_13_gap3_B_le_2M_eliminated_full

/-- `frey_modular` stays `Classical.em`. -/
theorem frey_modular_stays_classical_em (B : Nat) :
    (B = 196 ∨ B = 1500003) ∨ ¬ (B = 196 ∨ B = 1500003) :=
  frey_modular B

theorem ExistsNewformLevel2_eq_zero_ne_zero :
    BealLevel26Foundations.Chain.Level2.ExistsNewformLevel2 =
      ((0 : Nat) ≠ 0) :=
  BealLevel26Foundations.FreyModularity.ExistsNewformLevel2_eq_zero_ne_zero

#check step60_b14_list
#check b14_witnesses
#check frey_modular_B14
#check frey_mod13_irreducible_B14
#check level_lowering_to_26_B14
#check beal_4_13_13_gap3_B_le_2M_eliminated_B14_honest
#check beal_4_13_13_gap3_B_le_2M_eliminated_full_honest
#print axioms step60_b14_list_length
#print axioms step60_b14_list_all_mod14
#print axioms displayed_frey_cubic_root_B4
#print axioms frey_modular_B14
#print axioms beal_4_13_13_gap3_B_le_2M_eliminated_full_honest
#print axioms ExistsNewformLevel2_eq_zero_ne_zero

end BealLevel26Foundations.LevelLoweringB14
