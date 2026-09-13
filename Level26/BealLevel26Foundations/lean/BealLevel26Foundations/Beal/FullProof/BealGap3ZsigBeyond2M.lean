/-
Copyright (c) 2026 David Fox. All rights reserved.
Released under MIT license as described in the file LICENSE.
Authors: David Fox

Track B v8.88.0 -- Zsigmondy 5983 + LTE ledger for B > 2M
gap-3.  Not a closed Beal forall.  Not conductor lowering.

Goal the user named: close B > 2000000 on
A^4 + B^4 = (B+3)^13 from the named-row Zsigmondy
5983-pool (4488 + 5*299) plus LTE, without
lowering the Frey conductor.

Honesty (do not reverse):
* The 5983 lemmas (`zsig_density_2M_stats`,
  `poolSizeStep56`--`poolSizeStep60`) count
  **named rows with B <= 2000000**.  They are
  not a Mathlib Zsigmondy theorem for B > 2M,
  and they do not produce a prime q > 2M
  dividing (B+3)^13 - B^4.
* `bugeaud_P_phi13_gt_C_when_B_gt_2000000`
  (Step 60 / Density_2M) is already the
  uninhabited Bugeaud statement for B > 2M.
* The inhabited primitive-prime lemma
  `zsigmondy_exists_primitive_inhabited`
  produces p | Phi13(B, C) (i.e. p | C^13 - B^13),
  p == 1 [MOD 13], p does not divide (C - B), under
  Coprime B C.  That is **not** p | C^13 - B^4,
  **not** p > 2M, and **not** p == 1 [MOD 4].
  For C = B+3, Coprime B C holds iff 3 does not divide B.
* The requested LTE punchline is false as
  stated: from A^4 = C^13 - B^4 and q | A one
  gets q^4 | C^13 - B^4, **not** q^4 | C^13,
  unless q | B (which is excluded).  q > B+3
  does imply not q | C^13 and
  v_q(C^13) = 13 * v_q(C) = 0 < 4, but that
  does **not** follow from q | A via the
  Beal equation.

Therefore `beal_gap3_B_gt_2M_eliminated` is
an **uninhabited Prop**, same pattern as
`conductor_86` / `B14_honest` / Bugeaud B>2M.
Do **not** inhabit it with Classical.em, a
fake pool-derived q, or the false
`q^4 | C^13` step.

Inhabited:
* Re-export of the 5983 / five-pool named-row
  statistics (4488+5*299 and
  50310/50323/50307/50350/50325).
* `not_prime_dvd_C13_of_gt`: q > B+3 implies not q | C^13.
* `q_pow4_dvd_C13_sub_B4_of_dvd_A`: q | A implies
  q^4 | C^13 - B^4 (the true LTE-adjacent step).
* `no_Beal_of_pow4_dvd_C13_of_q_gt_C`: if a
  prime q > B+3 satisfied q^4 | C^13, False.
  (Does **not** produce that from q | A.)
* `exists_primitive_prime_Phi13_gap3`: the
  inhabited Phi13 primitive prime when 3 does not divide B.

Uninhabited:
* `exists_zsig_q_gt_2M_dvd_C13_sub_B4` -- the
  requested exists q > 2M from Zsig pools.
* `q_pow4_dvd_C13_of_dvd_A` -- the false
  punchline q | A implies q^4 | C^13.
* `beal_gap3_B_gt_2M_eliminated` -- forall B > 2M,
  no A.

`frey_conductor_general` is unchanged (v8.87).
`conductor_86` stays Prop.  `B14_honest`
stays Prop.  No BCDT.  No conductor lowering.
Does **not** import `RibetMazur`,
`BealFreyB14`, or `FreyModularity_13`.
Not imported by the 24-module none chain.
-/
import BealLevel26Foundations.Beal.FullProof.Beal_4_13_13_Zsigmondy_Density_2M
import BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step18_Zsig_primitive_vp1_inhabited
import Mathlib.Data.Nat.Prime.Basic
import Mathlib.NumberTheory.Padics.PadicVal.Basic

namespace BealLevel26Foundations.BealGap3ZsigBeyond2M

