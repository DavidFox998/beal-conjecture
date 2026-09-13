/-
Copyright (c) 2026 David Fox. All rights reserved.
Released under MIT license as described in the file LICENSE.
Authors: David Fox

Track B v8.20.0 — plan for an upper bound on
`k = C − B`.  With `C = B+k`,
`S_13 ≡ 13 B¹² [MOD k]`.  Coprime `k B`
forces `gcd(k,S) ∣ 13`, so that gcd is
`1` or `13`.  The identity `A⁴ = k·S`
then makes coprime factors fourth powers,
and `k` is `u⁴` or `13 u⁴` or `13³ u⁴`.

The unbounded claim that `S` is never a
fourth power for `B ≤ 100` and `k ≥ 3`
stays uninhabited (`k` is unbounded).
That is the remaining decide / mod-16 slice
of the plan, not a closed bound on `k`.

Keeps v8.19.9 residue `k % 4 = 1` /
`k % 8 = 1`.
Keeps v8.19.8 `k` odd, coprime, congruence.
Keeps v8.19.7 `13 k B¹²` / `39 B¹²` /
`2 B³ + 1`.
Keeps v8.19.6 `B ≤ 100` `C = B+1,B+2` closed.
Keeps v8.19.5 `p ≡ 1 [MOD 13]`, `p ≥ 53`.
Keeps v8.19.4 `S_13`.
Keeps v8.19.3 `zsigmondy_13` inhabited.
Keeps v8.19.2 `C ≥ B+2`.
Keeps v8.19.0 `genus_X0_2_rat = 0` and
`ExistsNewformLevel2` as `0 ≠ 0`.

Does **not** inhabit `ExistsNewformLevel2`.
Does **not** drop `ModularImpliesLevel2Newform`.
Not imported by the 24-module none chain.
-/

import BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step9_fourth_pow_residue
import BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step7_General_k
import Mathlib.Algebra.GCDMonoid.Basic
import Mathlib.Data.Nat.Factorization.Basic
import Mathlib.Data.Nat.ModEq
import Mathlib.Tactic

namespace BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step10_k_upper_bound_plan

open BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step7_General_k
open BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13
open BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step8_k_odd_coprime
open BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step9_fourth_pow_residue

/-- Pointwise `ModEq` lifts through a Finset sum. -/
theorem sum_modEq_of_forall {α : Type*} [DecidableEq α]
    (s : Finset α) (f g : α → Nat) (n : Nat)
    (h : ∀ i ∈ s, f i ≡ g i [MOD n]) :
    s.sum f ≡ s.sum g [MOD n] := by
  classical
  revert h
  refine Finset.induction_on s ?_ ?_
  · intro; simp [Nat.ModEq]
  · intro a t ha ih h
    have ha' : f a ≡ g a [MOD n] := h a (Finset.mem_insert_self a t)
    have ht : ∀ i ∈ t, f i ≡ g i [MOD n] := fun i hi =>
      h i (Finset.mem_insert_of_mem hi)
    rw [Finset.sum_insert ha, Finset.sum_insert ha]
    exact ha'.add (ih ht)

/-- Internal: `C = B+k` makes every cyclotomic term `≡ B¹² [MOD k]`. -/
theorem S_13_C_B_mod_k (B k C : Nat) (hC : C = B + k) :
    S_13 C B % k = (13 * B ^ 12) % k := by
  have hCB : C ≡ B [MOD k] := by
    rw [hC, Nat.ModEq]
    simp [Nat.add_mod, Nat.mod_self]
  have hterm : ∀ i ∈ Finset.range 13,
      C ^ i * B ^ (12 - i) ≡ B ^ 12 [MOD k] := by
    intro i hi
    have hi12 : i ≤ 12 := Nat.lt_succ_iff.mp (Finset.mem_range.mp hi)
    have hp : C ^ i ≡ B ^ i [MOD k] := hCB.pow i
    have hm : C ^ i * B ^ (12 - i) ≡ B ^ i * B ^ (12 - i) [MOD k] :=
      hp.mul (Nat.ModEq.refl _)
    have hpow : B ^ i * B ^ (12 - i) = B ^ 12 := by
      rw [← Nat.pow_add, Nat.add_comm, Nat.sub_add_cancel hi12]
    rwa [hpow] at hm
  have hsum :
      (Finset.range 13).sum (fun i => C ^ i * B ^ (12 - i)) ≡
        (Finset.range 13).sum (fun _ => B ^ 12) [MOD k] :=
    sum_modEq_of_forall _ _ _ _ hterm
  have hcard : (Finset.range 13).sum (fun _ => B ^ 12) = 13 * B ^ 12 := by
    rw [Finset.sum_const, Finset.card_range, Nat.nsmul_eq_mul]
  have hphi : S_13 C B = phi13 C B :=
    BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step4.S_13_eq_phi13 C B
  rw [hphi, phi13, ← hcard]
  exact hsum

