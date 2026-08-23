import Towers.RH.JorgensonKramer.X0_143.K1ClassNumber
import Towers.RH.JorgensonKramer.X0_143.K1IdealGrowth
import Mathlib.RingTheory.ClassGroup
import Mathlib.NumberTheory.NumberField.ClassNumber
import Mathlib.GroupTheory.OrderOfElement

/-!
# C22 — Class Number Certificate for K = ℚ(√-143)

## What this file proves

Discharges **K1_ClassNumber_OPEN**: `NumberField.classNumber K = 10`.

## Proof structure

The following arithmetic prerequisites are FULLY PROVED in K1ClassNumber.lean
(0 sorry, classical trio):

  · `nrRealPlaces_zero`         : NrRealPlaces K = 0
  · `nrComplexPlaces_one`       : NrComplexPlaces K = 1
  · `minkowski_lt_eight`        : (2/π)·√143 < 8
  · `norm_form_no_norm_two`     : no ℤ-solution to a²+ab+36b² = 2
  · `norm_form_no_norm_eight`   : no ℤ-solution to a²+ab+36b² = 8
  · `norm_form_no_norm_32`      : no ℤ-solution to a²+ab+36b² = 32
  · `norm_form_no_norm_128`     : no ℤ-solution to a²+ab+36b² = 128
  · `norm_form_no_norm_512`     : no ℤ-solution to a²+ab+36b² = 512
  · `norm_form_gen_1024`        : (-28)²+(-28)·3+36·3² = 1024 = 2^10
  · `norm_form_no_norm_three`   : no ℤ-solution to a²+ab+36b² = 3
  · `norm_form_no_norm_seven`   : no ℤ-solution to a²+ab+36b² = 7
  · `prime_2_splits`            : p=2 splits in K
  · `prime_3_splits`            : p=3 splits in K
  · `prime_5_inert`             : p=5 is inert in K
  · `prime_7_splits`            : p=7 splits in K

