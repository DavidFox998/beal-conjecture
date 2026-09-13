/-
Copyright (c) 2026 David Fox. All rights reserved.
Released under MIT license as described in the file LICENSE.
Authors: David Fox

Track B v8.81.0 — fourth-power non-residue kill modulo 53.

If `(B+3)¹³ − B⁴` is not a fourth power in `𝔽₅₃`,
there is no `A` with `A⁴ + B⁴ = (B+3)¹³`.
That is the same kind of arithmetic obstruction
as the v8.76.0 mod-16 sweep, **not** Ribet,
**not** BCDT, **not** an Euler miss.

Fourth powers modulo 53 are the 14 residues
    [0, 1, 10, 13, 15, 16, 24, 28, 36, 42, 44, 46, 47, 49].
The user's older 13-element set is wrong and
is not used.  On `step60_b14_list` the count
is **266 killed, 86 remaining**, not 287.

`#print axioms` is empty.  Kernel `Nat.pow`,
not `HPow`.  `List`, not `Finset`.  No `omega`.
No `sorry`.  Not `Classical.em`.

The remaining 86 named `B ≡ 14` rows have
`(B+3)¹³ − B⁴` a fourth power mod 53, so
this test does not kill them.
`beal_4_13_13_gap3_B_le_2M_eliminated_B14_honest`
stays the uninhabited `∀` on all 352.
Chain `ExistsNewformLevel2` stays `0 ≠ 0`.
Density/Step `kraus_elimination_q_13_level_26`
stays the uninhabited `∀`.

Does **not** import `RibetMazur`.
Does **not** import `frey_modular_13`.
Not imported by the 24-module none chain.
-/

import BealLevel26Foundations.Beal.FullProof.Step60B14List

namespace BealLevel26Foundations.BealFreyMod53Kill

open BealLevel26Foundations.Step60B14List

/-! ## Fourth powers modulo 53 -/

def fourth_powers_mod53 : List Nat :=
    [
    0,
    1,
    10,
    13,
    15,
    16,
    24,
    28,
    36,
    42,
    44,
    46,
    47,
    49
  ]

theorem fourth_powers_mod53_length :
    fourth_powers_mod53.length = 14 :=
  rfl

/-! ## Empty `IsFourthMod53` (no `List.Mem` `decide`) -/

def IsFourthMod53 (n : Nat) : Prop :=
  n = 0 ∨ (n = 1 ∨ (n = 10 ∨ (n = 13 ∨ (n = 15 ∨ (n = 16 ∨ (n = 24 ∨ (n = 28 ∨ (n = 36 ∨ (n = 42 ∨ (n = 44 ∨ (n = 46 ∨ (n = 47 ∨ (n = 49)))))))))))))

theorem beq_self : ∀ n : Nat, Nat.beq n n = true
  | 0 => rfl
  | n + 1 => beq_self n

theorem ne_of_beq_false' {n m : Nat} (hnm : Nat.beq n m = false) :
    n ≠ m :=
  fun h =>
    let htrue : Nat.beq n n = true := beq_self n
    let heq : true = false :=
      htrue.symm.trans ((congrArg (Nat.beq n) h).trans hnm)
    Bool.noConfusion heq

theorem mem_of_eq {a b : Nat} {L : List Nat}
    (h : a = b) (hb : b ∈ L) : a ∈ L :=
  Eq.rec (motive := fun (t : Nat) (_ : b = t) => t ∈ L) hb h.symm

theorem not_mem_of_eq {a b : Nat} {L : List Nat}
    (h : a = b) (hb : ¬ b ∈ L) : ¬ a ∈ L :=
  Eq.rec (motive := fun (t : Nat) (_ : b = t) => ¬ t ∈ L) hb h.symm

theorem not_is_fourth {n : Nat}
    (h0 : Nat.beq n 0 = false)
    (h1 : Nat.beq n 1 = false)
    (h10 : Nat.beq n 10 = false)
    (h13 : Nat.beq n 13 = false)
    (h15 : Nat.beq n 15 = false)
    (h16 : Nat.beq n 16 = false)
    (h24 : Nat.beq n 24 = false)
    (h28 : Nat.beq n 28 = false)
    (h36 : Nat.beq n 36 = false)
    (h42 : Nat.beq n 42 = false)
    (h44 : Nat.beq n 44 = false)
    (h46 : Nat.beq n 46 = false)
    (h47 : Nat.beq n 47 = false)
    (h49 : Nat.beq n 49 = false)
    : ¬ IsFourthMod53 n :=
  fun h =>
  match h with
  | Or.inl hx0 =>
    ne_of_beq_false' h0 hx0
  | Or.inr hrest0 =>
    match hrest0 with
    | Or.inl hx1 =>
      ne_of_beq_false' h1 hx1
    | Or.inr hrest1 =>
      match hrest1 with
      | Or.inl hx2 =>
        ne_of_beq_false' h10 hx2
      | Or.inr hrest2 =>
        match hrest2 with
        | Or.inl hx3 =>
          ne_of_beq_false' h13 hx3
        | Or.inr hrest3 =>
          match hrest3 with
          | Or.inl hx4 =>
            ne_of_beq_false' h15 hx4
          | Or.inr hrest4 =>
            match hrest4 with
            | Or.inl hx5 =>
              ne_of_beq_false' h16 hx5
            | Or.inr hrest5 =>
              match hrest5 with
              | Or.inl hx6 =>
                ne_of_beq_false' h24 hx6
              | Or.inr hrest6 =>
                match hrest6 with
                | Or.inl hx7 =>
                  ne_of_beq_false' h28 hx7
                | Or.inr hrest7 =>
                  match hrest7 with
                  | Or.inl hx8 =>
                    ne_of_beq_false' h36 hx8
                  | Or.inr hrest8 =>
                    match hrest8 with
                    | Or.inl hx9 =>
                      ne_of_beq_false' h42 hx9
                    | Or.inr hrest9 =>
                      match hrest9 with
                      | Or.inl hx10 =>
                        ne_of_beq_false' h44 hx10
                      | Or.inr hrest10 =>
                        match hrest10 with
                        | Or.inl hx11 =>
                          ne_of_beq_false' h46 hx11
                        | Or.inr hrest11 =>
                          match hrest11 with
                          | Or.inl hx12 =>
                            ne_of_beq_false' h47 hx12
                          | Or.inr hrest12 =>
                            ne_of_beq_false' h49 hrest12

theorem not_is_fourth_2 : ¬ IsFourthMod53 2 :=
  not_is_fourth (show Nat.beq 2 0 = false from rfl) (show Nat.beq 2 1 = false from rfl) (show Nat.beq 2 10 = false from rfl) (show Nat.beq 2 13 = false from rfl) (show Nat.beq 2 15 = false from rfl) (show Nat.beq 2 16 = false from rfl) (show Nat.beq 2 24 = false from rfl) (show Nat.beq 2 28 = false from rfl) (show Nat.beq 2 36 = false from rfl) (show Nat.beq 2 42 = false from rfl) (show Nat.beq 2 44 = false from rfl) (show Nat.beq 2 46 = false from rfl) (show Nat.beq 2 47 = false from rfl) (show Nat.beq 2 49 = false from rfl)
theorem not_is_fourth_3 : ¬ IsFourthMod53 3 :=
  not_is_fourth (show Nat.beq 3 0 = false from rfl) (show Nat.beq 3 1 = false from rfl) (show Nat.beq 3 10 = false from rfl) (show Nat.beq 3 13 = false from rfl) (show Nat.beq 3 15 = false from rfl) (show Nat.beq 3 16 = false from rfl) (show Nat.beq 3 24 = false from rfl) (show Nat.beq 3 28 = false from rfl) (show Nat.beq 3 36 = false from rfl) (show Nat.beq 3 42 = false from rfl) (show Nat.beq 3 44 = false from rfl) (show Nat.beq 3 46 = false from rfl) (show Nat.beq 3 47 = false from rfl) (show Nat.beq 3 49 = false from rfl)
theorem not_is_fourth_4 : ¬ IsFourthMod53 4 :=
  not_is_fourth (show Nat.beq 4 0 = false from rfl) (show Nat.beq 4 1 = false from rfl) (show Nat.beq 4 10 = false from rfl) (show Nat.beq 4 13 = false from rfl) (show Nat.beq 4 15 = false from rfl) (show Nat.beq 4 16 = false from rfl) (show Nat.beq 4 24 = false from rfl) (show Nat.beq 4 28 = false from rfl) (show Nat.beq 4 36 = false from rfl) (show Nat.beq 4 42 = false from rfl) (show Nat.beq 4 44 = false from rfl) (show Nat.beq 4 46 = false from rfl) (show Nat.beq 4 47 = false from rfl) (show Nat.beq 4 49 = false from rfl)
theorem not_is_fourth_5 : ¬ IsFourthMod53 5 :=
  not_is_fourth (show Nat.beq 5 0 = false from rfl) (show Nat.beq 5 1 = false from rfl) (show Nat.beq 5 10 = false from rfl) (show Nat.beq 5 13 = false from rfl) (show Nat.beq 5 15 = false from rfl) (show Nat.beq 5 16 = false from rfl) (show Nat.beq 5 24 = false from rfl) (show Nat.beq 5 28 = false from rfl) (show Nat.beq 5 36 = false from rfl) (show Nat.beq 5 42 = false from rfl) (show Nat.beq 5 44 = false from rfl) (show Nat.beq 5 46 = false from rfl) (show Nat.beq 5 47 = false from rfl) (show Nat.beq 5 49 = false from rfl)
theorem not_is_fourth_6 : ¬ IsFourthMod53 6 :=
  not_is_fourth (show Nat.beq 6 0 = false from rfl) (show Nat.beq 6 1 = false from rfl) (show Nat.beq 6 10 = false from rfl) (show Nat.beq 6 13 = false from rfl) (show Nat.beq 6 15 = false from rfl) (show Nat.beq 6 16 = false from rfl) (show Nat.beq 6 24 = false from rfl) (show Nat.beq 6 28 = false from rfl) (show Nat.beq 6 36 = false from rfl) (show Nat.beq 6 42 = false from rfl) (show Nat.beq 6 44 = false from rfl) (show Nat.beq 6 46 = false from rfl) (show Nat.beq 6 47 = false from rfl) (show Nat.beq 6 49 = false from rfl)
theorem not_is_fourth_7 : ¬ IsFourthMod53 7 :=
  not_is_fourth (show Nat.beq 7 0 = false from rfl) (show Nat.beq 7 1 = false from rfl) (show Nat.beq 7 10 = false from rfl) (show Nat.beq 7 13 = false from rfl) (show Nat.beq 7 15 = false from rfl) (show Nat.beq 7 16 = false from rfl) (show Nat.beq 7 24 = false from rfl) (show Nat.beq 7 28 = false from rfl) (show Nat.beq 7 36 = false from rfl) (show Nat.beq 7 42 = false from rfl) (show Nat.beq 7 44 = false from rfl) (show Nat.beq 7 46 = false from rfl) (show Nat.beq 7 47 = false from rfl) (show Nat.beq 7 49 = false from rfl)
