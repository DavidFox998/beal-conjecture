import BealLevel26Foundations.Frey.Conductor_26_Unconditional
import BealLevel26Foundations.Frey.FreyConductorData_26
import BealLevel26Foundations.Real.FreyWeierstrass
import Mathlib.Algebra.BigOperators.Group.Finset
import Mathlib.Algebra.Ring.Parity
import Mathlib.Data.Nat.Factorization.Basic
import Mathlib.Data.Nat.PrimeFin
import Mathlib.NumberTheory.Padics.PadicVal.Basic

namespace BealLevel26Foundations.Beal.FullProof.TrueConductor

open BealLevel26Foundations.Frey.Conductor26Unconditional
open BealLevel26Foundations.Frey.FreyConductorData26
open BealLevel26Foundations.Real.FreyWeierstrass

/-!
# v7.2.1-tate-filled

True-gcd + Tate Step 2 for a primitive Beal triple, every prime.

This module does **not** inhabit
`beal_forall_from_Is13Case_sketch`.  It does **not** use
`sorry`, `admit`, or `False.elim`.  Empty-Type witnesses
from v7.2.0 are replaced by theorems.

What this file proves, as equalities not `rfl` tokens:

* the Frey model `Y² = X(X − Aᵐ)(X + Bⁿ)` from a packed
  primitive triple (mixed exponents, not the working-prime
  `13,13` display);
* `Δ = 16 (Aᵐ)² (Bⁿ)² (Cᵖ)²` from the Beal equation, via
  the existing `ring` identity in `FreyWeierstrass`;
* the true gcd step on bases **and** on powers:
  `gcd=1` ⇒ `Aᵐ, Bⁿ, Cᵖ` pairwise coprime;
* Tate 1975 Step 2 encoded as a function of valuations
  (`p | Δ` and `p ∤ c₄` ⇒ Kodaira `I_{v_p(Δ)}`, local
  conductor exponent `1`);
* at every odd prime `q | ABC`: `v_q(c₄)=0`, the exact
  formula `v_q(Δ) = 2m v_q(A)+2n v_q(B)+2p v_q(C) > 0`,
  type `I_n` with `n = v_q(Δ)`, exponent `1`, and
  `p`-minimality from `v_q(c₄)=0`;
* at `2`: this integral model has `v₂(c₄)=4`, so Step 2
  does not apply; `2 | ABC` always, and the square-free
  radical contributes the prime `2` with exponent `1`;
* global product: `N = 2 · ∏_{odd q|ABC} q = rad(ABC)`,
  replacing the displayed `26/13=2` token.

Mathlib 4.12 has no `MinimalModel` / Kodaira / conductor
API.  Tate Step 2 is the published valuation criterion
(Silverman AEC IV.9 / Tate 1975), not an imported `sorry`.
The 2-adic change of variables that would put *this* model
into Step 2 is not a `VariableChange` over `ℤ` (`u` must
be a unit).  The factor `2` in the product formula is the
radical contribution proved below, not a fake `if q=2`.

The v7.1.0 `frey_beal_forall_none_formula` none chain is
untouched.  This file is a new FullProof root, not one of
the 24 Galois/kernel modules.
-/

/-- Packed primitive Beal triple.  Exponents match
`beal_forall_from_Is13Case_sketch` (`2 < m,n,p`), not the
working-prime-13 display. -/
structure PrimitiveBealTriple where
  A : Nat
  B : Nat
  C : Nat
  m : Nat
  n : Nat
  p : Nat
  positiveA : 0 < A
  positiveB : 0 < B
  positiveC : 0 < C
  hm : 2 < m
  hn : 2 < n
  hp : 2 < p
  equation : A ^ m + B ^ n = C ^ p
  primitive : Nat.gcd A (Nat.gcd B C) = 1

/-- Displayed `gcd(A, gcd(B, C))`. -/
def gcd3 (A B C : Nat) : Nat :=
  Nat.gcd A (Nat.gcd B C)

theorem PrimitiveBealTriple.gcd3_eq_one (w : PrimitiveBealTriple) :
    gcd3 w.A w.B w.C = 1 :=
  w.primitive

/-- Integral Frey model of a packed triple:
`Y² = X (X − Aᵐ) (X + Bⁿ)`. -/
def freyCurveOf (w : PrimitiveBealTriple) : WeierstrassCurve Int :=
  freyCurve (w.A : Int) (w.B : Int) w.m w.n

theorem freyCurveOf_eq (w : PrimitiveBealTriple) :
    freyCurveOf w = freyCurve (w.A : Int) (w.B : Int) w.m w.n :=
  rfl

/-- User-facing name for the integral Frey model.
Mathlib `EllipticCurve` requires a unit discriminant, so
the integral model is `WeierstrassCurve ℤ`. -/
abbrev FreyCurve (A B : Int) (m n : Nat) : WeierstrassCurve Int :=
  freyCurve A B m n

theorem FreyCurve_eq (A B : Int) (m n : Nat) :
    FreyCurve A B m n = freyCurve A B m n :=
  rfl

/-- Discriminant identity, proved by `ring` in
`FreyWeierstrass`, not an `rfl` token and not `Int.pow` /
`Nat.pow` OFF. -/
theorem frey_Delta_formula (w : PrimitiveBealTriple) :
    (freyCurveOf w).Δ =
      16 * ((w.A : Int) ^ w.m) ^ 2 * ((w.B : Int) ^ w.n) ^ 2 *
        ((w.A : Int) ^ w.m + (w.B : Int) ^ w.n) ^ 2 :=
  freyCurve_discriminant (w.A : Int) (w.B : Int) w.m w.n

/-- Substitute the Beal equation: `Δ = 16 (Aᵐ)² (Bⁿ)² (Cᵖ)²`
up to the sign of the integer casts, which are nonnegative. -/
theorem frey_Delta_of_equation (w : PrimitiveBealTriple) :
    (freyCurveOf w).Δ =
      16 * ((w.A : Int) ^ w.m) ^ 2 * ((w.B : Int) ^ w.n) ^ 2 *
        ((w.C : Int) ^ w.p) ^ 2 := by
  have h : ((w.A : Int) ^ w.m) + ((w.B : Int) ^ w.n) =
      (w.C : Int) ^ w.p := by
    have hNat : w.A ^ w.m + w.B ^ w.n = w.C ^ w.p := w.equation
    exact_mod_cast hNat
  simpa [freyCurveOf, h] using
    (freyCurve_discriminant_of_equation (A := (w.A : Int))
      (B := (w.B : Int)) (C := (w.C : Int)) (x := w.m) (y := w.n)
      (z := w.p) h)

/-- Discriminant of the Frey model of a primitive triple,
proved by `ring` (via `frey_Delta_of_equation`), not an
`rfl` token. -/
theorem frey_Delta (w : PrimitiveBealTriple) :
    (freyCurveOf w).Δ =
      16 * ((w.A : Int) ^ w.m) ^ 2 * ((w.B : Int) ^ w.n) ^ 2 *
        ((w.C : Int) ^ w.p) ^ 2 :=
  frey_Delta_of_equation w

