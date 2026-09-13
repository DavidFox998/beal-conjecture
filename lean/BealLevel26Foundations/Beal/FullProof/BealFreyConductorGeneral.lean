/-
Copyright (c) 2026 David Fox. All rights reserved.
Released under MIT license as described in the file LICENSE.
Authors: David Fox

Track B v8.87.0 — general Weierstrass Δ bound for gap-3
(4,13,13).  Not B14-specific.

Mathlib 4.12 has `WeierstrassCurve Int` and `Δ`, and
no Tate/Kodaira conductor `N(E)`.  The Beal Frey
model here is the existing `freyCurve ↑A ↑B 4 4`
(`Y² = X(X − A⁴)(X + B⁴)`).  That is the Mathlib
Weierstrass instance of the `Int → Int` cubic
`x(x − A⁴)(x + B⁴)`.

Under `Nat.pow A 4 + Nat.pow B 4 = Nat.pow C 13`,
`Δ = 16 * A⁸ * B⁸ * C²⁶`.  Written `2^e * N0` with
`e = 4 ≤ 5` and `N0 = A⁸ B⁸ C²⁶`, one has
`N0 ∣ (A*B*C)²⁶ * 13`.  The extra `13` is the
exponent, not a Tate prime.

This is not `N ∣ 2⁵ * 3 * 13`.  Survivor
`63982 = 2 * 31991` still shows that claim is
false, so `conductor_86` stays a Prop.
This is not `N0 ∣ rad(B*C)`: `Δ` still carries
the primes of `A` and higher powers.  That rad
statement stays the uninhabited Prop
`frey_conductor_N0_dvd_rad_BC`.
This is not BCDT.  No custom `axiom BCDT_B14`.
`Classical.choice` is not Wiles.

Keeps v8.86.0 math: 266 + 86 residue kills stay
empty-axiom.  Does not import `RibetMazur`,
`BealFreyB14`, or `FreyModularity_13`.
Not imported by the 24-module none chain.
-/

import BealLevel26Foundations.Real.FreyWeierstrass

namespace BealLevel26Foundations.BealFreyConductorGeneral

open BealLevel26Foundations.Real.FreyWeierstrass

/-! ## Radical (Mathlib 4.12 has no `Nat.rad`) -/

/-- Product of distinct prime factors.  Local copy of
    Step13 `rad1`.  Not a conductor. -/
def rad (n : Nat) : Nat :=
  n.primeFactors.prod id

theorem rad_dvd (n : Nat) : rad n ∣ n :=
  Nat.prod_primeFactors_dvd n

/-! ## Mathlib Weierstrass instance of the Beal Frey cubic -/

/-- `Y² = X(X − A⁴)(X + B⁴)`.  Existing `freyCurve`.
    Not a Mathlib `EllipticCurve` (no unit `Δ'`), and
    not a Tate conductor. -/
def bealFreyWeierstrass (A B : Nat) : WeierstrassCurve Int :=
  freyCurve (A : Int) (B : Int) 4 4

theorem bealFreyWeierstrass_eq (A B : Nat) :
    bealFreyWeierstrass A B = freyCurve (A : Int) (B : Int) 4 4 :=
  rfl

/-- Kernel `Nat.pow` versus Mathlib monoid `^`.  Not defeq. -/
theorem nat_pow_eq_hpow (a n : Nat) : Nat.pow a n = a ^ n := by
  induction n with
  | zero => rfl
  | succ n ih =>
    change Nat.pow a n * a = a ^ (n + 1)
    rw [ih, pow_succ]

/-- `Int` form of the public `Nat.pow` Beal equation. -/
theorem beal_equation_int (A B C : Nat)
    (h : Nat.pow A 4 + Nat.pow B 4 = Nat.pow C 13) :
    (A : Int) ^ 4 + (B : Int) ^ 4 = (C : Int) ^ 13 := by
  have h' : A ^ 4 + B ^ 4 = C ^ 13 := by
    rw [← nat_pow_eq_hpow A 4, ← nat_pow_eq_hpow B 4, ← nat_pow_eq_hpow C 13]
    exact h
  have hcast : ((A ^ 4 + B ^ 4 : Nat) : Int) = ((C ^ 13 : Nat) : Int) :=
    congrArg (fun n : Nat => (n : Int)) h'
  rw [Nat.cast_add] at hcast
  rw [Nat.cast_pow A 4, Nat.cast_pow B 4, Nat.cast_pow C 13] at hcast
  exact hcast

