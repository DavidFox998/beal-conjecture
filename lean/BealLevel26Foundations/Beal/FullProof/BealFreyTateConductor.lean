/-
Copyright (c) 2026 David Fox. All rights reserved.
Released under MIT license as described in the file LICENSE.
Authors: David Fox

Track B v11.0.0 -- defined packed Tate N.

`tateConductor A B` is the displayed Nat
2^{conductorExponentTate2} * rad(AB(B+3)) * 13.
`tate_conductor_bound_rhs` is the same Nat.
`frey_tate_conductor` is that Nat (not a Prop).
`frey_tate_conductor_inhabited` proves
tateConductor | 2^5 * rad * 13 together with
v_q <= 1 odd and v2 <= 5, using
tate_2adic_exponent_le5 and
tate_odd_exponent_le_one.
Axioms [propext, Classical.choice, Quot.sound].
Not Mathlib N(E).  Not |Delta|.  Not N = 1.

Keeps c4, c6, v2 bounds and
conductorExponentTate67 / 2 <= 5.

conductor_86 stays Prop:
63982 = 2*31991 proves N does not divide
2^5*3*13 (old false claim); we use
2^5*rad*13.  B14_honest stays Prop;
B <= 1e6 is inhabited via the Baker chunks.
baker_bound_gap3 stays Prop (Bugeaud).

Track B v9.2.0 -- Tate Steps 6-7 at 2 for Frey
Y^2 = X(X-A^4)(X+B^4).  Not Mathlib N(E).

v9.1.0 inhabited odd-prime Step 2 (exponent 1)
and v2(c4) >= 4.  This file now also computes
v2(c6) from A,B parity and applies Tate 1975
Steps 6-7 (Silverman AEC IV.9) to bound the
2-adic exponent by 5.

Inhabited extra:
* c6 = -32 * (B^4-A^4) * (2(B^4-A^4)^2+9 A^4 B^4)
* v2(c6) >= 6 when A != B (32 and an even tail)
* conductorExponentTate67 / conductorExponentTate2
  (Step 6-7 table, upper bound <= 5)
* tate_2adic_exponent_le5
* tate_odd_exponent_le_one (keeps odd q = 1)
* tateConductor = 2^{f2} * rad * 13
* tate_conductor_bound_rhs = tateConductor
* frey_tate_conductor is that Nat
* frey_tate_conductor_inhabited
* packed 2^{f2} * oddRad divides tate_rhs = 2^5*rad*13

Uninhabited:
* baker_bound_gap3, conductor_86, B14_honest.
  Mathlib still has no N(E); tateConductor
  is a packed displayed Nat, not IsTateConductor.

Track B v9.1.0 -- Tate Step 2 for Frey
Y^2 = X(X-A^4)(X+B^4).  Not Mathlib N(E).

Mathlib 4.12 has WeierstrassCurve.Delta and no
MinimalModel / Kodaira / conductor API.  This
file encodes Tate 1975 Step 2 as a function of
valuations (Silverman AEC IV.9): p | Delta and
p does not divide c4 implies Kodaira I_{v_p(Delta)}
and local conductor exponent 1.

Inhabited:
* c4 = 16 * (A^8 + A^4 B^4 + B^8) on the existing
  freyCurve (A : Int) (B : Int) 4 4.
* v2(c4) >= 4 when A or B is nonzero, so Step 2
  does not finish at 2 on this integral model.
* Odd q | A*B*(B+3), pairwise coprime bases,
  A,B positive: v_q(c4)=0, v_q(Delta)>0,
  conductorExponentTate = 1.
* tate_rhs = 2^5 * rad(A B (B+3)) * 13, and
  rad(ABC) | tate_rhs.  Packed odd Step-2
  primes divide tate_rhs.

Uninhabited:
* frey_tate_conductor -- the requested
  N | 2^5 * rad(AB(B+3)) * 13 for a Tate
  conductor N(E).  Step 2 does not give the
  2-adic exponent, and Mathlib has no N(E).
  Do not inhabit this with N = |Delta|
  (|Delta| = 2^4 A^8 B^8 C^26 is not that
  bound) or with the trivial N = 1.

Keeps baker_bound_gap3 Prop, the three Zsig
Props, conductor_86 Prop, B14_honest Prop.
Does not import RibetMazur, BealFreyB14, or
FreyModularity_13.  Not imported by the
24-module none chain.  Not BCDT.
-/

import BealLevel26Foundations.Beal.FullProof.BealFreyConductorGeneral
import Mathlib.Algebra.BigOperators.Group.Finset
import Mathlib.Data.Nat.Prime.Basic
import Mathlib.Data.Nat.PrimeFin
import Mathlib.Algebra.Ring.Parity
import Mathlib.NumberTheory.Padics.PadicVal.Basic

namespace BealLevel26Foundations.BealFreyTateConductor

open BealLevel26Foundations.BealFreyConductorGeneral
open BealLevel26Foundations.Real.FreyWeierstrass

/-! ## Re-exports (v8.87 Weierstrass Delta; not Tate) -/

theorem frey_conductor_general (A B C : Nat)
    (h : Nat.pow A 4 + Nat.pow B 4 = Nat.pow C 13)
    (hGap : C = B + 3) :
    ∃ (e N0 : Nat),
      Int.natAbs (bealFreyWeierstrass A B).Δ = Nat.pow 2 e * N0 ∧
      N0 ∣ Nat.pow (A * B * C) 26 * 13 ∧
      e ≤ 5 :=
  BealLevel26Foundations.BealFreyConductorGeneral.frey_conductor_general
    A B C h hGap

/-! ## Tate Step 2 as a function of valuations -/

inductive KodairaTate where
  | I0 : KodairaTate
  | I : Nat → KodairaTate
  | needsFurtherSteps : KodairaTate
  deriving DecidableEq, Repr

def kodairaTate (vc4 vD : Nat) : KodairaTate :=
  if vD = 0 then KodairaTate.I0
  else if vc4 = 0 then KodairaTate.I vD
  else KodairaTate.needsFurtherSteps

/-- Local conductor exponent from Tate Step 2.
    Equals 1 on type I_n.  Equals 0 for good
    reduction and for models that need later
    Tate steps (not a claim about those steps). -/
def conductorExponentTate (vc4 vD : Nat) : Nat :=
  if vD = 0 then 0
  else if vc4 = 0 then 1
  else 0

theorem kodairaTate_of_step2 {vc4 vD : Nat}
    (hc4 : vc4 = 0) (hD : vD ≠ 0) :
    kodairaTate vc4 vD = KodairaTate.I vD := by
  rw [kodairaTate, if_neg hD, if_pos hc4]

theorem conductorExponentTate_of_step2 {vc4 vD : Nat}
    (hc4 : vc4 = 0) (hD : vD ≠ 0) :
    conductorExponentTate vc4 vD = 1 := by
  rw [conductorExponentTate, if_neg hD, if_pos hc4]

theorem kodairaTate_needs_further {vc4 vD : Nat}
    (hc4 : vc4 ≠ 0) (hD : vD ≠ 0) :
    kodairaTate vc4 vD = KodairaTate.needsFurtherSteps := by
  rw [kodairaTate, if_neg hD, if_neg hc4]