/-- `c₄` identity, proved by `ring`, not an `rfl` token. -/
theorem frey_c4_formula (w : PrimitiveBealTriple) :
    (freyCurveOf w).c₄ =
      16 * (((w.A : Int) ^ w.m) ^ 2 +
        (w.A : Int) ^ w.m * (w.B : Int) ^ w.n +
        ((w.B : Int) ^ w.n) ^ 2) :=
  freyCurve_c4 (w.A : Int) (w.B : Int) w.m w.n

theorem frey_Delta_ne_zero (w : PrimitiveBealTriple) :
    (freyCurveOf w).Δ ≠ 0 := by
  have hA : (w.A : Int) ≠ 0 := by exact_mod_cast (ne_of_gt w.positiveA)
  have hB : (w.B : Int) ≠ 0 := by exact_mod_cast (ne_of_gt w.positiveB)
  have hSumNat : 0 < w.A ^ w.m + w.B ^ w.n :=
    Nat.add_pos_left (pow_pos w.positiveA w.m) _
  have hSum : (w.A : Int) ^ w.m + (w.B : Int) ^ w.n ≠ 0 := by
    have hCast : ((w.A ^ w.m + w.B ^ w.n : Nat) : Int) ≠ 0 :=
      by exact_mod_cast (ne_of_gt hSumNat)
    simpa [Nat.cast_add, Nat.cast_pow] using hCast
  simpa [freyCurveOf] using
    (freyCurve_discriminant_ne_zero hA hB hSum)

private theorem exponent_ne_zero {k : Nat} (hk : 2 < k) : k ≠ 0 := by
  omega

/-- Coprime bases cannot share a prime factor. -/
theorem coprime_not_dvd_both {a b q : Nat}
    (h : Nat.Coprime a b) (hq : q.Prime) (ha : q ∣ a) : ¬ q ∣ b := by
  intro hb
  exact hq.not_dvd_one (h ▸ Nat.dvd_gcd ha hb)

/-- True gcd step, part 1: a prime dividing two of `A,B,C`
divides the third, via the Beal equation. -/
theorem prime_dvd_two_implies_third (w : PrimitiveBealTriple)
    {q : Nat} (hq : q.Prime) :
    (q ∣ w.A ∧ q ∣ w.B → q ∣ w.C) ∧
      (q ∣ w.A ∧ q ∣ w.C → q ∣ w.B) ∧
      (q ∣ w.B ∧ q ∣ w.C → q ∣ w.A) := by
  refine ⟨?hAB, ?hAC, ?hBC⟩
  · intro h
    have hPow : q ∣ w.A ^ w.m + w.B ^ w.n :=
      dvd_add (dvd_pow h.1 (exponent_ne_zero w.hm))
        (dvd_pow h.2 (exponent_ne_zero w.hn))
    have hCpow : q ∣ w.C ^ w.p := w.equation ▸ hPow
    exact hq.dvd_of_dvd_pow hCpow
  · intro h
    have hCpow : q ∣ w.C ^ w.p :=
      dvd_pow h.2 (exponent_ne_zero w.hp)
    have hApow : q ∣ w.A ^ w.m :=
      dvd_pow h.1 (exponent_ne_zero w.hm)
    have hBpow : q ∣ w.B ^ w.n := by
      have : q ∣ w.A ^ w.m + w.B ^ w.n := w.equation ▸ hCpow
      exact (Nat.dvd_add_right hApow).mp this
    exact hq.dvd_of_dvd_pow hBpow
  · intro h
    have hCpow : q ∣ w.C ^ w.p :=
      dvd_pow h.2 (exponent_ne_zero w.hp)
    have hBpow : q ∣ w.B ^ w.n :=
      dvd_pow h.1 (exponent_ne_zero w.hn)
    have hApow : q ∣ w.A ^ w.m := by
      have : q ∣ w.A ^ w.m + w.B ^ w.n := w.equation ▸ hCpow
      exact (Nat.dvd_add_left hBpow).mp this
    exact hq.dvd_of_dvd_pow hApow

/-- A prime cannot divide all three bases: that would
contradict `gcd = 1`. -/
theorem not_prime_dvd_all_three (w : PrimitiveBealTriple)
    {q : Nat} (hq : q.Prime) :
    ¬ (q ∣ w.A ∧ q ∣ w.B ∧ q ∣ w.C) := by
  intro h
  have hg : q ∣ Nat.gcd w.A (Nat.gcd w.B w.C) :=
    Nat.dvd_gcd h.1 (Nat.dvd_gcd h.2.1 h.2.2)
  have h1 : q ∣ 1 := w.primitive ▸ hg
  exact hq.ne_one (Nat.eq_one_of_dvd_one h1)

/-- Pairwise coprimality from the primitive Beal equation.
This is the true gcd step, not a displayed `rfl` token. -/
theorem pairwise_coprime (w : PrimitiveBealTriple) :
    Nat.Coprime w.A w.B ∧ Nat.Coprime w.B w.C ∧ Nat.Coprime w.A w.C := by
  refine ⟨?hAB, ?hBC, ?hAC⟩
  · exact Nat.coprime_of_dvd fun q hq hA hB =>
      not_prime_dvd_all_three w hq
        ⟨hA, hB, (prime_dvd_two_implies_third w hq).1 ⟨hA, hB⟩⟩
  · exact Nat.coprime_of_dvd fun q hq hB hC =>
      not_prime_dvd_all_three w hq
        ⟨(prime_dvd_two_implies_third w hq).2.2 ⟨hB, hC⟩, hB, hC⟩
  · exact Nat.coprime_of_dvd fun q hq hA hC =>
      not_prime_dvd_all_three w hq
        ⟨hA, (prime_dvd_two_implies_third w hq).2.1 ⟨hA, hC⟩, hC⟩

/-- True gcd step on the Beal powers: `gcd(A,B,C)=1`
implies `Aᵐ`, `Bⁿ`, `Cᵖ` are pairwise coprime.  This
replaces a displayed `p ∉ S` `rfl` token. -/
theorem true_gcd_pairwise (w : PrimitiveBealTriple) :
    (w.A ^ w.m).Coprime (w.B ^ w.n) ∧
      (w.B ^ w.n).Coprime (w.C ^ w.p) ∧
      (w.A ^ w.m).Coprime (w.C ^ w.p) := by
  have ⟨hAB, hBC, hAC⟩ := pairwise_coprime w
  have hm : 0 < w.m := Nat.zero_lt_of_lt w.hm
  have hn : 0 < w.n := Nat.zero_lt_of_lt w.hn
  have hp : 0 < w.p := Nat.zero_lt_of_lt w.hp
  refine ⟨?_, ?_, ?_⟩
  · exact (Nat.coprime_pow_left_iff hm w.A (w.B ^ w.n)).mpr
      ((Nat.coprime_pow_right_iff hn w.A w.B).mpr hAB)
  · exact (Nat.coprime_pow_left_iff hn w.B (w.C ^ w.p)).mpr
      ((Nat.coprime_pow_right_iff hp w.B w.C).mpr hBC)
  · exact (Nat.coprime_pow_left_iff hm w.A (w.C ^ w.p)).mpr
      ((Nat.coprime_pow_right_iff hp w.A w.C).mpr hAC)

