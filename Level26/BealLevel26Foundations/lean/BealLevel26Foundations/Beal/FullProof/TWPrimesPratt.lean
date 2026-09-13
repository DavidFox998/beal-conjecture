/-
Copyright (c) 2026 David Fox. All rights reserved.
Released under MIT license as described in the file LICENSE.
Authors: David Fox

Track B v8.16.0 — Structural binary modular exponentiation and a
Pratt primality lemma.  `modPow` iterates a step 32 times so
`decide` reduces it.  Every `Q₂ − 1` in the 100M table factors
through primes `≤ 997`.
-/

import Mathlib.Data.Nat.Prime.Basic
import Mathlib.Data.Nat.Totient
import Mathlib.Data.ZMod.Basic
import Mathlib.Data.List.Prime
import Mathlib.Data.List.Dedup
import Mathlib.Data.Fintype.Units
import Mathlib.GroupTheory.OrderOfElement
import Mathlib.Tactic

namespace BealLevel26Foundations.Beal.FullProof.TWPrimesPratt

/-- One LSB step of binary modular power. -/
def modPow.step (m : Nat) (p : Nat × Nat × Nat) : Nat × Nat × Nat :=
  let b := p.1
  let e := p.2.1
  let acc := p.2.2
  ((b * b) % m, e / 2, if e % 2 = 1 then (acc * b) % m else acc)

/-- Structural iterator so `decide` can unfold it. -/
def modPow.run (m : Nat) : Nat → Nat × Nat × Nat → Nat × Nat × Nat
  | 0, p => p
  | k + 1, p => modPow.run m k (modPow.step m p)

/-- Binary modular power, 32 steps (`e < 2^32`). -/
def modPow (a e m : Nat) : Nat :=
  if m ≤ 1 then 0 else (modPow.run m 32 (a % m, e, 1)).2.2

lemma zmod_natCast_mod {m : Nat} [NeZero m] (a : Nat) :
    ((a % m : Nat) : ZMod m) = a := by
  apply ZMod.val_injective
  rw [ZMod.val_natCast, ZMod.val_natCast, Nat.mod_mod]

lemma two_pow_succ (k : Nat) : (2 : Nat) ^ (k + 1) = 2 * 2 ^ k := by
  rw [Nat.pow_succ, Nat.mul_comm]

lemma two_mul_add_one_mod (q m : Nat) (hm : 0 < m) :
    (2 * q + 1) % (2 * m) = 2 * (q % m) + 1 := by
  have hlt : 2 * (q % m) + 1 < 2 * m := by
    have := Nat.mod_lt q hm
    omega
  have hq : q = m * (q / m) + q % m := (Nat.div_add_mod q m).symm
  have heq : 2 * q + 1 = (q / m) * (2 * m) + (2 * (q % m) + 1) := by
    conv_lhs => rw [hq]
    ring
  rw [heq, Nat.mul_add_mod_of_lt hlt]

lemma mod_two_mul_pow (e k : Nat) :
    e % 2 ^ (k + 1) = e % 2 + 2 * ((e / 2) % 2 ^ k) := by
  have he : e = 2 * (e / 2) + e % 2 := (Nat.div_add_mod e 2).symm
  conv_lhs => rw [he, two_pow_succ]
  have hr : e % 2 = 0 ∨ e % 2 = 1 := by
    have := Nat.mod_lt e (by decide : 0 < 2)
    omega
  rcases hr with hr | hr
  · rw [hr, zero_add]
    exact Nat.mul_mod_mul_left 2 (e / 2) (2 ^ k)
  · rw [hr]
    convert two_mul_add_one_mod (e / 2) (2 ^ k) (pow_pos (by decide : 0 < 2) k) using 1
    ac_rfl

theorem modPow.run_zmod {m : Nat} [NeZero m] (k b e acc : Nat) :
    let p := modPow.run m k (b, e, acc)
    (p.2.2 : ZMod m) = (acc : ZMod m) * (b : ZMod m) ^ (e % 2 ^ k) := by
  induction k generalizing b e acc with
  | zero =>
    simp [modPow.run, Nat.mod_one, pow_zero]
  | succ k ih =>
    simp only [modPow.run]
    rw [ih]
    unfold modPow.step
    simp only
    have hb2 : ((b * b % m : Nat) : ZMod m) = (b : ZMod m) ^ 2 := by
      rw [zmod_natCast_mod, Nat.cast_mul, sq]
    split_ifs with hodd
    · rw [zmod_natCast_mod, Nat.cast_mul, hb2, mul_assoc, ← pow_mul]
      have hmod := mod_two_mul_pow e k
      rw [hodd] at hmod
      rw [hmod, pow_add, pow_one, mul_comm (b : ZMod m)]
    · rw [hb2, ← pow_mul]
      have hmod := mod_two_mul_pow e k
      have heven : e % 2 = 0 := Nat.mod_two_ne_one.mp hodd
      rw [heven, zero_add] at hmod
      rw [hmod]

