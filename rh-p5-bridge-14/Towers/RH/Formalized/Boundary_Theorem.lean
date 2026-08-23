-- FORMALIZED: certificates/Boundary_Theorem.pdf (June 08, 2026)
-- Source: pdftotext extraction — Theorem (Fox, 2026), Table 1
-- Kernel: propext, Classical.choice, Quot.sound only
import TheoremaAureum.C01_Arakelov
import Mathlib.Analysis.SpecialFunctions.Trigonometric.Basic
import Mathlib.Algebra.Order.Floor
import Mathlib.Data.Nat.Prime.Basic

/-!
# The Boundary Theorem — S(α₀) = {p₁, …, p₇}

Formalizes the Lean-verifiable content of `certificates/Boundary_Theorem.pdf`.

**Theorem (Fox, 2026):**
Let α₀ = 299 + π/10.  Define S(α₀) = {p prime : ‖p·α₀‖ < 1/p}.
Then S(α₀) = {2, 3, 19, 191, 3993746143633,
              3224057731518397, 631474305334326148720631}.

Three independent methods (continued fractions, BDP bridge, Apollonian geometry)
all terminate at p₇ = 631,474,305,334,326,148,720,631.

**Lean formalizes:**
- α₀ definition (noncomputable real)
- IsExceptional predicate (formal definition)
- Primality of all 7 exceptional primes
- Desert widths w_k = p_{k+1} − p_k − 1 (arithmetic, norm_num)
- Direct proofs of IsExceptional for p₁=2, p₂=3, p₃=19, p₄=191 (from π-bounds)
- S₄ = {2,3,19,191} all exceptional: PROVED unconditionally

For p₅, p₆, p₇ the numerical conditions require arithmetic precision beyond
what fixed-precision π-bounds provide directly. Their membership is certified
computationally (membership.out, SHA 5f90041e…); the honest hypotheses carry
the exact IsExceptional predicate (not True).

**Kernel axioms:** propext, Classical.choice, Quot.sound
-/

namespace TheoremaAureum

/-! ## α₀ definition -/

/-- α₀ = 299 + π/10.  The central constant of Opera Numerorum (M1, alpha0.py). -/
noncomputable def alpha0 : ℝ := 299 + Real.pi / 10

/-- α₀ lies strictly between 299 and 300. -/
theorem alpha0_between_299_300 : (299 : ℝ) < alpha0 ∧ alpha0 < 300 := by
  constructor <;> unfold alpha0 <;> have := Real.pi_gt_three <;>
    have := Real.pi_lt_d2 <;> constructor <;> linarith

/-! ## IsExceptional predicate -/

/-- The distance of x to its nearest integer. -/
noncomputable def nearestIntDist (x : ℝ) : ℝ := |x - round x|

/-- p is exceptional for α₀ if p is prime and ‖p·α₀‖ < 1/p. -/
noncomputable def IsExceptional (p : ℕ) : Prop :=
  Nat.Prime p ∧ nearestIntDist ((p : ℝ) * alpha0) < 1 / (p : ℝ)

/-! ## The seven exceptional primes -/

theorem p1_prime : Nat.Prime 2   := by decide
theorem p2_prime : Nat.Prime 3   := by decide
theorem p3_prime : Nat.Prime 19  := by decide
theorem p4_prime : Nat.Prime 191 := by decide
theorem p5_prime : Nat.Prime 3993746143633        := by norm_num
theorem p6_prime : Nat.Prime 3224057731518397     := by norm_num
theorem p7_prime : Nat.Prime 631474305334326148720631 := by norm_num

/-! ## p₈: the excluded next prime CF denominator -/

/-- p₈ = 154,837,899,060,399,532,100,017,991 is the next prime CF denominator
    after p₇.  The boundary theorem certifies ‖p₈·α₀‖ = 0.12144… >> 1/p₈. -/
theorem p8_prime : Nat.Prime 154837899060399532100017991 := by norm_num

/-! ## Desert widths (purely arithmetic) -/

/-- Desert before p₃ = 19: gap from 3+1=4 to 18, width 15. -/
theorem desert_w3 : (19 : ℕ) - 3 - 1 = 15 := by norm_num

/-- Desert before p₄ = 191: gap from 19+1=20 to 190, width 171. -/
theorem desert_w4 : (191 : ℕ) - 19 - 1 = 171 := by norm_num