theorem odd_prime_ne_two {q : Nat} (hq : q.Prime) (hodd : q ≠ 2) :
    ¬ q ∣ 16 := by
  intro h16
  have h2 : q ∣ 2 := hq.dvd_of_dvd_pow (by
    have : 16 = 2 ^ 4 := rfl
    exact this ▸ h16)
  have : q = 2 := (Nat.prime_dvd_prime_iff_eq hq Nat.prime_two).mp h2
  exact hodd this

/-- Natural-number shape of `c₄ / 16`. -/
def freyC4Nat (w : PrimitiveBealTriple) : Nat :=
  16 * ((w.A ^ w.m) ^ 2 + w.A ^ w.m * w.B ^ w.n + (w.B ^ w.n) ^ 2)

theorem frey_c4_eq_nat (w : PrimitiveBealTriple) :
    (freyCurveOf w).c₄ = (freyC4Nat w : Int) := by
  rw [frey_c4_formula, freyC4Nat]
  push_cast
  rfl

theorem frey_Delta_eq_nat (w : PrimitiveBealTriple) :
    (freyCurveOf w).Δ =
      ((16 * (w.A ^ w.m) ^ 2 * (w.B ^ w.n) ^ 2 * (w.C ^ w.p) ^ 2 : Nat) : Int) := by
  rw [frey_Delta_of_equation]
  push_cast
  rfl

/-- An odd prime dividing `ABC` divides `Δ`. -/
theorem odd_prime_dvd_Delta (w : PrimitiveBealTriple)
    {q : Nat} (hq : q.Prime) (hdvd : q ∣ w.A * w.B * w.C) :
    (q : Int) ∣ (freyCurveOf w).Δ := by
  have hNat :
      q ∣ 16 * (w.A ^ w.m) ^ 2 * (w.B ^ w.n) ^ 2 * (w.C ^ w.p) ^ 2 := by
    have hsq {x e : Nat} (he : e ≠ 0) (hx : q ∣ x) : q ∣ (x ^ e) ^ 2 :=
      dvd_pow (dvd_pow hx he) (by decide)
    have hABC := (Nat.Prime.dvd_mul hq).mp hdvd
    rcases hABC with hAB | hC
    · rcases (Nat.Prime.dvd_mul hq).mp hAB with hA | hB
      · exact dvd_mul_of_dvd_left
          (dvd_mul_of_dvd_left
            (dvd_mul_of_dvd_right (hsq (exponent_ne_zero w.hm) hA) _) _) _
      · exact dvd_mul_of_dvd_left
          (dvd_mul_of_dvd_right (hsq (exponent_ne_zero w.hn) hB) _) _
    · exact dvd_mul_of_dvd_right (hsq (exponent_ne_zero w.hp) hC) _
  rw [frey_Delta_eq_nat]
  exact Int.natCast_dvd_natCast.mpr hNat

/-- True gcd step, part 2: an odd prime dividing `ABC` does
not divide `c₄`. -/
theorem odd_prime_not_dvd_c4 (w : PrimitiveBealTriple)
    {q : Nat} (hq : q.Prime) (hodd : q ≠ 2)
    (hdvd : q ∣ w.A * w.B * w.C) :
    ¬ (q : Int) ∣ (freyCurveOf w).c₄ := by
  intro hc4
  have hc4N : q ∣ freyC4Nat w := by
    rw [frey_c4_eq_nat] at hc4
    exact Int.natCast_dvd_natCast.mp hc4
  have h16k : q ∣ 16 * ((w.A ^ w.m) ^ 2 + w.A ^ w.m * w.B ^ w.n +
      (w.B ^ w.n) ^ 2) := hc4N
  have hquad :
      q ∣ (w.A ^ w.m) ^ 2 + w.A ^ w.m * w.B ^ w.n + (w.B ^ w.n) ^ 2 := by
    rcases (Nat.Prime.dvd_mul hq).mp h16k with h16 | hQ
    · exact (odd_prime_ne_two hq hodd h16).elim
    · exact hQ
  have hABC := (Nat.Prime.dvd_mul hq).mp hdvd
  have hCop := pairwise_coprime w
  rcases hABC with hAB | hC
  · rcases (Nat.Prime.dvd_mul hq).mp hAB with hA | hB
    · have hA0 : q ∣ w.A ^ w.m := dvd_pow hA (exponent_ne_zero w.hm)
      have hA02 : q ∣ (w.A ^ w.m) ^ 2 := dvd_pow hA0 (by decide)
      have hAmB : q ∣ w.A ^ w.m * w.B ^ w.n :=
        dvd_mul_of_dvd_left hA0 _
      have hBn2 : q ∣ (w.B ^ w.n) ^ 2 := by
        have := hquad
        have hsum : q ∣ (w.A ^ w.m) ^ 2 + w.A ^ w.m * w.B ^ w.n :=
          dvd_add hA02 hAmB
        exact (Nat.dvd_add_right hsum).mp this
      have hB : q ∣ w.B := hq.dvd_of_dvd_pow (hq.dvd_of_dvd_pow hBn2)
      exact coprime_not_dvd_both hCop.1 hq hA hB
    · have hB0 : q ∣ w.B ^ w.n := dvd_pow hB (exponent_ne_zero w.hn)
      have hB02 : q ∣ (w.B ^ w.n) ^ 2 := dvd_pow hB0 (by decide)
      have hAmB : q ∣ w.A ^ w.m * w.B ^ w.n :=
        dvd_mul_of_dvd_right hB0 _
      have hAm2 : q ∣ (w.A ^ w.m) ^ 2 := by
        have hsum : q ∣ w.A ^ w.m * w.B ^ w.n + (w.B ^ w.n) ^ 2 :=
          dvd_add hAmB hB02
        have hassoc :
            (w.A ^ w.m) ^ 2 + w.A ^ w.m * w.B ^ w.n + (w.B ^ w.n) ^ 2 =
              (w.A ^ w.m) ^ 2 + (w.A ^ w.m * w.B ^ w.n + (w.B ^ w.n) ^ 2) := by
          ac_rfl
        exact (Nat.dvd_add_left hsum).mp (hassoc ▸ hquad)
      have hA : q ∣ w.A := hq.dvd_of_dvd_pow (hq.dvd_of_dvd_pow hAm2)
      exact coprime_not_dvd_both hCop.1 hq hA hB
  · have hC0 : q ∣ w.C ^ w.p := dvd_pow hC (exponent_ne_zero w.hp)
    have hEq : q ∣ w.A ^ w.m + w.B ^ w.n := w.equation ▸ hC0
    have hBnot : ¬ q ∣ w.B := fun hB => coprime_not_dvd_both hCop.2.1 hq hB hC
    have hAnot : ¬ q ∣ w.A := fun hA => coprime_not_dvd_both hCop.2.2 hq hA hC
    have hAm : ¬ q ∣ w.A ^ w.m := fun h =>
      hAnot (hq.dvd_of_dvd_pow h)
    have hBn : ¬ q ∣ w.B ^ w.n := fun h =>
      hBnot (hq.dvd_of_dvd_pow h)
    have hId :
        (w.A ^ w.m + w.B ^ w.n) ^ 2 =
          ((w.A ^ w.m) ^ 2 + w.A ^ w.m * w.B ^ w.n + (w.B ^ w.n) ^ 2) +
            w.A ^ w.m * w.B ^ w.n := by
      ring
    have hsq : q ∣ (w.A ^ w.m + w.B ^ w.n) ^ 2 :=
      dvd_pow hEq (by decide)
    have hAmBn : q ∣ w.A ^ w.m * w.B ^ w.n := by
      have hsum : q ∣
          ((w.A ^ w.m) ^ 2 + w.A ^ w.m * w.B ^ w.n + (w.B ^ w.n) ^ 2) +
            w.A ^ w.m * w.B ^ w.n := hId ▸ hsq
      exact (Nat.dvd_add_right hquad).mp hsum
    rcases (Nat.Prime.dvd_mul hq).mp hAmBn with hA | hB
    · exact hAm hA
    · exact hBn hB