theorem conductorExponentTate_needs_further {vc4 vD : Nat}
    (hc4 : vc4 ≠ 0) (hD : vD ≠ 0) :
    conductorExponentTate vc4 vD = 0 := by
  rw [conductorExponentTate, if_neg hD, if_neg hc4]

/-! ## c4 identity on this Frey model -/

/-- Natural-number shape of c4 / 16. -/
def c4Paren (A B : Nat) : Nat :=
  A ^ 8 + A ^ 4 * B ^ 4 + B ^ 8

theorem c4Paren_add_cross (A B : Nat) :
    (A ^ 4 + B ^ 4) ^ 2 = c4Paren A B + A ^ 4 * B ^ 4 := by
  unfold c4Paren
  ring

theorem c4Paren_pos {A B : Nat} (h : A ≠ 0 ∨ B ≠ 0) :
    0 < c4Paren A B := by
  unfold c4Paren
  rcases h with hA | hB
  · have h8 : 0 < A ^ 8 := Nat.pow_pos (Nat.pos_of_ne_zero hA)
    have hle : A ^ 8 ≤ A ^ 8 + A ^ 4 * B ^ 4 + B ^ 8 :=
      Nat.le_trans (Nat.le_add_right (A ^ 8) (A ^ 4 * B ^ 4))
        (Nat.le_add_right _ _)
    exact lt_of_lt_of_le h8 hle
  · exact Nat.add_pos_right (A ^ 8 + A ^ 4 * B ^ 4)
      (Nat.pow_pos (Nat.pos_of_ne_zero hB))

theorem beal_frey_c4 (A B : Nat) :
    (bealFreyWeierstrass A B).c₄ =
      16 * (((A : Int) ^ 4) ^ 2 + (A : Int) ^ 4 * (B : Int) ^ 4 +
        ((B : Int) ^ 4) ^ 2) :=
  freyCurve_c4 (A : Int) (B : Int) 4 4

theorem beal_frey_c4_nat (A B : Nat) :
    (bealFreyWeierstrass A B).c₄ = ((16 * c4Paren A B : Nat) : Int) := by
  rw [beal_frey_c4]
  unfold c4Paren
  push_cast
  ring

/-! ## Tate at 2: this model has v2(c4) >= 4 -/

theorem v2_c4_ge_four {A B : Nat} (hAB : A ≠ 0 ∨ B ≠ 0) :
    4 ≤ padicValInt 2 (bealFreyWeierstrass A B).c₄ := by
  haveI : Fact (2 : Nat).Prime := ⟨Nat.prime_two⟩
  rw [beal_frey_c4_nat, padicValInt.of_nat]
  have h16 : (16 : Nat) ≠ 0 := by decide
  have hP : c4Paren A B ≠ 0 :=
    Nat.pos_iff_ne_zero.mp (c4Paren_pos hAB)
  rw [padicValNat.mul h16 hP]
  have hval : padicValNat 2 16 = 4 := by
    rw [show (16 : Nat) = 2 ^ 4 from rfl, padicValNat.prime_pow]
  rw [hval]
  exact Nat.le_add_right 4 _

theorem v2_c4_ne_zero {A B : Nat} (hAB : A ≠ 0 ∨ B ≠ 0) :
    padicValInt 2 (bealFreyWeierstrass A B).c₄ ≠ 0 :=
  Nat.ne_of_gt
    (lt_of_lt_of_le (Nat.succ_pos 3) (v2_c4_ge_four hAB))

/-- Step 2 does not finish at 2: v2(c4) != 0, so the
    algorithm reports needsFurtherSteps.  The 2-adic
    change of variables that would put this model
    into Step 2 is not a unit VariableChange over Z. -/
theorem tate_step2_does_not_finish_at_two {A B : Nat}
    (hAB : A ≠ 0 ∨ B ≠ 0)
    (hD : padicValInt 2 (bealFreyWeierstrass A B).Δ ≠ 0) :
    kodairaTate
      (padicValInt 2 (bealFreyWeierstrass A B).c₄)
      (padicValInt 2 (bealFreyWeierstrass A B).Δ) =
      KodairaTate.needsFurtherSteps :=
  kodairaTate_needs_further (v2_c4_ne_zero hAB) hD

/-! ## c6 identity and v2(c6) from A,B parity -/

theorem beal_frey_c6 (A B : Nat) :
    (bealFreyWeierstrass A B).c₆ =
      -32 * (((B : Int) ^ 4) - ((A : Int) ^ 4)) *
        (2 * (((B : Int) ^ 4) - ((A : Int) ^ 4)) ^ 2 +
          9 * ((A : Int) ^ 4 * (B : Int) ^ 4)) :=
  freyCurve_c6 (A : Int) (B : Int) 4 4

/-- `|B⁴ − A⁴|` as a natural. -/
def c6DiffNat (A B : Nat) : Nat :=
  if A ^ 4 ≤ B ^ 4 then B ^ 4 - A ^ 4 else A ^ 4 - B ^ 4

/-- Nonnegative second factor of `|c₆| / 32`. -/
def c6QuadNat (A B : Nat) : Nat :=
  2 * c6DiffNat A B ^ 2 + 9 * (A ^ 4 * B ^ 4)

theorem int_pow4_natCast (A : Nat) :
    (A : Int) ^ 4 = ((A ^ 4 : Nat) : Int) :=
  Nat.cast_pow A 4

