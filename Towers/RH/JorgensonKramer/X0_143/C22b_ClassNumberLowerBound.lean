import Towers.RH.JorgensonKramer.X0_143.K1ClassNumber
import Towers.RH.JorgensonKramer.X0_143.C22_ClassNumberCert
import Mathlib.RingTheory.AdjoinRoot
import Mathlib.NumberTheory.NumberField.ClassNumber
import Mathlib.RingTheory.PrincipalIdealDomain

/-!
# C22b — Class Number Lower Bound for K = ℚ(√-143)

Implements D. Fox's proof sketch (2026-06-20) for the lower bound h(ℚ(√-143)) ≥ 10.

## Architecture

Following the proof sketch, we work in
  R = AdjoinRoot(X²−X+36 : ℤ[X]) = ℤ[θ]   where θ = (1+√-143)/2
  θ² − θ + 36 = 0  (from AdjoinRoot structure)

The prime ideal above 2:  𝔭₂ = Ideal.span {2, θ} in R

## What is PROVED unconditionally (0 sorry, classical trio)

  § 1. θ² − θ + 36 = 0                                     (AdjoinRoot)
  § 3a. For k ∈ {2,4}: b≠0 → a²+ab+36b² ≠ 2^k              (nlinarith: 143b²>4·2^k)
  § 3b. For k = 6:     b≠0 → a²+ab+36b² ≠ 2^6 = 64         (interval_cases on b=±1)
  § 3c. For k = 8:     b≠0 → a²+ab+36b² ≠ 2^8 = 256        (interval_cases on b∈{±1,±2})
  § 4.  For k ∈ {1,3,5,7,9}: a²+ab+36b² ≠ 2^k for all a,b  (norm_form_no_norm_{2,8,32,128,512})

## Named OPEN bridges (def Prop — not sorry, not axiom)

  PrincipalNorm_Bridge_OPEN 𝔭₂ :
    If 𝔭₂^k = ⟨α⟩ then ∃ a b : ℤ, a²+ab+36b² = 2^k.
    Requires: norm_form (Algebra.norm ℤ (a+bθ) = a²+ab+36b²) +
              norm_form_eq (every α = a+bθ) + 𝔭₂_norm (norm of 𝔭₂ = 2).
    Gap: Algebra.norm ℤ computation for AdjoinRoot elements;
         𝔭₂_norm via Ideal.norm_span API; norm_form_eq via power basis.

  EvenK_IntGen_Bridge_OPEN 𝔭₂ :
    For k ∈ {2,4,6,8}, 𝔭₂^k is non-principal.
    Requires (for the b=0 case after norm-form reduction):
      𝔭₂ ≠ 𝔭₂̄ (non-ramification: 2 ∤ disc = -143, since gcd(2,143)=1).
      (2^{k/2}) = 𝔭₂^{k/2}·𝔭₂̄^{k/2} ≠ 𝔭₂^k.
    Gap: Dedekind ideal factorization API for the specific polynomial.

## Axiom footprint

  #print axioms K1_Lower_OrderOf_cert:
    {propext, Classical.choice, Quot.sound}   (classical trio only)

SORRY: 0.  No native_decide.  Classical trio only.  NOT a brick.
K1_Lower_OrderOf_OPEN: OPEN conditional on the two bridges.
RH: OPEN.
-/

namespace Towers.RH.JorgensonKramer.X0_143

open Polynomial Submodule

/-! ## §1. Ring setup: R = ℤ[θ], θ² − θ + 36 = 0 -/

private noncomputable abbrev R : Type _ :=
  AdjoinRoot (X ^ 2 - X + (36 : ℤ[X]))

private noncomputable def θ_R : R :=
  AdjoinRoot.root (X ^ 2 - X + (36 : ℤ[X]))

/-- θ satisfies its defining equation θ² − θ + 36 = 0.
    Follows from AdjoinRoot.aeval_eq + AdjoinRoot.mk_self (via simp). -/