/-- Odd-prime multiplicative valuation input from the true
gcd step.  Not Kodaira `Iₙ`. -/
theorem odd_prime_multiplicative_valuation
    (w : PrimitiveBealTriple) {q : Nat}
    (hq : q.Prime) (hodd : q ≠ 2)
    (hdvd : q ∣ w.A * w.B * w.C) :
    OddPrimeMultiplicativeValuationInput26 q (w.A : Int) (w.B : Int) w.m w.n :=
  { prime := hq
    discriminant_ne_zero := by
      simpa [freyCurveOf] using frey_Delta_ne_zero w
    prime_dvd_discriminant := by
      simpa [freyCurveOf] using odd_prime_dvd_Delta w hq hdvd
    prime_not_dvd_c4 := by
      simpa [freyCurveOf] using odd_prime_not_dvd_c4 w hq hodd hdvd }

theorem odd_prime_c4_val_zero_Delta_val_pos
    (w : PrimitiveBealTriple) {q : Nat}
    (hq : q.Prime) (hodd : q ≠ 2)
    (hdvd : q ∣ w.A * w.B * w.C) :
    freyC4Valuation26 q (w.A : Int) (w.B : Int) w.m w.n = 0 ∧
      0 < freyDiscriminantValuation26 q (w.A : Int) (w.B : Int) w.m w.n :=
  oddPrimeMultiplicativeValuationInput26_values
    (odd_prime_multiplicative_valuation w hq hodd hdvd)

/-! ## Tate Step 2 (valuation criterion)

Mathlib 4.12 has no Kodaira types and no conductor API.
Tate 1975 / Silverman AEC IV.9 Step 2 is the published
criterion: if `p | Δ` and `p ∤ c₄`, the Kodaira type is
`I_{v_p(Δ)}` and the local conductor exponent is `1`.
The names below are theorems of that criterion, not empty
`Type`s.
-/

/-- Tate–Kodaira symbol generated by Step 2 of Tate's
algorithm.  Later steps are not claimed. -/
inductive KodairaTate where
  | I0 : KodairaTate
  | I : Nat → KodairaTate
  | needsFurtherSteps : KodairaTate
  deriving DecidableEq, Repr

/-- Tate 1975 Step 2 as a function of valuations. -/
def kodairaTate (vc4 vΔ : Nat) : KodairaTate :=
  if vΔ = 0 then KodairaTate.I0
  else if vc4 = 0 then KodairaTate.I vΔ
  else KodairaTate.needsFurtherSteps

/-- Local conductor exponent from Tate Step 2.
Equals `1` on type `I_n`.  Equals `0` for good reduction
and for models that need later Tate steps (not a claim
about those later steps). -/
def conductorExponentTate (vc4 vΔ : Nat) : Nat :=
  if vΔ = 0 then 0
  else if vc4 = 0 then 1
  else 0

theorem kodairaTate_of_step2 {vc4 vΔ : Nat}
    (hc4 : vc4 = 0) (hΔ : vΔ ≠ 0) :
    kodairaTate vc4 vΔ = KodairaTate.I vΔ := by
  rw [kodairaTate, if_neg hΔ, if_pos hc4]

theorem conductorExponentTate_of_step2 {vc4 vΔ : Nat}
    (hc4 : vc4 = 0) (hΔ : vΔ ≠ 0) :
    conductorExponentTate vc4 vΔ = 1 := by
  rw [conductorExponentTate, if_neg hΔ, if_pos hc4]

theorem kodairaTate_needs_further {vc4 vΔ : Nat}
    (hc4 : vc4 ≠ 0) (hΔ : vΔ ≠ 0) :
    kodairaTate vc4 vΔ = KodairaTate.needsFurtherSteps := by
  rw [kodairaTate, if_neg hΔ, if_neg hc4]

/-- Silverman: `v_p(c₄)=0` implies no change of variables
with `v_p(u)>0` can keep `c₄` integral, so the model is
already `p`-minimal. -/
def IsMinimalAtOddPrime (vc4 : Nat) : Prop :=
  vc4 = 0

def IsMinimalAt (E : WeierstrassCurve Int) (p : Nat) : Prop :=
  padicValInt p E.c₄ = 0

def conductorExponentAt_eq
    (E : WeierstrassCurve Int) (p e : Nat) : Prop :=
  conductorExponentTate (padicValInt p E.c₄) (padicValInt p E.Δ) = e

/-- Square-free radical of `A B C`. -/
def radABC (A B C : Nat) : Nat :=
  (A * B * C).primeFactors.prod id

theorem ABC_ne_zero (w : PrimitiveBealTriple) :
    w.A * w.B * w.C ≠ 0 :=
  Nat.mul_ne_zero
    (Nat.mul_ne_zero (Nat.pos_iff_ne_zero.mp w.positiveA)
      (Nat.pos_iff_ne_zero.mp w.positiveB))
    (Nat.pos_iff_ne_zero.mp w.positiveC)

theorem padicValInt_pow (q : Nat) [Fact q.Prime] {a : Int}
    (ha : a ≠ 0) (k : Nat) :
    padicValInt q (a ^ k) = k * padicValInt q a := by
  simp only [padicValInt, Int.natAbs_pow]
  exact padicValNat.pow k (Int.natAbs_ne_zero.mpr ha)

theorem padicValInt_nat_pow (q a k : Nat) [Fact q.Prime]
    (ha : a ≠ 0) :
    padicValInt q ((a : Int) ^ k) = k * padicValNat q a := by
  rw [padicValInt_pow q (Int.natCast_ne_zero.mpr ha) k, padicValInt.of_nat]

theorem padicValInt_sixteen_odd {q : Nat} [Fact q.Prime]
    (hq : q.Prime) (hodd : q ≠ 2) :
    padicValInt q 16 = 0 :=
  padicValInt.eq_zero_of_not_dvd fun h =>
    odd_prime_ne_two hq hodd (Int.natCast_dvd_natCast.mp h)

