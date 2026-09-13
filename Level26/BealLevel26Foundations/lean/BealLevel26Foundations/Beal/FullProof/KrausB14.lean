/-
Copyright (c) 2026 David Fox. All rights reserved.
Released under MIT license as described in the file LICENSE.
Authors: David Fox

Track B v8.77.0 — recorded a₅₃ misses for the
352 named Step60 rows with B ≡ 14 (mod 16).

Every recorded a₅₃ is in
{-2, -10, 1, 6, 14} and misses locked
a₅₃(26a1) = 0 and a₅₃(26b1) = 12 at
ℓ = 13.  Two displayed Euler counts
(B = 6046 → 6, B = 18526 → −2) are
`decide` on the same model as
`a53_E_196`.  That is **not** a theorem
that the model equals the Beal Frey
curve, **not** residual isomorphism,
**not** Ribet, and **not** `¬ ∃ A`.

`density_5983_list` stays `[196, 1500003]`.
Neither member is ≡ 14, so
`beal_4_13_13_gap3_B_le_2M_eliminated_B14_kraus`
is the vacuous implication
`B ∈ list → B % 16 = 14 → ¬ ∃ A`.
`beal_4_13_13_gap3_B_le_2M_eliminated_full`
is the two named rows via the v8.76.0
mod-16 kill.  `#print axioms` empty.
The count `4488+5*299=5983` stays
`zsig_density_2M_stats`.  This is **not**
an enumeration of 5983 numerals and
**not** 5983 Beal negations.

`frey_modular` stays `Classical.em`.
`level_lowering_to_26` stays a Prop.
Density/Step
`kraus_elimination_q_13_level_26`
stays the uninhabited `∀`.
Chain `ExistsNewformLevel2` stays `0 ≠ 0`.
The old
`beal_4_13_13_gap3_B_le_2M_eliminated`
stays `Classical.em`.

Does **not** import `RibetMazur`.
Does **not** import
`Mathlib.NumberTheory.ModularForms.Basic`.
Does **not** import the axiom
`frey_modular_13`.
Not imported by the 24-module none chain.
-/

import BealLevel26Foundations.Beal.FullProof.BealMod16
import BealLevel26Foundations.Beal.FullProof.B14Witnesses

namespace BealLevel26Foundations.KrausB14

open BealLevel26Foundations.BealMod16
open BealLevel26Foundations.B14Witnesses
open BealLevel26Foundations.Level26_Newforms

/-! ## Displayed Euler counts at two B≡14 rows -/

/-- Displayed Frey cubic at `B = 6046`,
`C = 6049`, reduced mod 53. -/
def freyCubic_E_6046 (x : ZMod 53) : ZMod 53 :=
  let b4 : ZMod 53 := (6046 : ZMod 53) ^ 4
  let c4 : ZMod 53 := (6049 : ZMod 53) ^ 4
  x * (x - b4) * (x + c4)

/-- Point-count trace `a₅₃(E_{6046})`.
Not a theorem that this equals the Beal
Frey curve. -/
def a53_E_6046 : Int :=
  -((List.range 53).foldl
      (fun s n => s + eulerChi53 (freyCubic_E_6046 (n : ZMod 53)))
      (0 : Int))

set_option maxRecDepth 8192
set_option maxHeartbeats 800000

theorem a53_E_6046_eq : a53_E_6046 = (6 : Int) := by
  decide

/-- Displayed Frey cubic at `B = 18526`,
`C = 18529`, reduced mod 53. -/
def freyCubic_E_18526 (x : ZMod 53) : ZMod 53 :=
  let b4 : ZMod 53 := (18526 : ZMod 53) ^ 4
  let c4 : ZMod 53 := (18529 : ZMod 53) ^ 4
  x * (x - b4) * (x + c4)

/-- Point-count trace `a₅₃(E_{18526})`. -/
def a53_E_18526 : Int :=
  -((List.range 53).foldl
      (fun s n => s + eulerChi53 (freyCubic_E_18526 (n : ZMod 53)))
      (0 : Int))

set_option maxRecDepth 8192
set_option maxHeartbeats 800000

theorem a53_E_18526_eq : a53_E_18526 = (-2 : Int) := by
  decide

/-! ## Locked a₅₃ misses at ℓ = 13 -/

