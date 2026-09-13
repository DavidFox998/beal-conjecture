/-
Copyright (c) 2026 David Fox. All rights reserved.
Released under MIT license as described in the file LICENSE.
Authors: David Fox

Track B v8.19.3 — primitive prime divisor of `C¹³ − B¹³`.
Mathlib 4.12 has no `Mathlib.NumberTheory.Zsigmondy`.
The classical exceptions `(2,1,6)` and `n = 2` fail by
`decide` (`13 ≠ 6`, `13 ≠ 2`).  Existence for `n = 13`
is the elementary cyclotomic argument: `Φ₁₃(C,B)` has a
prime factor `p ≠ 13`, and that `p` is primitive.

`zsigmondy_13` is inhabited.
`beal_odd_A_ge3_size_gap` gives `p ∣ A` and `p ∤ (C−B)`.
Does **not** inhabit `ExistsNewformLevel2`.
Does **not** drop `ModularImpliesLevel2Newform`.
Not imported by the 24-module none chain.
-/

import Mathlib.Algebra.GeomSum
import Mathlib.Data.Nat.Choose.Dvd
import Mathlib.Data.Nat.Choose.Sum
import Mathlib.Data.Nat.GCD.Basic
import Mathlib.Data.Nat.ModEq
import Mathlib.Data.Nat.Prime.Basic
import Mathlib.FieldTheory.Finite.Basic
import Mathlib.GroupTheory.OrderOfElement
import Mathlib.Tactic

namespace BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13

/-- A prime dividing `aⁿ − bⁿ` that does not divide
`aᵏ − bᵏ` for `0 < k < n`.  `k = 0` is excluded
because `a⁰ − b⁰ = 0`. -/
def has_primitive_prime_divisor (a b n : Nat) : Prop :=
  ∃ p : Nat, Nat.Prime p ∧ p ∣ (a ^ n - b ^ n) ∧
    ∀ k : Nat, 0 < k → k < n → ¬ p ∣ (a ^ k - b ^ k)

/-- Homogeneous 13-term cyclotomic sum `Φ₁₃(C,B)`. -/
def phi13 (C B : Nat) : Nat :=
  ∑ i ∈ Finset.range 13, C ^ i * B ^ (12 - i)

theorem zsigmondy_exception_not_2_1_6 (C B : Nat)
    (_hCgtB : C > B) (_hBpos : B ≥ 1) :
    ¬ (C = 2 ∧ B = 1 ∧ (13 : Nat) = 6) := by
  intro h
  exact (by decide : (13 : Nat) ≠ 6) h.2.2

theorem zsigmondy_exception_not_power_of_two_plus_one (C B : Nat) :
    ¬ (C + B = 2 ^ 1 ∧ (13 : Nat) = 2) := by
  intro h
  exact (by decide : (13 : Nat) ≠ 2) h.2

theorem zsigmondy_exception_not_exists_k_pow2 (C B : Nat) :
    ¬ ∃ k : Nat, C + B = 2 ^ k ∧ (13 : Nat) = 2 := by
  intro h
  rcases h with ⟨_k, hk⟩
  have : (13 : Nat) ≠ 2 := by decide
  exact this hk.2

theorem C_pow13_sub_eq_phi13_mul (C B : Nat) (hBC : B ≤ C) :
    C ^ 13 - B ^ 13 = phi13 C B * (C - B) := by
  have hC : C - B + B = C := Nat.sub_add_cancel hBC
  have hgeom :
      (∑ i ∈ Finset.range 13,
          (C - B + B) ^ i * B ^ (13 - 1 - i)) * (C - B) + B ^ 13
        = (C - B + B) ^ 13 :=
    geom_sum₂_mul_add (C - B) B 13
  have hS :
      (∑ i ∈ Finset.range 13, C ^ i * B ^ (13 - 1 - i)) * (C - B)
          + B ^ 13
        = C ^ 13 := by
    simpa [hC] using hgeom
  have hidx :
      (∑ i ∈ Finset.range 13, C ^ i * B ^ (13 - 1 - i))
        = phi13 C B := by
    unfold phi13
    refine Finset.sum_congr rfl ?_
    intro i _hi
    have : 13 - 1 - i = 12 - i := by simp
    rw [this]
  rw [← hS, Nat.add_comm, Nat.add_sub_cancel_left, hidx]