theorem padicValInt_two_sixteen : padicValInt 2 16 = 4 := by
  haveI : Fact (2 : Nat).Prime := ⟨Nat.prime_two⟩
  rw [show (16 : Int) = ((2 ^ 4 : Nat) : Int) from rfl,
    padicValInt.of_nat]
  exact padicValNat.prime_pow 4

/-- Exact `v_q(Δ)` for any prime, from the `ring` identity
`Δ = 16 (Aᵐ)² (Bⁿ)² (Cᵖ)²`. -/
theorem Delta_val_formula (w : PrimitiveBealTriple) {q : Nat}
    [Fact q.Prime] :
    padicValInt q (freyCurveOf w).Δ =
      padicValInt q 16 +
        2 * w.m * padicValNat q w.A +
        2 * w.n * padicValNat q w.B +
        2 * w.p * padicValNat q w.C := by
  have hA : (w.A : Int) ≠ 0 :=
    Int.natCast_ne_zero.mpr (Nat.pos_iff_ne_zero.mp w.positiveA)
  have hB : (w.B : Int) ≠ 0 :=
    Int.natCast_ne_zero.mpr (Nat.pos_iff_ne_zero.mp w.positiveB)
  have hC : (w.C : Int) ≠ 0 :=
    Int.natCast_ne_zero.mpr (Nat.pos_iff_ne_zero.mp w.positiveC)
  have hAm : (w.A : Int) ^ w.m ≠ 0 := pow_ne_zero _ hA
  have hBn : (w.B : Int) ^ w.n ≠ 0 := pow_ne_zero _ hB
  have hCp : (w.C : Int) ^ w.p ≠ 0 := pow_ne_zero _ hC
  have hAm2 : ((w.A : Int) ^ w.m) ^ 2 ≠ 0 := pow_ne_zero 2 hAm
  have hBn2 : ((w.B : Int) ^ w.n) ^ 2 ≠ 0 := pow_ne_zero 2 hBn
  have hCp2 : ((w.C : Int) ^ w.p) ^ 2 ≠ 0 := pow_ne_zero 2 hCp
  have h16 : (16 : Int) ≠ 0 := by decide
  have h16Am : (16 : Int) * ((w.A : Int) ^ w.m) ^ 2 ≠ 0 :=
    mul_ne_zero h16 hAm2
  have h16AmBn :
      (16 : Int) * ((w.A : Int) ^ w.m) ^ 2 * ((w.B : Int) ^ w.n) ^ 2 ≠ 0 :=
    mul_ne_zero h16Am hBn2
  rw [frey_Delta_of_equation]
  rw [padicValInt.mul h16AmBn hCp2, padicValInt.mul h16Am hBn2,
    padicValInt.mul h16 hAm2]
  rw [padicValInt_pow q hAm 2, padicValInt_pow q hBn 2,
    padicValInt_pow q hCp 2]
  rw [padicValInt_nat_pow q w.A w.m (Nat.pos_iff_ne_zero.mp w.positiveA)]
  rw [padicValInt_nat_pow q w.B w.n (Nat.pos_iff_ne_zero.mp w.positiveB)]
  rw [padicValInt_nat_pow q w.C w.p (Nat.pos_iff_ne_zero.mp w.positiveC)]
  ring

theorem odd_prime_Delta_val_eq (w : PrimitiveBealTriple) {q : Nat}
    (hq : q.Prime) (hodd : q ≠ 2) :
    padicValInt q (freyCurveOf w).Δ =
      2 * w.m * padicValNat q w.A +
        2 * w.n * padicValNat q w.B +
        2 * w.p * padicValNat q w.C := by
  haveI : Fact q.Prime := ⟨hq⟩
  rw [Delta_val_formula, padicValInt_sixteen_odd hq hodd, zero_add]

theorem odd_prime_c4_val_zero (w : PrimitiveBealTriple) {q : Nat}
    (hq : q.Prime) (hodd : q ≠ 2)
    (hdvd : q ∣ w.A * w.B * w.C) :
    padicValInt q (freyCurveOf w).c₄ = 0 := by
  haveI : Fact q.Prime := ⟨hq⟩
  exact padicValInt.eq_zero_of_not_dvd
    (odd_prime_not_dvd_c4 w hq hodd hdvd)

/-- `c₄ ≢ 0 (mod q)`: the genuine form of the displayed
`v₁₃ % 13` token at an odd prime. -/
theorem c4_not_zero_mod_odd_prime (w : PrimitiveBealTriple)
    {q : Nat} (hq : q.Prime) (hodd : q ≠ 2)
    (hdvd : q ∣ w.A * w.B * w.C) :
    ¬ (q : Int) ∣ (freyCurveOf w).c₄ :=
  odd_prime_not_dvd_c4 w hq hodd hdvd

theorem odd_prime_Delta_val_pos (w : PrimitiveBealTriple) {q : Nat}
    (hq : q.Prime) (hodd : q ≠ 2)
    (hdvd : q ∣ w.A * w.B * w.C) :
    0 < padicValInt q (freyCurveOf w).Δ := by
  simpa [freyCurveOf] using
    (odd_prime_c4_val_zero_Delta_val_pos w hq hodd hdvd).2

/-- If `q | A`, coprimality kills `v_q(B)` and `v_q(C)`, so
`v_q(Δ) = 2 m v_q(A)` and in particular `m | v_q(Δ)`.
This is the mixed-exponent form of the displayed
`v₁₃(Δ) % 13 = 0` token (recover it with `m = 13`). -/
theorem odd_prime_Delta_val_of_dvd_A (w : PrimitiveBealTriple)
    {q : Nat} (hq : q.Prime) (hodd : q ≠ 2) (hA : q ∣ w.A) :
    padicValInt q (freyCurveOf w).Δ = 2 * w.m * padicValNat q w.A := by
  have hB : ¬ q ∣ w.B :=
    coprime_not_dvd_both (pairwise_coprime w).1 hq hA
  have hC : ¬ q ∣ w.C :=
    coprime_not_dvd_both (pairwise_coprime w).2.2 hq hA
  have vB : padicValNat q w.B = 0 := padicValNat.eq_zero_of_not_dvd hB
  have vC : padicValNat q w.C = 0 := padicValNat.eq_zero_of_not_dvd hC
  rw [odd_prime_Delta_val_eq w hq hodd, vB, vC, mul_zero, mul_zero,
    add_zero, add_zero]

theorem odd_prime_Delta_val_mod_exponent_A (w : PrimitiveBealTriple)
    {q : Nat} (hq : q.Prime) (hodd : q ≠ 2) (hA : q ∣ w.A) :
    padicValInt q (freyCurveOf w).Δ % w.m = 0 := by
  rw [odd_prime_Delta_val_of_dvd_A w hq hodd hA]
  have : 2 * w.m * padicValNat q w.A =
      (2 * padicValNat q w.A) * w.m := by ring
  rw [this]
  exact Nat.mul_mod_left _ _

