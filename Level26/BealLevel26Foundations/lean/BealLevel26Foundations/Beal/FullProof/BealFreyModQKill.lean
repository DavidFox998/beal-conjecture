/-
Copyright (c) 2026 David Fox. All rights reserved.
Released under MIT license as described in the file LICENSE.
Authors: David Fox

Track B v8.85.0 — paper unification.  The 352 named
`B ≡ 14` rows are covered by composing the existing
residue kills: 266 mod 53, 77 at q=29, 9 at q=109.
`beal_..._B14_full` inhabits that `∀` (empty axioms).
KrausB14.`eliminated_full` stays the two-element
mod-16 kill.  `B14_honest` stays the uninhabited Prop.

Track B v8.84.0 — fourth-power non-residue kill of the
86 mod-53 survivors at q = 17, 29, 109.

If `(B+3)¹³ − B⁴` is not a fourth power in `𝔽_q`,
there is no `A` with `A⁴ + B⁴ = (B+3)¹³`.
That is the same arithmetic obstruction as
`direct_mod53_kill`, **not** Ribet, **not** BCDT,
**not** an Euler miss.

The user's `Finset` draft is rewritten as `List`.
Kernel `Nat.pow`, not `HPow`.  No `omega`.
`IsFourthModQ` is a nested `Or` of equalities,
not `List.Mem` / `∉`.

Scan of the 86 at
`[17,29,37,41,73,97,101,109,113,137,149,157,173]`:
every listed q kills some rows; the union covers
all 86.  A greedy cover is q=29 (77) plus q=109
(the remaining 9).  q=17 is the named example
(`fourth_powers_mod_q_17 = [0,1,4,13,16]`, 57
killed).

`#print axioms` is empty on `direct_modQ_kill`
and on `beal_..._86_modq`.
`beal_4_13_13_gap3_B_le_2M_eliminated_86` stays
the uninhabited Prop (level-lowering pack).
`B14_honest` stays the uninhabited `∀` on all 352.
Chain `ExistsNewformLevel2` stays `0 ≠ 0`.
Density/Step `kraus_elimination_q_13_level_26`
stays the uninhabited `∀`.

Does **not** import `RibetMazur`.
Does **not** import `frey_modular_13`.
Not imported by the 24-module none chain.
-/

import BealLevel26Foundations.Beal.FullProof.BealFreyMod53Kill
import BealLevel26Foundations.Beal.FullProof.Step60B14List

namespace BealLevel26Foundations.BealFreyModQKill

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

theorem add_sub_cancel_empty (n : Nat) : ∀ k : Nat, n + k - k = n
  | 0 => rfl
  | k + 1 =>
    (Nat.succ_sub_succ (n + k) k).trans (add_sub_cancel_empty n k)

/-! ## Fourth powers modulo 17 -/
def fourth_powers_mod17 : List Nat :=
  [
  0,
  1,
  4,
  13,
  16
  ]

theorem fourth_powers_mod17_length :
    fourth_powers_mod17.length = 5 :=
  rfl

/-- User-facing alias.  `List`, not `Finset`. -/
def fourth_powers_mod_q_17 : List Nat :=
  fourth_powers_mod17

def IsFourthMod17 (n : Nat) : Prop :=
  n = 0 ∨ (n = 1 ∨ (n = 4 ∨ (n = 13 ∨ (n = 16))))

theorem not_is_fourth_17 {n : Nat}
    (h0 : Nat.beq n 0 = false)
    (h1 : Nat.beq n 1 = false)
    (h4 : Nat.beq n 4 = false)
    (h13 : Nat.beq n 13 = false)
    (h16 : Nat.beq n 16 = false)
    : ¬ IsFourthMod17 n :=
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
        ne_of_beq_false' h4 hx2
      | Or.inr hrest2 =>
        match hrest2 with
        | Or.inl hx3 =>
          ne_of_beq_false' h13 hx3
        | Or.inr hx4 =>
          ne_of_beq_false' h16 hx4

theorem not_is_fourth_17_2 : ¬ IsFourthMod17 2 :=
  not_is_fourth_17 (show Nat.beq 2 0 = false from rfl) (show Nat.beq 2 1 = false from rfl) (show Nat.beq 2 4 = false from rfl) (show Nat.beq 2 13 = false from rfl) (show Nat.beq 2 16 = false from rfl)
theorem not_is_fourth_17_3 : ¬ IsFourthMod17 3 :=
  not_is_fourth_17 (show Nat.beq 3 0 = false from rfl) (show Nat.beq 3 1 = false from rfl) (show Nat.beq 3 4 = false from rfl) (show Nat.beq 3 13 = false from rfl) (show Nat.beq 3 16 = false from rfl)
theorem not_is_fourth_17_5 : ¬ IsFourthMod17 5 :=
  not_is_fourth_17 (show Nat.beq 5 0 = false from rfl) (show Nat.beq 5 1 = false from rfl) (show Nat.beq 5 4 = false from rfl) (show Nat.beq 5 13 = false from rfl) (show Nat.beq 5 16 = false from rfl)
theorem not_is_fourth_17_6 : ¬ IsFourthMod17 6 :=
  not_is_fourth_17 (show Nat.beq 6 0 = false from rfl) (show Nat.beq 6 1 = false from rfl) (show Nat.beq 6 4 = false from rfl) (show Nat.beq 6 13 = false from rfl) (show Nat.beq 6 16 = false from rfl)
theorem not_is_fourth_17_7 : ¬ IsFourthMod17 7 :=
  not_is_fourth_17 (show Nat.beq 7 0 = false from rfl) (show Nat.beq 7 1 = false from rfl) (show Nat.beq 7 4 = false from rfl) (show Nat.beq 7 13 = false from rfl) (show Nat.beq 7 16 = false from rfl)
theorem not_is_fourth_17_8 : ¬ IsFourthMod17 8 :=
  not_is_fourth_17 (show Nat.beq 8 0 = false from rfl) (show Nat.beq 8 1 = false from rfl) (show Nat.beq 8 4 = false from rfl) (show Nat.beq 8 13 = false from rfl) (show Nat.beq 8 16 = false from rfl)
theorem not_is_fourth_17_9 : ¬ IsFourthMod17 9 :=
  not_is_fourth_17 (show Nat.beq 9 0 = false from rfl) (show Nat.beq 9 1 = false from rfl) (show Nat.beq 9 4 = false from rfl) (show Nat.beq 9 13 = false from rfl) (show Nat.beq 9 16 = false from rfl)
theorem not_is_fourth_17_12 : ¬ IsFourthMod17 12 :=
  not_is_fourth_17 (show Nat.beq 12 0 = false from rfl) (show Nat.beq 12 1 = false from rfl) (show Nat.beq 12 4 = false from rfl) (show Nat.beq 12 13 = false from rfl) (show Nat.beq 12 16 = false from rfl)
theorem not_is_fourth_17_14 : ¬ IsFourthMod17 14 :=
  not_is_fourth_17 (show Nat.beq 14 0 = false from rfl) (show Nat.beq 14 1 = false from rfl) (show Nat.beq 14 4 = false from rfl) (show Nat.beq 14 13 = false from rfl) (show Nat.beq 14 16 = false from rfl)
theorem not_is_fourth_17_15 : ¬ IsFourthMod17 15 :=
  not_is_fourth_17 (show Nat.beq 15 0 = false from rfl) (show Nat.beq 15 1 = false from rfl) (show Nat.beq 15 4 = false from rfl) (show Nat.beq 15 13 = false from rfl) (show Nat.beq 15 16 = false from rfl)

theorem fourth_pow_is_fourth_of_lt_17 :
    ∀ r : Nat, r < 17 → IsFourthMod17 (Nat.pow r 4 % 17)
  | 0, _ => Or.inl rfl
  | 1, _ => Or.inr (Or.inl rfl)
  | 2, _ => Or.inr (Or.inr (Or.inr (Or.inr (rfl))))
  | 3, _ => Or.inr (Or.inr (Or.inr (Or.inl rfl)))
  | 4, _ => Or.inr (Or.inl rfl)
  | 5, _ => Or.inr (Or.inr (Or.inr (Or.inl rfl)))
  | 6, _ => Or.inr (Or.inr (Or.inl rfl))
  | 7, _ => Or.inr (Or.inr (Or.inl rfl))
  | 8, _ => Or.inr (Or.inr (Or.inr (Or.inr (rfl))))
  | 9, _ => Or.inr (Or.inr (Or.inr (Or.inr (rfl))))
  | 10, _ => Or.inr (Or.inr (Or.inl rfl))
  | 11, _ => Or.inr (Or.inr (Or.inl rfl))
  | 12, _ => Or.inr (Or.inr (Or.inr (Or.inl rfl)))
  | 13, _ => Or.inr (Or.inl rfl)
  | 14, _ => Or.inr (Or.inr (Or.inr (Or.inl rfl)))
  | 15, _ => Or.inr (Or.inr (Or.inr (Or.inr (rfl))))
  | 16, _ => Or.inr (Or.inl rfl)
  | n + 17, h => absurd h (Nat.not_lt_of_le (Nat.le_add_left 17 n))

/-! ## Empty-axiom `Nat` toolkit modulo 17 -/

theorem add17_mod (x : Nat) : (x + 17) % 17 = x % 17 :=
  let hcond : 0 < 17 ∧ 17 ≤ x + 17 :=
    ⟨Nat.succ_pos 16, Nat.le_add_left 17 x⟩
  let hmod := Nat.mod_eq (x + 17) 17
  let hif :
      (if 0 < 17 ∧ 17 ≤ x + 17 then (x + 17 - 17) % 17 else x + 17) =
        (x + 17 - 17) % 17 :=
    if_pos hcond
  let hsub : x + 17 - 17 = x := rfl
  (hmod.trans hif).trans (congrArg (fun t => t % 17) hsub)

theorem add_mul17_mod (n : Nat) : ∀ k : Nat, (n + 17 * k) % 17 = n % 17
  | 0 =>
    congrArg (fun t => t % 17) (show n + 17 * 0 = n from rfl)
  | k + 1 =>
    let h1 : n + 17 * (k + 1) = n + 17 * k + 17 :=
      (congrArg (fun t => n + t)
          (show 17 * (k + 1) = 17 * k + 17 from rfl)).trans
        (Nat.add_assoc n (17 * k) 17)
    (congrArg (fun t => t % 17) h1).trans
      ((add17_mod (n + 17 * k)).trans (add_mul17_mod n k))

theorem add_mul_left_17 (a m : Nat) :
    ∀ qq : Nat, (a + m * (17 * qq)) % 17 = a % 17
  | 0 =>
    congrArg (fun t => t % 17) (show a + m * (17 * 0) = a from rfl)
  | qq + 1 =>
    let hmul : m * (17 * (qq + 1)) = m * (17 * qq) + m * 17 :=
      (congrArg (fun t => m * t)
          (show 17 * (qq + 1) = 17 * qq + 17 from rfl)).trans
        (Nat.mul_add m (17 * qq) 17)
    let hsum : a + m * (17 * (qq + 1)) = a + m * (17 * qq) + 17 * m :=
      (congrArg (fun t => a + t) hmul).trans
        ((Nat.add_assoc a (m * (17 * qq)) (m * 17)).symm.trans
          (congrArg (fun t => a + m * (17 * qq) + t) (Nat.mul_comm m 17)))
    (congrArg (fun t => t % 17) hsum).trans
      ((add_mul17_mod (a + m * (17 * qq)) m).trans
        (add_mul_left_17 a m qq))

theorem exists_mod17 : ∀ n : Nat, ∃ q r : Nat, r < 17 ∧ n = 17 * q + r
  | 0 => ⟨0, 0, by decide, rfl⟩
  | n + 1 =>
    match exists_mod17 n with
    | ⟨q, 0, _, heq⟩ =>
      ⟨q, 1, by decide,
        (congrArg Nat.succ heq).trans
          (show Nat.succ (17 * q + 0) = 17 * q + 1 from rfl)⟩
    | ⟨q, 1, _, heq⟩ =>
      ⟨q, 2, by decide,
        (congrArg Nat.succ heq).trans
          (show Nat.succ (17 * q + 1) = 17 * q + 2 from rfl)⟩
    | ⟨q, 2, _, heq⟩ =>
      ⟨q, 3, by decide,
        (congrArg Nat.succ heq).trans
          (show Nat.succ (17 * q + 2) = 17 * q + 3 from rfl)⟩
    | ⟨q, 3, _, heq⟩ =>
      ⟨q, 4, by decide,
        (congrArg Nat.succ heq).trans
          (show Nat.succ (17 * q + 3) = 17 * q + 4 from rfl)⟩
    | ⟨q, 4, _, heq⟩ =>
      ⟨q, 5, by decide,
        (congrArg Nat.succ heq).trans
          (show Nat.succ (17 * q + 4) = 17 * q + 5 from rfl)⟩
    | ⟨q, 5, _, heq⟩ =>
      ⟨q, 6, by decide,
        (congrArg Nat.succ heq).trans
          (show Nat.succ (17 * q + 5) = 17 * q + 6 from rfl)⟩
    | ⟨q, 6, _, heq⟩ =>
      ⟨q, 7, by decide,
        (congrArg Nat.succ heq).trans
          (show Nat.succ (17 * q + 6) = 17 * q + 7 from rfl)⟩
    | ⟨q, 7, _, heq⟩ =>
      ⟨q, 8, by decide,
        (congrArg Nat.succ heq).trans
          (show Nat.succ (17 * q + 7) = 17 * q + 8 from rfl)⟩
    | ⟨q, 8, _, heq⟩ =>
      ⟨q, 9, by decide,
        (congrArg Nat.succ heq).trans
          (show Nat.succ (17 * q + 8) = 17 * q + 9 from rfl)⟩
    | ⟨q, 9, _, heq⟩ =>
      ⟨q, 10, by decide,
        (congrArg Nat.succ heq).trans
          (show Nat.succ (17 * q + 9) = 17 * q + 10 from rfl)⟩
    | ⟨q, 10, _, heq⟩ =>
      ⟨q, 11, by decide,
        (congrArg Nat.succ heq).trans
          (show Nat.succ (17 * q + 10) = 17 * q + 11 from rfl)⟩
    | ⟨q, 11, _, heq⟩ =>
      ⟨q, 12, by decide,
        (congrArg Nat.succ heq).trans
          (show Nat.succ (17 * q + 11) = 17 * q + 12 from rfl)⟩
    | ⟨q, 12, _, heq⟩ =>
      ⟨q, 13, by decide,
        (congrArg Nat.succ heq).trans
          (show Nat.succ (17 * q + 12) = 17 * q + 13 from rfl)⟩
    | ⟨q, 13, _, heq⟩ =>
      ⟨q, 14, by decide,
        (congrArg Nat.succ heq).trans
          (show Nat.succ (17 * q + 13) = 17 * q + 14 from rfl)⟩
    | ⟨q, 14, _, heq⟩ =>
      ⟨q, 15, by decide,
        (congrArg Nat.succ heq).trans
          (show Nat.succ (17 * q + 14) = 17 * q + 15 from rfl)⟩
    | ⟨q, 15, _, heq⟩ =>
      ⟨q, 16, by decide,
        (congrArg Nat.succ heq).trans
          (show Nat.succ (17 * q + 15) = 17 * q + 16 from rfl)⟩
    | ⟨q, 16, _, heq⟩ =>
      ⟨q + 1, 0, by decide,
        (congrArg Nat.succ heq).trans
          (show Nat.succ (17 * q + 16) = 17 * (q + 1) + 0 from rfl)⟩
    | ⟨_q, r + 17, hr, _heq⟩ =>
      absurd hr (Nat.not_lt_of_le (Nat.le_add_left 17 r))

theorem eq_mod17_of_decomp {n q r : Nat}
    (hr : r < 17) (h : n = 17 * q + r) : n % 17 = r :=
  let h1 : n % 17 = (17 * q + r) % 17 :=
    congrArg (fun t => t % 17) h
  let h2 : 17 * q + r = r + 17 * q := Nat.add_comm (17 * q) r
  let h3 : (17 * q + r) % 17 = (r + 17 * q) % 17 :=
    congrArg (fun t => t % 17) h2
  h1.trans (h3.trans ((add_mul17_mod r q).trans (Nat.mod_eq_of_lt hr)))

theorem mul_mod17 (x y : Nat) :
    (x * y) % 17 = (x % 17 * (y % 17)) % 17 :=
  match exists_mod17 x with
  | ⟨qx, rx, hrx, hx⟩ =>
    match exists_mod17 y with
    | ⟨qy, ry, hry, hy⟩ =>
      let hxmod : x % 17 = rx := eq_mod17_of_decomp hrx hx
      let hymod : y % 17 = ry := eq_mod17_of_decomp hry hy
      let hxy : x * y = (17 * qx + rx) * (17 * qy + ry) :=
        (congrArg (fun t => t * y) hx).trans
          (congrArg (fun t => (17 * qx + rx) * t) hy)
      let hexp : (17 * qx + rx) * (17 * qy + ry) =
          (17 * qx + rx) * ry + (17 * qx + rx) * (17 * qy) :=
        (Nat.mul_add (17 * qx + rx) (17 * qy) ry).trans
          (Nat.add_comm ((17 * qx + rx) * (17 * qy)) ((17 * qx + rx) * ry))
      let hpeel1 :
          ((17 * qx + rx) * ry + (17 * qx + rx) * (17 * qy)) % 17 =
            ((17 * qx + rx) * ry) % 17 :=
        add_mul_left_17 ((17 * qx + rx) * ry) (17 * qx + rx) qy
      let hry : (17 * qx + rx) * ry = rx * ry + ry * (17 * qx) :=
        let hflip : (17 * qx + rx) * ry = ry * (17 * qx + rx) :=
          Nat.mul_comm (17 * qx + rx) ry
        let hdist : ry * (17 * qx + rx) = ry * (17 * qx) + ry * rx :=
          Nat.mul_add ry (17 * qx) rx
        let h1 : ry * (17 * qx) + ry * rx = ry * (17 * qx) + rx * ry :=
          congrArg (fun t => ry * (17 * qx) + t) (Nat.mul_comm ry rx)
        let h2 : ry * (17 * qx) + rx * ry = rx * ry + ry * (17 * qx) :=
          Nat.add_comm (ry * (17 * qx)) (rx * ry)
        hflip.trans (hdist.trans (h1.trans h2))
      let hpeel2 : (rx * ry + ry * (17 * qx)) % 17 = (rx * ry) % 17 :=
        add_mul_left_17 (rx * ry) ry qx
      let hprod : (x * y) % 17 = (rx * ry) % 17 :=
        (congrArg (fun t => t % 17) (hxy.trans hexp)).trans
          (hpeel1.trans
            ((congrArg (fun t => t % 17) hry).trans hpeel2))
      let hrxry : rx * ry = x % 17 * (y % 17) :=
        (congrArg (fun t => t * ry) hxmod.symm).trans
          (congrArg (fun t => x % 17 * t) hymod.symm)
      hprod.trans (congrArg (fun t => t % 17) hrxry)

theorem add_mod17 (x y : Nat) :
    (x + y) % 17 = (x % 17 + y % 17) % 17 :=
  match exists_mod17 x with
  | ⟨qx, rx, hrx, hx⟩ =>
    match exists_mod17 y with
    | ⟨qy, ry, hry, hy⟩ =>
      let hxmod : x % 17 = rx := eq_mod17_of_decomp hrx hx
      let hymod : y % 17 = ry := eq_mod17_of_decomp hry hy
      let hxy : x + y = (17 * qx + rx) + (17 * qy + ry) :=
        (congrArg (fun t => t + y) hx).trans
          (congrArg (fun t => (17 * qx + rx) + t) hy)
      let hcomm : 17 * qy + ry = ry + 17 * qy :=
        Nat.add_comm (17 * qy) ry
      let hxy' : (17 * qx + rx) + (17 * qy + ry) =
          (17 * qx + rx) + (ry + 17 * qy) :=
        congrArg (fun t => (17 * qx + rx) + t) hcomm
      let hassoc : (17 * qx + rx) + (ry + 17 * qy) =
          (17 * qx + rx) + ry + 17 * qy :=
        (Nat.add_assoc (17 * qx + rx) ry (17 * qy)).symm
      let hpeel : ((17 * qx + rx) + ry + 17 * qy) % 17 =
          ((17 * qx + rx) + ry) % 17 :=
        add_mul17_mod ((17 * qx + rx) + ry) qy
      let hcomm2 : 17 * qx + rx = rx + 17 * qx :=
        Nat.add_comm (17 * qx) rx
      let hxy2 : (17 * qx + rx) + ry = rx + 17 * qx + ry :=
        congrArg (fun t => t + ry) hcomm2
      let hassoc2 : rx + 17 * qx + ry = rx + ry + 17 * qx :=
        let h1 : rx + 17 * qx + ry = rx + (17 * qx + ry) :=
          Nat.add_assoc rx (17 * qx) ry
        let h2 : 17 * qx + ry = ry + 17 * qx :=
          Nat.add_comm (17 * qx) ry
        let h3 : rx + (17 * qx + ry) = rx + (ry + 17 * qx) :=
          congrArg (fun t => rx + t) h2
        let h4 : rx + (ry + 17 * qx) = rx + ry + 17 * qx :=
          (Nat.add_assoc rx ry (17 * qx)).symm
        h1.trans (h3.trans h4)
      let hpeel2 : (rx + ry + 17 * qx) % 17 = (rx + ry) % 17 :=
        add_mul17_mod (rx + ry) qx
      let hsum : (x + y) % 17 = (rx + ry) % 17 :=
        (congrArg (fun t => t % 17) (hxy.trans (hxy'.trans hassoc))).trans
          (hpeel.trans
            ((congrArg (fun t => t % 17) (hxy2.trans hassoc2)).trans hpeel2))
      let hrxry : rx + ry = x % 17 + y % 17 :=
        (congrArg (fun t => t + ry) hxmod.symm).trans
          (congrArg (fun t => x % 17 + t) hymod.symm)
      hsum.trans (congrArg (fun t => t % 17) hrxry)

theorem pow_mod17 (n : Nat) :
    ∀ k : Nat, Nat.pow n k % 17 = Nat.pow (n % 17) k % 17
  | 0 => rfl
  | k + 1 =>
    let hs : Nat.pow n (k + 1) = Nat.pow n k * n := Nat.pow_succ n k
    let hs' : Nat.pow (n % 17) (k + 1) =
        Nat.pow (n % 17) k * (n % 17) :=
      Nat.pow_succ (n % 17) k
    let hmodmod : (n % 17) % 17 = n % 17 :=
      Nat.mod_eq_of_lt (Nat.mod_lt n (Nat.succ_pos 16))
    let h1 : (Nat.pow n k * n) % 17 =
        (Nat.pow n k % 17 * (n % 17)) % 17 :=
      mul_mod17 (Nat.pow n k) n
    let h2 : (Nat.pow n k % 17 * (n % 17)) % 17 =
        (Nat.pow (n % 17) k % 17 * (n % 17)) % 17 :=
      congrArg (fun t => (t * (n % 17)) % 17) (pow_mod17 n k)
    let h3 : (Nat.pow (n % 17) k * (n % 17)) % 17 =
        (Nat.pow (n % 17) k % 17 * ((n % 17) % 17)) % 17 :=
      mul_mod17 (Nat.pow (n % 17) k) (n % 17)
    let h4 : (Nat.pow (n % 17) k % 17 * (n % 17)) % 17 =
        (Nat.pow (n % 17) k * (n % 17)) % 17 :=
      (congrArg (fun t => (Nat.pow (n % 17) k % 17 * t) % 17)
          hmodmod.symm).trans h3.symm
    (congrArg (fun t => t % 17) hs).trans
      (h1.trans (h2.trans (h4.trans
        (congrArg (fun t => t % 17) hs'.symm))))

theorem fourth_pow_is_fourth_17 (A : Nat) :
    IsFourthMod17 (Nat.pow A 4 % 17) :=
  let hr : A % 17 < 17 := Nat.mod_lt A (Nat.succ_pos 16)
  let hpow : Nat.pow A 4 % 17 = Nat.pow (A % 17) 4 % 17 :=
    pow_mod17 A 4
  Eq.rec (motive := fun (t : Nat) (_ : Nat.pow (A % 17) 4 % 17 = t) =>
      IsFourthMod17 t)
    (fourth_pow_is_fourth_of_lt_17 (A % 17) hr) hpow.symm

theorem sub_add_cancel_17 {n : Nat} (h : 17 ≤ n) :
    n - 17 + 17 = n :=
  match Nat.le.dest h with
  | ⟨k, hk⟩ =>
    let hsub : n - 17 = k :=
      let hcomm : 17 + k = k + 17 := Nat.add_comm 17 k
      let hcancel : k + 17 - 17 = k := rfl
      (congrArg (fun t => t - 17) (hk.symm.trans hcomm)).trans hcancel
    let hsum : n - 17 + 17 = k + 17 :=
      congrArg (fun t => t + 17) hsub
    hsum.trans ((Nat.add_comm k 17).trans hk)

theorem residue_sub_mod17 (a b c : Nat)
    (ha : a < 17) (hb : b < 17) (_hc : c < 17)
    (h : (a + b) % 17 = c) :
    a = (c + 17 - b) % 17 :=
  match Nat.decLe 17 (a + b) with
  | isFalse hnot =>
    let hlt : a + b < 17 := Nat.not_le.mp hnot
    let hmod : (a + b) % 17 = a + b := Nat.mod_eq_of_lt hlt
    let hab : a + b = c := hmod.symm.trans h
    let hsum : c + 17 - b = a + 17 :=
      let h1 : c + 17 - b = a + b + 17 - b :=
        congrArg (fun t => t + 17 - b) hab.symm
      let h2 : a + b + 17 = a + 17 + b :=
        let h2a : a + b + 17 = a + (b + 17) := Nat.add_assoc a b 17
        let h2b : b + 17 = 17 + b := Nat.add_comm b 17
        let h2c : a + (b + 17) = a + (17 + b) :=
          congrArg (fun t => a + t) h2b
        let h2d : a + (17 + b) = a + 17 + b :=
          (Nat.add_assoc a 17 b).symm
        h2a.trans (h2c.trans h2d)
      let h3 : a + 17 + b - b = a + 17 :=
        add_sub_cancel_empty (a + 17) b
      h1.trans ((congrArg (fun t => t - b) h2).trans h3)
    let hmod2 : (c + 17 - b) % 17 = (a + 17) % 17 :=
      congrArg (fun t => t % 17) hsum
    let haq : (a + 17) % 17 = a % 17 := add17_mod a
    let haeq : a % 17 = a := Nat.mod_eq_of_lt ha
    (hmod2.trans (haq.trans haeq)).symm
  | isTrue hle =>
    let hcond : 0 < 17 ∧ 17 ≤ a + b := ⟨Nat.succ_pos 16, hle⟩
    let hmod := Nat.mod_eq (a + b) 17
    let hif :
        (if 0 < 17 ∧ 17 ≤ a + b then (a + b - 17) % 17 else a + b) =
          (a + b - 17) % 17 :=
      if_pos hcond
    let hsumq : a + b < 17 + 17 :=
      Nat.add_lt_add ha hb
    let hsublt : a + b - 17 < 17 :=
      let hrestore : a + b - 17 + 17 = a + b := sub_add_cancel_17 hle
      let hlt' : a + b - 17 + 17 < 17 + 17 :=
        Eq.subst (motive := fun t => t < 17 + 17) hrestore.symm hsumq
      Nat.lt_of_add_lt_add_right hlt'
    let hmodsub : (a + b - 17) % 17 = a + b - 17 :=
      Nat.mod_eq_of_lt hsublt
    let hc' : a + b - 17 = c :=
      ((hmod.trans hif).trans hmodsub).symm.trans h
    let hsum : c + 17 - b = a :=
      let h1 : c + 17 - b = a + b - 17 + 17 - b :=
        congrArg (fun t => t + 17 - b) hc'.symm
      let h2 : a + b - 17 + 17 = a + b := sub_add_cancel_17 hle
      let h3 : a + b - b = a := add_sub_cancel_empty a b
      h1.trans ((congrArg (fun t => t - b) h2).trans h3)
    let hmod2 : (c + 17 - b) % 17 = a % 17 :=
      congrArg (fun t => t % 17) hsum
    let haeq : a % 17 = a := Nat.mod_eq_of_lt ha
    (hmod2.trans haeq).symm

def rhs_mod17 (B : Nat) : Nat :=
  (Nat.pow (B + 3) 13 % 17 + 17 - Nat.pow B 4 % 17) % 17

def rhs_mod17_res (r : Nat) : Nat :=
  (Nat.pow ((r + 3) % 17) 13 % 17 + 17 -
    Nat.pow (r % 17) 4 % 17) % 17

theorem rhs_mod17_eq_res (B : Nat) :
    rhs_mod17 B = rhs_mod17_res (B % 17) :=
  let hC : Nat.pow (B + 3) 13 % 17 =
      Nat.pow ((B + 3) % 17) 13 % 17 :=
    pow_mod17 (B + 3) 13
  let hB : Nat.pow B 4 % 17 = Nat.pow (B % 17) 4 % 17 :=
    pow_mod17 B 4
  let h3 : 3 % 17 = 3 := rfl
  let hadd : (B + 3) % 17 = (B % 17 + 3) % 17 :=
    let h1 : (B + 3) % 17 = (B % 17 + 3 % 17) % 17 :=
      add_mod17 B 3
    h1.trans (congrArg (fun t => (B % 17 + t) % 17) h3)
  let hC' : Nat.pow ((B + 3) % 17) 13 % 17 =
      Nat.pow ((B % 17 + 3) % 17) 13 % 17 :=
    congrArg (fun t => Nat.pow t 13 % 17) hadd
  let hmodmod : (B % 17) % 17 = B % 17 :=
    Nat.mod_eq_of_lt (Nat.mod_lt B (Nat.succ_pos 16))
  let hB' : Nat.pow (B % 17) 4 % 17 =
      Nat.pow ((B % 17) % 17) 4 % 17 :=
    congrArg (fun t => Nat.pow t 4 % 17) hmodmod.symm
  (congrArg (fun t => (t + 17 - Nat.pow B 4 % 17) % 17)
      (hC.trans hC')).trans
    (congrArg
      (fun t =>
        (Nat.pow ((B % 17 + 3) % 17) 13 % 17 + 17 - t) % 17)
      (hB.trans hB'))

theorem direct_mod17_kill (B : Nat)
    (h : ¬ IsFourthMod17 (rhs_mod17 B)) :
    ¬ ∃ A, Nat.pow A 4 + Nat.pow B 4 = Nat.pow (B + 3) 13 := by
  intro ⟨A, hEq⟩
  let a := Nat.pow A 4 % 17
  let b := Nat.pow B 4 % 17
  let c := Nat.pow (B + 3) 13 % 17
  let hsum : (Nat.pow A 4 + Nat.pow B 4) % 17 = c :=
    congrArg (fun n => n % 17) hEq
  let hadd : (a + b) % 17 = c :=
    (add_mod17 (Nat.pow A 4) (Nat.pow B 4)).symm.trans hsum
  let ha : a < 17 := Nat.mod_lt (Nat.pow A 4) (Nat.succ_pos 16)
  let hb : b < 17 := Nat.mod_lt (Nat.pow B 4) (Nat.succ_pos 16)
  let hc : c < 17 := Nat.mod_lt (Nat.pow (B + 3) 13) (Nat.succ_pos 16)
  let hrhs : a = rhs_mod17 B :=
    residue_sub_mod17 a b c ha hb hc hadd
  let hA : IsFourthMod17 a := fourth_pow_is_fourth_17 A
  let hRhs : IsFourthMod17 (rhs_mod17 B) :=
    Eq.rec (motive := fun (t : Nat) (_ : a = t) => IsFourthMod17 t) hA hrhs
  exact h hRhs

theorem not_fourth_rhs_mod17_of_res (B r : Nat)
    (hr : B % 17 = r)
    (hnot : ¬ IsFourthMod17 (rhs_mod17_res r)) :
    ¬ IsFourthMod17 (rhs_mod17 B) :=
  let h1 : rhs_mod17 B = rhs_mod17_res (B % 17) := rhs_mod17_eq_res B
  let h2 : rhs_mod17_res (B % 17) = rhs_mod17_res r :=
    congrArg rhs_mod17_res hr
  Eq.rec (motive := fun (t : Nat) (_ : rhs_mod17_res r = t) =>
      ¬ IsFourthMod17 t)
    hnot (h2.symm.trans h1.symm)
def killed_mod17 : List Nat :=
  [
  77902,
  86798,
  87582,
  143614,
  145742,
  163118,
  214430,
  226846,
  239934,
  306110,
  312798,
  349358,
  368462,
  376814,
  403358,
  418446,
  463390,
  463742,
  477854,
  607406,
  632910,
  653342,
  735518,
  737214,
  787246,
  813118,
  821166,
  835902,
  863694,
  874462,
  885198,
  904702,
  914094,
  991614,
  1078190,
  1133550,
  1136270,
  1155358,
  1170126,
  1181566,
  1184238,
  1205742,
  1287998,
  1357038,
  1374782,
  1386910,
  1401326,
  1420830,
  1441310,
  1473774,
  1523742,
  1533166,
  1536878,
  1609390,
  1611374,
  1660366,
  1858398
  ]

theorem killed_mod17_length :
    killed_mod17.length = 57 :=
  rfl

def all_killed_mod17 : List Nat → Prop
  | [] => True
  | x :: xs =>
      ¬ IsFourthMod17 (rhs_mod17_res (x % 17)) ∧ all_killed_mod17 xs

set_option maxRecDepth 32768
set_option maxHeartbeats 4000000

theorem all_killed_mod17_list :
    all_killed_mod17 killed_mod17 :=
  ⟨not_is_fourth_17_8, ⟨not_is_fourth_17_15, ⟨not_is_fourth_17_2, ⟨not_is_fourth_17_2, ⟨not_is_fourth_17_3, ⟨not_is_fourth_17_14, ⟨not_is_fourth_17_15, ⟨not_is_fourth_17_2, ⟨not_is_fourth_17_15, ⟨not_is_fourth_17_8, ⟨not_is_fourth_17_2, ⟨not_is_fourth_17_8, ⟨not_is_fourth_17_5, ⟨not_is_fourth_17_15, ⟨not_is_fourth_17_14, ⟨not_is_fourth_17_8, ⟨not_is_fourth_17_5, ⟨not_is_fourth_17_14, ⟨not_is_fourth_17_3, ⟨not_is_fourth_17_15, ⟨not_is_fourth_17_12, ⟨not_is_fourth_17_2, ⟨not_is_fourth_17_15, ⟨not_is_fourth_17_15, ⟨not_is_fourth_17_9, ⟨not_is_fourth_17_8, ⟨not_is_fourth_17_2, ⟨not_is_fourth_17_6, ⟨not_is_fourth_17_15, ⟨not_is_fourth_17_14, ⟨not_is_fourth_17_8, ⟨not_is_fourth_17_15, ⟨not_is_fourth_17_5, ⟨not_is_fourth_17_5, ⟨not_is_fourth_17_14, ⟨not_is_fourth_17_7, ⟨not_is_fourth_17_7, ⟨not_is_fourth_17_5, ⟨not_is_fourth_17_14, ⟨not_is_fourth_17_2, ⟨not_is_fourth_17_3, ⟨not_is_fourth_17_12, ⟨not_is_fourth_17_9, ⟨not_is_fourth_17_15, ⟨not_is_fourth_17_15, ⟨not_is_fourth_17_14, ⟨not_is_fourth_17_14, ⟨not_is_fourth_17_5, ⟨not_is_fourth_17_14, ⟨not_is_fourth_17_9, ⟨not_is_fourth_17_2, ⟨not_is_fourth_17_5, ⟨not_is_fourth_17_9, ⟨not_is_fourth_17_12, ⟨not_is_fourth_17_6, ⟨not_is_fourth_17_9, ⟨not_is_fourth_17_15, True.intro⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩

theorem not_fourth_of_all_killed_17 :
    ∀ l : List Nat, all_killed_mod17 l →
      ∀ B : Nat, B ∈ l → ¬ IsFourthMod17 (rhs_mod17_res (B % 17))
  | [], _, _B, hB => nomatch hB
  | _x :: xs, ⟨hx, hxs⟩, B, hB =>
    match hB with
    | List.Mem.head _ => hx
    | List.Mem.tail _ h' => not_fourth_of_all_killed_17 xs hxs B h'

theorem killed_mod17_rhs (B : Nat)
    (hB : B ∈ killed_mod17) :
    ¬ IsFourthMod17 (rhs_mod17 B) :=
  let hnot : ¬ IsFourthMod17 (rhs_mod17_res (B % 17)) :=
    not_fourth_of_all_killed_17 killed_mod17
      all_killed_mod17_list B hB
  Eq.rec (motive := fun t (_ : rhs_mod17_res (B % 17) = t) =>
      ¬ IsFourthMod17 t)
    hnot (rhs_mod17_eq_res B).symm

theorem beal_4_13_13_gap3_B_le_2M_eliminated_86_mod17
    (B : Nat) (hB : B ∈ killed_mod17) :
    ¬ ∃ A, Nat.pow A 4 + Nat.pow B 4 = Nat.pow (B + 3) 13 :=
  direct_mod17_kill B (killed_mod17_rhs B hB)

/-- User-facing alias of `direct_mod17_kill`. -/
theorem direct_mod_q_17_kill (B : Nat)
    (h : ¬ IsFourthMod17 (rhs_mod17 B)) :
    ¬ ∃ A, Nat.pow A 4 + Nat.pow B 4 = Nat.pow (B + 3) 13 :=
  direct_mod17_kill B h
/-! ## Fourth powers modulo 29 -/
def fourth_powers_mod29 : List Nat :=
  [
  0,
  1,
  7,
  16,
  20,
  23,
  24,
  25
  ]

theorem fourth_powers_mod29_length :
    fourth_powers_mod29.length = 8 :=
  rfl

def IsFourthMod29 (n : Nat) : Prop :=
  n = 0 ∨ (n = 1 ∨ (n = 7 ∨ (n = 16 ∨ (n = 20 ∨ (n = 23 ∨ (n = 24 ∨ (n = 25)))))))

theorem not_is_fourth_29 {n : Nat}
    (h0 : Nat.beq n 0 = false)
    (h1 : Nat.beq n 1 = false)
    (h7 : Nat.beq n 7 = false)
    (h16 : Nat.beq n 16 = false)
    (h20 : Nat.beq n 20 = false)
    (h23 : Nat.beq n 23 = false)
    (h24 : Nat.beq n 24 = false)
    (h25 : Nat.beq n 25 = false)
    : ¬ IsFourthMod29 n :=
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
        ne_of_beq_false' h7 hx2
      | Or.inr hrest2 =>
        match hrest2 with
        | Or.inl hx3 =>
          ne_of_beq_false' h16 hx3
        | Or.inr hrest3 =>
          match hrest3 with
          | Or.inl hx4 =>
            ne_of_beq_false' h20 hx4
          | Or.inr hrest4 =>
            match hrest4 with
            | Or.inl hx5 =>
              ne_of_beq_false' h23 hx5
            | Or.inr hrest5 =>
              match hrest5 with
              | Or.inl hx6 =>
                ne_of_beq_false' h24 hx6
              | Or.inr hx7 =>
                ne_of_beq_false' h25 hx7

theorem not_is_fourth_29_2 : ¬ IsFourthMod29 2 :=
  not_is_fourth_29 (show Nat.beq 2 0 = false from rfl) (show Nat.beq 2 1 = false from rfl) (show Nat.beq 2 7 = false from rfl) (show Nat.beq 2 16 = false from rfl) (show Nat.beq 2 20 = false from rfl) (show Nat.beq 2 23 = false from rfl) (show Nat.beq 2 24 = false from rfl) (show Nat.beq 2 25 = false from rfl)
theorem not_is_fourth_29_3 : ¬ IsFourthMod29 3 :=
  not_is_fourth_29 (show Nat.beq 3 0 = false from rfl) (show Nat.beq 3 1 = false from rfl) (show Nat.beq 3 7 = false from rfl) (show Nat.beq 3 16 = false from rfl) (show Nat.beq 3 20 = false from rfl) (show Nat.beq 3 23 = false from rfl) (show Nat.beq 3 24 = false from rfl) (show Nat.beq 3 25 = false from rfl)
theorem not_is_fourth_29_4 : ¬ IsFourthMod29 4 :=
  not_is_fourth_29 (show Nat.beq 4 0 = false from rfl) (show Nat.beq 4 1 = false from rfl) (show Nat.beq 4 7 = false from rfl) (show Nat.beq 4 16 = false from rfl) (show Nat.beq 4 20 = false from rfl) (show Nat.beq 4 23 = false from rfl) (show Nat.beq 4 24 = false from rfl) (show Nat.beq 4 25 = false from rfl)
theorem not_is_fourth_29_5 : ¬ IsFourthMod29 5 :=
  not_is_fourth_29 (show Nat.beq 5 0 = false from rfl) (show Nat.beq 5 1 = false from rfl) (show Nat.beq 5 7 = false from rfl) (show Nat.beq 5 16 = false from rfl) (show Nat.beq 5 20 = false from rfl) (show Nat.beq 5 23 = false from rfl) (show Nat.beq 5 24 = false from rfl) (show Nat.beq 5 25 = false from rfl)
theorem not_is_fourth_29_6 : ¬ IsFourthMod29 6 :=
  not_is_fourth_29 (show Nat.beq 6 0 = false from rfl) (show Nat.beq 6 1 = false from rfl) (show Nat.beq 6 7 = false from rfl) (show Nat.beq 6 16 = false from rfl) (show Nat.beq 6 20 = false from rfl) (show Nat.beq 6 23 = false from rfl) (show Nat.beq 6 24 = false from rfl) (show Nat.beq 6 25 = false from rfl)
theorem not_is_fourth_29_9 : ¬ IsFourthMod29 9 :=
  not_is_fourth_29 (show Nat.beq 9 0 = false from rfl) (show Nat.beq 9 1 = false from rfl) (show Nat.beq 9 7 = false from rfl) (show Nat.beq 9 16 = false from rfl) (show Nat.beq 9 20 = false from rfl) (show Nat.beq 9 23 = false from rfl) (show Nat.beq 9 24 = false from rfl) (show Nat.beq 9 25 = false from rfl)
theorem not_is_fourth_29_11 : ¬ IsFourthMod29 11 :=
  not_is_fourth_29 (show Nat.beq 11 0 = false from rfl) (show Nat.beq 11 1 = false from rfl) (show Nat.beq 11 7 = false from rfl) (show Nat.beq 11 16 = false from rfl) (show Nat.beq 11 20 = false from rfl) (show Nat.beq 11 23 = false from rfl) (show Nat.beq 11 24 = false from rfl) (show Nat.beq 11 25 = false from rfl)
theorem not_is_fourth_29_13 : ¬ IsFourthMod29 13 :=
  not_is_fourth_29 (show Nat.beq 13 0 = false from rfl) (show Nat.beq 13 1 = false from rfl) (show Nat.beq 13 7 = false from rfl) (show Nat.beq 13 16 = false from rfl) (show Nat.beq 13 20 = false from rfl) (show Nat.beq 13 23 = false from rfl) (show Nat.beq 13 24 = false from rfl) (show Nat.beq 13 25 = false from rfl)
theorem not_is_fourth_29_14 : ¬ IsFourthMod29 14 :=
  not_is_fourth_29 (show Nat.beq 14 0 = false from rfl) (show Nat.beq 14 1 = false from rfl) (show Nat.beq 14 7 = false from rfl) (show Nat.beq 14 16 = false from rfl) (show Nat.beq 14 20 = false from rfl) (show Nat.beq 14 23 = false from rfl) (show Nat.beq 14 24 = false from rfl) (show Nat.beq 14 25 = false from rfl)
theorem not_is_fourth_29_15 : ¬ IsFourthMod29 15 :=
  not_is_fourth_29 (show Nat.beq 15 0 = false from rfl) (show Nat.beq 15 1 = false from rfl) (show Nat.beq 15 7 = false from rfl) (show Nat.beq 15 16 = false from rfl) (show Nat.beq 15 20 = false from rfl) (show Nat.beq 15 23 = false from rfl) (show Nat.beq 15 24 = false from rfl) (show Nat.beq 15 25 = false from rfl)
theorem not_is_fourth_29_17 : ¬ IsFourthMod29 17 :=
  not_is_fourth_29 (show Nat.beq 17 0 = false from rfl) (show Nat.beq 17 1 = false from rfl) (show Nat.beq 17 7 = false from rfl) (show Nat.beq 17 16 = false from rfl) (show Nat.beq 17 20 = false from rfl) (show Nat.beq 17 23 = false from rfl) (show Nat.beq 17 24 = false from rfl) (show Nat.beq 17 25 = false from rfl)
theorem not_is_fourth_29_19 : ¬ IsFourthMod29 19 :=
  not_is_fourth_29 (show Nat.beq 19 0 = false from rfl) (show Nat.beq 19 1 = false from rfl) (show Nat.beq 19 7 = false from rfl) (show Nat.beq 19 16 = false from rfl) (show Nat.beq 19 20 = false from rfl) (show Nat.beq 19 23 = false from rfl) (show Nat.beq 19 24 = false from rfl) (show Nat.beq 19 25 = false from rfl)
theorem not_is_fourth_29_21 : ¬ IsFourthMod29 21 :=
  not_is_fourth_29 (show Nat.beq 21 0 = false from rfl) (show Nat.beq 21 1 = false from rfl) (show Nat.beq 21 7 = false from rfl) (show Nat.beq 21 16 = false from rfl) (show Nat.beq 21 20 = false from rfl) (show Nat.beq 21 23 = false from rfl) (show Nat.beq 21 24 = false from rfl) (show Nat.beq 21 25 = false from rfl)
theorem not_is_fourth_29_22 : ¬ IsFourthMod29 22 :=
  not_is_fourth_29 (show Nat.beq 22 0 = false from rfl) (show Nat.beq 22 1 = false from rfl) (show Nat.beq 22 7 = false from rfl) (show Nat.beq 22 16 = false from rfl) (show Nat.beq 22 20 = false from rfl) (show Nat.beq 22 23 = false from rfl) (show Nat.beq 22 24 = false from rfl) (show Nat.beq 22 25 = false from rfl)
theorem not_is_fourth_29_26 : ¬ IsFourthMod29 26 :=
  not_is_fourth_29 (show Nat.beq 26 0 = false from rfl) (show Nat.beq 26 1 = false from rfl) (show Nat.beq 26 7 = false from rfl) (show Nat.beq 26 16 = false from rfl) (show Nat.beq 26 20 = false from rfl) (show Nat.beq 26 23 = false from rfl) (show Nat.beq 26 24 = false from rfl) (show Nat.beq 26 25 = false from rfl)
theorem not_is_fourth_29_28 : ¬ IsFourthMod29 28 :=
  not_is_fourth_29 (show Nat.beq 28 0 = false from rfl) (show Nat.beq 28 1 = false from rfl) (show Nat.beq 28 7 = false from rfl) (show Nat.beq 28 16 = false from rfl) (show Nat.beq 28 20 = false from rfl) (show Nat.beq 28 23 = false from rfl) (show Nat.beq 28 24 = false from rfl) (show Nat.beq 28 25 = false from rfl)

theorem fourth_pow_is_fourth_of_lt_29 :
    ∀ r : Nat, r < 29 → IsFourthMod29 (Nat.pow r 4 % 29)
  | 0, _ => Or.inl rfl
  | 1, _ => Or.inr (Or.inl rfl)
  | 2, _ => Or.inr (Or.inr (Or.inr (Or.inl rfl)))
  | 3, _ => Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inl rfl)))))
  | 4, _ => Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inl rfl))))))
  | 5, _ => Or.inr (Or.inr (Or.inr (Or.inl rfl)))
  | 6, _ => Or.inr (Or.inr (Or.inr (Or.inr (Or.inl rfl))))
  | 7, _ => Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inl rfl)))))
  | 8, _ => Or.inr (Or.inr (Or.inl rfl))
  | 9, _ => Or.inr (Or.inr (Or.inl rfl))
  | 10, _ => Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inl rfl))))))
  | 11, _ => Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (rfl)))))))
  | 12, _ => Or.inr (Or.inl rfl)
  | 13, _ => Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (rfl)))))))
  | 14, _ => Or.inr (Or.inr (Or.inr (Or.inr (Or.inl rfl))))
  | 15, _ => Or.inr (Or.inr (Or.inr (Or.inr (Or.inl rfl))))
  | 16, _ => Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (rfl)))))))
  | 17, _ => Or.inr (Or.inl rfl)
  | 18, _ => Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (rfl)))))))
  | 19, _ => Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inl rfl))))))
  | 20, _ => Or.inr (Or.inr (Or.inl rfl))
  | 21, _ => Or.inr (Or.inr (Or.inl rfl))
  | 22, _ => Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inl rfl)))))
  | 23, _ => Or.inr (Or.inr (Or.inr (Or.inr (Or.inl rfl))))
  | 24, _ => Or.inr (Or.inr (Or.inr (Or.inl rfl)))
  | 25, _ => Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inl rfl))))))
  | 26, _ => Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inl rfl)))))
  | 27, _ => Or.inr (Or.inr (Or.inr (Or.inl rfl)))
  | 28, _ => Or.inr (Or.inl rfl)
  | n + 29, h => absurd h (Nat.not_lt_of_le (Nat.le_add_left 29 n))