/-- Mathlib `Δ` under the Beal equation.
    `16 * (A⁴)² * (B⁴)² * (C¹³)²`. -/
theorem beal_frey_weierstrass_delta (A B C : Nat)
    (h : Nat.pow A 4 + Nat.pow B 4 = Nat.pow C 13) :
    (bealFreyWeierstrass A B).Δ =
      16 * ((A : Int) ^ 4) ^ 2 * ((B : Int) ^ 4) ^ 2 *
        ((C : Int) ^ 13) ^ 2 :=
  freyCurve_discriminant_of_equation (beal_equation_int A B C h)

theorem natAbs_pow_natCast (a n : Nat) :
    Int.natAbs ((a : Int) ^ n) = Nat.pow a n := by
  rw [Int.natAbs_pow, Int.natAbs_ofNat, nat_pow_eq_hpow]

theorem natAbs_sixteen : Int.natAbs (16 : Int) = 16 :=
  rfl

theorem pow_A4_sq (A : Nat) :
    Nat.pow (Nat.pow A 4) 2 = Nat.pow A 8 :=
  (Nat.pow_mul A 4 2).symm

theorem pow_B4_sq (B : Nat) :
    Nat.pow (Nat.pow B 4) 2 = Nat.pow B 8 :=
  (Nat.pow_mul B 4 2).symm

theorem pow_C13_sq (C : Nat) :
    Nat.pow (Nat.pow C 13) 2 = Nat.pow C 26 :=
  (Nat.pow_mul C 13 2).symm

theorem mul_assoc_four (a b c d : Nat) :
    a * b * c * d = a * (b * c * d) := by
  rw [Nat.mul_assoc a b c, Nat.mul_assoc a (b * c) d]

theorem natAbs_int_pow_sq (a k : Nat) :
    Int.natAbs (((a : Int) ^ k) ^ 2) = Nat.pow (Nat.pow a k) 2 := by
  rw [Int.natAbs_pow, natAbs_pow_natCast]
  exact (nat_pow_eq_hpow (a ^ k) 2).symm

/-- Absolute discriminant is `16 * A⁸ * B⁸ * C²⁶`. -/
theorem beal_frey_weierstrass_delta_natAbs (A B C : Nat)
    (h : Nat.pow A 4 + Nat.pow B 4 = Nat.pow C 13) :
    Int.natAbs (bealFreyWeierstrass A B).Δ =
      16 * Nat.pow A 8 * Nat.pow B 8 * Nat.pow C 26 := by
  rw [beal_frey_weierstrass_delta A B C h]
  rw [Int.natAbs_mul, Int.natAbs_mul, Int.natAbs_mul, natAbs_sixteen]
  rw [natAbs_int_pow_sq A 4, natAbs_int_pow_sq B 4, natAbs_int_pow_sq C 13]
  rw [pow_A4_sq, pow_B4_sq, pow_C13_sq]

theorem sixteen_eq_pow2_4 : (16 : Nat) = Nat.pow 2 4 :=
  rfl

theorem eight_le_26 : 8 ≤ 26 :=
  Nat.le_of_ble_eq_true rfl

theorem pow_dvd_pow_8_26 (a : Nat) :
    Nat.pow a 8 ∣ Nat.pow a 26 :=
  Nat.pow_dvd_pow a eight_le_26

theorem pow_mul_triple (A B C n : Nat) :
    Nat.pow (A * B * C) n =
      Nat.pow A n * Nat.pow B n * Nat.pow C n :=
  (Nat.mul_pow (A * B) C n).trans
    (congrArg (fun t => t * Nat.pow C n) (Nat.mul_pow A B n))

/-- `A⁸ B⁸ C²⁶ ∣ (ABC)²⁶`. -/
theorem N0_dvd_ABC_pow26 (A B C : Nat) :
    Nat.pow A 8 * Nat.pow B 8 * Nat.pow C 26 ∣
      Nat.pow (A * B * C) 26 := by
  rw [pow_mul_triple]
  exact Nat.mul_dvd_mul
    (Nat.mul_dvd_mul (pow_dvd_pow_8_26 A) (pow_dvd_pow_8_26 B))
    (Nat.dvd_refl (Nat.pow C 26))

/-- Inhabited general bound.  `N` here is `natAbs Δ`
    of the Mathlib Weierstrass instance, not Tate
    `N(E)`.  `e = 4 ≤ 5` peels only the explicit `16`.
    Leftover factors of `2` and every prime of `A`
    stay in `N0`.  Not `conductor_86`.  Not BCDT. -/