private lemma θ_R_rel : θ_R ^ 2 - θ_R + (36 : R) = 0 := by
  have hmk : Polynomial.aeval θ_R (X ^ 2 - X + (36 : ℤ[X])) =
    θ_R ^ 2 - θ_R + (36 : R) := by
    simp only [map_sub, map_add, map_pow, Polynomial.aeval_X,
               Polynomial.aeval_C, map_ofNat]
  have h0 : Polynomial.aeval θ_R (X ^ 2 - X + (36 : ℤ[X])) = 0 := by
    simp only [θ_R, AdjoinRoot.aeval_eq, AdjoinRoot.mk_self]
  exact hmk.symm.trans h0

/-! ## §2. Named OPEN bridges -/

/-- **PrincipalNorm_Bridge_OPEN**: if 𝔭₂^k is principal = ⟨α⟩ then the norm of α
    equals 2^k and α decomposes as a+bθ with a²+ab+36b² = 2^k.

    Formal gap: requires
    · norm_form : Algebra.norm ℤ (a+bθ) = a²+ab+36b²
    · norm_form_eq : every α ∈ R equals ↑a + ↑b * θ_R
    · 𝔭₂_norm : Ideal.absNorm 𝔭₂ = 2
    · Algebra.norm_span_singleton : absNorm ⟨α⟩ = |Algebra.norm ℤ α| -/
def PrincipalNorm_Bridge_OPEN (𝔭₂ : Ideal R) : Prop :=
  ∀ k : ℕ, IsPrincipal (𝔭₂ ^ k) →
    ∃ a b : ℤ, a ^ 2 + a * b + 36 * b ^ 2 = (2 : ℤ) ^ k

/-- **EvenK_IntGen_Bridge_OPEN**: for even k ∈ {2,4,6,8}, 𝔭₂^k is non-principal.

    After PrincipalNorm_Bridge_OPEN reduces the problem, the only norm-2^k elements
    with b=0 are ±2^{k/2} ∈ ℤ, which generate (2^{k/2}) = 𝔭₂^{k/2}·𝔭₂̄^{k/2}.
    Formal gap: unique factorization of ideals and 𝔭₂ ≠ 𝔭₂̄. -/
def EvenK_IntGen_Bridge_OPEN (𝔭₂ : Ideal R) : Prop :=
  ∀ k : ℕ, k ∈ ({2, 4, 6, 8} : Finset ℕ) → ¬ IsPrincipal (𝔭₂ ^ k)

/-! ## §3. Arithmetic: even-k impossibility for b ≠ 0 (PROVED) -/

/-- For k ∈ {2,4} and b≠0: 143·b² ≥ 143 > 4·2^k, so no solution. -/
private lemma even_k24_bnonzero (k : ℕ) (hk : k ∈ ({2, 4} : Finset ℕ))
    (a b : ℤ) (hb : b ≠ 0) : a ^ 2 + a * b + 36 * b ^ 2 ≠ (2 : ℤ) ^ k := by
  intro hN
  have hb2 : 1 ≤ b ^ 2 := by
    rcases lt_or_gt_of_ne hb with h | h <;>
      nlinarith [sq_nonneg (b + 1), sq_nonneg (b - 1)]
  have hring : (2 * a + b) ^ 2 + 143 * b ^ 2 = 4 * (a ^ 2 + a * b + 36 * b ^ 2) := by ring
  rw [hN] at hring
  fin_cases hk
  · -- k = 2: 4 * 2^2 = 16; 143*b^2 ≥ 143 > 16
    norm_num at hring; nlinarith [sq_nonneg (2 * a + b)]
  · -- k = 4: 4 * 2^4 = 64; 143*b^2 ≥ 143 > 64
    norm_num at hring; nlinarith [sq_nonneg (2 * a + b)]