/-! ## Empty-axiom `Nat` toolkit modulo 29 -/

theorem add29_mod (x : Nat) : (x + 29) % 29 = x % 29 :=
  let hcond : 0 < 29 ∧ 29 ≤ x + 29 :=
    ⟨Nat.succ_pos 28, Nat.le_add_left 29 x⟩
  let hmod := Nat.mod_eq (x + 29) 29
  let hif :
      (if 0 < 29 ∧ 29 ≤ x + 29 then (x + 29 - 29) % 29 else x + 29) =
        (x + 29 - 29) % 29 :=
    if_pos hcond
  let hsub : x + 29 - 29 = x := rfl
  (hmod.trans hif).trans (congrArg (fun t => t % 29) hsub)

theorem add_mul29_mod (n : Nat) : ∀ k : Nat, (n + 29 * k) % 29 = n % 29
  | 0 =>
    congrArg (fun t => t % 29) (show n + 29 * 0 = n from rfl)
  | k + 1 =>
    let h1 : n + 29 * (k + 1) = n + 29 * k + 29 :=
      (congrArg (fun t => n + t)
          (show 29 * (k + 1) = 29 * k + 29 from rfl)).trans
        (Nat.add_assoc n (29 * k) 29)
    (congrArg (fun t => t % 29) h1).trans
      ((add29_mod (n + 29 * k)).trans (add_mul29_mod n k))

theorem add_mul_left_29 (a m : Nat) :
    ∀ qq : Nat, (a + m * (29 * qq)) % 29 = a % 29
  | 0 =>
    congrArg (fun t => t % 29) (show a + m * (29 * 0) = a from rfl)
  | qq + 1 =>
    let hmul : m * (29 * (qq + 1)) = m * (29 * qq) + m * 29 :=
      (congrArg (fun t => m * t)
          (show 29 * (qq + 1) = 29 * qq + 29 from rfl)).trans
        (Nat.mul_add m (29 * qq) 29)
    let hsum : a + m * (29 * (qq + 1)) = a + m * (29 * qq) + 29 * m :=
      (congrArg (fun t => a + t) hmul).trans
        ((Nat.add_assoc a (m * (29 * qq)) (m * 29)).symm.trans
          (congrArg (fun t => a + m * (29 * qq) + t) (Nat.mul_comm m 29)))
    (congrArg (fun t => t % 29) hsum).trans
      ((add_mul29_mod (a + m * (29 * qq)) m).trans
        (add_mul_left_29 a m qq))

theorem exists_mod29 : ∀ n : Nat, ∃ q r : Nat, r < 29 ∧ n = 29 * q + r
  | 0 => ⟨0, 0, by decide, rfl⟩
  | n + 1 =>
    match exists_mod29 n with
    | ⟨q, 0, _, heq⟩ =>
      ⟨q, 1, by decide,
        (congrArg Nat.succ heq).trans
          (show Nat.succ (29 * q + 0) = 29 * q + 1 from rfl)⟩
    | ⟨q, 1, _, heq⟩ =>
      ⟨q, 2, by decide,
        (congrArg Nat.succ heq).trans
          (show Nat.succ (29 * q + 1) = 29 * q + 2 from rfl)⟩
    | ⟨q, 2, _, heq⟩ =>
      ⟨q, 3, by decide,
        (congrArg Nat.succ heq).trans
          (show Nat.succ (29 * q + 2) = 29 * q + 3 from rfl)⟩
    | ⟨q, 3, _, heq⟩ =>
      ⟨q, 4, by decide,
        (congrArg Nat.succ heq).trans
          (show Nat.succ (29 * q + 3) = 29 * q + 4 from rfl)⟩
    | ⟨q, 4, _, heq⟩ =>
      ⟨q, 5, by decide,
        (congrArg Nat.succ heq).trans
          (show Nat.succ (29 * q + 4) = 29 * q + 5 from rfl)⟩
    | ⟨q, 5, _, heq⟩ =>
      ⟨q, 6, by decide,
        (congrArg Nat.succ heq).trans
          (show Nat.succ (29 * q + 5) = 29 * q + 6 from rfl)⟩
    | ⟨q, 6, _, heq⟩ =>
      ⟨q, 7, by decide,
        (congrArg Nat.succ heq).trans
          (show Nat.succ (29 * q + 6) = 29 * q + 7 from rfl)⟩
    | ⟨q, 7, _, heq⟩ =>
      ⟨q, 8, by decide,
        (congrArg Nat.succ heq).trans
          (show Nat.succ (29 * q + 7) = 29 * q + 8 from rfl)⟩
    | ⟨q, 8, _, heq⟩ =>
      ⟨q, 9, by decide,
        (congrArg Nat.succ heq).trans
          (show Nat.succ (29 * q + 8) = 29 * q + 9 from rfl)⟩
    | ⟨q, 9, _, heq⟩ =>
      ⟨q, 10, by decide,
        (congrArg Nat.succ heq).trans
          (show Nat.succ (29 * q + 9) = 29 * q + 10 from rfl)⟩
    | ⟨q, 10, _, heq⟩ =>
      ⟨q, 11, by decide,
        (congrArg Nat.succ heq).trans
          (show Nat.succ (29 * q + 10) = 29 * q + 11 from rfl)⟩
    | ⟨q, 11, _, heq⟩ =>
      ⟨q, 12, by decide,
        (congrArg Nat.succ heq).trans
          (show Nat.succ (29 * q + 11) = 29 * q + 12 from rfl)⟩
    | ⟨q, 12, _, heq⟩ =>
      ⟨q, 13, by decide,
        (congrArg Nat.succ heq).trans
          (show Nat.succ (29 * q + 12) = 29 * q + 13 from rfl)⟩
    | ⟨q, 13, _, heq⟩ =>
      ⟨q, 14, by decide,
        (congrArg Nat.succ heq).trans
          (show Nat.succ (29 * q + 13) = 29 * q + 14 from rfl)⟩
    | ⟨q, 14, _, heq⟩ =>
      ⟨q, 15, by decide,
        (congrArg Nat.succ heq).trans
          (show Nat.succ (29 * q + 14) = 29 * q + 15 from rfl)⟩
    | ⟨q, 15, _, heq⟩ =>
      ⟨q, 16, by decide,
        (congrArg Nat.succ heq).trans
          (show Nat.succ (29 * q + 15) = 29 * q + 16 from rfl)⟩
    | ⟨q, 16, _, heq⟩ =>
      ⟨q, 17, by decide,
        (congrArg Nat.succ heq).trans
          (show Nat.succ (29 * q + 16) = 29 * q + 17 from rfl)⟩
    | ⟨q, 17, _, heq⟩ =>
      ⟨q, 18, by decide,
        (congrArg Nat.succ heq).trans
          (show Nat.succ (29 * q + 17) = 29 * q + 18 from rfl)⟩
    | ⟨q, 18, _, heq⟩ =>
      ⟨q, 19, by decide,
        (congrArg Nat.succ heq).trans
          (show Nat.succ (29 * q + 18) = 29 * q + 19 from rfl)⟩
    | ⟨q, 19, _, heq⟩ =>
      ⟨q, 20, by decide,
        (congrArg Nat.succ heq).trans
          (show Nat.succ (29 * q + 19) = 29 * q + 20 from rfl)⟩
    | ⟨q, 20, _, heq⟩ =>
      ⟨q, 21, by decide,
        (congrArg Nat.succ heq).trans
          (show Nat.succ (29 * q + 20) = 29 * q + 21 from rfl)⟩
    | ⟨q, 21, _, heq⟩ =>
      ⟨q, 22, by decide,
        (congrArg Nat.succ heq).trans
          (show Nat.succ (29 * q + 21) = 29 * q + 22 from rfl)⟩
    | ⟨q, 22, _, heq⟩ =>
      ⟨q, 23, by decide,
        (congrArg Nat.succ heq).trans
          (show Nat.succ (29 * q + 22) = 29 * q + 23 from rfl)⟩
    | ⟨q, 23, _, heq⟩ =>
      ⟨q, 24, by decide,
        (congrArg Nat.succ heq).trans
          (show Nat.succ (29 * q + 23) = 29 * q + 24 from rfl)⟩
    | ⟨q, 24, _, heq⟩ =>
      ⟨q, 25, by decide,
        (congrArg Nat.succ heq).trans
          (show Nat.succ (29 * q + 24) = 29 * q + 25 from rfl)⟩
    | ⟨q, 25, _, heq⟩ =>
      ⟨q, 26, by decide,
        (congrArg Nat.succ heq).trans
          (show Nat.succ (29 * q + 25) = 29 * q + 26 from rfl)⟩
    | ⟨q, 26, _, heq⟩ =>
      ⟨q, 27, by decide,
        (congrArg Nat.succ heq).trans
          (show Nat.succ (29 * q + 26) = 29 * q + 27 from rfl)⟩
    | ⟨q, 27, _, heq⟩ =>
      ⟨q, 28, by decide,
        (congrArg Nat.succ heq).trans
          (show Nat.succ (29 * q + 27) = 29 * q + 28 from rfl)⟩
    | ⟨q, 28, _, heq⟩ =>
      ⟨q + 1, 0, by decide,
        (congrArg Nat.succ heq).trans
          (show Nat.succ (29 * q + 28) = 29 * (q + 1) + 0 from rfl)⟩
    | ⟨_q, r + 29, hr, _heq⟩ =>
      absurd hr (Nat.not_lt_of_le (Nat.le_add_left 29 r))

theorem eq_mod29_of_decomp {n q r : Nat}
    (hr : r < 29) (h : n = 29 * q + r) : n % 29 = r :=
  let h1 : n % 29 = (29 * q + r) % 29 :=
    congrArg (fun t => t % 29) h
  let h2 : 29 * q + r = r + 29 * q := Nat.add_comm (29 * q) r
  let h3 : (29 * q + r) % 29 = (r + 29 * q) % 29 :=
    congrArg (fun t => t % 29) h2
  h1.trans (h3.trans ((add_mul29_mod r q).trans (Nat.mod_eq_of_lt hr)))

theorem mul_mod29 (x y : Nat) :
    (x * y) % 29 = (x % 29 * (y % 29)) % 29 :=
  match exists_mod29 x with
  | ⟨qx, rx, hrx, hx⟩ =>
    match exists_mod29 y with
    | ⟨qy, ry, hry, hy⟩ =>
      let hxmod : x % 29 = rx := eq_mod29_of_decomp hrx hx
      let hymod : y % 29 = ry := eq_mod29_of_decomp hry hy
      let hxy : x * y = (29 * qx + rx) * (29 * qy + ry) :=
        (congrArg (fun t => t * y) hx).trans
          (congrArg (fun t => (29 * qx + rx) * t) hy)
      let hexp : (29 * qx + rx) * (29 * qy + ry) =
          (29 * qx + rx) * ry + (29 * qx + rx) * (29 * qy) :=
        (Nat.mul_add (29 * qx + rx) (29 * qy) ry).trans
          (Nat.add_comm ((29 * qx + rx) * (29 * qy)) ((29 * qx + rx) * ry))
      let hpeel1 :
          ((29 * qx + rx) * ry + (29 * qx + rx) * (29 * qy)) % 29 =
            ((29 * qx + rx) * ry) % 29 :=
        add_mul_left_29 ((29 * qx + rx) * ry) (29 * qx + rx) qy
      let hry : (29 * qx + rx) * ry = rx * ry + ry * (29 * qx) :=
        let hflip : (29 * qx + rx) * ry = ry * (29 * qx + rx) :=
          Nat.mul_comm (29 * qx + rx) ry
        let hdist : ry * (29 * qx + rx) = ry * (29 * qx) + ry * rx :=
          Nat.mul_add ry (29 * qx) rx
        let h1 : ry * (29 * qx) + ry * rx = ry * (29 * qx) + rx * ry :=
          congrArg (fun t => ry * (29 * qx) + t) (Nat.mul_comm ry rx)
        let h2 : ry * (29 * qx) + rx * ry = rx * ry + ry * (29 * qx) :=
          Nat.add_comm (ry * (29 * qx)) (rx * ry)
        hflip.trans (hdist.trans (h1.trans h2))
      let hpeel2 : (rx * ry + ry * (29 * qx)) % 29 = (rx * ry) % 29 :=
        add_mul_left_29 (rx * ry) ry qx
      let hprod : (x * y) % 29 = (rx * ry) % 29 :=
        (congrArg (fun t => t % 29) (hxy.trans hexp)).trans
          (hpeel1.trans
            ((congrArg (fun t => t % 29) hry).trans hpeel2))
      let hrxry : rx * ry = x % 29 * (y % 29) :=
        (congrArg (fun t => t * ry) hxmod.symm).trans
          (congrArg (fun t => x % 29 * t) hymod.symm)
      hprod.trans (congrArg (fun t => t % 29) hrxry)