theorem not_is_fourth_8 : ¬ IsFourthMod53 8 :=
  not_is_fourth (show Nat.beq 8 0 = false from rfl) (show Nat.beq 8 1 = false from rfl) (show Nat.beq 8 10 = false from rfl) (show Nat.beq 8 13 = false from rfl) (show Nat.beq 8 15 = false from rfl) (show Nat.beq 8 16 = false from rfl) (show Nat.beq 8 24 = false from rfl) (show Nat.beq 8 28 = false from rfl) (show Nat.beq 8 36 = false from rfl) (show Nat.beq 8 42 = false from rfl) (show Nat.beq 8 44 = false from rfl) (show Nat.beq 8 46 = false from rfl) (show Nat.beq 8 47 = false from rfl) (show Nat.beq 8 49 = false from rfl)
theorem not_is_fourth_9 : ¬ IsFourthMod53 9 :=
  not_is_fourth (show Nat.beq 9 0 = false from rfl) (show Nat.beq 9 1 = false from rfl) (show Nat.beq 9 10 = false from rfl) (show Nat.beq 9 13 = false from rfl) (show Nat.beq 9 15 = false from rfl) (show Nat.beq 9 16 = false from rfl) (show Nat.beq 9 24 = false from rfl) (show Nat.beq 9 28 = false from rfl) (show Nat.beq 9 36 = false from rfl) (show Nat.beq 9 42 = false from rfl) (show Nat.beq 9 44 = false from rfl) (show Nat.beq 9 46 = false from rfl) (show Nat.beq 9 47 = false from rfl) (show Nat.beq 9 49 = false from rfl)
theorem not_is_fourth_11 : ¬ IsFourthMod53 11 :=
  not_is_fourth (show Nat.beq 11 0 = false from rfl) (show Nat.beq 11 1 = false from rfl) (show Nat.beq 11 10 = false from rfl) (show Nat.beq 11 13 = false from rfl) (show Nat.beq 11 15 = false from rfl) (show Nat.beq 11 16 = false from rfl) (show Nat.beq 11 24 = false from rfl) (show Nat.beq 11 28 = false from rfl) (show Nat.beq 11 36 = false from rfl) (show Nat.beq 11 42 = false from rfl) (show Nat.beq 11 44 = false from rfl) (show Nat.beq 11 46 = false from rfl) (show Nat.beq 11 47 = false from rfl) (show Nat.beq 11 49 = false from rfl)
theorem not_is_fourth_12 : ¬ IsFourthMod53 12 :=
  not_is_fourth (show Nat.beq 12 0 = false from rfl) (show Nat.beq 12 1 = false from rfl) (show Nat.beq 12 10 = false from rfl) (show Nat.beq 12 13 = false from rfl) (show Nat.beq 12 15 = false from rfl) (show Nat.beq 12 16 = false from rfl) (show Nat.beq 12 24 = false from rfl) (show Nat.beq 12 28 = false from rfl) (show Nat.beq 12 36 = false from rfl) (show Nat.beq 12 42 = false from rfl) (show Nat.beq 12 44 = false from rfl) (show Nat.beq 12 46 = false from rfl) (show Nat.beq 12 47 = false from rfl) (show Nat.beq 12 49 = false from rfl)
theorem not_is_fourth_14 : ¬ IsFourthMod53 14 :=
  not_is_fourth (show Nat.beq 14 0 = false from rfl) (show Nat.beq 14 1 = false from rfl) (show Nat.beq 14 10 = false from rfl) (show Nat.beq 14 13 = false from rfl) (show Nat.beq 14 15 = false from rfl) (show Nat.beq 14 16 = false from rfl) (show Nat.beq 14 24 = false from rfl) (show Nat.beq 14 28 = false from rfl) (show Nat.beq 14 36 = false from rfl) (show Nat.beq 14 42 = false from rfl) (show Nat.beq 14 44 = false from rfl) (show Nat.beq 14 46 = false from rfl) (show Nat.beq 14 47 = false from rfl) (show Nat.beq 14 49 = false from rfl)
theorem not_is_fourth_17 : ¬ IsFourthMod53 17 :=
  not_is_fourth (show Nat.beq 17 0 = false from rfl) (show Nat.beq 17 1 = false from rfl) (show Nat.beq 17 10 = false from rfl) (show Nat.beq 17 13 = false from rfl) (show Nat.beq 17 15 = false from rfl) (show Nat.beq 17 16 = false from rfl) (show Nat.beq 17 24 = false from rfl) (show Nat.beq 17 28 = false from rfl) (show Nat.beq 17 36 = false from rfl) (show Nat.beq 17 42 = false from rfl) (show Nat.beq 17 44 = false from rfl) (show Nat.beq 17 46 = false from rfl) (show Nat.beq 17 47 = false from rfl) (show Nat.beq 17 49 = false from rfl)
theorem not_is_fourth_18 : ¬ IsFourthMod53 18 :=
  not_is_fourth (show Nat.beq 18 0 = false from rfl) (show Nat.beq 18 1 = false from rfl) (show Nat.beq 18 10 = false from rfl) (show Nat.beq 18 13 = false from rfl) (show Nat.beq 18 15 = false from rfl) (show Nat.beq 18 16 = false from rfl) (show Nat.beq 18 24 = false from rfl) (show Nat.beq 18 28 = false from rfl) (show Nat.beq 18 36 = false from rfl) (show Nat.beq 18 42 = false from rfl) (show Nat.beq 18 44 = false from rfl) (show Nat.beq 18 46 = false from rfl) (show Nat.beq 18 47 = false from rfl) (show Nat.beq 18 49 = false from rfl)
theorem not_is_fourth_19 : ¬ IsFourthMod53 19 :=
  not_is_fourth (show Nat.beq 19 0 = false from rfl) (show Nat.beq 19 1 = false from rfl) (show Nat.beq 19 10 = false from rfl) (show Nat.beq 19 13 = false from rfl) (show Nat.beq 19 15 = false from rfl) (show Nat.beq 19 16 = false from rfl) (show Nat.beq 19 24 = false from rfl) (show Nat.beq 19 28 = false from rfl) (show Nat.beq 19 36 = false from rfl) (show Nat.beq 19 42 = false from rfl) (show Nat.beq 19 44 = false from rfl) (show Nat.beq 19 46 = false from rfl) (show Nat.beq 19 47 = false from rfl) (show Nat.beq 19 49 = false from rfl)
theorem not_is_fourth_20 : ¬ IsFourthMod53 20 :=
  not_is_fourth (show Nat.beq 20 0 = false from rfl) (show Nat.beq 20 1 = false from rfl) (show Nat.beq 20 10 = false from rfl) (show Nat.beq 20 13 = false from rfl) (show Nat.beq 20 15 = false from rfl) (show Nat.beq 20 16 = false from rfl) (show Nat.beq 20 24 = false from rfl) (show Nat.beq 20 28 = false from rfl) (show Nat.beq 20 36 = false from rfl) (show Nat.beq 20 42 = false from rfl) (show Nat.beq 20 44 = false from rfl) (show Nat.beq 20 46 = false from rfl) (show Nat.beq 20 47 = false from rfl) (show Nat.beq 20 49 = false from rfl)
theorem not_is_fourth_21 : ¬ IsFourthMod53 21 :=
  not_is_fourth (show Nat.beq 21 0 = false from rfl) (show Nat.beq 21 1 = false from rfl) (show Nat.beq 21 10 = false from rfl) (show Nat.beq 21 13 = false from rfl) (show Nat.beq 21 15 = false from rfl) (show Nat.beq 21 16 = false from rfl) (show Nat.beq 21 24 = false from rfl) (show Nat.beq 21 28 = false from rfl) (show Nat.beq 21 36 = false from rfl) (show Nat.beq 21 42 = false from rfl) (show Nat.beq 21 44 = false from rfl) (show Nat.beq 21 46 = false from rfl) (show Nat.beq 21 47 = false from rfl) (show Nat.beq 21 49 = false from rfl)
theorem not_is_fourth_22 : ¬ IsFourthMod53 22 :=
  not_is_fourth (show Nat.beq 22 0 = false from rfl) (show Nat.beq 22 1 = false from rfl) (show Nat.beq 22 10 = false from rfl) (show Nat.beq 22 13 = false from rfl) (show Nat.beq 22 15 = false from rfl) (show Nat.beq 22 16 = false from rfl) (show Nat.beq 22 24 = false from rfl) (show Nat.beq 22 28 = false from rfl) (show Nat.beq 22 36 = false from rfl) (show Nat.beq 22 42 = false from rfl) (show Nat.beq 22 44 = false from rfl) (show Nat.beq 22 46 = false from rfl) (show Nat.beq 22 47 = false from rfl) (show Nat.beq 22 49 = false from rfl)
theorem not_is_fourth_23 : ¬ IsFourthMod53 23 :=
  not_is_fourth (show Nat.beq 23 0 = false from rfl) (show Nat.beq 23 1 = false from rfl) (show Nat.beq 23 10 = false from rfl) (show Nat.beq 23 13 = false from rfl) (show Nat.beq 23 15 = false from rfl) (show Nat.beq 23 16 = false from rfl) (show Nat.beq 23 24 = false from rfl) (show Nat.beq 23 28 = false from rfl) (show Nat.beq 23 36 = false from rfl) (show Nat.beq 23 42 = false from rfl) (show Nat.beq 23 44 = false from rfl) (show Nat.beq 23 46 = false from rfl) (show Nat.beq 23 47 = false from rfl) (show Nat.beq 23 49 = false from rfl)
theorem not_is_fourth_25 : ¬ IsFourthMod53 25 :=
  not_is_fourth (show Nat.beq 25 0 = false from rfl) (show Nat.beq 25 1 = false from rfl) (show Nat.beq 25 10 = false from rfl) (show Nat.beq 25 13 = false from rfl) (show Nat.beq 25 15 = false from rfl) (show Nat.beq 25 16 = false from rfl) (show Nat.beq 25 24 = false from rfl) (show Nat.beq 25 28 = false from rfl) (show Nat.beq 25 36 = false from rfl) (show Nat.beq 25 42 = false from rfl) (show Nat.beq 25 44 = false from rfl) (show Nat.beq 25 46 = false from rfl) (show Nat.beq 25 47 = false from rfl) (show Nat.beq 25 49 = false from rfl)
theorem not_is_fourth_26 : ¬ IsFourthMod53 26 :=
  not_is_fourth (show Nat.beq 26 0 = false from rfl) (show Nat.beq 26 1 = false from rfl) (show Nat.beq 26 10 = false from rfl) (show Nat.beq 26 13 = false from rfl) (show Nat.beq 26 15 = false from rfl) (show Nat.beq 26 16 = false from rfl) (show Nat.beq 26 24 = false from rfl) (show Nat.beq 26 28 = false from rfl) (show Nat.beq 26 36 = false from rfl) (show Nat.beq 26 42 = false from rfl) (show Nat.beq 26 44 = false from rfl) (show Nat.beq 26 46 = false from rfl) (show Nat.beq 26 47 = false from rfl) (show Nat.beq 26 49 = false from rfl)
theorem not_is_fourth_27 : ¬ IsFourthMod53 27 :=
  not_is_fourth (show Nat.beq 27 0 = false from rfl) (show Nat.beq 27 1 = false from rfl) (show Nat.beq 27 10 = false from rfl) (show Nat.beq 27 13 = false from rfl) (show Nat.beq 27 15 = false from rfl) (show Nat.beq 27 16 = false from rfl) (show Nat.beq 27 24 = false from rfl) (show Nat.beq 27 28 = false from rfl) (show Nat.beq 27 36 = false from rfl) (show Nat.beq 27 42 = false from rfl) (show Nat.beq 27 44 = false from rfl) (show Nat.beq 27 46 = false from rfl) (show Nat.beq 27 47 = false from rfl) (show Nat.beq 27 49 = false from rfl)