/-- For k = 6: (2a+b)²+143b² = 256. If b≠0 then b=±1; check each. -/
private lemma even_k6_bnonzero (a b : ℤ) (hb : b ≠ 0) :
    a ^ 2 + a * b + 36 * b ^ 2 ≠ (2 : ℤ) ^ 6 := by
  intro hN
  simp only [show (2 : ℤ) ^ 6 = 64 from by norm_num] at hN
  have hring : (2 * a + b) ^ 2 + 143 * b ^ 2 = 256 := by linarith [show
    (2 * a + b) ^ 2 + 143 * b ^ 2 = 4 * (a ^ 2 + a * b + 36 * b ^ 2) from by ring]
  have hb2 : 1 ≤ b ^ 2 := by
    rcases lt_or_gt_of_ne hb with h | h <;>
      nlinarith [sq_nonneg (b + 1), sq_nonneg (b - 1)]
  have hprod : 143 ≤ 143 * b ^ 2 := by nlinarith
  -- 143b² ≤ 256, so b² ≤ 1, forcing b = ±1
  have hb_le : b ^ 2 ≤ 1 := by nlinarith [sq_nonneg (2 * a + b)]
  have hbeq : b ^ 2 = 1 := le_antisymm hb_le hb2
  have hb1 : b = 1 ∨ b = -1 := by
    have : (b - 1) * (b + 1) = 0 := by linarith [show b ^ 2 - 1 = (b - 1) * (b + 1) from by ring]
    rcases mul_eq_zero.mp this with h2 | h2 <;> [left; right] <;> linarith
  rcases hb1 with rfl | rfl
  · -- b=1: (2a+1)²=113; no integer square root (10²=100<113<121=11²)
    have hval : (2 * a + 1) ^ 2 = 113 := by linarith
    have ha_ub : a ≤ 4 := by nlinarith [sq_nonneg (2 * a - 10)]
    have ha_lb : -5 ≤ a := by nlinarith [sq_nonneg (2 * a + 12)]
    interval_cases a <;> norm_num at hval
  · -- b=-1: (2a-1)²=113; same argument
    have hval : (2 * a - 1) ^ 2 = 113 := by linarith
    have ha_ub : a ≤ 5 := by nlinarith [sq_nonneg (2 * a - 12)]
    have ha_lb : -4 ≤ a := by nlinarith [sq_nonneg (2 * a + 10)]
    interval_cases a <;> norm_num at hval

/-- For k = 8: (2a+b)²+143b²=1024. b≠0 forces b∈{±1,±2}; each gives non-square. -/
private lemma even_k8_bnonzero (a b : ℤ) (hb : b ≠ 0) :
    a ^ 2 + a * b + 36 * b ^ 2 ≠ (2 : ℤ) ^ 8 := by
  intro hN
  simp only [show (2 : ℤ) ^ 8 = 256 from by norm_num] at hN
  have hring : (2 * a + b) ^ 2 + 143 * b ^ 2 = 1024 := by linarith [show
    (2 * a + b) ^ 2 + 143 * b ^ 2 = 4 * (a ^ 2 + a * b + 36 * b ^ 2) from by ring]
  have hb2 : 1 ≤ b ^ 2 := by
    rcases lt_or_gt_of_ne hb with h | h <;>
      nlinarith [sq_nonneg (b + 1), sq_nonneg (b - 1)]
  have hprod : 143 ≤ 143 * b ^ 2 := by nlinarith
  -- 143b² ≤ 1024 → b² ≤ 7 → b ∈ {-2,-1,1,2}
  have hb_le : b ^ 2 ≤ 7 := by nlinarith [sq_nonneg (2 * a + b)]
  have hb_ub : b ≤ 2 := by nlinarith [sq_nonneg (b - 3)]
  have hb_lb : -2 ≤ b := by nlinarith [sq_nonneg (b + 3)]
  -- bound a from (2a+b)² ≤ 1024
  have h2ab_le : (2 * a + b) ^ 2 ≤ 1024 := by nlinarith
  have ha_ub : a ≤ 17 := by nlinarith [sq_nonneg (2 * a + b - 33)]
  have ha_lb : -17 ≤ a := by nlinarith [sq_nonneg (2 * a + b + 33)]
  interval_cases b
  · interval_cases a <;> norm_num at hN
  · interval_cases a <;> norm_num at hN
  · exact absurd rfl hb
  · interval_cases a <;> norm_num at hN
  · interval_cases a <;> norm_num at hN