theorem add_mod29 (x y : Nat) :
    (x + y) % 29 = (x % 29 + y % 29) % 29 :=
  match exists_mod29 x with
  | ⟨qx, rx, hrx, hx⟩ =>
    match exists_mod29 y with
    | ⟨qy, ry, hry, hy⟩ =>
      let hxmod : x % 29 = rx := eq_mod29_of_decomp hrx hx
      let hymod : y % 29 = ry := eq_mod29_of_decomp hry hy
      let hxy : x + y = (29 * qx + rx) + (29 * qy + ry) :=
        (congrArg (fun t => t + y) hx).trans
          (congrArg (fun t => (29 * qx + rx) + t) hy)
      let hcomm : 29 * qy + ry = ry + 29 * qy :=
        Nat.add_comm (29 * qy) ry
      let hxy' : (29 * qx + rx) + (29 * qy + ry) =
          (29 * qx + rx) + (ry + 29 * qy) :=
        congrArg (fun t => (29 * qx + rx) + t) hcomm
      let hassoc : (29 * qx + rx) + (ry + 29 * qy) =
          (29 * qx + rx) + ry + 29 * qy :=
        (Nat.add_assoc (29 * qx + rx) ry (29 * qy)).symm
      let hpeel : ((29 * qx + rx) + ry + 29 * qy) % 29 =
          ((29 * qx + rx) + ry) % 29 :=
        add_mul29_mod ((29 * qx + rx) + ry) qy
      let hcomm2 : 29 * qx + rx = rx + 29 * qx :=
        Nat.add_comm (29 * qx) rx
      let hxy2 : (29 * qx + rx) + ry = rx + 29 * qx + ry :=
        congrArg (fun t => t + ry) hcomm2
      let hassoc2 : rx + 29 * qx + ry = rx + ry + 29 * qx :=
        let h1 : rx + 29 * qx + ry = rx + (29 * qx + ry) :=
          Nat.add_assoc rx (29 * qx) ry
        let h2 : 29 * qx + ry = ry + 29 * qx :=
          Nat.add_comm (29 * qx) ry
        let h3 : rx + (29 * qx + ry) = rx + (ry + 29 * qx) :=
          congrArg (fun t => rx + t) h2
        let h4 : rx + (ry + 29 * qx) = rx + ry + 29 * qx :=
          (Nat.add_assoc rx ry (29 * qx)).symm
        h1.trans (h3.trans h4)
      let hpeel2 : (rx + ry + 29 * qx) % 29 = (rx + ry) % 29 :=
        add_mul29_mod (rx + ry) qx
      let hsum : (x + y) % 29 = (rx + ry) % 29 :=
        (congrArg (fun t => t % 29) (hxy.trans (hxy'.trans hassoc))).trans
          (hpeel.trans
            ((congrArg (fun t => t % 29) (hxy2.trans hassoc2)).trans hpeel2))
      let hrxry : rx + ry = x % 29 + y % 29 :=
        (congrArg (fun t => t + ry) hxmod.symm).trans
          (congrArg (fun t => x % 29 + t) hymod.symm)
      hsum.trans (congrArg (fun t => t % 29) hrxry)

theorem pow_mod29 (n : Nat) :
    ∀ k : Nat, Nat.pow n k % 29 = Nat.pow (n % 29) k % 29
  | 0 => rfl
  | k + 1 =>
    let hs : Nat.pow n (k + 1) = Nat.pow n k * n := Nat.pow_succ n k
    let hs' : Nat.pow (n % 29) (k + 1) =
        Nat.pow (n % 29) k * (n % 29) :=
      Nat.pow_succ (n % 29) k
    let hmodmod : (n % 29) % 29 = n % 29 :=
      Nat.mod_eq_of_lt (Nat.mod_lt n (Nat.succ_pos 28))
    let h1 : (Nat.pow n k * n) % 29 =
        (Nat.pow n k % 29 * (n % 29)) % 29 :=
      mul_mod29 (Nat.pow n k) n
    let h2 : (Nat.pow n k % 29 * (n % 29)) % 29 =
        (Nat.pow (n % 29) k % 29 * (n % 29)) % 29 :=
      congrArg (fun t => (t * (n % 29)) % 29) (pow_mod29 n k)
    let h3 : (Nat.pow (n % 29) k * (n % 29)) % 29 =
        (Nat.pow (n % 29) k % 29 * ((n % 29) % 29)) % 29 :=
      mul_mod29 (Nat.pow (n % 29) k) (n % 29)
    let h4 : (Nat.pow (n % 29) k % 29 * (n % 29)) % 29 =
        (Nat.pow (n % 29) k * (n % 29)) % 29 :=
      (congrArg (fun t => (Nat.pow (n % 29) k % 29 * t) % 29)
          hmodmod.symm).trans h3.symm
    (congrArg (fun t => t % 29) hs).trans
      (h1.trans (h2.trans (h4.trans
        (congrArg (fun t => t % 29) hs'.symm))))

theorem fourth_pow_is_fourth_29 (A : Nat) :
    IsFourthMod29 (Nat.pow A 4 % 29) :=
  let hr : A % 29 < 29 := Nat.mod_lt A (Nat.succ_pos 28)
  let hpow : Nat.pow A 4 % 29 = Nat.pow (A % 29) 4 % 29 :=
    pow_mod29 A 4
  Eq.rec (motive := fun (t : Nat) (_ : Nat.pow (A % 29) 4 % 29 = t) =>
      IsFourthMod29 t)
    (fourth_pow_is_fourth_of_lt_29 (A % 29) hr) hpow.symm

theorem sub_add_cancel_29 {n : Nat} (h : 29 ≤ n) :
    n - 29 + 29 = n :=
  match Nat.le.dest h with
  | ⟨k, hk⟩ =>
    let hsub : n - 29 = k :=
      let hcomm : 29 + k = k + 29 := Nat.add_comm 29 k
      let hcancel : k + 29 - 29 = k := rfl
      (congrArg (fun t => t - 29) (hk.symm.trans hcomm)).trans hcancel
    let hsum : n - 29 + 29 = k + 29 :=
      congrArg (fun t => t + 29) hsub
    hsum.trans ((Nat.add_comm k 29).trans hk)

theorem residue_sub_mod29 (a b c : Nat)
    (ha : a < 29) (hb : b < 29) (_hc : c < 29)
    (h : (a + b) % 29 = c) :
    a = (c + 29 - b) % 29 :=
  match Nat.decLe 29 (a + b) with
  | isFalse hnot =>
    let hlt : a + b < 29 := Nat.not_le.mp hnot
    let hmod : (a + b) % 29 = a + b := Nat.mod_eq_of_lt hlt
    let hab : a + b = c := hmod.symm.trans h
    let hsum : c + 29 - b = a + 29 :=
      let h1 : c + 29 - b = a + b + 29 - b :=
        congrArg (fun t => t + 29 - b) hab.symm
      let h2 : a + b + 29 = a + 29 + b :=
        let h2a : a + b + 29 = a + (b + 29) := Nat.add_assoc a b 29
        let h2b : b + 29 = 29 + b := Nat.add_comm b 29
        let h2c : a + (b + 29) = a + (29 + b) :=
          congrArg (fun t => a + t) h2b
        let h2d : a + (29 + b) = a + 29 + b :=
          (Nat.add_assoc a 29 b).symm
        h2a.trans (h2c.trans h2d)
      let h3 : a + 29 + b - b = a + 29 :=
        add_sub_cancel_empty (a + 29) b
      h1.trans ((congrArg (fun t => t - b) h2).trans h3)
    let hmod2 : (c + 29 - b) % 29 = (a + 29) % 29 :=
      congrArg (fun t => t % 29) hsum
    let haq : (a + 29) % 29 = a % 29 := add29_mod a
    let haeq : a % 29 = a := Nat.mod_eq_of_lt ha
    (hmod2.trans (haq.trans haeq)).symm
  | isTrue hle =>
    let hcond : 0 < 29 ∧ 29 ≤ a + b := ⟨Nat.succ_pos 28, hle⟩
    let hmod := Nat.mod_eq (a + b) 29
    let hif :
        (if 0 < 29 ∧ 29 ≤ a + b then (a + b - 29) % 29 else a + b) =
          (a + b - 29) % 29 :=
      if_pos hcond
    let hsumq : a + b < 29 + 29 :=
      Nat.add_lt_add ha hb
    let hsublt : a + b - 29 < 29 :=
      let hrestore : a + b - 29 + 29 = a + b := sub_add_cancel_29 hle
      let hlt' : a + b - 29 + 29 < 29 + 29 :=
        Eq.subst (motive := fun t => t < 29 + 29) hrestore.symm hsumq
      Nat.lt_of_add_lt_add_right hlt'
    let hmodsub : (a + b - 29) % 29 = a + b - 29 :=
      Nat.mod_eq_of_lt hsublt
    let hc' : a + b - 29 = c :=
      ((hmod.trans hif).trans hmodsub).symm.trans h
    let hsum : c + 29 - b = a :=
      let h1 : c + 29 - b = a + b - 29 + 29 - b :=
        congrArg (fun t => t + 29 - b) hc'.symm
      let h2 : a + b - 29 + 29 = a + b := sub_add_cancel_29 hle
      let h3 : a + b - b = a := add_sub_cancel_empty a b
      h1.trans ((congrArg (fun t => t - b) h2).trans h3)
    let hmod2 : (c + 29 - b) % 29 = a % 29 :=
      congrArg (fun t => t % 29) hsum
    let haeq : a % 29 = a := Nat.mod_eq_of_lt ha
    (hmod2.trans haeq).symm

def rhs_mod29 (B : Nat) : Nat :=
  (Nat.pow (B + 3) 13 % 29 + 29 - Nat.pow B 4 % 29) % 29

def rhs_mod29_res (r : Nat) : Nat :=
  (Nat.pow ((r + 3) % 29) 13 % 29 + 29 -
    Nat.pow (r % 29) 4 % 29) % 29

theorem rhs_mod29_eq_res (B : Nat) :
    rhs_mod29 B = rhs_mod29_res (B % 29) :=
  let hC : Nat.pow (B + 3) 13 % 29 =
      Nat.pow ((B + 3) % 29) 13 % 29 :=
    pow_mod29 (B + 3) 13
  let hB : Nat.pow B 4 % 29 = Nat.pow (B % 29) 4 % 29 :=
    pow_mod29 B 4
  let h3 : 3 % 29 = 3 := rfl
  let hadd : (B + 3) % 29 = (B % 29 + 3) % 29 :=
    let h1 : (B + 3) % 29 = (B % 29 + 3 % 29) % 29 :=
      add_mod29 B 3
    h1.trans (congrArg (fun t => (B % 29 + t) % 29) h3)
  let hC' : Nat.pow ((B + 3) % 29) 13 % 29 =
      Nat.pow ((B % 29 + 3) % 29) 13 % 29 :=
    congrArg (fun t => Nat.pow t 13 % 29) hadd
  let hmodmod : (B % 29) % 29 = B % 29 :=
    Nat.mod_eq_of_lt (Nat.mod_lt B (Nat.succ_pos 28))
  let hB' : Nat.pow (B % 29) 4 % 29 =
      Nat.pow ((B % 29) % 29) 4 % 29 :=
    congrArg (fun t => Nat.pow t 4 % 29) hmodmod.symm
  (congrArg (fun t => (t + 29 - Nat.pow B 4 % 29) % 29)
      (hC.trans hC')).trans
    (congrArg
      (fun t =>
        (Nat.pow ((B % 29 + 3) % 29) 13 % 29 + 29 - t) % 29)
      (hB.trans hB'))

theorem direct_mod29_kill (B : Nat)
    (h : ¬ IsFourthMod29 (rhs_mod29 B)) :
    ¬ ∃ A, Nat.pow A 4 + Nat.pow B 4 = Nat.pow (B + 3) 13 := by
  intro ⟨A, hEq⟩
  let a := Nat.pow A 4 % 29
  let b := Nat.pow B 4 % 29
  let c := Nat.pow (B + 3) 13 % 29
  let hsum : (Nat.pow A 4 + Nat.pow B 4) % 29 = c :=
    congrArg (fun n => n % 29) hEq
  let hadd : (a + b) % 29 = c :=
    (add_mod29 (Nat.pow A 4) (Nat.pow B 4)).symm.trans hsum
  let ha : a < 29 := Nat.mod_lt (Nat.pow A 4) (Nat.succ_pos 28)
  let hb : b < 29 := Nat.mod_lt (Nat.pow B 4) (Nat.succ_pos 28)
  let hc : c < 29 := Nat.mod_lt (Nat.pow (B + 3) 13) (Nat.succ_pos 28)
  let hrhs : a = rhs_mod29 B :=
    residue_sub_mod29 a b c ha hb hc hadd
  let hA : IsFourthMod29 a := fourth_pow_is_fourth_29 A
  let hRhs : IsFourthMod29 (rhs_mod29 B) :=
    Eq.rec (motive := fun (t : Nat) (_ : a = t) => IsFourthMod29 t) hA hrhs
  exact h hRhs

theorem not_fourth_rhs_mod29_of_res (B r : Nat)
    (hr : B % 29 = r)
    (hnot : ¬ IsFourthMod29 (rhs_mod29_res r)) :
    ¬ IsFourthMod29 (rhs_mod29 B) :=
  let h1 : rhs_mod29 B = rhs_mod29_res (B % 29) := rhs_mod29_eq_res B
  let h2 : rhs_mod29_res (B % 29) = rhs_mod29_res r :=
    congrArg rhs_mod29_res hr
  Eq.rec (motive := fun (t : Nat) (_ : rhs_mod29_res r = t) =>
      ¬ IsFourthMod29 t)
    hnot (h2.symm.trans h1.symm)
def killed_mod29 : List Nat :=
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
  226846,
  239934,
  277854,
  306110,
  349358,
  368462,
  376814,
  403358,
  418446,
  442958,
  463390,
  463742,
  476158,
  502318,
  589982,
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
  821166,
  832190,
  835902,
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
  1155358,
  1170126,
  1181566,
  1184238,
  1203742,
  1205742,
  1219854,
  1296366,
  1357038,
  1359054,
  1374782,
  1386910,
  1401326,
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

theorem killed_mod29_length :
    killed_mod29.length = 77 :=
  rfl

def all_killed_mod29 : List Nat → Prop
  | [] => True
  | x :: xs =>
      ¬ IsFourthMod29 (rhs_mod29_res (x % 29)) ∧ all_killed_mod29 xs

set_option maxRecDepth 32768
set_option maxHeartbeats 4000000

theorem all_killed_mod29_list :
    all_killed_mod29 killed_mod29 :=
  ⟨not_is_fourth_29_14, ⟨not_is_fourth_29_3, ⟨not_is_fourth_29_14, ⟨not_is_fourth_29_21, ⟨not_is_fourth_29_19, ⟨not_is_fourth_29_22, ⟨not_is_fourth_29_15, ⟨not_is_fourth_29_13, ⟨not_is_fourth_29_28, ⟨not_is_fourth_29_14, ⟨not_is_fourth_29_15, ⟨not_is_fourth_29_2, ⟨not_is_fourth_29_17, ⟨not_is_fourth_29_28, ⟨not_is_fourth_29_15, ⟨not_is_fourth_29_15, ⟨not_is_fourth_29_6, ⟨not_is_fourth_29_2, ⟨not_is_fourth_29_26, ⟨not_is_fourth_29_13, ⟨not_is_fourth_29_11, ⟨not_is_fourth_29_3, ⟨not_is_fourth_29_5, ⟨not_is_fourth_29_22, ⟨not_is_fourth_29_21, ⟨not_is_fourth_29_26, ⟨not_is_fourth_29_21, ⟨not_is_fourth_29_3, ⟨not_is_fourth_29_6, ⟨not_is_fourth_29_11, ⟨not_is_fourth_29_17, ⟨not_is_fourth_29_2, ⟨not_is_fourth_29_9, ⟨not_is_fourth_29_26, ⟨not_is_fourth_29_19, ⟨not_is_fourth_29_22, ⟨not_is_fourth_29_22, ⟨not_is_fourth_29_4, ⟨not_is_fourth_29_19, ⟨not_is_fourth_29_2, ⟨not_is_fourth_29_15, ⟨not_is_fourth_29_26, ⟨not_is_fourth_29_15, ⟨not_is_fourth_29_15, ⟨not_is_fourth_29_9, ⟨not_is_fourth_29_14, ⟨not_is_fourth_29_13, ⟨not_is_fourth_29_21, ⟨not_is_fourth_29_14, ⟨not_is_fourth_29_14, ⟨not_is_fourth_29_2, ⟨not_is_fourth_29_9, ⟨not_is_fourth_29_19, ⟨not_is_fourth_29_14, ⟨not_is_fourth_29_5, ⟨not_is_fourth_29_14, ⟨not_is_fourth_29_14, ⟨not_is_fourth_29_26, ⟨not_is_fourth_29_14, ⟨not_is_fourth_29_14, ⟨not_is_fourth_29_26, ⟨not_is_fourth_29_15, ⟨not_is_fourth_29_15, ⟨not_is_fourth_29_15, ⟨not_is_fourth_29_14, ⟨not_is_fourth_29_19, ⟨not_is_fourth_29_22, ⟨not_is_fourth_29_28, ⟨not_is_fourth_29_19, ⟨not_is_fourth_29_19, ⟨not_is_fourth_29_22, ⟨not_is_fourth_29_15, ⟨not_is_fourth_29_19, ⟨not_is_fourth_29_19, ⟨not_is_fourth_29_14, ⟨not_is_fourth_29_17, ⟨not_is_fourth_29_17, True.intro⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩

theorem not_fourth_of_all_killed_29 :
    ∀ l : List Nat, all_killed_mod29 l →
      ∀ B : Nat, B ∈ l → ¬ IsFourthMod29 (rhs_mod29_res (B % 29))
  | [], _, _B, hB => nomatch hB
  | _x :: xs, ⟨hx, hxs⟩, B, hB =>
    match hB with
    | List.Mem.head _ => hx
    | List.Mem.tail _ h' => not_fourth_of_all_killed_29 xs hxs B h'

theorem killed_mod29_rhs (B : Nat)
    (hB : B ∈ killed_mod29) :
    ¬ IsFourthMod29 (rhs_mod29 B) :=
  let hnot : ¬ IsFourthMod29 (rhs_mod29_res (B % 29)) :=
    not_fourth_of_all_killed_29 killed_mod29
      all_killed_mod29_list B hB
  Eq.rec (motive := fun t (_ : rhs_mod29_res (B % 29) = t) =>
      ¬ IsFourthMod29 t)
    hnot (rhs_mod29_eq_res B).symm

theorem beal_4_13_13_gap3_B_le_2M_eliminated_86_mod29
    (B : Nat) (hB : B ∈ killed_mod29) :
    ¬ ∃ A, Nat.pow A 4 + Nat.pow B 4 = Nat.pow (B + 3) 13 :=
  direct_mod29_kill B (killed_mod29_rhs B hB)
/-! ## Fourth powers modulo 109 -/
def fourth_powers_mod109 : List Nat :=
  [
  0,
  1,
  3,
  5,
  7,
  9,
  15,
  16,
  21,
  22,
  25,
  26,
  27,
  35,
  38,
  45,
  48,
  49,
  63,
  66,
  73,
  75,
  78,
  80,
  81,
  89,
  97,
  105
  ]

theorem fourth_powers_mod109_length :
    fourth_powers_mod109.length = 28 :=
  rfl

def IsFourthMod109 (n : Nat) : Prop :=
  n = 0 ∨ (n = 1 ∨ (n = 3 ∨ (n = 5 ∨ (n = 7 ∨ (n = 9 ∨ (n = 15 ∨ (n = 16 ∨ (n = 21 ∨ (n = 22 ∨ (n = 25 ∨ (n = 26 ∨ (n = 27 ∨ (n = 35 ∨ (n = 38 ∨ (n = 45 ∨ (n = 48 ∨ (n = 49 ∨ (n = 63 ∨ (n = 66 ∨ (n = 73 ∨ (n = 75 ∨ (n = 78 ∨ (n = 80 ∨ (n = 81 ∨ (n = 89 ∨ (n = 97 ∨ (n = 105)))))))))))))))))))))))))))

theorem not_is_fourth_109 {n : Nat}
    (h0 : Nat.beq n 0 = false)
    (h1 : Nat.beq n 1 = false)
    (h3 : Nat.beq n 3 = false)
    (h5 : Nat.beq n 5 = false)
    (h7 : Nat.beq n 7 = false)
    (h9 : Nat.beq n 9 = false)
    (h15 : Nat.beq n 15 = false)
    (h16 : Nat.beq n 16 = false)
    (h21 : Nat.beq n 21 = false)
    (h22 : Nat.beq n 22 = false)
    (h25 : Nat.beq n 25 = false)
    (h26 : Nat.beq n 26 = false)
    (h27 : Nat.beq n 27 = false)
    (h35 : Nat.beq n 35 = false)
    (h38 : Nat.beq n 38 = false)
    (h45 : Nat.beq n 45 = false)
    (h48 : Nat.beq n 48 = false)
    (h49 : Nat.beq n 49 = false)
    (h63 : Nat.beq n 63 = false)
    (h66 : Nat.beq n 66 = false)
    (h73 : Nat.beq n 73 = false)
    (h75 : Nat.beq n 75 = false)
    (h78 : Nat.beq n 78 = false)
    (h80 : Nat.beq n 80 = false)
    (h81 : Nat.beq n 81 = false)
    (h89 : Nat.beq n 89 = false)
    (h97 : Nat.beq n 97 = false)
    (h105 : Nat.beq n 105 = false)
    : ¬ IsFourthMod109 n :=
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
        ne_of_beq_false' h3 hx2
      | Or.inr hrest2 =>
        match hrest2 with
        | Or.inl hx3 =>
          ne_of_beq_false' h5 hx3
        | Or.inr hrest3 =>
          match hrest3 with
          | Or.inl hx4 =>
            ne_of_beq_false' h7 hx4
          | Or.inr hrest4 =>
            match hrest4 with
            | Or.inl hx5 =>
              ne_of_beq_false' h9 hx5
            | Or.inr hrest5 =>
              match hrest5 with
              | Or.inl hx6 =>
                ne_of_beq_false' h15 hx6
              | Or.inr hrest6 =>
                match hrest6 with
                | Or.inl hx7 =>
                  ne_of_beq_false' h16 hx7
                | Or.inr hrest7 =>
                  match hrest7 with
                  | Or.inl hx8 =>
                    ne_of_beq_false' h21 hx8
                  | Or.inr hrest8 =>
                    match hrest8 with
                    | Or.inl hx9 =>
                      ne_of_beq_false' h22 hx9
                    | Or.inr hrest9 =>
                      match hrest9 with
                      | Or.inl hx10 =>
                        ne_of_beq_false' h25 hx10
                      | Or.inr hrest10 =>
                        match hrest10 with
                        | Or.inl hx11 =>
                          ne_of_beq_false' h26 hx11
                        | Or.inr hrest11 =>
                          match hrest11 with
                          | Or.inl hx12 =>
                            ne_of_beq_false' h27 hx12
                          | Or.inr hrest12 =>
                            match hrest12 with
                            | Or.inl hx13 =>
                              ne_of_beq_false' h35 hx13
                            | Or.inr hrest13 =>
                              match hrest13 with
                              | Or.inl hx14 =>
                                ne_of_beq_false' h38 hx14
                              | Or.inr hrest14 =>
                                match hrest14 with
                                | Or.inl hx15 =>
                                  ne_of_beq_false' h45 hx15
                                | Or.inr hrest15 =>
                                  match hrest15 with
                                  | Or.inl hx16 =>
                                    ne_of_beq_false' h48 hx16
                                  | Or.inr hrest16 =>
                                    match hrest16 with
                                    | Or.inl hx17 =>
                                      ne_of_beq_false' h49 hx17
                                    | Or.inr hrest17 =>
                                      match hrest17 with
                                      | Or.inl hx18 =>
                                        ne_of_beq_false' h63 hx18
                                      | Or.inr hrest18 =>
                                        match hrest18 with
                                        | Or.inl hx19 =>
                                          ne_of_beq_false' h66 hx19
                                        | Or.inr hrest19 =>
                                          match hrest19 with
                                          | Or.inl hx20 =>
                                            ne_of_beq_false' h73 hx20
                                          | Or.inr hrest20 =>
                                            match hrest20 with
                                            | Or.inl hx21 =>
                                              ne_of_beq_false' h75 hx21
                                            | Or.inr hrest21 =>
                                              match hrest21 with
                                              | Or.inl hx22 =>
                                                ne_of_beq_false' h78 hx22
                                              | Or.inr hrest22 =>
                                                match hrest22 with
                                                | Or.inl hx23 =>
                                                  ne_of_beq_false' h80 hx23
                                                | Or.inr hrest23 =>
                                                  match hrest23 with
                                                  | Or.inl hx24 =>
                                                    ne_of_beq_false' h81 hx24
                                                  | Or.inr hrest24 =>
                                                    match hrest24 with
                                                    | Or.inl hx25 =>
                                                      ne_of_beq_false' h89 hx25
                                                    | Or.inr hrest25 =>
                                                      match hrest25 with
                                                      | Or.inl hx26 =>
                                                        ne_of_beq_false' h97 hx26
                                                      | Or.inr hx27 =>
                                                        ne_of_beq_false' h105 hx27

theorem not_is_fourth_109_10 : ¬ IsFourthMod109 10 :=
  not_is_fourth_109 (show Nat.beq 10 0 = false from rfl) (show Nat.beq 10 1 = false from rfl) (show Nat.beq 10 3 = false from rfl) (show Nat.beq 10 5 = false from rfl) (show Nat.beq 10 7 = false from rfl) (show Nat.beq 10 9 = false from rfl) (show Nat.beq 10 15 = false from rfl) (show Nat.beq 10 16 = false from rfl) (show Nat.beq 10 21 = false from rfl) (show Nat.beq 10 22 = false from rfl) (show Nat.beq 10 25 = false from rfl) (show Nat.beq 10 26 = false from rfl) (show Nat.beq 10 27 = false from rfl) (show Nat.beq 10 35 = false from rfl) (show Nat.beq 10 38 = false from rfl) (show Nat.beq 10 45 = false from rfl) (show Nat.beq 10 48 = false from rfl) (show Nat.beq 10 49 = false from rfl) (show Nat.beq 10 63 = false from rfl) (show Nat.beq 10 66 = false from rfl) (show Nat.beq 10 73 = false from rfl) (show Nat.beq 10 75 = false from rfl) (show Nat.beq 10 78 = false from rfl) (show Nat.beq 10 80 = false from rfl) (show Nat.beq 10 81 = false from rfl) (show Nat.beq 10 89 = false from rfl) (show Nat.beq 10 97 = false from rfl) (show Nat.beq 10 105 = false from rfl)
theorem not_is_fourth_109_12 : ¬ IsFourthMod109 12 :=
  not_is_fourth_109 (show Nat.beq 12 0 = false from rfl) (show Nat.beq 12 1 = false from rfl) (show Nat.beq 12 3 = false from rfl) (show Nat.beq 12 5 = false from rfl) (show Nat.beq 12 7 = false from rfl) (show Nat.beq 12 9 = false from rfl) (show Nat.beq 12 15 = false from rfl) (show Nat.beq 12 16 = false from rfl) (show Nat.beq 12 21 = false from rfl) (show Nat.beq 12 22 = false from rfl) (show Nat.beq 12 25 = false from rfl) (show Nat.beq 12 26 = false from rfl) (show Nat.beq 12 27 = false from rfl) (show Nat.beq 12 35 = false from rfl) (show Nat.beq 12 38 = false from rfl) (show Nat.beq 12 45 = false from rfl) (show Nat.beq 12 48 = false from rfl) (show Nat.beq 12 49 = false from rfl) (show Nat.beq 12 63 = false from rfl) (show Nat.beq 12 66 = false from rfl) (show Nat.beq 12 73 = false from rfl) (show Nat.beq 12 75 = false from rfl) (show Nat.beq 12 78 = false from rfl) (show Nat.beq 12 80 = false from rfl) (show Nat.beq 12 81 = false from rfl) (show Nat.beq 12 89 = false from rfl) (show Nat.beq 12 97 = false from rfl) (show Nat.beq 12 105 = false from rfl)
theorem not_is_fourth_109_13 : ¬ IsFourthMod109 13 :=
  not_is_fourth_109 (show Nat.beq 13 0 = false from rfl) (show Nat.beq 13 1 = false from rfl) (show Nat.beq 13 3 = false from rfl) (show Nat.beq 13 5 = false from rfl) (show Nat.beq 13 7 = false from rfl) (show Nat.beq 13 9 = false from rfl) (show Nat.beq 13 15 = false from rfl) (show Nat.beq 13 16 = false from rfl) (show Nat.beq 13 21 = false from rfl) (show Nat.beq 13 22 = false from rfl) (show Nat.beq 13 25 = false from rfl) (show Nat.beq 13 26 = false from rfl) (show Nat.beq 13 27 = false from rfl) (show Nat.beq 13 35 = false from rfl) (show Nat.beq 13 38 = false from rfl) (show Nat.beq 13 45 = false from rfl) (show Nat.beq 13 48 = false from rfl) (show Nat.beq 13 49 = false from rfl) (show Nat.beq 13 63 = false from rfl) (show Nat.beq 13 66 = false from rfl) (show Nat.beq 13 73 = false from rfl) (show Nat.beq 13 75 = false from rfl) (show Nat.beq 13 78 = false from rfl) (show Nat.beq 13 80 = false from rfl) (show Nat.beq 13 81 = false from rfl) (show Nat.beq 13 89 = false from rfl) (show Nat.beq 13 97 = false from rfl) (show Nat.beq 13 105 = false from rfl)
theorem not_is_fourth_109_14 : ¬ IsFourthMod109 14 :=
  not_is_fourth_109 (show Nat.beq 14 0 = false from rfl) (show Nat.beq 14 1 = false from rfl) (show Nat.beq 14 3 = false from rfl) (show Nat.beq 14 5 = false from rfl) (show Nat.beq 14 7 = false from rfl) (show Nat.beq 14 9 = false from rfl) (show Nat.beq 14 15 = false from rfl) (show Nat.beq 14 16 = false from rfl) (show Nat.beq 14 21 = false from rfl) (show Nat.beq 14 22 = false from rfl) (show Nat.beq 14 25 = false from rfl) (show Nat.beq 14 26 = false from rfl) (show Nat.beq 14 27 = false from rfl) (show Nat.beq 14 35 = false from rfl) (show Nat.beq 14 38 = false from rfl) (show Nat.beq 14 45 = false from rfl) (show Nat.beq 14 48 = false from rfl) (show Nat.beq 14 49 = false from rfl) (show Nat.beq 14 63 = false from rfl) (show Nat.beq 14 66 = false from rfl) (show Nat.beq 14 73 = false from rfl) (show Nat.beq 14 75 = false from rfl) (show Nat.beq 14 78 = false from rfl) (show Nat.beq 14 80 = false from rfl) (show Nat.beq 14 81 = false from rfl) (show Nat.beq 14 89 = false from rfl) (show Nat.beq 14 97 = false from rfl) (show Nat.beq 14 105 = false from rfl)
theorem not_is_fourth_109_17 : ¬ IsFourthMod109 17 :=
  not_is_fourth_109 (show Nat.beq 17 0 = false from rfl) (show Nat.beq 17 1 = false from rfl) (show Nat.beq 17 3 = false from rfl) (show Nat.beq 17 5 = false from rfl) (show Nat.beq 17 7 = false from rfl) (show Nat.beq 17 9 = false from rfl) (show Nat.beq 17 15 = false from rfl) (show Nat.beq 17 16 = false from rfl) (show Nat.beq 17 21 = false from rfl) (show Nat.beq 17 22 = false from rfl) (show Nat.beq 17 25 = false from rfl) (show Nat.beq 17 26 = false from rfl) (show Nat.beq 17 27 = false from rfl) (show Nat.beq 17 35 = false from rfl) (show Nat.beq 17 38 = false from rfl) (show Nat.beq 17 45 = false from rfl) (show Nat.beq 17 48 = false from rfl) (show Nat.beq 17 49 = false from rfl) (show Nat.beq 17 63 = false from rfl) (show Nat.beq 17 66 = false from rfl) (show Nat.beq 17 73 = false from rfl) (show Nat.beq 17 75 = false from rfl) (show Nat.beq 17 78 = false from rfl) (show Nat.beq 17 80 = false from rfl) (show Nat.beq 17 81 = false from rfl) (show Nat.beq 17 89 = false from rfl) (show Nat.beq 17 97 = false from rfl) (show Nat.beq 17 105 = false from rfl)
theorem not_is_fourth_109_23 : ¬ IsFourthMod109 23 :=
  not_is_fourth_109 (show Nat.beq 23 0 = false from rfl) (show Nat.beq 23 1 = false from rfl) (show Nat.beq 23 3 = false from rfl) (show Nat.beq 23 5 = false from rfl) (show Nat.beq 23 7 = false from rfl) (show Nat.beq 23 9 = false from rfl) (show Nat.beq 23 15 = false from rfl) (show Nat.beq 23 16 = false from rfl) (show Nat.beq 23 21 = false from rfl) (show Nat.beq 23 22 = false from rfl) (show Nat.beq 23 25 = false from rfl) (show Nat.beq 23 26 = false from rfl) (show Nat.beq 23 27 = false from rfl) (show Nat.beq 23 35 = false from rfl) (show Nat.beq 23 38 = false from rfl) (show Nat.beq 23 45 = false from rfl) (show Nat.beq 23 48 = false from rfl) (show Nat.beq 23 49 = false from rfl) (show Nat.beq 23 63 = false from rfl) (show Nat.beq 23 66 = false from rfl) (show Nat.beq 23 73 = false from rfl) (show Nat.beq 23 75 = false from rfl) (show Nat.beq 23 78 = false from rfl) (show Nat.beq 23 80 = false from rfl) (show Nat.beq 23 81 = false from rfl) (show Nat.beq 23 89 = false from rfl) (show Nat.beq 23 97 = false from rfl) (show Nat.beq 23 105 = false from rfl)
theorem not_is_fourth_109_24 : ¬ IsFourthMod109 24 :=
  not_is_fourth_109 (show Nat.beq 24 0 = false from rfl) (show Nat.beq 24 1 = false from rfl) (show Nat.beq 24 3 = false from rfl) (show Nat.beq 24 5 = false from rfl) (show Nat.beq 24 7 = false from rfl) (show Nat.beq 24 9 = false from rfl) (show Nat.beq 24 15 = false from rfl) (show Nat.beq 24 16 = false from rfl) (show Nat.beq 24 21 = false from rfl) (show Nat.beq 24 22 = false from rfl) (show Nat.beq 24 25 = false from rfl) (show Nat.beq 24 26 = false from rfl) (show Nat.beq 24 27 = false from rfl) (show Nat.beq 24 35 = false from rfl) (show Nat.beq 24 38 = false from rfl) (show Nat.beq 24 45 = false from rfl) (show Nat.beq 24 48 = false from rfl) (show Nat.beq 24 49 = false from rfl) (show Nat.beq 24 63 = false from rfl) (show Nat.beq 24 66 = false from rfl) (show Nat.beq 24 73 = false from rfl) (show Nat.beq 24 75 = false from rfl) (show Nat.beq 24 78 = false from rfl) (show Nat.beq 24 80 = false from rfl) (show Nat.beq 24 81 = false from rfl) (show Nat.beq 24 89 = false from rfl) (show Nat.beq 24 97 = false from rfl) (show Nat.beq 24 105 = false from rfl)
theorem not_is_fourth_109_30 : ¬ IsFourthMod109 30 :=
  not_is_fourth_109 (show Nat.beq 30 0 = false from rfl) (show Nat.beq 30 1 = false from rfl) (show Nat.beq 30 3 = false from rfl) (show Nat.beq 30 5 = false from rfl) (show Nat.beq 30 7 = false from rfl) (show Nat.beq 30 9 = false from rfl) (show Nat.beq 30 15 = false from rfl) (show Nat.beq 30 16 = false from rfl) (show Nat.beq 30 21 = false from rfl) (show Nat.beq 30 22 = false from rfl) (show Nat.beq 30 25 = false from rfl) (show Nat.beq 30 26 = false from rfl) (show Nat.beq 30 27 = false from rfl) (show Nat.beq 30 35 = false from rfl) (show Nat.beq 30 38 = false from rfl) (show Nat.beq 30 45 = false from rfl) (show Nat.beq 30 48 = false from rfl) (show Nat.beq 30 49 = false from rfl) (show Nat.beq 30 63 = false from rfl) (show Nat.beq 30 66 = false from rfl) (show Nat.beq 30 73 = false from rfl) (show Nat.beq 30 75 = false from rfl) (show Nat.beq 30 78 = false from rfl) (show Nat.beq 30 80 = false from rfl) (show Nat.beq 30 81 = false from rfl) (show Nat.beq 30 89 = false from rfl) (show Nat.beq 30 97 = false from rfl) (show Nat.beq 30 105 = false from rfl)
theorem not_is_fourth_109_32 : ¬ IsFourthMod109 32 :=
  not_is_fourth_109 (show Nat.beq 32 0 = false from rfl) (show Nat.beq 32 1 = false from rfl) (show Nat.beq 32 3 = false from rfl) (show Nat.beq 32 5 = false from rfl) (show Nat.beq 32 7 = false from rfl) (show Nat.beq 32 9 = false from rfl) (show Nat.beq 32 15 = false from rfl) (show Nat.beq 32 16 = false from rfl) (show Nat.beq 32 21 = false from rfl) (show Nat.beq 32 22 = false from rfl) (show Nat.beq 32 25 = false from rfl) (show Nat.beq 32 26 = false from rfl) (show Nat.beq 32 27 = false from rfl) (show Nat.beq 32 35 = false from rfl) (show Nat.beq 32 38 = false from rfl) (show Nat.beq 32 45 = false from rfl) (show Nat.beq 32 48 = false from rfl) (show Nat.beq 32 49 = false from rfl) (show Nat.beq 32 63 = false from rfl) (show Nat.beq 32 66 = false from rfl) (show Nat.beq 32 73 = false from rfl) (show Nat.beq 32 75 = false from rfl) (show Nat.beq 32 78 = false from rfl) (show Nat.beq 32 80 = false from rfl) (show Nat.beq 32 81 = false from rfl) (show Nat.beq 32 89 = false from rfl) (show Nat.beq 32 97 = false from rfl) (show Nat.beq 32 105 = false from rfl)
theorem not_is_fourth_109_37 : ¬ IsFourthMod109 37 :=
  not_is_fourth_109 (show Nat.beq 37 0 = false from rfl) (show Nat.beq 37 1 = false from rfl) (show Nat.beq 37 3 = false from rfl) (show Nat.beq 37 5 = false from rfl) (show Nat.beq 37 7 = false from rfl) (show Nat.beq 37 9 = false from rfl) (show Nat.beq 37 15 = false from rfl) (show Nat.beq 37 16 = false from rfl) (show Nat.beq 37 21 = false from rfl) (show Nat.beq 37 22 = false from rfl) (show Nat.beq 37 25 = false from rfl) (show Nat.beq 37 26 = false from rfl) (show Nat.beq 37 27 = false from rfl) (show Nat.beq 37 35 = false from rfl) (show Nat.beq 37 38 = false from rfl) (show Nat.beq 37 45 = false from rfl) (show Nat.beq 37 48 = false from rfl) (show Nat.beq 37 49 = false from rfl) (show Nat.beq 37 63 = false from rfl) (show Nat.beq 37 66 = false from rfl) (show Nat.beq 37 73 = false from rfl) (show Nat.beq 37 75 = false from rfl) (show Nat.beq 37 78 = false from rfl) (show Nat.beq 37 80 = false from rfl) (show Nat.beq 37 81 = false from rfl) (show Nat.beq 37 89 = false from rfl) (show Nat.beq 37 97 = false from rfl) (show Nat.beq 37 105 = false from rfl)
theorem not_is_fourth_109_40 : ¬ IsFourthMod109 40 :=
  not_is_fourth_109 (show Nat.beq 40 0 = false from rfl) (show Nat.beq 40 1 = false from rfl) (show Nat.beq 40 3 = false from rfl) (show Nat.beq 40 5 = false from rfl) (show Nat.beq 40 7 = false from rfl) (show Nat.beq 40 9 = false from rfl) (show Nat.beq 40 15 = false from rfl) (show Nat.beq 40 16 = false from rfl) (show Nat.beq 40 21 = false from rfl) (show Nat.beq 40 22 = false from rfl) (show Nat.beq 40 25 = false from rfl) (show Nat.beq 40 26 = false from rfl) (show Nat.beq 40 27 = false from rfl) (show Nat.beq 40 35 = false from rfl) (show Nat.beq 40 38 = false from rfl) (show Nat.beq 40 45 = false from rfl) (show Nat.beq 40 48 = false from rfl) (show Nat.beq 40 49 = false from rfl) (show Nat.beq 40 63 = false from rfl) (show Nat.beq 40 66 = false from rfl) (show Nat.beq 40 73 = false from rfl) (show Nat.beq 40 75 = false from rfl) (show Nat.beq 40 78 = false from rfl) (show Nat.beq 40 80 = false from rfl) (show Nat.beq 40 81 = false from rfl) (show Nat.beq 40 89 = false from rfl) (show Nat.beq 40 97 = false from rfl) (show Nat.beq 40 105 = false from rfl)
theorem not_is_fourth_109_43 : ¬ IsFourthMod109 43 :=
  not_is_fourth_109 (show Nat.beq 43 0 = false from rfl) (show Nat.beq 43 1 = false from rfl) (show Nat.beq 43 3 = false from rfl) (show Nat.beq 43 5 = false from rfl) (show Nat.beq 43 7 = false from rfl) (show Nat.beq 43 9 = false from rfl) (show Nat.beq 43 15 = false from rfl) (show Nat.beq 43 16 = false from rfl) (show Nat.beq 43 21 = false from rfl) (show Nat.beq 43 22 = false from rfl) (show Nat.beq 43 25 = false from rfl) (show Nat.beq 43 26 = false from rfl) (show Nat.beq 43 27 = false from rfl) (show Nat.beq 43 35 = false from rfl) (show Nat.beq 43 38 = false from rfl) (show Nat.beq 43 45 = false from rfl) (show Nat.beq 43 48 = false from rfl) (show Nat.beq 43 49 = false from rfl) (show Nat.beq 43 63 = false from rfl) (show Nat.beq 43 66 = false from rfl) (show Nat.beq 43 73 = false from rfl) (show Nat.beq 43 75 = false from rfl) (show Nat.beq 43 78 = false from rfl) (show Nat.beq 43 80 = false from rfl) (show Nat.beq 43 81 = false from rfl) (show Nat.beq 43 89 = false from rfl) (show Nat.beq 43 97 = false from rfl) (show Nat.beq 43 105 = false from rfl)
theorem not_is_fourth_109_46 : ¬ IsFourthMod109 46 :=
  not_is_fourth_109 (show Nat.beq 46 0 = false from rfl) (show Nat.beq 46 1 = false from rfl) (show Nat.beq 46 3 = false from rfl) (show Nat.beq 46 5 = false from rfl) (show Nat.beq 46 7 = false from rfl) (show Nat.beq 46 9 = false from rfl) (show Nat.beq 46 15 = false from rfl) (show Nat.beq 46 16 = false from rfl) (show Nat.beq 46 21 = false from rfl) (show Nat.beq 46 22 = false from rfl) (show Nat.beq 46 25 = false from rfl) (show Nat.beq 46 26 = false from rfl) (show Nat.beq 46 27 = false from rfl) (show Nat.beq 46 35 = false from rfl) (show Nat.beq 46 38 = false from rfl) (show Nat.beq 46 45 = false from rfl) (show Nat.beq 46 48 = false from rfl) (show Nat.beq 46 49 = false from rfl) (show Nat.beq 46 63 = false from rfl) (show Nat.beq 46 66 = false from rfl) (show Nat.beq 46 73 = false from rfl) (show Nat.beq 46 75 = false from rfl) (show Nat.beq 46 78 = false from rfl) (show Nat.beq 46 80 = false from rfl) (show Nat.beq 46 81 = false from rfl) (show Nat.beq 46 89 = false from rfl) (show Nat.beq 46 97 = false from rfl) (show Nat.beq 46 105 = false from rfl)
theorem not_is_fourth_109_52 : ¬ IsFourthMod109 52 :=
  not_is_fourth_109 (show Nat.beq 52 0 = false from rfl) (show Nat.beq 52 1 = false from rfl) (show Nat.beq 52 3 = false from rfl) (show Nat.beq 52 5 = false from rfl) (show Nat.beq 52 7 = false from rfl) (show Nat.beq 52 9 = false from rfl) (show Nat.beq 52 15 = false from rfl) (show Nat.beq 52 16 = false from rfl) (show Nat.beq 52 21 = false from rfl) (show Nat.beq 52 22 = false from rfl) (show Nat.beq 52 25 = false from rfl) (show Nat.beq 52 26 = false from rfl) (show Nat.beq 52 27 = false from rfl) (show Nat.beq 52 35 = false from rfl) (show Nat.beq 52 38 = false from rfl) (show Nat.beq 52 45 = false from rfl) (show Nat.beq 52 48 = false from rfl) (show Nat.beq 52 49 = false from rfl) (show Nat.beq 52 63 = false from rfl) (show Nat.beq 52 66 = false from rfl) (show Nat.beq 52 73 = false from rfl) (show Nat.beq 52 75 = false from rfl) (show Nat.beq 52 78 = false from rfl) (show Nat.beq 52 80 = false from rfl) (show Nat.beq 52 81 = false from rfl) (show Nat.beq 52 89 = false from rfl) (show Nat.beq 52 97 = false from rfl) (show Nat.beq 52 105 = false from rfl)
theorem not_is_fourth_109_53 : ¬ IsFourthMod109 53 :=
  not_is_fourth_109 (show Nat.beq 53 0 = false from rfl) (show Nat.beq 53 1 = false from rfl) (show Nat.beq 53 3 = false from rfl) (show Nat.beq 53 5 = false from rfl) (show Nat.beq 53 7 = false from rfl) (show Nat.beq 53 9 = false from rfl) (show Nat.beq 53 15 = false from rfl) (show Nat.beq 53 16 = false from rfl) (show Nat.beq 53 21 = false from rfl) (show Nat.beq 53 22 = false from rfl) (show Nat.beq 53 25 = false from rfl) (show Nat.beq 53 26 = false from rfl) (show Nat.beq 53 27 = false from rfl) (show Nat.beq 53 35 = false from rfl) (show Nat.beq 53 38 = false from rfl) (show Nat.beq 53 45 = false from rfl) (show Nat.beq 53 48 = false from rfl) (show Nat.beq 53 49 = false from rfl) (show Nat.beq 53 63 = false from rfl) (show Nat.beq 53 66 = false from rfl) (show Nat.beq 53 73 = false from rfl) (show Nat.beq 53 75 = false from rfl) (show Nat.beq 53 78 = false from rfl) (show Nat.beq 53 80 = false from rfl) (show Nat.beq 53 81 = false from rfl) (show Nat.beq 53 89 = false from rfl) (show Nat.beq 53 97 = false from rfl) (show Nat.beq 53 105 = false from rfl)
theorem not_is_fourth_109_57 : ¬ IsFourthMod109 57 :=
  not_is_fourth_109 (show Nat.beq 57 0 = false from rfl) (show Nat.beq 57 1 = false from rfl) (show Nat.beq 57 3 = false from rfl) (show Nat.beq 57 5 = false from rfl) (show Nat.beq 57 7 = false from rfl) (show Nat.beq 57 9 = false from rfl) (show Nat.beq 57 15 = false from rfl) (show Nat.beq 57 16 = false from rfl) (show Nat.beq 57 21 = false from rfl) (show Nat.beq 57 22 = false from rfl) (show Nat.beq 57 25 = false from rfl) (show Nat.beq 57 26 = false from rfl) (show Nat.beq 57 27 = false from rfl) (show Nat.beq 57 35 = false from rfl) (show Nat.beq 57 38 = false from rfl) (show Nat.beq 57 45 = false from rfl) (show Nat.beq 57 48 = false from rfl) (show Nat.beq 57 49 = false from rfl) (show Nat.beq 57 63 = false from rfl) (show Nat.beq 57 66 = false from rfl) (show Nat.beq 57 73 = false from rfl) (show Nat.beq 57 75 = false from rfl) (show Nat.beq 57 78 = false from rfl) (show Nat.beq 57 80 = false from rfl) (show Nat.beq 57 81 = false from rfl) (show Nat.beq 57 89 = false from rfl) (show Nat.beq 57 97 = false from rfl) (show Nat.beq 57 105 = false from rfl)
theorem not_is_fourth_109_58 : ¬ IsFourthMod109 58 :=
  not_is_fourth_109 (show Nat.beq 58 0 = false from rfl) (show Nat.beq 58 1 = false from rfl) (show Nat.beq 58 3 = false from rfl) (show Nat.beq 58 5 = false from rfl) (show Nat.beq 58 7 = false from rfl) (show Nat.beq 58 9 = false from rfl) (show Nat.beq 58 15 = false from rfl) (show Nat.beq 58 16 = false from rfl) (show Nat.beq 58 21 = false from rfl) (show Nat.beq 58 22 = false from rfl) (show Nat.beq 58 25 = false from rfl) (show Nat.beq 58 26 = false from rfl) (show Nat.beq 58 27 = false from rfl) (show Nat.beq 58 35 = false from rfl) (show Nat.beq 58 38 = false from rfl) (show Nat.beq 58 45 = false from rfl) (show Nat.beq 58 48 = false from rfl) (show Nat.beq 58 49 = false from rfl) (show Nat.beq 58 63 = false from rfl) (show Nat.beq 58 66 = false from rfl) (show Nat.beq 58 73 = false from rfl) (show Nat.beq 58 75 = false from rfl) (show Nat.beq 58 78 = false from rfl) (show Nat.beq 58 80 = false from rfl) (show Nat.beq 58 81 = false from rfl) (show Nat.beq 58 89 = false from rfl) (show Nat.beq 58 97 = false from rfl) (show Nat.beq 58 105 = false from rfl)
theorem not_is_fourth_109_64 : ¬ IsFourthMod109 64 :=
  not_is_fourth_109 (show Nat.beq 64 0 = false from rfl) (show Nat.beq 64 1 = false from rfl) (show Nat.beq 64 3 = false from rfl) (show Nat.beq 64 5 = false from rfl) (show Nat.beq 64 7 = false from rfl) (show Nat.beq 64 9 = false from rfl) (show Nat.beq 64 15 = false from rfl) (show Nat.beq 64 16 = false from rfl) (show Nat.beq 64 21 = false from rfl) (show Nat.beq 64 22 = false from rfl) (show Nat.beq 64 25 = false from rfl) (show Nat.beq 64 26 = false from rfl) (show Nat.beq 64 27 = false from rfl) (show Nat.beq 64 35 = false from rfl) (show Nat.beq 64 38 = false from rfl) (show Nat.beq 64 45 = false from rfl) (show Nat.beq 64 48 = false from rfl) (show Nat.beq 64 49 = false from rfl) (show Nat.beq 64 63 = false from rfl) (show Nat.beq 64 66 = false from rfl) (show Nat.beq 64 73 = false from rfl) (show Nat.beq 64 75 = false from rfl) (show Nat.beq 64 78 = false from rfl) (show Nat.beq 64 80 = false from rfl) (show Nat.beq 64 81 = false from rfl) (show Nat.beq 64 89 = false from rfl) (show Nat.beq 64 97 = false from rfl) (show Nat.beq 64 105 = false from rfl)
theorem not_is_fourth_109_70 : ¬ IsFourthMod109 70 :=
  not_is_fourth_109 (show Nat.beq 70 0 = false from rfl) (show Nat.beq 70 1 = false from rfl) (show Nat.beq 70 3 = false from rfl) (show Nat.beq 70 5 = false from rfl) (show Nat.beq 70 7 = false from rfl) (show Nat.beq 70 9 = false from rfl) (show Nat.beq 70 15 = false from rfl) (show Nat.beq 70 16 = false from rfl) (show Nat.beq 70 21 = false from rfl) (show Nat.beq 70 22 = false from rfl) (show Nat.beq 70 25 = false from rfl) (show Nat.beq 70 26 = false from rfl) (show Nat.beq 70 27 = false from rfl) (show Nat.beq 70 35 = false from rfl) (show Nat.beq 70 38 = false from rfl) (show Nat.beq 70 45 = false from rfl) (show Nat.beq 70 48 = false from rfl) (show Nat.beq 70 49 = false from rfl) (show Nat.beq 70 63 = false from rfl) (show Nat.beq 70 66 = false from rfl) (show Nat.beq 70 73 = false from rfl) (show Nat.beq 70 75 = false from rfl) (show Nat.beq 70 78 = false from rfl) (show Nat.beq 70 80 = false from rfl) (show Nat.beq 70 81 = false from rfl) (show Nat.beq 70 89 = false from rfl) (show Nat.beq 70 97 = false from rfl) (show Nat.beq 70 105 = false from rfl)
theorem not_is_fourth_109_74 : ¬ IsFourthMod109 74 :=
  not_is_fourth_109 (show Nat.beq 74 0 = false from rfl) (show Nat.beq 74 1 = false from rfl) (show Nat.beq 74 3 = false from rfl) (show Nat.beq 74 5 = false from rfl) (show Nat.beq 74 7 = false from rfl) (show Nat.beq 74 9 = false from rfl) (show Nat.beq 74 15 = false from rfl) (show Nat.beq 74 16 = false from rfl) (show Nat.beq 74 21 = false from rfl) (show Nat.beq 74 22 = false from rfl) (show Nat.beq 74 25 = false from rfl) (show Nat.beq 74 26 = false from rfl) (show Nat.beq 74 27 = false from rfl) (show Nat.beq 74 35 = false from rfl) (show Nat.beq 74 38 = false from rfl) (show Nat.beq 74 45 = false from rfl) (show Nat.beq 74 48 = false from rfl) (show Nat.beq 74 49 = false from rfl) (show Nat.beq 74 63 = false from rfl) (show Nat.beq 74 66 = false from rfl) (show Nat.beq 74 73 = false from rfl) (show Nat.beq 74 75 = false from rfl) (show Nat.beq 74 78 = false from rfl) (show Nat.beq 74 80 = false from rfl) (show Nat.beq 74 81 = false from rfl) (show Nat.beq 74 89 = false from rfl) (show Nat.beq 74 97 = false from rfl) (show Nat.beq 74 105 = false from rfl)
theorem not_is_fourth_109_79 : ¬ IsFourthMod109 79 :=
  not_is_fourth_109 (show Nat.beq 79 0 = false from rfl) (show Nat.beq 79 1 = false from rfl) (show Nat.beq 79 3 = false from rfl) (show Nat.beq 79 5 = false from rfl) (show Nat.beq 79 7 = false from rfl) (show Nat.beq 79 9 = false from rfl) (show Nat.beq 79 15 = false from rfl) (show Nat.beq 79 16 = false from rfl) (show Nat.beq 79 21 = false from rfl) (show Nat.beq 79 22 = false from rfl) (show Nat.beq 79 25 = false from rfl) (show Nat.beq 79 26 = false from rfl) (show Nat.beq 79 27 = false from rfl) (show Nat.beq 79 35 = false from rfl) (show Nat.beq 79 38 = false from rfl) (show Nat.beq 79 45 = false from rfl) (show Nat.beq 79 48 = false from rfl) (show Nat.beq 79 49 = false from rfl) (show Nat.beq 79 63 = false from rfl) (show Nat.beq 79 66 = false from rfl) (show Nat.beq 79 73 = false from rfl) (show Nat.beq 79 75 = false from rfl) (show Nat.beq 79 78 = false from rfl) (show Nat.beq 79 80 = false from rfl) (show Nat.beq 79 81 = false from rfl) (show Nat.beq 79 89 = false from rfl) (show Nat.beq 79 97 = false from rfl) (show Nat.beq 79 105 = false from rfl)
theorem not_is_fourth_109_82 : ¬ IsFourthMod109 82 :=
  not_is_fourth_109 (show Nat.beq 82 0 = false from rfl) (show Nat.beq 82 1 = false from rfl) (show Nat.beq 82 3 = false from rfl) (show Nat.beq 82 5 = false from rfl) (show Nat.beq 82 7 = false from rfl) (show Nat.beq 82 9 = false from rfl) (show Nat.beq 82 15 = false from rfl) (show Nat.beq 82 16 = false from rfl) (show Nat.beq 82 21 = false from rfl) (show Nat.beq 82 22 = false from rfl) (show Nat.beq 82 25 = false from rfl) (show Nat.beq 82 26 = false from rfl) (show Nat.beq 82 27 = false from rfl) (show Nat.beq 82 35 = false from rfl) (show Nat.beq 82 38 = false from rfl) (show Nat.beq 82 45 = false from rfl) (show Nat.beq 82 48 = false from rfl) (show Nat.beq 82 49 = false from rfl) (show Nat.beq 82 63 = false from rfl) (show Nat.beq 82 66 = false from rfl) (show Nat.beq 82 73 = false from rfl) (show Nat.beq 82 75 = false from rfl) (show Nat.beq 82 78 = false from rfl) (show Nat.beq 82 80 = false from rfl) (show Nat.beq 82 81 = false from rfl) (show Nat.beq 82 89 = false from rfl) (show Nat.beq 82 97 = false from rfl) (show Nat.beq 82 105 = false from rfl)
theorem not_is_fourth_109_85 : ¬ IsFourthMod109 85 :=
  not_is_fourth_109 (show Nat.beq 85 0 = false from rfl) (show Nat.beq 85 1 = false from rfl) (show Nat.beq 85 3 = false from rfl) (show Nat.beq 85 5 = false from rfl) (show Nat.beq 85 7 = false from rfl) (show Nat.beq 85 9 = false from rfl) (show Nat.beq 85 15 = false from rfl) (show Nat.beq 85 16 = false from rfl) (show Nat.beq 85 21 = false from rfl) (show Nat.beq 85 22 = false from rfl) (show Nat.beq 85 25 = false from rfl) (show Nat.beq 85 26 = false from rfl) (show Nat.beq 85 27 = false from rfl) (show Nat.beq 85 35 = false from rfl) (show Nat.beq 85 38 = false from rfl) (show Nat.beq 85 45 = false from rfl) (show Nat.beq 85 48 = false from rfl) (show Nat.beq 85 49 = false from rfl) (show Nat.beq 85 63 = false from rfl) (show Nat.beq 85 66 = false from rfl) (show Nat.beq 85 73 = false from rfl) (show Nat.beq 85 75 = false from rfl) (show Nat.beq 85 78 = false from rfl) (show Nat.beq 85 80 = false from rfl) (show Nat.beq 85 81 = false from rfl) (show Nat.beq 85 89 = false from rfl) (show Nat.beq 85 97 = false from rfl) (show Nat.beq 85 105 = false from rfl)
theorem not_is_fourth_109_90 : ¬ IsFourthMod109 90 :=
  not_is_fourth_109 (show Nat.beq 90 0 = false from rfl) (show Nat.beq 90 1 = false from rfl) (show Nat.beq 90 3 = false from rfl) (show Nat.beq 90 5 = false from rfl) (show Nat.beq 90 7 = false from rfl) (show Nat.beq 90 9 = false from rfl) (show Nat.beq 90 15 = false from rfl) (show Nat.beq 90 16 = false from rfl) (show Nat.beq 90 21 = false from rfl) (show Nat.beq 90 22 = false from rfl) (show Nat.beq 90 25 = false from rfl) (show Nat.beq 90 26 = false from rfl) (show Nat.beq 90 27 = false from rfl) (show Nat.beq 90 35 = false from rfl) (show Nat.beq 90 38 = false from rfl) (show Nat.beq 90 45 = false from rfl) (show Nat.beq 90 48 = false from rfl) (show Nat.beq 90 49 = false from rfl) (show Nat.beq 90 63 = false from rfl) (show Nat.beq 90 66 = false from rfl) (show Nat.beq 90 73 = false from rfl) (show Nat.beq 90 75 = false from rfl) (show Nat.beq 90 78 = false from rfl) (show Nat.beq 90 80 = false from rfl) (show Nat.beq 90 81 = false from rfl) (show Nat.beq 90 89 = false from rfl) (show Nat.beq 90 97 = false from rfl) (show Nat.beq 90 105 = false from rfl)
theorem not_is_fourth_109_91 : ¬ IsFourthMod109 91 :=
  not_is_fourth_109 (show Nat.beq 91 0 = false from rfl) (show Nat.beq 91 1 = false from rfl) (show Nat.beq 91 3 = false from rfl) (show Nat.beq 91 5 = false from rfl) (show Nat.beq 91 7 = false from rfl) (show Nat.beq 91 9 = false from rfl) (show Nat.beq 91 15 = false from rfl) (show Nat.beq 91 16 = false from rfl) (show Nat.beq 91 21 = false from rfl) (show Nat.beq 91 22 = false from rfl) (show Nat.beq 91 25 = false from rfl) (show Nat.beq 91 26 = false from rfl) (show Nat.beq 91 27 = false from rfl) (show Nat.beq 91 35 = false from rfl) (show Nat.beq 91 38 = false from rfl) (show Nat.beq 91 45 = false from rfl) (show Nat.beq 91 48 = false from rfl) (show Nat.beq 91 49 = false from rfl) (show Nat.beq 91 63 = false from rfl) (show Nat.beq 91 66 = false from rfl) (show Nat.beq 91 73 = false from rfl) (show Nat.beq 91 75 = false from rfl) (show Nat.beq 91 78 = false from rfl) (show Nat.beq 91 80 = false from rfl) (show Nat.beq 91 81 = false from rfl) (show Nat.beq 91 89 = false from rfl) (show Nat.beq 91 97 = false from rfl) (show Nat.beq 91 105 = false from rfl)
theorem not_is_fourth_109_94 : ¬ IsFourthMod109 94 :=
  not_is_fourth_109 (show Nat.beq 94 0 = false from rfl) (show Nat.beq 94 1 = false from rfl) (show Nat.beq 94 3 = false from rfl) (show Nat.beq 94 5 = false from rfl) (show Nat.beq 94 7 = false from rfl) (show Nat.beq 94 9 = false from rfl) (show Nat.beq 94 15 = false from rfl) (show Nat.beq 94 16 = false from rfl) (show Nat.beq 94 21 = false from rfl) (show Nat.beq 94 22 = false from rfl) (show Nat.beq 94 25 = false from rfl) (show Nat.beq 94 26 = false from rfl) (show Nat.beq 94 27 = false from rfl) (show Nat.beq 94 35 = false from rfl) (show Nat.beq 94 38 = false from rfl) (show Nat.beq 94 45 = false from rfl) (show Nat.beq 94 48 = false from rfl) (show Nat.beq 94 49 = false from rfl) (show Nat.beq 94 63 = false from rfl) (show Nat.beq 94 66 = false from rfl) (show Nat.beq 94 73 = false from rfl) (show Nat.beq 94 75 = false from rfl) (show Nat.beq 94 78 = false from rfl) (show Nat.beq 94 80 = false from rfl) (show Nat.beq 94 81 = false from rfl) (show Nat.beq 94 89 = false from rfl) (show Nat.beq 94 97 = false from rfl) (show Nat.beq 94 105 = false from rfl)
theorem not_is_fourth_109_96 : ¬ IsFourthMod109 96 :=
  not_is_fourth_109 (show Nat.beq 96 0 = false from rfl) (show Nat.beq 96 1 = false from rfl) (show Nat.beq 96 3 = false from rfl) (show Nat.beq 96 5 = false from rfl) (show Nat.beq 96 7 = false from rfl) (show Nat.beq 96 9 = false from rfl) (show Nat.beq 96 15 = false from rfl) (show Nat.beq 96 16 = false from rfl) (show Nat.beq 96 21 = false from rfl) (show Nat.beq 96 22 = false from rfl) (show Nat.beq 96 25 = false from rfl) (show Nat.beq 96 26 = false from rfl) (show Nat.beq 96 27 = false from rfl) (show Nat.beq 96 35 = false from rfl) (show Nat.beq 96 38 = false from rfl) (show Nat.beq 96 45 = false from rfl) (show Nat.beq 96 48 = false from rfl) (show Nat.beq 96 49 = false from rfl) (show Nat.beq 96 63 = false from rfl) (show Nat.beq 96 66 = false from rfl) (show Nat.beq 96 73 = false from rfl) (show Nat.beq 96 75 = false from rfl) (show Nat.beq 96 78 = false from rfl) (show Nat.beq 96 80 = false from rfl) (show Nat.beq 96 81 = false from rfl) (show Nat.beq 96 89 = false from rfl) (show Nat.beq 96 97 = false from rfl) (show Nat.beq 96 105 = false from rfl)
theorem not_is_fourth_109_102 : ¬ IsFourthMod109 102 :=
  not_is_fourth_109 (show Nat.beq 102 0 = false from rfl) (show Nat.beq 102 1 = false from rfl) (show Nat.beq 102 3 = false from rfl) (show Nat.beq 102 5 = false from rfl) (show Nat.beq 102 7 = false from rfl) (show Nat.beq 102 9 = false from rfl) (show Nat.beq 102 15 = false from rfl) (show Nat.beq 102 16 = false from rfl) (show Nat.beq 102 21 = false from rfl) (show Nat.beq 102 22 = false from rfl) (show Nat.beq 102 25 = false from rfl) (show Nat.beq 102 26 = false from rfl) (show Nat.beq 102 27 = false from rfl) (show Nat.beq 102 35 = false from rfl) (show Nat.beq 102 38 = false from rfl) (show Nat.beq 102 45 = false from rfl) (show Nat.beq 102 48 = false from rfl) (show Nat.beq 102 49 = false from rfl) (show Nat.beq 102 63 = false from rfl) (show Nat.beq 102 66 = false from rfl) (show Nat.beq 102 73 = false from rfl) (show Nat.beq 102 75 = false from rfl) (show Nat.beq 102 78 = false from rfl) (show Nat.beq 102 80 = false from rfl) (show Nat.beq 102 81 = false from rfl) (show Nat.beq 102 89 = false from rfl) (show Nat.beq 102 97 = false from rfl) (show Nat.beq 102 105 = false from rfl)
theorem not_is_fourth_109_108 : ¬ IsFourthMod109 108 :=
  not_is_fourth_109 (show Nat.beq 108 0 = false from rfl) (show Nat.beq 108 1 = false from rfl) (show Nat.beq 108 3 = false from rfl) (show Nat.beq 108 5 = false from rfl) (show Nat.beq 108 7 = false from rfl) (show Nat.beq 108 9 = false from rfl) (show Nat.beq 108 15 = false from rfl) (show Nat.beq 108 16 = false from rfl) (show Nat.beq 108 21 = false from rfl) (show Nat.beq 108 22 = false from rfl) (show Nat.beq 108 25 = false from rfl) (show Nat.beq 108 26 = false from rfl) (show Nat.beq 108 27 = false from rfl) (show Nat.beq 108 35 = false from rfl) (show Nat.beq 108 38 = false from rfl) (show Nat.beq 108 45 = false from rfl) (show Nat.beq 108 48 = false from rfl) (show Nat.beq 108 49 = false from rfl) (show Nat.beq 108 63 = false from rfl) (show Nat.beq 108 66 = false from rfl) (show Nat.beq 108 73 = false from rfl) (show Nat.beq 108 75 = false from rfl) (show Nat.beq 108 78 = false from rfl) (show Nat.beq 108 80 = false from rfl) (show Nat.beq 108 81 = false from rfl) (show Nat.beq 108 89 = false from rfl) (show Nat.beq 108 97 = false from rfl) (show Nat.beq 108 105 = false from rfl)

theorem fourth_pow_is_fourth_of_lt_109 :
    ∀ r : Nat, r < 109 → IsFourthMod109 (Nat.pow r 4 % 109)
  | 0, _ => Or.inl rfl
  | 1, _ => Or.inr (Or.inl rfl)
  | 2, _ => Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inl rfl)))))))
  | 3, _ => Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inl rfl))))))))))))))))))))))))
  | 4, _ => Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inl rfl))))))))))))))
  | 5, _ => Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inl rfl)))))))))))))))))))))))
  | 6, _ => Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inl rfl))))))))))))))))))))))))))
  | 7, _ => Or.inr (Or.inr (Or.inl rfl))
  | 8, _ => Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inl rfl))))))))))))))))))
  | 9, _ => Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inl rfl))))))))
  | 10, _ => Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inl rfl))))))))))))))))))))))))
  | 11, _ => Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inl rfl)))))))))))))
  | 12, _ => Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inl rfl)))))))))))
  | 13, _ => Or.inr (Or.inr (Or.inl rfl))
  | 14, _ => Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inl rfl))))))))))))))))
  | 15, _ => Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inl rfl)))))))))))))))))
  | 16, _ => Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inl rfl))))))))))))
  | 17, _ => Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inl rfl))))))))))))
  | 18, _ => Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inl rfl)))))
  | 19, _ => Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inl rfl)))))))))))))))))))
  | 20, _ => Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inl rfl))))))))))))))))))))))))))
  | 21, _ => Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inl rfl))))))))))
  | 22, _ => Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inl rfl))))))
  | 23, _ => Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inl rfl))))))))))))))
  | 24, _ => Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inl rfl)))))))))))))))))))))))))
  | 25, _ => Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inl rfl))))))))))))))))))))))
  | 26, _ => Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inl rfl))))))))))))))))
  | 27, _ => Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inl rfl)))))))))))))))))))
  | 28, _ => Or.inr (Or.inr (Or.inr (Or.inl rfl)))
  | 29, _ => Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inl rfl)))))))))))))))))))))))))
  | 30, _ => Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inl rfl))))))))
  | 31, _ => Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inl rfl))))))))))))))))))))
  | 32, _ => Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (rfl)))))))))))))))))))))))))))
  | 33, _ => Or.inr (Or.inl rfl)
  | 34, _ => Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (rfl)))))))))))))))))))))))))))
  | 35, _ => Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inl rfl)))))))))
  | 36, _ => Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inl rfl)))))))))))))
  | 37, _ => Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inl rfl))))))
  | 38, _ => Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inl rfl)))))))))))))))))))))
  | 39, _ => Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inl rfl))))))))))
  | 40, _ => Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inl rfl)))))))))))
  | 41, _ => Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inl rfl)))))))))))))))
  | 42, _ => Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inl rfl))))))))))))))))))))
  | 43, _ => Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inl rfl)))))))
  | 44, _ => Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inl rfl)))))))))
  | 45, _ => Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inl rfl)))))))))))))))
  | 46, _ => Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inl rfl))))))))))))))))))
  | 47, _ => Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inl rfl))))))))))))))))))))))
  | 48, _ => Or.inr (Or.inr (Or.inr (Or.inr (Or.inl rfl))))
  | 49, _ => Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inl rfl)))))
  | 50, _ => Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inl rfl)))))))))))))))))
  | 51, _ => Or.inr (Or.inr (Or.inr (Or.inr (Or.inl rfl))))
  | 52, _ => Or.inr (Or.inr (Or.inr (Or.inl rfl)))
  | 53, _ => Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inl rfl)))))))))))))))))))))))
  | 54, _ => Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inl rfl)))))))))))))))))))))
  | 55, _ => Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inl rfl)))))))))))))))))))))
  | 56, _ => Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inl rfl)))))))))))))))))))))))
  | 57, _ => Or.inr (Or.inr (Or.inr (Or.inl rfl)))
  | 58, _ => Or.inr (Or.inr (Or.inr (Or.inr (Or.inl rfl))))
  | 59, _ => Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inl rfl)))))))))))))))))
  | 60, _ => Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inl rfl)))))
  | 61, _ => Or.inr (Or.inr (Or.inr (Or.inr (Or.inl rfl))))
  | 62, _ => Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inl rfl))))))))))))))))))))))
  | 63, _ => Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inl rfl))))))))))))))))))
  | 64, _ => Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inl rfl)))))))))))))))
  | 65, _ => Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inl rfl)))))))))
  | 66, _ => Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inl rfl)))))))
  | 67, _ => Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inl rfl))))))))))))))))))))
  | 68, _ => Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inl rfl)))))))))))))))
  | 69, _ => Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inl rfl)))))))))))
  | 70, _ => Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inl rfl))))))))))
  | 71, _ => Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inl rfl)))))))))))))))))))))
  | 72, _ => Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inl rfl))))))
  | 73, _ => Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inl rfl)))))))))))))
  | 74, _ => Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inl rfl)))))))))
  | 75, _ => Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (rfl)))))))))))))))))))))))))))
  | 76, _ => Or.inr (Or.inl rfl)
  | 77, _ => Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (rfl)))))))))))))))))))))))))))
  | 78, _ => Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inl rfl))))))))))))))))))))
  | 79, _ => Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inl rfl))))))))
  | 80, _ => Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inl rfl)))))))))))))))))))))))))
  | 81, _ => Or.inr (Or.inr (Or.inr (Or.inl rfl)))
  | 82, _ => Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inl rfl)))))))))))))))))))
  | 83, _ => Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inl rfl))))))))))))))))
  | 84, _ => Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inl rfl))))))))))))))))))))))
  | 85, _ => Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inl rfl)))))))))))))))))))))))))
  | 86, _ => Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inl rfl))))))))))))))
  | 87, _ => Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inl rfl))))))
  | 88, _ => Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inl rfl))))))))))
  | 89, _ => Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inl rfl))))))))))))))))))))))))))
  | 90, _ => Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inl rfl)))))))))))))))))))
  | 91, _ => Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inl rfl)))))
  | 92, _ => Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inl rfl))))))))))))
  | 93, _ => Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inl rfl))))))))))))
  | 94, _ => Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inl rfl)))))))))))))))))
  | 95, _ => Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inl rfl))))))))))))))))
  | 96, _ => Or.inr (Or.inr (Or.inl rfl))
  | 97, _ => Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inl rfl)))))))))))
  | 98, _ => Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inl rfl)))))))))))))
  | 99, _ => Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inl rfl))))))))))))))))))))))))
  | 100, _ => Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inl rfl))))))))
  | 101, _ => Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inl rfl))))))))))))))))))
  | 102, _ => Or.inr (Or.inr (Or.inl rfl))
  | 103, _ => Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inl rfl))))))))))))))))))))))))))
  | 104, _ => Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inl rfl)))))))))))))))))))))))
  | 105, _ => Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inl rfl))))))))))))))
  | 106, _ => Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inl rfl))))))))))))))))))))))))
  | 107, _ => Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inl rfl)))))))
  | 108, _ => Or.inr (Or.inl rfl)
  | n + 109, h => absurd h (Nat.not_lt_of_le (Nat.le_add_left 109 n))