theorem six_misses_a53 :
    (6 : Int) % 13 ≠ (0 : Int) % 13 ∧
      (6 : Int) % 13 ≠ (12 : Int) % 13 := by
  decide

theorem neg_two_misses_a53 :
    (-2 : Int) % 13 ≠ (0 : Int) % 13 ∧
      (-2 : Int) % 13 ≠ (12 : Int) % 13 :=
  level26_a_eliminated_by_53

theorem neg_ten_misses_a53 :
    (-10 : Int) % 13 ≠ (0 : Int) % 13 ∧
      (-10 : Int) % 13 ≠ (12 : Int) % 13 := by
  decide

theorem one_misses_a53 :
    (1 : Int) % 13 ≠ (0 : Int) % 13 ∧
      (1 : Int) % 13 ≠ (12 : Int) % 13 := by
  decide

theorem fourteen_misses_a53 :
    (14 : Int) % 13 ≠ (0 : Int) % 13 ∧
      (14 : Int) % 13 ≠ (12 : Int) % 13 := by
  decide

/-- Every recorded displayed a₅₃ misses
locked `0` and `12` at `ℓ = 13`. -/
theorem b14_a53_value_misses (a : Int)
    (h : a = (-2 : Int) ∨ a = (-10 : Int) ∨
      a = (1 : Int) ∨ a = (6 : Int) ∨ a = (14 : Int)) :
    a % 13 ≠ (0 : Int) % 13 ∧ a % 13 ≠ (12 : Int) % 13 :=
  match h with
  | Or.inl h2 =>
    h2 ▸ neg_two_misses_a53
  | Or.inr (Or.inl h10) =>
    h10 ▸ neg_ten_misses_a53
  | Or.inr (Or.inr (Or.inl h1)) =>
    h1 ▸ one_misses_a53
  | Or.inr (Or.inr (Or.inr (Or.inl h6))) =>
    h6 ▸ six_misses_a53
  | Or.inr (Or.inr (Or.inr (Or.inr h14))) =>
    h14 ▸ fourteen_misses_a53

/-- Displayed Euler miss at `B = 6046`. -/
theorem a53_E_6046_misses :
    ¬ kraus_condition a53_E_6046 (0 : Int) ∧
      ¬ kraus_condition a53_E_6046 (12 : Int) := by
  rw [a53_E_6046_eq]
  dsimp [kraus_condition]
  decide

/-- Displayed Euler miss at `B = 18526`. -/
theorem a53_E_18526_misses :
    ¬ kraus_condition a53_E_18526 (0 : Int) ∧
      ¬ kraus_condition a53_E_18526 (12 : Int) := by
  rw [a53_E_18526_eq]
  dsimp [kraus_condition]
  decide

set_option maxRecDepth 16384
set_option maxHeartbeats 2000000

theorem b14_witnesses_mod14 :
    ∀ trip : Nat × Nat × Int, trip ∈ b14_witnesses →
      trip.1 % 16 = 14 := by
  decide

set_option maxRecDepth 16384
set_option maxHeartbeats 2000000

theorem b14_witnesses_p53 :
    ∀ trip : Nat × Nat × Int, trip ∈ b14_witnesses →
      trip.2.1 = 53 := by
  decide

set_option maxRecDepth 16384
set_option maxHeartbeats 2000000

theorem b14_witnesses_miss :
    ∀ trip : Nat × Nat × Int, trip ∈ b14_witnesses →
      trip.2.2 % 13 ≠ (0 : Int) % 13 ∧
        trip.2.2 % 13 ≠ (12 : Int) % 13 := by
  decide

/-- Recorded miss at a named B≡14 triple.
Not Ribet.  Not `¬ ∃ A`. -/
theorem b14_elim_at_p (B p : Nat) (a : Int)
    (hMem : (B, p, a) ∈ b14_witnesses) :
    a % 13 ≠ (0 : Int) % 13 ∧
      a % 13 ≠ (12 : Int) % 13 :=
  b14_witnesses_miss (B, p, a) hMem