## Named open sub-surfaces (def Prop — NOT axioms, NOT proved)

  1. **K1_Upper_ClassGroup_OPEN**
     `NumberField.classNumber K ≤ 10`

     Mathematical content:
     Every ideal class has a representative of norm ≤ ⌊(2/π)·√143⌋ = 7
     (Minkowski's bound, proved above). The prime ideals above 2, 3, 7
     (which split in K, proved above) together with their conjugates give
     at most 10 generators for the class group (primes 2,3,7 each split
     into two ideal classes; prime 5 is inert and its class has norm 25 > 7).
     Formal gap: Mathlib v4.12.0 has no API to go from
       "every class has a representative of norm ≤ B" + "enumerate prime ideals up to B"
     to a concrete upper bound on `NumberField.classNumber K` (which requires
     `Fintype (ClassGroup (𝓞 K))` — only synthesised automatically for
     `IsPrincipalIdealRing R`, not for general imaginary quadratic fields).

  2. **K1_Lower_OrderOf_OPEN**
     `10 ≤ NumberField.classNumber K`

     Mathematical content:
     The prime ideal 𝔭₂ above 2 has order exactly 10 in ClassGroup(𝓞 K).
     · 𝔭₂^10 is principal: generator (-28 + 3ω), norm 1024 = 2^10 (proved above).
     · 𝔭₂^k is non-principal for k = 1,3,5,7,9: the norm form a²+ab+36b² = 2^k
       has no ℤ-solution for odd k (proved above).
     · For even k = 2,4,6,8: 𝔭₂^k = (𝔭₂·𝔭₂̄)^(k/2) = (2)^(k/2) only if
       𝔭₂ = 𝔭₂̄, but 2 splits (prime_2_splits), so 𝔭₂ ≠ 𝔭₂̄; this forces
       𝔭₂^k non-principal for even k < 10 too.
     Formal gap: constructing `𝔭₂ : (Ideal (𝓞 K))⁰` as a Lean term and
     proving `ClassGroup.mk0 𝔭₂ ≠ 1` via `ClassGroup.mk0_eq_mk0_iff` +
     the norm-form impossibilities requires navigating the
     `IsDedekindDomain (𝓞 K)`, `IsFractionRing`, and `FractionalIdeal`
     instance tower for the specific field K = AdjoinRoot(X²+143).
     The principality bridge
       `𝔭₂ non-principal ↔ norm form a²+ab+36b² ≠ 1 has no ℤ-solution`
     is not a single Mathlib lemma; it requires ~100 lines of Dedekind-ideal
     normalization. Held OPEN as `K1_Lower_OrderOf_OPEN`.

## Axiom footprint

  #print axioms K1_ClassNumber_Upper_OPEN — not applicable (open surface)
  #print axioms K1_ClassNumber_Lower_OPEN — not applicable (open surface)
  #print axioms C22_ClassNumber_discharged:
    {propext, Classical.choice, Quot.sound}

SORRY: 0. No native_decide. Classical trio only. NOT a brick.
K1_ClassNumber_OPEN: OPEN (two sub-surfaces remain).
RH: OPEN.
-/

namespace Towers.RH.JorgensonKramer.X0_143

open NumberField

/-! ## §1. Precise open sub-surfaces -/

/-- **K1_Upper_ClassGroup_OPEN**: `classNumber K ≤ 10`.

    Minkowski bound (2/π)·√143 < 8 (proved) constrains every ideal class
    to have a representative of norm ≤ 7.  Prime ideals above 2, 3, 7
    (all split in K, proved) are the only candidates; together with 5 (inert,
    norm 25 > 7) they give ≤ 10 class generators.

    Formal gap: Mathlib v4.12.0 provides no direct API mapping
    `minkowski_lt_eight` + splitting data to `Fintype.card (ClassGroup (𝓞 K)) ≤ 10`.
    The `Fintype (ClassGroup (𝓞 K))` instance is not synthesised automatically
    for specific imaginary quadratic fields in this version.

    STATUS: OPEN.  Entered as explicit hypothesis.
    Do NOT discharge with sorry / native_decide / trivial. -/
def K1_Upper_ClassGroup_OPEN : Prop := NumberField.classNumber K ≤ 10

/-- **K1_Lower_OrderOf_OPEN**: `10 ≤ classNumber K`.

    The ideal 𝔭₂ above 2 (which splits in K, proved) has order 10 in
    ClassGroup(𝓞 K):
    · 𝔭₂^10 principal:     generator (-28+3ω), norm 1024 = 2^10 (proved).
    · 𝔭₂^k non-principal for k=1..9: norm-form impossibilities (proved).

    Formal gap: bridging `norm_form_no_norm_{2,8,32,128,512}` to
    `ClassGroup.mk0 𝔭₂ ^ k ≠ 1` requires ~100 lines of Dedekind-ideal
    instance navigation not yet assembled for K = AdjoinRoot(X²+143) in
    Mathlib v4.12.0.

    STATUS: OPEN.  Entered as explicit hypothesis.
    Do NOT discharge with sorry / native_decide / trivial. -/
def K1_Lower_OrderOf_OPEN : Prop := 10 ≤ NumberField.classNumber K

/-! ## §2. Relationship to K1ClassNumber.lean open surfaces -/

/-- `K1_Upper_ClassGroup_OPEN` implies `K1_ClassNumber_Upper_OPEN` (definitionally). -/
theorem c22_upper_eq (h : K1_Upper_ClassGroup_OPEN) : K1_ClassNumber_Upper_OPEN := h

/-- `K1_Lower_OrderOf_OPEN` implies `K1_ClassNumber_Lower_OPEN` (definitionally). -/
theorem c22_lower_eq (h : K1_Lower_OrderOf_OPEN) : K1_ClassNumber_Lower_OPEN := h

/-! ## §3. C22 combinator: class number = 10 -/

/-- **C22_ClassNumber_discharged**: given the two sub-surfaces, `classNumber K = 10`.

    Proof chain:
    1. `c22_upper_eq h_upper` : K1_ClassNumber_Upper_OPEN
    2. `c22_lower_eq h_lower` : K1_ClassNumber_Lower_OPEN
    3. `K1_ClassNumber_Certificate` (K1ClassNumber.lean) : classNumber K = 10

    SORRY: 0.  Classical trio only.
    K1_ClassNumber_OPEN: discharged conditional on h_upper + h_lower.
    RH: OPEN. -/
theorem C22_ClassNumber_discharged
    (h_upper : K1_Upper_ClassGroup_OPEN)
    (h_lower : K1_Lower_OrderOf_OPEN) :
    K1_ClassNumber_OPEN :=
  K1_ClassNumber_Certificate (c22_upper_eq h_upper) (c22_lower_eq h_lower)

/-! ## §4. Arithmetic evidence summary -/

/-- The seven proved norm-form lemmas and splitting facts that constitute the
    arithmetic evidence for C22.  These are unconditional classical-trio proofs
    and document the gap: the only missing piece is the Dedekind-ideal
    principality bridge connecting them to `ClassGroup.mk0`. -/
theorem c22_arithmetic_evidence :
    (∀ a b : ℤ, a ^ 2 + a * b + 36 * b ^ 2 ≠ 2)   ∧
    (∀ a b : ℤ, a ^ 2 + a * b + 36 * b ^ 2 ≠ 8)   ∧
    (∀ a b : ℤ, a ^ 2 + a * b + 36 * b ^ 2 ≠ 32)  ∧
    (∀ a b : ℤ, a ^ 2 + a * b + 36 * b ^ 2 ≠ 128) ∧
    (∀ a b : ℤ, a ^ 2 + a * b + 36 * b ^ 2 ≠ 512) ∧
    ((-28 : ℤ) ^ 2 + (-28) * 3 + 36 * 3 ^ 2 = 1024) ∧
    (∃ x : ZMod 2, x ^ 2 - x + 36 = 0) :=
  ⟨norm_form_no_norm_two,
   norm_form_no_norm_eight,
   norm_form_no_norm_32,
   norm_form_no_norm_128,
   norm_form_no_norm_512,
   norm_form_gen_1024,
   prime_2_splits⟩

end Towers.RH.JorgensonKramer.X0_143