theorem not_is_fourth_29 : ¬ IsFourthMod53 29 :=
  not_is_fourth (show Nat.beq 29 0 = false from rfl) (show Nat.beq 29 1 = false from rfl) (show Nat.beq 29 10 = false from rfl) (show Nat.beq 29 13 = false from rfl) (show Nat.beq 29 15 = false from rfl) (show Nat.beq 29 16 = false from rfl) (show Nat.beq 29 24 = false from rfl) (show Nat.beq 29 28 = false from rfl) (show Nat.beq 29 36 = false from rfl) (show Nat.beq 29 42 = false from rfl) (show Nat.beq 29 44 = false from rfl) (show Nat.beq 29 46 = false from rfl) (show Nat.beq 29 47 = false from rfl) (show Nat.beq 29 49 = false from rfl)
theorem not_is_fourth_30 : ¬ IsFourthMod53 30 :=
  not_is_fourth (show Nat.beq 30 0 = false from rfl) (show Nat.beq 30 1 = false from rfl) (show Nat.beq 30 10 = false from rfl) (show Nat.beq 30 13 = false from rfl) (show Nat.beq 30 15 = false from rfl) (show Nat.beq 30 16 = false from rfl) (show Nat.beq 30 24 = false from rfl) (show Nat.beq 30 28 = false from rfl) (show Nat.beq 30 36 = false from rfl) (show Nat.beq 30 42 = false from rfl) (show Nat.beq 30 44 = false from rfl) (show Nat.beq 30 46 = false from rfl) (show Nat.beq 30 47 = false from rfl) (show Nat.beq 30 49 = false from rfl)
theorem not_is_fourth_31 : ¬ IsFourthMod53 31 :=
  not_is_fourth (show Nat.beq 31 0 = false from rfl) (show Nat.beq 31 1 = false from rfl) (show Nat.beq 31 10 = false from rfl) (show Nat.beq 31 13 = false from rfl) (show Nat.beq 31 15 = false from rfl) (show Nat.beq 31 16 = false from rfl) (show Nat.beq 31 24 = false from rfl) (show Nat.beq 31 28 = false from rfl) (show Nat.beq 31 36 = false from rfl) (show Nat.beq 31 42 = false from rfl) (show Nat.beq 31 44 = false from rfl) (show Nat.beq 31 46 = false from rfl) (show Nat.beq 31 47 = false from rfl) (show Nat.beq 31 49 = false from rfl)
theorem not_is_fourth_32 : ¬ IsFourthMod53 32 :=
  not_is_fourth (show Nat.beq 32 0 = false from rfl) (show Nat.beq 32 1 = false from rfl) (show Nat.beq 32 10 = false from rfl) (show Nat.beq 32 13 = false from rfl) (show Nat.beq 32 15 = false from rfl) (show Nat.beq 32 16 = false from rfl) (show Nat.beq 32 24 = false from rfl) (show Nat.beq 32 28 = false from rfl) (show Nat.beq 32 36 = false from rfl) (show Nat.beq 32 42 = false from rfl) (show Nat.beq 32 44 = false from rfl) (show Nat.beq 32 46 = false from rfl) (show Nat.beq 32 47 = false from rfl) (show Nat.beq 32 49 = false from rfl)
theorem not_is_fourth_33 : ¬ IsFourthMod53 33 :=
  not_is_fourth (show Nat.beq 33 0 = false from rfl) (show Nat.beq 33 1 = false from rfl) (show Nat.beq 33 10 = false from rfl) (show Nat.beq 33 13 = false from rfl) (show Nat.beq 33 15 = false from rfl) (show Nat.beq 33 16 = false from rfl) (show Nat.beq 33 24 = false from rfl) (show Nat.beq 33 28 = false from rfl) (show Nat.beq 33 36 = false from rfl) (show Nat.beq 33 42 = false from rfl) (show Nat.beq 33 44 = false from rfl) (show Nat.beq 33 46 = false from rfl) (show Nat.beq 33 47 = false from rfl) (show Nat.beq 33 49 = false from rfl)
theorem not_is_fourth_34 : ¬ IsFourthMod53 34 :=
  not_is_fourth (show Nat.beq 34 0 = false from rfl) (show Nat.beq 34 1 = false from rfl) (show Nat.beq 34 10 = false from rfl) (show Nat.beq 34 13 = false from rfl) (show Nat.beq 34 15 = false from rfl) (show Nat.beq 34 16 = false from rfl) (show Nat.beq 34 24 = false from rfl) (show Nat.beq 34 28 = false from rfl) (show Nat.beq 34 36 = false from rfl) (show Nat.beq 34 42 = false from rfl) (show Nat.beq 34 44 = false from rfl) (show Nat.beq 34 46 = false from rfl) (show Nat.beq 34 47 = false from rfl) (show Nat.beq 34 49 = false from rfl)
theorem not_is_fourth_35 : ¬ IsFourthMod53 35 :=
  not_is_fourth (show Nat.beq 35 0 = false from rfl) (show Nat.beq 35 1 = false from rfl) (show Nat.beq 35 10 = false from rfl) (show Nat.beq 35 13 = false from rfl) (show Nat.beq 35 15 = false from rfl) (show Nat.beq 35 16 = false from rfl) (show Nat.beq 35 24 = false from rfl) (show Nat.beq 35 28 = false from rfl) (show Nat.beq 35 36 = false from rfl) (show Nat.beq 35 42 = false from rfl) (show Nat.beq 35 44 = false from rfl) (show Nat.beq 35 46 = false from rfl) (show Nat.beq 35 47 = false from rfl) (show Nat.beq 35 49 = false from rfl)
theorem not_is_fourth_37 : ¬ IsFourthMod53 37 :=
  not_is_fourth (show Nat.beq 37 0 = false from rfl) (show Nat.beq 37 1 = false from rfl) (show Nat.beq 37 10 = false from rfl) (show Nat.beq 37 13 = false from rfl) (show Nat.beq 37 15 = false from rfl) (show Nat.beq 37 16 = false from rfl) (show Nat.beq 37 24 = false from rfl) (show Nat.beq 37 28 = false from rfl) (show Nat.beq 37 36 = false from rfl) (show Nat.beq 37 42 = false from rfl) (show Nat.beq 37 44 = false from rfl) (show Nat.beq 37 46 = false from rfl) (show Nat.beq 37 47 = false from rfl) (show Nat.beq 37 49 = false from rfl)
theorem not_is_fourth_38 : ¬ IsFourthMod53 38 :=
  not_is_fourth (show Nat.beq 38 0 = false from rfl) (show Nat.beq 38 1 = false from rfl) (show Nat.beq 38 10 = false from rfl) (show Nat.beq 38 13 = false from rfl) (show Nat.beq 38 15 = false from rfl) (show Nat.beq 38 16 = false from rfl) (show Nat.beq 38 24 = false from rfl) (show Nat.beq 38 28 = false from rfl) (show Nat.beq 38 36 = false from rfl) (show Nat.beq 38 42 = false from rfl) (show Nat.beq 38 44 = false from rfl) (show Nat.beq 38 46 = false from rfl) (show Nat.beq 38 47 = false from rfl) (show Nat.beq 38 49 = false from rfl)
theorem not_is_fourth_39 : ¬ IsFourthMod53 39 :=
  not_is_fourth (show Nat.beq 39 0 = false from rfl) (show Nat.beq 39 1 = false from rfl) (show Nat.beq 39 10 = false from rfl) (show Nat.beq 39 13 = false from rfl) (show Nat.beq 39 15 = false from rfl) (show Nat.beq 39 16 = false from rfl) (show Nat.beq 39 24 = false from rfl) (show Nat.beq 39 28 = false from rfl) (show Nat.beq 39 36 = false from rfl) (show Nat.beq 39 42 = false from rfl) (show Nat.beq 39 44 = false from rfl) (show Nat.beq 39 46 = false from rfl) (show Nat.beq 39 47 = false from rfl) (show Nat.beq 39 49 = false from rfl)
theorem not_is_fourth_40 : ¬ IsFourthMod53 40 :=
  not_is_fourth (show Nat.beq 40 0 = false from rfl) (show Nat.beq 40 1 = false from rfl) (show Nat.beq 40 10 = false from rfl) (show Nat.beq 40 13 = false from rfl) (show Nat.beq 40 15 = false from rfl) (show Nat.beq 40 16 = false from rfl) (show Nat.beq 40 24 = false from rfl) (show Nat.beq 40 28 = false from rfl) (show Nat.beq 40 36 = false from rfl) (show Nat.beq 40 42 = false from rfl) (show Nat.beq 40 44 = false from rfl) (show Nat.beq 40 46 = false from rfl) (show Nat.beq 40 47 = false from rfl) (show Nat.beq 40 49 = false from rfl)
theorem not_is_fourth_41 : ¬ IsFourthMod53 41 :=
  not_is_fourth (show Nat.beq 41 0 = false from rfl) (show Nat.beq 41 1 = false from rfl) (show Nat.beq 41 10 = false from rfl) (show Nat.beq 41 13 = false from rfl) (show Nat.beq 41 15 = false from rfl) (show Nat.beq 41 16 = false from rfl) (show Nat.beq 41 24 = false from rfl) (show Nat.beq 41 28 = false from rfl) (show Nat.beq 41 36 = false from rfl) (show Nat.beq 41 42 = false from rfl) (show Nat.beq 41 44 = false from rfl) (show Nat.beq 41 46 = false from rfl) (show Nat.beq 41 47 = false from rfl) (show Nat.beq 41 49 = false from rfl)
theorem not_is_fourth_43 : ¬ IsFourthMod53 43 :=
  not_is_fourth (show Nat.beq 43 0 = false from rfl) (show Nat.beq 43 1 = false from rfl) (show Nat.beq 43 10 = false from rfl) (show Nat.beq 43 13 = false from rfl) (show Nat.beq 43 15 = false from rfl) (show Nat.beq 43 16 = false from rfl) (show Nat.beq 43 24 = false from rfl) (show Nat.beq 43 28 = false from rfl) (show Nat.beq 43 36 = false from rfl) (show Nat.beq 43 42 = false from rfl) (show Nat.beq 43 44 = false from rfl) (show Nat.beq 43 46 = false from rfl) (show Nat.beq 43 47 = false from rfl) (show Nat.beq 43 49 = false from rfl)
theorem not_is_fourth_45 : ¬ IsFourthMod53 45 :=
  not_is_fourth (show Nat.beq 45 0 = false from rfl) (show Nat.beq 45 1 = false from rfl) (show Nat.beq 45 10 = false from rfl) (show Nat.beq 45 13 = false from rfl) (show Nat.beq 45 15 = false from rfl) (show Nat.beq 45 16 = false from rfl) (show Nat.beq 45 24 = false from rfl) (show Nat.beq 45 28 = false from rfl) (show Nat.beq 45 36 = false from rfl) (show Nat.beq 45 42 = false from rfl) (show Nat.beq 45 44 = false from rfl) (show Nat.beq 45 46 = false from rfl) (show Nat.beq 45 47 = false from rfl) (show Nat.beq 45 49 = false from rfl)