/-- Desert before p₅: gap from 192 to p₅-1, width 3,993,746,143,441. -/
theorem desert_w5 : (3993746143633 : ℕ) - 191 - 1 = 3993746143441 := by norm_num

/-- Desert before p₆: gap from p₅+1 to p₆-1, width 3,220,063,985,374,763. -/
theorem desert_w6 : (3224057731518397 : ℕ) - 3993746143633 - 1 = 3220063985374763 := by norm_num

/-- Desert before p₇: gap from p₆+1 to p₇-1, width 631,474,302,110,268,417,202,233. -/
theorem desert_w7 : (631474305334326148720631 : ℕ) - 3224057731518397 - 1 =
    631474302110268417202233 := by norm_num

/-! ## The seven-element set S(α₀) -/

/-- The certified exceptional prime set (from boundary_theorem.pdf, Table). -/
def S_alpha0 : List ℕ :=
  [2, 3, 19, 191, 3993746143633, 3224057731518397, 631474305334326148720631]

/-- S(α₀) has exactly 7 elements. -/
theorem S_alpha0_length : S_alpha0.length = 7 := by decide

/-- All elements of S(α₀) are prime. -/
theorem S_alpha0_all_prime : ∀ p ∈ S_alpha0, Nat.Prime p := by
  simp only [S_alpha0, List.mem_cons, List.mem_singleton]
  rintro p (rfl | rfl | rfl | rfl | rfl | rfl | rfl)
  · exact p1_prime
  · exact p2_prime
  · exact p3_prime
  · exact p4_prime
  · exact p5_prime
  · exact p6_prime
  · exact p7_prime

/-! ## Direct IsExceptional proofs for p₁=2, p₂=3, p₃=19, p₄=191

    These four proofs are CLOSED — no hypotheses, classical trio only.
    Strategy for each:
      (a) primality by decide
      (b) compute round(p·α₀) = N via round_eq + Int.floor_eq_iff
      (c) show |p·α₀ − N| < 1/p from π-bounds -/

/-- **p1_exceptional**: 2 is exceptional for α₀.
    2·α₀ = 598 + π/5 ≈ 598.628; round = 599; distance = 1 − π/5 ≈ 0.372 < 1/2.
    Needs only Real.pi_gt_three (π > 3). -/
theorem p1_exceptional : IsExceptional 2 := by
  constructor
  · exact p1_prime
  · unfold nearestIntDist
    have hpi_lb := Real.pi_gt_three
    have hpi_ub := Real.pi_lt_d2
    have hround : round ((2 : ℝ) * alpha0) = (599 : ℤ) := by
      rw [round_eq]
      apply Int.floor_eq_iff.mpr
      unfold alpha0; push_cast
      constructor <;> linarith
    rw [hround]; push_cast; unfold alpha0
    rw [abs_of_neg (by linarith)]
    linarith

/-- **p2_exceptional**: 3 is exceptional for α₀.
    3·α₀ = 897 + 3π/10 ≈ 897.942; round = 898; distance = 1 − 3π/10 ≈ 0.058 < 1/3.
    Needs only Real.pi_gt_three (π > 3). -/
theorem p2_exceptional : IsExceptional 3 := by
  constructor
  · exact p2_prime
  · unfold nearestIntDist
    have hpi_lb := Real.pi_gt_three
    have hpi_ub := Real.pi_lt_d2
    have hround : round ((3 : ℝ) * alpha0) = (898 : ℤ) := by
      rw [round_eq]
      apply Int.floor_eq_iff.mpr
      unfold alpha0; push_cast
      constructor <;> linarith
    rw [hround]; push_cast; unfold alpha0
    rw [abs_of_neg (by linarith)]
    linarith

/-- **p3_exceptional**: 19 is exceptional for α₀.
    19·α₀ = 5681 + 19π/10 ≈ 5686.969; round = 5687;
    distance = 6 − 19π/10 ≈ 0.031 < 1/19 ≈ 0.0526.
    Needs Real.pi_gt_d6 (π > 3.141592) and Real.pi_lt_d2 (π < 3.15). -/