theorem frey_conductor_general (A B C : Nat)
    (h : Nat.pow A 4 + Nat.pow B 4 = Nat.pow C 13)
    (_hGap : C = B + 3) :
    ∃ (e N0 : Nat),
      Int.natAbs (bealFreyWeierstrass A B).Δ = Nat.pow 2 e * N0 ∧
      N0 ∣ Nat.pow (A * B * C) 26 * 13 ∧
      e ≤ 5 :=
  let e : Nat := 4
  let N0 : Nat := Nat.pow A 8 * Nat.pow B 8 * Nat.pow C 26
  have hAbs :
      Int.natAbs (bealFreyWeierstrass A B).Δ =
        16 * Nat.pow A 8 * Nat.pow B 8 * Nat.pow C 26 :=
    beal_frey_weierstrass_delta_natAbs A B C h
  have hAssoc :
      16 * Nat.pow A 8 * Nat.pow B 8 * Nat.pow C 26 = 16 * N0 :=
    mul_assoc_four 16 (Nat.pow A 8) (Nat.pow B 8) (Nat.pow C 26)
  have h16 : 16 * N0 = Nat.pow 2 4 * N0 := by
    rw [sixteen_eq_pow2_4]
  have hEq :
      Int.natAbs (bealFreyWeierstrass A B).Δ = Nat.pow 2 e * N0 :=
    (hAbs.trans hAssoc).trans h16
  have hDvd0 : N0 ∣ Nat.pow (A * B * C) 26 :=
    N0_dvd_ABC_pow26 A B C
  have hDvd : N0 ∣ Nat.pow (A * B * C) 26 * 13 :=
    Nat.dvd_trans hDvd0 (Nat.dvd_mul_right _ 13)
  have hE : e ≤ 5 := Nat.le_succ 4
  ⟨e, N0, hEq, hDvd, hE⟩

/-- Same bound as a single divisor: `|Δ|` divides
    `2⁵ * (ABC)²⁶ * 13`. -/
theorem frey_delta_dvd_bound (A B C : Nat)
    (h : Nat.pow A 4 + Nat.pow B 4 = Nat.pow C 13)
    (hGap : C = B + 3) :
    Int.natAbs (bealFreyWeierstrass A B).Δ ∣
      Nat.pow 2 5 * Nat.pow (A * B * C) 26 * 13 := by
  obtain ⟨e, N0, hEq, hDvd, hE⟩ :=
    frey_conductor_general A B C h hGap
  have h2 : Nat.pow 2 e ∣ Nat.pow 2 5 :=
    Nat.pow_dvd_pow 2 hE
  have hmul : Nat.pow 2 e * N0 ∣
      Nat.pow 2 5 * (Nat.pow (A * B * C) 26 * 13) :=
    Nat.mul_dvd_mul h2 hDvd
  have hAssoc :
      Nat.pow 2 5 * Nat.pow (A * B * C) 26 * 13 =
        Nat.pow 2 5 * (Nat.pow (A * B * C) 26 * 13) :=
    Nat.mul_assoc (Nat.pow 2 5) (Nat.pow (A * B * C) 26) 13
  exact hEq ▸ (hAssoc ▸ hmul)

/-- Uninhabited.  The rad form.  `|Δ|` does not drop
    the primes of `A` or higher powers, and Mathlib
    4.12 has no Tate `N(E)` that would. -/
def frey_conductor_N0_dvd_rad_BC : Prop :=
  ∀ A B C : Nat,
    Nat.pow A 4 + Nat.pow B 4 = Nat.pow C 13 →
    C = B + 3 →
    ∃ (e N0 : Nat),
      Int.natAbs (bealFreyWeierstrass A B).Δ = Nat.pow 2 e * N0 ∧
      N0 ∣ rad (B * C) ∧
      e ≤ 5

#check rad
#check bealFreyWeierstrass
#check beal_frey_weierstrass_delta
#check beal_frey_weierstrass_delta_natAbs
#check frey_conductor_general
#check frey_delta_dvd_bound
#check frey_conductor_N0_dvd_rad_BC
#print axioms beal_equation_int
#print axioms beal_frey_weierstrass_delta
#print axioms beal_frey_weierstrass_delta_natAbs
#print axioms frey_conductor_general
#print axioms frey_delta_dvd_bound

end BealLevel26Foundations.BealFreyConductorGeneral