theorem not_is_fourth_48 : ¬ IsFourthMod53 48 :=
  not_is_fourth (show Nat.beq 48 0 = false from rfl) (show Nat.beq 48 1 = false from rfl) (show Nat.beq 48 10 = false from rfl) (show Nat.beq 48 13 = false from rfl) (show Nat.beq 48 15 = false from rfl) (show Nat.beq 48 16 = false from rfl) (show Nat.beq 48 24 = false from rfl) (show Nat.beq 48 28 = false from rfl) (show Nat.beq 48 36 = false from rfl) (show Nat.beq 48 42 = false from rfl) (show Nat.beq 48 44 = false from rfl) (show Nat.beq 48 46 = false from rfl) (show Nat.beq 48 47 = false from rfl) (show Nat.beq 48 49 = false from rfl)
theorem not_is_fourth_50 : ¬ IsFourthMod53 50 :=
  not_is_fourth (show Nat.beq 50 0 = false from rfl) (show Nat.beq 50 1 = false from rfl) (show Nat.beq 50 10 = false from rfl) (show Nat.beq 50 13 = false from rfl) (show Nat.beq 50 15 = false from rfl) (show Nat.beq 50 16 = false from rfl) (show Nat.beq 50 24 = false from rfl) (show Nat.beq 50 28 = false from rfl) (show Nat.beq 50 36 = false from rfl) (show Nat.beq 50 42 = false from rfl) (show Nat.beq 50 44 = false from rfl) (show Nat.beq 50 46 = false from rfl) (show Nat.beq 50 47 = false from rfl) (show Nat.beq 50 49 = false from rfl)
theorem not_is_fourth_51 : ¬ IsFourthMod53 51 :=
  not_is_fourth (show Nat.beq 51 0 = false from rfl) (show Nat.beq 51 1 = false from rfl) (show Nat.beq 51 10 = false from rfl) (show Nat.beq 51 13 = false from rfl) (show Nat.beq 51 15 = false from rfl) (show Nat.beq 51 16 = false from rfl) (show Nat.beq 51 24 = false from rfl) (show Nat.beq 51 28 = false from rfl) (show Nat.beq 51 36 = false from rfl) (show Nat.beq 51 42 = false from rfl) (show Nat.beq 51 44 = false from rfl) (show Nat.beq 51 46 = false from rfl) (show Nat.beq 51 47 = false from rfl) (show Nat.beq 51 49 = false from rfl)
theorem not_is_fourth_52 : ¬ IsFourthMod53 52 :=
  not_is_fourth (show Nat.beq 52 0 = false from rfl) (show Nat.beq 52 1 = false from rfl) (show Nat.beq 52 10 = false from rfl) (show Nat.beq 52 13 = false from rfl) (show Nat.beq 52 15 = false from rfl) (show Nat.beq 52 16 = false from rfl) (show Nat.beq 52 24 = false from rfl) (show Nat.beq 52 28 = false from rfl) (show Nat.beq 52 36 = false from rfl) (show Nat.beq 52 42 = false from rfl) (show Nat.beq 52 44 = false from rfl) (show Nat.beq 52 46 = false from rfl) (show Nat.beq 52 47 = false from rfl) (show Nat.beq 52 49 = false from rfl)

theorem fourth_pow_is_fourth_of_lt :
    ∀ r : Nat, r < 53 → IsFourthMod53 (Nat.pow r 4 % 53)
  | 0, _ => Or.inl rfl
  | 1, _ => Or.inr (Or.inl rfl)
  | 2, _ => Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inl rfl)))))
  | 3, _ => Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inl rfl)))))))
  | 4, _ => Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inl rfl))))))))))
  | 5, _ => Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inl rfl)))))))))
  | 6, _ => Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inl rfl))))))
  | 7, _ => Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inl rfl)))))
  | 8, _ => Or.inr (Or.inr (Or.inr (Or.inr (Or.inl rfl))))
  | 9, _ => Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inl rfl)))))))))
  | 10, _ => Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inl rfl))))))))
  | 11, _ => Or.inr (Or.inr (Or.inr (Or.inl rfl)))
  | 12, _ => Or.inr (Or.inr (Or.inr (Or.inl rfl)))
  | 13, _ => Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inl rfl))))))))))))
  | 14, _ => Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inl rfl))))))))))
  | 15, _ => Or.inr (Or.inr (Or.inl rfl))
  | 16, _ => Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inl rfl)))))))
  | 17, _ => Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inl rfl)))))))))))
  | 18, _ => Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inl rfl))))))))
  | 19, _ => Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inl rfl))))))))))))
  | 20, _ => Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inl rfl)))))))))))
  | 21, _ => Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inl rfl))))))
  | 22, _ => Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (rfl)))))))))))))
  | 23, _ => Or.inr (Or.inl rfl)
  | 24, _ => Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (rfl)))))))))))))
  | 25, _ => Or.inr (Or.inr (Or.inr (Or.inr (Or.inl rfl))))
  | 26, _ => Or.inr (Or.inr (Or.inl rfl))
  | 27, _ => Or.inr (Or.inr (Or.inl rfl))
  | 28, _ => Or.inr (Or.inr (Or.inr (Or.inr (Or.inl rfl))))
  | 29, _ => Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (rfl)))))))))))))
  | 30, _ => Or.inr (Or.inl rfl)
  | 31, _ => Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (rfl)))))))))))))
  | 32, _ => Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inl rfl))))))
  | 33, _ => Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inl rfl)))))))))))
  | 34, _ => Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inl rfl))))))))))))
  | 35, _ => Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inl rfl))))))))
  | 36, _ => Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inl rfl)))))))))))
  | 37, _ => Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inl rfl)))))))
  | 38, _ => Or.inr (Or.inr (Or.inl rfl))
  | 39, _ => Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inl rfl))))))))))
  | 40, _ => Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inl rfl))))))))))))
  | 41, _ => Or.inr (Or.inr (Or.inr (Or.inl rfl)))
  | 42, _ => Or.inr (Or.inr (Or.inr (Or.inl rfl)))
  | 43, _ => Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inl rfl))))))))
  | 44, _ => Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inl rfl)))))))))
  | 45, _ => Or.inr (Or.inr (Or.inr (Or.inr (Or.inl rfl))))
  | 46, _ => Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inl rfl)))))
  | 47, _ => Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inl rfl))))))
  | 48, _ => Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inl rfl)))))))))
  | 49, _ => Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inl rfl))))))))))
  | 50, _ => Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inl rfl)))))))
  | 51, _ => Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inl rfl)))))
  | 52, _ => Or.inr (Or.inl rfl)
  | n + 53, h => absurd h (Nat.not_lt_of_le (Nat.le_add_left 53 n))

/-! ## Empty-axiom `Nat` toolkit modulo 53 -/

theorem add53_mod (x : Nat) : (x + 53) % 53 = x % 53 :=
  let hcond : 0 < 53 ∧ 53 ≤ x + 53 :=
    ⟨Nat.succ_pos 52, Nat.le_add_left 53 x⟩
  let hmod := Nat.mod_eq (x + 53) 53
  let hif :
      (if 0 < 53 ∧ 53 ≤ x + 53 then (x + 53 - 53) % 53 else x + 53) =
        (x + 53 - 53) % 53 :=
    if_pos hcond
  let hsub : x + 53 - 53 = x := rfl
  (hmod.trans hif).trans (congrArg (fun t => t % 53) hsub)

theorem add_mul53_mod (n : Nat) : ∀ k : Nat, (n + 53 * k) % 53 = n % 53
  | 0 =>
    congrArg (fun t => t % 53) (show n + 53 * 0 = n from rfl)
  | k + 1 =>
    let h1 : n + 53 * (k + 1) = n + 53 * k + 53 :=
      (congrArg (fun t => n + t)
          (show 53 * (k + 1) = 53 * k + 53 from rfl)).trans
        (Nat.add_assoc n (53 * k) 53)
    (congrArg (fun t => t % 53) h1).trans
      ((add53_mod (n + 53 * k)).trans (add_mul53_mod n k))

theorem add_mul_left_fiftythree (a m : Nat) :
    ∀ q : Nat, (a + m * (53 * q)) % 53 = a % 53
  | 0 =>
    congrArg (fun t => t % 53) (show a + m * (53 * 0) = a from rfl)
  | q + 1 =>
    let hmul : m * (53 * (q + 1)) = m * (53 * q) + m * 53 :=
      (congrArg (fun t => m * t)
          (show 53 * (q + 1) = 53 * q + 53 from rfl)).trans
        (Nat.mul_add m (53 * q) 53)
    let hsum : a + m * (53 * (q + 1)) = a + m * (53 * q) + 53 * m :=
      (congrArg (fun t => a + t) hmul).trans
        ((Nat.add_assoc a (m * (53 * q)) (m * 53)).symm.trans
          (congrArg (fun t => a + m * (53 * q) + t) (Nat.mul_comm m 53)))
    (congrArg (fun t => t % 53) hsum).trans
      ((add_mul53_mod (a + m * (53 * q)) m).trans
        (add_mul_left_fiftythree a m q))