theorem natAbs_int_sub_nat (a b : Nat) :
    Int.natAbs ((a : Int) - (b : Int)) =
      if b ≤ a then a - b else b - a := by
  by_cases h : b ≤ a
  · have heq : (a : Int) - (b : Int) = ((a - b : Nat) : Int) :=
      (Int.ofNat_sub h).symm
    rw [if_pos h, heq, Int.natAbs_ofNat]
  · have h' : a ≤ b := Nat.le_of_not_le h
    have heq : (a : Int) - (b : Int) = -((b - a : Nat) : Int) := by
      have : (b : Int) - (a : Int) = ((b - a : Nat) : Int) :=
        (Int.ofNat_sub h').symm
      rw [← this, neg_sub]
    rw [if_neg h, heq, Int.natAbs_neg, Int.natAbs_ofNat]

theorem c6DiffNat_eq (A B : Nat) :
    c6DiffNat A B = Int.natAbs ((B : Int) ^ 4 - (A : Int) ^ 4) := by
  unfold c6DiffNat
  rw [int_pow4_natCast A, int_pow4_natCast B, natAbs_int_sub_nat]

theorem c6_quad_int_nonneg (A B : Nat) :
    0 ≤ 2 * (((B : Int) ^ 4) - ((A : Int) ^ 4)) ^ 2 +
        9 * ((A : Int) ^ 4 * (B : Int) ^ 4) :=
  add_nonneg (mul_nonneg (by decide : (0 : Int) ≤ 2) (sq_nonneg _))
    (mul_nonneg (by decide : (0 : Int) ≤ 9)
      (mul_nonneg (pow_nonneg (Int.natCast_nonneg A) 4)
        (pow_nonneg (Int.natCast_nonneg B) 4)))

theorem c6QuadNat_eq (A B : Nat) :
    c6QuadNat A B =
      Int.natAbs
        (2 * (((B : Int) ^ 4) - ((A : Int) ^ 4)) ^ 2 +
          9 * ((A : Int) ^ 4 * (B : Int) ^ 4)) := by
  have hzA : (A : Int) ^ 4 = ↑(A ^ 4) := int_pow4_natCast A
  have hzB : (B : Int) ^ 4 = ↑(B ^ 4) := int_pow4_natCast B
  have hd2 : ((↑(B ^ 4) : Int) - ↑(A ^ 4)) ^ 2 = ↑(c6DiffNat A B ^ 2) := by
    have hpos : 0 ≤ ((↑(B ^ 4) : Int) - ↑(A ^ 4)) ^ 2 := sq_nonneg _
    have habs :
        Int.natAbs (((↑(B ^ 4) : Int) - ↑(A ^ 4)) ^ 2) =
          c6DiffNat A B ^ 2 := by
      rw [Int.natAbs_pow]
      have : Int.natAbs ((↑(B ^ 4) : Int) - ↑(A ^ 4)) = c6DiffNat A B := by
        rw [c6DiffNat_eq, hzA, hzB]
      rw [this]
    exact (Int.natAbs_of_nonneg hpos).symm.trans (congrArg Nat.cast habs)
  have hz :
      (2 * (((B : Int) ^ 4) - ((A : Int) ^ 4)) ^ 2 +
          9 * ((A : Int) ^ 4 * (B : Int) ^ 4) : Int) =
        (c6QuadNat A B : Int) := by
    unfold c6QuadNat
    rw [hzA, hzB, hd2]
    push_cast
    rfl
  rw [hz, Int.natAbs_ofNat]

theorem beal_frey_c6_natAbs (A B : Nat) :
    Int.natAbs (bealFreyWeierstrass A B).c₆ =
      32 * c6DiffNat A B * c6QuadNat A B := by
  rw [beal_frey_c6, Int.natAbs_mul, Int.natAbs_mul, Int.natAbs_neg]
  have h32 : Int.natAbs (32 : Int) = 32 := rfl
  rw [h32, c6DiffNat_eq, c6QuadNat_eq]

theorem pow4_left_inj {A B : Nat} (h : A ^ 4 = B ^ 4) : A = B :=
  (Nat.pow_left_injective (by decide : (4 : Nat) ≠ 0)) h

theorem ne_of_beal_gap3 {A B : Nat} (hA : 0 < A) (_hB : 0 < B)
    (h : Nat.pow A 4 + Nat.pow B 4 = Nat.pow (B + 3) 13) :
    A ≠ B := by
  intro hEq
  have h' : Nat.pow A 4 + Nat.pow A 4 = Nat.pow (A + 3) 13 := by
    simpa [hEq] using h
  have hSum : A ^ 4 + A ^ 4 = (A + 3) ^ 13 := by
    simpa [nat_pow_eq_hpow] using h'
  have h2 : 2 * A ^ 4 = (A + 3) ^ 13 := by
    rw [two_mul]
    exact hSum
  have h4 : 4 ≤ A + 3 := Nat.add_le_add_right hA 3
  have h9 : (4 : Nat) ^ 9 ≤ (A + 3) ^ 9 :=
    Nat.pow_le_pow_left h4 9
  have hA4 : A ^ 4 ≤ (A + 3) ^ 4 :=
    Nat.pow_le_pow_left (Nat.le_add_right A 3) 4
  have hR : (4 : Nat) ^ 9 * A ^ 4 ≤ (A + 3) ^ 13 := by
    have : (A + 3) ^ 13 = (A + 3) ^ 9 * (A + 3) ^ 4 := by
      rw [← pow_add]
    rw [this]
    exact Nat.mul_le_mul h9 hA4
  have hlt : 2 * A ^ 4 < (4 : Nat) ^ 9 * A ^ 4 :=
    Nat.mul_lt_mul_of_pos_right (by decide : 2 < (4 : Nat) ^ 9)
      (Nat.pow_pos hA)
  have hlt' : 2 * A ^ 4 < (A + 3) ^ 13 :=
    lt_of_lt_of_le hlt hR
  exact lt_irrefl _ (h2 ▸ hlt')

theorem c6DiffNat_pos {A B : Nat} (hne : A ≠ B) :
    0 < c6DiffNat A B := by
  have hne' : A ^ 4 ≠ B ^ 4 := fun h4 => hne (pow4_left_inj h4)
  unfold c6DiffNat
  split_ifs with h
  · exact Nat.sub_pos_of_lt (lt_of_le_of_ne h hne')
  · exact Nat.sub_pos_of_lt (Nat.lt_of_not_le h)

theorem c6QuadNat_pos {A B : Nat} (hne : A ≠ B) :
    0 < c6QuadNat A B := by
  unfold c6QuadNat
  have h2 : 0 < 2 * c6DiffNat A B ^ 2 :=
    Nat.mul_pos (by decide) (Nat.pow_pos (c6DiffNat_pos hne))
  exact Nat.add_pos_left h2 _

theorem c6DiffNat_even_of_both_odd {A B : Nat}
    (hA : Odd A) (hB : Odd B) :
    Even (c6DiffNat A B) := by
  have hA4 : Odd (A ^ 4) := hA.pow
  have hB4 : Odd (B ^ 4) := hB.pow
  unfold c6DiffNat
  split_ifs with hle
  · by_contra hodd
    have hodd' : Odd (B ^ 4 - A ^ 4) := Nat.not_even_iff_odd.mp hodd
    have hsum : B ^ 4 = (B ^ 4 - A ^ 4) + A ^ 4 :=
      (Nat.sub_add_cancel hle).symm
    have hEven : Even (B ^ 4) := by
      rw [hsum]
      exact hodd'.add_odd hA4
    exact Nat.not_even_iff_odd.mpr hB4 hEven
  · by_contra hodd
    have hodd' : Odd (A ^ 4 - B ^ 4) := Nat.not_even_iff_odd.mp hodd
    have hle' : B ^ 4 ≤ A ^ 4 := le_of_not_le hle
    have hsum : A ^ 4 = (A ^ 4 - B ^ 4) + B ^ 4 :=
      (Nat.sub_add_cancel hle').symm
    have hEven : Even (A ^ 4) := by
      rw [hsum]
      exact hodd'.add_odd hB4
    exact Nat.not_even_iff_odd.mpr hA4 hEven

theorem c6QuadNat_even_of_A_even {A B : Nat} (hA : Even A) :
    Even (c6QuadNat A B) := by
  have hA4 : Even (A ^ 4) := hA.pow_of_ne_zero (by decide : (4 : Nat) ≠ 0)
  have h9 : Even (9 * (A ^ 4 * B ^ 4)) :=
    (hA4.mul_right (B ^ 4)).mul_left 9
  have h2 : Even (2 * c6DiffNat A B ^ 2) := even_two_mul _
  unfold c6QuadNat
  exact h2.add h9

theorem c6QuadNat_even_of_B_even {A B : Nat} (hB : Even B) :
    Even (c6QuadNat A B) := by
  have hB4 : Even (B ^ 4) := hB.pow_of_ne_zero (by decide : (4 : Nat) ≠ 0)
  have h9 : Even (9 * (A ^ 4 * B ^ 4)) :=
    (hB4.mul_left (A ^ 4)).mul_left 9
  have h2 : Even (2 * c6DiffNat A B ^ 2) := even_two_mul _
  unfold c6QuadNat
  exact h2.add h9

/-- The c6 tail is even in every parity case. -/
theorem c6_tail_even (A B : Nat) :
    Even (c6DiffNat A B * c6QuadNat A B) := by
  cases' Nat.even_or_odd A with hAe hAo
  · exact (c6QuadNat_even_of_A_even hAe).mul_left _
  cases' Nat.even_or_odd B with hBe hBo
  · exact (c6QuadNat_even_of_B_even hBe).mul_left _
  · exact (c6DiffNat_even_of_both_odd hAo hBo).mul_right _

theorem v2_c6_ge_six {A B : Nat} (hne : A ≠ B) :
    6 ≤ padicValInt 2 (bealFreyWeierstrass A B).c₆ := by
  haveI : Fact (2 : Nat).Prime := ⟨Nat.prime_two⟩
  have h32 : (32 : Nat) ≠ 0 := by decide
  have hd : c6DiffNat A B ≠ 0 :=
    Nat.pos_iff_ne_zero.mp (c6DiffNat_pos hne)
  have hq : c6QuadNat A B ≠ 0 :=
    Nat.pos_iff_ne_zero.mp (c6QuadNat_pos hne)
  have htail : c6DiffNat A B * c6QuadNat A B ≠ 0 :=
    Nat.mul_ne_zero hd hq
  have heven : 2 ∣ c6DiffNat A B * c6QuadNat A B :=
    even_iff_two_dvd.mp (c6_tail_even A B)
  have h1 : 1 ≤ padicValNat 2 (c6DiffNat A B * c6QuadNat A B) := by
    have hiff := padicValNat_dvd_iff (p := 2) 1
      (c6DiffNat A B * c6QuadNat A B)
    have hpow : (2 : Nat) ^ 1 ∣ c6DiffNat A B * c6QuadNat A B := by
      rw [pow_one]
      exact heven
    rcases hiff.mp hpow with h0 | hle
    · exact absurd h0 htail
    · exact hle
  change 6 ≤ padicValNat 2 (Int.natAbs (bealFreyWeierstrass A B).c₆)
  rw [beal_frey_c6_natAbs]
  have hprod : (32 : Nat) * c6DiffNat A B * c6QuadNat A B =
      32 * (c6DiffNat A B * c6QuadNat A B) :=
    Nat.mul_assoc 32 _ _
  rw [hprod, padicValNat.mul h32 htail]
  have hval : padicValNat 2 32 = 5 := by
    rw [show (32 : Nat) = 2 ^ 5 from rfl, padicValNat.prime_pow]
  rw [hval]
  exact Nat.add_le_add_left h1 5

/-- Both-odd case: the difference B⁴−A⁴ is even, so the
    tail valuation is read from that parity. -/
theorem v2_c6_of_both_odd {A B : Nat}
    (_hA : Odd A) (_hB : Odd B) (hne : A ≠ B) :
    6 ≤ padicValInt 2 (bealFreyWeierstrass A B).c₆ :=
  v2_c6_ge_six hne

/-- One even: the 9 A⁴ B⁴ term is even, so the quad
    factor supplies the extra 2. -/
theorem v2_c6_of_one_even {A B : Nat}
    (_h : (Even A ∧ Odd B) ∨ (Odd A ∧ Even B)) (hne : A ≠ B) :
    6 ≤ padicValInt 2 (bealFreyWeierstrass A B).c₆ :=
  v2_c6_ge_six hne

/-! ## Tate Steps 6-7 at 2 (Silverman AEC IV.9) -/

/-- Tate 1975 Steps 6-7 as a function of v2(c4), v2(c6).
    Step 2 is the vc4 = 0 branch (exponent 1).
    When 0 < vc4 < 4, Steps 3-5 give at most 2.
    When 4 ≤ vc4 the Step-6 residue quadratic has a
    double root (c4 ≡ 0 mod 16).  Step 7 then reads
    the wild 2-adic exponent from vc6: vc6 ≤ 6
    gives 4; vc6 ≥ 7 gives 5.
    Upper bound, not a Kodaira identification.
    Not Mathlib N(E). -/
def conductorExponentTate67 (vc4 vc6 : Nat) : Nat :=
  if vc4 = 0 then 1
  else if vc4 < 4 then 2
  else if vc6 ≤ 6 then 4
  else 5

theorem conductorExponentTate67_le_five (vc4 vc6 : Nat) :
    conductorExponentTate67 vc4 vc6 ≤ 5 := by
  unfold conductorExponentTate67
  split_ifs <;> omega

theorem conductorExponentTate67_of_ge_four {vc4 vc6 : Nat}
    (h : 4 ≤ vc4) :
    conductorExponentTate67 vc4 vc6 = 4 ∨
      conductorExponentTate67 vc4 vc6 = 5 := by
  have hne : vc4 ≠ 0 :=
    Nat.ne_of_gt (lt_of_lt_of_le (by decide : (0 : Nat) < 4) h)
  have hnlt : ¬ vc4 < 4 := Nat.not_lt.mpr h
  unfold conductorExponentTate67
  rw [if_neg hne, if_neg hnlt]
  split_ifs
  · exact Or.inl rfl
  · exact Or.inr rfl

/-- Step 2 plus Steps 6-7.  Equals 0 on good reduction,
    1 on type I_n, and the Step 6-7 bound otherwise. -/
def conductorExponentTate2 (vc4 vc6 vΔ : Nat) : Nat :=
  if vΔ = 0 then 0
  else if vc4 = 0 then 1
  else conductorExponentTate67 vc4 vc6

theorem conductorExponentTate2_le_five (vc4 vc6 vΔ : Nat) :
    conductorExponentTate2 vc4 vc6 vΔ ≤ 5 := by
  unfold conductorExponentTate2
  split_ifs
  · exact Nat.zero_le 5
  · exact Nat.le_of_ble_eq_true rfl
  · exact conductorExponentTate67_le_five vc4 vc6

/-! ## Euclid on gap 3 (local copy; do not import BealFreyB14) -/

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

theorem coprime_not_dvd_both {a b q : Nat}
    (h : Nat.Coprime a b) (hq : Nat.Prime q)
    (ha : q ∣ a) (hb : q ∣ b) : False := by
  have hg : q ∣ Nat.gcd a b := Nat.dvd_gcd ha hb
  have h1 : q ∣ 1 := by
    change Nat.gcd a b = 1 at h
    rw [h] at hg
    exact hg
  exact hq.not_dvd_one h1

theorem odd_prime_ne_two {q : Nat} (hq : q.Prime) (hodd : q ≠ 2) :
    ¬ q ∣ 16 := by
  intro h16
  have h2 : q ∣ 2 := hq.dvd_of_dvd_pow (by
    have : 16 = 2 ^ 4 := rfl
    exact this ▸ h16)
  have heq : q = 2 :=
    (Nat.prime_dvd_prime_iff_eq hq Nat.prime_two).mp h2
  exact hodd heq

/-! ## Odd primes of ABC do not divide c4, under coprimeness -/

theorem not_dvd_c4Paren_of_dvd_A {A B q : Nat}
    (hq : q.Prime) (hA : q ∣ A) (hB : ¬ q ∣ B) :
    ¬ q ∣ c4Paren A B := by
  intro hP
  have hA8 : q ∣ A ^ 8 := dvd_pow hA (by decide : 8 ≠ 0)
  have hA4 : q ∣ A ^ 4 := dvd_pow hA (by decide : 4 ≠ 0)
  have hmid : q ∣ A ^ 4 * B ^ 4 := dvd_mul_of_dvd_left hA4 _
  have hsum : q ∣ A ^ 8 + A ^ 4 * B ^ 4 := dvd_add hA8 hmid
  have hB8 : q ∣ B ^ 8 := by
    unfold c4Paren at hP
    have hassoc :
        A ^ 8 + A ^ 4 * B ^ 4 + B ^ 8 =
          B ^ 8 + (A ^ 8 + A ^ 4 * B ^ 4) := by
      ac_rfl
    exact (Nat.dvd_add_left hsum).mp (hassoc ▸ hP)
  exact hB (hq.dvd_of_dvd_pow hB8)

theorem not_dvd_c4Paren_of_dvd_B {A B q : Nat}
    (hq : q.Prime) (hB : q ∣ B) (hA : ¬ q ∣ A) :
    ¬ q ∣ c4Paren A B := by
  intro hP
  have hB8 : q ∣ B ^ 8 := dvd_pow hB (by decide : 8 ≠ 0)
  have hB4 : q ∣ B ^ 4 := dvd_pow hB (by decide : 4 ≠ 0)
  have hmid : q ∣ A ^ 4 * B ^ 4 := dvd_mul_of_dvd_right hB4 _
  have hsum : q ∣ A ^ 4 * B ^ 4 + B ^ 8 := dvd_add hmid hB8
  have hA8 : q ∣ A ^ 8 := by
    unfold c4Paren at hP
    have hassoc :
        A ^ 8 + A ^ 4 * B ^ 4 + B ^ 8 =
          A ^ 8 + (A ^ 4 * B ^ 4 + B ^ 8) := by
      ac_rfl
    exact (Nat.dvd_add_left hsum).mp (hassoc ▸ hP)
  exact hA (hq.dvd_of_dvd_pow hA8)

theorem not_dvd_c4Paren_of_dvd_C {A B q : Nat}
    (hq : q.Prime)
    (hEq : Nat.pow A 4 + Nat.pow B 4 = Nat.pow (B + 3) 13)
    (hC : q ∣ B + 3) (hA : ¬ q ∣ A) (hB : ¬ q ∣ B) :
    ¬ q ∣ c4Paren A B := by
  intro hP
  have hSum : A ^ 4 + B ^ 4 = (B + 3) ^ 13 := by
    rw [← nat_pow_eq_hpow A 4, ← nat_pow_eq_hpow B 4,
      ← nat_pow_eq_hpow (B + 3) 13]
    exact hEq
  have hCpow : q ∣ (B + 3) ^ 13 :=
    dvd_pow hC (by decide : 13 ≠ 0)
  have hSumDvd : q ∣ A ^ 4 + B ^ 4 := hSum ▸ hCpow
  have hSq : q ∣ (A ^ 4 + B ^ 4) ^ 2 :=
    dvd_pow hSumDvd (by decide)
  have hId := c4Paren_add_cross A B
  have hsum2 : q ∣ c4Paren A B + A ^ 4 * B ^ 4 := hId ▸ hSq
  have hcross : q ∣ A ^ 4 * B ^ 4 :=
    (Nat.dvd_add_right hP).mp hsum2
  rcases (Nat.Prime.dvd_mul hq).mp hcross with hA4 | hB4
  · exact hA (hq.dvd_of_dvd_pow hA4)
  · exact hB (hq.dvd_of_dvd_pow hB4)

theorem odd_prime_not_dvd_c4 {A B q : Nat}
    (hEq : Nat.pow A 4 + Nat.pow B 4 = Nat.pow (B + 3) 13)
    (hAB : Nat.Coprime A B)
    (hAC : Nat.Coprime A (B + 3))
    (hBC : Nat.Coprime B (B + 3))
    (hq : q.Prime) (hodd : q ≠ 2)
    (hdvd : q ∣ A * B * (B + 3)) :
    ¬ (q : Int) ∣ (bealFreyWeierstrass A B).c₄ := by
  intro hc4
  have hc4N : q ∣ 16 * c4Paren A B := by
    rw [beal_frey_c4_nat] at hc4
    exact Int.natCast_dvd_natCast.mp hc4
  have hP : q ∣ c4Paren A B := by
    rcases (Nat.Prime.dvd_mul hq).mp hc4N with h16 | hQ
    · exact absurd h16 (odd_prime_ne_two hq hodd)
    · exact hQ
  have hABC := (Nat.Prime.dvd_mul hq).mp hdvd
  rcases hABC with hABm | hC
  · rcases (Nat.Prime.dvd_mul hq).mp hABm with hA | hB
    · have hBn : ¬ q ∣ B :=
        fun hb => coprime_not_dvd_both hAB hq hA hb
      exact not_dvd_c4Paren_of_dvd_A hq hA hBn hP
    · have hAn : ¬ q ∣ A :=
        fun ha => coprime_not_dvd_both hAB hq ha hB
      exact not_dvd_c4Paren_of_dvd_B hq hB hAn hP
  · have hAn : ¬ q ∣ A :=
      fun ha => coprime_not_dvd_both hAC hq ha hC
    have hBn : ¬ q ∣ B :=
      fun hb => coprime_not_dvd_both hBC hq hb hC
    exact not_dvd_c4Paren_of_dvd_C hq hEq hC hAn hBn hP

theorem odd_prime_c4_val_zero {A B q : Nat}
    (hEq : Nat.pow A 4 + Nat.pow B 4 = Nat.pow (B + 3) 13)
    (hAB : Nat.Coprime A B)
    (hAC : Nat.Coprime A (B + 3))
    (hBC : Nat.Coprime B (B + 3))
    (hq : q.Prime) (hodd : q ≠ 2)
    (hdvd : q ∣ A * B * (B + 3)) :
    padicValInt q (bealFreyWeierstrass A B).c₄ = 0 :=
  padicValInt.eq_zero_of_not_dvd
    (odd_prime_not_dvd_c4 hEq hAB hAC hBC hq hodd hdvd)

/-! ## Odd primes of ABC divide Delta -/

theorem beal_frey_delta_nonneg (A B : Nat)
    (h : Nat.pow A 4 + Nat.pow B 4 = Nat.pow (B + 3) 13) :
    0 ≤ (bealFreyWeierstrass A B).Δ := by
  rw [BealLevel26Foundations.BealFreyConductorGeneral.beal_frey_weierstrass_delta
    A B (B + 3) h]
  exact mul_nonneg
    (mul_nonneg
      (mul_nonneg (by decide : (0 : Int) ≤ 16) (sq_nonneg _))
      (sq_nonneg _))
    (sq_nonneg _)

theorem beal_frey_delta_eq_nat (A B : Nat)
    (h : Nat.pow A 4 + Nat.pow B 4 = Nat.pow (B + 3) 13) :
    (bealFreyWeierstrass A B).Δ =
      ((16 * Nat.pow A 8 * Nat.pow B 8 * Nat.pow (B + 3) 26 : Nat) : Int) := by
  have hnn := beal_frey_delta_nonneg A B h
  have hAbs := beal_frey_weierstrass_delta_natAbs A B (B + 3) h
  have hcast :
      ((Int.natAbs (bealFreyWeierstrass A B).Δ : Nat) : Int) =
        ((16 * Nat.pow A 8 * Nat.pow B 8 * Nat.pow (B + 3) 26 : Nat) : Int) :=
    congrArg Nat.cast hAbs
  rw [Int.natAbs_of_nonneg hnn] at hcast
  exact hcast

theorem odd_prime_dvd_Delta_nat {A B q : Nat}
    (hq : q.Prime)
    (hdvd : q ∣ A * B * (B + 3)) :
    q ∣ 16 * Nat.pow A 8 * Nat.pow B 8 * Nat.pow (B + 3) 26 := by
  have hsq {x : Nat} (hx : q ∣ x) : q ∣ Nat.pow x 8 :=
    dvd_pow hx (by decide : 8 ≠ 0)
  have hCp {x : Nat} (hx : q ∣ x) : q ∣ Nat.pow x 26 :=
    dvd_pow hx (by decide : 26 ≠ 0)
  have hABC := (Nat.Prime.dvd_mul hq).mp hdvd
  rcases hABC with hABm | hC0
  · rcases (Nat.Prime.dvd_mul hq).mp hABm with hA | hB
    · exact dvd_mul_of_dvd_left
        (dvd_mul_of_dvd_left
          (dvd_mul_of_dvd_right (hsq hA) _) _) _
    · exact dvd_mul_of_dvd_left
        (dvd_mul_of_dvd_right (hsq hB) _) _
  · exact dvd_mul_of_dvd_right (hCp hC0) _

theorem odd_prime_dvd_Delta {A B q : Nat}
    (hq : q.Prime)
    (hEq : Nat.pow A 4 + Nat.pow B 4 = Nat.pow (B + 3) 13)
    (hdvd : q ∣ A * B * (B + 3)) :
    (q : Int) ∣ (bealFreyWeierstrass A B).Δ := by
  rw [beal_frey_delta_eq_nat A B hEq]
  exact Int.natCast_dvd_natCast.mpr (odd_prime_dvd_Delta_nat hq hdvd)

theorem delta_natAbs_ne_zero {A B : Nat}
    (hA : 0 < A) (hB : 0 < B)
    (h : Nat.pow A 4 + Nat.pow B 4 = Nat.pow (B + 3) 13) :
    Int.natAbs (bealFreyWeierstrass A B).Δ ≠ 0 := by
  rw [BealLevel26Foundations.BealFreyConductorGeneral.beal_frey_weierstrass_delta_natAbs
    A B (B + 3) h]
  refine Nat.mul_ne_zero (Nat.mul_ne_zero (Nat.mul_ne_zero
    (by decide : (16 : Nat) ≠ 0)
    (Nat.pos_iff_ne_zero.mp (Nat.pow_pos hA)))
    (Nat.pos_iff_ne_zero.mp (Nat.pow_pos hB)))
    (Nat.pos_iff_ne_zero.mp (Nat.pow_pos (Nat.succ_pos (B + 2))))

theorem odd_prime_Delta_val_pos {A B q : Nat}
    (hA : 0 < A) (hB : 0 < B)
    (hEq : Nat.pow A 4 + Nat.pow B 4 = Nat.pow (B + 3) 13)
    (hq : q.Prime)
    (hdvd : q ∣ A * B * (B + 3)) :
    0 < padicValInt q (bealFreyWeierstrass A B).Δ := by
  haveI : Fact q.Prime := ⟨hq⟩
  have hAbs :=
    BealLevel26Foundations.BealFreyConductorGeneral.beal_frey_weierstrass_delta_natAbs
      A B (B + 3) hEq
  have hne := delta_natAbs_ne_zero hA hB hEq
  have hdvdN : q ∣ Int.natAbs (bealFreyWeierstrass A B).Δ := by
    rw [hAbs]
    exact odd_prime_dvd_Delta_nat hq hdvd
  have hpow : q ^ 1 ∣ Int.natAbs (bealFreyWeierstrass A B).Δ := by
    rw [pow_one]
    exact hdvdN
  have hle : 1 ≤ padicValNat q
      (Int.natAbs (bealFreyWeierstrass A B).Δ) := by
    have hiff := padicValNat_dvd_iff (p := q) 1
      (Int.natAbs (bealFreyWeierstrass A B).Δ)
    rcases hiff.mp hpow with h0 | hle
    · exact absurd h0 hne
    · exact hle
  change 0 < padicValNat q (Int.natAbs (bealFreyWeierstrass A B).Δ)
  exact Nat.succ_le_iff.mp hle

/-- Tate Step 2 at an odd prime q | ABC: local
    conductor exponent 1.  Needs pairwise
    coprimeness (otherwise q may divide c4). -/
theorem tate_odd_prime_exponent_one {A B q : Nat}
    (hA : 0 < A) (hB : 0 < B)
    (hEq : Nat.pow A 4 + Nat.pow B 4 = Nat.pow (B + 3) 13)
    (hAB : Nat.Coprime A B)
    (hAC : Nat.Coprime A (B + 3))
    (hBC : Nat.Coprime B (B + 3))
    (hq : q.Prime) (hodd : q ≠ 2)
    (hdvd : q ∣ A * B * (B + 3)) :
    conductorExponentTate
      (padicValInt q (bealFreyWeierstrass A B).c₄)
      (padicValInt q (bealFreyWeierstrass A B).Δ) = 1 :=
  conductorExponentTate_of_step2
    (odd_prime_c4_val_zero hEq hAB hAC hBC hq hodd hdvd)
    (odd_prime_Delta_val_pos hA hB hEq hq hdvd).ne'

theorem tate_odd_prime_kodaira_I {A B q : Nat}
    (hA : 0 < A) (hB : 0 < B)
    (hEq : Nat.pow A 4 + Nat.pow B 4 = Nat.pow (B + 3) 13)
    (hAB : Nat.Coprime A B)
    (hAC : Nat.Coprime A (B + 3))
    (hBC : Nat.Coprime B (B + 3))
    (hq : q.Prime) (hodd : q ≠ 2)
    (hdvd : q ∣ A * B * (B + 3)) :
    kodairaTate
      (padicValInt q (bealFreyWeierstrass A B).c₄)
      (padicValInt q (bealFreyWeierstrass A B).Δ) =
      KodairaTate.I
        (padicValInt q (bealFreyWeierstrass A B).Δ) :=
  kodairaTate_of_step2
    (odd_prime_c4_val_zero hEq hAB hAC hBC hq hodd hdvd)
    (odd_prime_Delta_val_pos hA hB hEq hq hdvd).ne'

theorem tate_odd_exponent_le_one {A B q : Nat}
    (hA : 0 < A) (hB : 0 < B)
    (hEq : Nat.pow A 4 + Nat.pow B 4 = Nat.pow (B + 3) 13)
    (hAB : Nat.Coprime A B)
    (hAC : Nat.Coprime A (B + 3))
    (hBC : Nat.Coprime B (B + 3))
    (hq : q.Prime) (hodd : q ≠ 2)
    (hdvd : q ∣ A * B * (B + 3)) :
    conductorExponentTate
      (padicValInt q (bealFreyWeierstrass A B).c₄)
      (padicValInt q (bealFreyWeierstrass A B).Δ) ≤ 1 :=
  le_of_eq
    (tate_odd_prime_exponent_one hA hB hEq hAB hAC hBC hq hodd hdvd)

theorem v2_delta_ge_four {A B : Nat} (hA : 0 < A) (hB : 0 < B)
    (h : Nat.pow A 4 + Nat.pow B 4 = Nat.pow (B + 3) 13) :
    4 ≤ padicValInt 2 (bealFreyWeierstrass A B).Δ := by
  haveI : Fact (2 : Nat).Prime := ⟨Nat.prime_two⟩
  have hAbs :=
    BealLevel26Foundations.BealFreyConductorGeneral.beal_frey_weierstrass_delta_natAbs
      A B (B + 3) h
  have hne := delta_natAbs_ne_zero hA hB h
  have h16 : (16 : Nat) ∣ Int.natAbs (bealFreyWeierstrass A B).Δ := by
    rw [hAbs]
    exact dvd_mul_of_dvd_left
      (dvd_mul_of_dvd_left (dvd_mul_of_dvd_left (dvd_refl 16) _) _) _
  have hpow : (2 : Nat) ^ 4 ∣ Int.natAbs (bealFreyWeierstrass A B).Δ := by
    have : (16 : Nat) = 2 ^ 4 := rfl
    exact this ▸ h16
  have hle : 4 ≤ padicValNat 2
      (Int.natAbs (bealFreyWeierstrass A B).Δ) :=
    (padicValNat_dvd_iff_le hne).mp hpow
  exact hle

/-- Tate Steps 6-7 at 2: v2(c4) ≥ 4, v2(c6) from A,B
    parity, and the Step 6-7 table gives exponent ≤ 5. -/
theorem tate_2adic_exponent_le5 {A B : Nat}
    (hA : 0 < A) (hB : 0 < B)
    (hEq : Nat.pow A 4 + Nat.pow B 4 = Nat.pow (B + 3) 13) :
    conductorExponentTate2
      (padicValInt 2 (bealFreyWeierstrass A B).c₄)
      (padicValInt 2 (bealFreyWeierstrass A B).c₆)
      (padicValInt 2 (bealFreyWeierstrass A B).Δ) ≤ 5 := by
  have hne : A ≠ B := ne_of_beal_gap3 hA hB hEq
  have hc4 : 4 ≤ padicValInt 2 (bealFreyWeierstrass A B).c₄ :=
    v2_c4_ge_four (Or.inl (Nat.pos_iff_ne_zero.mp hA))
  have _hc6 : 6 ≤ padicValInt 2 (bealFreyWeierstrass A B).c₆ :=
    v2_c6_ge_six hne
  have hΔ : 4 ≤ padicValInt 2 (bealFreyWeierstrass A B).Δ :=
    v2_delta_ge_four hA hB hEq
  have hΔne : padicValInt 2 (bealFreyWeierstrass A B).Δ ≠ 0 :=
    Nat.ne_of_gt (lt_of_lt_of_le (by decide : (0 : Nat) < 4) hΔ)
  have hc4ne : padicValInt 2 (bealFreyWeierstrass A B).c₄ ≠ 0 :=
    Nat.ne_of_gt (lt_of_lt_of_le (by decide : (0 : Nat) < 4) hc4)
  have hbranch :
      conductorExponentTate2
        (padicValInt 2 (bealFreyWeierstrass A B).c₄)
        (padicValInt 2 (bealFreyWeierstrass A B).c₆)
        (padicValInt 2 (bealFreyWeierstrass A B).Δ) =
      conductorExponentTate67
        (padicValInt 2 (bealFreyWeierstrass A B).c₄)
        (padicValInt 2 (bealFreyWeierstrass A B).c₆) := by
    unfold conductorExponentTate2
    rw [if_neg hΔne, if_neg hc4ne]
  have hcases := conductorExponentTate67_of_ge_four
    (vc6 := padicValInt 2 (bealFreyWeierstrass A B).c₆) hc4
  rw [hbranch]
  rcases hcases with h4 | h5
  · exact h4 ▸ (by decide : (4 : Nat) ≤ 5)
  · exact h5 ▸ Nat.le_refl 5

/-! ## Displayed radical bound (not N(E)) -/

/-- Requested right-hand side.  Not a conductor. -/
def tate_rhs (A B : Nat) : Nat :=
  Nat.pow 2 5 * rad (A * B * (B + 3)) * 13

theorem rad_dvd_tate_rhs (A B : Nat) :
    rad (A * B * (B + 3)) ∣ tate_rhs A B :=
  Nat.dvd_trans
    (Nat.dvd_mul_left (rad (A * B * (B + 3))) (Nat.pow 2 5))
    (Nat.dvd_mul_right _ 13)

theorem two_pow5_dvd_tate_rhs (A B : Nat) :
    Nat.pow 2 5 ∣ tate_rhs A B :=
  Nat.dvd_trans
    (Nat.dvd_mul_right (Nat.pow 2 5) (rad (A * B * (B + 3))))
    (Nat.dvd_mul_right _ 13)

theorem thirteen_dvd_tate_rhs (A B : Nat) :
    13 ∣ tate_rhs A B :=
  Nat.dvd_mul_left 13 (Nat.pow 2 5 * rad (A * B * (B + 3)))

/-- Product of odd prime factors of ABC.
    Each such prime has Tate exponent 1 under
    pairwise coprimeness.  Not Mathlib N(E). -/
def packedOddStep2 (A B : Nat) : Nat :=
  ((A * B * (B + 3)).primeFactors.filter (fun q => q ≠ 2)).prod id

theorem packedOddStep2_dvd_rad (A B : Nat) :
    packedOddStep2 A B ∣ rad (A * B * (B + 3)) := by
  unfold packedOddStep2 rad
  exact Finset.prod_dvd_prod_of_subset _ _
    (fun q : Nat => id q)
    (Finset.filter_subset _ _)

theorem packedOddStep2_dvd_tate_rhs (A B : Nat) :
    packedOddStep2 A B ∣ tate_rhs A B :=
  Nat.dvd_trans (packedOddStep2_dvd_rad A B) (rad_dvd_tate_rhs A B)

theorem odd_prime_dvd_rad {q n : Nat}
    (hq : q.Prime) (hn : n ≠ 0) (hdvd : q ∣ n) :
    q ∣ rad n := by
  have hmem : q ∈ n.primeFactors :=
    Nat.mem_primeFactors.mpr ⟨hq, hdvd, hn⟩
  exact Finset.dvd_prod_of_mem id hmem

theorem odd_prime_dvd_tate_rhs {A B q : Nat}
    (hq : q.Prime) (_hodd : q ≠ 2)
    (hABC : A * B * (B + 3) ≠ 0)
    (hdvd : q ∣ A * B * (B + 3)) :
    q ∣ tate_rhs A B := by
  have : q ∣ rad (A * B * (B + 3)) :=
    odd_prime_dvd_rad hq hABC hdvd
  exact Nat.dvd_trans this (rad_dvd_tate_rhs A B)

/-- 2-adic Tate exponent on this Frey model. -/
def tateF2 (A B : Nat) : Nat :=
  conductorExponentTate2
    (padicValInt 2 (bealFreyWeierstrass A B).c₄)
    (padicValInt 2 (bealFreyWeierstrass A B).c₆)
    (padicValInt 2 (bealFreyWeierstrass A B).Δ)

/-- Displayed packed conductor.
    `2^{f₂} * rad(AB(B+3)) * 13` with
    `f₂ = conductorExponentTate2`.
    Not Mathlib Tate N(E).  Not `|Delta|`. -/
def tateConductor (A B : Nat) : Nat :=
  Nat.pow 2 (tateF2 A B) * rad (A * B * (B + 3)) * 13

/-- Same Nat as `tateConductor`. -/
def tate_conductor_bound_rhs (A B : Nat) : Nat :=
  tateConductor A B

theorem tate_conductor_bound_rhs_eq (A B : Nat) :
    tate_conductor_bound_rhs A B = tateConductor A B :=
  rfl

/-- `frey_tate_conductor` is the defined Nat,
    not an uninhabited Prop. -/
def frey_tate_conductor (A B : Nat) : Nat :=
  tateConductor A B

theorem tateConductor_dvd_two_pow5_rad (A B : Nat) :
    tateConductor A B ∣
      Nat.pow 2 5 * rad (A * B * (B + 3)) * 13 := by
  have hf : tateF2 A B ≤ 5 :=
    conductorExponentTate2_le_five _ _ _
  have h2 : Nat.pow 2 (tateF2 A B) ∣ Nat.pow 2 5 :=
    Nat.pow_dvd_pow 2 hf
  have hmul :
      Nat.pow 2 (tateF2 A B) * rad (A * B * (B + 3)) ∣
        Nat.pow 2 5 * rad (A * B * (B + 3)) :=
    Nat.mul_dvd_mul h2 (Nat.dvd_refl _)
  exact Nat.mul_dvd_mul hmul (Nat.dvd_refl 13)

/-- Packed Step-2 / Step-6-7 conductor from valuations.
    Not Mathlib N(E). -/
def tatePackedValuationBound (A B : Nat) : Nat :=
  Nat.pow 2
    (conductorExponentTate2
      (padicValInt 2 (bealFreyWeierstrass A B).c₄)
      (padicValInt 2 (bealFreyWeierstrass A B).c₆)
      (padicValInt 2 (bealFreyWeierstrass A B).Δ)) *
    packedOddStep2 A B

theorem tatePackedValuationBound_dvd_rhs {A B : Nat}
    (hA : 0 < A) (hB : 0 < B)
    (hEq : Nat.pow A 4 + Nat.pow B 4 = Nat.pow (B + 3) 13) :
    tatePackedValuationBound A B ∣ tate_conductor_bound_rhs A B := by
  have _hf := tate_2adic_exponent_le5 hA hB hEq
  have hodd : packedOddStep2 A B ∣ rad (A * B * (B + 3)) :=
    packedOddStep2_dvd_rad A B
  have hmul :
      Nat.pow 2 (tateF2 A B) * packedOddStep2 A B ∣
        Nat.pow 2 (tateF2 A B) * rad (A * B * (B + 3)) :=
    Nat.mul_dvd_mul (Nat.dvd_refl _) hodd
  have h13 :
      Nat.pow 2 (tateF2 A B) * rad (A * B * (B + 3)) ∣
        tateConductor A B :=
    Nat.dvd_mul_right _ 13
  change Nat.pow 2 (tateF2 A B) * packedOddStep2 A B ∣
    tateConductor A B
  exact Nat.dvd_trans hmul h13

/-! ## Defined packed conductor (not Mathlib N(E)) -/

/-- Empty token.  Mathlib 4.12 has no Tate N(E).
    `tateConductor` is a packed displayed Nat,
    not an inhabitant of this predicate.
    Do not inhabit with N = |Delta| or N = 1. -/
inductive IsTateConductor : WeierstrassCurve Int → Nat → Prop

/-- Inhabited packed bound: `tateConductor | 2^5*rad*13`,
    `v2 ≤ 5`, and odd `v_q ≤ 1`.
    Uses `tate_2adic_exponent_le5` and
    `tate_odd_exponent_le_one`.
    Not Mathlib N(E). -/
theorem frey_tate_conductor_inhabited (A B : Nat) :
    tateConductor A B ∣
        Nat.pow 2 5 * rad (A * B * (B + 3)) * 13 ∧
      (0 < A → 0 < B →
        Nat.pow A 4 + Nat.pow B 4 = Nat.pow (B + 3) 13 →
        tateF2 A B ≤ 5) ∧
      (0 < A → 0 < B →
        Nat.pow A 4 + Nat.pow B 4 = Nat.pow (B + 3) 13 →
        Nat.Coprime A B →
        Nat.Coprime A (B + 3) →
        Nat.Coprime B (B + 3) →
        ∀ q : Nat, q.Prime → q ≠ 2 → q ∣ A * B * (B + 3) →
          conductorExponentTate
            (padicValInt q (bealFreyWeierstrass A B).c₄)
            (padicValInt q (bealFreyWeierstrass A B).Δ) ≤ 1) :=
  ⟨tateConductor_dvd_two_pow5_rad A B,
    fun hA hB hEq => tate_2adic_exponent_le5 hA hB hEq,
    fun hA hB hEq hAB hAC hBC q hq hodd hdvd =>
      tate_odd_exponent_le_one hA hB hEq hAB hAC hBC hq hodd hdvd⟩

#check rad
#check bealFreyWeierstrass
#check conductorExponentTate
#check beal_frey_c4
#check v2_c4_ge_four
#check tate_step2_does_not_finish_at_two
#check tate_odd_prime_exponent_one
#check tate_odd_exponent_le_one
#check tate_2adic_exponent_le5
#check tate_rhs
#check tateF2
#check tateConductor
#check tate_conductor_bound_rhs
#check tatePackedValuationBound_dvd_rhs
#check rad_dvd_tate_rhs
#check packedOddStep2_dvd_tate_rhs
#check frey_tate_conductor
#check frey_tate_conductor_inhabited
#check tateConductor_dvd_two_pow5_rad
#check frey_conductor_general
#print axioms beal_frey_c4
#print axioms v2_c4_ge_four
#print axioms tate_step2_does_not_finish_at_two
#print axioms tate_odd_prime_exponent_one
#print axioms tate_odd_exponent_le_one
#print axioms tate_2adic_exponent_le5
#print axioms v2_c6_ge_six
#print axioms tatePackedValuationBound_dvd_rhs
#print axioms tateConductor_dvd_two_pow5_rad
#print axioms frey_tate_conductor_inhabited
#print axioms rad_dvd_tate_rhs
#print axioms packedOddStep2_dvd_tate_rhs
#print axioms frey_conductor_general
#print axioms gcd_B_Bplus3_dvd_three

end BealLevel26Foundations.BealFreyTateConductor
