/-
Copyright (c) 2026 David Fox. All rights reserved.
Released under MIT license as described in the file LICENSE.
Authors: David Fox

Track B v8.76.0 — mod-16 sweep of the 2M
named-row class.

`beal_gap3_mod16_elim` kills every odd `B`.
`beal_gap3_mod16_elim_even_not14` kills
every even `B` with `B % 16 ≠ 14`.
Together that is 15 of 16 residue
classes: `A^4 + B^4 = (B+3)^13` is
impossible unless `B ≡ 14 [MOD 16]`.

`beal_4_13_13_gap3_B_le_2M_eliminated_mod16`
is that kill on `B ≤ 2000000` (the 5983
count stays `4488+5*299=5983`).  This is
**not** an enumeration of 5983 numerals.
Rows with `B ≡ 14 [MOD 16]` remain; those
need the v8.69.0–v8.74.0 Kraus pack
(`-2` vs `0`/`12`, `24` vs `21`/`-39`),
which is recorded and does **not** inhabit
those remaining rows.

`#print axioms` is empty.  Statements use
kernel `Nat.pow` (Mathlib `HPow` injects
`propext`).  Not `Classical.em`.
The old
`beal_4_13_13_gap3_B_le_2M_eliminated`
stays `Classical.em` on
`hasSmallZsigWitness`.

`196` (`4 ≠ 14`) and `1500003` (odd)
are instances.  Not Ribet.  Not a Beal
`∀` (the class `B ≡ 14` survives).
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

import BealLevel26Foundations.Beal.FullProof.BealElim
import BealLevel26Foundations.Beal.FullProof.Beal_4_13_13_Zsigmondy_Density_2M

namespace BealLevel26Foundations.BealMod16

open BealLevel26Foundations.BealElim
open BealLevel26Foundations.Beal_4_13_13_Zsigmondy_Density_2M

/-! ## Empty-axiom residue toolkit -/

theorem add2_mod (x : Nat) : (x + 2) % 2 = x % 2 :=
  let hcond : 0 < 2 ∧ 2 ≤ x + 2 :=
    ⟨Nat.succ_pos 1, Nat.le_add_left 2 x⟩
  let hmod := Nat.mod_eq (x + 2) 2
  let hif :
      (if 0 < 2 ∧ 2 ≤ x + 2 then (x + 2 - 2) % 2 else x + 2) =
        (x + 2 - 2) % 2 :=
    if_pos hcond
  let hsub : x + 2 - 2 = x := rfl
  (hmod.trans hif).trans (congrArg (fun t => t % 2) hsub)

theorem add_mul2_mod (n : Nat) : ∀ k : Nat, (n + 2 * k) % 2 = n % 2
  | 0 =>
    congrArg (fun t => t % 2) (show n + 2 * 0 = n from rfl)
  | k + 1 =>
    let h1 : n + 2 * (k + 1) = n + 2 * k + 2 :=
      (congrArg (fun t => n + t)
          (show 2 * (k + 1) = 2 * k + 2 from rfl)).trans
        (Nat.add_assoc n (2 * k) 2)
    (congrArg (fun t => t % 2) h1).trans
      ((add2_mod (n + 2 * k)).trans (add_mul2_mod n k))

theorem sixteen_eq_two_mul_eight_mul :
    ∀ q : Nat, 16 * q = 2 * (8 * q)
  | 0 => rfl
  | q + 1 =>
    let hL : 16 * (q + 1) = 16 * q + 16 := rfl
    let hR : 2 * (8 * (q + 1)) = 2 * (8 * q) + 16 :=
      (congrArg (fun t => 2 * t)
          (show 8 * (q + 1) = 8 * q + 8 from rfl)).trans
        ((Nat.mul_add 2 (8 * q) 8).trans
          (congrArg (fun t => 2 * (8 * q) + t)
            (rfl : 2 * 8 = 16)))
    (hL.trans (congrArg (fun t => t + 16)
        (sixteen_eq_two_mul_eight_mul q))).trans hR.symm

theorem mod2_eq_mod16_mod2 (n : Nat) : n % 2 = (n % 16) % 2 :=
  match exists_mod16 n with
  | ⟨q, r, hr, hn⟩ =>
    let h16 : 16 * q = 2 * (8 * q) := sixteen_eq_two_mul_eight_mul q
    let hn' : n = r + 16 * q := hn.trans (Nat.add_comm (16 * q) r)
    let hn2 : n = r + 2 * (8 * q) :=
      hn'.trans (congrArg (fun t => r + t) h16)
    let hr16 : n % 16 = r := eq_mod16_of_decomp hr hn
    (congrArg (fun t => t % 2) hn2).trans
      ((add_mul2_mod r (8 * q)).trans
        (congrArg (fun t => t % 2) hr16.symm))