/-- Sketch name: `S % k = (13 * B^12) % k` when `S = S_13 C B`. -/
theorem S_13_mod_k (B k C S : Nat) (hC : C = B + k)
    (hS : S = S_13 C B) : S % k = (13 * B ^ 12) % k := by
  rw [hS]
  exact S_13_C_B_mod_k B k C hC

/-- Coprime `k B` kills the `B¹²` factor of `gcd k (13 B¹²)`. -/
theorem gcd_k_mul_13_B12_eq_gcd_k_13 (k B : Nat) (hCop : Nat.Coprime k B) :
    Nat.gcd k (13 * B ^ 12) = Nat.gcd k 13 := by
  have hB12 : Nat.Coprime k (B ^ 12) :=
    (Nat.coprime_pow_right_iff (by decide : (0 : Nat) < 12) k B).mpr hCop
  apply Nat.dvd_antisymm
  · have hdB :
        Nat.Coprime (Nat.gcd k (13 * B ^ 12)) (B ^ 12) :=
      Nat.Coprime.coprime_dvd_left (Nat.gcd_dvd_left k _) hB12
    have hd13 : Nat.gcd k (13 * B ^ 12) ∣ 13 :=
      hdB.dvd_mul_right.mp (Nat.gcd_dvd_right k (13 * B ^ 12))
    exact Nat.dvd_gcd (Nat.gcd_dvd_left k _) hd13
  · have : Nat.gcd k 13 ∣ 13 * B ^ 12 :=
      dvd_mul_of_dvd_left (Nat.gcd_dvd_right k 13) _
    exact Nat.dvd_gcd (Nat.gcd_dvd_left k 13) this

/-- Euclidean algorithm plus the cyclotomic congruence. -/
theorem gcd_k_S_eq_gcd_k_13 (B k C S : Nat)
    (hC : C = B + k) (hS : S = S_13 C B) (hCop : Nat.Coprime k B) :
    Nat.gcd k S = Nat.gcd k 13 := by
  have hmod : S % k = (13 * B ^ 12) % k := S_13_mod_k B k C S hC hS
  have h1 : Nat.gcd k S = Nat.gcd k (S % k) := by
    rw [Nat.gcd_rec k S, Nat.gcd_comm (S % k) k]
  have h2 : Nat.gcd k (S % k) = Nat.gcd k (13 * B ^ 12) := by
    rw [hmod, Nat.gcd_rec k (13 * B ^ 12),
      Nat.gcd_comm ((13 * B ^ 12) % k) k]
  rw [h1, h2, gcd_k_mul_13_B12_eq_gcd_k_13 k B hCop]

theorem gcd_k_S_dvd_13 (B k C S : Nat)
    (hC : C = B + k) (hS : S = S_13 C B) (hCoprimeKB : Nat.Coprime k B) :
    Nat.gcd k S ∣ 13 := by
  rw [gcd_k_S_eq_gcd_k_13 B k C S hC hS hCoprimeKB]
  exact Nat.gcd_dvd_right k 13

/-- Divisors of the prime `13` are `1` and `13`. -/
theorem gcd_k_S_eq_1_or_13 (B k C S : Nat)
    (hC : C = B + k) (hS : S = S_13 C B) (hCop : Nat.Coprime k B)
    (hk : 0 < k) :
    Nat.gcd k S = 1 ∨ Nat.gcd k S = 13 := by
  have hdvd : Nat.gcd k S ∣ 13 :=
    gcd_k_S_dvd_13 B k C S hC hS hCop
  have hp13 : Nat.Prime 13 := by decide
  let _ := hk
  rcases (Nat.dvd_prime hp13).mp hdvd with h1 | h13
  · exact Or.inl h1
  · exact Or.inr h13