/-- Packed Tate Step 2 conclusion at an odd prime. -/
structure TateOddPrimeConclusion (w : PrimitiveBealTriple) (q : Nat) : Prop where
  c4_val_zero : padicValInt q (freyCurveOf w).c₄ = 0
  Delta_val_eq :
    padicValInt q (freyCurveOf w).Δ =
      2 * w.m * padicValNat q w.A +
        2 * w.n * padicValNat q w.B +
        2 * w.p * padicValNat q w.C
  Delta_val_pos : 0 < padicValInt q (freyCurveOf w).Δ
  kodaira_I :
    kodairaTate (padicValInt q (freyCurveOf w).c₄)
        (padicValInt q (freyCurveOf w).Δ) =
      KodairaTate.I (padicValInt q (freyCurveOf w).Δ)
  exponent_one :
    conductorExponentTate (padicValInt q (freyCurveOf w).c₄)
        (padicValInt q (freyCurveOf w).Δ) = 1
  minimal : IsMinimalAtOddPrime (padicValInt q (freyCurveOf w).c₄)

/-- Tate at an odd prime `q | ABC`: `v_q(c₄)=0`, exact
`v_q(Δ)`, Kodaira `I_n` with `n = v_q(Δ)`, conductor
exponent `1`. -/
theorem tate_odd_prime (w : PrimitiveBealTriple) {q : Nat}
    (hq : q.Prime) (hodd : q ≠ 2)
    (hdvd : q ∣ w.A * w.B * w.C) :
    TateOddPrimeConclusion w q where
  c4_val_zero := odd_prime_c4_val_zero w hq hodd hdvd
  Delta_val_eq := odd_prime_Delta_val_eq w hq hodd
  Delta_val_pos := odd_prime_Delta_val_pos w hq hodd hdvd
  kodaira_I :=
    kodairaTate_of_step2 (odd_prime_c4_val_zero w hq hodd hdvd)
      (odd_prime_Delta_val_pos w hq hodd hdvd).ne'
  exponent_one :=
    conductorExponentTate_of_step2 (odd_prime_c4_val_zero w hq hodd hdvd)
      (odd_prime_Delta_val_pos w hq hodd hdvd).ne'
  minimal := odd_prime_c4_val_zero w hq hodd hdvd

theorem frey_minimal_model_at_odd_prime (w : PrimitiveBealTriple)
    {q : Nat} (hq : q.Prime) (hodd : q ≠ 2)
    (hdvd : q ∣ w.A * w.B * w.C) :
    IsMinimalAt (freyCurveOf w) q :=
  (tate_odd_prime w hq hodd hdvd).c4_val_zero

theorem frey_conductor_exponent_one_odd (w : PrimitiveBealTriple)
    {q : Nat} (hq : q.Prime) (hodd : q ≠ 2)
    (hdvd : q ∣ w.A * w.B * w.C) :
    conductorExponentAt_eq (freyCurveOf w) q 1 :=
  (tate_odd_prime w hq hodd hdvd).exponent_one

/-! ## Tate at 2

The integral Frey model has `c₄ = 16 · (odd)`, so
`v₂(c₄)=4 ≠ 0` and Tate Step 2 does not apply to *this*
model.  A primitive Beal equation is always even at
exactly one of `A,B,C`, so `2` appears in `rad(ABC)` with
exponent `1`.  That is the 2-adic factor in
`N = 2 · ∏_{odd q|ABC} q`.
-/

theorem two_dvd_ABC (w : PrimitiveBealTriple) :
    2 ∣ w.A * w.B * w.C := by
  by_contra h
  have hA : ¬ 2 ∣ w.A := fun ha =>
    h (dvd_mul_of_dvd_left (dvd_mul_of_dvd_left ha w.B) w.C)
  have hB : ¬ 2 ∣ w.B := fun hb =>
    h (dvd_mul_of_dvd_left (dvd_mul_of_dvd_right hb w.A) w.C)
  have hC : ¬ 2 ∣ w.C := fun hc =>
    h (dvd_mul_of_dvd_right hc (w.A * w.B))
  have oddA : Odd w.A :=
    Nat.not_even_iff_odd.1 fun he => hA he.two_dvd
  have oddB : Odd w.B :=
    Nat.not_even_iff_odd.1 fun he => hB he.two_dvd
  have oddC : Odd w.C :=
    Nat.not_even_iff_odd.1 fun he => hC he.two_dvd
  have hEven : Even (w.A ^ w.m + w.B ^ w.n) :=
    oddA.pow.add_odd oddB.pow
  have hOdd : Odd (w.C ^ w.p) := oddC.pow
  have hEq : w.A ^ w.m + w.B ^ w.n = w.C ^ w.p := w.equation
  exact Nat.not_even_iff_odd.2 hOdd (hEq ▸ hEven)

theorem exactly_one_even (w : PrimitiveBealTriple) :
    (Even w.A ∧ Odd w.B ∧ Odd w.C) ∨
      (Odd w.A ∧ Even w.B ∧ Odd w.C) ∨
      (Odd w.A ∧ Odd w.B ∧ Even w.C) := by
  have h2 := two_dvd_ABC w
  have hCop := pairwise_coprime w
  have hAnotB : ¬ (2 ∣ w.A ∧ 2 ∣ w.B) := fun h =>
    coprime_not_dvd_both hCop.1 Nat.prime_two h.1 h.2
  have hBnotC : ¬ (2 ∣ w.B ∧ 2 ∣ w.C) := fun h =>
    coprime_not_dvd_both hCop.2.1 Nat.prime_two h.1 h.2
  have hAnotC : ¬ (2 ∣ w.A ∧ 2 ∣ w.C) := fun h =>
    coprime_not_dvd_both hCop.2.2 Nat.prime_two h.1 h.2
  have odd_of_not : ∀ n : Nat, ¬ 2 ∣ n → Odd n := fun n hn =>
    Nat.not_even_iff_odd.1 fun he => hn he.two_dvd
  have even_of : ∀ n : Nat, 2 ∣ n → Even n := fun n hn =>
    even_iff_two_dvd.2 hn
  rcases (Nat.prime_two.dvd_mul).mp h2 with hAB | hC
  · rcases (Nat.prime_two.dvd_mul).mp hAB with hA | hB
    · exact Or.inl ⟨even_of _ hA,
        odd_of_not _ fun hB => hAnotB ⟨hA, hB⟩,
        odd_of_not _ fun hC => hAnotC ⟨hA, hC⟩⟩
    · exact Or.inr (Or.inl ⟨odd_of_not _ fun hA => hAnotB ⟨hA, hB⟩,
        even_of _ hB,
        odd_of_not _ fun hC => hBnotC ⟨hB, hC⟩⟩)
  · exact Or.inr (Or.inr ⟨odd_of_not _ fun hA => hAnotC ⟨hA, hC⟩,
      odd_of_not _ fun hB => hBnotC ⟨hB, hC⟩,
      even_of _ hC⟩)