/-! ## Empty-axiom `Nat` toolkit modulo 109 -/

theorem add109_mod (x : Nat) : (x + 109) % 109 = x % 109 :=
  let hcond : 0 < 109 ∧ 109 ≤ x + 109 :=
    ⟨Nat.succ_pos 108, Nat.le_add_left 109 x⟩
  let hmod := Nat.mod_eq (x + 109) 109
  let hif :
      (if 0 < 109 ∧ 109 ≤ x + 109 then (x + 109 - 109) % 109 else x + 109) =
        (x + 109 - 109) % 109 :=
    if_pos hcond
  let hsub : x + 109 - 109 = x := rfl
  (hmod.trans hif).trans (congrArg (fun t => t % 109) hsub)

theorem add_mul109_mod (n : Nat) : ∀ k : Nat, (n + 109 * k) % 109 = n % 109
  | 0 =>
    congrArg (fun t => t % 109) (show n + 109 * 0 = n from rfl)
  | k + 1 =>
    let h1 : n + 109 * (k + 1) = n + 109 * k + 109 :=
      (congrArg (fun t => n + t)
          (show 109 * (k + 1) = 109 * k + 109 from rfl)).trans
        (Nat.add_assoc n (109 * k) 109)
    (congrArg (fun t => t % 109) h1).trans
      ((add109_mod (n + 109 * k)).trans (add_mul109_mod n k))

theorem add_mul_left_109 (a m : Nat) :
    ∀ qq : Nat, (a + m * (109 * qq)) % 109 = a % 109
  | 0 =>
    congrArg (fun t => t % 109) (show a + m * (109 * 0) = a from rfl)
  | qq + 1 =>
    let hmul : m * (109 * (qq + 1)) = m * (109 * qq) + m * 109 :=
      (congrArg (fun t => m * t)
          (show 109 * (qq + 1) = 109 * qq + 109 from rfl)).trans
        (Nat.mul_add m (109 * qq) 109)
    let hsum : a + m * (109 * (qq + 1)) = a + m * (109 * qq) + 109 * m :=
      (congrArg (fun t => a + t) hmul).trans
        ((Nat.add_assoc a (m * (109 * qq)) (m * 109)).symm.trans
          (congrArg (fun t => a + m * (109 * qq) + t) (Nat.mul_comm m 109)))
    (congrArg (fun t => t % 109) hsum).trans
      ((add_mul109_mod (a + m * (109 * qq)) m).trans
        (add_mul_left_109 a m qq))