/-- **even_k_bnonzero_no_norm_solution** (PROVED):
    For even k ∈ {2,4,6,8} and b≠0: a²+ab+36b² ≠ 2^k. -/
theorem even_k_bnonzero_no_norm_solution (k : ℕ) (hk : k ∈ ({2, 4, 6, 8} : Finset ℕ))
    (a b : ℤ) (hb : b ≠ 0) : a ^ 2 + a * b + 36 * b ^ 2 ≠ (2 : ℤ) ^ k := by
  fin_cases hk
  · exact even_k24_bnonzero 2 (by decide) a b hb
  · exact even_k24_bnonzero 4 (by decide) a b hb
  · exact even_k6_bnonzero a b hb
  · exact even_k8_bnonzero a b hb

/-! ## §4. Arithmetic: odd-k impossibilities via K1ClassNumber (PROVED) -/

/-- **odd_k_no_norm_solution** (PROVED):
    For k ∈ {1,3,5,7,9}: a²+ab+36b² ≠ 2^k for ALL a,b : ℤ. -/
theorem odd_k_no_norm_solution (k : ℕ) (hk : k ∈ ({1, 3, 5, 7, 9} : Finset ℕ))
    (a b : ℤ) : a ^ 2 + a * b + 36 * b ^ 2 ≠ (2 : ℤ) ^ k := by
  fin_cases hk <;> simp_all
  · exact norm_form_no_norm_two a b
  · exact norm_form_no_norm_eight a b
  · exact norm_form_no_norm_32 a b
  · exact norm_form_no_norm_128 a b
  · exact norm_form_no_norm_512 a b

/-! ## §5. Lower bound combinator -/

/-- **K1_Lower_OrderOf_cert** (PROVED, conditional):
    If PrincipalNorm_Bridge_OPEN and EvenK_IntGen_Bridge_OPEN hold for 𝔭₂,
    then 𝔭₂^k is non-principal for every k with 1 ≤ k ≤ 9.

    SORRY: 0.  Classical trio only. -/
theorem K1_Lower_OrderOf_cert
    (𝔭₂ : Ideal R)
    (h_pn : PrincipalNorm_Bridge_OPEN 𝔭₂)
    (h_ev : EvenK_IntGen_Bridge_OPEN 𝔭₂)
    (k : ℕ) (hk1 : 1 ≤ k) (hk2 : k ≤ 9) :
    ¬ IsPrincipal (𝔭₂ ^ k) := by
  by_cases heven : k ∈ ({2, 4, 6, 8} : Finset ℕ)
  · exact h_ev k heven
  · have hodd : k ∈ ({1, 3, 5, 7, 9} : Finset ℕ) := by
      simp only [Finset.mem_insert, Finset.mem_singleton] at heven ⊢
      omega
    intro hprin
    obtain ⟨a, b, hN⟩ := h_pn k hprin
    exact odd_k_no_norm_solution k hodd a b hN

/-! ## §6. Bridge to K1_Lower_OrderOf_OPEN -/

/-- The prime ideal above 2 in R. -/
noncomputable def 𝔭₂_R : Ideal R := Ideal.span {(2 : R), θ_R}

/-- **C22b_Lower_cert**: packages `K1_Lower_OrderOf_cert` for 𝔭₂_R.

    Given both OPEN bridges, 𝔭₂_R^k is non-principal for k=1..9.
    SORRY: 0.  Classical trio only.  NOT a brick. -/
theorem C22b_Lower_cert
    (h_pn : PrincipalNorm_Bridge_OPEN 𝔭₂_R)
    (h_ev : EvenK_IntGen_Bridge_OPEN 𝔭₂_R) :
    ∀ k : ℕ, 1 ≤ k → k ≤ 9 → ¬ IsPrincipal (𝔭₂_R ^ k) :=
  fun k hk1 hk2 => K1_Lower_OrderOf_cert 𝔭₂_R h_pn h_ev k hk1 hk2

end Towers.RH.JorgensonKramer.X0_143