open BealLevel26Foundations.Beal_4_13_13_Zsigmondy_Density_2M
open BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step18_Zsig_primitive_vp1_inhabited
open BealLevel26Foundations.Beal_4_13_13_Zsigmondy_13_Step17_Zsig_S_vp1_plan
  (S_val)

/-! ## Named-row 5983 / five-pool ledger (B <= 2M) -/

/-- Named-row Zsigmondy census: 4488 + 5*299 = 5983. -/
theorem zsig_5983_eq_4488_plus_5_times_299 :
    4488 + 5 * 299 = 5983 :=
  zsig_density_2M_stats

/-- Five named-row window pools that feed the 5983 census.
    Displayed Nats, not a density theorem for B > 2M. -/
def zsig_pool_size_q_gt_1000 : Nat := poolSizeStep56
def zsig_pool_size_q_gt_10000 : Nat := poolSizeStep57
def zsig_pool_size_q_gt_100000 : Nat := poolSizeStep58
def zsig_pool_size_q_gt_1000000 : Nat := poolSizeStep59
def zsig_pool_size_q_gt_2000000 : Nat := poolSizeStep60

theorem zsig_pool_size_q_gt_1000_eq :
    zsig_pool_size_q_gt_1000 = 50310 :=
  poolSizeStep56_eq

theorem zsig_pool_size_q_gt_10000_eq :
    zsig_pool_size_q_gt_10000 = 50323 :=
  poolSizeStep57_eq

theorem zsig_pool_size_q_gt_100000_eq :
    zsig_pool_size_q_gt_100000 = 50307 :=
  poolSizeStep58_eq

theorem zsig_pool_size_q_gt_1000000_eq :
    zsig_pool_size_q_gt_1000000 = 50350 :=
  poolSizeStep59_eq

theorem zsig_pool_size_q_gt_2000000_eq :
    zsig_pool_size_q_gt_2000000 = 50325 :=
  poolSizeStep60_eq

theorem zsig_five_pools :
    zsig_pool_size_q_gt_1000 = 50310 ∧
      zsig_pool_size_q_gt_10000 = 50323 ∧
      zsig_pool_size_q_gt_100000 = 50307 ∧
      zsig_pool_size_q_gt_1000000 = 50350 ∧
      zsig_pool_size_q_gt_2000000 = 50325 :=
  And.intro zsig_pool_size_q_gt_1000_eq
    (And.intro zsig_pool_size_q_gt_10000_eq
      (And.intro zsig_pool_size_q_gt_100000_eq
        (And.intro zsig_pool_size_q_gt_1000000_eq
          zsig_pool_size_q_gt_2000000_eq)))

/-! ## Kernel `Nat.pow` versus Mathlib monoid `^` -/

theorem nat_pow_eq_hpow (a n : Nat) : Nat.pow a n = a ^ n := by
  induction n with
  | zero => rfl
  | succ n ih =>
    change Nat.pow a n * a = a ^ (n + 1)
    rw [ih, pow_succ]

/-! ## Euclid on gap 3 (local copy; do not import BealFreyB14) -/

/-- Euclid: gcd(B, B+3) = gcd(B, 3), so the gcd divides 3. -/
theorem gcd_B_Bplus3_dvd_three (B : Nat) :
    Nat.gcd B (B + 3) ∣ 3 :=
  let d := Nat.gcd B (B + 3)
  let hB : d ∣ B := Nat.gcd_dvd_left B (B + 3)
  let hB3 : d ∣ B + 3 := Nat.gcd_dvd_right B (B + 3)
  let h3B : d ∣ 3 + B :=
    Eq.rec (motive := fun t (_ : B + 3 = t) => d ∣ t)
      hB3 (Nat.add_comm B 3)
  (Nat.dvd_add_iff_left hB).mpr h3B

theorem coprime_B_Bplus3_of_not_dvd_three (B : Nat)
    (h : ¬ 3 ∣ B) :
    Nat.Coprime B (B + 3) := by
  change Nat.gcd B (B + 3) = 1
  have hdvd : Nat.gcd B (B + 3) ∣ 3 := gcd_B_Bplus3_dvd_three B
  rcases (Nat.dvd_prime (by decide : Nat.Prime 3)).mp hdvd with h1 | h3eq
  · exact h1
  · have h3B : 3 ∣ B := h3eq ▸ Nat.gcd_dvd_left B (B + 3)
    exact absurd h3B h