theorem exists_mod53 : ∀ n : Nat, ∃ q r : Nat, r < 53 ∧ n = 53 * q + r
  | 0 => ⟨0, 0, by decide, rfl⟩
  | n + 1 =>
    match exists_mod53 n with
    | ⟨q, 0, _, heq⟩ =>
      ⟨q, 1, by decide,
        (congrArg Nat.succ heq).trans
          (show Nat.succ (53 * q + 0) = 53 * q + 1 from rfl)⟩
    | ⟨q, 1, _, heq⟩ =>
      ⟨q, 2, by decide,
        (congrArg Nat.succ heq).trans
          (show Nat.succ (53 * q + 1) = 53 * q + 2 from rfl)⟩
    | ⟨q, 2, _, heq⟩ =>
      ⟨q, 3, by decide,
        (congrArg Nat.succ heq).trans
          (show Nat.succ (53 * q + 2) = 53 * q + 3 from rfl)⟩
    | ⟨q, 3, _, heq⟩ =>
      ⟨q, 4, by decide,
        (congrArg Nat.succ heq).trans
          (show Nat.succ (53 * q + 3) = 53 * q + 4 from rfl)⟩
    | ⟨q, 4, _, heq⟩ =>
      ⟨q, 5, by decide,
        (congrArg Nat.succ heq).trans
          (show Nat.succ (53 * q + 4) = 53 * q + 5 from rfl)⟩
    | ⟨q, 5, _, heq⟩ =>
      ⟨q, 6, by decide,
        (congrArg Nat.succ heq).trans
          (show Nat.succ (53 * q + 5) = 53 * q + 6 from rfl)⟩
    | ⟨q, 6, _, heq⟩ =>
      ⟨q, 7, by decide,
        (congrArg Nat.succ heq).trans
          (show Nat.succ (53 * q + 6) = 53 * q + 7 from rfl)⟩
    | ⟨q, 7, _, heq⟩ =>
      ⟨q, 8, by decide,
        (congrArg Nat.succ heq).trans
          (show Nat.succ (53 * q + 7) = 53 * q + 8 from rfl)⟩
    | ⟨q, 8, _, heq⟩ =>
      ⟨q, 9, by decide,
        (congrArg Nat.succ heq).trans
          (show Nat.succ (53 * q + 8) = 53 * q + 9 from rfl)⟩
    | ⟨q, 9, _, heq⟩ =>
      ⟨q, 10, by decide,
        (congrArg Nat.succ heq).trans
          (show Nat.succ (53 * q + 9) = 53 * q + 10 from rfl)⟩
    | ⟨q, 10, _, heq⟩ =>
      ⟨q, 11, by decide,
        (congrArg Nat.succ heq).trans
          (show Nat.succ (53 * q + 10) = 53 * q + 11 from rfl)⟩
    | ⟨q, 11, _, heq⟩ =>
      ⟨q, 12, by decide,
        (congrArg Nat.succ heq).trans
          (show Nat.succ (53 * q + 11) = 53 * q + 12 from rfl)⟩
    | ⟨q, 12, _, heq⟩ =>
      ⟨q, 13, by decide,
        (congrArg Nat.succ heq).trans
          (show Nat.succ (53 * q + 12) = 53 * q + 13 from rfl)⟩
    | ⟨q, 13, _, heq⟩ =>
      ⟨q, 14, by decide,
        (congrArg Nat.succ heq).trans
          (show Nat.succ (53 * q + 13) = 53 * q + 14 from rfl)⟩
    | ⟨q, 14, _, heq⟩ =>
      ⟨q, 15, by decide,
        (congrArg Nat.succ heq).trans
          (show Nat.succ (53 * q + 14) = 53 * q + 15 from rfl)⟩
    | ⟨q, 15, _, heq⟩ =>
      ⟨q, 16, by decide,
        (congrArg Nat.succ heq).trans
          (show Nat.succ (53 * q + 15) = 53 * q + 16 from rfl)⟩
    | ⟨q, 16, _, heq⟩ =>
      ⟨q, 17, by decide,
        (congrArg Nat.succ heq).trans
          (show Nat.succ (53 * q + 16) = 53 * q + 17 from rfl)⟩
    | ⟨q, 17, _, heq⟩ =>
      ⟨q, 18, by decide,
        (congrArg Nat.succ heq).trans
          (show Nat.succ (53 * q + 17) = 53 * q + 18 from rfl)⟩
    | ⟨q, 18, _, heq⟩ =>
      ⟨q, 19, by decide,
        (congrArg Nat.succ heq).trans
          (show Nat.succ (53 * q + 18) = 53 * q + 19 from rfl)⟩
    | ⟨q, 19, _, heq⟩ =>
      ⟨q, 20, by decide,
        (congrArg Nat.succ heq).trans
          (show Nat.succ (53 * q + 19) = 53 * q + 20 from rfl)⟩
    | ⟨q, 20, _, heq⟩ =>
      ⟨q, 21, by decide,
        (congrArg Nat.succ heq).trans
          (show Nat.succ (53 * q + 20) = 53 * q + 21 from rfl)⟩
    | ⟨q, 21, _, heq⟩ =>
      ⟨q, 22, by decide,
        (congrArg Nat.succ heq).trans
          (show Nat.succ (53 * q + 21) = 53 * q + 22 from rfl)⟩
    | ⟨q, 22, _, heq⟩ =>
      ⟨q, 23, by decide,
        (congrArg Nat.succ heq).trans
          (show Nat.succ (53 * q + 22) = 53 * q + 23 from rfl)⟩
    | ⟨q, 23, _, heq⟩ =>
      ⟨q, 24, by decide,
        (congrArg Nat.succ heq).trans
          (show Nat.succ (53 * q + 23) = 53 * q + 24 from rfl)⟩
    | ⟨q, 24, _, heq⟩ =>
      ⟨q, 25, by decide,
        (congrArg Nat.succ heq).trans
          (show Nat.succ (53 * q + 24) = 53 * q + 25 from rfl)⟩
    | ⟨q, 25, _, heq⟩ =>
      ⟨q, 26, by decide,
        (congrArg Nat.succ heq).trans
          (show Nat.succ (53 * q + 25) = 53 * q + 26 from rfl)⟩
    | ⟨q, 26, _, heq⟩ =>
      ⟨q, 27, by decide,
        (congrArg Nat.succ heq).trans
          (show Nat.succ (53 * q + 26) = 53 * q + 27 from rfl)⟩
    | ⟨q, 27, _, heq⟩ =>
      ⟨q, 28, by decide,
        (congrArg Nat.succ heq).trans
          (show Nat.succ (53 * q + 27) = 53 * q + 28 from rfl)⟩
    | ⟨q, 28, _, heq⟩ =>
      ⟨q, 29, by decide,
        (congrArg Nat.succ heq).trans
          (show Nat.succ (53 * q + 28) = 53 * q + 29 from rfl)⟩
    | ⟨q, 29, _, heq⟩ =>
      ⟨q, 30, by decide,
        (congrArg Nat.succ heq).trans
          (show Nat.succ (53 * q + 29) = 53 * q + 30 from rfl)⟩
    | ⟨q, 30, _, heq⟩ =>
      ⟨q, 31, by decide,
        (congrArg Nat.succ heq).trans
          (show Nat.succ (53 * q + 30) = 53 * q + 31 from rfl)⟩
    | ⟨q, 31, _, heq⟩ =>
      ⟨q, 32, by decide,
        (congrArg Nat.succ heq).trans
          (show Nat.succ (53 * q + 31) = 53 * q + 32 from rfl)⟩
    | ⟨q, 32, _, heq⟩ =>
      ⟨q, 33, by decide,
        (congrArg Nat.succ heq).trans
          (show Nat.succ (53 * q + 32) = 53 * q + 33 from rfl)⟩
    | ⟨q, 33, _, heq⟩ =>
      ⟨q, 34, by decide,
        (congrArg Nat.succ heq).trans
          (show Nat.succ (53 * q + 33) = 53 * q + 34 from rfl)⟩
    | ⟨q, 34, _, heq⟩ =>
      ⟨q, 35, by decide,
        (congrArg Nat.succ heq).trans
          (show Nat.succ (53 * q + 34) = 53 * q + 35 from rfl)⟩
    | ⟨q, 35, _, heq⟩ =>
      ⟨q, 36, by decide,
        (congrArg Nat.succ heq).trans
          (show Nat.succ (53 * q + 35) = 53 * q + 36 from rfl)⟩
    | ⟨q, 36, _, heq⟩ =>
      ⟨q, 37, by decide,
        (congrArg Nat.succ heq).trans
          (show Nat.succ (53 * q + 36) = 53 * q + 37 from rfl)⟩
    | ⟨q, 37, _, heq⟩ =>
      ⟨q, 38, by decide,
        (congrArg Nat.succ heq).trans
          (show Nat.succ (53 * q + 37) = 53 * q + 38 from rfl)⟩
    | ⟨q, 38, _, heq⟩ =>
      ⟨q, 39, by decide,
        (congrArg Nat.succ heq).trans
          (show Nat.succ (53 * q + 38) = 53 * q + 39 from rfl)⟩
    | ⟨q, 39, _, heq⟩ =>
      ⟨q, 40, by decide,
        (congrArg Nat.succ heq).trans
          (show Nat.succ (53 * q + 39) = 53 * q + 40 from rfl)⟩
    | ⟨q, 40, _, heq⟩ =>
      ⟨q, 41, by decide,
        (congrArg Nat.succ heq).trans
          (show Nat.succ (53 * q + 40) = 53 * q + 41 from rfl)⟩
    | ⟨q, 41, _, heq⟩ =>
      ⟨q, 42, by decide,
        (congrArg Nat.succ heq).trans
          (show Nat.succ (53 * q + 41) = 53 * q + 42 from rfl)⟩
    | ⟨q, 42, _, heq⟩ =>
      ⟨q, 43, by decide,
        (congrArg Nat.succ heq).trans
          (show Nat.succ (53 * q + 42) = 53 * q + 43 from rfl)⟩
    | ⟨q, 43, _, heq⟩ =>
      ⟨q, 44, by decide,
        (congrArg Nat.succ heq).trans
          (show Nat.succ (53 * q + 43) = 53 * q + 44 from rfl)⟩
    | ⟨q, 44, _, heq⟩ =>
      ⟨q, 45, by decide,
        (congrArg Nat.succ heq).trans
          (show Nat.succ (53 * q + 44) = 53 * q + 45 from rfl)⟩
    | ⟨q, 45, _, heq⟩ =>
      ⟨q, 46, by decide,
        (congrArg Nat.succ heq).trans
          (show Nat.succ (53 * q + 45) = 53 * q + 46 from rfl)⟩
    | ⟨q, 46, _, heq⟩ =>
      ⟨q, 47, by decide,
        (congrArg Nat.succ heq).trans
          (show Nat.succ (53 * q + 46) = 53 * q + 47 from rfl)⟩
    | ⟨q, 47, _, heq⟩ =>
      ⟨q, 48, by decide,
        (congrArg Nat.succ heq).trans
          (show Nat.succ (53 * q + 47) = 53 * q + 48 from rfl)⟩
    | ⟨q, 48, _, heq⟩ =>
      ⟨q, 49, by decide,
        (congrArg Nat.succ heq).trans
          (show Nat.succ (53 * q + 48) = 53 * q + 49 from rfl)⟩
    | ⟨q, 49, _, heq⟩ =>
      ⟨q, 50, by decide,
        (congrArg Nat.succ heq).trans
          (show Nat.succ (53 * q + 49) = 53 * q + 50 from rfl)⟩
    | ⟨q, 50, _, heq⟩ =>
      ⟨q, 51, by decide,
        (congrArg Nat.succ heq).trans
          (show Nat.succ (53 * q + 50) = 53 * q + 51 from rfl)⟩
    | ⟨q, 51, _, heq⟩ =>
      ⟨q, 52, by decide,
        (congrArg Nat.succ heq).trans
          (show Nat.succ (53 * q + 51) = 53 * q + 52 from rfl)⟩
    | ⟨q, 52, _, heq⟩ =>
      ⟨q + 1, 0, by decide,
        (congrArg Nat.succ heq).trans
          (show Nat.succ (53 * q + 52) = 53 * (q + 1) + 0 from rfl)⟩
    | ⟨_q, r + 53, hr, _heq⟩ =>
      absurd hr (Nat.not_lt_of_le (Nat.le_add_left 53 r))

theorem eq_mod53_of_decomp {n q r : Nat}
    (hr : r < 53) (h : n = 53 * q + r) : n % 53 = r :=
  let h1 : n % 53 = (53 * q + r) % 53 :=
    congrArg (fun t => t % 53) h
  let h2 : 53 * q + r = r + 53 * q := Nat.add_comm (53 * q) r
  let h3 : (53 * q + r) % 53 = (r + 53 * q) % 53 :=
    congrArg (fun t => t % 53) h2
  h1.trans (h3.trans ((add_mul53_mod r q).trans (Nat.mod_eq_of_lt hr)))