theorem modPow_zmod {m : Nat} [NeZero m] (hm : 1 < m) (a e : Nat)
    (he : e < 2 ^ 32) :
    (modPow a e m : ZMod m) = (a : ZMod m) ^ e := by
  unfold modPow
  rw [if_neg (not_le.mpr hm), modPow.run_zmod, zmod_natCast_mod]
  have : e % 2 ^ 32 = e := Nat.mod_eq_of_lt he
  rw [this, Nat.cast_one, one_mul]

theorem modPow.run_lt {m : Nat} (hm : 1 < m) :
    ∀ k b e acc, acc < m → (modPow.run m k (b, e, acc)).2.2 < m
  | 0, _b, _e, _acc, hacc => hacc
  | k + 1, b, e, acc, hacc => by
    apply modPow.run_lt hm k
    change (if e % 2 = 1 then (acc * b) % m else acc) < m
    split_ifs
    · exact Nat.mod_lt _ (Nat.zero_lt_of_lt hm)
    · exact hacc

theorem modPow_lt {a e m : Nat} (hm : 1 < m) : modPow a e m < m := by
  unfold modPow
  rw [if_neg (not_le.mpr hm)]
  exact modPow.run_lt hm 32 (a % m) e 1 hm

/-- If `n − 1` is a product of the listed primes and `a`
has order `n − 1` in `(ℤ/nℤ)ˣ`, then `n` is prime. -/
theorem prime_of_pratt {n a : Nat} (qs : List Nat)
    (hn : 1 < n) (hn32 : n < 2 ^ 32) (ha : Nat.Coprime a n)
    (hprod : qs.prod = n - 1)
    (hqs : ∀ q ∈ qs, Nat.Prime q)
    (hpow : modPow a (n - 1) n = 1)
    (hne : ∀ q ∈ qs.dedup, modPow a ((n - 1) / q) n ≠ 1) :
    Nat.Prime n := by
  haveI : NeZero n := ⟨(Nat.zero_lt_of_lt hn).ne'⟩
  haveI : Fact (1 < n) := ⟨hn⟩
  haveI : Fintype (ZMod n) := inferInstance
  haveI : DecidableEq (ZMod n) := inferInstance
  haveI : Fintype (ZMod n)ˣ := inferInstance
  have he32 : n - 1 < 2 ^ 32 := lt_of_le_of_lt (Nat.sub_le n 1) hn32
  let u : (ZMod n)ˣ := ZMod.unitOfCoprime a ha
  have hord : orderOf u = n - 1 := by
    refine orderOf_eq_of_pow_and_pow_div_prime (Nat.sub_pos_of_lt hn) ?_ ?_
    · apply Units.ext
      rw [Units.val_pow_eq_pow_val, Units.val_one, ZMod.coe_unitOfCoprime]
      have hz := modPow_zmod hn a (n - 1) he32
      rw [hpow, Nat.cast_one] at hz
      exact hz.symm
    · intro p hp hpdiv
      have hp' : Prime (p : Nat) := Nat.prime_iff.mp hp
      have hmem : p ∈ qs := by
        have hdiv' : p ∣ qs.prod := by
          rw [hprod]; exact hpdiv
        refine mem_list_primes_of_dvd_prod hp' ?_ hdiv'
        intro q hq
        exact Nat.prime_iff.mp (hqs q hq)
      have hmemd : p ∈ qs.dedup := List.mem_dedup.mpr hmem
      have hnpow : modPow a ((n - 1) / p) n ≠ 1 := hne p hmemd
      intro hu
      apply hnpow
      have hcoe : (u : ZMod n) ^ ((n - 1) / p) = 1 := by
        rw [← Units.val_pow_eq_pow_val, hu, Units.val_one]
      have hdiv32 : (n - 1) / p < 2 ^ 32 :=
        lt_of_le_of_lt (Nat.div_le_self _ _) he32
      rw [ZMod.coe_unitOfCoprime, ← modPow_zmod hn a ((n - 1) / p) hdiv32] at hcoe
      have hlt := modPow_lt (a := a) (e := (n - 1) / p) hn
      have hval := ZMod.val_natCast_of_lt hlt
      have hone : (1 : ZMod n).val = 1 := ZMod.val_one n
      calc
        modPow a ((n - 1) / p) n
            = (modPow a ((n - 1) / p) n : ZMod n).val := hval.symm
        _ = (1 : ZMod n).val := congrArg ZMod.val hcoe
        _ = 1 := hone
  have hcard : Fintype.card (ZMod n)ˣ = n - 1 := by
    have hdiv := orderOf_dvd_card (x := u)
    rw [hord] at hdiv
    have hle := Nat.card_units_zmod_lt_sub_one hn
    have hpos : 0 < Fintype.card (ZMod n)ˣ := Fintype.card_pos
    exact le_antisymm hle (Nat.le_of_dvd hpos hdiv)
  exact (Nat.prime_iff_card_units n).2 hcard

end BealLevel26Foundations.Beal.FullProof.TWPrimesPratt