/-! ## Prime-divides-a-power and q > C -/

theorem not_dvd_of_pos_lt {q n : Nat} (hn : 0 < n) (hlt : n < q) :
    ¬ q ∣ n := by
  intro hdiv
  exact Nat.not_lt_of_ge (Nat.le_of_dvd hn hdiv) hlt

theorem prime_dvd_of_dvd_pow4 {q A : Nat}
    (hp : Nat.Prime q) (hdiv : q ∣ Nat.pow A 4) :
    q ∣ A := by
  have hdiv' : q ∣ A ^ 4 := by
    rwa [nat_pow_eq_hpow A 4] at hdiv
  exact Nat.Prime.dvd_of_dvd_pow hp hdiv'

theorem not_prime_dvd_base_of_gt {B q : Nat}
    (_hq : Nat.Prime q) (hgt : B + 3 < q) :
    ¬ q ∣ B + 3 :=
  not_dvd_of_pos_lt (Nat.succ_pos _) hgt

theorem B_lt_Bplus3 (B : Nat) : B < B + 3 :=
  Nat.lt_add_of_pos_right (n := B) (by decide : (0 : Nat) < 3)

theorem not_prime_dvd_B_of_gt {B q : Nat}
    (hBpos : 0 < B) (_hq : Nat.Prime q) (hgt : B + 3 < q) :
    ¬ q ∣ B :=
  not_dvd_of_pos_lt hBpos (Nat.lt_trans (B_lt_Bplus3 B) hgt)