theorem exists_mod109 : ∀ n : Nat, ∃ q r : Nat, r < 109 ∧ n = 109 * q + r
  | 0 => ⟨0, 0, by decide, rfl⟩
  | n + 1 =>
    match exists_mod109 n with
    | ⟨q, 0, _, heq⟩ =>
      ⟨q, 1, by decide,
        (congrArg Nat.succ heq).trans
          (show Nat.succ (109 * q + 0) = 109 * q + 1 from rfl)⟩
    | ⟨q, 1, _, heq⟩ =>
      ⟨q, 2, by decide,
        (congrArg Nat.succ heq).trans
          (show Nat.succ (109 * q + 1) = 109 * q + 2 from rfl)⟩
    | ⟨q, 2, _, heq⟩ =>
      ⟨q, 3, by decide,
        (congrArg Nat.succ heq).trans
          (show Nat.succ (109 * q + 2) = 109 * q + 3 from rfl)⟩
    | ⟨q, 3, _, heq⟩ =>
      ⟨q, 4, by decide,
        (congrArg Nat.succ heq).trans
          (show Nat.succ (109 * q + 3) = 109 * q + 4 from rfl)⟩
    | ⟨q, 4, _, heq⟩ =>
      ⟨q, 5, by decide,
        (congrArg Nat.succ heq).trans
          (show Nat.succ (109 * q + 4) = 109 * q + 5 from rfl)⟩
    | ⟨q, 5, _, heq⟩ =>
      ⟨q, 6, by decide,
        (congrArg Nat.succ heq).trans
          (show Nat.succ (109 * q + 5) = 109 * q + 6 from rfl)⟩
    | ⟨q, 6, _, heq⟩ =>
      ⟨q, 7, by decide,
        (congrArg Nat.succ heq).trans
          (show Nat.succ (109 * q + 6) = 109 * q + 7 from rfl)⟩
    | ⟨q, 7, _, heq⟩ =>
      ⟨q, 8, by decide,
        (congrArg Nat.succ heq).trans
          (show Nat.succ (109 * q + 7) = 109 * q + 8 from rfl)⟩
    | ⟨q, 8, _, heq⟩ =>
      ⟨q, 9, by decide,
        (congrArg Nat.succ heq).trans
          (show Nat.succ (109 * q + 8) = 109 * q + 9 from rfl)⟩
    | ⟨q, 9, _, heq⟩ =>
      ⟨q, 10, by decide,
        (congrArg Nat.succ heq).trans
          (show Nat.succ (109 * q + 9) = 109 * q + 10 from rfl)⟩
    | ⟨q, 10, _, heq⟩ =>
      ⟨q, 11, by decide,
        (congrArg Nat.succ heq).trans
          (show Nat.succ (109 * q + 10) = 109 * q + 11 from rfl)⟩
    | ⟨q, 11, _, heq⟩ =>
      ⟨q, 12, by decide,
        (congrArg Nat.succ heq).trans
          (show Nat.succ (109 * q + 11) = 109 * q + 12 from rfl)⟩
    | ⟨q, 12, _, heq⟩ =>
      ⟨q, 13, by decide,
        (congrArg Nat.succ heq).trans
          (show Nat.succ (109 * q + 12) = 109 * q + 13 from rfl)⟩
    | ⟨q, 13, _, heq⟩ =>
      ⟨q, 14, by decide,
        (congrArg Nat.succ heq).trans
          (show Nat.succ (109 * q + 13) = 109 * q + 14 from rfl)⟩
    | ⟨q, 14, _, heq⟩ =>
      ⟨q, 15, by decide,
        (congrArg Nat.succ heq).trans
          (show Nat.succ (109 * q + 14) = 109 * q + 15 from rfl)⟩
    | ⟨q, 15, _, heq⟩ =>
      ⟨q, 16, by decide,
        (congrArg Nat.succ heq).trans
          (show Nat.succ (109 * q + 15) = 109 * q + 16 from rfl)⟩
    | ⟨q, 16, _, heq⟩ =>
      ⟨q, 17, by decide,
        (congrArg Nat.succ heq).trans
          (show Nat.succ (109 * q + 16) = 109 * q + 17 from rfl)⟩
    | ⟨q, 17, _, heq⟩ =>
      ⟨q, 18, by decide,
        (congrArg Nat.succ heq).trans
          (show Nat.succ (109 * q + 17) = 109 * q + 18 from rfl)⟩
    | ⟨q, 18, _, heq⟩ =>
      ⟨q, 19, by decide,
        (congrArg Nat.succ heq).trans
          (show Nat.succ (109 * q + 18) = 109 * q + 19 from rfl)⟩
    | ⟨q, 19, _, heq⟩ =>
      ⟨q, 20, by decide,
        (congrArg Nat.succ heq).trans
          (show Nat.succ (109 * q + 19) = 109 * q + 20 from rfl)⟩
    | ⟨q, 20, _, heq⟩ =>
      ⟨q, 21, by decide,
        (congrArg Nat.succ heq).trans
          (show Nat.succ (109 * q + 20) = 109 * q + 21 from rfl)⟩
    | ⟨q, 21, _, heq⟩ =>
      ⟨q, 22, by decide,
        (congrArg Nat.succ heq).trans
          (show Nat.succ (109 * q + 21) = 109 * q + 22 from rfl)⟩
    | ⟨q, 22, _, heq⟩ =>
      ⟨q, 23, by decide,
        (congrArg Nat.succ heq).trans
          (show Nat.succ (109 * q + 22) = 109 * q + 23 from rfl)⟩
    | ⟨q, 23, _, heq⟩ =>
      ⟨q, 24, by decide,
        (congrArg Nat.succ heq).trans
          (show Nat.succ (109 * q + 23) = 109 * q + 24 from rfl)⟩
    | ⟨q, 24, _, heq⟩ =>
      ⟨q, 25, by decide,
        (congrArg Nat.succ heq).trans
          (show Nat.succ (109 * q + 24) = 109 * q + 25 from rfl)⟩
    | ⟨q, 25, _, heq⟩ =>
      ⟨q, 26, by decide,
        (congrArg Nat.succ heq).trans
          (show Nat.succ (109 * q + 25) = 109 * q + 26 from rfl)⟩
    | ⟨q, 26, _, heq⟩ =>
      ⟨q, 27, by decide,
        (congrArg Nat.succ heq).trans
          (show Nat.succ (109 * q + 26) = 109 * q + 27 from rfl)⟩
    | ⟨q, 27, _, heq⟩ =>
      ⟨q, 28, by decide,
        (congrArg Nat.succ heq).trans
          (show Nat.succ (109 * q + 27) = 109 * q + 28 from rfl)⟩
    | ⟨q, 28, _, heq⟩ =>
      ⟨q, 29, by decide,
        (congrArg Nat.succ heq).trans
          (show Nat.succ (109 * q + 28) = 109 * q + 29 from rfl)⟩
    | ⟨q, 29, _, heq⟩ =>
      ⟨q, 30, by decide,
        (congrArg Nat.succ heq).trans
          (show Nat.succ (109 * q + 29) = 109 * q + 30 from rfl)⟩
    | ⟨q, 30, _, heq⟩ =>
      ⟨q, 31, by decide,
        (congrArg Nat.succ heq).trans
          (show Nat.succ (109 * q + 30) = 109 * q + 31 from rfl)⟩
    | ⟨q, 31, _, heq⟩ =>
      ⟨q, 32, by decide,
        (congrArg Nat.succ heq).trans
          (show Nat.succ (109 * q + 31) = 109 * q + 32 from rfl)⟩
    | ⟨q, 32, _, heq⟩ =>
      ⟨q, 33, by decide,
        (congrArg Nat.succ heq).trans
          (show Nat.succ (109 * q + 32) = 109 * q + 33 from rfl)⟩
    | ⟨q, 33, _, heq⟩ =>
      ⟨q, 34, by decide,
        (congrArg Nat.succ heq).trans
          (show Nat.succ (109 * q + 33) = 109 * q + 34 from rfl)⟩
    | ⟨q, 34, _, heq⟩ =>
      ⟨q, 35, by decide,
        (congrArg Nat.succ heq).trans
          (show Nat.succ (109 * q + 34) = 109 * q + 35 from rfl)⟩
    | ⟨q, 35, _, heq⟩ =>
      ⟨q, 36, by decide,
        (congrArg Nat.succ heq).trans
          (show Nat.succ (109 * q + 35) = 109 * q + 36 from rfl)⟩
    | ⟨q, 36, _, heq⟩ =>
      ⟨q, 37, by decide,
        (congrArg Nat.succ heq).trans
          (show Nat.succ (109 * q + 36) = 109 * q + 37 from rfl)⟩
    | ⟨q, 37, _, heq⟩ =>
      ⟨q, 38, by decide,
        (congrArg Nat.succ heq).trans
          (show Nat.succ (109 * q + 37) = 109 * q + 38 from rfl)⟩
    | ⟨q, 38, _, heq⟩ =>
      ⟨q, 39, by decide,
        (congrArg Nat.succ heq).trans
          (show Nat.succ (109 * q + 38) = 109 * q + 39 from rfl)⟩
    | ⟨q, 39, _, heq⟩ =>
      ⟨q, 40, by decide,
        (congrArg Nat.succ heq).trans
          (show Nat.succ (109 * q + 39) = 109 * q + 40 from rfl)⟩
    | ⟨q, 40, _, heq⟩ =>
      ⟨q, 41, by decide,
        (congrArg Nat.succ heq).trans
          (show Nat.succ (109 * q + 40) = 109 * q + 41 from rfl)⟩
    | ⟨q, 41, _, heq⟩ =>
      ⟨q, 42, by decide,
        (congrArg Nat.succ heq).trans
          (show Nat.succ (109 * q + 41) = 109 * q + 42 from rfl)⟩
    | ⟨q, 42, _, heq⟩ =>
      ⟨q, 43, by decide,
        (congrArg Nat.succ heq).trans
          (show Nat.succ (109 * q + 42) = 109 * q + 43 from rfl)⟩
    | ⟨q, 43, _, heq⟩ =>
      ⟨q, 44, by decide,
        (congrArg Nat.succ heq).trans
          (show Nat.succ (109 * q + 43) = 109 * q + 44 from rfl)⟩
    | ⟨q, 44, _, heq⟩ =>
      ⟨q, 45, by decide,
        (congrArg Nat.succ heq).trans
          (show Nat.succ (109 * q + 44) = 109 * q + 45 from rfl)⟩
    | ⟨q, 45, _, heq⟩ =>
      ⟨q, 46, by decide,
        (congrArg Nat.succ heq).trans
          (show Nat.succ (109 * q + 45) = 109 * q + 46 from rfl)⟩
    | ⟨q, 46, _, heq⟩ =>
      ⟨q, 47, by decide,
        (congrArg Nat.succ heq).trans
          (show Nat.succ (109 * q + 46) = 109 * q + 47 from rfl)⟩
    | ⟨q, 47, _, heq⟩ =>
      ⟨q, 48, by decide,
        (congrArg Nat.succ heq).trans
          (show Nat.succ (109 * q + 47) = 109 * q + 48 from rfl)⟩
    | ⟨q, 48, _, heq⟩ =>
      ⟨q, 49, by decide,
        (congrArg Nat.succ heq).trans
          (show Nat.succ (109 * q + 48) = 109 * q + 49 from rfl)⟩
    | ⟨q, 49, _, heq⟩ =>
      ⟨q, 50, by decide,
        (congrArg Nat.succ heq).trans
          (show Nat.succ (109 * q + 49) = 109 * q + 50 from rfl)⟩
    | ⟨q, 50, _, heq⟩ =>
      ⟨q, 51, by decide,
        (congrArg Nat.succ heq).trans
          (show Nat.succ (109 * q + 50) = 109 * q + 51 from rfl)⟩
    | ⟨q, 51, _, heq⟩ =>
      ⟨q, 52, by decide,
        (congrArg Nat.succ heq).trans
          (show Nat.succ (109 * q + 51) = 109 * q + 52 from rfl)⟩
    | ⟨q, 52, _, heq⟩ =>
      ⟨q, 53, by decide,
        (congrArg Nat.succ heq).trans
          (show Nat.succ (109 * q + 52) = 109 * q + 53 from rfl)⟩
    | ⟨q, 53, _, heq⟩ =>
      ⟨q, 54, by decide,
        (congrArg Nat.succ heq).trans
          (show Nat.succ (109 * q + 53) = 109 * q + 54 from rfl)⟩
    | ⟨q, 54, _, heq⟩ =>
      ⟨q, 55, by decide,
        (congrArg Nat.succ heq).trans
          (show Nat.succ (109 * q + 54) = 109 * q + 55 from rfl)⟩
    | ⟨q, 55, _, heq⟩ =>
      ⟨q, 56, by decide,
        (congrArg Nat.succ heq).trans
          (show Nat.succ (109 * q + 55) = 109 * q + 56 from rfl)⟩
    | ⟨q, 56, _, heq⟩ =>
      ⟨q, 57, by decide,
        (congrArg Nat.succ heq).trans
          (show Nat.succ (109 * q + 56) = 109 * q + 57 from rfl)⟩
    | ⟨q, 57, _, heq⟩ =>
      ⟨q, 58, by decide,
        (congrArg Nat.succ heq).trans
          (show Nat.succ (109 * q + 57) = 109 * q + 58 from rfl)⟩
    | ⟨q, 58, _, heq⟩ =>
      ⟨q, 59, by decide,
        (congrArg Nat.succ heq).trans
          (show Nat.succ (109 * q + 58) = 109 * q + 59 from rfl)⟩
    | ⟨q, 59, _, heq⟩ =>
      ⟨q, 60, by decide,
        (congrArg Nat.succ heq).trans
          (show Nat.succ (109 * q + 59) = 109 * q + 60 from rfl)⟩
    | ⟨q, 60, _, heq⟩ =>
      ⟨q, 61, by decide,
        (congrArg Nat.succ heq).trans
          (show Nat.succ (109 * q + 60) = 109 * q + 61 from rfl)⟩
    | ⟨q, 61, _, heq⟩ =>
      ⟨q, 62, by decide,
        (congrArg Nat.succ heq).trans
          (show Nat.succ (109 * q + 61) = 109 * q + 62 from rfl)⟩
    | ⟨q, 62, _, heq⟩ =>
      ⟨q, 63, by decide,
        (congrArg Nat.succ heq).trans
          (show Nat.succ (109 * q + 62) = 109 * q + 63 from rfl)⟩
    | ⟨q, 63, _, heq⟩ =>
      ⟨q, 64, by decide,
        (congrArg Nat.succ heq).trans
          (show Nat.succ (109 * q + 63) = 109 * q + 64 from rfl)⟩
    | ⟨q, 64, _, heq⟩ =>
      ⟨q, 65, by decide,
        (congrArg Nat.succ heq).trans
          (show Nat.succ (109 * q + 64) = 109 * q + 65 from rfl)⟩
    | ⟨q, 65, _, heq⟩ =>
      ⟨q, 66, by decide,
        (congrArg Nat.succ heq).trans
          (show Nat.succ (109 * q + 65) = 109 * q + 66 from rfl)⟩
    | ⟨q, 66, _, heq⟩ =>
      ⟨q, 67, by decide,
        (congrArg Nat.succ heq).trans
          (show Nat.succ (109 * q + 66) = 109 * q + 67 from rfl)⟩
    | ⟨q, 67, _, heq⟩ =>
      ⟨q, 68, by decide,
        (congrArg Nat.succ heq).trans
          (show Nat.succ (109 * q + 67) = 109 * q + 68 from rfl)⟩
    | ⟨q, 68, _, heq⟩ =>
      ⟨q, 69, by decide,
        (congrArg Nat.succ heq).trans
          (show Nat.succ (109 * q + 68) = 109 * q + 69 from rfl)⟩
    | ⟨q, 69, _, heq⟩ =>
      ⟨q, 70, by decide,
        (congrArg Nat.succ heq).trans
          (show Nat.succ (109 * q + 69) = 109 * q + 70 from rfl)⟩
    | ⟨q, 70, _, heq⟩ =>
      ⟨q, 71, by decide,
        (congrArg Nat.succ heq).trans
          (show Nat.succ (109 * q + 70) = 109 * q + 71 from rfl)⟩
    | ⟨q, 71, _, heq⟩ =>
      ⟨q, 72, by decide,
        (congrArg Nat.succ heq).trans
          (show Nat.succ (109 * q + 71) = 109 * q + 72 from rfl)⟩
    | ⟨q, 72, _, heq⟩ =>
      ⟨q, 73, by decide,
        (congrArg Nat.succ heq).trans
          (show Nat.succ (109 * q + 72) = 109 * q + 73 from rfl)⟩
    | ⟨q, 73, _, heq⟩ =>
      ⟨q, 74, by decide,
        (congrArg Nat.succ heq).trans
          (show Nat.succ (109 * q + 73) = 109 * q + 74 from rfl)⟩
    | ⟨q, 74, _, heq⟩ =>
      ⟨q, 75, by decide,
        (congrArg Nat.succ heq).trans
          (show Nat.succ (109 * q + 74) = 109 * q + 75 from rfl)⟩
    | ⟨q, 75, _, heq⟩ =>
      ⟨q, 76, by decide,
        (congrArg Nat.succ heq).trans
          (show Nat.succ (109 * q + 75) = 109 * q + 76 from rfl)⟩
    | ⟨q, 76, _, heq⟩ =>
      ⟨q, 77, by decide,
        (congrArg Nat.succ heq).trans
          (show Nat.succ (109 * q + 76) = 109 * q + 77 from rfl)⟩
    | ⟨q, 77, _, heq⟩ =>
      ⟨q, 78, by decide,
        (congrArg Nat.succ heq).trans
          (show Nat.succ (109 * q + 77) = 109 * q + 78 from rfl)⟩
    | ⟨q, 78, _, heq⟩ =>
      ⟨q, 79, by decide,
        (congrArg Nat.succ heq).trans
          (show Nat.succ (109 * q + 78) = 109 * q + 79 from rfl)⟩
    | ⟨q, 79, _, heq⟩ =>
      ⟨q, 80, by decide,
        (congrArg Nat.succ heq).trans
          (show Nat.succ (109 * q + 79) = 109 * q + 80 from rfl)⟩
    | ⟨q, 80, _, heq⟩ =>
      ⟨q, 81, by decide,
        (congrArg Nat.succ heq).trans
          (show Nat.succ (109 * q + 80) = 109 * q + 81 from rfl)⟩
    | ⟨q, 81, _, heq⟩ =>
      ⟨q, 82, by decide,
        (congrArg Nat.succ heq).trans
          (show Nat.succ (109 * q + 81) = 109 * q + 82 from rfl)⟩
    | ⟨q, 82, _, heq⟩ =>
      ⟨q, 83, by decide,
        (congrArg Nat.succ heq).trans
          (show Nat.succ (109 * q + 82) = 109 * q + 83 from rfl)⟩
    | ⟨q, 83, _, heq⟩ =>
      ⟨q, 84, by decide,
        (congrArg Nat.succ heq).trans
          (show Nat.succ (109 * q + 83) = 109 * q + 84 from rfl)⟩
    | ⟨q, 84, _, heq⟩ =>
      ⟨q, 85, by decide,
        (congrArg Nat.succ heq).trans
          (show Nat.succ (109 * q + 84) = 109 * q + 85 from rfl)⟩
    | ⟨q, 85, _, heq⟩ =>
      ⟨q, 86, by decide,
        (congrArg Nat.succ heq).trans
          (show Nat.succ (109 * q + 85) = 109 * q + 86 from rfl)⟩
    | ⟨q, 86, _, heq⟩ =>
      ⟨q, 87, by decide,
        (congrArg Nat.succ heq).trans
          (show Nat.succ (109 * q + 86) = 109 * q + 87 from rfl)⟩
    | ⟨q, 87, _, heq⟩ =>
      ⟨q, 88, by decide,
        (congrArg Nat.succ heq).trans
          (show Nat.succ (109 * q + 87) = 109 * q + 88 from rfl)⟩
    | ⟨q, 88, _, heq⟩ =>
      ⟨q, 89, by decide,
        (congrArg Nat.succ heq).trans
          (show Nat.succ (109 * q + 88) = 109 * q + 89 from rfl)⟩
    | ⟨q, 89, _, heq⟩ =>
      ⟨q, 90, by decide,
        (congrArg Nat.succ heq).trans
          (show Nat.succ (109 * q + 89) = 109 * q + 90 from rfl)⟩
    | ⟨q, 90, _, heq⟩ =>
      ⟨q, 91, by decide,
        (congrArg Nat.succ heq).trans
          (show Nat.succ (109 * q + 90) = 109 * q + 91 from rfl)⟩
    | ⟨q, 91, _, heq⟩ =>
      ⟨q, 92, by decide,
        (congrArg Nat.succ heq).trans
          (show Nat.succ (109 * q + 91) = 109 * q + 92 from rfl)⟩
    | ⟨q, 92, _, heq⟩ =>
      ⟨q, 93, by decide,
        (congrArg Nat.succ heq).trans
          (show Nat.succ (109 * q + 92) = 109 * q + 93 from rfl)⟩
    | ⟨q, 93, _, heq⟩ =>
      ⟨q, 94, by decide,
        (congrArg Nat.succ heq).trans
          (show Nat.succ (109 * q + 93) = 109 * q + 94 from rfl)⟩
    | ⟨q, 94, _, heq⟩ =>
      ⟨q, 95, by decide,
        (congrArg Nat.succ heq).trans
          (show Nat.succ (109 * q + 94) = 109 * q + 95 from rfl)⟩
    | ⟨q, 95, _, heq⟩ =>
      ⟨q, 96, by decide,
        (congrArg Nat.succ heq).trans
          (show Nat.succ (109 * q + 95) = 109 * q + 96 from rfl)⟩
    | ⟨q, 96, _, heq⟩ =>
      ⟨q, 97, by decide,
        (congrArg Nat.succ heq).trans
          (show Nat.succ (109 * q + 96) = 109 * q + 97 from rfl)⟩
    | ⟨q, 97, _, heq⟩ =>
      ⟨q, 98, by decide,
        (congrArg Nat.succ heq).trans
          (show Nat.succ (109 * q + 97) = 109 * q + 98 from rfl)⟩
    | ⟨q, 98, _, heq⟩ =>
      ⟨q, 99, by decide,
        (congrArg Nat.succ heq).trans
          (show Nat.succ (109 * q + 98) = 109 * q + 99 from rfl)⟩
    | ⟨q, 99, _, heq⟩ =>
      ⟨q, 100, by decide,
        (congrArg Nat.succ heq).trans
          (show Nat.succ (109 * q + 99) = 109 * q + 100 from rfl)⟩
    | ⟨q, 100, _, heq⟩ =>
      ⟨q, 101, by decide,
        (congrArg Nat.succ heq).trans
          (show Nat.succ (109 * q + 100) = 109 * q + 101 from rfl)⟩
    | ⟨q, 101, _, heq⟩ =>
      ⟨q, 102, by decide,
        (congrArg Nat.succ heq).trans
          (show Nat.succ (109 * q + 101) = 109 * q + 102 from rfl)⟩
    | ⟨q, 102, _, heq⟩ =>
      ⟨q, 103, by decide,
        (congrArg Nat.succ heq).trans
          (show Nat.succ (109 * q + 102) = 109 * q + 103 from rfl)⟩
    | ⟨q, 103, _, heq⟩ =>
      ⟨q, 104, by decide,
        (congrArg Nat.succ heq).trans
          (show Nat.succ (109 * q + 103) = 109 * q + 104 from rfl)⟩
    | ⟨q, 104, _, heq⟩ =>
      ⟨q, 105, by decide,
        (congrArg Nat.succ heq).trans
          (show Nat.succ (109 * q + 104) = 109 * q + 105 from rfl)⟩
    | ⟨q, 105, _, heq⟩ =>
      ⟨q, 106, by decide,
        (congrArg Nat.succ heq).trans
          (show Nat.succ (109 * q + 105) = 109 * q + 106 from rfl)⟩
    | ⟨q, 106, _, heq⟩ =>
      ⟨q, 107, by decide,
        (congrArg Nat.succ heq).trans
          (show Nat.succ (109 * q + 106) = 109 * q + 107 from rfl)⟩
    | ⟨q, 107, _, heq⟩ =>
      ⟨q, 108, by decide,
        (congrArg Nat.succ heq).trans
          (show Nat.succ (109 * q + 107) = 109 * q + 108 from rfl)⟩
    | ⟨q, 108, _, heq⟩ =>
      ⟨q + 1, 0, by decide,
        (congrArg Nat.succ heq).trans
          (show Nat.succ (109 * q + 108) = 109 * (q + 1) + 0 from rfl)⟩
    | ⟨_q, r + 109, hr, _heq⟩ =>
      absurd hr (Nat.not_lt_of_le (Nat.le_add_left 109 r))

theorem eq_mod109_of_decomp {n q r : Nat}
    (hr : r < 109) (h : n = 109 * q + r) : n % 109 = r :=
  let h1 : n % 109 = (109 * q + r) % 109 :=
    congrArg (fun t => t % 109) h
  let h2 : 109 * q + r = r + 109 * q := Nat.add_comm (109 * q) r
  let h3 : (109 * q + r) % 109 = (r + 109 * q) % 109 :=
    congrArg (fun t => t % 109) h2
  h1.trans (h3.trans ((add_mul109_mod r q).trans (Nat.mod_eq_of_lt hr)))

theorem mul_mod109 (x y : Nat) :
    (x * y) % 109 = (x % 109 * (y % 109)) % 109 :=
  match exists_mod109 x with
  | ⟨qx, rx, hrx, hx⟩ =>
    match exists_mod109 y with
    | ⟨qy, ry, hry, hy⟩ =>
      let hxmod : x % 109 = rx := eq_mod109_of_decomp hrx hx
      let hymod : y % 109 = ry := eq_mod109_of_decomp hry hy
      let hxy : x * y = (109 * qx + rx) * (109 * qy + ry) :=
        (congrArg (fun t => t * y) hx).trans
          (congrArg (fun t => (109 * qx + rx) * t) hy)
      let hexp : (109 * qx + rx) * (109 * qy + ry) =
          (109 * qx + rx) * ry + (109 * qx + rx) * (109 * qy) :=
        (Nat.mul_add (109 * qx + rx) (109 * qy) ry).trans
          (Nat.add_comm ((109 * qx + rx) * (109 * qy)) ((109 * qx + rx) * ry))
      let hpeel1 :
          ((109 * qx + rx) * ry + (109 * qx + rx) * (109 * qy)) % 109 =
            ((109 * qx + rx) * ry) % 109 :=
        add_mul_left_109 ((109 * qx + rx) * ry) (109 * qx + rx) qy
      let hry : (109 * qx + rx) * ry = rx * ry + ry * (109 * qx) :=
        let hflip : (109 * qx + rx) * ry = ry * (109 * qx + rx) :=
          Nat.mul_comm (109 * qx + rx) ry
        let hdist : ry * (109 * qx + rx) = ry * (109 * qx) + ry * rx :=
          Nat.mul_add ry (109 * qx) rx
        let h1 : ry * (109 * qx) + ry * rx = ry * (109 * qx) + rx * ry :=
          congrArg (fun t => ry * (109 * qx) + t) (Nat.mul_comm ry rx)
        let h2 : ry * (109 * qx) + rx * ry = rx * ry + ry * (109 * qx) :=
          Nat.add_comm (ry * (109 * qx)) (rx * ry)
        hflip.trans (hdist.trans (h1.trans h2))
      let hpeel2 : (rx * ry + ry * (109 * qx)) % 109 = (rx * ry) % 109 :=
        add_mul_left_109 (rx * ry) ry qx
      let hprod : (x * y) % 109 = (rx * ry) % 109 :=
        (congrArg (fun t => t % 109) (hxy.trans hexp)).trans
          (hpeel1.trans
            ((congrArg (fun t => t % 109) hry).trans hpeel2))
      let hrxry : rx * ry = x % 109 * (y % 109) :=
        (congrArg (fun t => t * ry) hxmod.symm).trans
          (congrArg (fun t => x % 109 * t) hymod.symm)
      hprod.trans (congrArg (fun t => t % 109) hrxry)