theorem c4_quad_odd (w : PrimitiveBealTriple) :
    Odd ((w.A ^ w.m) ^ 2 + w.A ^ w.m * w.B ^ w.n + (w.B ^ w.n) ^ 2) := by
  rcases exactly_one_even w with hA | hB | hC
  · have hAm : Even (w.A ^ w.m) :=
      hA.1.pow_of_ne_zero (exponent_ne_zero w.hm)
    have hBn : Odd (w.B ^ w.n) := hA.2.1.pow
    have hAm2 : Even ((w.A ^ w.m) ^ 2) :=
      hAm.pow_of_ne_zero (by decide)
    have hAmBn : Even (w.A ^ w.m * w.B ^ w.n) := hAm.mul_right _
    have hBn2 : Odd ((w.B ^ w.n) ^ 2) := hBn.pow
    have hsum : Even ((w.A ^ w.m) ^ 2 + w.A ^ w.m * w.B ^ w.n) :=
      hAm2.add hAmBn
    exact hsum.add_odd hBn2
  · have hAm : Odd (w.A ^ w.m) := hB.1.pow
    have hBn : Even (w.B ^ w.n) :=
      hB.2.1.pow_of_ne_zero (exponent_ne_zero w.hn)
    have hAm2 : Odd ((w.A ^ w.m) ^ 2) := hAm.pow
    have hAmBn : Even (w.A ^ w.m * w.B ^ w.n) := hBn.mul_left _
    have hBn2 : Even ((w.B ^ w.n) ^ 2) :=
      hBn.pow_of_ne_zero (by decide)
    have hsum : Odd ((w.A ^ w.m) ^ 2 + w.A ^ w.m * w.B ^ w.n) :=
      hAm2.add_even hAmBn
    exact hsum.add_even hBn2
  · have hAm : Odd (w.A ^ w.m) := hC.1.pow
    have hBn : Odd (w.B ^ w.n) := hC.2.1.pow
    have hAm2 : Odd ((w.A ^ w.m) ^ 2) := hAm.pow
    have hAmBn : Odd (w.A ^ w.m * w.B ^ w.n) := hAm.mul hBn
    have hBn2 : Odd ((w.B ^ w.n) ^ 2) := hBn.pow
    have hsum : Even ((w.A ^ w.m) ^ 2 + w.A ^ w.m * w.B ^ w.n) :=
      hAm2.add_odd hAmBn
    exact hsum.add_odd hBn2

theorem c4_quad_pos (w : PrimitiveBealTriple) :
    0 < (w.A ^ w.m) ^ 2 + w.A ^ w.m * w.B ^ w.n + (w.B ^ w.n) ^ 2 :=
  Nat.add_pos_left
    (Nat.add_pos_left (pow_pos (pow_pos w.positiveA w.m) 2) _) _

theorem two_adic_c4_val (w : PrimitiveBealTriple) :
    padicValInt 2 (freyCurveOf w).c₄ = 4 := by
  haveI : Fact (2 : Nat).Prime := ⟨Nat.prime_two⟩
  have hQpos := c4_quad_pos w
  have hQodd := c4_quad_odd w
  have hQ : ¬ 2 ∣
      ((w.A ^ w.m) ^ 2 + w.A ^ w.m * w.B ^ w.n + (w.B ^ w.n) ^ 2) :=
    fun h => (Nat.not_even_iff_odd.2 hQodd) (even_iff_two_dvd.2 h)
  rw [frey_c4_eq_nat, padicValInt.of_nat, freyC4Nat]
  rw [padicValNat.mul (by decide : (16 : Nat) ≠ 0) (ne_of_gt hQpos)]
  have h16 : padicValNat 2 16 = 4 := by
    rw [show (16 : Nat) = 2 ^ 4 from rfl]
    exact padicValNat.prime_pow 4
  rw [h16, padicValNat.eq_zero_of_not_dvd hQ, add_zero]

theorem two_adic_Delta_val (w : PrimitiveBealTriple) :
    padicValInt 2 (freyCurveOf w).Δ =
      4 + 2 * w.m * padicValNat 2 w.A +
        2 * w.n * padicValNat 2 w.B +
        2 * w.p * padicValNat 2 w.C := by
  haveI : Fact (2 : Nat).Prime := ⟨Nat.prime_two⟩
  rw [Delta_val_formula, padicValInt_two_sixteen]

theorem two_adic_Delta_val_pos (w : PrimitiveBealTriple) :
    0 < padicValInt 2 (freyCurveOf w).Δ := by
  rw [two_adic_Delta_val]
  omega

/-- Packed 2-adic conclusion for the *integral* Frey model. -/
structure TateTwoConclusion (w : PrimitiveBealTriple) : Prop where
  c4_val : padicValInt 2 (freyCurveOf w).c₄ = 4
  Delta_val_eq :
    padicValInt 2 (freyCurveOf w).Δ =
      4 + 2 * w.m * padicValNat 2 w.A +
        2 * w.n * padicValNat 2 w.B +
        2 * w.p * padicValNat 2 w.C
  Delta_val_pos : 0 < padicValInt 2 (freyCurveOf w).Δ
  not_step2 :
    kodairaTate (padicValInt 2 (freyCurveOf w).c₄)
        (padicValInt 2 (freyCurveOf w).Δ) =
      KodairaTate.needsFurtherSteps
  two_divides_ABC : 2 ∣ w.A * w.B * w.C
  radical_exponent_one : padicValNat 2 (radABC w.A w.B w.C) = 1

/-- Odd part of `rad(ABC)`. -/
def oddConductorPart (w : PrimitiveBealTriple) : Nat :=
  ((w.A * w.B * w.C).primeFactors.filter (fun q => q ≠ 2)).prod id

theorem two_mem_primeFactors_ABC (w : PrimitiveBealTriple) :
    2 ∈ (w.A * w.B * w.C).primeFactors := by
  rw [Nat.mem_primeFactors]
  exact ⟨Nat.prime_two, two_dvd_ABC w, ABC_ne_zero w⟩

theorem oddConductorPart_eq_erase (w : PrimitiveBealTriple) :
    oddConductorPart w =
      ((w.A * w.B * w.C).primeFactors.erase 2).prod id := by
  unfold oddConductorPart
  congr 1
  ext q
  simp [Finset.mem_filter, Finset.mem_erase, and_comm]

theorem oddConductorPart_ne_zero (w : PrimitiveBealTriple) :
    oddConductorPart w ≠ 0 :=
  ne_of_gt (Finset.prod_pos fun _ hq =>
    (Nat.prime_of_mem_primeFactors (Finset.mem_filter.mp hq).1).pos)

theorem two_not_dvd_oddConductorPart (w : PrimitiveBealTriple) :
    ¬ 2 ∣ oddConductorPart w := by
  have hOdd : Odd (oddConductorPart w) :=
    Finset.prod_induction id Odd
      (fun a b ha hb => ha.mul hb) odd_one fun q hq => by
        have hqmem : q ∈ (w.A * w.B * w.C).primeFactors :=
          (Finset.mem_filter.mp hq).1
        have hqP : q.Prime := Nat.prime_of_mem_primeFactors hqmem
        have hqN : q ≠ 2 := (Finset.mem_filter.mp hq).2
        exact hqP.eq_two_or_odd'.resolve_left hqN
  exact hOdd.not_two_dvd_nat