theorem pow_mod16 (n : Nat) :
    ∀ k : Nat, Nat.pow n k % 16 = Nat.pow (n % 16) k % 16
  | 0 => rfl
  | k + 1 =>
    let hs : Nat.pow n (k + 1) = Nat.pow n k * n := Nat.pow_succ n k
    let hs' : Nat.pow (n % 16) (k + 1) =
        Nat.pow (n % 16) k * (n % 16) :=
      Nat.pow_succ (n % 16) k
    let hmodmod : (n % 16) % 16 = n % 16 :=
      Nat.mod_eq_of_lt (Nat.mod_lt n (Nat.succ_pos 15))
    let h1 : (Nat.pow n k * n) % 16 =
        (Nat.pow n k % 16 * (n % 16)) % 16 :=
      mul_mod16 (Nat.pow n k) n
    let h2 : (Nat.pow n k % 16 * (n % 16)) % 16 =
        (Nat.pow (n % 16) k % 16 * (n % 16)) % 16 :=
      congrArg (fun t => (t * (n % 16)) % 16) (pow_mod16 n k)
    let h3 : (Nat.pow (n % 16) k * (n % 16)) % 16 =
        (Nat.pow (n % 16) k % 16 * ((n % 16) % 16)) % 16 :=
      mul_mod16 (Nat.pow (n % 16) k) (n % 16)
    let h4 : (Nat.pow (n % 16) k % 16 * (n % 16)) % 16 =
        (Nat.pow (n % 16) k * (n % 16)) % 16 :=
      (congrArg (fun t => (Nat.pow (n % 16) k % 16 * t) % 16)
          hmodmod.symm).trans h3.symm
    (congrArg (fun t => t % 16) hs).trans
      (h1.trans (h2.trans (h4.trans
        (congrArg (fun t => t % 16) hs'.symm))))

/-- `n^4 % 16` is `0` or `1`. -/
theorem fourth_pow_mod16 (n : Nat) :
    Nat.pow n 4 % 16 = 0 ∨ Nat.pow n 4 % 16 = 1 :=
  fourth_pow_mod_16 n

theorem even_res_fourth :
    ∀ r : Nat, r < 16 → r % 2 = 0 → Nat.pow r 4 % 16 = 0
  | 0, _, _ => rfl
  | 2, _, _ => rfl
  | 4, _, _ => rfl
  | 6, _, _ => rfl
  | 8, _, _ => rfl
  | 10, _, _ => rfl
  | 12, _, _ => rfl
  | 14, _, _ => rfl
  | 1, _, h => absurd h (by decide : ¬ ((1 : Nat) % 2 = 0))
  | 3, _, h => absurd h (by decide : ¬ ((3 : Nat) % 2 = 0))
  | 5, _, h => absurd h (by decide : ¬ ((5 : Nat) % 2 = 0))
  | 7, _, h => absurd h (by decide : ¬ ((7 : Nat) % 2 = 0))
  | 9, _, h => absurd h (by decide : ¬ ((9 : Nat) % 2 = 0))
  | 11, _, h => absurd h (by decide : ¬ ((11 : Nat) % 2 = 0))
  | 13, _, h => absurd h (by decide : ¬ ((13 : Nat) % 2 = 0))
  | 15, _, h => absurd h (by decide : ¬ ((15 : Nat) % 2 = 0))
  | _n + 16, h, _ =>
    absurd h (Nat.not_lt_of_le (Nat.le_add_left 16 _n))

theorem odd_res_fourth :
    ∀ r : Nat, r < 16 → r % 2 = 1 → Nat.pow r 4 % 16 = 1
  | 1, _, _ => rfl
  | 3, _, _ => rfl
  | 5, _, _ => rfl
  | 7, _, _ => rfl
  | 9, _, _ => rfl
  | 11, _, _ => rfl
  | 13, _, _ => rfl
  | 15, _, _ => rfl
  | 0, _, h => absurd h (by decide : ¬ ((0 : Nat) % 2 = 1))
  | 2, _, h => absurd h (by decide : ¬ ((2 : Nat) % 2 = 1))
  | 4, _, h => absurd h (by decide : ¬ ((4 : Nat) % 2 = 1))
  | 6, _, h => absurd h (by decide : ¬ ((6 : Nat) % 2 = 1))
  | 8, _, h => absurd h (by decide : ¬ ((8 : Nat) % 2 = 1))
  | 10, _, h => absurd h (by decide : ¬ ((10 : Nat) % 2 = 1))
  | 12, _, h => absurd h (by decide : ¬ ((12 : Nat) % 2 = 1))
  | 14, _, h => absurd h (by decide : ¬ ((14 : Nat) % 2 = 1))
  | _n + 16, h, _ =>
    absurd h (Nat.not_lt_of_le (Nat.le_add_left 16 _n))

theorem even_res_pow13 :
    ∀ r : Nat, r < 16 → r % 2 = 0 → Nat.pow r 13 % 16 = 0
  | 0, _, _ => rfl
  | 2, _, _ => rfl
  | 4, _, _ => rfl
  | 6, _, _ => rfl
  | 8, _, _ => rfl
  | 10, _, _ => rfl
  | 12, _, _ => rfl
  | 14, _, _ => rfl
  | 1, _, h => absurd h (by decide : ¬ ((1 : Nat) % 2 = 0))
  | 3, _, h => absurd h (by decide : ¬ ((3 : Nat) % 2 = 0))
  | 5, _, h => absurd h (by decide : ¬ ((5 : Nat) % 2 = 0))
  | 7, _, h => absurd h (by decide : ¬ ((7 : Nat) % 2 = 0))
  | 9, _, h => absurd h (by decide : ¬ ((9 : Nat) % 2 = 0))
  | 11, _, h => absurd h (by decide : ¬ ((11 : Nat) % 2 = 0))
  | 13, _, h => absurd h (by decide : ¬ ((13 : Nat) % 2 = 0))
  | 15, _, h => absurd h (by decide : ¬ ((15 : Nat) % 2 = 0))
  | _n + 16, h, _ =>
    absurd h (Nat.not_lt_of_le (Nat.le_add_left 16 _n))

theorem odd_res_pow13 :
    ∀ r : Nat, r < 16 → r % 2 = 1 → Nat.pow r 13 % 16 = r
  | 1, _, _ => rfl
  | 3, _, _ => rfl
  | 5, _, _ => rfl
  | 7, _, _ => rfl
  | 9, _, _ => rfl
  | 11, _, _ => rfl
  | 13, _, _ => rfl
  | 15, _, _ => rfl
  | 0, _, h => absurd h (by decide : ¬ ((0 : Nat) % 2 = 1))
  | 2, _, h => absurd h (by decide : ¬ ((2 : Nat) % 2 = 1))
  | 4, _, h => absurd h (by decide : ¬ ((4 : Nat) % 2 = 1))
  | 6, _, h => absurd h (by decide : ¬ ((6 : Nat) % 2 = 1))
  | 8, _, h => absurd h (by decide : ¬ ((8 : Nat) % 2 = 1))
  | 10, _, h => absurd h (by decide : ¬ ((10 : Nat) % 2 = 1))
  | 12, _, h => absurd h (by decide : ¬ ((12 : Nat) % 2 = 1))
  | 14, _, h => absurd h (by decide : ¬ ((14 : Nat) % 2 = 1))
  | _n + 16, h, _ =>
    absurd h (Nat.not_lt_of_le (Nat.le_add_left 16 _n))

theorem even_fourth (n : Nat) (hEven : n % 2 = 0) :
    Nat.pow n 4 % 16 = 0 :=
  let hr : (n % 16) % 2 = 0 :=
    (mod2_eq_mod16_mod2 n).symm.trans hEven
  (pow4_mod16 n).trans
    (even_res_fourth (n % 16) (Nat.mod_lt n (Nat.succ_pos 15)) hr)

theorem odd_fourth (n : Nat) (hOdd : n % 2 = 1) :
    Nat.pow n 4 % 16 = 1 :=
  let hr : (n % 16) % 2 = 1 :=
    (mod2_eq_mod16_mod2 n).symm.trans hOdd
  (pow4_mod16 n).trans
    (odd_res_fourth (n % 16) (Nat.mod_lt n (Nat.succ_pos 15)) hr)

/-- Odd `c` satisfies `c^13 ≡ c [MOD 16]`. -/
theorem odd_pow13_mod16 (c : Nat) (hOdd : c % 2 = 1) :
    Nat.pow c 13 % 16 = c % 16 :=
  let hr : (c % 16) % 2 = 1 :=
    (mod2_eq_mod16_mod2 c).symm.trans hOdd
  let hlt : c % 16 < 16 := Nat.mod_lt c (Nat.succ_pos 15)
  (pow_mod16 c 13).trans
    (odd_res_pow13 (c % 16) hlt hr)

/-- Even `c` satisfies `c^13 ≡ 0 [MOD 16]`. -/
theorem even_pow13_mod16_zero (c : Nat) (hEven : c % 2 = 0) :
    Nat.pow c 13 % 16 = 0 :=
  let hr : (c % 16) % 2 = 0 :=
    (mod2_eq_mod16_mod2 c).symm.trans hEven
  (pow_mod16 c 13).trans
    (even_res_pow13 (c % 16) (Nat.mod_lt c (Nat.succ_pos 15)) hr)

theorem add3_eq_succ_succ_succ (n : Nat) : n + 3 = n + 1 + 2 :=
  (show n + 3 = n + (1 + 2) from rfl).trans (Nat.add_assoc n 1 2).symm

theorem odd_res_succ_even :
    ∀ r : Nat, r < 16 → r % 2 = 1 → (r + 1) % 2 = 0
  | 1, _, _ => rfl
  | 3, _, _ => rfl
  | 5, _, _ => rfl
  | 7, _, _ => rfl
  | 9, _, _ => rfl
  | 11, _, _ => rfl
  | 13, _, _ => rfl
  | 15, _, _ => rfl
  | 0, _, h => absurd h (by decide : ¬ ((0 : Nat) % 2 = 1))
  | 2, _, h => absurd h (by decide : ¬ ((2 : Nat) % 2 = 1))
  | 4, _, h => absurd h (by decide : ¬ ((4 : Nat) % 2 = 1))
  | 6, _, h => absurd h (by decide : ¬ ((6 : Nat) % 2 = 1))
  | 8, _, h => absurd h (by decide : ¬ ((8 : Nat) % 2 = 1))
  | 10, _, h => absurd h (by decide : ¬ ((10 : Nat) % 2 = 1))
  | 12, _, h => absurd h (by decide : ¬ ((12 : Nat) % 2 = 1))
  | 14, _, h => absurd h (by decide : ¬ ((14 : Nat) % 2 = 1))
  | _n + 16, h, _ =>
    absurd h (Nat.not_lt_of_le (Nat.le_add_left 16 _n))

theorem even_res_succ_odd :
    ∀ r : Nat, r < 16 → r % 2 = 0 → (r + 1) % 2 = 1
  | 0, _, _ => rfl
  | 2, _, _ => rfl
  | 4, _, _ => rfl
  | 6, _, _ => rfl
  | 8, _, _ => rfl
  | 10, _, _ => rfl
  | 12, _, _ => rfl
  | 14, _, _ => rfl
  | 1, _, h => absurd h (by decide : ¬ ((1 : Nat) % 2 = 0))
  | 3, _, h => absurd h (by decide : ¬ ((3 : Nat) % 2 = 0))
  | 5, _, h => absurd h (by decide : ¬ ((5 : Nat) % 2 = 0))
  | 7, _, h => absurd h (by decide : ¬ ((7 : Nat) % 2 = 0))
  | 9, _, h => absurd h (by decide : ¬ ((9 : Nat) % 2 = 0))
  | 11, _, h => absurd h (by decide : ¬ ((11 : Nat) % 2 = 0))
  | 13, _, h => absurd h (by decide : ¬ ((13 : Nat) % 2 = 0))
  | 15, _, h => absurd h (by decide : ¬ ((15 : Nat) % 2 = 0))
  | _n + 16, h, _ =>
    absurd h (Nat.not_lt_of_le (Nat.le_add_left 16 _n))

/-- `B` odd ⇒ `B+3` even. -/
theorem odd_add3_even (B : Nat) (hOdd : B % 2 = 1) :
    (B + 3) % 2 = 0 :=
  match exists_mod16 B with
  | ⟨q, r, hr, hn⟩ =>
    let hr2 : r % 2 = 1 :=
      (congrArg (fun t => t % 2)
          (eq_mod16_of_decomp hr hn).symm).trans
        ((mod2_eq_mod16_mod2 B).symm.trans hOdd)
    let hsucc : B + 1 = 16 * q + (r + 1) :=
      (congrArg Nat.succ hn).trans
        (show Nat.succ (16 * q + r) = 16 * q + Nat.succ r from rfl)
    let hr1 : (r + 1) % 2 = 0 :=
      odd_res_succ_even r hr hr2
    let h16 : 16 * q + (r + 1) = r + 1 + 2 * (8 * q) :=
      (Nat.add_comm (16 * q) (r + 1)).trans
        (congrArg (fun t => r + 1 + t) (sixteen_eq_two_mul_eight_mul q))
    let hB1 : (B + 1) % 2 = 0 :=
      (congrArg (fun t => t % 2) (hsucc.trans h16)).trans
        ((add_mul2_mod (r + 1) (8 * q)).trans hr1)
    let hB3 : B + 3 = B + 1 + 2 := add3_eq_succ_succ_succ B
    (congrArg (fun t => t % 2) hB3).trans
      ((add2_mod (B + 1)).trans hB1)

/-- `B` even ⇒ `B+3` odd. -/
theorem even_add3_odd (B : Nat) (hEven : B % 2 = 0) :
    (B + 3) % 2 = 1 :=
  match exists_mod16 B with
  | ⟨q, r, hr, hn⟩ =>
    let hr2 : r % 2 = 0 :=
      (congrArg (fun t => t % 2)
          (eq_mod16_of_decomp hr hn).symm).trans
        ((mod2_eq_mod16_mod2 B).symm.trans hEven)
    let hsucc : B + 1 = 16 * q + (r + 1) :=
      (congrArg Nat.succ hn).trans
        (show Nat.succ (16 * q + r) = 16 * q + Nat.succ r from rfl)
    let hr1 : (r + 1) % 2 = 1 :=
      even_res_succ_odd r hr hr2
    let h16 : 16 * q + (r + 1) = r + 1 + 2 * (8 * q) :=
      (Nat.add_comm (16 * q) (r + 1)).trans
        (congrArg (fun t => r + 1 + t) (sixteen_eq_two_mul_eight_mul q))
    let hB1 : (B + 1) % 2 = 1 :=
      (congrArg (fun t => t % 2) (hsucc.trans h16)).trans
        ((add_mul2_mod (r + 1) (8 * q)).trans hr1)
    let hB3 : B + 3 = B + 1 + 2 := add3_eq_succ_succ_succ B
    (congrArg (fun t => t % 2) hB3).trans
      ((add2_mod (B + 1)).trans hB1)

theorem one_ne_zero : (1 : Nat) ≠ 0 := by decide
theorem two_ne_zero : (2 : Nat) ≠ 0 := by decide
theorem three_ne_zero : (3 : Nat) ≠ 0 := by decide
theorem five_ne_zero : (5 : Nat) ≠ 0 := by decide
theorem seven_ne_zero : (7 : Nat) ≠ 0 := by decide
theorem nine_ne_zero : (9 : Nat) ≠ 0 := by decide
theorem eleven_ne_zero : (11 : Nat) ≠ 0 := by decide
theorem thirteen_ne_zero : (13 : Nat) ≠ 0 := by decide
theorem fifteen_ne_zero : (15 : Nat) ≠ 0 := by decide
theorem three_ne_one : (3 : Nat) ≠ 1 := by decide
theorem five_ne_one : (5 : Nat) ≠ 1 := by decide
theorem seven_ne_one : (7 : Nat) ≠ 1 := by decide
theorem nine_ne_one : (9 : Nat) ≠ 1 := by decide
theorem eleven_ne_one : (11 : Nat) ≠ 1 := by decide
theorem thirteen_ne_one : (13 : Nat) ≠ 1 := by decide
theorem fifteen_ne_one : (15 : Nat) ≠ 1 := by decide
theorem four_ne_fourteen : (4 : Nat) ≠ 14 := by decide
theorem zero_ne_fourteen : (0 : Nat) ≠ 14 := by decide
theorem two_ne_fourteen : (2 : Nat) ≠ 14 := by decide
theorem six_ne_fourteen : (6 : Nat) ≠ 14 := by decide
theorem eight_ne_fourteen : (8 : Nat) ≠ 14 := by decide
theorem ten_ne_fourteen : (10 : Nat) ≠ 14 := by decide
theorem twelve_ne_fourteen : (12 : Nat) ≠ 14 := by decide

theorem lt16_mod2 : ∀ r : Nat, r < 16 → r % 2 = 0 ∨ r % 2 = 1
  | 0, _ => Or.inl rfl
  | 1, _ => Or.inr rfl
  | 2, _ => Or.inl rfl
  | 3, _ => Or.inr rfl
  | 4, _ => Or.inl rfl
  | 5, _ => Or.inr rfl
  | 6, _ => Or.inl rfl
  | 7, _ => Or.inr rfl
  | 8, _ => Or.inl rfl
  | 9, _ => Or.inr rfl
  | 10, _ => Or.inl rfl
  | 11, _ => Or.inr rfl
  | 12, _ => Or.inl rfl
  | 13, _ => Or.inr rfl
  | 14, _ => Or.inl rfl
  | 15, _ => Or.inr rfl
  | _n + 16, h =>
    absurd h (Nat.not_lt_of_le (Nat.le_add_left 16 _n))

/-- Odd `B`: `A^4 + 1 ≡ 0 [MOD 16]` is impossible. -/
theorem beal_gap3_mod16_elim (B A : Nat) (hB_odd : B % 2 = 1) :
    ¬ (Nat.pow A 4 + Nat.pow B 4 = Nat.pow (B + 3) 13) :=
  fun hEq =>
    let hsum : (Nat.pow A 4 + Nat.pow B 4) % 16 =
        Nat.pow (B + 3) 13 % 16 :=
      congrArg (fun t => t % 16) hEq
    let hB4 : Nat.pow B 4 % 16 = 1 := odd_fourth B hB_odd
    let hC13 : Nat.pow (B + 3) 13 % 16 = 0 :=
      even_pow13_mod16_zero (B + 3) (odd_add3_even B hB_odd)
    match exists_mod16 (Nat.pow B 4) with
    | ⟨qB, rB, hrB, hBdecomp⟩ =>
      let hrB1 : rB = 1 :=
        (eq_mod16_of_decomp hrB hBdecomp).symm.trans hB4
      let hB : Nat.pow B 4 = 16 * qB + 1 :=
        hBdecomp.trans (congrArg (fun t => 16 * qB + t) hrB1)
      let hassoc : Nat.pow A 4 + (16 * qB + 1) =
          Nat.pow A 4 + 1 + 16 * qB :=
        (congrArg (fun t => Nat.pow A 4 + t)
            (Nat.add_comm (16 * qB) 1)).trans
          (Nat.add_assoc (Nat.pow A 4) 1 (16 * qB)).symm
      let hA1 : (Nat.pow A 4 + 1) % 16 = 0 :=
        ((add_mul16_mod (Nat.pow A 4 + 1) qB).symm.trans
            ((congrArg (fun t => t % 16)
                ((congrArg (fun t => Nat.pow A 4 + t) hB).trans
                    hassoc).symm).trans
              (hsum.trans hC13)))
      match fourth_pow_mod16 A, exists_mod16 (Nat.pow A 4) with
      | Or.inl h0, ⟨q, r, hr, hdecomp⟩ =>
        let hr0 : r = 0 :=
          (eq_mod16_of_decomp hr hdecomp).symm.trans h0
        let hadd : Nat.pow A 4 + 1 = 16 * q + 1 :=
          (congrArg Nat.succ hdecomp).trans
            (congrArg (fun t => 16 * q + Nat.succ t) hr0)
        let hmod : (Nat.pow A 4 + 1) % 16 = 1 :=
          eq_mod16_of_decomp (by decide : (1 : Nat) < 16) hadd
        one_ne_zero (hmod.symm.trans hA1)
      | Or.inr h1, ⟨q, r, hr, hdecomp⟩ =>
        let hr1 : r = 1 :=
          (eq_mod16_of_decomp hr hdecomp).symm.trans h1
        let hadd : Nat.pow A 4 + 1 = 16 * q + 2 :=
          (congrArg Nat.succ hdecomp).trans
            (congrArg (fun t => 16 * q + Nat.succ t) hr1)
        let hmod : (Nat.pow A 4 + 1) % 16 = 2 :=
          eq_mod16_of_decomp (by decide : (2 : Nat) < 16) hadd
        two_ne_zero (hmod.symm.trans hA1)

theorem even_not14_C_res :
    ∀ r : Nat, r < 16 → r % 2 = 0 → r ≠ 14 →
      (r + 3) % 16 ≠ 0 ∧ (r + 3) % 16 ≠ 1
  | 0, _, _, _ =>
    ⟨three_ne_zero, three_ne_one⟩
  | 2, _, _, _ =>
    ⟨five_ne_zero, five_ne_one⟩
  | 4, _, _, _ =>
    ⟨seven_ne_zero, seven_ne_one⟩
  | 6, _, _, _ =>
    ⟨nine_ne_zero, nine_ne_one⟩
  | 8, _, _, _ =>
    ⟨eleven_ne_zero, eleven_ne_one⟩
  | 10, _, _, _ =>
    ⟨thirteen_ne_zero, thirteen_ne_one⟩
  | 12, _, _, _ =>
    ⟨fifteen_ne_zero, fifteen_ne_one⟩
  | 14, _, _, h => absurd rfl h
  | 1, _, h, _ => absurd h (by decide : ¬ ((1 : Nat) % 2 = 0))
  | 3, _, h, _ => absurd h (by decide : ¬ ((3 : Nat) % 2 = 0))
  | 5, _, h, _ => absurd h (by decide : ¬ ((5 : Nat) % 2 = 0))
  | 7, _, h, _ => absurd h (by decide : ¬ ((7 : Nat) % 2 = 0))
  | 9, _, h, _ => absurd h (by decide : ¬ ((9 : Nat) % 2 = 0))
  | 11, _, h, _ => absurd h (by decide : ¬ ((11 : Nat) % 2 = 0))
  | 13, _, h, _ => absurd h (by decide : ¬ ((13 : Nat) % 2 = 0))
  | 15, _, h, _ => absurd h (by decide : ¬ ((15 : Nat) % 2 = 0))
  | _n + 16, h, _, _ =>
    absurd h (Nat.not_lt_of_le (Nat.le_add_left 16 _n))

theorem add3_mod16 (n : Nat) : (n + 3) % 16 = (n % 16 + 3) % 16 :=
  match exists_mod16 n with
  | ⟨q, r, hr, hn⟩ =>
    let hsum : n + 3 = r + 3 + 16 * q :=
      (congrArg (fun t => t + 3) hn).trans
        ((Nat.add_assoc (16 * q) r 3).trans
          (Nat.add_comm (16 * q) (r + 3)))
    let hL : (n + 3) % 16 = (r + 3) % 16 :=
      (congrArg (fun t => t % 16) hsum).trans
        (add_mul16_mod (r + 3) q)
    let hr16 : n % 16 = r := eq_mod16_of_decomp hr hn
    hL.trans (congrArg (fun t => (t + 3) % 16) hr16.symm)

/-- Even `B` with `B % 16 ≠ 14`:
`A^4 ≡ (B+3) [MOD 16]` and `(B+3) ∉ {0,1}`. -/
theorem beal_gap3_mod16_elim_even_not14
    (B A : Nat) (hEven : B % 2 = 0) (hNot14 : B % 16 ≠ 14) :
    ¬ (Nat.pow A 4 + Nat.pow B 4 = Nat.pow (B + 3) 13) :=
  fun hEq =>
    let hsum : (Nat.pow A 4 + Nat.pow B 4) % 16 =
        Nat.pow (B + 3) 13 % 16 :=
      congrArg (fun t => t % 16) hEq
    let hB4 : Nat.pow B 4 % 16 = 0 := even_fourth B hEven
    let hC13 : Nat.pow (B + 3) 13 % 16 = (B + 3) % 16 :=
      odd_pow13_mod16 (B + 3) (even_add3_odd B hEven)
    let hC : (B + 3) % 16 = (B % 16 + 3) % 16 := add3_mod16 B
    let hRes :=
      even_not14_C_res (B % 16) (Nat.mod_lt B (Nat.succ_pos 15))
        ((mod2_eq_mod16_mod2 B).symm.trans hEven) hNot14
    match exists_mod16 (Nat.pow B 4) with
    | ⟨qB, rB, hrB, hBdecomp⟩ =>
      let hrB0 : rB = 0 :=
        (eq_mod16_of_decomp hrB hBdecomp).symm.trans hB4
      let hB : Nat.pow B 4 = 16 * qB :=
        hBdecomp.trans (congrArg (fun t => 16 * qB + t) hrB0)
      let hA : Nat.pow A 4 % 16 = (B + 3) % 16 :=
        ((add_mul16_mod (Nat.pow A 4) qB).symm.trans
            ((congrArg (fun t => t % 16)
                (congrArg (fun t => Nat.pow A 4 + t) hB.symm)).trans
              (hsum.trans hC13)))
      match fourth_pow_mod16 A with
      | Or.inl h0 =>
        hRes.left ((hC.symm.trans hA.symm).trans h0)
      | Or.inr h1 =>
        hRes.right ((hC.symm.trans hA.symm).trans h1)

/-- Every `B ≢ 14 [MOD 16]`. -/
theorem beal_gap3_mod16_elim_not14 (B A : Nat)
    (hNot14 : B % 16 ≠ 14) :
    ¬ (Nat.pow A 4 + Nat.pow B 4 = Nat.pow (B + 3) 13) :=
  let h2 : B % 2 = 0 ∨ B % 2 = 1 :=
    match lt16_mod2 (B % 16) (Nat.mod_lt B (Nat.succ_pos 15)) with
    | Or.inl h0 => Or.inl ((mod2_eq_mod16_mod2 B).trans h0)
    | Or.inr h1 => Or.inr ((mod2_eq_mod16_mod2 B).trans h1)
  match h2 with
  | Or.inl hEven =>
    beal_gap3_mod16_elim_even_not14 B A hEven hNot14
  | Or.inr hOdd =>
    beal_gap3_mod16_elim B A hOdd

/-! ## 2M sweep and displayed list -/

/-- Displayed inhabited named rows.  The count
`4488+5*299=5983` is `zsig_density_2M_stats`.
This is **not** an enumeration of 5983
numerals. -/
def density_5983_list : List Nat := [196, 1500003]

theorem density_5983_list_eq :
    density_5983_list = [196, 1500003] :=
  rfl

theorem zsig_density_2M_stats_mod16 : 4488 + 5 * 299 = 5983 :=
  zsig_density_2M_stats

/-- Honest 2M sweep: every `B ≤ 2000000` with
`B % 16 ≠ 14` is killed by residues.  The
`Classical.em` capstone stays in Density_2M.
Not a Beal `∀` (`B ≡ 14` survives). -/
theorem beal_4_13_13_gap3_B_le_2M_eliminated_mod16 :
    ∀ B : Nat, B ≤ 2000000 → B % 16 ≠ 14 →
      ¬ ∃ A : Nat,
        Nat.pow A 4 + Nat.pow B 4 = Nat.pow (B + 3) 13 :=
  fun B _hBound hNot14 hBeal =>
    match hBeal with
    | ⟨A, hEq⟩ => beal_gap3_mod16_elim_not14 B A hNot14 hEq

/-- List form on the two inhabited named rows. -/
theorem beal_4_13_13_gap3_density_5983_list_mod16 :
    ∀ B : Nat, B ∈ density_5983_list → B % 16 ≠ 14 →
      ¬ ∃ A : Nat,
        Nat.pow A 4 + Nat.pow B 4 = Nat.pow (B + 3) 13 :=
  fun B _hMem hNot14 hBeal =>
    match hBeal with
    | ⟨A, hEq⟩ => beal_gap3_mod16_elim_not14 B A hNot14 hEq

theorem B_196_mod16_ne_14 : (196 : Nat) % 16 ≠ 14 :=
  (rfl : (196 : Nat) % 16 = 4) ▸ four_ne_fourteen

theorem B_196_even : (196 : Nat) % 2 = 0 := rfl

theorem B_1500003_odd : (1500003 : Nat) % 2 = 1 := rfl

theorem B_1500003_mod16_ne_14 : (1500003 : Nat) % 16 ≠ 14 :=
  fun h14 =>
    let heven : (1500003 : Nat) % 2 = 0 :=
      (mod2_eq_mod16_mod2 1500003).trans
        (congrArg (fun t => t % 2) h14)
    one_ne_zero (B_1500003_odd.symm.trans heven)

/-- `B = 196` is the even-not-14 instance. -/
theorem beal_4_13_13_gap3_B_196_eliminated_of_mod16 :
    ¬ ∃ A : Nat, Nat.pow A 4 + Nat.pow 196 4 = Nat.pow 199 13 :=
  fun h =>
    match h with
    | ⟨A, hEq⟩ =>
      beal_gap3_mod16_elim_even_not14 196 A B_196_even
        B_196_mod16_ne_14
        ((congrArg (fun t => Nat.pow A 4 + Nat.pow 196 4 = Nat.pow t 13)
            (rfl : 196 + 3 = 199)).mp hEq)

/-- `B = 1500003` is the odd instance. -/
theorem beal_4_13_13_gap3_B_1500003_eliminated_of_mod16 :
    ¬ ∃ A : Nat,
      Nat.pow A 4 + Nat.pow 1500003 4 = Nat.pow 1500006 13 :=
  fun h =>
    match h with
    | ⟨A, hEq⟩ =>
      beal_gap3_mod16_elim 1500003 A B_1500003_odd
        ((congrArg
            (fun t =>
              Nat.pow A 4 + Nat.pow 1500003 4 = Nat.pow t 13)
            (rfl : 1500003 + 3 = 1500006)).mp hEq)

/-- Displayed v8.69–v8.74 pack.  Recorded, not
used as Ribet.  Remaining `B ≡ 14` rows need
this pack and do **not** get it from mod 16. -/
theorem displayed_kraus_pack_recorded :
    (∃ f g : BealLevel26Foundations.Level26_Newforms.Newform,
        f.level = 26 ∧ g.level = 26 ∧ f ≠ g) ∧
      ((-2 : Int) % 13 ≠ (0 : Int) % 13 ∧
        (-2 : Int) % 13 ≠ (12 : Int) % 13) ∧
      ((24 : Int) % 13 ≠ (21 : Int) % 13 ∧
        (24 : Int) % 13 ≠ (-39 : Int) % 13) :=
  ⟨BealLevel26Foundations.Level26_Newforms.exists_newform_level_26_dim2,
    BealLevel26Foundations.Level26_Newforms.level26_a_eliminated_by_53,
    BealLevel26Foundations.Level26_Newforms.level26_b_eliminated_by_443⟩

/-- Old capstone stays `Classical.em`. -/
theorem beal_4_13_13_gap3_B_le_2M_eliminated_classical_em :
    ∀ B, 1 ≤ B → B ≤ 2000000 →
      hasSmallZsigWitness B ∨ ¬ hasSmallZsigWitness B :=
  beal_4_13_13_gap3_B_le_2M_eliminated

theorem ExistsNewformLevel2_eq_zero_ne_zero :
    BealLevel26Foundations.Chain.Level2.ExistsNewformLevel2 =
      ((0 : Nat) ≠ 0) :=
  BealLevel26Foundations.BealElim.ExistsNewformLevel2_eq_zero_ne_zero

#check fourth_pow_mod16
#check odd_pow13_mod16
#check beal_gap3_mod16_elim
#check beal_gap3_mod16_elim_even_not14
#check beal_gap3_mod16_elim_not14
#check density_5983_list
#check beal_4_13_13_gap3_B_le_2M_eliminated_mod16
#check beal_4_13_13_gap3_density_5983_list_mod16
#check displayed_kraus_pack_recorded
#check beal_4_13_13_gap3_B_le_2M_eliminated_classical_em
#print axioms fourth_pow_mod16
#print axioms beal_gap3_mod16_elim
#print axioms beal_gap3_mod16_elim_even_not14
#print axioms beal_4_13_13_gap3_B_le_2M_eliminated_mod16
#print axioms beal_4_13_13_gap3_B_196_eliminated_of_mod16
#print axioms beal_4_13_13_gap3_B_1500003_eliminated_of_mod16
#print axioms displayed_kraus_pack_recorded
#print axioms ExistsNewformLevel2_eq_zero_ne_zero

end BealLevel26Foundations.BealMod16