theorem add_mod109 (x y : Nat) :
    (x + y) % 109 = (x % 109 + y % 109) % 109 :=
  match exists_mod109 x with
  | ⟨qx, rx, hrx, hx⟩ =>
    match exists_mod109 y with
    | ⟨qy, ry, hry, hy⟩ =>
      let hxmod : x % 109 = rx := eq_mod109_of_decomp hrx hx
      let hymod : y % 109 = ry := eq_mod109_of_decomp hry hy
      let hxy : x + y = (109 * qx + rx) + (109 * qy + ry) :=
        (congrArg (fun t => t + y) hx).trans
          (congrArg (fun t => (109 * qx + rx) + t) hy)
      let hcomm : 109 * qy + ry = ry + 109 * qy :=
        Nat.add_comm (109 * qy) ry
      let hxy' : (109 * qx + rx) + (109 * qy + ry) =
          (109 * qx + rx) + (ry + 109 * qy) :=
        congrArg (fun t => (109 * qx + rx) + t) hcomm
      let hassoc : (109 * qx + rx) + (ry + 109 * qy) =
          (109 * qx + rx) + ry + 109 * qy :=
        (Nat.add_assoc (109 * qx + rx) ry (109 * qy)).symm
      let hpeel : ((109 * qx + rx) + ry + 109 * qy) % 109 =
          ((109 * qx + rx) + ry) % 109 :=
        add_mul109_mod ((109 * qx + rx) + ry) qy
      let hcomm2 : 109 * qx + rx = rx + 109 * qx :=
        Nat.add_comm (109 * qx) rx
      let hxy2 : (109 * qx + rx) + ry = rx + 109 * qx + ry :=
        congrArg (fun t => t + ry) hcomm2
      let hassoc2 : rx + 109 * qx + ry = rx + ry + 109 * qx :=
        let h1 : rx + 109 * qx + ry = rx + (109 * qx + ry) :=
          Nat.add_assoc rx (109 * qx) ry
        let h2 : 109 * qx + ry = ry + 109 * qx :=
          Nat.add_comm (109 * qx) ry
        let h3 : rx + (109 * qx + ry) = rx + (ry + 109 * qx) :=
          congrArg (fun t => rx + t) h2
        let h4 : rx + (ry + 109 * qx) = rx + ry + 109 * qx :=
          (Nat.add_assoc rx ry (109 * qx)).symm
        h1.trans (h3.trans h4)
      let hpeel2 : (rx + ry + 109 * qx) % 109 = (rx + ry) % 109 :=
        add_mul109_mod (rx + ry) qx
      let hsum : (x + y) % 109 = (rx + ry) % 109 :=
        (congrArg (fun t => t % 109) (hxy.trans (hxy'.trans hassoc))).trans
          (hpeel.trans
            ((congrArg (fun t => t % 109) (hxy2.trans hassoc2)).trans hpeel2))
      let hrxry : rx + ry = x % 109 + y % 109 :=
        (congrArg (fun t => t + ry) hxmod.symm).trans
          (congrArg (fun t => x % 109 + t) hymod.symm)
      hsum.trans (congrArg (fun t => t % 109) hrxry)

theorem pow_mod109 (n : Nat) :
    ∀ k : Nat, Nat.pow n k % 109 = Nat.pow (n % 109) k % 109
  | 0 => rfl
  | k + 1 =>
    let hs : Nat.pow n (k + 1) = Nat.pow n k * n := Nat.pow_succ n k
    let hs' : Nat.pow (n % 109) (k + 1) =
        Nat.pow (n % 109) k * (n % 109) :=
      Nat.pow_succ (n % 109) k
    let hmodmod : (n % 109) % 109 = n % 109 :=
      Nat.mod_eq_of_lt (Nat.mod_lt n (Nat.succ_pos 108))
    let h1 : (Nat.pow n k * n) % 109 =
        (Nat.pow n k % 109 * (n % 109)) % 109 :=
      mul_mod109 (Nat.pow n k) n
    let h2 : (Nat.pow n k % 109 * (n % 109)) % 109 =
        (Nat.pow (n % 109) k % 109 * (n % 109)) % 109 :=
      congrArg (fun t => (t * (n % 109)) % 109) (pow_mod109 n k)
    let h3 : (Nat.pow (n % 109) k * (n % 109)) % 109 =
        (Nat.pow (n % 109) k % 109 * ((n % 109) % 109)) % 109 :=
      mul_mod109 (Nat.pow (n % 109) k) (n % 109)
    let h4 : (Nat.pow (n % 109) k % 109 * (n % 109)) % 109 =
        (Nat.pow (n % 109) k * (n % 109)) % 109 :=
      (congrArg (fun t => (Nat.pow (n % 109) k % 109 * t) % 109)
          hmodmod.symm).trans h3.symm
    (congrArg (fun t => t % 109) hs).trans
      (h1.trans (h2.trans (h4.trans
        (congrArg (fun t => t % 109) hs'.symm))))

theorem fourth_pow_is_fourth_109 (A : Nat) :
    IsFourthMod109 (Nat.pow A 4 % 109) :=
  let hr : A % 109 < 109 := Nat.mod_lt A (Nat.succ_pos 108)
  let hpow : Nat.pow A 4 % 109 = Nat.pow (A % 109) 4 % 109 :=
    pow_mod109 A 4
  Eq.rec (motive := fun (t : Nat) (_ : Nat.pow (A % 109) 4 % 109 = t) =>
      IsFourthMod109 t)
    (fourth_pow_is_fourth_of_lt_109 (A % 109) hr) hpow.symm

theorem sub_add_cancel_109 {n : Nat} (h : 109 ≤ n) :
    n - 109 + 109 = n :=
  match Nat.le.dest h with
  | ⟨k, hk⟩ =>
    let hsub : n - 109 = k :=
      let hcomm : 109 + k = k + 109 := Nat.add_comm 109 k
      let hcancel : k + 109 - 109 = k := rfl
      (congrArg (fun t => t - 109) (hk.symm.trans hcomm)).trans hcancel
    let hsum : n - 109 + 109 = k + 109 :=
      congrArg (fun t => t + 109) hsub
    hsum.trans ((Nat.add_comm k 109).trans hk)

theorem residue_sub_mod109 (a b c : Nat)
    (ha : a < 109) (hb : b < 109) (_hc : c < 109)
    (h : (a + b) % 109 = c) :
    a = (c + 109 - b) % 109 :=
  match Nat.decLe 109 (a + b) with
  | isFalse hnot =>
    let hlt : a + b < 109 := Nat.not_le.mp hnot
    let hmod : (a + b) % 109 = a + b := Nat.mod_eq_of_lt hlt
    let hab : a + b = c := hmod.symm.trans h
    let hsum : c + 109 - b = a + 109 :=
      let h1 : c + 109 - b = a + b + 109 - b :=
        congrArg (fun t => t + 109 - b) hab.symm
      let h2 : a + b + 109 = a + 109 + b :=
        let h2a : a + b + 109 = a + (b + 109) := Nat.add_assoc a b 109
        let h2b : b + 109 = 109 + b := Nat.add_comm b 109
        let h2c : a + (b + 109) = a + (109 + b) :=
          congrArg (fun t => a + t) h2b
        let h2d : a + (109 + b) = a + 109 + b :=
          (Nat.add_assoc a 109 b).symm
        h2a.trans (h2c.trans h2d)
      let h3 : a + 109 + b - b = a + 109 :=
        add_sub_cancel_empty (a + 109) b
      h1.trans ((congrArg (fun t => t - b) h2).trans h3)
    let hmod2 : (c + 109 - b) % 109 = (a + 109) % 109 :=
      congrArg (fun t => t % 109) hsum
    let haq : (a + 109) % 109 = a % 109 := add109_mod a
    let haeq : a % 109 = a := Nat.mod_eq_of_lt ha
    (hmod2.trans (haq.trans haeq)).symm
  | isTrue hle =>
    let hcond : 0 < 109 ∧ 109 ≤ a + b := ⟨Nat.succ_pos 108, hle⟩
    let hmod := Nat.mod_eq (a + b) 109
    let hif :
        (if 0 < 109 ∧ 109 ≤ a + b then (a + b - 109) % 109 else a + b) =
          (a + b - 109) % 109 :=
      if_pos hcond
    let hsumq : a + b < 109 + 109 :=
      Nat.add_lt_add ha hb
    let hsublt : a + b - 109 < 109 :=
      let hrestore : a + b - 109 + 109 = a + b := sub_add_cancel_109 hle
      let hlt' : a + b - 109 + 109 < 109 + 109 :=
        Eq.subst (motive := fun t => t < 109 + 109) hrestore.symm hsumq
      Nat.lt_of_add_lt_add_right hlt'
    let hmodsub : (a + b - 109) % 109 = a + b - 109 :=
      Nat.mod_eq_of_lt hsublt
    let hc' : a + b - 109 = c :=
      ((hmod.trans hif).trans hmodsub).symm.trans h
    let hsum : c + 109 - b = a :=
      let h1 : c + 109 - b = a + b - 109 + 109 - b :=
        congrArg (fun t => t + 109 - b) hc'.symm
      let h2 : a + b - 109 + 109 = a + b := sub_add_cancel_109 hle
      let h3 : a + b - b = a := add_sub_cancel_empty a b
      h1.trans ((congrArg (fun t => t - b) h2).trans h3)
    let hmod2 : (c + 109 - b) % 109 = a % 109 :=
      congrArg (fun t => t % 109) hsum
    let haeq : a % 109 = a := Nat.mod_eq_of_lt ha
    (hmod2.trans haeq).symm

def rhs_mod109 (B : Nat) : Nat :=
  (Nat.pow (B + 3) 13 % 109 + 109 - Nat.pow B 4 % 109) % 109

def rhs_mod109_res (r : Nat) : Nat :=
  (Nat.pow ((r + 3) % 109) 13 % 109 + 109 -
    Nat.pow (r % 109) 4 % 109) % 109

theorem rhs_mod109_eq_res (B : Nat) :
    rhs_mod109 B = rhs_mod109_res (B % 109) :=
  let hC : Nat.pow (B + 3) 13 % 109 =
      Nat.pow ((B + 3) % 109) 13 % 109 :=
    pow_mod109 (B + 3) 13
  let hB : Nat.pow B 4 % 109 = Nat.pow (B % 109) 4 % 109 :=
    pow_mod109 B 4
  let h3 : 3 % 109 = 3 := rfl
  let hadd : (B + 3) % 109 = (B % 109 + 3) % 109 :=
    let h1 : (B + 3) % 109 = (B % 109 + 3 % 109) % 109 :=
      add_mod109 B 3
    h1.trans (congrArg (fun t => (B % 109 + t) % 109) h3)
  let hC' : Nat.pow ((B + 3) % 109) 13 % 109 =
      Nat.pow ((B % 109 + 3) % 109) 13 % 109 :=
    congrArg (fun t => Nat.pow t 13 % 109) hadd
  let hmodmod : (B % 109) % 109 = B % 109 :=
    Nat.mod_eq_of_lt (Nat.mod_lt B (Nat.succ_pos 108))
  let hB' : Nat.pow (B % 109) 4 % 109 =
      Nat.pow ((B % 109) % 109) 4 % 109 :=
    congrArg (fun t => Nat.pow t 4 % 109) hmodmod.symm
  (congrArg (fun t => (t + 109 - Nat.pow B 4 % 109) % 109)
      (hC.trans hC')).trans
    (congrArg
      (fun t =>
        (Nat.pow ((B % 109 + 3) % 109) 13 % 109 + 109 - t) % 109)
      (hB.trans hB'))

theorem direct_mod109_kill (B : Nat)
    (h : ¬ IsFourthMod109 (rhs_mod109 B)) :
    ¬ ∃ A, Nat.pow A 4 + Nat.pow B 4 = Nat.pow (B + 3) 13 := by
  intro ⟨A, hEq⟩
  let a := Nat.pow A 4 % 109
  let b := Nat.pow B 4 % 109
  let c := Nat.pow (B + 3) 13 % 109
  let hsum : (Nat.pow A 4 + Nat.pow B 4) % 109 = c :=
    congrArg (fun n => n % 109) hEq
  let hadd : (a + b) % 109 = c :=
    (add_mod109 (Nat.pow A 4) (Nat.pow B 4)).symm.trans hsum
  let ha : a < 109 := Nat.mod_lt (Nat.pow A 4) (Nat.succ_pos 108)
  let hb : b < 109 := Nat.mod_lt (Nat.pow B 4) (Nat.succ_pos 108)
  let hc : c < 109 := Nat.mod_lt (Nat.pow (B + 3) 13) (Nat.succ_pos 108)
  let hrhs : a = rhs_mod109 B :=
    residue_sub_mod109 a b c ha hb hc hadd
  let hA : IsFourthMod109 a := fourth_pow_is_fourth_109 A
  let hRhs : IsFourthMod109 (rhs_mod109 B) :=
    Eq.rec (motive := fun (t : Nat) (_ : a = t) => IsFourthMod109 t) hA hrhs
  exact h hRhs

theorem not_fourth_rhs_mod109_of_res (B r : Nat)
    (hr : B % 109 = r)
    (hnot : ¬ IsFourthMod109 (rhs_mod109_res r)) :
    ¬ IsFourthMod109 (rhs_mod109 B) :=
  let h1 : rhs_mod109 B = rhs_mod109_res (B % 109) := rhs_mod109_eq_res B
  let h2 : rhs_mod109_res (B % 109) = rhs_mod109_res r :=
    congrArg rhs_mod109_res hr
  Eq.rec (motive := fun (t : Nat) (_ : rhs_mod109_res r = t) =>
      ¬ IsFourthMod109 t)
    hnot (h2.symm.trans h1.symm)
def killed_mod109 : List Nat :=
  [
  77118,
  77902,
  86798,
  87582,
  143614,
  145742,
  163118,
  214430,
  239934,
  277854,
  312798,
  349358,
  376814,
  418446,
  463390,
  463742,
  477854,
  589982,
  603358,
  632910,
  653342,
  694286,
  723118,
  735518,
  787246,
  813118,
  821166,
  832190,
  863694,
  874462,
  885198,
  901006,
  904702,
  958670,
  991614,
  1056062,
  1133550,
  1136270,
  1170126,
  1181566,
  1203742,
  1205742,
  1219854,
  1287998,
  1296366,
  1357038,
  1374782,
  1386910,
  1420830,
  1430878,
  1434590,
  1520766,
  1523742,
  1533166,
  1536878,
  1609390,
  1611374,
  1660366,
  1777582,
  1824782
  ]

theorem killed_mod109_length :
    killed_mod109.length = 60 :=
  rfl

def all_killed_mod109 : List Nat → Prop
  | [] => True
  | x :: xs =>
      ¬ IsFourthMod109 (rhs_mod109_res (x % 109)) ∧ all_killed_mod109 xs

set_option maxRecDepth 32768
set_option maxHeartbeats 4000000

theorem all_killed_mod109_list :
    all_killed_mod109 killed_mod109 :=
  ⟨not_is_fourth_109_90, ⟨not_is_fourth_109_10, ⟨not_is_fourth_109_74, ⟨not_is_fourth_109_90, ⟨not_is_fourth_109_57, ⟨not_is_fourth_109_85, ⟨not_is_fourth_109_74, ⟨not_is_fourth_109_32, ⟨not_is_fourth_109_43, ⟨not_is_fourth_109_24, ⟨not_is_fourth_109_52, ⟨not_is_fourth_109_24, ⟨not_is_fourth_109_70, ⟨not_is_fourth_109_12, ⟨not_is_fourth_109_40, ⟨not_is_fourth_109_91, ⟨not_is_fourth_109_94, ⟨not_is_fourth_109_64, ⟨not_is_fourth_109_30, ⟨not_is_fourth_109_91, ⟨not_is_fourth_109_70, ⟨not_is_fourth_109_46, ⟨not_is_fourth_109_108, ⟨not_is_fourth_109_79, ⟨not_is_fourth_109_46, ⟨not_is_fourth_109_96, ⟨not_is_fourth_109_13, ⟨not_is_fourth_109_10, ⟨not_is_fourth_109_96, ⟨not_is_fourth_109_14, ⟨not_is_fourth_109_85, ⟨not_is_fourth_109_108, ⟨not_is_fourth_109_10, ⟨not_is_fourth_109_102, ⟨not_is_fourth_109_94, ⟨not_is_fourth_109_24, ⟨not_is_fourth_109_23, ⟨not_is_fourth_109_74, ⟨not_is_fourth_109_17, ⟨not_is_fourth_109_85, ⟨not_is_fourth_109_90, ⟨not_is_fourth_109_58, ⟨not_is_fourth_109_53, ⟨not_is_fourth_109_74, ⟨not_is_fourth_109_43, ⟨not_is_fourth_109_10, ⟨not_is_fourth_109_64, ⟨not_is_fourth_109_32, ⟨not_is_fourth_109_102, ⟨not_is_fourth_109_53, ⟨not_is_fourth_109_94, ⟨not_is_fourth_109_94, ⟨not_is_fourth_109_40, ⟨not_is_fourth_109_82, ⟨not_is_fourth_109_96, ⟨not_is_fourth_109_37, ⟨not_is_fourth_109_32, ⟨not_is_fourth_109_24, ⟨not_is_fourth_109_52, ⟨not_is_fourth_109_24, True.intro⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩

theorem not_fourth_of_all_killed_109 :
    ∀ l : List Nat, all_killed_mod109 l →
      ∀ B : Nat, B ∈ l → ¬ IsFourthMod109 (rhs_mod109_res (B % 109))
  | [], _, _B, hB => nomatch hB
  | _x :: xs, ⟨hx, hxs⟩, B, hB =>
    match hB with
    | List.Mem.head _ => hx
    | List.Mem.tail _ h' => not_fourth_of_all_killed_109 xs hxs B h'

theorem killed_mod109_rhs (B : Nat)
    (hB : B ∈ killed_mod109) :
    ¬ IsFourthMod109 (rhs_mod109 B) :=
  let hnot : ¬ IsFourthMod109 (rhs_mod109_res (B % 109)) :=
    not_fourth_of_all_killed_109 killed_mod109
      all_killed_mod109_list B hB
  Eq.rec (motive := fun t (_ : rhs_mod109_res (B % 109) = t) =>
      ¬ IsFourthMod109 t)
    hnot (rhs_mod109_eq_res B).symm

theorem beal_4_13_13_gap3_B_le_2M_eliminated_86_mod109
    (B : Nat) (hB : B ∈ killed_mod109) :
    ¬ ∃ A, Nat.pow A 4 + Nat.pow B 4 = Nat.pow (B + 3) 13 :=
  direct_mod109_kill B (killed_mod109_rhs B hB)
def survivors_86_concrete : List Nat :=
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

theorem survivors_86_concrete_length :
    survivors_86_concrete.length = 86 :=
  rfl

theorem survivors_86_concrete_eq :
    survivors_86_concrete =
      BealLevel26Foundations.BealFreyMod53Kill.survivors_86_list :=
  rfl


def all_no_A : List Nat → Prop
  | [] => True
  | x :: xs =>
      (¬ ∃ A, Nat.pow A 4 + Nat.pow x 4 = Nat.pow (x + 3) 13) ∧
        all_no_A xs

theorem no_A_of_all :
    ∀ l : List Nat, all_no_A l →
      ∀ B : Nat, B ∈ l →
        ¬ ∃ A, Nat.pow A 4 + Nat.pow B 4 = Nat.pow (B + 3) 13
  | [], _, _B, hB => nomatch hB
  | _x :: xs, ⟨hx, hxs⟩, B, hB =>
    match hB with
    | List.Mem.head _ => hx
    | List.Mem.tail _ h' => no_A_of_all xs hxs B h'

set_option maxRecDepth 32768
set_option maxHeartbeats 4000000

theorem all_no_A_survivors_86 :
    all_no_A survivors_86_concrete :=
  ⟨direct_mod29_kill 63982
      (not_fourth_rhs_mod29_of_res 63982 8 rfl not_is_fourth_29_14),
    ⟨direct_mod29_kill 77118
      (not_fourth_rhs_mod29_of_res 77118 7 rfl not_is_fourth_29_3),
    ⟨direct_mod29_kill 77902
      (not_fourth_rhs_mod29_of_res 77902 8 rfl not_is_fourth_29_14),
    ⟨direct_mod29_kill 86798
      (not_fourth_rhs_mod29_of_res 86798 1 rfl not_is_fourth_29_21),
    ⟨direct_mod29_kill 87582
      (not_fourth_rhs_mod29_of_res 87582 2 rfl not_is_fourth_29_19),
    ⟨direct_mod29_kill 143614
      (not_fourth_rhs_mod29_of_res 143614 6 rfl not_is_fourth_29_22),
    ⟨direct_mod29_kill 145742
      (not_fourth_rhs_mod29_of_res 145742 17 rfl not_is_fourth_29_15),
    ⟨direct_mod29_kill 163118
      (not_fourth_rhs_mod29_of_res 163118 22 rfl not_is_fourth_29_13),
    ⟨direct_mod29_kill 185102
      (not_fourth_rhs_mod29_of_res 185102 24 rfl not_is_fourth_29_28),
    ⟨direct_mod109_kill 214430
      (not_fourth_rhs_mod109_of_res 214430 27 rfl not_is_fourth_109_32),
    ⟨direct_mod29_kill 226846
      (not_fourth_rhs_mod29_of_res 226846 8 rfl not_is_fourth_29_14),
    ⟨direct_mod29_kill 239934
      (not_fourth_rhs_mod29_of_res 239934 17 rfl not_is_fourth_29_15),
    ⟨direct_mod29_kill 277854
      (not_fourth_rhs_mod29_of_res 277854 5 rfl not_is_fourth_29_2),
    ⟨direct_mod29_kill 306110
      (not_fourth_rhs_mod29_of_res 306110 15 rfl not_is_fourth_29_17),
    ⟨direct_mod109_kill 312798
      (not_fourth_rhs_mod109_of_res 312798 77 rfl not_is_fourth_109_52),
    ⟨direct_mod29_kill 349358
      (not_fourth_rhs_mod29_of_res 349358 24 rfl not_is_fourth_29_28),
    ⟨direct_mod29_kill 368462
      (not_fourth_rhs_mod29_of_res 368462 17 rfl not_is_fourth_29_15),
    ⟨direct_mod29_kill 376814
      (not_fourth_rhs_mod29_of_res 376814 17 rfl not_is_fourth_29_15),
    ⟨direct_mod29_kill 403358
      (not_fourth_rhs_mod29_of_res 403358 26 rfl not_is_fourth_29_6),
    ⟨direct_mod29_kill 418446
      (not_fourth_rhs_mod29_of_res 418446 5 rfl not_is_fourth_29_2),
    ⟨direct_mod29_kill 442958
      (not_fourth_rhs_mod29_of_res 442958 12 rfl not_is_fourth_29_26),
    ⟨direct_mod29_kill 463390
      (not_fourth_rhs_mod29_of_res 463390 28 rfl not_is_fourth_29_13),
    ⟨direct_mod29_kill 463742
      (not_fourth_rhs_mod29_of_res 463742 3 rfl not_is_fourth_29_11),
    ⟨direct_mod29_kill 476158
      (not_fourth_rhs_mod29_of_res 476158 7 rfl not_is_fourth_29_3),
    ⟨direct_mod109_kill 477854
      (not_fourth_rhs_mod109_of_res 477854 107 rfl not_is_fourth_109_94),
    ⟨direct_mod29_kill 502318
      (not_fourth_rhs_mod29_of_res 502318 9 rfl not_is_fourth_29_5),
    ⟨direct_mod29_kill 589982
      (not_fourth_rhs_mod29_of_res 589982 6 rfl not_is_fourth_29_22),
    ⟨direct_mod109_kill 603358
      (not_fourth_rhs_mod109_of_res 603358 43 rfl not_is_fourth_109_30),
    ⟨direct_mod29_kill 607406
      (not_fourth_rhs_mod29_of_res 607406 1 rfl not_is_fourth_29_21),
    ⟨direct_mod29_kill 632910
      (not_fourth_rhs_mod29_of_res 632910 14 rfl not_is_fourth_29_26),
    ⟨direct_mod29_kill 653342
      (not_fourth_rhs_mod29_of_res 653342 1 rfl not_is_fourth_29_21),
    ⟨direct_mod29_kill 671502
      (not_fourth_rhs_mod29_of_res 671502 7 rfl not_is_fourth_29_3),
    ⟨direct_mod29_kill 694286
      (not_fourth_rhs_mod29_of_res 694286 26 rfl not_is_fourth_29_6),
    ⟨direct_mod29_kill 723118
      (not_fourth_rhs_mod29_of_res 723118 3 rfl not_is_fourth_29_11),
    ⟨direct_mod29_kill 735518
      (not_fourth_rhs_mod29_of_res 735518 20 rfl not_is_fourth_29_17),
    ⟨direct_mod29_kill 737214
      (not_fourth_rhs_mod29_of_res 737214 5 rfl not_is_fourth_29_2),
    ⟨direct_mod29_kill 738910
      (not_fourth_rhs_mod29_of_res 738910 19 rfl not_is_fourth_29_9),
    ⟨direct_mod29_kill 787246
      (not_fourth_rhs_mod29_of_res 787246 12 rfl not_is_fourth_29_26),
    ⟨direct_mod109_kill 813118
      (not_fourth_rhs_mod109_of_res 813118 87 rfl not_is_fourth_109_96),
    ⟨direct_mod29_kill 821166
      (not_fourth_rhs_mod29_of_res 821166 2 rfl not_is_fourth_29_19),
    ⟨direct_mod29_kill 832190
      (not_fourth_rhs_mod29_of_res 832190 6 rfl not_is_fourth_29_22),
    ⟨direct_mod29_kill 835902
      (not_fourth_rhs_mod29_of_res 835902 6 rfl not_is_fourth_29_22),
    ⟨direct_mod109_kill 863694
      (not_fourth_rhs_mod109_of_res 863694 87 rfl not_is_fourth_109_96),
    ⟨direct_mod29_kill 874462
      (not_fourth_rhs_mod29_of_res 874462 25 rfl not_is_fourth_29_4),
    ⟨direct_mod29_kill 885198
      (not_fourth_rhs_mod29_of_res 885198 2 rfl not_is_fourth_29_19),
    ⟨direct_mod29_kill 901006
      (not_fourth_rhs_mod29_of_res 901006 5 rfl not_is_fourth_29_2),
    ⟨direct_mod29_kill 904702
      (not_fourth_rhs_mod29_of_res 904702 18 rfl not_is_fourth_29_15),
    ⟨direct_mod29_kill 914094
      (not_fourth_rhs_mod29_of_res 914094 14 rfl not_is_fourth_29_26),
    ⟨direct_mod29_kill 958670
      (not_fourth_rhs_mod29_of_res 958670 17 rfl not_is_fourth_29_15),
    ⟨direct_mod29_kill 991614
      (not_fourth_rhs_mod29_of_res 991614 17 rfl not_is_fourth_29_15),
    ⟨direct_mod29_kill 1050254
      (not_fourth_rhs_mod29_of_res 1050254 19 rfl not_is_fourth_29_9),
    ⟨direct_mod29_kill 1056062
      (not_fourth_rhs_mod29_of_res 1056062 27 rfl not_is_fourth_29_14),
    ⟨direct_mod29_kill 1078190
      (not_fourth_rhs_mod29_of_res 1078190 28 rfl not_is_fourth_29_13),
    ⟨direct_mod29_kill 1105742
      (not_fourth_rhs_mod29_of_res 1105742 1 rfl not_is_fourth_29_21),
    ⟨direct_mod29_kill 1133550
      (not_fourth_rhs_mod29_of_res 1133550 27 rfl not_is_fourth_29_14),
    ⟨direct_mod109_kill 1136270
      (not_fourth_rhs_mod109_of_res 1136270 54 rfl not_is_fourth_109_74),
    ⟨direct_mod29_kill 1155358
      (not_fourth_rhs_mod29_of_res 1155358 27 rfl not_is_fourth_29_14),
    ⟨direct_mod29_kill 1170126
      (not_fourth_rhs_mod29_of_res 1170126 5 rfl not_is_fourth_29_2),
    ⟨direct_mod29_kill 1181566
      (not_fourth_rhs_mod29_of_res 1181566 19 rfl not_is_fourth_29_9),
    ⟨direct_mod29_kill 1184238
      (not_fourth_rhs_mod29_of_res 1184238 23 rfl not_is_fourth_29_19),
    ⟨direct_mod29_kill 1203742
      (not_fourth_rhs_mod29_of_res 1203742 10 rfl not_is_fourth_29_14),
    ⟨direct_mod29_kill 1205742
      (not_fourth_rhs_mod29_of_res 1205742 9 rfl not_is_fourth_29_5),
    ⟨direct_mod29_kill 1219854
      (not_fourth_rhs_mod29_of_res 1219854 27 rfl not_is_fourth_29_14),
    ⟨direct_mod109_kill 1287998
      (not_fourth_rhs_mod109_of_res 1287998 54 rfl not_is_fourth_109_74),
    ⟨direct_mod29_kill 1296366
      (not_fourth_rhs_mod29_of_res 1296366 8 rfl not_is_fourth_29_14),
    ⟨direct_mod29_kill 1357038
      (not_fourth_rhs_mod29_of_res 1357038 12 rfl not_is_fourth_29_26),
    ⟨direct_mod29_kill 1359054
      (not_fourth_rhs_mod29_of_res 1359054 27 rfl not_is_fourth_29_14),
    ⟨direct_mod29_kill 1374782
      (not_fourth_rhs_mod29_of_res 1374782 8 rfl not_is_fourth_29_14),
    ⟨direct_mod29_kill 1386910
      (not_fourth_rhs_mod29_of_res 1386910 14 rfl not_is_fourth_29_26),
    ⟨direct_mod29_kill 1401326
      (not_fourth_rhs_mod29_of_res 1401326 17 rfl not_is_fourth_29_15),
    ⟨direct_mod109_kill 1420830
      (not_fourth_rhs_mod109_of_res 1420830 15 rfl not_is_fourth_109_102),
    ⟨direct_mod29_kill 1430878
      (not_fourth_rhs_mod29_of_res 1430878 18 rfl not_is_fourth_29_15),
    ⟨direct_mod29_kill 1434590
      (not_fourth_rhs_mod29_of_res 1434590 18 rfl not_is_fourth_29_15),
    ⟨direct_mod29_kill 1441310
      (not_fourth_rhs_mod29_of_res 1441310 10 rfl not_is_fourth_29_14),
    ⟨direct_mod29_kill 1473774
      (not_fourth_rhs_mod29_of_res 1473774 23 rfl not_is_fourth_29_19),
    ⟨direct_mod29_kill 1520766
      (not_fourth_rhs_mod29_of_res 1520766 6 rfl not_is_fourth_29_22),
    ⟨direct_mod29_kill 1523742
      (not_fourth_rhs_mod29_of_res 1523742 24 rfl not_is_fourth_29_28),
    ⟨direct_mod29_kill 1533166
      (not_fourth_rhs_mod29_of_res 1533166 23 rfl not_is_fourth_29_19),
    ⟨direct_mod29_kill 1536878
      (not_fourth_rhs_mod29_of_res 1536878 23 rfl not_is_fourth_29_19),
    ⟨direct_mod29_kill 1609390
      (not_fourth_rhs_mod29_of_res 1609390 6 rfl not_is_fourth_29_22),
    ⟨direct_mod29_kill 1611374
      (not_fourth_rhs_mod29_of_res 1611374 18 rfl not_is_fourth_29_15),
    ⟨direct_mod29_kill 1660366
      (not_fourth_rhs_mod29_of_res 1660366 0 rfl not_is_fourth_29_19),
    ⟨direct_mod29_kill 1752702
      (not_fourth_rhs_mod29_of_res 1752702 0 rfl not_is_fourth_29_19),
    ⟨direct_mod29_kill 1777582
      (not_fourth_rhs_mod29_of_res 1777582 27 rfl not_is_fourth_29_14),
    ⟨direct_mod29_kill 1824782
      (not_fourth_rhs_mod29_of_res 1824782 15 rfl not_is_fourth_29_17),
    ⟨direct_mod29_kill 1858398
      (not_fourth_rhs_mod29_of_res 1858398 20 rfl not_is_fourth_29_17),
    True.intro⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩

/-- All 86 mod-53 survivors die by a fourth-power
    non-residue at q=29 (77 rows) or q=109 (9 rows).
    Empty axioms.  Not Ribet.  Not BCDT.
    The pack name
    `beal_4_13_13_gap3_B_le_2M_eliminated_86`
    stays the uninhabited Prop. -/
theorem beal_4_13_13_gap3_B_le_2M_eliminated_86_modq
    (B : Nat)
    (hMem : B ∈ BealLevel26Foundations.BealFreyMod53Kill.survivors_86_list) :
    ¬ ∃ A, Nat.pow A 4 + Nat.pow B 4 = Nat.pow (B + 3) 13 :=
  let h' : B ∈ survivors_86_concrete :=
    Eq.rec (motive := fun t (_ :
        BealLevel26Foundations.BealFreyMod53Kill.survivors_86_list = t) =>
        B ∈ t)
      hMem survivors_86_concrete_eq.symm
  no_A_of_all survivors_86_concrete all_no_A_survivors_86 B h'

open BealLevel26Foundations.Step60B14List

theorem not_fourth_rhs_mod53_of_res (B r : Nat)
    (hr : B % 53 = r)
    (hnot : ¬ BealLevel26Foundations.BealFreyMod53Kill.IsFourthMod53
      (BealLevel26Foundations.BealFreyMod53Kill.rhs_mod53_res r)) :
    ¬ BealLevel26Foundations.BealFreyMod53Kill.IsFourthMod53
      (BealLevel26Foundations.BealFreyMod53Kill.rhs_mod53 B) :=
  let h1 : BealLevel26Foundations.BealFreyMod53Kill.rhs_mod53 B =
      BealLevel26Foundations.BealFreyMod53Kill.rhs_mod53_res (B % 53) :=
    BealLevel26Foundations.BealFreyMod53Kill.rhs_mod53_eq_res B
  let h2 :
      BealLevel26Foundations.BealFreyMod53Kill.rhs_mod53_res (B % 53) =
        BealLevel26Foundations.BealFreyMod53Kill.rhs_mod53_res r :=
    congrArg BealLevel26Foundations.BealFreyMod53Kill.rhs_mod53_res hr
  Eq.rec (motive := fun (t : Nat) (_ :
      BealLevel26Foundations.BealFreyMod53Kill.rhs_mod53_res r = t) =>
      ¬ BealLevel26Foundations.BealFreyMod53Kill.IsFourthMod53 t)
    hnot (h2.symm.trans h1.symm)

def step60_b14_concrete : List Nat :=
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
  63982,
  67038,
  71710,
  77118,
  77902,
  79454,
  85662,
  86798,
  87582,
  89934,
  102126,
  115246,
  117374,
  119502,
  136878,
  143614,
  145742,
  147870,
  149998,
  158862,
  163118,
  167726,
  174110,
  175886,
  176238,
  180494,
  185102,
  201678,
  203022,
  214430,
  214766,
  226174,
  226846,
  228190,
  239934,
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
  277854,
  287918,
  288590,
  288926,
  306110,
  312798,
  314126,
  324222,
  327902,
  329918,
  331598,
  344990,
  348718,
  349038,
  349358,
  351710,
  356750,
  362750,
  368462,
  372814,
  376814,
  379534,
  403358,
  411086,
  413758,
  415454,
  416462,
  417790,
  418446,
  423854,
  427198,
  429214,
  432878,
  442958,
  457006,
  459358,
  463390,
  463742,
  464430,
  465118,
  466478,
  471150,
  476158,
  476510,
  477518,
  477854,
  502318,
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
  589982,
  591326,
  603358,
  607406,
  610782,
  613790,
  614446,
  623486,
  626174,
  627166,
  629566,
  630558,
  632910,
  647294,
  653342,
  661054,
  671502,
  676174,
  682542,
  685902,
  687582,
  694286,
  698974,
  707694,
  715086,
  716430,
  719774,
  723118,
  735518,
  737214,
  738910,
  743918,
  763070,
  775822,
  777838,
  782558,
  782894,
  786222,
  787246,
  787582,
  792606,
  799006,
  800334,
  813118,
  821166,
  826174,
  829870,
  832190,
  834590,
  835902,
  836238,
  845614,
  851966,
  853630,
  857982,
  862014,
  863694,
  874462,
  878814,
  880190,
  885198,
  887854,
  894254,
  901006,
  904702,
  905038,
  914094,
  916430,
  921806,
  936526,
  939934,
  946958,
  958670,
  960350,
  967054,
  975470,
  988974,
  991614,
  998990,
  1001342,
  1020798,
  1040222,
  1050254,
  1056062,
  1056398,
  1058030,
  1058366,
  1061422,
  1078190,
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
  1105742,
  1111102,
  1118126,
  1124798,
  1133550,
  1136270,
  1144302,
  1155358,
  1156046,
  1156718,
  1165118,
  1169118,
  1170126,
  1176878,
  1180574,
  1180910,
  1181566,
  1183230,
  1184238,
  1192958,
  1193294,
  1199998,
  1203742,
  1205742,
  1214446,
  1215790,
  1219854,
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
  1287998,
  1293006,
  1294334,
  1296366,
  1298334,
  1299998,
  1302350,
  1316174,
  1320862,
  1328238,
  1333278,
  1341342,
  1355374,
  1357038,
  1359054,
  1364078,
  1366766,
  1372462,
  1374782,
  1375806,
  1385902,
  1386910,
  1394974,
  1401326,
  1420830,
  1425166,
  1430878,
  1433214,
  1434590,
  1441310,
  1441646,
  1442958,
  1445342,
  1449326,
  1453374,
  1457358,
  1469774,
  1471134,
  1473774,
  1475134,
  1496654,
  1514382,
  1515726,
  1517406,
  1518398,
  1520766,
  1523742,
  1533166,
  1534510,
  1536878,
  1555710,
  1557038,
  1571806,
  1575838,
  1588238,
  1588574,
  1598974,
  1607358,
  1608702,
  1609390,
  1611374,
  1617790,
  1628206,
  1648238,
  1660366,
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
  1752702,
  1760478,
  1769214,
  1777582,
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
  1824782,
  1828510,
  1842254,
  1847278,
  1858398,
  1863102,
  1864126,
  1879214,
  1879886
  ]

theorem step60_b14_concrete_length :
    step60_b14_concrete.length = 352 :=
  rfl

theorem step60_b14_concrete_eq :
    step60_b14_concrete = step60_b14_list :=
  rfl

set_option maxRecDepth 32768
set_option maxHeartbeats 8000000

theorem all_no_A_step60 :
    all_no_A step60_b14_concrete :=
  ⟨BealLevel26Foundations.BealFreyMod53Kill.direct_mod53_kill 6046
      (not_fourth_rhs_mod53_of_res 6046 4 rfl BealLevel26Foundations.BealFreyMod53Kill.not_is_fourth_8),
    ⟨BealLevel26Foundations.BealFreyMod53Kill.direct_mod53_kill 15406
      (not_fourth_rhs_mod53_of_res 15406 36 rfl BealLevel26Foundations.BealFreyMod53Kill.not_is_fourth_37),
    ⟨BealLevel26Foundations.BealFreyMod53Kill.direct_mod53_kill 18526
      (not_fourth_rhs_mod53_of_res 18526 29 rfl BealLevel26Foundations.BealFreyMod53Kill.not_is_fourth_34),
    ⟨BealLevel26Foundations.BealFreyMod53Kill.direct_mod53_kill 19310
      (not_fourth_rhs_mod53_of_res 19310 18 rfl BealLevel26Foundations.BealFreyMod53Kill.not_is_fourth_40),
    ⟨BealLevel26Foundations.BealFreyMod53Kill.direct_mod53_kill 19694
      (not_fourth_rhs_mod53_of_res 19694 31 rfl BealLevel26Foundations.BealFreyMod53Kill.not_is_fourth_27),
    ⟨BealLevel26Foundations.BealFreyMod53Kill.direct_mod53_kill 22814
      (not_fourth_rhs_mod53_of_res 22814 24 rfl BealLevel26Foundations.BealFreyMod53Kill.not_is_fourth_27),
    ⟨BealLevel26Foundations.BealFreyMod53Kill.direct_mod53_kill 31006
      (not_fourth_rhs_mod53_of_res 31006 1 rfl BealLevel26Foundations.BealFreyMod53Kill.not_is_fourth_51),
    ⟨BealLevel26Foundations.BealFreyMod53Kill.direct_mod53_kill 37246
      (not_fourth_rhs_mod53_of_res 37246 40 rfl BealLevel26Foundations.BealFreyMod53Kill.not_is_fourth_5),
    ⟨BealLevel26Foundations.BealFreyMod53Kill.direct_mod53_kill 54302
      (not_fourth_rhs_mod53_of_res 54302 30 rfl BealLevel26Foundations.BealFreyMod53Kill.not_is_fourth_22),
    ⟨direct_mod29_kill 63982
      (not_fourth_rhs_mod29_of_res 63982 8 rfl not_is_fourth_29_14),
    ⟨BealLevel26Foundations.BealFreyMod53Kill.direct_mod53_kill 67038
      (not_fourth_rhs_mod53_of_res 67038 46 rfl BealLevel26Foundations.BealFreyMod53Kill.not_is_fourth_38),
    ⟨BealLevel26Foundations.BealFreyMod53Kill.direct_mod53_kill 71710
      (not_fourth_rhs_mod53_of_res 71710 1 rfl BealLevel26Foundations.BealFreyMod53Kill.not_is_fourth_51),
    ⟨direct_mod29_kill 77118
      (not_fourth_rhs_mod29_of_res 77118 7 rfl not_is_fourth_29_3),
    ⟨direct_mod29_kill 77902
      (not_fourth_rhs_mod29_of_res 77902 8 rfl not_is_fourth_29_14),
    ⟨BealLevel26Foundations.BealFreyMod53Kill.direct_mod53_kill 79454
      (not_fourth_rhs_mod53_of_res 79454 7 rfl BealLevel26Foundations.BealFreyMod53Kill.not_is_fourth_38),
    ⟨BealLevel26Foundations.BealFreyMod53Kill.direct_mod53_kill 85662
      (not_fourth_rhs_mod53_of_res 85662 14 rfl BealLevel26Foundations.BealFreyMod53Kill.not_is_fourth_8),
    ⟨direct_mod29_kill 86798
      (not_fourth_rhs_mod29_of_res 86798 1 rfl not_is_fourth_29_21),
    ⟨direct_mod29_kill 87582
      (not_fourth_rhs_mod29_of_res 87582 2 rfl not_is_fourth_29_19),
    ⟨BealLevel26Foundations.BealFreyMod53Kill.direct_mod53_kill 89934
      (not_fourth_rhs_mod53_of_res 89934 46 rfl BealLevel26Foundations.BealFreyMod53Kill.not_is_fourth_38),
    ⟨BealLevel26Foundations.BealFreyMod53Kill.direct_mod53_kill 102126
      (not_fourth_rhs_mod53_of_res 102126 48 rfl BealLevel26Foundations.BealFreyMod53Kill.not_is_fourth_34),
    ⟨BealLevel26Foundations.BealFreyMod53Kill.direct_mod53_kill 115246
      (not_fourth_rhs_mod53_of_res 115246 24 rfl BealLevel26Foundations.BealFreyMod53Kill.not_is_fourth_27),
    ⟨BealLevel26Foundations.BealFreyMod53Kill.direct_mod53_kill 117374
      (not_fourth_rhs_mod53_of_res 117374 32 rfl BealLevel26Foundations.BealFreyMod53Kill.not_is_fourth_6),
    ⟨BealLevel26Foundations.BealFreyMod53Kill.direct_mod53_kill 119502
      (not_fourth_rhs_mod53_of_res 119502 40 rfl BealLevel26Foundations.BealFreyMod53Kill.not_is_fourth_5),
    ⟨BealLevel26Foundations.BealFreyMod53Kill.direct_mod53_kill 136878
      (not_fourth_rhs_mod53_of_res 136878 32 rfl BealLevel26Foundations.BealFreyMod53Kill.not_is_fourth_6),
    ⟨direct_mod29_kill 143614
      (not_fourth_rhs_mod29_of_res 143614 6 rfl not_is_fourth_29_22),
    ⟨direct_mod29_kill 145742
      (not_fourth_rhs_mod29_of_res 145742 17 rfl not_is_fourth_29_15),
    ⟨BealLevel26Foundations.BealFreyMod53Kill.direct_mod53_kill 147870
      (not_fourth_rhs_mod53_of_res 147870 0 rfl BealLevel26Foundations.BealFreyMod53Kill.not_is_fourth_30),
    ⟨BealLevel26Foundations.BealFreyMod53Kill.direct_mod53_kill 149998
      (not_fourth_rhs_mod53_of_res 149998 8 rfl BealLevel26Foundations.BealFreyMod53Kill.not_is_fourth_37),
    ⟨BealLevel26Foundations.BealFreyMod53Kill.direct_mod53_kill 158862
      (not_fourth_rhs_mod53_of_res 158862 21 rfl BealLevel26Foundations.BealFreyMod53Kill.not_is_fourth_30),
    ⟨direct_mod29_kill 163118
      (not_fourth_rhs_mod29_of_res 163118 22 rfl not_is_fourth_29_13),
    ⟨BealLevel26Foundations.BealFreyMod53Kill.direct_mod53_kill 167726
      (not_fourth_rhs_mod53_of_res 167726 34 rfl BealLevel26Foundations.BealFreyMod53Kill.not_is_fourth_5),
    ⟨BealLevel26Foundations.BealFreyMod53Kill.direct_mod53_kill 174110
      (not_fourth_rhs_mod53_of_res 174110 5 rfl BealLevel26Foundations.BealFreyMod53Kill.not_is_fourth_34),
    ⟨BealLevel26Foundations.BealFreyMod53Kill.direct_mod53_kill 175886
      (not_fourth_rhs_mod53_of_res 175886 32 rfl BealLevel26Foundations.BealFreyMod53Kill.not_is_fourth_6),
    ⟨BealLevel26Foundations.BealFreyMod53Kill.direct_mod53_kill 176238
      (not_fourth_rhs_mod53_of_res 176238 13 rfl BealLevel26Foundations.BealFreyMod53Kill.not_is_fourth_7),
    ⟨BealLevel26Foundations.BealFreyMod53Kill.direct_mod53_kill 180494
      (not_fourth_rhs_mod53_of_res 180494 29 rfl BealLevel26Foundations.BealFreyMod53Kill.not_is_fourth_34),
    ⟨direct_mod29_kill 185102
      (not_fourth_rhs_mod29_of_res 185102 24 rfl not_is_fourth_29_28),
    ⟨BealLevel26Foundations.BealFreyMod53Kill.direct_mod53_kill 201678
      (not_fourth_rhs_mod53_of_res 201678 13 rfl BealLevel26Foundations.BealFreyMod53Kill.not_is_fourth_7),
    ⟨BealLevel26Foundations.BealFreyMod53Kill.direct_mod53_kill 203022
      (not_fourth_rhs_mod53_of_res 203022 32 rfl BealLevel26Foundations.BealFreyMod53Kill.not_is_fourth_6),
    ⟨direct_mod109_kill 214430
      (not_fourth_rhs_mod109_of_res 214430 27 rfl not_is_fourth_109_32),
    ⟨BealLevel26Foundations.BealFreyMod53Kill.direct_mod53_kill 214766
      (not_fourth_rhs_mod53_of_res 214766 10 rfl BealLevel26Foundations.BealFreyMod53Kill.not_is_fourth_18),
    ⟨BealLevel26Foundations.BealFreyMod53Kill.direct_mod53_kill 226174
      (not_fourth_rhs_mod53_of_res 226174 23 rfl BealLevel26Foundations.BealFreyMod53Kill.not_is_fourth_29),
    ⟨direct_mod29_kill 226846
      (not_fourth_rhs_mod29_of_res 226846 8 rfl not_is_fourth_29_14),
    ⟨BealLevel26Foundations.BealFreyMod53Kill.direct_mod53_kill 228190
      (not_fourth_rhs_mod53_of_res 228190 25 rfl BealLevel26Foundations.BealFreyMod53Kill.not_is_fourth_39),
    ⟨direct_mod29_kill 239934
      (not_fourth_rhs_mod29_of_res 239934 17 rfl not_is_fourth_29_15),
    ⟨BealLevel26Foundations.BealFreyMod53Kill.direct_mod53_kill 240942
      (not_fourth_rhs_mod53_of_res 240942 4 rfl BealLevel26Foundations.BealFreyMod53Kill.not_is_fourth_8),
    ⟨BealLevel26Foundations.BealFreyMod53Kill.direct_mod53_kill 251678
      (not_fourth_rhs_mod53_of_res 251678 34 rfl BealLevel26Foundations.BealFreyMod53Kill.not_is_fourth_5),
    ⟨BealLevel26Foundations.BealFreyMod53Kill.direct_mod53_kill 252014
      (not_fourth_rhs_mod53_of_res 252014 52 rfl BealLevel26Foundations.BealFreyMod53Kill.not_is_fourth_29),
    ⟨BealLevel26Foundations.BealFreyMod53Kill.direct_mod53_kill 262078
      (not_fourth_rhs_mod53_of_res 262078 46 rfl BealLevel26Foundations.BealFreyMod53Kill.not_is_fourth_38),
    ⟨BealLevel26Foundations.BealFreyMod53Kill.direct_mod53_kill 263758
      (not_fourth_rhs_mod53_of_res 263758 30 rfl BealLevel26Foundations.BealFreyMod53Kill.not_is_fourth_22),
    ⟨BealLevel26Foundations.BealFreyMod53Kill.direct_mod53_kill 264430
      (not_fourth_rhs_mod53_of_res 264430 13 rfl BealLevel26Foundations.BealFreyMod53Kill.not_is_fourth_7),
    ⟨BealLevel26Foundations.BealFreyMod53Kill.direct_mod53_kill 265774
      (not_fourth_rhs_mod53_of_res 265774 32 rfl BealLevel26Foundations.BealFreyMod53Kill.not_is_fourth_6),
    ⟨BealLevel26Foundations.BealFreyMod53Kill.direct_mod53_kill 276174
      (not_fourth_rhs_mod53_of_res 276174 44 rfl BealLevel26Foundations.BealFreyMod53Kill.not_is_fourth_12),
    ⟨BealLevel26Foundations.BealFreyMod53Kill.direct_mod53_kill 276510
      (not_fourth_rhs_mod53_of_res 276510 9 rfl BealLevel26Foundations.BealFreyMod53Kill.not_is_fourth_34),
    ⟨BealLevel26Foundations.BealFreyMod53Kill.direct_mod53_kill 276846
      (not_fourth_rhs_mod53_of_res 276846 27 rfl BealLevel26Foundations.BealFreyMod53Kill.not_is_fourth_20),
    ⟨BealLevel26Foundations.BealFreyMod53Kill.direct_mod53_kill 277518
      (not_fourth_rhs_mod53_of_res 277518 10 rfl BealLevel26Foundations.BealFreyMod53Kill.not_is_fourth_18),
    ⟨direct_mod29_kill 277854
      (not_fourth_rhs_mod29_of_res 277854 5 rfl not_is_fourth_29_2),
    ⟨BealLevel26Foundations.BealFreyMod53Kill.direct_mod53_kill 287918
      (not_fourth_rhs_mod53_of_res 287918 22 rfl BealLevel26Foundations.BealFreyMod53Kill.not_is_fourth_3),
    ⟨BealLevel26Foundations.BealFreyMod53Kill.direct_mod53_kill 288590
      (not_fourth_rhs_mod53_of_res 288590 5 rfl BealLevel26Foundations.BealFreyMod53Kill.not_is_fourth_34),
    ⟨BealLevel26Foundations.BealFreyMod53Kill.direct_mod53_kill 288926
      (not_fourth_rhs_mod53_of_res 288926 23 rfl BealLevel26Foundations.BealFreyMod53Kill.not_is_fourth_29),
    ⟨direct_mod29_kill 306110
      (not_fourth_rhs_mod29_of_res 306110 15 rfl not_is_fourth_29_17),
    ⟨direct_mod109_kill 312798
      (not_fourth_rhs_mod109_of_res 312798 77 rfl not_is_fourth_109_52),
    ⟨BealLevel26Foundations.BealFreyMod53Kill.direct_mod53_kill 314126
      (not_fourth_rhs_mod53_of_res 314126 48 rfl BealLevel26Foundations.BealFreyMod53Kill.not_is_fourth_34),
    ⟨BealLevel26Foundations.BealFreyMod53Kill.direct_mod53_kill 324222
      (not_fourth_rhs_mod53_of_res 324222 21 rfl BealLevel26Foundations.BealFreyMod53Kill.not_is_fourth_30),
    ⟨BealLevel26Foundations.BealFreyMod53Kill.direct_mod53_kill 327902
      (not_fourth_rhs_mod53_of_res 327902 44 rfl BealLevel26Foundations.BealFreyMod53Kill.not_is_fourth_12),
    ⟨BealLevel26Foundations.BealFreyMod53Kill.direct_mod53_kill 329918
      (not_fourth_rhs_mod53_of_res 329918 46 rfl BealLevel26Foundations.BealFreyMod53Kill.not_is_fourth_38),
    ⟨BealLevel26Foundations.BealFreyMod53Kill.direct_mod53_kill 331598
      (not_fourth_rhs_mod53_of_res 331598 30 rfl BealLevel26Foundations.BealFreyMod53Kill.not_is_fourth_22),
    ⟨BealLevel26Foundations.BealFreyMod53Kill.direct_mod53_kill 344990
      (not_fourth_rhs_mod53_of_res 344990 13 rfl BealLevel26Foundations.BealFreyMod53Kill.not_is_fourth_7),
    ⟨BealLevel26Foundations.BealFreyMod53Kill.direct_mod53_kill 348718
      (not_fourth_rhs_mod53_of_res 348718 31 rfl BealLevel26Foundations.BealFreyMod53Kill.not_is_fourth_27),
    ⟨BealLevel26Foundations.BealFreyMod53Kill.direct_mod53_kill 349038
      (not_fourth_rhs_mod53_of_res 349038 33 rfl BealLevel26Foundations.BealFreyMod53Kill.not_is_fourth_8),
    ⟨direct_mod29_kill 349358
      (not_fourth_rhs_mod29_of_res 349358 24 rfl not_is_fourth_29_28),
    ⟨BealLevel26Foundations.BealFreyMod53Kill.direct_mod53_kill 351710
      (not_fourth_rhs_mod53_of_res 351710 2 rfl BealLevel26Foundations.BealFreyMod53Kill.not_is_fourth_7),
    ⟨BealLevel26Foundations.BealFreyMod53Kill.direct_mod53_kill 356750
      (not_fourth_rhs_mod53_of_res 356750 7 rfl BealLevel26Foundations.BealFreyMod53Kill.not_is_fourth_38),
    ⟨BealLevel26Foundations.BealFreyMod53Kill.direct_mod53_kill 362750
      (not_fourth_rhs_mod53_of_res 362750 18 rfl BealLevel26Foundations.BealFreyMod53Kill.not_is_fourth_40),
    ⟨direct_mod29_kill 368462
      (not_fourth_rhs_mod29_of_res 368462 17 rfl not_is_fourth_29_15),
    ⟨BealLevel26Foundations.BealFreyMod53Kill.direct_mod53_kill 372814
      (not_fourth_rhs_mod53_of_res 372814 12 rfl BealLevel26Foundations.BealFreyMod53Kill.not_is_fourth_41),
    ⟨direct_mod29_kill 376814
      (not_fourth_rhs_mod29_of_res 376814 17 rfl not_is_fourth_29_15),
    ⟨BealLevel26Foundations.BealFreyMod53Kill.direct_mod53_kill 379534
      (not_fourth_rhs_mod53_of_res 379534 1 rfl BealLevel26Foundations.BealFreyMod53Kill.not_is_fourth_51),
    ⟨direct_mod29_kill 403358
      (not_fourth_rhs_mod29_of_res 403358 26 rfl not_is_fourth_29_6),
    ⟨BealLevel26Foundations.BealFreyMod53Kill.direct_mod53_kill 411086
      (not_fourth_rhs_mod53_of_res 411086 18 rfl BealLevel26Foundations.BealFreyMod53Kill.not_is_fourth_40),
    ⟨BealLevel26Foundations.BealFreyMod53Kill.direct_mod53_kill 413758
      (not_fourth_rhs_mod53_of_res 413758 40 rfl BealLevel26Foundations.BealFreyMod53Kill.not_is_fourth_5),
    ⟨BealLevel26Foundations.BealFreyMod53Kill.direct_mod53_kill 415454
      (not_fourth_rhs_mod53_of_res 415454 40 rfl BealLevel26Foundations.BealFreyMod53Kill.not_is_fourth_5),
    ⟨BealLevel26Foundations.BealFreyMod53Kill.direct_mod53_kill 416462
      (not_fourth_rhs_mod53_of_res 416462 41 rfl BealLevel26Foundations.BealFreyMod53Kill.not_is_fourth_41),
    ⟨BealLevel26Foundations.BealFreyMod53Kill.direct_mod53_kill 417790
      (not_fourth_rhs_mod53_of_res 417790 44 rfl BealLevel26Foundations.BealFreyMod53Kill.not_is_fourth_12),
    ⟨direct_mod29_kill 418446
      (not_fourth_rhs_mod29_of_res 418446 5 rfl not_is_fourth_29_2),
    ⟨BealLevel26Foundations.BealFreyMod53Kill.direct_mod53_kill 423854
      (not_fourth_rhs_mod53_of_res 423854 13 rfl BealLevel26Foundations.BealFreyMod53Kill.not_is_fourth_7),
    ⟨BealLevel26Foundations.BealFreyMod53Kill.direct_mod53_kill 427198
      (not_fourth_rhs_mod53_of_res 427198 18 rfl BealLevel26Foundations.BealFreyMod53Kill.not_is_fourth_40),
    ⟨BealLevel26Foundations.BealFreyMod53Kill.direct_mod53_kill 429214
      (not_fourth_rhs_mod53_of_res 429214 20 rfl BealLevel26Foundations.BealFreyMod53Kill.not_is_fourth_30),
    ⟨BealLevel26Foundations.BealFreyMod53Kill.direct_mod53_kill 432878
      (not_fourth_rhs_mod53_of_res 432878 27 rfl BealLevel26Foundations.BealFreyMod53Kill.not_is_fourth_20),
    ⟨direct_mod29_kill 442958
      (not_fourth_rhs_mod29_of_res 442958 12 rfl not_is_fourth_29_26),
    ⟨BealLevel26Foundations.BealFreyMod53Kill.direct_mod53_kill 457006
      (not_fourth_rhs_mod53_of_res 457006 40 rfl BealLevel26Foundations.BealFreyMod53Kill.not_is_fourth_5),
    ⟨BealLevel26Foundations.BealFreyMod53Kill.direct_mod53_kill 459358
      (not_fourth_rhs_mod53_of_res 459358 7 rfl BealLevel26Foundations.BealFreyMod53Kill.not_is_fourth_38),
    ⟨direct_mod29_kill 463390
      (not_fourth_rhs_mod29_of_res 463390 28 rfl not_is_fourth_29_13),
    ⟨direct_mod29_kill 463742
      (not_fourth_rhs_mod29_of_res 463742 3 rfl not_is_fourth_29_11),
    ⟨BealLevel26Foundations.BealFreyMod53Kill.direct_mod53_kill 464430
      (not_fourth_rhs_mod53_of_res 464430 44 rfl BealLevel26Foundations.BealFreyMod53Kill.not_is_fourth_12),
    ⟨BealLevel26Foundations.BealFreyMod53Kill.direct_mod53_kill 465118
      (not_fourth_rhs_mod53_of_res 465118 43 rfl BealLevel26Foundations.BealFreyMod53Kill.not_is_fourth_18),
    ⟨BealLevel26Foundations.BealFreyMod53Kill.direct_mod53_kill 466478
      (not_fourth_rhs_mod53_of_res 466478 25 rfl BealLevel26Foundations.BealFreyMod53Kill.not_is_fourth_39),
    ⟨BealLevel26Foundations.BealFreyMod53Kill.direct_mod53_kill 471150
      (not_fourth_rhs_mod53_of_res 471150 33 rfl BealLevel26Foundations.BealFreyMod53Kill.not_is_fourth_8),
    ⟨direct_mod29_kill 476158
      (not_fourth_rhs_mod29_of_res 476158 7 rfl not_is_fourth_29_3),
    ⟨BealLevel26Foundations.BealFreyMod53Kill.direct_mod53_kill 476510
      (not_fourth_rhs_mod53_of_res 476510 40 rfl BealLevel26Foundations.BealFreyMod53Kill.not_is_fourth_5),
    ⟨BealLevel26Foundations.BealFreyMod53Kill.direct_mod53_kill 477518
      (not_fourth_rhs_mod53_of_res 477518 41 rfl BealLevel26Foundations.BealFreyMod53Kill.not_is_fourth_41),
    ⟨direct_mod109_kill 477854
      (not_fourth_rhs_mod109_of_res 477854 107 rfl not_is_fourth_109_94),
    ⟨direct_mod29_kill 502318
      (not_fourth_rhs_mod29_of_res 502318 9 rfl not_is_fourth_29_5),
    ⟨BealLevel26Foundations.BealFreyMod53Kill.direct_mod53_kill 514734
      (not_fourth_rhs_mod53_of_res 514734 51 rfl BealLevel26Foundations.BealFreyMod53Kill.not_is_fourth_38),
    ⟨BealLevel26Foundations.BealFreyMod53Kill.direct_mod53_kill 517038
      (not_fourth_rhs_mod53_of_res 517038 23 rfl BealLevel26Foundations.BealFreyMod53Kill.not_is_fourth_29),
    ⟨BealLevel26Foundations.BealFreyMod53Kill.direct_mod53_kill 518398
      (not_fourth_rhs_mod53_of_res 518398 5 rfl BealLevel26Foundations.BealFreyMod53Kill.not_is_fourth_34),
    ⟨BealLevel26Foundations.BealFreyMod53Kill.direct_mod53_kill 523790
      (not_fourth_rhs_mod53_of_res 523790 44 rfl BealLevel26Foundations.BealFreyMod53Kill.not_is_fourth_12),
    ⟨BealLevel26Foundations.BealFreyMod53Kill.direct_mod53_kill 534814
      (not_fourth_rhs_mod53_of_res 534814 44 rfl BealLevel26Foundations.BealFreyMod53Kill.not_is_fourth_12),
    ⟨BealLevel26Foundations.BealFreyMod53Kill.direct_mod53_kill 543534
      (not_fourth_rhs_mod53_of_res 543534 19 rfl BealLevel26Foundations.BealFreyMod53Kill.not_is_fourth_29),
    ⟨BealLevel26Foundations.BealFreyMod53Kill.direct_mod53_kill 552590
      (not_fourth_rhs_mod53_of_res 552590 12 rfl BealLevel26Foundations.BealFreyMod53Kill.not_is_fourth_41),
    ⟨BealLevel26Foundations.BealFreyMod53Kill.direct_mod53_kill 556638
      (not_fourth_rhs_mod53_of_res 556638 32 rfl BealLevel26Foundations.BealFreyMod53Kill.not_is_fourth_6),
    ⟨BealLevel26Foundations.BealFreyMod53Kill.direct_mod53_kill 563390
      (not_fourth_rhs_mod53_of_res 563390 0 rfl BealLevel26Foundations.BealFreyMod53Kill.not_is_fourth_30),
    ⟨BealLevel26Foundations.BealFreyMod53Kill.direct_mod53_kill 569774
      (not_fourth_rhs_mod53_of_res 569774 24 rfl BealLevel26Foundations.BealFreyMod53Kill.not_is_fourth_27),
    ⟨BealLevel26Foundations.BealFreyMod53Kill.direct_mod53_kill 576110
      (not_fourth_rhs_mod53_of_res 576110 0 rfl BealLevel26Foundations.BealFreyMod53Kill.not_is_fourth_30),
    ⟨direct_mod29_kill 589982
      (not_fourth_rhs_mod29_of_res 589982 6 rfl not_is_fourth_29_22),
    ⟨BealLevel26Foundations.BealFreyMod53Kill.direct_mod53_kill 591326
      (not_fourth_rhs_mod53_of_res 591326 5 rfl BealLevel26Foundations.BealFreyMod53Kill.not_is_fourth_34),
    ⟨direct_mod109_kill 603358
      (not_fourth_rhs_mod109_of_res 603358 43 rfl not_is_fourth_109_30),
    ⟨direct_mod29_kill 607406
      (not_fourth_rhs_mod29_of_res 607406 1 rfl not_is_fourth_29_21),
    ⟨BealLevel26Foundations.BealFreyMod53Kill.direct_mod53_kill 610782
      (not_fourth_rhs_mod53_of_res 610782 10 rfl BealLevel26Foundations.BealFreyMod53Kill.not_is_fourth_18),
    ⟨BealLevel26Foundations.BealFreyMod53Kill.direct_mod53_kill 613790
      (not_fourth_rhs_mod53_of_res 613790 50 rfl BealLevel26Foundations.BealFreyMod53Kill.not_is_fourth_25),
    ⟨BealLevel26Foundations.BealFreyMod53Kill.direct_mod53_kill 614446
      (not_fourth_rhs_mod53_of_res 614446 17 rfl BealLevel26Foundations.BealFreyMod53Kill.not_is_fourth_37),
    ⟨BealLevel26Foundations.BealFreyMod53Kill.direct_mod53_kill 623486
      (not_fourth_rhs_mod53_of_res 623486 47 rfl BealLevel26Foundations.BealFreyMod53Kill.not_is_fourth_52),
    ⟨BealLevel26Foundations.BealFreyMod53Kill.direct_mod53_kill 626174
      (not_fourth_rhs_mod53_of_res 626174 32 rfl BealLevel26Foundations.BealFreyMod53Kill.not_is_fourth_6),
    ⟨BealLevel26Foundations.BealFreyMod53Kill.direct_mod53_kill 627166
      (not_fourth_rhs_mod53_of_res 627166 17 rfl BealLevel26Foundations.BealFreyMod53Kill.not_is_fourth_37),
    ⟨BealLevel26Foundations.BealFreyMod53Kill.direct_mod53_kill 629566
      (not_fourth_rhs_mod53_of_res 629566 32 rfl BealLevel26Foundations.BealFreyMod53Kill.not_is_fourth_6),
    ⟨BealLevel26Foundations.BealFreyMod53Kill.direct_mod53_kill 630558
      (not_fourth_rhs_mod53_of_res 630558 17 rfl BealLevel26Foundations.BealFreyMod53Kill.not_is_fourth_37),
    ⟨direct_mod29_kill 632910
      (not_fourth_rhs_mod29_of_res 632910 14 rfl not_is_fourth_29_26),
    ⟨BealLevel26Foundations.BealFreyMod53Kill.direct_mod53_kill 647294
      (not_fourth_rhs_mod53_of_res 647294 5 rfl BealLevel26Foundations.BealFreyMod53Kill.not_is_fourth_34),
    ⟨direct_mod29_kill 653342
      (not_fourth_rhs_mod29_of_res 653342 1 rfl not_is_fourth_29_21),
    ⟨BealLevel26Foundations.BealFreyMod53Kill.direct_mod53_kill 661054
      (not_fourth_rhs_mod53_of_res 661054 38 rfl BealLevel26Foundations.BealFreyMod53Kill.not_is_fourth_20),
    ⟨direct_mod29_kill 671502
      (not_fourth_rhs_mod29_of_res 671502 7 rfl not_is_fourth_29_3),
    ⟨BealLevel26Foundations.BealFreyMod53Kill.direct_mod53_kill 676174
      (not_fourth_rhs_mod53_of_res 676174 0 rfl BealLevel26Foundations.BealFreyMod53Kill.not_is_fourth_30),
    ⟨BealLevel26Foundations.BealFreyMod53Kill.direct_mod53_kill 682542
      (not_fourth_rhs_mod53_of_res 682542 8 rfl BealLevel26Foundations.BealFreyMod53Kill.not_is_fourth_37),
    ⟨BealLevel26Foundations.BealFreyMod53Kill.direct_mod53_kill 685902
      (not_fourth_rhs_mod53_of_res 685902 29 rfl BealLevel26Foundations.BealFreyMod53Kill.not_is_fourth_34),
    ⟨BealLevel26Foundations.BealFreyMod53Kill.direct_mod53_kill 687582
      (not_fourth_rhs_mod53_of_res 687582 13 rfl BealLevel26Foundations.BealFreyMod53Kill.not_is_fourth_7),
    ⟨direct_mod29_kill 694286
      (not_fourth_rhs_mod29_of_res 694286 26 rfl not_is_fourth_29_6),
    ⟨BealLevel26Foundations.BealFreyMod53Kill.direct_mod53_kill 698974
      (not_fourth_rhs_mod53_of_res 698974 10 rfl BealLevel26Foundations.BealFreyMod53Kill.not_is_fourth_18),
    ⟨BealLevel26Foundations.BealFreyMod53Kill.direct_mod53_kill 707694
      (not_fourth_rhs_mod53_of_res 707694 38 rfl BealLevel26Foundations.BealFreyMod53Kill.not_is_fourth_20),
    ⟨BealLevel26Foundations.BealFreyMod53Kill.direct_mod53_kill 715086
      (not_fourth_rhs_mod53_of_res 715086 10 rfl BealLevel26Foundations.BealFreyMod53Kill.not_is_fourth_18),
    ⟨BealLevel26Foundations.BealFreyMod53Kill.direct_mod53_kill 716430
      (not_fourth_rhs_mod53_of_res 716430 29 rfl BealLevel26Foundations.BealFreyMod53Kill.not_is_fourth_34),
    ⟨BealLevel26Foundations.BealFreyMod53Kill.direct_mod53_kill 719774
      (not_fourth_rhs_mod53_of_res 719774 34 rfl BealLevel26Foundations.BealFreyMod53Kill.not_is_fourth_5),
    ⟨direct_mod29_kill 723118
      (not_fourth_rhs_mod29_of_res 723118 3 rfl not_is_fourth_29_11),
    ⟨direct_mod29_kill 735518
      (not_fourth_rhs_mod29_of_res 735518 20 rfl not_is_fourth_29_17),
    ⟨direct_mod29_kill 737214
      (not_fourth_rhs_mod29_of_res 737214 5 rfl not_is_fourth_29_2),
    ⟨direct_mod29_kill 738910
      (not_fourth_rhs_mod29_of_res 738910 19 rfl not_is_fourth_29_9),
    ⟨BealLevel26Foundations.BealFreyMod53Kill.direct_mod53_kill 743918
      (not_fourth_rhs_mod53_of_res 743918 10 rfl BealLevel26Foundations.BealFreyMod53Kill.not_is_fourth_18),
    ⟨BealLevel26Foundations.BealFreyMod53Kill.direct_mod53_kill 763070
      (not_fourth_rhs_mod53_of_res 763070 29 rfl BealLevel26Foundations.BealFreyMod53Kill.not_is_fourth_34),
    ⟨BealLevel26Foundations.BealFreyMod53Kill.direct_mod53_kill 775822
      (not_fourth_rhs_mod53_of_res 775822 8 rfl BealLevel26Foundations.BealFreyMod53Kill.not_is_fourth_37),
    ⟨BealLevel26Foundations.BealFreyMod53Kill.direct_mod53_kill 777838
      (not_fourth_rhs_mod53_of_res 777838 10 rfl BealLevel26Foundations.BealFreyMod53Kill.not_is_fourth_18),
    ⟨BealLevel26Foundations.BealFreyMod53Kill.direct_mod53_kill 782558
      (not_fourth_rhs_mod53_of_res 782558 13 rfl BealLevel26Foundations.BealFreyMod53Kill.not_is_fourth_7),
    ⟨BealLevel26Foundations.BealFreyMod53Kill.direct_mod53_kill 782894
      (not_fourth_rhs_mod53_of_res 782894 31 rfl BealLevel26Foundations.BealFreyMod53Kill.not_is_fourth_27),
    ⟨BealLevel26Foundations.BealFreyMod53Kill.direct_mod53_kill 786222
      (not_fourth_rhs_mod53_of_res 786222 20 rfl BealLevel26Foundations.BealFreyMod53Kill.not_is_fourth_30),
    ⟨direct_mod29_kill 787246
      (not_fourth_rhs_mod29_of_res 787246 12 rfl not_is_fourth_29_26),
    ⟨BealLevel26Foundations.BealFreyMod53Kill.direct_mod53_kill 787582
      (not_fourth_rhs_mod53_of_res 787582 2 rfl BealLevel26Foundations.BealFreyMod53Kill.not_is_fourth_7),
    ⟨BealLevel26Foundations.BealFreyMod53Kill.direct_mod53_kill 792606
      (not_fourth_rhs_mod53_of_res 792606 44 rfl BealLevel26Foundations.BealFreyMod53Kill.not_is_fourth_12),
    ⟨BealLevel26Foundations.BealFreyMod53Kill.direct_mod53_kill 799006
      (not_fourth_rhs_mod53_of_res 799006 31 rfl BealLevel26Foundations.BealFreyMod53Kill.not_is_fourth_27),
    ⟨BealLevel26Foundations.BealFreyMod53Kill.direct_mod53_kill 800334
      (not_fourth_rhs_mod53_of_res 800334 34 rfl BealLevel26Foundations.BealFreyMod53Kill.not_is_fourth_5),
    ⟨direct_mod109_kill 813118
      (not_fourth_rhs_mod109_of_res 813118 87 rfl not_is_fourth_109_96),
    ⟨direct_mod29_kill 821166
      (not_fourth_rhs_mod29_of_res 821166 2 rfl not_is_fourth_29_19),
    ⟨BealLevel26Foundations.BealFreyMod53Kill.direct_mod53_kill 826174
      (not_fourth_rhs_mod53_of_res 826174 10 rfl BealLevel26Foundations.BealFreyMod53Kill.not_is_fourth_18),
    ⟨BealLevel26Foundations.BealFreyMod53Kill.direct_mod53_kill 829870
      (not_fourth_rhs_mod53_of_res 829870 49 rfl BealLevel26Foundations.BealFreyMod53Kill.not_is_fourth_8),
    ⟨direct_mod29_kill 832190
      (not_fourth_rhs_mod29_of_res 832190 6 rfl not_is_fourth_29_22),
    ⟨BealLevel26Foundations.BealFreyMod53Kill.direct_mod53_kill 834590
      (not_fourth_rhs_mod53_of_res 834590 52 rfl BealLevel26Foundations.BealFreyMod53Kill.not_is_fourth_29),
    ⟨direct_mod29_kill 835902
      (not_fourth_rhs_mod29_of_res 835902 6 rfl not_is_fourth_29_22),
    ⟨BealLevel26Foundations.BealFreyMod53Kill.direct_mod53_kill 836238
      (not_fourth_rhs_mod53_of_res 836238 4 rfl BealLevel26Foundations.BealFreyMod53Kill.not_is_fourth_8),
    ⟨BealLevel26Foundations.BealFreyMod53Kill.direct_mod53_kill 845614
      (not_fourth_rhs_mod53_of_res 845614 52 rfl BealLevel26Foundations.BealFreyMod53Kill.not_is_fourth_29),
    ⟨BealLevel26Foundations.BealFreyMod53Kill.direct_mod53_kill 851966
      (not_fourth_rhs_mod53_of_res 851966 44 rfl BealLevel26Foundations.BealFreyMod53Kill.not_is_fourth_12),
    ⟨BealLevel26Foundations.BealFreyMod53Kill.direct_mod53_kill 853630
      (not_fourth_rhs_mod53_of_res 853630 12 rfl BealLevel26Foundations.BealFreyMod53Kill.not_is_fourth_41),
    ⟨BealLevel26Foundations.BealFreyMod53Kill.direct_mod53_kill 857982
      (not_fourth_rhs_mod53_of_res 857982 18 rfl BealLevel26Foundations.BealFreyMod53Kill.not_is_fourth_40),
    ⟨BealLevel26Foundations.BealFreyMod53Kill.direct_mod53_kill 862014
      (not_fourth_rhs_mod53_of_res 862014 22 rfl BealLevel26Foundations.BealFreyMod53Kill.not_is_fourth_3),
    ⟨direct_mod109_kill 863694
      (not_fourth_rhs_mod109_of_res 863694 87 rfl not_is_fourth_109_96),
    ⟨direct_mod29_kill 874462
      (not_fourth_rhs_mod29_of_res 874462 25 rfl not_is_fourth_29_4),
    ⟨BealLevel26Foundations.BealFreyMod53Kill.direct_mod53_kill 878814
      (not_fourth_rhs_mod53_of_res 878814 21 rfl BealLevel26Foundations.BealFreyMod53Kill.not_is_fourth_30),
    ⟨BealLevel26Foundations.BealFreyMod53Kill.direct_mod53_kill 880190
      (not_fourth_rhs_mod53_of_res 880190 19 rfl BealLevel26Foundations.BealFreyMod53Kill.not_is_fourth_29),
    ⟨direct_mod29_kill 885198
      (not_fourth_rhs_mod29_of_res 885198 2 rfl not_is_fourth_29_19),
    ⟨BealLevel26Foundations.BealFreyMod53Kill.direct_mod53_kill 887854
      (not_fourth_rhs_mod53_of_res 887854 51 rfl BealLevel26Foundations.BealFreyMod53Kill.not_is_fourth_38),
    ⟨BealLevel26Foundations.BealFreyMod53Kill.direct_mod53_kill 894254
      (not_fourth_rhs_mod53_of_res 894254 38 rfl BealLevel26Foundations.BealFreyMod53Kill.not_is_fourth_20),
    ⟨direct_mod29_kill 901006
      (not_fourth_rhs_mod29_of_res 901006 5 rfl not_is_fourth_29_2),
    ⟨direct_mod29_kill 904702
      (not_fourth_rhs_mod29_of_res 904702 18 rfl not_is_fourth_29_15),
    ⟨BealLevel26Foundations.BealFreyMod53Kill.direct_mod53_kill 905038
      (not_fourth_rhs_mod53_of_res 905038 10 rfl BealLevel26Foundations.BealFreyMod53Kill.not_is_fourth_18),
    ⟨direct_mod29_kill 914094
      (not_fourth_rhs_mod29_of_res 914094 14 rfl not_is_fourth_29_26),
    ⟨BealLevel26Foundations.BealFreyMod53Kill.direct_mod53_kill 916430
      (not_fourth_rhs_mod53_of_res 916430 7 rfl BealLevel26Foundations.BealFreyMod53Kill.not_is_fourth_38),
    ⟨BealLevel26Foundations.BealFreyMod53Kill.direct_mod53_kill 921806
      (not_fourth_rhs_mod53_of_res 921806 30 rfl BealLevel26Foundations.BealFreyMod53Kill.not_is_fourth_22),
    ⟨BealLevel26Foundations.BealFreyMod53Kill.direct_mod53_kill 936526
      (not_fourth_rhs_mod53_of_res 936526 16 rfl BealLevel26Foundations.BealFreyMod53Kill.not_is_fourth_2),
    ⟨BealLevel26Foundations.BealFreyMod53Kill.direct_mod53_kill 939934
      (not_fourth_rhs_mod53_of_res 939934 32 rfl BealLevel26Foundations.BealFreyMod53Kill.not_is_fourth_6),
    ⟨BealLevel26Foundations.BealFreyMod53Kill.direct_mod53_kill 946958
      (not_fourth_rhs_mod53_of_res 946958 7 rfl BealLevel26Foundations.BealFreyMod53Kill.not_is_fourth_38),
    ⟨direct_mod29_kill 958670
      (not_fourth_rhs_mod29_of_res 958670 17 rfl not_is_fourth_29_15),
    ⟨BealLevel26Foundations.BealFreyMod53Kill.direct_mod53_kill 960350
      (not_fourth_rhs_mod53_of_res 960350 43 rfl BealLevel26Foundations.BealFreyMod53Kill.not_is_fourth_18),
    ⟨BealLevel26Foundations.BealFreyMod53Kill.direct_mod53_kill 967054
      (not_fourth_rhs_mod53_of_res 967054 16 rfl BealLevel26Foundations.BealFreyMod53Kill.not_is_fourth_2),
    ⟨BealLevel26Foundations.BealFreyMod53Kill.direct_mod53_kill 975470
      (not_fourth_rhs_mod53_of_res 975470 5 rfl BealLevel26Foundations.BealFreyMod53Kill.not_is_fourth_34),
    ⟨BealLevel26Foundations.BealFreyMod53Kill.direct_mod53_kill 988974
      (not_fourth_rhs_mod53_of_res 988974 47 rfl BealLevel26Foundations.BealFreyMod53Kill.not_is_fourth_52),
    ⟨direct_mod29_kill 991614
      (not_fourth_rhs_mod29_of_res 991614 17 rfl not_is_fourth_29_15),
    ⟨BealLevel26Foundations.BealFreyMod53Kill.direct_mod53_kill 998990
      (not_fourth_rhs_mod53_of_res 998990 46 rfl BealLevel26Foundations.BealFreyMod53Kill.not_is_fourth_38),
    ⟨BealLevel26Foundations.BealFreyMod53Kill.direct_mod53_kill 1001342
      (not_fourth_rhs_mod53_of_res 1001342 13 rfl BealLevel26Foundations.BealFreyMod53Kill.not_is_fourth_7),
    ⟨BealLevel26Foundations.BealFreyMod53Kill.direct_mod53_kill 1020798
      (not_fourth_rhs_mod53_of_res 1020798 18 rfl BealLevel26Foundations.BealFreyMod53Kill.not_is_fourth_40),
    ⟨BealLevel26Foundations.BealFreyMod53Kill.direct_mod53_kill 1040222
      (not_fourth_rhs_mod53_of_res 1040222 44 rfl BealLevel26Foundations.BealFreyMod53Kill.not_is_fourth_12),
    ⟨direct_mod29_kill 1050254
      (not_fourth_rhs_mod29_of_res 1050254 19 rfl not_is_fourth_29_9),
    ⟨direct_mod29_kill 1056062
      (not_fourth_rhs_mod29_of_res 1056062 27 rfl not_is_fourth_29_14),
    ⟨BealLevel26Foundations.BealFreyMod53Kill.direct_mod53_kill 1056398
      (not_fourth_rhs_mod53_of_res 1056398 2 rfl BealLevel26Foundations.BealFreyMod53Kill.not_is_fourth_7),
    ⟨BealLevel26Foundations.BealFreyMod53Kill.direct_mod53_kill 1058030
      (not_fourth_rhs_mod53_of_res 1058030 44 rfl BealLevel26Foundations.BealFreyMod53Kill.not_is_fourth_12),
    ⟨BealLevel26Foundations.BealFreyMod53Kill.direct_mod53_kill 1058366
      (not_fourth_rhs_mod53_of_res 1058366 9 rfl BealLevel26Foundations.BealFreyMod53Kill.not_is_fourth_34),
    ⟨BealLevel26Foundations.BealFreyMod53Kill.direct_mod53_kill 1061422
      (not_fourth_rhs_mod53_of_res 1061422 44 rfl BealLevel26Foundations.BealFreyMod53Kill.not_is_fourth_12),
    ⟨direct_mod29_kill 1078190
      (not_fourth_rhs_mod29_of_res 1078190 28 rfl not_is_fourth_29_13),
    ⟨BealLevel26Foundations.BealFreyMod53Kill.direct_mod53_kill 1078526
      (not_fourth_rhs_mod53_of_res 1078526 29 rfl BealLevel26Foundations.BealFreyMod53Kill.not_is_fourth_34),
    ⟨BealLevel26Foundations.BealFreyMod53Kill.direct_mod53_kill 1084254
      (not_fourth_rhs_mod53_of_res 1084254 33 rfl BealLevel26Foundations.BealFreyMod53Kill.not_is_fourth_8),
    ⟨BealLevel26Foundations.BealFreyMod53Kill.direct_mod53_kill 1088926
      (not_fourth_rhs_mod53_of_res 1088926 41 rfl BealLevel26Foundations.BealFreyMod53Kill.not_is_fourth_41),
    ⟨BealLevel26Foundations.BealFreyMod53Kill.direct_mod53_kill 1091582
      (not_fourth_rhs_mod53_of_res 1091582 47 rfl BealLevel26Foundations.BealFreyMod53Kill.not_is_fourth_52),
    ⟨BealLevel26Foundations.BealFreyMod53Kill.direct_mod53_kill 1093646
      (not_fourth_rhs_mod53_of_res 1093646 44 rfl BealLevel26Foundations.BealFreyMod53Kill.not_is_fourth_12),
    ⟨BealLevel26Foundations.BealFreyMod53Kill.direct_mod53_kill 1096318
      (not_fourth_rhs_mod53_of_res 1096318 13 rfl BealLevel26Foundations.BealFreyMod53Kill.not_is_fourth_7),
    ⟨BealLevel26Foundations.BealFreyMod53Kill.direct_mod53_kill 1098014
      (not_fourth_rhs_mod53_of_res 1098014 13 rfl BealLevel26Foundations.BealFreyMod53Kill.not_is_fourth_7),
    ⟨BealLevel26Foundations.BealFreyMod53Kill.direct_mod53_kill 1099662
      (not_fourth_rhs_mod53_of_res 1099662 18 rfl BealLevel26Foundations.BealFreyMod53Kill.not_is_fourth_40),
    ⟨BealLevel26Foundations.BealFreyMod53Kill.direct_mod53_kill 1101358
      (not_fourth_rhs_mod53_of_res 1101358 18 rfl BealLevel26Foundations.BealFreyMod53Kill.not_is_fourth_40),
    ⟨BealLevel26Foundations.BealFreyMod53Kill.direct_mod53_kill 1102062
      (not_fourth_rhs_mod53_of_res 1102062 33 rfl BealLevel26Foundations.BealFreyMod53Kill.not_is_fourth_8),
    ⟨direct_mod29_kill 1105742
      (not_fourth_rhs_mod29_of_res 1105742 1 rfl not_is_fourth_29_21),
    ⟨BealLevel26Foundations.BealFreyMod53Kill.direct_mod53_kill 1111102
      (not_fourth_rhs_mod53_of_res 1111102 10 rfl BealLevel26Foundations.BealFreyMod53Kill.not_is_fourth_18),
    ⟨BealLevel26Foundations.BealFreyMod53Kill.direct_mod53_kill 1118126
      (not_fourth_rhs_mod53_of_res 1118126 38 rfl BealLevel26Foundations.BealFreyMod53Kill.not_is_fourth_20),
    ⟨BealLevel26Foundations.BealFreyMod53Kill.direct_mod53_kill 1124798
      (not_fourth_rhs_mod53_of_res 1124798 32 rfl BealLevel26Foundations.BealFreyMod53Kill.not_is_fourth_6),
    ⟨direct_mod29_kill 1133550
      (not_fourth_rhs_mod29_of_res 1133550 27 rfl not_is_fourth_29_14),
    ⟨direct_mod109_kill 1136270
      (not_fourth_rhs_mod109_of_res 1136270 54 rfl not_is_fourth_109_74),
    ⟨BealLevel26Foundations.BealFreyMod53Kill.direct_mod53_kill 1144302
      (not_fourth_rhs_mod53_of_res 1144302 32 rfl BealLevel26Foundations.BealFreyMod53Kill.not_is_fourth_6),
    ⟨direct_mod29_kill 1155358
      (not_fourth_rhs_mod29_of_res 1155358 27 rfl not_is_fourth_29_14),
    ⟨BealLevel26Foundations.BealFreyMod53Kill.direct_mod53_kill 1156046
      (not_fourth_rhs_mod53_of_res 1156046 10 rfl BealLevel26Foundations.BealFreyMod53Kill.not_is_fourth_18),
    ⟨BealLevel26Foundations.BealFreyMod53Kill.direct_mod53_kill 1156718
      (not_fourth_rhs_mod53_of_res 1156718 46 rfl BealLevel26Foundations.BealFreyMod53Kill.not_is_fourth_38),
    ⟨BealLevel26Foundations.BealFreyMod53Kill.direct_mod53_kill 1165118
      (not_fourth_rhs_mod53_of_res 1165118 19 rfl BealLevel26Foundations.BealFreyMod53Kill.not_is_fourth_29),
    ⟨BealLevel26Foundations.BealFreyMod53Kill.direct_mod53_kill 1169118
      (not_fourth_rhs_mod53_of_res 1169118 44 rfl BealLevel26Foundations.BealFreyMod53Kill.not_is_fourth_12),
    ⟨direct_mod29_kill 1170126
      (not_fourth_rhs_mod29_of_res 1170126 5 rfl not_is_fourth_29_2),
    ⟨BealLevel26Foundations.BealFreyMod53Kill.direct_mod53_kill 1176878
      (not_fourth_rhs_mod53_of_res 1176878 13 rfl BealLevel26Foundations.BealFreyMod53Kill.not_is_fourth_7),
    ⟨BealLevel26Foundations.BealFreyMod53Kill.direct_mod53_kill 1180574
      (not_fourth_rhs_mod53_of_res 1180574 52 rfl BealLevel26Foundations.BealFreyMod53Kill.not_is_fourth_29),
    ⟨BealLevel26Foundations.BealFreyMod53Kill.direct_mod53_kill 1180910
      (not_fourth_rhs_mod53_of_res 1180910 17 rfl BealLevel26Foundations.BealFreyMod53Kill.not_is_fourth_37),
    ⟨direct_mod29_kill 1181566
      (not_fourth_rhs_mod29_of_res 1181566 19 rfl not_is_fourth_29_9),
    ⟨BealLevel26Foundations.BealFreyMod53Kill.direct_mod53_kill 1183230
      (not_fourth_rhs_mod53_of_res 1183230 5 rfl BealLevel26Foundations.BealFreyMod53Kill.not_is_fourth_34),
    ⟨direct_mod29_kill 1184238
      (not_fourth_rhs_mod29_of_res 1184238 23 rfl not_is_fourth_29_19),
    ⟨BealLevel26Foundations.BealFreyMod53Kill.direct_mod53_kill 1192958
      (not_fourth_rhs_mod53_of_res 1192958 34 rfl BealLevel26Foundations.BealFreyMod53Kill.not_is_fourth_5),
    ⟨BealLevel26Foundations.BealFreyMod53Kill.direct_mod53_kill 1193294
      (not_fourth_rhs_mod53_of_res 1193294 52 rfl BealLevel26Foundations.BealFreyMod53Kill.not_is_fourth_29),
    ⟨BealLevel26Foundations.BealFreyMod53Kill.direct_mod53_kill 1199998
      (not_fourth_rhs_mod53_of_res 1199998 25 rfl BealLevel26Foundations.BealFreyMod53Kill.not_is_fourth_39),
    ⟨direct_mod29_kill 1203742
      (not_fourth_rhs_mod29_of_res 1203742 10 rfl not_is_fourth_29_14),
    ⟨direct_mod29_kill 1205742
      (not_fourth_rhs_mod29_of_res 1205742 9 rfl not_is_fourth_29_5),
    ⟨BealLevel26Foundations.BealFreyMod53Kill.direct_mod53_kill 1214446
      (not_fourth_rhs_mod53_of_res 1214446 4 rfl BealLevel26Foundations.BealFreyMod53Kill.not_is_fourth_8),
    ⟨BealLevel26Foundations.BealFreyMod53Kill.direct_mod53_kill 1215790
      (not_fourth_rhs_mod53_of_res 1215790 23 rfl BealLevel26Foundations.BealFreyMod53Kill.not_is_fourth_29),
    ⟨direct_mod29_kill 1219854
      (not_fourth_rhs_mod29_of_res 1219854 27 rfl not_is_fourth_29_14),
    ⟨BealLevel26Foundations.BealFreyMod53Kill.direct_mod53_kill 1223566
      (not_fourth_rhs_mod53_of_res 1223566 8 rfl BealLevel26Foundations.BealFreyMod53Kill.not_is_fourth_37),
    ⟨BealLevel26Foundations.BealFreyMod53Kill.direct_mod53_kill 1227262
      (not_fourth_rhs_mod53_of_res 1227262 47 rfl BealLevel26Foundations.BealFreyMod53Kill.not_is_fourth_52),
    ⟨BealLevel26Foundations.BealFreyMod53Kill.direct_mod53_kill 1236958
      (not_fourth_rhs_mod53_of_res 1236958 44 rfl BealLevel26Foundations.BealFreyMod53Kill.not_is_fourth_12),
    ⟨BealLevel26Foundations.BealFreyMod53Kill.direct_mod53_kill 1249374
      (not_fourth_rhs_mod53_of_res 1249374 5 rfl BealLevel26Foundations.BealFreyMod53Kill.not_is_fourth_34),
    ⟨BealLevel26Foundations.BealFreyMod53Kill.direct_mod53_kill 1257790
      (not_fourth_rhs_mod53_of_res 1257790 47 rfl BealLevel26Foundations.BealFreyMod53Kill.not_is_fourth_52),
    ⟨BealLevel26Foundations.BealFreyMod53Kill.direct_mod53_kill 1258446
      (not_fourth_rhs_mod53_of_res 1258446 14 rfl BealLevel26Foundations.BealFreyMod53Kill.not_is_fourth_8),
    ⟨BealLevel26Foundations.BealFreyMod53Kill.direct_mod53_kill 1261838
      (not_fourth_rhs_mod53_of_res 1261838 14 rfl BealLevel26Foundations.BealFreyMod53Kill.not_is_fourth_8),
    ⟨BealLevel26Foundations.BealFreyMod53Kill.direct_mod53_kill 1268542
      (not_fourth_rhs_mod53_of_res 1268542 40 rfl BealLevel26Foundations.BealFreyMod53Kill.not_is_fourth_5),
    ⟨BealLevel26Foundations.BealFreyMod53Kill.direct_mod53_kill 1273902
      (not_fourth_rhs_mod53_of_res 1273902 47 rfl BealLevel26Foundations.BealFreyMod53Kill.not_is_fourth_52),
    ⟨BealLevel26Foundations.BealFreyMod53Kill.direct_mod53_kill 1281934
      (not_fourth_rhs_mod53_of_res 1281934 23 rfl BealLevel26Foundations.BealFreyMod53Kill.not_is_fourth_29),
    ⟨BealLevel26Foundations.BealFreyMod53Kill.direct_mod53_kill 1283598
      (not_fourth_rhs_mod53_of_res 1283598 44 rfl BealLevel26Foundations.BealFreyMod53Kill.not_is_fourth_12),
    ⟨direct_mod109_kill 1287998
      (not_fourth_rhs_mod109_of_res 1287998 54 rfl not_is_fourth_109_74),
    ⟨BealLevel26Foundations.BealFreyMod53Kill.direct_mod53_kill 1293006
      (not_fourth_rhs_mod53_of_res 1293006 18 rfl BealLevel26Foundations.BealFreyMod53Kill.not_is_fourth_40),
    ⟨BealLevel26Foundations.BealFreyMod53Kill.direct_mod53_kill 1294334
      (not_fourth_rhs_mod53_of_res 1294334 21 rfl BealLevel26Foundations.BealFreyMod53Kill.not_is_fourth_30),
    ⟨direct_mod29_kill 1296366
      (not_fourth_rhs_mod29_of_res 1296366 8 rfl not_is_fourth_29_14),
    ⟨BealLevel26Foundations.BealFreyMod53Kill.direct_mod53_kill 1298334
      (not_fourth_rhs_mod53_of_res 1298334 46 rfl BealLevel26Foundations.BealFreyMod53Kill.not_is_fourth_38),
    ⟨BealLevel26Foundations.BealFreyMod53Kill.direct_mod53_kill 1299998
      (not_fourth_rhs_mod53_of_res 1299998 14 rfl BealLevel26Foundations.BealFreyMod53Kill.not_is_fourth_8),
    ⟨BealLevel26Foundations.BealFreyMod53Kill.direct_mod53_kill 1302350
      (not_fourth_rhs_mod53_of_res 1302350 34 rfl BealLevel26Foundations.BealFreyMod53Kill.not_is_fourth_5),
    ⟨BealLevel26Foundations.BealFreyMod53Kill.direct_mod53_kill 1316174
      (not_fourth_rhs_mod53_of_res 1316174 25 rfl BealLevel26Foundations.BealFreyMod53Kill.not_is_fourth_39),
    ⟨BealLevel26Foundations.BealFreyMod53Kill.direct_mod53_kill 1320862
      (not_fourth_rhs_mod53_of_res 1320862 49 rfl BealLevel26Foundations.BealFreyMod53Kill.not_is_fourth_8),
    ⟨BealLevel26Foundations.BealFreyMod53Kill.direct_mod53_kill 1328238
      (not_fourth_rhs_mod53_of_res 1328238 5 rfl BealLevel26Foundations.BealFreyMod53Kill.not_is_fourth_34),
    ⟨BealLevel26Foundations.BealFreyMod53Kill.direct_mod53_kill 1333278
      (not_fourth_rhs_mod53_of_res 1333278 10 rfl BealLevel26Foundations.BealFreyMod53Kill.not_is_fourth_18),
    ⟨BealLevel26Foundations.BealFreyMod53Kill.direct_mod53_kill 1341342
      (not_fourth_rhs_mod53_of_res 1341342 18 rfl BealLevel26Foundations.BealFreyMod53Kill.not_is_fourth_40),
    ⟨BealLevel26Foundations.BealFreyMod53Kill.direct_mod53_kill 1355374
      (not_fourth_rhs_mod53_of_res 1355374 5 rfl BealLevel26Foundations.BealFreyMod53Kill.not_is_fourth_34),
    ⟨direct_mod29_kill 1357038
      (not_fourth_rhs_mod29_of_res 1357038 12 rfl not_is_fourth_29_26),
    ⟨direct_mod29_kill 1359054
      (not_fourth_rhs_mod29_of_res 1359054 27 rfl not_is_fourth_29_14),
    ⟨BealLevel26Foundations.BealFreyMod53Kill.direct_mod53_kill 1364078
      (not_fourth_rhs_mod53_of_res 1364078 17 rfl BealLevel26Foundations.BealFreyMod53Kill.not_is_fourth_37),
    ⟨BealLevel26Foundations.BealFreyMod53Kill.direct_mod53_kill 1366766
      (not_fourth_rhs_mod53_of_res 1366766 2 rfl BealLevel26Foundations.BealFreyMod53Kill.not_is_fourth_7),
    ⟨BealLevel26Foundations.BealFreyMod53Kill.direct_mod53_kill 1372462
      (not_fourth_rhs_mod53_of_res 1372462 27 rfl BealLevel26Foundations.BealFreyMod53Kill.not_is_fourth_20),
    ⟨direct_mod29_kill 1374782
      (not_fourth_rhs_mod29_of_res 1374782 8 rfl not_is_fourth_29_14),
    ⟨BealLevel26Foundations.BealFreyMod53Kill.direct_mod53_kill 1375806
      (not_fourth_rhs_mod53_of_res 1375806 32 rfl BealLevel26Foundations.BealFreyMod53Kill.not_is_fourth_6),
    ⟨BealLevel26Foundations.BealFreyMod53Kill.direct_mod53_kill 1385902
      (not_fourth_rhs_mod53_of_res 1385902 5 rfl BealLevel26Foundations.BealFreyMod53Kill.not_is_fourth_34),
    ⟨direct_mod29_kill 1386910
      (not_fourth_rhs_mod29_of_res 1386910 14 rfl not_is_fourth_29_26),
    ⟨BealLevel26Foundations.BealFreyMod53Kill.direct_mod53_kill 1394974
      (not_fourth_rhs_mod53_of_res 1394974 14 rfl BealLevel26Foundations.BealFreyMod53Kill.not_is_fourth_8),
    ⟨direct_mod29_kill 1401326
      (not_fourth_rhs_mod29_of_res 1401326 17 rfl not_is_fourth_29_15),
    ⟨direct_mod109_kill 1420830
      (not_fourth_rhs_mod109_of_res 1420830 15 rfl not_is_fourth_109_102),
    ⟨BealLevel26Foundations.BealFreyMod53Kill.direct_mod53_kill 1425166
      (not_fourth_rhs_mod53_of_res 1425166 49 rfl BealLevel26Foundations.BealFreyMod53Kill.not_is_fourth_8),
    ⟨direct_mod29_kill 1430878
      (not_fourth_rhs_mod29_of_res 1430878 18 rfl not_is_fourth_29_15),
    ⟨BealLevel26Foundations.BealFreyMod53Kill.direct_mod53_kill 1433214
      (not_fourth_rhs_mod53_of_res 1433214 41 rfl BealLevel26Foundations.BealFreyMod53Kill.not_is_fourth_41),
    ⟨direct_mod29_kill 1434590
      (not_fourth_rhs_mod29_of_res 1434590 18 rfl not_is_fourth_29_15),
    ⟨direct_mod29_kill 1441310
      (not_fourth_rhs_mod29_of_res 1441310 10 rfl not_is_fourth_29_14),
    ⟨BealLevel26Foundations.BealFreyMod53Kill.direct_mod53_kill 1441646
      (not_fourth_rhs_mod53_of_res 1441646 46 rfl BealLevel26Foundations.BealFreyMod53Kill.not_is_fourth_38),
    ⟨BealLevel26Foundations.BealFreyMod53Kill.direct_mod53_kill 1442958
      (not_fourth_rhs_mod53_of_res 1442958 33 rfl BealLevel26Foundations.BealFreyMod53Kill.not_is_fourth_8),
    ⟨BealLevel26Foundations.BealFreyMod53Kill.direct_mod53_kill 1445342
      (not_fourth_rhs_mod53_of_res 1445342 32 rfl BealLevel26Foundations.BealFreyMod53Kill.not_is_fourth_6),
    ⟨BealLevel26Foundations.BealFreyMod53Kill.direct_mod53_kill 1449326
      (not_fourth_rhs_mod53_of_res 1449326 41 rfl BealLevel26Foundations.BealFreyMod53Kill.not_is_fourth_41),
    ⟨BealLevel26Foundations.BealFreyMod53Kill.direct_mod53_kill 1453374
      (not_fourth_rhs_mod53_of_res 1453374 8 rfl BealLevel26Foundations.BealFreyMod53Kill.not_is_fourth_37),
    ⟨BealLevel26Foundations.BealFreyMod53Kill.direct_mod53_kill 1457358
      (not_fourth_rhs_mod53_of_res 1457358 17 rfl BealLevel26Foundations.BealFreyMod53Kill.not_is_fourth_37),
    ⟨BealLevel26Foundations.BealFreyMod53Kill.direct_mod53_kill 1469774
      (not_fourth_rhs_mod53_of_res 1469774 31 rfl BealLevel26Foundations.BealFreyMod53Kill.not_is_fourth_27),
    ⟨BealLevel26Foundations.BealFreyMod53Kill.direct_mod53_kill 1471134
      (not_fourth_rhs_mod53_of_res 1471134 13 rfl BealLevel26Foundations.BealFreyMod53Kill.not_is_fourth_7),
    ⟨direct_mod29_kill 1473774
      (not_fourth_rhs_mod29_of_res 1473774 23 rfl not_is_fourth_29_19),
    ⟨BealLevel26Foundations.BealFreyMod53Kill.direct_mod53_kill 1475134
      (not_fourth_rhs_mod53_of_res 1475134 38 rfl BealLevel26Foundations.BealFreyMod53Kill.not_is_fourth_20),
    ⟨BealLevel26Foundations.BealFreyMod53Kill.direct_mod53_kill 1496654
      (not_fourth_rhs_mod53_of_res 1496654 40 rfl BealLevel26Foundations.BealFreyMod53Kill.not_is_fourth_5),
    ⟨BealLevel26Foundations.BealFreyMod53Kill.direct_mod53_kill 1514382
      (not_fourth_rhs_mod53_of_res 1514382 13 rfl BealLevel26Foundations.BealFreyMod53Kill.not_is_fourth_7),
    ⟨BealLevel26Foundations.BealFreyMod53Kill.direct_mod53_kill 1515726
      (not_fourth_rhs_mod53_of_res 1515726 32 rfl BealLevel26Foundations.BealFreyMod53Kill.not_is_fourth_6),
    ⟨BealLevel26Foundations.BealFreyMod53Kill.direct_mod53_kill 1517406
      (not_fourth_rhs_mod53_of_res 1517406 16 rfl BealLevel26Foundations.BealFreyMod53Kill.not_is_fourth_2),
    ⟨BealLevel26Foundations.BealFreyMod53Kill.direct_mod53_kill 1518398
      (not_fourth_rhs_mod53_of_res 1518398 1 rfl BealLevel26Foundations.BealFreyMod53Kill.not_is_fourth_51),
    ⟨direct_mod29_kill 1520766
      (not_fourth_rhs_mod29_of_res 1520766 6 rfl not_is_fourth_29_22),
    ⟨direct_mod29_kill 1523742
      (not_fourth_rhs_mod29_of_res 1523742 24 rfl not_is_fourth_29_28),
    ⟨direct_mod29_kill 1533166
      (not_fourth_rhs_mod29_of_res 1533166 23 rfl not_is_fourth_29_19),
    ⟨BealLevel26Foundations.BealFreyMod53Kill.direct_mod53_kill 1534510
      (not_fourth_rhs_mod53_of_res 1534510 1 rfl BealLevel26Foundations.BealFreyMod53Kill.not_is_fourth_51),
    ⟨direct_mod29_kill 1536878
      (not_fourth_rhs_mod29_of_res 1536878 23 rfl not_is_fourth_29_19),
    ⟨BealLevel26Foundations.BealFreyMod53Kill.direct_mod53_kill 1555710
      (not_fourth_rhs_mod53_of_res 1555710 1 rfl BealLevel26Foundations.BealFreyMod53Kill.not_is_fourth_51),
    ⟨BealLevel26Foundations.BealFreyMod53Kill.direct_mod53_kill 1557038
      (not_fourth_rhs_mod53_of_res 1557038 4 rfl BealLevel26Foundations.BealFreyMod53Kill.not_is_fourth_8),
    ⟨BealLevel26Foundations.BealFreyMod53Kill.direct_mod53_kill 1571806
      (not_fourth_rhs_mod53_of_res 1571806 38 rfl BealLevel26Foundations.BealFreyMod53Kill.not_is_fourth_20),
    ⟨BealLevel26Foundations.BealFreyMod53Kill.direct_mod53_kill 1575838
      (not_fourth_rhs_mod53_of_res 1575838 42 rfl BealLevel26Foundations.BealFreyMod53Kill.not_is_fourth_17),
    ⟨BealLevel26Foundations.BealFreyMod53Kill.direct_mod53_kill 1588238
      (not_fourth_rhs_mod53_of_res 1588238 40 rfl BealLevel26Foundations.BealFreyMod53Kill.not_is_fourth_5),
    ⟨BealLevel26Foundations.BealFreyMod53Kill.direct_mod53_kill 1588574
      (not_fourth_rhs_mod53_of_res 1588574 5 rfl BealLevel26Foundations.BealFreyMod53Kill.not_is_fourth_34),
    ⟨BealLevel26Foundations.BealFreyMod53Kill.direct_mod53_kill 1598974
      (not_fourth_rhs_mod53_of_res 1598974 17 rfl BealLevel26Foundations.BealFreyMod53Kill.not_is_fourth_37),
    ⟨BealLevel26Foundations.BealFreyMod53Kill.direct_mod53_kill 1607358
      (not_fourth_rhs_mod53_of_res 1607358 27 rfl BealLevel26Foundations.BealFreyMod53Kill.not_is_fourth_20),
    ⟨BealLevel26Foundations.BealFreyMod53Kill.direct_mod53_kill 1608702
      (not_fourth_rhs_mod53_of_res 1608702 46 rfl BealLevel26Foundations.BealFreyMod53Kill.not_is_fourth_38),
    ⟨direct_mod29_kill 1609390
      (not_fourth_rhs_mod29_of_res 1609390 6 rfl not_is_fourth_29_22),
    ⟨direct_mod29_kill 1611374
      (not_fourth_rhs_mod29_of_res 1611374 18 rfl not_is_fourth_29_15),
    ⟨BealLevel26Foundations.BealFreyMod53Kill.direct_mod53_kill 1617790
      (not_fourth_rhs_mod53_of_res 1617790 18 rfl BealLevel26Foundations.BealFreyMod53Kill.not_is_fourth_40),
    ⟨BealLevel26Foundations.BealFreyMod53Kill.direct_mod53_kill 1628206
      (not_fourth_rhs_mod53_of_res 1628206 46 rfl BealLevel26Foundations.BealFreyMod53Kill.not_is_fourth_38),
    ⟨BealLevel26Foundations.BealFreyMod53Kill.direct_mod53_kill 1648238
      (not_fourth_rhs_mod53_of_res 1648238 44 rfl BealLevel26Foundations.BealFreyMod53Kill.not_is_fourth_12),
    ⟨direct_mod29_kill 1660366
      (not_fourth_rhs_mod29_of_res 1660366 0 rfl not_is_fourth_29_19),
    ⟨BealLevel26Foundations.BealFreyMod53Kill.direct_mod53_kill 1670462
      (not_fourth_rhs_mod53_of_res 1670462 8 rfl BealLevel26Foundations.BealFreyMod53Kill.not_is_fourth_37),
    ⟨BealLevel26Foundations.BealFreyMod53Kill.direct_mod53_kill 1675150
      (not_fourth_rhs_mod53_of_res 1675150 32 rfl BealLevel26Foundations.BealFreyMod53Kill.not_is_fourth_6),
    ⟨BealLevel26Foundations.BealFreyMod53Kill.direct_mod53_kill 1678846
      (not_fourth_rhs_mod53_of_res 1678846 18 rfl BealLevel26Foundations.BealFreyMod53Kill.not_is_fourth_40),
    ⟨BealLevel26Foundations.BealFreyMod53Kill.direct_mod53_kill 1683870
      (not_fourth_rhs_mod53_of_res 1683870 7 rfl BealLevel26Foundations.BealFreyMod53Kill.not_is_fourth_38),
    ⟨BealLevel26Foundations.BealFreyMod53Kill.direct_mod53_kill 1694622
      (not_fourth_rhs_mod53_of_res 1694622 0 rfl BealLevel26Foundations.BealFreyMod53Kill.not_is_fourth_30),
    ⟨BealLevel26Foundations.BealFreyMod53Kill.direct_mod53_kill 1697966
      (not_fourth_rhs_mod53_of_res 1697966 5 rfl BealLevel26Foundations.BealFreyMod53Kill.not_is_fourth_34),
    ⟨BealLevel26Foundations.BealFreyMod53Kill.direct_mod53_kill 1701022
      (not_fourth_rhs_mod53_of_res 1701022 40 rfl BealLevel26Foundations.BealFreyMod53Kill.not_is_fourth_5),
    ⟨BealLevel26Foundations.BealFreyMod53Kill.direct_mod53_kill 1707710
      (not_fourth_rhs_mod53_of_res 1707710 50 rfl BealLevel26Foundations.BealFreyMod53Kill.not_is_fourth_25),
    ⟨BealLevel26Foundations.BealFreyMod53Kill.direct_mod53_kill 1708062
      (not_fourth_rhs_mod53_of_res 1708062 31 rfl BealLevel26Foundations.BealFreyMod53Kill.not_is_fourth_27),
    ⟨BealLevel26Foundations.BealFreyMod53Kill.direct_mod53_kill 1709070
      (not_fourth_rhs_mod53_of_res 1709070 32 rfl BealLevel26Foundations.BealFreyMod53Kill.not_is_fourth_6),
    ⟨BealLevel26Foundations.BealFreyMod53Kill.direct_mod53_kill 1710062
      (not_fourth_rhs_mod53_of_res 1710062 17 rfl BealLevel26Foundations.BealFreyMod53Kill.not_is_fourth_37),
    ⟨BealLevel26Foundations.BealFreyMod53Kill.direct_mod53_kill 1743678
      (not_fourth_rhs_mod53_of_res 1743678 31 rfl BealLevel26Foundations.BealFreyMod53Kill.not_is_fourth_27),
    ⟨BealLevel26Foundations.BealFreyMod53Kill.direct_mod53_kill 1745006
      (not_fourth_rhs_mod53_of_res 1745006 34 rfl BealLevel26Foundations.BealFreyMod53Kill.not_is_fourth_5),
    ⟨direct_mod29_kill 1752702
      (not_fourth_rhs_mod29_of_res 1752702 0 rfl not_is_fourth_29_19),
    ⟨BealLevel26Foundations.BealFreyMod53Kill.direct_mod53_kill 1760478
      (not_fourth_rhs_mod53_of_res 1760478 30 rfl BealLevel26Foundations.BealFreyMod53Kill.not_is_fourth_22),
    ⟨BealLevel26Foundations.BealFreyMod53Kill.direct_mod53_kill 1769214
      (not_fourth_rhs_mod53_of_res 1769214 21 rfl BealLevel26Foundations.BealFreyMod53Kill.not_is_fourth_30),
    ⟨direct_mod29_kill 1777582
      (not_fourth_rhs_mod29_of_res 1777582 27 rfl not_is_fourth_29_14),
    ⟨BealLevel26Foundations.BealFreyMod53Kill.direct_mod53_kill 1783918
      (not_fourth_rhs_mod53_of_res 1783918 44 rfl BealLevel26Foundations.BealFreyMod53Kill.not_is_fourth_12),
    ⟨BealLevel26Foundations.BealFreyMod53Kill.direct_mod53_kill 1786254
      (not_fourth_rhs_mod53_of_res 1786254 48 rfl BealLevel26Foundations.BealFreyMod53Kill.not_is_fourth_34),
    ⟨BealLevel26Foundations.BealFreyMod53Kill.direct_mod53_kill 1789294
      (not_fourth_rhs_mod53_of_res 1789294 14 rfl BealLevel26Foundations.BealFreyMod53Kill.not_is_fourth_8),
    ⟨BealLevel26Foundations.BealFreyMod53Kill.direct_mod53_kill 1790286
      (not_fourth_rhs_mod53_of_res 1790286 52 rfl BealLevel26Foundations.BealFreyMod53Kill.not_is_fourth_29),
    ⟨BealLevel26Foundations.BealFreyMod53Kill.direct_mod53_kill 1800350
      (not_fourth_rhs_mod53_of_res 1800350 46 rfl BealLevel26Foundations.BealFreyMod53Kill.not_is_fourth_38),
    ⟨BealLevel26Foundations.BealFreyMod53Kill.direct_mod53_kill 1807374
      (not_fourth_rhs_mod53_of_res 1807374 21 rfl BealLevel26Foundations.BealFreyMod53Kill.not_is_fourth_30),
    ⟨BealLevel26Foundations.BealFreyMod53Kill.direct_mod53_kill 1809390
      (not_fourth_rhs_mod53_of_res 1809390 23 rfl BealLevel26Foundations.BealFreyMod53Kill.not_is_fourth_29),
    ⟨BealLevel26Foundations.BealFreyMod53Kill.direct_mod53_kill 1810414
      (not_fourth_rhs_mod53_of_res 1810414 40 rfl BealLevel26Foundations.BealFreyMod53Kill.not_is_fourth_5),
    ⟨BealLevel26Foundations.BealFreyMod53Kill.direct_mod53_kill 1812398
      (not_fourth_rhs_mod53_of_res 1812398 10 rfl BealLevel26Foundations.BealFreyMod53Kill.not_is_fourth_18),
    ⟨BealLevel26Foundations.BealFreyMod53Kill.direct_mod53_kill 1818478
      (not_fourth_rhs_mod53_of_res 1818478 48 rfl BealLevel26Foundations.BealFreyMod53Kill.not_is_fourth_34),
    ⟨BealLevel26Foundations.BealFreyMod53Kill.direct_mod53_kill 1818814
      (not_fourth_rhs_mod53_of_res 1818814 13 rfl BealLevel26Foundations.BealFreyMod53Kill.not_is_fourth_7),
    ⟨direct_mod29_kill 1824782
      (not_fourth_rhs_mod29_of_res 1824782 15 rfl not_is_fourth_29_17),
    ⟨BealLevel26Foundations.BealFreyMod53Kill.direct_mod53_kill 1828510
      (not_fourth_rhs_mod53_of_res 1828510 10 rfl BealLevel26Foundations.BealFreyMod53Kill.not_is_fourth_18),
    ⟨BealLevel26Foundations.BealFreyMod53Kill.direct_mod53_kill 1842254
      (not_fourth_rhs_mod53_of_res 1842254 27 rfl BealLevel26Foundations.BealFreyMod53Kill.not_is_fourth_20),
    ⟨BealLevel26Foundations.BealFreyMod53Kill.direct_mod53_kill 1847278
      (not_fourth_rhs_mod53_of_res 1847278 16 rfl BealLevel26Foundations.BealFreyMod53Kill.not_is_fourth_2),
    ⟨direct_mod29_kill 1858398
      (not_fourth_rhs_mod29_of_res 1858398 20 rfl not_is_fourth_29_17),
    ⟨BealLevel26Foundations.BealFreyMod53Kill.direct_mod53_kill 1863102
      (not_fourth_rhs_mod53_of_res 1863102 46 rfl BealLevel26Foundations.BealFreyMod53Kill.not_is_fourth_38),
    ⟨BealLevel26Foundations.BealFreyMod53Kill.direct_mod53_kill 1864126
      (not_fourth_rhs_mod53_of_res 1864126 10 rfl BealLevel26Foundations.BealFreyMod53Kill.not_is_fourth_18),
    ⟨BealLevel26Foundations.BealFreyMod53Kill.direct_mod53_kill 1879214
      (not_fourth_rhs_mod53_of_res 1879214 46 rfl BealLevel26Foundations.BealFreyMod53Kill.not_is_fourth_38),
    ⟨BealLevel26Foundations.BealFreyMod53Kill.direct_mod53_kill 1879886
      (not_fourth_rhs_mod53_of_res 1879886 29 rfl BealLevel26Foundations.BealFreyMod53Kill.not_is_fourth_34),
    True.intro⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩

/-- 352 named `B ≡ 14` rows: 266 by mod 53, 77 by
    q=29, 9 by q=109.  Empty axioms.  Not Ribet.
    Does not replace KrausB14.`eliminated_full`
    (the two-element mod-16 kill).
    `B14_honest` stays the uninhabited Prop. -/
theorem beal_4_13_13_gap3_B_le_2M_eliminated_B14_full
    (B : Nat) (hMem : B ∈ step60_b14_list) :
    ¬ ∃ A, Nat.pow A 4 + Nat.pow B 4 = Nat.pow (B + 3) 13 :=
  let h' : B ∈ step60_b14_concrete :=
    Eq.rec (motive := fun t (_ : step60_b14_list = t) => B ∈ t)
      hMem step60_b14_concrete_eq.symm
  no_A_of_all step60_b14_concrete all_no_A_step60 B h'

/-- User draft name, in this namespace only.
    KrausB14 / RibetMazur keep `eliminated_full`
    as the two-element `[196, 1500003]` kill. -/
theorem beal_4_13_13_gap3_B_le_2M_eliminated_full
    (B : Nat) (hMem : B ∈ step60_b14_list) :
    ¬ ∃ A, Nat.pow A 4 + Nat.pow B 4 = Nat.pow (B + 3) 13 :=
  beal_4_13_13_gap3_B_le_2M_eliminated_B14_full B hMem


#check fourth_powers_mod17
#check fourth_powers_mod_q_17
#check fourth_powers_mod29
#check fourth_powers_mod109
#check rhs_mod17
#check rhs_mod29
#check rhs_mod109
#check direct_mod17_kill
#check direct_mod_q_17_kill
#check direct_mod29_kill
#check direct_mod109_kill
#check killed_mod17
#check killed_mod29
#check killed_mod109
#check beal_4_13_13_gap3_B_le_2M_eliminated_86_mod17
#check beal_4_13_13_gap3_B_le_2M_eliminated_86_mod29
#check beal_4_13_13_gap3_B_le_2M_eliminated_86_mod109
#check beal_4_13_13_gap3_B_le_2M_eliminated_86_modq
#print axioms direct_mod17_kill
#print axioms direct_mod_q_17_kill
#print axioms direct_mod29_kill
#print axioms direct_mod109_kill
#print axioms beal_4_13_13_gap3_B_le_2M_eliminated_86_mod17
#print axioms beal_4_13_13_gap3_B_le_2M_eliminated_86_mod29
#print axioms beal_4_13_13_gap3_B_le_2M_eliminated_86_mod109
#print axioms beal_4_13_13_gap3_B_le_2M_eliminated_86_modq
#check step60_b14_concrete
#check beal_4_13_13_gap3_B_le_2M_eliminated_B14_full
#check beal_4_13_13_gap3_B_le_2M_eliminated_full
#print axioms not_fourth_rhs_mod53_of_res
#print axioms beal_4_13_13_gap3_B_le_2M_eliminated_B14_full
#print axioms beal_4_13_13_gap3_B_le_2M_eliminated_full

end BealLevel26Foundations.BealFreyModQKill