theorem p3_exceptional : IsExceptional 19 := by
  constructor
  · exact p3_prime
  · unfold nearestIntDist
    have hpi_lb := Real.pi_gt_d6
    have hpi_ub := Real.pi_lt_d2
    have hround : round ((19 : ℝ) * alpha0) = (5687 : ℤ) := by
      rw [round_eq]
      apply Int.floor_eq_iff.mpr
      unfold alpha0; push_cast
      constructor <;> nlinarith
    rw [hround]; push_cast; unfold alpha0
    rw [abs_of_neg (by nlinarith)]
    have h1 : (1130 : ℝ) / 361 < 3.141592 := by norm_num
    nlinarith

/-- **p4_exceptional**: 191 is exceptional for α₀.
    191·α₀ = 57109 + 191π/10 ≈ 57169.004; round = 57169;
    distance = 191π/10 − 60 ≈ 0.004 < 1/191 ≈ 0.00524.
    Needs Real.pi_gt_d6 (π > 3.141592) and Real.pi_lt_d6 (π < 3.141593). -/
theorem p4_exceptional : IsExceptional 191 := by
  constructor
  · exact p4_prime
  · unfold nearestIntDist
    have hpi_lb := Real.pi_gt_d6
    have hpi_ub := Real.pi_lt_d6
    have hround : round ((191 : ℝ) * alpha0) = (57169 : ℤ) := by
      rw [round_eq]
      apply Int.floor_eq_iff.mpr
      unfold alpha0; push_cast
      constructor <;> nlinarith
    rw [hround]; push_cast; unfold alpha0
    rw [abs_of_pos (by nlinarith)]
    have h1 : (191 : ℝ) * 3.141593 < 600 + 10 / 191 := by norm_num
    nlinarith

/-! ## S₄ = {2, 3, 19, 191} — all four proved, no hypotheses -/

/-- **S4_exceptional**: all four primes in S₄ are exceptional for α₀.
    CLOSED PROOF — no hypotheses. Uses p1_exceptional … p4_exceptional. -/
theorem S4_exceptional :
    IsExceptional 2 ∧ IsExceptional 3 ∧ IsExceptional 19 ∧ IsExceptional 191 :=
  ⟨p1_exceptional, p2_exceptional, p3_exceptional, p4_exceptional⟩

/-! ## BDP bridge parameters (from Boundary_Theorem.pdf Table) -/

/-- BDP bridge exponent m for p₅: |191 · κ^16 − p₅ − k·π| < 1. -/
def bdp_m5 : ℕ := 16
/-- BDP bridge exponent m for p₆: m = 3. -/
def bdp_m6 : ℕ := 3
/-- BDP bridge exponent m for p₇: m = 2. -/
def bdp_m7 : ℕ := 2

/-! ## The Boundary Theorem (conditional on p₅, p₆, p₇)

    The four smallest exceptional primes {2,3,19,191} are now proved directly.
    The three larger primes {p₅, p₆, p₇} require computational certification
    (BDP bridge with κ to 15 digits; beyond machine-precision π-bounds).
    Their hypotheses carry the EXACT IsExceptional predicate. -/

/-- **boundary_theorem_S4_proved**: the four small exceptional primes are proved.
    No hypotheses. -/
theorem boundary_theorem_S4_proved :
    ∀ p ∈ ([2, 3, 19, 191] : List ℕ), IsExceptional p := by
  intro p hp
  simp only [List.mem_cons, List.mem_singleton] at hp
  rcases hp with rfl | rfl | rfl | rfl
  · exact p1_exceptional
  · exact p2_exceptional
  · exact p3_exceptional
  · exact p4_exceptional

/-- **boundary_theorem**: S(α₀) contains all seven primes, given computational
    certificates for p₅, p₆, p₇.

    - {2, 3, 19, 191}: proved directly in this file from π-bounds.
    - p₅, p₆, p₇: carry the exact IsExceptional condition (not True).
      Certified in membership.out (SHA 5f90041e…) via BDP bridge. -/
theorem boundary_theorem
    (h_p5 : IsExceptional 3993746143633)
    (h_p6 : IsExceptional 3224057731518397)
    (h_p7 : IsExceptional 631474305334326148720631) :
    ∀ p ∈ S_alpha0, IsExceptional p := by
  intro p hp
  simp only [S_alpha0, List.mem_cons, List.mem_singleton] at hp
  rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl
  · exact p1_exceptional
  · exact p2_exceptional
  · exact p3_exceptional
  · exact p4_exceptional
  · exact h_p5
  · exact h_p6
  · exact h_p7

end TheoremaAureum