theorem phi13_ge_13_mul_B_pow_12 (C B : Nat) (hCgtB : B < C) :
    13 * B ^ 12 ≤ phi13 C B := by
  have hBC : B ≤ C := Nat.le_of_lt hCgtB
  have hterm : ∀ i ∈ Finset.range 13,
      B ^ 12 ≤ C ^ i * B ^ (12 - i) := by
    intro i hi
    have hi12 : i ≤ 12 := Nat.lt_succ_iff.mp (Finset.mem_range.mp hi)
    have hpow : B ^ i * B ^ (12 - i) = B ^ 12 := by
      rw [← Nat.pow_add, Nat.add_comm, Nat.sub_add_cancel hi12]
    have hmono : B ^ i ≤ C ^ i := Nat.pow_le_pow_left hBC i
    have : B ^ i * B ^ (12 - i) ≤ C ^ i * B ^ (12 - i) :=
      Nat.mul_le_mul_right _ hmono
    simpa [hpow] using this
  have hsum :
      ∑ i ∈ Finset.range 13, B ^ 12
        ≤ ∑ i ∈ Finset.range 13, C ^ i * B ^ (12 - i) :=
    Finset.sum_le_sum hterm
  simpa [phi13, Finset.sum_const, Finset.card_range] using hsum

theorem phi13_pos (C B : Nat) (hCgtB : B < C) (hBpos : 0 < B) :
    1 < phi13 C B := by
  have hge : 13 * B ^ 12 ≤ phi13 C B := phi13_ge_13_mul_B_pow_12 C B hCgtB
  have hB12 : 1 ≤ B ^ 12 := Nat.one_le_pow 12 B hBpos
  have h13 : 13 ≤ 13 * B ^ 12 := Nat.le_mul_of_pos_right 13 hB12
  exact Nat.lt_of_lt_of_le (by decide : (1 : Nat) < 13) (h13.trans hge)