theorem mul_mod53 (x y : Nat) :
    (x * y) % 53 = (x % 53 * (y % 53)) % 53 :=
  match exists_mod53 x with
  | ⟨qx, rx, hrx, hx⟩ =>
    match exists_mod53 y with
    | ⟨qy, ry, hry, hy⟩ =>
      let hxmod : x % 53 = rx := eq_mod53_of_decomp hrx hx
      let hymod : y % 53 = ry := eq_mod53_of_decomp hry hy
      let hxy : x * y = (53 * qx + rx) * (53 * qy + ry) :=
        (congrArg (fun t => t * y) hx).trans
          (congrArg (fun t => (53 * qx + rx) * t) hy)
      let hexp : (53 * qx + rx) * (53 * qy + ry) =
          (53 * qx + rx) * ry + (53 * qx + rx) * (53 * qy) :=
        (Nat.mul_add (53 * qx + rx) (53 * qy) ry).trans
          (Nat.add_comm ((53 * qx + rx) * (53 * qy)) ((53 * qx + rx) * ry))
      let hpeel1 :
          ((53 * qx + rx) * ry + (53 * qx + rx) * (53 * qy)) % 53 =
            ((53 * qx + rx) * ry) % 53 :=
        add_mul_left_fiftythree ((53 * qx + rx) * ry) (53 * qx + rx) qy
      let hry : (53 * qx + rx) * ry = rx * ry + ry * (53 * qx) :=
        let hflip : (53 * qx + rx) * ry = ry * (53 * qx + rx) :=
          Nat.mul_comm (53 * qx + rx) ry
        let hdist : ry * (53 * qx + rx) = ry * (53 * qx) + ry * rx :=
          Nat.mul_add ry (53 * qx) rx
        let h1 : ry * (53 * qx) + ry * rx = ry * (53 * qx) + rx * ry :=
          congrArg (fun t => ry * (53 * qx) + t) (Nat.mul_comm ry rx)
        let h2 : ry * (53 * qx) + rx * ry = rx * ry + ry * (53 * qx) :=
          Nat.add_comm (ry * (53 * qx)) (rx * ry)
        hflip.trans (hdist.trans (h1.trans h2))
      let hpeel2 : (rx * ry + ry * (53 * qx)) % 53 = (rx * ry) % 53 :=
        add_mul_left_fiftythree (rx * ry) ry qx
      let hprod : (x * y) % 53 = (rx * ry) % 53 :=
        (congrArg (fun t => t % 53) (hxy.trans hexp)).trans
          (hpeel1.trans
            ((congrArg (fun t => t % 53) hry).trans hpeel2))
      let hrxry : rx * ry = x % 53 * (y % 53) :=
        (congrArg (fun t => t * ry) hxmod.symm).trans
          (congrArg (fun t => x % 53 * t) hymod.symm)
      hprod.trans (congrArg (fun t => t % 53) hrxry)