/-- `A⁴ = (C−B) S_13` on a Beal `4/13/13` tuple with `C = B+k`. -/
theorem k_mul_S_eq_A_pow4 (A B C k : Nat)
    (h : A ^ 4 + B ^ 13 = C ^ 13) (hC : C = B + k) :
    A ^ 4 = k * S_13 C B := by
  have hdiff : C ^ 13 - B ^ 13 = A ^ 4 := by
    rw [← h, Nat.add_comm, Nat.add_sub_cancel_left]
  have hEq : C ^ 13 - B ^ 13 =
      (C - B) *
        BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step4.S_13 C B :=
    BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step4.C13_sub_B13_eq_sub_mul_S C B
  have hk : C - B = k := by rw [hC, Nat.add_sub_cancel_left]
  rw [← hdiff, hEq, hk]
  rfl

/-- Sketch name: coprime factors of a fourth power are fourth powers. -/
theorem coprime_mul_eq_fourth_pow (k₀ S₀ A₀ : Nat)
    (hCop : Nat.Coprime k₀ S₀) (hprod : k₀ * S₀ = A₀ ^ 4) :
    (∃ u, k₀ = u ^ 4) ∧ (∃ v, S₀ = v ^ 4) := by
  have hunit : IsUnit (gcd k₀ S₀) := by
    have : gcd k₀ S₀ = 1 := hCop
    rw [this]
    exact isUnit_one
  obtain ⟨u, hu⟩ := exists_eq_pow_of_mul_eq_pow (k := 4) hunit hprod
  have hunit' : IsUnit (gcd S₀ k₀) := by
    have : gcd S₀ k₀ = 1 := by
      change Nat.gcd S₀ k₀ = 1
      rw [Nat.gcd_comm]
      exact hCop
    rw [this]
    exact isUnit_one
  obtain ⟨v, hv⟩ :=
    exists_eq_pow_of_mul_eq_pow (k := 4) hunit'
      (by rw [Nat.mul_comm]; exact hprod)
  exact ⟨⟨u, hu⟩, ⟨v, hv⟩⟩