theorem B_modEq_C_of_sub (C B : Nat) (hBC : B ≤ C) :
    B ≡ C [MOD C - B] :=
  (Nat.modEq_iff_dvd' hBC).mpr (dvd_rfl)

theorem sum_modEq {ι : Type*} [DecidableEq ι] (s : Finset ι)
    (f g : ι → Nat) (n : Nat)
    (h : ∀ i ∈ s, f i ≡ g i [MOD n]) :
    ∑ i ∈ s, f i ≡ ∑ i ∈ s, g i [MOD n] := by
  classical
  revert h
  refine Finset.induction_on s ?empty ?insert
  · intro _h
    rfl
  · intro a s ha ih h
    rw [Finset.sum_insert ha, Finset.sum_insert ha]
    exact (h a (Finset.mem_insert_self a s)).add
      (ih fun i hi => h i (Finset.mem_insert_of_mem hi))

theorem phi13_modEq_13_mul_B_pow_12 (C B : Nat) (hBC : B ≤ C) :
    phi13 C B ≡ 13 * B ^ 12 [MOD C - B] := by
  have hCB : B ≡ C [MOD C - B] := B_modEq_C_of_sub C B hBC
  have hterm : ∀ i ∈ Finset.range 13,
      C ^ i * B ^ (12 - i) ≡ B ^ 12 [MOD C - B] := by
    intro i hi
    have hi12 : i ≤ 12 := Nat.lt_succ_iff.mp (Finset.mem_range.mp hi)
    have hpow : C ^ i ≡ B ^ i [MOD C - B] := hCB.symm.pow i
    have hmul : C ^ i * B ^ (12 - i) ≡ B ^ i * B ^ (12 - i) [MOD C - B] :=
      hpow.mul_right _
    have hidx : B ^ i * B ^ (12 - i) = B ^ 12 := by
      rw [← Nat.pow_add, Nat.add_comm, Nat.sub_add_cancel hi12]
    simpa [hidx] using hmul
  have hsum :
      phi13 C B ≡ ∑ i ∈ Finset.range 13, B ^ 12 [MOD C - B] := by
    simpa [phi13] using
      sum_modEq (Finset.range 13)
        (fun i => C ^ i * B ^ (12 - i)) (fun _ => B ^ 12) (C - B) hterm
  have hcard : ∑ i ∈ Finset.range 13, B ^ 12 = 13 * B ^ 12 := by
    simp [Finset.sum_const, Finset.card_range]
  simpa [hcard] using hsum

theorem gcd_phi13_sub_dvd_13 (C B : Nat) (hBC : B ≤ C)
    (hCop : Nat.Coprime C B) :
    Nat.gcd (phi13 C B) (C - B) ∣ 13 := by
  have hmod := phi13_modEq_13_mul_B_pow_12 C B hBC
  have hgcd :
      Nat.gcd (phi13 C B) (C - B) = Nat.gcd (13 * B ^ 12) (C - B) :=
    hmod.gcd_eq
  have hsubB : Nat.gcd (C - B) B = Nat.gcd C B :=
    Nat.gcd_sub_self_left hBC
  have hCopSub : Nat.Coprime (C - B) B := by
    simpa [Nat.Coprime, hsubB] using hCop
  have hCopPow : Nat.Coprime (C - B) (B ^ 12) :=
    (Nat.coprime_pow_right_iff (by decide : (0 : Nat) < 12) (C - B) B).mpr
      hCopSub
  have d_dvd : Nat.gcd (13 * B ^ 12) (C - B) ∣ 13 * B ^ 12 :=
    Nat.gcd_dvd_left _ _
  have d_dvd_sub : Nat.gcd (13 * B ^ 12) (C - B) ∣ C - B :=
    Nat.gcd_dvd_right _ _
  have d_cop : Nat.Coprime (Nat.gcd (13 * B ^ 12) (C - B)) (B ^ 12) :=
    Nat.Coprime.coprime_dvd_left d_dvd_sub hCopPow
  have : Nat.gcd (13 * B ^ 12) (C - B) ∣ 13 :=
    d_cop.dvd_of_dvd_mul_right d_dvd
  simpa [hgcd] using this

theorem not_thirteen_dvd_B_of_thirteen_dvd_sub
    (C B : Nat) (hCgtB : B < C) (hCop : Nat.Coprime C B)
    (hd : 13 ∣ C - B) : ¬ 13 ∣ B := by
  intro hB
  have hC : 13 ∣ C := by
    have : 13 ∣ (C - B) + B := dvd_add hd hB
    rwa [Nat.sub_add_cancel (Nat.le_of_lt hCgtB)] at this
  exact Nat.not_coprime_of_dvd_of_dvd (by decide : (1 : Nat) < 13) hC hB hCop

theorem choose_term_succ (d B i : Nat) :
    d ^ (i + 1) * B ^ (13 - (i + 1)) * Nat.choose 13 (i + 1)
      = d * (d ^ i * B ^ (12 - i) * Nat.choose 13 (i + 1)) := by
  cases' le_or_lt i 12 with hi hgt
  · have hidx : 13 - (i + 1) = 12 - i := by omega
    rw [hidx, pow_succ]
    ring
  · have h1 : 13 - (i + 1) = 0 := by omega
    have h2 : 12 - i = 0 := by omega
    rw [h1, h2, pow_succ]
    ring

/-- Binomial form of the cyclotomic sum. -/
theorem pow13_sub_eq_d_mul_choose_sum (B d : Nat) :
    (B + d) ^ 13 - B ^ 13
      = d * ∑ i ∈ Finset.range 13,
          d ^ i * B ^ (12 - i) * Nat.choose 13 (i + 1) := by
  have hbin :
      (d + B) ^ 13
        = ∑ m ∈ Finset.range (13 + 1),
            d ^ m * B ^ (13 - m) * Nat.choose 13 m :=
    add_pow d B 13
  have hcomm : B + d = d + B := Nat.add_comm B d
  rw [hcomm, hbin, Finset.sum_range_succ', Nat.add_comm]
  have h0 : d ^ 0 * B ^ (13 - 0) * Nat.choose 13 0 = B ^ 13 := by
    simp [Nat.choose_zero_right]
  rw [h0]
  have hrest :
      ∑ i ∈ Finset.range 13,
          d ^ (i + 1) * B ^ (13 - (i + 1)) * Nat.choose 13 (i + 1)
        = d * ∑ i ∈ Finset.range 13,
            d ^ i * B ^ (12 - i) * Nat.choose 13 (i + 1) := by
    have hfac :
        ∀ i ∈ Finset.range 13,
          d ^ (i + 1) * B ^ (13 - (i + 1)) * Nat.choose 13 (i + 1)
            = d * (d ^ i * B ^ (12 - i) * Nat.choose 13 (i + 1)) :=
      fun i _ => choose_term_succ d B i
    rw [Finset.sum_congr rfl hfac, ← Finset.mul_sum]
  rw [hrest, Nat.add_sub_cancel_left]

theorem choose_sum_eq_phi13 (C B : Nat) (hCgtB : B < C) :
    ∑ i ∈ Finset.range 13,
        (C - B) ^ i * B ^ (12 - i) * Nat.choose 13 (i + 1)
      = phi13 C B := by
  have hBC : B ≤ C := Nat.le_of_lt hCgtB
  have hd : 0 < C - B := Nat.sub_pos_of_lt hCgtB
  have hC : B + (C - B) = C := Nat.add_sub_of_le hBC
  have h1 := pow13_sub_eq_d_mul_choose_sum B (C - B)
  have h2 := C_pow13_sub_eq_phi13_mul C B hBC
  rw [hC] at h1
  have hmul :
      phi13 C B * (C - B)
        = (∑ i ∈ Finset.range 13,
            (C - B) ^ i * B ^ (12 - i) * Nat.choose 13 (i + 1))
          * (C - B) := by
    rw [← h2, h1]
    ring
  exact Nat.eq_of_mul_eq_mul_right hd hmul.symm

theorem choose_term_succ_S (d B j : Nat) :
    d ^ (j + 1) * B ^ (12 - (j + 1)) * Nat.choose 13 (j + 2)
      = d * (d ^ j * B ^ (11 - j) * Nat.choose 13 (j + 2)) := by
  cases' le_or_lt j 11 with hj hgt
  · have hidx : 12 - (j + 1) = 11 - j := by omega
    rw [hidx, pow_succ]
    ring
  · have h1 : 12 - (j + 1) = 0 := by omega
    have h2 : 11 - j = 0 := by omega
    rw [h1, h2, pow_succ]
    ring

/-- When `13 ∣ (C−B)`, write `Φ₁₃ = 13 M` with `13 ∤ M` and `1 < M`. -/
theorem phi13_of_thirteen_dvd_sub (C B : Nat) (hCgtB : B < C)
    (hBpos : 0 < B) (hCop : Nat.Coprime C B) (hd : 13 ∣ C - B) :
    ∃ M : Nat, phi13 C B = 13 * M ∧ ¬ 13 ∣ M ∧ 1 < M := by
  obtain ⟨t, ht⟩ := hd
  have hd' : 13 ∣ C - B := ⟨t, ht⟩
  have htpos : 0 < t := by
    have hpos : 0 < C - B := Nat.sub_pos_of_lt hCgtB
    have : 0 < 13 * t := by rwa [ht] at hpos
    omega
  have hnotB : ¬ 13 ∣ B :=
    not_thirteen_dvd_B_of_thirteen_dvd_sub C B hCgtB hCop hd'
  let S : Nat :=
    ∑ j ∈ Finset.range 12,
      (C - B) ^ j * B ^ (11 - j) * Nat.choose 13 (j + 2)
  have hsplit : phi13 C B = 13 * B ^ 12 + (C - B) * S := by
    have hcs := (choose_sum_eq_phi13 C B hCgtB).symm
    have hsum :
        ∑ i ∈ Finset.range 13,
            (C - B) ^ i * B ^ (12 - i) * Nat.choose 13 (i + 1)
          = (C - B) ^ 0 * B ^ 12 * Nat.choose 13 1
            + ∑ j ∈ Finset.range 12,
                (C - B) ^ (j + 1) * B ^ (12 - (j + 1))
                  * Nat.choose 13 (j + 2) := by
      rw [Finset.sum_range_succ', Nat.add_comm]
    have h0 : (C - B) ^ 0 * B ^ 12 * Nat.choose 13 1 = 13 * B ^ 12 := by
      simp [Nat.choose_one_right, Nat.mul_comm]
    have hrest :
        ∑ j ∈ Finset.range 12,
            (C - B) ^ (j + 1) * B ^ (12 - (j + 1))
              * Nat.choose 13 (j + 2)
          = (C - B) * S := by
      have hfac :
          ∀ j ∈ Finset.range 12,
            (C - B) ^ (j + 1) * B ^ (12 - (j + 1)) * Nat.choose 13 (j + 2)
              = (C - B) * ((C - B) ^ j * B ^ (11 - j) * Nat.choose 13 (j + 2)) :=
        fun j _ => choose_term_succ_S (C - B) B j
      rw [Finset.sum_congr rfl hfac, ← Finset.mul_sum]
    rw [hcs, hsum, h0, hrest]
  have hM : phi13 C B = 13 * (B ^ 12 + t * S) := by
    rw [hsplit, ht]
    ring
  refine ⟨B ^ 12 + t * S, hM, ?_, ?_⟩
  · intro h13M
    have h13S : 13 ∣ S := by
      refine Finset.dvd_sum ?_
      intro j hj
      have hjle : j + 2 ≤ 13 := by
        have : j < 12 := Finset.mem_range.mp hj
        omega
      cases' lt_or_eq_of_le hjle with hlt heq
      · have hch : 13 ∣ Nat.choose 13 (j + 2) :=
          Nat.Prime.dvd_choose_self (by decide : Nat.Prime 13)
            (Nat.succ_ne_zero (j + 1)) hlt
        exact dvd_mul_of_dvd_right hch _
      · have hj11 : j = 11 := by omega
        have hterm :
            (C - B) ^ j * B ^ (11 - j) * Nat.choose 13 (j + 2)
              = (C - B) ^ 11 := by
          rw [hj11, pow_zero, Nat.choose_self, Nat.mul_one, Nat.mul_one]
        rw [hterm]
        exact dvd_pow hd' (by decide : (11 : Nat) ≠ 0)
    have h13ts : 13 ∣ t * S := dvd_mul_of_dvd_right h13S t
    have h13B12 : 13 ∣ B ^ 12 := by
      have hsub :=
        Nat.dvd_sub (Nat.le_add_left (t * S) (B ^ 12)) h13M h13ts
      simpa using hsub
    exact hnotB (Nat.Prime.dvd_of_dvd_pow (by decide : Nat.Prime 13) h13B12)
  · have hmem : (11 : Nat) ∈ Finset.range 12 := by decide
    have hSlast : (C - B) ^ 11 ≤ S := by
      have hterm :
          (C - B) ^ 11 * B ^ 0 * Nat.choose 13 13
            ≤ ∑ j ∈ Finset.range 12,
                (C - B) ^ j * B ^ (11 - j) * Nat.choose 13 (j + 2) :=
        Finset.single_le_sum
          (fun j _ =>
            Nat.zero_le ((C - B) ^ j * B ^ (11 - j) * Nat.choose 13 (j + 2)))
          hmem
      have heq : (C - B) ^ 11 * B ^ 0 * Nat.choose 13 13 = (C - B) ^ 11 := by
        rw [pow_zero, Nat.choose_self, Nat.mul_one, Nat.mul_one]
      exact heq ▸ hterm
    have htpow : (C - B) ^ 11 = 13 ^ 11 * t ^ 11 := by
      rw [ht, mul_pow]
    have hle : 13 ^ 11 * t ^ 11 ≤ S := by
      simpa [htpow] using hSlast
    have hmul : t * (13 ^ 11 * t ^ 11) ≤ t * S :=
      Nat.mul_le_mul_left t hle
    have hpow : t * (13 ^ 11 * t ^ 11) = 13 ^ 11 * t ^ 12 := by
      ring
    have hts : 13 ^ 11 * t ^ 12 ≤ t * S := by
      rw [← hpow]
      exact hmul
    have hMge : B ^ 12 + 13 ^ 11 * t ^ 12 ≤ B ^ 12 + t * S :=
      Nat.add_le_add_left hts _
    have hbig : 1 < B ^ 12 + 13 ^ 11 * t ^ 12 := by
      have hB12 : 1 ≤ B ^ 12 := Nat.one_le_pow 12 B hBpos
      have ht12 : 1 ≤ t ^ 12 := Nat.one_le_pow 12 t htpos
      nlinarith
    exact Nat.lt_of_lt_of_le hbig hMge

theorem thirteen_dvd_sub_of_thirteen_dvd_phi13 (C B : Nat)
    (hCgtB : B < C) (h13Φ : 13 ∣ phi13 C B) : 13 ∣ C - B := by
  haveI : Fact (Nat.Prime 13) := ⟨by decide⟩
  have hferC : (C : ZMod 13) ^ 13 = (C : ZMod 13) := ZMod.pow_card _
  have hferB : (B : ZMod 13) ^ 13 = (B : ZMod 13) := ZMod.pow_card _
  have hBC : B ≤ C := Nat.le_of_lt hCgtB
  have hprod : C ^ 13 - B ^ 13 = phi13 C B * (C - B) :=
    C_pow13_sub_eq_phi13_mul C B hBC
  have h13prod : 13 ∣ C ^ 13 - B ^ 13 := by
    rw [hprod]
    exact dvd_mul_of_dvd_left h13Φ _
  have hle : B ^ 13 ≤ C ^ 13 := Nat.pow_le_pow_left hBC 13
  have hmod : B ^ 13 ≡ C ^ 13 [MOD 13] :=
    (Nat.modEq_iff_dvd' hle).mpr h13prod
  have hz : ((B ^ 13 : Nat) : ZMod 13) = ((C ^ 13 : Nat) : ZMod 13) :=
    (ZMod.natCast_eq_natCast_iff (B ^ 13) (C ^ 13) 13).mpr hmod
  have hCB : (B : ZMod 13) = (C : ZMod 13) := by
    rw [← hferB, ← hferC, ← Nat.cast_pow, ← Nat.cast_pow, hz]
  exact (Nat.modEq_iff_dvd' hBC).mp
    ((ZMod.natCast_eq_natCast_iff B C 13).mp hCB)

theorem exists_prime_dvd_phi13_ne_thirteen (C B : Nat)
    (hCgtB : B < C) (hBpos : 0 < B) (hCop : Nat.Coprime C B) :
    ∃ p : Nat, Nat.Prime p ∧ p ∣ phi13 C B ∧ p ≠ 13 := by
  have hΦne1 : phi13 C B ≠ 1 := ne_of_gt (phi13_pos C B hCgtB hBpos)
  obtain ⟨p, hp, hpdvd⟩ := Nat.exists_prime_and_dvd hΦne1
  cases' eq_or_ne p 13 with hp13 hpne
  · subst hp13
    have h13sub : 13 ∣ C - B :=
      thirteen_dvd_sub_of_thirteen_dvd_phi13 C B hCgtB hpdvd
    obtain ⟨M, hΦM, hnotM, hM1⟩ :=
      phi13_of_thirteen_dvd_sub C B hCgtB hBpos hCop h13sub
    obtain ⟨q, hq, hqdvd⟩ := Nat.exists_prime_and_dvd (ne_of_gt hM1)
    refine ⟨q, hq, ?_, ?_⟩
    · rw [hΦM]
      exact dvd_mul_of_dvd_right hqdvd 13
    · intro hq13
      subst hq13
      exact hnotM hqdvd
  · exact ⟨p, hp, hpdvd, hpne⟩

theorem pow_cast_eq_of_dvd_sub {C B p k : Nat}
    (hCgtB : B < C) (hdvd : p ∣ C ^ k - B ^ k) :
    (C : ZMod p) ^ k = (B : ZMod p) ^ k := by
  have hle : B ^ k ≤ C ^ k :=
    Nat.pow_le_pow_left (Nat.le_of_lt hCgtB) k
  have hmod : B ^ k ≡ C ^ k [MOD p] :=
    (Nat.modEq_iff_dvd' hle).mpr hdvd
  have h := (ZMod.natCast_eq_natCast_iff (B ^ k) (C ^ k) p).mpr hmod
  simpa [Nat.cast_pow] using h.symm

theorem not_dvd_base_of_dvd_pow_sub {C B p k : Nat}
    (hp : Nat.Prime p) (hk : 0 < k) (hCop : Nat.Coprime C B)
    (hCgtB : B < C) (hdvd : p ∣ C ^ k - B ^ k) :
    ¬ p ∣ C ∧ ¬ p ∣ B := by
  haveI : Fact p.Prime := ⟨hp⟩
  have hz := pow_cast_eq_of_dvd_sub hCgtB hdvd
  constructor
  · intro hpC
    have hC0 : (C : ZMod p) = 0 :=
      (ZMod.natCast_zmod_eq_zero_iff_dvd C p).mpr hpC
    have hBk : (B : ZMod p) ^ k = 0 := by
      simpa [hC0, zero_pow (Nat.pos_iff_ne_zero.mp hk)] using hz.symm
    have hB0 : (B : ZMod p) = 0 := pow_eq_zero hBk
    have hpB : p ∣ B := (ZMod.natCast_zmod_eq_zero_iff_dvd B p).mp hB0
    exact Nat.not_coprime_of_dvd_of_dvd hp.one_lt hpC hpB hCop
  · intro hpB
    have hB0 : (B : ZMod p) = 0 :=
      (ZMod.natCast_zmod_eq_zero_iff_dvd B p).mpr hpB
    have hCk : (C : ZMod p) ^ k = 0 := by
      simpa [hB0, zero_pow (Nat.pos_iff_ne_zero.mp hk)] using hz
    have hC0 : (C : ZMod p) = 0 := pow_eq_zero hCk
    have hpC : p ∣ C := (ZMod.natCast_zmod_eq_zero_iff_dvd C p).mp hC0
    exact Nat.not_coprime_of_dvd_of_dvd hp.one_lt hpC hpB hCop

theorem prime_dvd_phi13_is_primitive (C B p : Nat)
    (hp : Nat.Prime p) (hCgtB : B < C) (_hBpos : 0 < B)
    (hCop : Nat.Coprime C B) (hpΦ : p ∣ phi13 C B) (hpne : p ≠ 13) :
    has_primitive_prime_divisor C B 13 := by
  have hBC : B ≤ C := Nat.le_of_lt hCgtB
  have hpDiff : p ∣ C ^ 13 - B ^ 13 := by
    rw [C_pow13_sub_eq_phi13_mul C B hBC]
    exact dvd_mul_of_dvd_left hpΦ _
  have hpNotSub : ¬ p ∣ C - B := by
    intro hpSub
    have hgcd : Nat.gcd (phi13 C B) (C - B) ∣ 13 :=
      gcd_phi13_sub_dvd_13 C B hBC hCop
    have hpG : p ∣ Nat.gcd (phi13 C B) (C - B) :=
      Nat.dvd_gcd hpΦ hpSub
    have : p ∣ 13 := Nat.dvd_trans hpG hgcd
    rcases (Nat.dvd_prime (by decide : Nat.Prime 13)).mp this with h1 | h13
    · exact (Nat.Prime.ne_one hp) h1
    · exact hpne h13
  refine ⟨p, hp, hpDiff, ?_⟩
  intro k hk0 hk13 hpK
  haveI : Fact p.Prime := ⟨hp⟩
  have hbases := not_dvd_base_of_dvd_pow_sub hp hk0 hCop hCgtB hpK
  have hB0 : (B : ZMod p) ≠ 0 := by
    intro h0
    exact hbases.2 ((ZMod.natCast_zmod_eq_zero_iff_dvd B p).mp h0)
  let u : ZMod p := (C : ZMod p) * (B : ZMod p)⁻¹
  have huk : u ^ k = 1 := by
    have hz := pow_cast_eq_of_dvd_sub (p := p) hCgtB hpK
    dsimp [u]
    rw [mul_pow, inv_pow, hz]
    exact mul_inv_cancel₀ (pow_ne_zero k hB0)
  have hu13 : u ^ 13 = 1 := by
    have hz := pow_cast_eq_of_dvd_sub (p := p) hCgtB hpDiff
    dsimp [u]
    rw [mul_pow, inv_pow, hz]
    exact mul_inv_cancel₀ (pow_ne_zero (13 : Nat) hB0)
  have hordk : orderOf u ∣ k := orderOf_dvd_of_pow_eq_one huk
  have hord13 : orderOf u ∣ 13 := orderOf_dvd_of_pow_eq_one hu13
  rcases (Nat.dvd_prime (by decide : Nat.Prime 13)).mp hord13 with h1 | h13ord
  · have hu1 : u = 1 := orderOf_eq_one_iff.mp h1
    have hEq : (C : ZMod p) = (B : ZMod p) := by
      have hmul :
          (C : ZMod p) * (B : ZMod p)⁻¹ * (B : ZMod p) = (B : ZMod p) := by
        simpa [u] using congrArg (fun x : ZMod p => x * (B : ZMod p)) hu1
      rwa [inv_mul_cancel_right₀ hB0] at hmul
    have hmod : B ≡ C [MOD p] :=
      (ZMod.natCast_eq_natCast_iff B C p).mp hEq.symm
    exact hpNotSub ((Nat.modEq_iff_dvd' hBC).mp hmod)
  · have : 13 ∣ k := by simpa [h13ord] using hordk
    exact Nat.not_dvd_of_pos_of_lt hk0 hk13 this

theorem has_primitive_prime_divisor_13_of_C_gt_B
    (C B : Nat) (hCgtB : C > B) (hBpos : B ≥ 1)
    (hCoprime : Nat.Coprime C B) :
    has_primitive_prime_divisor C B 13 := by
  obtain ⟨p, hp, hpΦ, hpne⟩ :=
    exists_prime_dvd_phi13_ne_thirteen C B hCgtB hBpos hCoprime
  exact prime_dvd_phi13_is_primitive C B p hp hCgtB hBpos hCoprime hpΦ hpne

/-- Inhabited Zsigmondy existence at exponent 13. -/
theorem zsigmondy_13 (C B : Nat) (hC : B < C) (hB : 0 < B)
    (hCop : Nat.Coprime C B) :
    has_primitive_prime_divisor C B 13 :=
  has_primitive_prime_divisor_13_of_C_gt_B C B hC hB hCop

theorem primitive_prime_not_dvd_C_sub_B (C B p : Nat)
    (_hp : Nat.Prime p)
    (hPrim : ∀ k : Nat, 0 < k → k < 13 → ¬ p ∣ C ^ k - B ^ k) :
    ¬ p ∣ C - B := by
  intro hDvd
  have hNot : ¬ p ∣ C ^ 1 - B ^ 1 := hPrim 1 (by decide) (by decide)
  have : C ^ 1 - B ^ 1 = C - B := by simp [pow_one]
  rw [this] at hNot
  exact hNot hDvd

theorem beal_odd_A_ge3_size_gap_has_prime_not_dvd_C_sub_B_but_dvd_A_pow4
    (A B C : Nat) (h : A ^ 4 + B ^ 13 = C ^ 13)
    (_hCgtB : C > B) (_hBpos : B ≥ 1) (_hCoprime : Nat.Coprime C B)
    (hpPrim : has_primitive_prime_divisor C B 13) :
    ∃ p : Nat, Nat.Prime p ∧ p ∣ A ^ 4 ∧ ¬ p ∣ C - B := by
  rcases hpPrim with ⟨p, hpPrime, hpDvdDiff, hpPrimNot⟩
  have hDiff : C ^ 13 - B ^ 13 = A ^ 4 := by
    rw [← h, Nat.add_comm, Nat.add_sub_cancel_left]
  have hpDvdA4 : p ∣ A ^ 4 := by
    rwa [← hDiff]
  exact ⟨p, hpPrime, hpDvdA4,
    primitive_prime_not_dvd_C_sub_B C B p hpPrime hpPrimNot⟩

/-- From `A⁴ + B¹³ = C¹³` with odd `A ≥ 3` and coprime
`C,B`, a primitive prime of `C¹³ − B¹³` divides `A`
and does not divide `C−B`. -/
theorem beal_odd_A_ge3_size_gap (A B C : Nat)
    (h : A ^ 4 + B ^ 13 = C ^ 13)
    (_hOddA : Odd A ∧ 3 ≤ A) (hBpos : B ≥ 1) (hBltC : B < C)
    (hCoprime : Nat.Coprime C B) :
    ∃ p : Nat, Nat.Prime p ∧ p ∣ A ∧ ¬ p ∣ C - B := by
  have hZsig : has_primitive_prime_divisor C B 13 :=
    has_primitive_prime_divisor_13_of_C_gt_B C B hBltC hBpos hCoprime
  obtain ⟨p, hpPrime, hpDvdA4, hpNotSub⟩ :=
    beal_odd_A_ge3_size_gap_has_prime_not_dvd_C_sub_B_but_dvd_A_pow4
      A B C h hBltC hBpos hCoprime hZsig
  exact ⟨p, hpPrime, Nat.Prime.dvd_of_dvd_pow hpPrime hpDvdA4, hpNotSub⟩

end BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13