theorem add_mod53 (x y : Nat) :
    (x + y) % 53 = (x % 53 + y % 53) % 53 :=
  match exists_mod53 x with
  | ⟨qx, rx, hrx, hx⟩ =>
    match exists_mod53 y with
    | ⟨qy, ry, hry, hy⟩ =>
      let hxmod : x % 53 = rx := eq_mod53_of_decomp hrx hx
      let hymod : y % 53 = ry := eq_mod53_of_decomp hry hy
      let hxy : x + y = (53 * qx + rx) + (53 * qy + ry) :=
        (congrArg (fun t => t + y) hx).trans
          (congrArg (fun t => (53 * qx + rx) + t) hy)
      let hcomm : 53 * qy + ry = ry + 53 * qy :=
        Nat.add_comm (53 * qy) ry
      let hxy' : (53 * qx + rx) + (53 * qy + ry) =
          (53 * qx + rx) + (ry + 53 * qy) :=
        congrArg (fun t => (53 * qx + rx) + t) hcomm
      let hassoc : (53 * qx + rx) + (ry + 53 * qy) =
          (53 * qx + rx) + ry + 53 * qy :=
        (Nat.add_assoc (53 * qx + rx) ry (53 * qy)).symm
      let hpeel : ((53 * qx + rx) + ry + 53 * qy) % 53 =
          ((53 * qx + rx) + ry) % 53 :=
        add_mul53_mod ((53 * qx + rx) + ry) qy
      let hcomm2 : 53 * qx + rx = rx + 53 * qx :=
        Nat.add_comm (53 * qx) rx
      let hxy2 : (53 * qx + rx) + ry = rx + 53 * qx + ry :=
        congrArg (fun t => t + ry) hcomm2
      let hassoc2 : rx + 53 * qx + ry = rx + ry + 53 * qx :=
        let h1 : rx + 53 * qx + ry = rx + (53 * qx + ry) :=
          Nat.add_assoc rx (53 * qx) ry
        let h2 : 53 * qx + ry = ry + 53 * qx :=
          Nat.add_comm (53 * qx) ry
        let h3 : rx + (53 * qx + ry) = rx + (ry + 53 * qx) :=
          congrArg (fun t => rx + t) h2
        let h4 : rx + (ry + 53 * qx) = rx + ry + 53 * qx :=
          (Nat.add_assoc rx ry (53 * qx)).symm
        h1.trans (h3.trans h4)
      let hpeel2 : (rx + ry + 53 * qx) % 53 = (rx + ry) % 53 :=
        add_mul53_mod (rx + ry) qx
      let hsum : (x + y) % 53 = (rx + ry) % 53 :=
        (congrArg (fun t => t % 53) (hxy.trans (hxy'.trans hassoc))).trans
          (hpeel.trans
            ((congrArg (fun t => t % 53) (hxy2.trans hassoc2)).trans hpeel2))
      let hrxry : rx + ry = x % 53 + y % 53 :=
        (congrArg (fun t => t + ry) hxmod.symm).trans
          (congrArg (fun t => x % 53 + t) hymod.symm)
      hsum.trans (congrArg (fun t => t % 53) hrxry)

theorem pow_mod53 (n : Nat) :
    ∀ k : Nat, Nat.pow n k % 53 = Nat.pow (n % 53) k % 53
  | 0 => rfl
  | k + 1 =>
    let hs : Nat.pow n (k + 1) = Nat.pow n k * n := Nat.pow_succ n k
    let hs' : Nat.pow (n % 53) (k + 1) =
        Nat.pow (n % 53) k * (n % 53) :=
      Nat.pow_succ (n % 53) k
    let hmodmod : (n % 53) % 53 = n % 53 :=
      Nat.mod_eq_of_lt (Nat.mod_lt n (Nat.succ_pos 52))
    let h1 : (Nat.pow n k * n) % 53 =
        (Nat.pow n k % 53 * (n % 53)) % 53 :=
      mul_mod53 (Nat.pow n k) n
    let h2 : (Nat.pow n k % 53 * (n % 53)) % 53 =
        (Nat.pow (n % 53) k % 53 * (n % 53)) % 53 :=
      congrArg (fun t => (t * (n % 53)) % 53) (pow_mod53 n k)
    let h3 : (Nat.pow (n % 53) k * (n % 53)) % 53 =
        (Nat.pow (n % 53) k % 53 * ((n % 53) % 53)) % 53 :=
      mul_mod53 (Nat.pow (n % 53) k) (n % 53)
    let h4 : (Nat.pow (n % 53) k % 53 * (n % 53)) % 53 =
        (Nat.pow (n % 53) k * (n % 53)) % 53 :=
      (congrArg (fun t => (Nat.pow (n % 53) k % 53 * t) % 53)
          hmodmod.symm).trans h3.symm
    (congrArg (fun t => t % 53) hs).trans
      (h1.trans (h2.trans (h4.trans
        (congrArg (fun t => t % 53) hs'.symm))))

theorem fourth_pow_is_fourth (A : Nat) :
    IsFourthMod53 (Nat.pow A 4 % 53) :=
  let hr : A % 53 < 53 := Nat.mod_lt A (Nat.succ_pos 52)
  let hpow : Nat.pow A 4 % 53 = Nat.pow (A % 53) 4 % 53 :=
    pow_mod53 A 4
  Eq.rec (motive := fun (t : Nat) (_ : Nat.pow (A % 53) 4 % 53 = t) =>
      IsFourthMod53 t)
    (fourth_pow_is_fourth_of_lt (A % 53) hr) hpow.symm

theorem add_sub_cancel_empty (n : Nat) : ∀ k : Nat, n + k - k = n
  | 0 => rfl
  | k + 1 =>
    (Nat.succ_sub_succ (n + k) k).trans (add_sub_cancel_empty n k)

theorem sub_add_cancel_53 {n : Nat} (h : 53 ≤ n) :
    n - 53 + 53 = n :=
  match Nat.le.dest h with
  | ⟨k, hk⟩ =>
    let hsub : n - 53 = k :=
      let hcomm : 53 + k = k + 53 := Nat.add_comm 53 k
      let hcancel : k + 53 - 53 = k := rfl
      (congrArg (fun t => t - 53) (hk.symm.trans hcomm)).trans hcancel
    let hsum : n - 53 + 53 = k + 53 :=
      congrArg (fun t => t + 53) hsub
    hsum.trans ((Nat.add_comm k 53).trans hk)

theorem residue_sub_mod53 (a b c : Nat)
    (ha : a < 53) (hb : b < 53) (_hc : c < 53)
    (h : (a + b) % 53 = c) :
    a = (c + 53 - b) % 53 :=
  match Nat.decLe 53 (a + b) with
  | isFalse hnot =>
    let hlt : a + b < 53 := Nat.not_le.mp hnot
    let hmod : (a + b) % 53 = a + b := Nat.mod_eq_of_lt hlt
    let hab : a + b = c := hmod.symm.trans h
    let hsum : c + 53 - b = a + 53 :=
      let h1 : c + 53 - b = a + b + 53 - b :=
        congrArg (fun t => t + 53 - b) hab.symm
      let h2 : a + b + 53 = a + 53 + b :=
        let h2a : a + b + 53 = a + (b + 53) := Nat.add_assoc a b 53
        let h2b : b + 53 = 53 + b := Nat.add_comm b 53
        let h2c : a + (b + 53) = a + (53 + b) :=
          congrArg (fun t => a + t) h2b
        let h2d : a + (53 + b) = a + 53 + b :=
          (Nat.add_assoc a 53 b).symm
        h2a.trans (h2c.trans h2d)
      let h3 : a + 53 + b - b = a + 53 :=
        add_sub_cancel_empty (a + 53) b
      h1.trans ((congrArg (fun t => t - b) h2).trans h3)
    let hmod2 : (c + 53 - b) % 53 = (a + 53) % 53 :=
      congrArg (fun t => t % 53) hsum
    let ha53 : (a + 53) % 53 = a % 53 := add53_mod a
    let haeq : a % 53 = a := Nat.mod_eq_of_lt ha
    (hmod2.trans (ha53.trans haeq)).symm
  | isTrue hle =>
    let hcond : 0 < 53 ∧ 53 ≤ a + b := ⟨Nat.succ_pos 52, hle⟩
    let hmod := Nat.mod_eq (a + b) 53
    let hif :
        (if 0 < 53 ∧ 53 ≤ a + b then (a + b - 53) % 53 else a + b) =
          (a + b - 53) % 53 :=
      if_pos hcond
    let hsum53 : a + b < 53 + 53 :=
      Nat.add_lt_add ha hb
    let hsublt : a + b - 53 < 53 :=
      let hrestore : a + b - 53 + 53 = a + b := sub_add_cancel_53 hle
      let hlt' : a + b - 53 + 53 < 53 + 53 :=
        Eq.subst (motive := fun t => t < 53 + 53) hrestore.symm hsum53
      Nat.lt_of_add_lt_add_right hlt'
    let hmodsub : (a + b - 53) % 53 = a + b - 53 :=
      Nat.mod_eq_of_lt hsublt
    let hc' : a + b - 53 = c :=
      ((hmod.trans hif).trans hmodsub).symm.trans h
    let hsum : c + 53 - b = a :=
      let h1 : c + 53 - b = a + b - 53 + 53 - b :=
        congrArg (fun t => t + 53 - b) hc'.symm
      let h2 : a + b - 53 + 53 = a + b := sub_add_cancel_53 hle
      let h3 : a + b - b = a := add_sub_cancel_empty a b
      h1.trans ((congrArg (fun t => t - b) h2).trans h3)
    let hmod2 : (c + 53 - b) % 53 = a % 53 :=
      congrArg (fun t => t % 53) hsum
    let haeq : a % 53 = a := Nat.mod_eq_of_lt ha
    (hmod2.trans haeq).symm

/-! ## The residue obstruction -/

/-- `((B+3)¹³ − B⁴) % 53` as a `Nat` subtraction. -/
def rhs_mod53 (B : Nat) : Nat :=
  (Nat.pow (B + 3) 13 % 53 + 53 - Nat.pow B 4 % 53) % 53

/-- Same obstruction on a residue `r = B % 53`. -/
def rhs_mod53_res (r : Nat) : Nat :=
  (Nat.pow ((r + 3) % 53) 13 % 53 + 53 -
    Nat.pow (r % 53) 4 % 53) % 53

theorem rhs_mod53_eq_res (B : Nat) :
    rhs_mod53 B = rhs_mod53_res (B % 53) :=
  let hC : Nat.pow (B + 3) 13 % 53 =
      Nat.pow ((B + 3) % 53) 13 % 53 :=
    pow_mod53 (B + 3) 13
  let hB : Nat.pow B 4 % 53 = Nat.pow (B % 53) 4 % 53 :=
    pow_mod53 B 4
  let h3 : 3 % 53 = 3 := rfl
  let hadd : (B + 3) % 53 = (B % 53 + 3) % 53 :=
    let h1 : (B + 3) % 53 = (B % 53 + 3 % 53) % 53 :=
      add_mod53 B 3
    h1.trans (congrArg (fun t => (B % 53 + t) % 53) h3)
  let hC' : Nat.pow ((B + 3) % 53) 13 % 53 =
      Nat.pow ((B % 53 + 3) % 53) 13 % 53 :=
    congrArg (fun t => Nat.pow t 13 % 53) hadd
  let hmodmod : (B % 53) % 53 = B % 53 :=
    Nat.mod_eq_of_lt (Nat.mod_lt B (Nat.succ_pos 52))
  let hB' : Nat.pow (B % 53) 4 % 53 =
      Nat.pow ((B % 53) % 53) 4 % 53 :=
    congrArg (fun t => Nat.pow t 4 % 53) hmodmod.symm
  (congrArg (fun t => (t + 53 - Nat.pow B 4 % 53) % 53)
      (hC.trans hC')).trans
    (congrArg
      (fun t =>
        (Nat.pow ((B % 53 + 3) % 53) 13 % 53 + 53 - t) % 53)
      (hB.trans hB'))

/-- If the right-hand side is not a fourth power mod 53,
    there is no `A`.  Empty axioms.  Not Ribet. -/
theorem direct_mod53_kill (B : Nat)
    (h : ¬ IsFourthMod53 (rhs_mod53 B)) :
    ¬ ∃ A, Nat.pow A 4 + Nat.pow B 4 = Nat.pow (B + 3) 13 := by
  intro ⟨A, hEq⟩
  let a := Nat.pow A 4 % 53
  let b := Nat.pow B 4 % 53
  let c := Nat.pow (B + 3) 13 % 53
  let hsum : (Nat.pow A 4 + Nat.pow B 4) % 53 = c :=
    congrArg (fun n => n % 53) hEq
  let hadd : (a + b) % 53 = c :=
    (add_mod53 (Nat.pow A 4) (Nat.pow B 4)).symm.trans hsum
  let ha : a < 53 := Nat.mod_lt (Nat.pow A 4) (Nat.succ_pos 52)
  let hb : b < 53 := Nat.mod_lt (Nat.pow B 4) (Nat.succ_pos 52)
  let hc : c < 53 := Nat.mod_lt (Nat.pow (B + 3) 13) (Nat.succ_pos 52)
  let hrhs : a = rhs_mod53 B :=
    residue_sub_mod53 a b c ha hb hc hadd
  let hA : IsFourthMod53 a := fourth_pow_is_fourth A
  let hRhs : IsFourthMod53 (rhs_mod53 B) :=
    Eq.rec (motive := fun (t : Nat) (_ : a = t) => IsFourthMod53 t) hA hrhs
  exact h hRhs

/-! ## Named Step60 rows: 266 killed, 86 remaining -/

def killed_res53 : List Nat :=
  [
    0,
    1,
    2,
    4,
    5,
    7,
    8,
    9,
    10,
    12,
    13,
    14,
    16,
    17,
    18,
    19,
    20,
    21,
    22,
    23,
    24,
    25,
    27,
    29,
    30,
    31,
    32,
    33,
    34,
    36,
    38,
    40,
    41,
    42,
    43,
    44,
    46,
    47,
    48,
    49,
    50,
    51,
    52
  ]

def survives_res53 : List Nat :=
  [
    3,
    6,
    11,
    15,
    26,
    28,
    35,
    37,
    39,
    45
  ]

theorem killed_res53_length : killed_res53.length = 43 :=
  rfl

theorem survives_res53_length : survives_res53.length = 10 :=
  rfl

def step60_b14_killed_mod53 : List Nat :=
  [
    6046,
    15406,
    18526,
    19310,
    19694,
    22814,
    31006,
    37246,
    54302,
    67038,
    71710,
    79454,
    85662,
    89934,
    102126,
    115246,
    117374,
    119502,
    136878,
    147870,
    149998,
    158862,
    167726,
    174110,
    175886,
    176238,
    180494,
    201678,
    203022,
    214766,
    226174,
    228190,
    240942,
    251678,
    252014,
    262078,
    263758,
    264430,
    265774,
    276174,
    276510,
    276846,
    277518,
    287918,
    288590,
    288926,
    314126,
    324222,
    327902,
    329918,
    331598,
    344990,
    348718,
    349038,
    351710,
    356750,
    362750,
    372814,
    379534,
    411086,
    413758,
    415454,
    416462,
    417790,
    423854,
    427198,
    429214,
    432878,
    457006,
    459358,
    464430,
    465118,
    466478,
    471150,
    476510,
    477518,
    514734,
    517038,
    518398,
    523790,
    534814,
    543534,
    552590,
    556638,
    563390,
    569774,
    576110,
    591326,
    610782,
    613790,
    614446,
    623486,
    626174,
    627166,
    629566,
    630558,
    647294,
    661054,
    676174,
    682542,
    685902,
    687582,
    698974,
    707694,
    715086,
    716430,
    719774,
    743918,
    763070,
    775822,
    777838,
    782558,
    782894,
    786222,
    787582,
    792606,
    799006,
    800334,
    826174,
    829870,
    834590,
    836238,
    845614,
    851966,
    853630,
    857982,
    862014,
    878814,
    880190,
    887854,
    894254,
    905038,
    916430,
    921806,
    936526,
    939934,
    946958,
    960350,
    967054,
    975470,
    988974,
    998990,
    1001342,
    1020798,
    1040222,
    1056398,
    1058030,
    1058366,
    1061422,
    1078526,
    1084254,
    1088926,
    1091582,
    1093646,
    1096318,
    1098014,
    1099662,
    1101358,
    1102062,
    1111102,
    1118126,
    1124798,
    1144302,
    1156046,
    1156718,
    1165118,
    1169118,
    1176878,
    1180574,
    1180910,
    1183230,
    1192958,
    1193294,
    1199998,
    1214446,
    1215790,
    1223566,
    1227262,
    1236958,
    1249374,
    1257790,
    1258446,
    1261838,
    1268542,
    1273902,
    1281934,
    1283598,
    1293006,
    1294334,
    1298334,
    1299998,
    1302350,
    1316174,
    1320862,
    1328238,
    1333278,
    1341342,
    1355374,
    1364078,
    1366766,
    1372462,
    1375806,
    1385902,
    1394974,
    1425166,
    1433214,
    1441646,
    1442958,
    1445342,
    1449326,
    1453374,
    1457358,
    1469774,
    1471134,
    1475134,
    1496654,
    1514382,
    1515726,
    1517406,
    1518398,
    1534510,
    1555710,
    1557038,
    1571806,
    1575838,
    1588238,
    1588574,
    1598974,
    1607358,
    1608702,
    1617790,
    1628206,
    1648238,
    1670462,
    1675150,
    1678846,
    1683870,
    1694622,
    1697966,
    1701022,
    1707710,
    1708062,
    1709070,
    1710062,
    1743678,
    1745006,
    1760478,
    1769214,
    1783918,
    1786254,
    1789294,
    1790286,
    1800350,
    1807374,
    1809390,
    1810414,
    1812398,
    1818478,
    1818814,
    1828510,
    1842254,
    1847278,
    1863102,
    1864126,
    1879214,
    1879886
  ]

def step60_b14_survives_mod53 : List Nat :=
  [
    63982,
    77118,
    77902,
    86798,
    87582,
    143614,
    145742,
    163118,
    185102,
    214430,
    226846,
    239934,
    277854,
    306110,
    312798,
    349358,
    368462,
    376814,
    403358,
    418446,
    442958,
    463390,
    463742,
    476158,
    477854,
    502318,
    589982,
    603358,
    607406,
    632910,
    653342,
    671502,
    694286,
    723118,
    735518,
    737214,
    738910,
    787246,
    813118,
    821166,
    832190,
    835902,
    863694,
    874462,
    885198,
    901006,
    904702,
    914094,
    958670,
    991614,
    1050254,
    1056062,
    1078190,
    1105742,
    1133550,
    1136270,
    1155358,
    1170126,
    1181566,
    1184238,
    1203742,
    1205742,
    1219854,
    1287998,
    1296366,
    1357038,
    1359054,
    1374782,
    1386910,
    1401326,
    1420830,
    1430878,
    1434590,
    1441310,
    1473774,
    1520766,
    1523742,
    1533166,
    1536878,
    1609390,
    1611374,
    1660366,
    1752702,
    1777582,
    1824782,
    1858398
  ]

/-- Named alias for the 86 surviving `B ≡ 14` rows. -/
def survivors_86_list : List Nat :=
  step60_b14_survives_mod53

set_option maxRecDepth 32768
set_option maxHeartbeats 4000000

theorem step60_b14_killed_mod53_length :
    step60_b14_killed_mod53.length = 266 :=
  rfl

theorem step60_b14_survives_mod53_length :
    step60_b14_survives_mod53.length = 86 :=
  rfl

theorem survivors_86_list_length :
    survivors_86_list.length = 86 :=
  step60_b14_survives_mod53_length

/-- Conjunction over a list: each residue `rhs_mod53_res (x % 53)`
    is not a fourth power. -/
def all_killed_mod53 : List Nat → Prop
  | [] => True
  | x :: xs =>
      ¬ IsFourthMod53 (rhs_mod53_res (x % 53)) ∧ all_killed_mod53 xs

set_option maxRecDepth 32768
set_option maxHeartbeats 4000000

theorem all_killed_mod53_step60 :
    all_killed_mod53 step60_b14_killed_mod53 :=
  ⟨not_is_fourth_8, ⟨not_is_fourth_37, ⟨not_is_fourth_34, ⟨not_is_fourth_40, ⟨not_is_fourth_27, ⟨not_is_fourth_27, ⟨not_is_fourth_51, ⟨not_is_fourth_5, ⟨not_is_fourth_22, ⟨not_is_fourth_38, ⟨not_is_fourth_51, ⟨not_is_fourth_38, ⟨not_is_fourth_8, ⟨not_is_fourth_38, ⟨not_is_fourth_34, ⟨not_is_fourth_27, ⟨not_is_fourth_6, ⟨not_is_fourth_5, ⟨not_is_fourth_6, ⟨not_is_fourth_30, ⟨not_is_fourth_37, ⟨not_is_fourth_30, ⟨not_is_fourth_5, ⟨not_is_fourth_34, ⟨not_is_fourth_6, ⟨not_is_fourth_7, ⟨not_is_fourth_34, ⟨not_is_fourth_7, ⟨not_is_fourth_6, ⟨not_is_fourth_18, ⟨not_is_fourth_29, ⟨not_is_fourth_39, ⟨not_is_fourth_8, ⟨not_is_fourth_5, ⟨not_is_fourth_29, ⟨not_is_fourth_38, ⟨not_is_fourth_22, ⟨not_is_fourth_7, ⟨not_is_fourth_6, ⟨not_is_fourth_12, ⟨not_is_fourth_34, ⟨not_is_fourth_20, ⟨not_is_fourth_18, ⟨not_is_fourth_3, ⟨not_is_fourth_34, ⟨not_is_fourth_29, ⟨not_is_fourth_34, ⟨not_is_fourth_30, ⟨not_is_fourth_12, ⟨not_is_fourth_38, ⟨not_is_fourth_22, ⟨not_is_fourth_7, ⟨not_is_fourth_27, ⟨not_is_fourth_8, ⟨not_is_fourth_7, ⟨not_is_fourth_38, ⟨not_is_fourth_40, ⟨not_is_fourth_41, ⟨not_is_fourth_51, ⟨not_is_fourth_40, ⟨not_is_fourth_5, ⟨not_is_fourth_5, ⟨not_is_fourth_41, ⟨not_is_fourth_12, ⟨not_is_fourth_7, ⟨not_is_fourth_40, ⟨not_is_fourth_30, ⟨not_is_fourth_20, ⟨not_is_fourth_5, ⟨not_is_fourth_38, ⟨not_is_fourth_12, ⟨not_is_fourth_18, ⟨not_is_fourth_39, ⟨not_is_fourth_8, ⟨not_is_fourth_5, ⟨not_is_fourth_41, ⟨not_is_fourth_38, ⟨not_is_fourth_29, ⟨not_is_fourth_34, ⟨not_is_fourth_12, ⟨not_is_fourth_12, ⟨not_is_fourth_29, ⟨not_is_fourth_41, ⟨not_is_fourth_6, ⟨not_is_fourth_30, ⟨not_is_fourth_27, ⟨not_is_fourth_30, ⟨not_is_fourth_34, ⟨not_is_fourth_18, ⟨not_is_fourth_25, ⟨not_is_fourth_37, ⟨not_is_fourth_52, ⟨not_is_fourth_6, ⟨not_is_fourth_37, ⟨not_is_fourth_6, ⟨not_is_fourth_37, ⟨not_is_fourth_34, ⟨not_is_fourth_20, ⟨not_is_fourth_30, ⟨not_is_fourth_37, ⟨not_is_fourth_34, ⟨not_is_fourth_7, ⟨not_is_fourth_18, ⟨not_is_fourth_20, ⟨not_is_fourth_18, ⟨not_is_fourth_34, ⟨not_is_fourth_5, ⟨not_is_fourth_18, ⟨not_is_fourth_34, ⟨not_is_fourth_37, ⟨not_is_fourth_18, ⟨not_is_fourth_7, ⟨not_is_fourth_27, ⟨not_is_fourth_30, ⟨not_is_fourth_7, ⟨not_is_fourth_12, ⟨not_is_fourth_27, ⟨not_is_fourth_5, ⟨not_is_fourth_18, ⟨not_is_fourth_8, ⟨not_is_fourth_29, ⟨not_is_fourth_8, ⟨not_is_fourth_29, ⟨not_is_fourth_12, ⟨not_is_fourth_41, ⟨not_is_fourth_40, ⟨not_is_fourth_3, ⟨not_is_fourth_30, ⟨not_is_fourth_29, ⟨not_is_fourth_38, ⟨not_is_fourth_20, ⟨not_is_fourth_18, ⟨not_is_fourth_38, ⟨not_is_fourth_22, ⟨not_is_fourth_2, ⟨not_is_fourth_6, ⟨not_is_fourth_38, ⟨not_is_fourth_18, ⟨not_is_fourth_2, ⟨not_is_fourth_34, ⟨not_is_fourth_52, ⟨not_is_fourth_38, ⟨not_is_fourth_7, ⟨not_is_fourth_40, ⟨not_is_fourth_12, ⟨not_is_fourth_7, ⟨not_is_fourth_12, ⟨not_is_fourth_34, ⟨not_is_fourth_12, ⟨not_is_fourth_34, ⟨not_is_fourth_8, ⟨not_is_fourth_41, ⟨not_is_fourth_52, ⟨not_is_fourth_12, ⟨not_is_fourth_7, ⟨not_is_fourth_7, ⟨not_is_fourth_40, ⟨not_is_fourth_40, ⟨not_is_fourth_8, ⟨not_is_fourth_18, ⟨not_is_fourth_20, ⟨not_is_fourth_6, ⟨not_is_fourth_6, ⟨not_is_fourth_18, ⟨not_is_fourth_38, ⟨not_is_fourth_29, ⟨not_is_fourth_12, ⟨not_is_fourth_7, ⟨not_is_fourth_29, ⟨not_is_fourth_37, ⟨not_is_fourth_34, ⟨not_is_fourth_5, ⟨not_is_fourth_29, ⟨not_is_fourth_39, ⟨not_is_fourth_8, ⟨not_is_fourth_29, ⟨not_is_fourth_37, ⟨not_is_fourth_52, ⟨not_is_fourth_12, ⟨not_is_fourth_34, ⟨not_is_fourth_52, ⟨not_is_fourth_8, ⟨not_is_fourth_8, ⟨not_is_fourth_5, ⟨not_is_fourth_52, ⟨not_is_fourth_29, ⟨not_is_fourth_12, ⟨not_is_fourth_40, ⟨not_is_fourth_30, ⟨not_is_fourth_38, ⟨not_is_fourth_8, ⟨not_is_fourth_5, ⟨not_is_fourth_39, ⟨not_is_fourth_8, ⟨not_is_fourth_34, ⟨not_is_fourth_18, ⟨not_is_fourth_40, ⟨not_is_fourth_34, ⟨not_is_fourth_37, ⟨not_is_fourth_7, ⟨not_is_fourth_20, ⟨not_is_fourth_6, ⟨not_is_fourth_34, ⟨not_is_fourth_8, ⟨not_is_fourth_8, ⟨not_is_fourth_41, ⟨not_is_fourth_38, ⟨not_is_fourth_8, ⟨not_is_fourth_6, ⟨not_is_fourth_41, ⟨not_is_fourth_37, ⟨not_is_fourth_37, ⟨not_is_fourth_27, ⟨not_is_fourth_7, ⟨not_is_fourth_20, ⟨not_is_fourth_5, ⟨not_is_fourth_7, ⟨not_is_fourth_6, ⟨not_is_fourth_2, ⟨not_is_fourth_51, ⟨not_is_fourth_51, ⟨not_is_fourth_51, ⟨not_is_fourth_8, ⟨not_is_fourth_20, ⟨not_is_fourth_17, ⟨not_is_fourth_5, ⟨not_is_fourth_34, ⟨not_is_fourth_37, ⟨not_is_fourth_20, ⟨not_is_fourth_38, ⟨not_is_fourth_40, ⟨not_is_fourth_38, ⟨not_is_fourth_12, ⟨not_is_fourth_37, ⟨not_is_fourth_6, ⟨not_is_fourth_40, ⟨not_is_fourth_38, ⟨not_is_fourth_30, ⟨not_is_fourth_34, ⟨not_is_fourth_5, ⟨not_is_fourth_25, ⟨not_is_fourth_27, ⟨not_is_fourth_6, ⟨not_is_fourth_37, ⟨not_is_fourth_27, ⟨not_is_fourth_5, ⟨not_is_fourth_22, ⟨not_is_fourth_30, ⟨not_is_fourth_12, ⟨not_is_fourth_34, ⟨not_is_fourth_8, ⟨not_is_fourth_29, ⟨not_is_fourth_38, ⟨not_is_fourth_30, ⟨not_is_fourth_29, ⟨not_is_fourth_5, ⟨not_is_fourth_18, ⟨not_is_fourth_34, ⟨not_is_fourth_7, ⟨not_is_fourth_18, ⟨not_is_fourth_20, ⟨not_is_fourth_2, ⟨not_is_fourth_38, ⟨not_is_fourth_18, ⟨not_is_fourth_38, ⟨not_is_fourth_34, True.intro⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩

theorem not_fourth_of_all_killed :
    ∀ l : List Nat, all_killed_mod53 l →
      ∀ B : Nat, B ∈ l → ¬ IsFourthMod53 (rhs_mod53_res (B % 53))
  | [], _, _B, hB => nomatch hB
  | _x :: xs, ⟨hx, hxs⟩, B, hB =>
    match hB with
    | List.Mem.head _ => hx
    | List.Mem.tail _ h' => not_fourth_of_all_killed xs hxs B h'

theorem step60_b14_killed_mod53_rhs (B : Nat)
    (hB : B ∈ step60_b14_killed_mod53) :
    ¬ IsFourthMod53 (rhs_mod53 B) :=
  let hnot : ¬ IsFourthMod53 (rhs_mod53_res (B % 53)) :=
    not_fourth_of_all_killed step60_b14_killed_mod53
      all_killed_mod53_step60 B hB
  Eq.rec (motive := fun t (_ : rhs_mod53_res (B % 53) = t) =>
      ¬ IsFourthMod53 t)
    hnot (rhs_mod53_eq_res B).symm

/-- 266 of the 352 named `B ≡ 14` rows die by the
    fourth-power non-residue test modulo 53.
    Empty axioms.  Not Ribet.  The other 86 stay. -/
theorem beal_4_13_13_gap3_B_le_2M_eliminated_B14_mod53
    (B : Nat) (hB : B ∈ step60_b14_killed_mod53) :
    ¬ ∃ A, Nat.pow A 4 + Nat.pow B 4 = Nat.pow (B + 3) 13 :=
  direct_mod53_kill B (step60_b14_killed_mod53_rhs B hB)

#check fourth_powers_mod53
#check rhs_mod53
#check direct_mod53_kill
#check step60_b14_killed_mod53
#check step60_b14_survives_mod53
#check survivors_86_list
#check beal_4_13_13_gap3_B_le_2M_eliminated_B14_mod53
#print axioms add53_mod
#print axioms mul_mod53
#print axioms add_mod53
#print axioms pow_mod53
#print axioms fourth_pow_is_fourth_of_lt
#print axioms fourth_pow_is_fourth
#print axioms mem_of_eq
#print axioms residue_sub_mod53
#print axioms direct_mod53_kill
#print axioms all_killed_mod53_step60
#print axioms step60_b14_killed_mod53_length
#print axioms step60_b14_killed_mod53_rhs
#print axioms beal_4_13_13_gap3_B_le_2M_eliminated_B14_mod53

end BealLevel26Foundations.BealFreyMod53Kill