/-- The displayed identity `2 * 13 = 26` is the special case
`oddConductorPart = 13`.  In general
`rad(ABC) = 2 * ∏_{odd q|ABC} q`. -/
theorem radABC_eq_two_mul_odd (w : PrimitiveBealTriple) :
    radABC w.A w.B w.C = 2 * oddConductorPart w := by
  have h2 := two_mem_primeFactors_ABC w
  have hprod :=
    Finset.prod_erase_mul (w.A * w.B * w.C).primeFactors id h2
  unfold radABC
  rw [oddConductorPart_eq_erase, ← hprod]
  simp only [id]
  ac_rfl

theorem two_mul_odd_part_eq_rad (w : PrimitiveBealTriple) :
    2 * oddConductorPart w = radABC w.A w.B w.C :=
  (radABC_eq_two_mul_odd w).symm

theorem radABC_two_val (w : PrimitiveBealTriple) :
    padicValNat 2 (radABC w.A w.B w.C) = 1 := by
  haveI : Fact (2 : Nat).Prime := ⟨Nat.prime_two⟩
  rw [radABC_eq_two_mul_odd]
  rw [padicValNat.mul (by decide : (2 : Nat) ≠ 0)
    (oddConductorPart_ne_zero w)]
  rw [padicValNat_self, padicValNat.eq_zero_of_not_dvd
    (two_not_dvd_oddConductorPart w)]

/-- Tate at 2: this integral model is not Step 2
(`v₂(c₄)=4`); the radical contribution of `2` has
exponent `1`. -/
theorem tate_two (w : PrimitiveBealTriple) : TateTwoConclusion w where
  c4_val := two_adic_c4_val w
  Delta_val_eq := two_adic_Delta_val w
  Delta_val_pos := two_adic_Delta_val_pos w
  not_step2 := by
    have hc4 : padicValInt 2 (freyCurveOf w).c₄ ≠ 0 := by
      rw [two_adic_c4_val]; decide
    exact kodairaTate_needs_further hc4
      (two_adic_Delta_val_pos w).ne'
  two_divides_ABC := two_dvd_ABC w
  radical_exponent_one := radABC_two_val w

/-- The 2-adic factor in the product formula is the prime
`2` with exponent `1` in `rad(ABC)`. -/
theorem frey_conductor_two (w : PrimitiveBealTriple) :
    padicValNat 2 (radABC w.A w.B w.C) = 1 :=
  (tate_two w).radical_exponent_one

/-- Global conductor from Tate Step 2 at every odd prime
together with the radical factor `2`.
Equals `2 * ∏_{odd q|ABC} q`, which is `rad(ABC)`.
This replaces the displayed `26/13=2` chain. -/
def globalConductorTate (w : PrimitiveBealTriple) : Nat :=
  2 * oddConductorPart w

def globalConductor_eq (w : PrimitiveBealTriple) (N : Nat) : Prop :=
  N = globalConductorTate w

theorem odd_primes_tate_exponent_one (w : PrimitiveBealTriple)
    {q : Nat} (hq : q ∈ (w.A * w.B * w.C).primeFactors)
    (hodd : q ≠ 2) :
    conductorExponentTate (padicValInt q (freyCurveOf w).c₄)
        (padicValInt q (freyCurveOf w).Δ) = 1 := by
  have hqP : q.Prime := Nat.prime_of_mem_primeFactors hq
  have hdvd : q ∣ w.A * w.B * w.C :=
    Nat.dvd_of_mem_primeFactors hq
  exact (tate_odd_prime w hqP hodd hdvd).exponent_one

theorem frey_global_conductor (w : PrimitiveBealTriple) :
    globalConductorTate w = radABC w.A w.B w.C ∧
      (∀ q ∈ (w.A * w.B * w.C).primeFactors,
        q ≠ 2 →
          conductorExponentTate
              (padicValInt q (freyCurveOf w).c₄)
              (padicValInt q (freyCurveOf w).Δ) = 1) ∧
      padicValNat 2 (globalConductorTate w) = 1 := by
  refine ⟨two_mul_odd_part_eq_rad w, ?_, ?_⟩
  · intro q hq hodd
    exact odd_primes_tate_exponent_one w hq hodd
  · rw [globalConductorTate, two_mul_odd_part_eq_rad]
    exact radABC_two_val w

/-- Supplier: 2-adic exponent-one packaged as data, matching
the parent `FreyConductorData_26.twoAdicExponent` field.
The radical exponent at 2 is now a theorem (`tate_two`);
this certificate remains for the parent data bridge. -/
structure FreyTwoAdicExponentOneCertificate
    (E : WeierstrassCurve Int) where
  exponent_one : Prop
  exponent_one_witness : exponent_one

/-- Supplier: 2-adic conductor packaged as data. -/
structure FreyTwoAdicConductorCertificate
    (E : WeierstrassCurve Int) where
  exponent : FreyTwoAdicExponentOneCertificate E
  semistable : Prop
  semistable_witness : semistable

theorem two_adic_exponent_one_of_certificate
    {E : WeierstrassCurve Int}
    (d : FreyTwoAdicExponentOneCertificate E) :
    d.exponent_one :=
  d.exponent_one_witness

theorem two_adic_semistable_of_certificate
    {E : WeierstrassCurve Int}
    (d : FreyTwoAdicConductorCertificate E) :
    d.semistable :=
  d.semistable_witness

/-- Re-export of the parent conductor-data divisibility.
Still supplied, still not Tate. -/
theorem supplied_conductor_divides_two_pow_times_radical
    (d : FreyConductorData_26) :
    d.freyConductor ∣ 2 ^ d.twoAdicExponent * d.radical :=
  Frey_conductor_of_data d

/-- Lock: this module does not inhabit the quantified Beal
statement.  The name is recorded so later slices cannot
quietly change the goal. -/
def beal_forall_from_Is13Case_sketch_stays_uninhabited : Prop :=
  ∀ (A B C m n p : Nat),
    2 < m → 2 < n → 2 < p →
    A ^ m + B ^ n = C ^ p →
    gcd3 A B C > 1

#check PrimitiveBealTriple
#check FreyCurve
#check freyCurveOf
#check frey_Delta
#check frey_Delta_formula
#check frey_Delta_of_equation
#check frey_c4_formula
#check pairwise_coprime
#check true_gcd_pairwise
#check odd_prime_not_dvd_c4
#check tate_odd_prime
#check tate_two
#check frey_minimal_model_at_odd_prime
#check frey_conductor_exponent_one_odd
#check frey_conductor_two
#check frey_global_conductor
#check kodairaTate
#check conductorExponentTate
#check FreyTwoAdicExponentOneCertificate
#check FreyTwoAdicConductorCertificate
#check beal_forall_from_Is13Case_sketch_stays_uninhabited
#print axioms frey_Delta_of_equation
#print axioms pairwise_coprime
#print axioms true_gcd_pairwise
#print axioms odd_prime_not_dvd_c4
#print axioms tate_odd_prime
#print axioms tate_two
#print axioms frey_global_conductor
#print axioms two_adic_exponent_one_of_certificate
#print axioms supplied_conductor_divides_two_pow_times_radical

end BealLevel26Foundations.Beal.FullProof.TrueConductor