/-- The 13-free part of `k` is a fourth power. -/
theorem ord_compl_13_eq_fourth_power (k S A : Nat)
    (hk : k ≠ 0) (_hS : S ≠ 0) (hprod : k * S = A ^ 4)
    (hgcd : Nat.gcd k S ∣ 13) :
    ∃ u, ord_compl[13] k = u ^ 4 := by
  have hp13 : Nat.Prime 13 := by decide
  set t := k.factorization 13 with ht
  set k0 := ord_compl[13] k with hk0
  have hsplit : 13 ^ t * k0 = k := by
    rw [ht, hk0, Nat.ord_proj_mul_ord_compl_eq_self k 13]
  have hCop13 : Nat.Coprime k0 13 :=
    (Nat.coprime_ord_compl hp13 hk).symm
  have hCop13t : Nat.Coprime k0 (13 ^ t) := hCop13.pow_right t
  have hCopS : Nat.Coprime k0 S := by
    have hdvd : Nat.gcd k0 S ∣ Nat.gcd k S :=
      gcd_dvd_gcd (Nat.ord_compl_dvd k 13) (dvd_refl S)
    have hg : Nat.gcd k0 S ∣ 13 := hdvd.trans hgcd
    have hne : ¬ 13 ∣ k0 := Nat.not_dvd_ord_compl hp13 hk
    rcases (Nat.dvd_prime hp13).mp hg with h1 | h13eq
    · exact h1
    · exact absurd (h13eq ▸ Nat.gcd_dvd_left k0 S) hne
  have hCopAll : Nat.Coprime k0 (13 ^ t * S) :=
    hCop13t.mul_right hCopS
  have hprod' : k0 * (13 ^ t * S) = A ^ 4 := by
    rw [← Nat.mul_assoc, Nat.mul_comm k0, hsplit, hprod]
  exact (coprime_mul_eq_fourth_pow k0 (13 ^ t * S) A hCopAll hprod').1

/-- `gcd(k,S) ∣ 13` and `A⁴ = k S` force `k` to be
`u⁴` or `13 u⁴` or `13³ u⁴`. -/
theorem k_almost_fourth_power (k S A : Nat)
    (hprod : k * S = A ^ 4) (hgcd : Nat.gcd k S ∣ 13) :
    (∃ u, k = u ^ 4) ∨ (∃ u, k = 13 * u ^ 4) ∨
      (∃ u, k = 13 ^ 3 * u ^ 4) := by
  have hp13 : Nat.Prime 13 := by decide
  rcases Nat.eq_zero_or_pos k with hk0 | hkpos
  · subst hk0
    exact Or.inl ⟨0, by simp⟩
  rcases Nat.eq_zero_or_pos S with hS0 | hSpos
  · subst hS0
    have hkdvd : k ∣ 13 := by simpa using hgcd
    rcases (Nat.dvd_prime hp13).mp hkdvd with hk1 | hk13
    · exact Or.inl ⟨1, by simp [hk1]⟩
    · exact Or.inr (Or.inl ⟨1, by simp [hk13]⟩)
  obtain ⟨u, hu⟩ :=
    ord_compl_13_eq_fourth_power k S A hkpos.ne' hSpos.ne' hprod hgcd
  set t := k.factorization 13 with ht
  set vs := S.factorization 13 with hvs
  have hsplit : k = 13 ^ t * u ^ 4 := by
    calc
      k = 13 ^ k.factorization 13 * ord_compl[13] k :=
        (Nat.ord_proj_mul_ord_compl_eq_self k 13).symm
      _ = 13 ^ t * ord_compl[13] k := by rw [ht]
      _ = 13 ^ t * u ^ 4 := by rw [hu]
  have hsum : t + vs = 4 * A.factorization 13 := by
    have hm := Nat.factorization_mul hkpos.ne' hSpos.ne'
    have hp := Nat.factorization_pow A 4
    have h13 : (k * S).factorization 13 = (A ^ 4).factorization 13 := by
      rw [hprod]
    have : k.factorization 13 + S.factorization 13 =
        4 * A.factorization 13 := by
      simpa [hm, hp, nsmul_eq_mul] using h13
    simpa [ht, hvs] using this
  have hmin_le : min t vs ≤ 1 := by
    have hg := Nat.factorization_gcd hkpos.ne' hSpos.ne'
    have hinf : (k.factorization ⊓ S.factorization) 13 =
        min (k.factorization 13) (S.factorization 13) :=
      Finsupp.inf_apply
    have hmin : min t vs = (Nat.gcd k S).factorization 13 := by
      simpa [ht, hvs, hg] using hinf.symm
    have hgpos : Nat.gcd k S ≠ 0 :=
      (Nat.gcd_pos_of_pos_left S hkpos).ne'
    have hle :=
      (Nat.factorization_le_iff_dvd hgpos (by decide : (13 : Nat) ≠ 0)).mpr
        hgcd 13
    have h13fac : (13 : Nat).factorization 13 = 1 := by
      rw [Nat.Prime.factorization hp13, Finsupp.single_eq_same]
    omega
  rcases Nat.eq_zero_or_pos t with ht0 | htpos
  · refine Or.inl ⟨u, by simp [hsplit, ht0]⟩
  · rcases Nat.eq_zero_or_pos vs with hvs0 | hvspos
    · have hm : t = 4 * A.factorization 13 := by omega
      refine Or.inl ⟨13 ^ A.factorization 13 * u, ?_⟩
      calc
        k = 13 ^ t * u ^ 4 := hsplit
        _ = 13 ^ (4 * A.factorization 13) * u ^ 4 := by rw [hm]
        _ = 13 ^ (A.factorization 13 * 4) * u ^ 4 := by
          rw [Nat.mul_comm 4]
        _ = (13 ^ A.factorization 13) ^ 4 * u ^ 4 := by rw [Nat.pow_mul]
        _ = (13 ^ A.factorization 13 * u) ^ 4 :=
          (Nat.mul_pow _ _ 4).symm
    · have hmin1 : min t vs = 1 := by omega
      rcases Nat.eq_or_lt_of_le (Nat.succ_le_of_lt htpos) with ht1 | htgt
      · refine Or.inr (Or.inl ⟨u, by simp [hsplit, ht1.symm]⟩)
      · have hvs1 : vs = 1 := by
          let _ := htgt
          omega
        obtain ⟨m, hm⟩ : ∃ m, t = 4 * m + 3 := by
          have : t + 1 = 4 * A.factorization 13 := by omega
          exact ⟨t / 4, by omega⟩
        refine Or.inr (Or.inr ⟨13 ^ m * u, ?_⟩)
        have hpow : 13 ^ (4 * m + 3) = 13 ^ 3 * (13 ^ m) ^ 4 := by
          calc
            13 ^ (4 * m + 3) = 13 ^ (4 * m) * 13 ^ 3 := Nat.pow_add _ _ _
            _ = 13 ^ (m * 4) * 13 ^ 3 := by rw [Nat.mul_comm 4 m]
            _ = (13 ^ m) ^ 4 * 13 ^ 3 := by rw [Nat.pow_mul]
            _ = 13 ^ 3 * (13 ^ m) ^ 4 := Nat.mul_comm _ _
        calc
          k = 13 ^ t * u ^ 4 := hsplit
          _ = 13 ^ (4 * m + 3) * u ^ 4 := by rw [hm]
          _ = (13 ^ 3 * (13 ^ m) ^ 4) * u ^ 4 := by rw [hpow]
          _ = 13 ^ 3 * ((13 ^ m) ^ 4 * u ^ 4) := by rw [Nat.mul_assoc]
          _ = 13 ^ 3 * (13 ^ m * u) ^ 4 := by rw [← Nat.mul_pow]

/-- Packaged Beal form: coprime `k B` and `C = B+k`. -/
theorem beal_4_13_13_k_almost_fourth_power
    (A B C k : Nat) (h : A ^ 4 + B ^ 13 = C ^ 13)
    (hC : C = B + k) (hCop : Nat.Coprime k B) :
    (∃ u, k = u ^ 4) ∨ (∃ u, k = 13 * u ^ 4) ∨
      (∃ u, k = 13 ^ 3 * u ^ 4) :=
  k_almost_fourth_power k (S_13 C B) A
    (k_mul_S_eq_A_pow4 A B C k h hC).symm
    (gcd_k_S_dvd_13 B k C (S_13 C B) hC rfl hCop)

/-- Fourth powers are `0` or `1 [MOD 16]`.  Plan input
for a later `decide` on a finite `(B,k)` window. -/
theorem fourth_pow_mod_16 (n : Nat) :
    n ^ 4 % 16 = 0 ∨ n ^ 4 % 16 = 1 := by
  have hlt : n % 16 < 16 := Nat.mod_lt n (by decide)
  let _ := hlt
  rw [Nat.pow_mod]
  interval_cases n % 16 <;> decide

/-- Uninhabited.  `k ≥ 3` is unbounded, so a
`B ≤ 100` `decide` table cannot close every gap. -/
def B_le_100_k_ge_3_no_S_fourth_pow : Prop :=
  ∀ B k : Nat,
    B ≤ 100 → 3 ≤ k →
    ¬ ∃ v : Nat, S_13 (B + k) B = v ^ 4

/-- Uninhabited.  The almost-fourth-power shape does
not by itself bound `k` or close the equation. -/
def beal_odd_A_ge3_closed_of_k_upper_bound_plan : Prop :=
  ∀ A B C : Nat,
    A ^ 4 + B ^ 13 = C ^ 13 →
    Odd A → 3 ≤ A → Nat.Coprime C B → False

/-- Uninhabited.  `k = 2` is not of the three shapes. -/
def k_almost_fourth_power_without_gcd : Prop :=
  ∀ k : Nat,
    (∃ u, k = u ^ 4) ∨ (∃ u, k = 13 * u ^ 4) ∨
      (∃ u, k = 13 ^ 3 * u ^ 4)

/-- The general Beal `4/13/13` Prop stays a Prop. -/
def beal_4_13_13 : Prop :=
  ∀ A B C : Nat, 0 < A → 0 < B → 0 < C →
    Nat.Coprime A B → Nat.Coprime A C → Nat.Coprime B C →
    A ^ 4 + B ^ 13 = C ^ 13 → False

end BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step10_k_upper_bound_plan