/-- A prime larger than C cannot divide C^13. -/
theorem not_prime_dvd_C13_of_gt {B q : Nat}
    (hq : Nat.Prime q) (hgt : B + 3 < q) :
    ¬ q ∣ Nat.pow (B + 3) 13 := by
  intro hdiv
  have hdiv' : q ∣ (B + 3) ^ 13 := by
    rwa [nat_pow_eq_hpow (B + 3) 13] at hdiv
  exact not_prime_dvd_base_of_gt hq hgt
    (Nat.Prime.dvd_of_dvd_pow hq hdiv')

theorem not_prime_dvd_B_mul_C_of_gt {B q : Nat}
    (hBpos : 0 < B) (hq : Nat.Prime q) (hgt : B + 3 < q) :
    ¬ q ∣ B * (B + 3) := by
  intro hdiv
  rcases (Nat.Prime.dvd_mul hq).mp hdiv with hB | hC
  · exact not_prime_dvd_B_of_gt hBpos hq hgt hB
  · exact not_prime_dvd_base_of_gt hq hgt hC

/-- q^4 | C^13 would force q | C^13. -/
theorem not_pow4_dvd_C13_of_q_gt_C {B q : Nat}
    (hq : Nat.Prime q) (hgt : B + 3 < q) :
    ¬ Nat.pow q 4 ∣ Nat.pow (B + 3) 13 := by
  intro hdiv
  have hq4 : q ∣ Nat.pow q 4 := by
    rw [nat_pow_eq_hpow q 4]
    exact dvd_pow_self q (by decide : (4 : Nat) ≠ 0)
  exact not_prime_dvd_C13_of_gt hq hgt (Nat.dvd_trans hq4 hdiv)

/-- Honest LTE-shaped bound: if q > C then
    v_q(C^13) = 13 * v_q(C) = 0 < 4. -/
theorem padicValNat_C13_lt_four_of_q_gt_C {B q : Nat}
    (hq : Nat.Prime q) (hgt : B + 3 < q) :
    padicValNat q (Nat.pow (B + 3) 13) < 4 := by
  haveI : Fact (Nat.Prime q) := ⟨hq⟩
  have hCpos : 0 < B + 3 := Nat.succ_pos _
  have hCne : B + 3 ≠ 0 := Nat.pos_iff_ne_zero.mp hCpos
  have h0 : padicValNat q (B + 3) = 0 :=
    padicValNat.eq_zero_of_not_dvd (not_prime_dvd_base_of_gt hq hgt)
  have hpow : padicValNat q ((B + 3) ^ 13) = 13 * padicValNat q (B + 3) :=
    padicValNat.pow 13 hCne
  rw [nat_pow_eq_hpow (B + 3) 13, hpow, h0]
  exact Nat.succ_pos 3

/-! ## True consequences of a Beal equation -/

theorem A4_eq_C13_sub_B4 {A B : Nat}
    (hEq : Nat.pow A 4 + Nat.pow B 4 = Nat.pow (B + 3) 13) :
    Nat.pow A 4 = Nat.pow (B + 3) 13 - Nat.pow B 4 :=
  (Nat.add_sub_cancel (Nat.pow A 4) (Nat.pow B 4)).symm.trans
    (congrArg (fun n => n - Nat.pow B 4) hEq)

theorem q_dvd_A4_of_dvd_C13_sub_B4 {A B q : Nat}
    (hEq : Nat.pow A 4 + Nat.pow B 4 = Nat.pow (B + 3) 13)
    (hdiv : q ∣ Nat.pow (B + 3) 13 - Nat.pow B 4) :
    q ∣ Nat.pow A 4 := by
  rwa [← A4_eq_C13_sub_B4 hEq] at hdiv

theorem q_pow4_dvd_A4_of_dvd_A {q A : Nat} (hA : q ∣ A) :
    Nat.pow q 4 ∣ Nat.pow A 4 := by
  obtain ⟨k, hk⟩ := hA
  rw [hk, nat_pow_eq_hpow q 4, nat_pow_eq_hpow (q * k) 4, mul_pow]
  exact dvd_mul_right (q ^ 4) (k ^ 4)

/-- True LTE-adjacent step: q | A implies q^4 | C^13 - B^4.
    This is **not** q^4 | C^13. -/
theorem q_pow4_dvd_C13_sub_B4_of_dvd_A {A B q : Nat}
    (hEq : Nat.pow A 4 + Nat.pow B 4 = Nat.pow (B + 3) 13)
    (hA : q ∣ A) :
    Nat.pow q 4 ∣ Nat.pow (B + 3) 13 - Nat.pow B 4 := by
  rw [← A4_eq_C13_sub_B4 hEq]
  exact q_pow4_dvd_A4_of_dvd_A hA

/-- If a solution existed *and* a prime q > B+3
    divided (B+3)^13, that would be False.
    The Beal equation is unused: the contradiction
    is just q > C and q | C^13.  Does **not**
    produce such a q from q | A. -/
theorem no_Beal_of_large_prime_dvd_C13 {A B q : Nat}
    (_hEq : Nat.pow A 4 + Nat.pow B 4 = Nat.pow (B + 3) 13)
    (hq : Nat.Prime q) (hgt : B + 3 < q)
    (hdiv : q ∣ Nat.pow (B + 3) 13) :
    False :=
  not_prime_dvd_C13_of_gt hq hgt hdiv

/-- The requested LTE contradiction, **if** one
    already has q^4 | C^13 and q > C.  The missing
    step q | A implies q^4 | C^13 is the uninhabited Prop
    `q_pow4_dvd_C13_of_dvd_A`. -/
theorem no_Beal_of_pow4_dvd_C13_of_q_gt_C {B q : Nat}
    (hq : Nat.Prime q) (hgt : B + 3 < q)
    (hdiv : Nat.pow q 4 ∣ Nat.pow (B + 3) 13) :
    False :=
  not_pow4_dvd_C13_of_q_gt_C hq hgt hdiv

/-! ## Inhabited Phi13 primitive prime (not C^13 - B^4) -/

/-- When 3 does not divide B, gap-3 is coprime, so Step18 supplies
    a primitive prime of Phi13(B, B+3).  That prime
    divides C^13 - B^13, is == 1 [MOD 13], and is not
    known to exceed 2M. -/
theorem exists_primitive_prime_Phi13_gap3
    (B : Nat) (hBge1 : 1 ≤ B) (h3 : ¬ 3 ∣ B) :
    ∃ p, Nat.Prime p ∧ p ∣ S_val B (B + 3) ∧ ¬ p ∣ 3 ∧
      p % 13 = 1 ∧ p ≠ 13 := by
  have hBltC : B < B + 3 := B_lt_Bplus3 B
  have hCop : Nat.Coprime B (B + 3) :=
    coprime_B_Bplus3_of_not_dvd_three B h3
  obtain ⟨p, hp, hpS, hpnot, hpmod, hpne⟩ :=
    zsigmondy_exists_primitive_inhabited B (B + 3) hBltC hCop hBge1
  refine ⟨p, hp, hpS, ?_, hpmod, hpne⟩
  have hsub : B + 3 - B = 3 := Nat.add_sub_cancel_left B 3
  rwa [hsub] at hpnot

/-! ## Requested statements that stay Props -/

/-- Requested lemma 2.  needs Baker, not Zsig.
    Not closable from the 5983 census; would need
    a q > 2M bound not in Zsig.  The 5983 / five-pool
    lemmas are named rows at B <= 2M. -/
def exists_zsig_q_gt_2M_dvd_C13_sub_B4 : Prop :=
  ∀ A B : Nat,
    2000000 < B →
    Nat.pow A 4 + Nat.pow B 4 = Nat.pow (B + 3) 13 →
    ∃ q, Nat.Prime q ∧
      q ∣ Nat.pow (B + 3) 13 - Nat.pow B 4 ∧
      2000000 < q ∧
      q % 4 = 1 ∧
      ¬ q ∣ B * (B + 3)

/-- The false punchline.  q | A gives q^4 | C^13 - B^4,
    not q^4 | C^13.  Not closable from the 5983 census. -/
def q_pow4_dvd_C13_of_dvd_A : Prop :=
  ∀ A B q : Nat,
    Nat.Prime q →
    q ∣ A →
    Nat.pow A 4 + Nat.pow B 4 = Nat.pow (B + 3) 13 →
    Nat.pow q 4 ∣ Nat.pow (B + 3) 13

/-- Requested theorem 4.  Uninhabited intentionally:
    not closable from the 5983 census; would need a
    q > 2M bound not in Zsig (needs Baker).
    The LTE punchline q^4 | C^13 from q | A is false.
    Not BCDT. -/
def beal_gap3_B_gt_2M_eliminated : Prop :=
  ∀ B : Nat, 2000000 < B →
    ¬ ∃ A, Nat.pow A 4 + Nat.pow B 4 = Nat.pow (B + 3) 13

/-- Uninhabited Bugeaud `P(Phi13) > C` on B > 2M.
    Re-export of the Density_2M / Step60 Prop. -/
def bugeaud_P_phi13_gt_C_when_B_gt_2000000 : Prop :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_Density_2M.bugeaud_P_phi13_gt_C_when_B_gt_2000000

#check zsig_5983_eq_4488_plus_5_times_299
#check zsig_five_pools
#check not_prime_dvd_C13_of_gt
#check q_pow4_dvd_C13_sub_B4_of_dvd_A
#check padicValNat_C13_lt_four_of_q_gt_C
#check no_Beal_of_pow4_dvd_C13_of_q_gt_C
#check exists_primitive_prime_Phi13_gap3
#check exists_zsig_q_gt_2M_dvd_C13_sub_B4
#check q_pow4_dvd_C13_of_dvd_A
#check beal_gap3_B_gt_2M_eliminated
#check bugeaud_P_phi13_gt_C_when_B_gt_2000000
#print axioms zsig_5983_eq_4488_plus_5_times_299
#print axioms zsig_five_pools
#print axioms not_prime_dvd_C13_of_gt
#print axioms q_pow4_dvd_C13_sub_B4_of_dvd_A
#print axioms padicValNat_C13_lt_four_of_q_gt_C
#print axioms no_Beal_of_pow4_dvd_C13_of_q_gt_C
#print axioms exists_primitive_prime_Phi13_gap3
#print axioms gcd_B_Bplus3_dvd_three

end BealLevel26Foundations.BealGap3ZsigBeyond2M