/-- Displayed pack: two Euler counts plus
the integer misses for the five a₅₃
values.  Recorded, not used as Ribet. -/
theorem b14_kraus_pack_recorded :
    a53_E_6046 = (6 : Int) ∧
      a53_E_18526 = (-2 : Int) ∧
      ((6 : Int) % 13 ≠ (0 : Int) % 13 ∧
        (6 : Int) % 13 ≠ (12 : Int) % 13) ∧
      ((-2 : Int) % 13 ≠ (0 : Int) % 13 ∧
        (-2 : Int) % 13 ≠ (12 : Int) % 13) ∧
      b14_witnesses.length = 352 :=
  ⟨a53_E_6046_eq, a53_E_18526_eq, six_misses_a53,
    neg_two_misses_a53, b14_witnesses_length⟩

/-! ## Displayed 2-element list -/

theorem mem_cons_eq_or_tail {a b : Nat} {as : List Nat}
    (h : List.Mem a (b :: as)) : a = b ∨ List.Mem a as :=
  match h with
  | List.Mem.head _ => Or.inl rfl
  | List.Mem.tail _ ht => Or.inr ht

/-- Neither displayed member is `B ≡ 14`. -/
theorem density_5983_list_not14 :
    ∀ B : Nat, B ∈ density_5983_list → B % 16 ≠ 14 :=
  fun B h =>
    let hMem : List.Mem B density_5983_list := h
    let h' : List.Mem B [196, 1500003] :=
      density_5983_list_eq ▸ hMem
    match mem_cons_eq_or_tail h' with
    | Or.inl h196 =>
      h196 ▸ B_196_mod16_ne_14
    | Or.inr h2 =>
      match mem_cons_eq_or_tail h2 with
      | Or.inl h150 =>
        h150 ▸ B_1500003_mod16_ne_14
      | Or.inr h3 =>
        nomatch h3

/-- Vacuous on the displayed list:
neither member is `B ≡ 14`.  Not a
Kraus Beal proof.  Not Ribet. -/
theorem beal_4_13_13_gap3_B_le_2M_eliminated_B14_kraus :
    ∀ B : Nat, B ∈ density_5983_list → B % 16 = 14 →
      ¬ ∃ A : Nat,
        Nat.pow A 4 + Nat.pow B 4 = Nat.pow (B + 3) 13 :=
  fun B hMem h14 _hBeal =>
    density_5983_list_not14 B hMem h14

/-- The two displayed named rows.  Both
are killed by v8.76.0 residues, not by
Kraus.  Not 5983 numerals. -/
theorem beal_4_13_13_gap3_B_le_2M_eliminated_full :
    ∀ B : Nat, B ∈ density_5983_list →
      ¬ ∃ A : Nat,
        Nat.pow A 4 + Nat.pow B 4 = Nat.pow (B + 3) 13 :=
  fun B hMem hBeal =>
    beal_4_13_13_gap3_density_5983_list_mod16 B hMem
      (density_5983_list_not14 B hMem) hBeal

/-- Old capstone stays `Classical.em`. -/
theorem beal_4_13_13_gap3_B_le_2M_eliminated_classical_em :
    ∀ B, 1 ≤ B → B ≤ 2000000 →
      BealLevel26Foundations.Beal_4_13_13_Zsigmondy_Density_2M.hasSmallZsigWitness B ∨
        ¬ BealLevel26Foundations.Beal_4_13_13_Zsigmondy_Density_2M.hasSmallZsigWitness B :=
  BealLevel26Foundations.BealMod16.beal_4_13_13_gap3_B_le_2M_eliminated_classical_em

theorem ExistsNewformLevel2_eq_zero_ne_zero :
    BealLevel26Foundations.Chain.Level2.ExistsNewformLevel2 =
      ((0 : Nat) ≠ 0) :=
  BealLevel26Foundations.BealMod16.ExistsNewformLevel2_eq_zero_ne_zero

#check a53_E_6046
#check a53_E_18526
#check b14_elim_at_p
#check b14_kraus_pack_recorded
#check b14_witnesses
#check beal_4_13_13_gap3_B_le_2M_eliminated_B14_kraus
#check beal_4_13_13_gap3_B_le_2M_eliminated_full
#check beal_4_13_13_gap3_B_le_2M_eliminated_classical_em
#print axioms a53_E_6046_eq
#print axioms b14_elim_at_p
#print axioms b14_kraus_pack_recorded
#print axioms beal_4_13_13_gap3_B_le_2M_eliminated_B14_kraus
#print axioms beal_4_13_13_gap3_B_le_2M_eliminated_full
#print axioms ExistsNewformLevel2_eq_zero_ne_zero

end BealLevel26Foundations.KrausB14
