import Mathlib.Data.Nat.Prime.Basic
import Mathlib.Data.Nat.GCD.Basic
import Mathlib.Tactic.NormNum

/-!
The exponent split, not elimination of the 2^k branch. For exponents
at least three, an odd prime divisor ℓ ≥ 3 or a pure power 2^k is
available; the former does not eliminate the latter (including p = 4).
A bounded (4,4,13) computation is not a general theorem for (4,4,n).
-/

namespace Beal.General

theorem positive_exponent_split : ∀ n : ℕ, 0 < n →
    (∃ k : ℕ, n = 2 ^ k) ∨
    (∃ ell : ℕ, Nat.Prime ell ∧ 3 ≤ ell ∧ ell ∣ n) := by
  intro n
  induction n using Nat.strong_induction_on with
  | h n ih =>
    intro hn
    by_cases hn1 : n = 1
    · exact Or.inl ⟨0, by simp [hn1]⟩
    by_cases h2 : 2 ∣ n
    · have hlow : 2 ≤ n := Nat.le_of_dvd hn h2
      have hhalf : 0 < n / 2 := Nat.div_pos hlow (by norm_num)
      rcases ih (n / 2) (Nat.div_lt_self hn (by norm_num)) hhalf with
        ⟨k, hk⟩ | ⟨ell, hp, hge, hd⟩
      · refine Or.inl ⟨k + 1, ?_⟩
        calc
          n = (n / 2) * 2 := (Nat.div_mul_cancel h2).symm
          _ = 2 ^ (k + 1) := by rw [hk, pow_succ]
      · refine Or.inr ⟨ell, hp, hge, ?_⟩
        rw [← Nat.div_mul_cancel h2]
        exact dvd_mul_of_dvd_left hd 2
    · obtain ⟨ell, hp, hd⟩ := Nat.exists_prime_and_dvd hn1
      have hge : 3 ≤ ell := by
        have hne : ell ≠ 2 := by
          intro heq
          subst ell
          exact h2 hd
        have hle := hp.two_le
        omega
      exact Or.inr ⟨ell, hp, hge, hd⟩

theorem beal_exponent_split (p : ℕ) (hp : 3 ≤ p) :
    (∃ k : ℕ, 2 ≤ k ∧ p = 2 ^ k) ∨
    (∃ ell : ℕ, Nat.Prime ell ∧ 3 ≤ ell ∧ ell ∣ p) := by
  rcases positive_exponent_split p (by omega) with ⟨k, hk⟩ | h
  · left
    refine ⟨k, ?_, hk⟩
    by_contra hlt
    have hcases : k = 0 ∨ k = 1 := by omega
    rcases hcases with hz | ho
    · simp [hz] at hk
      omega
    · simp [ho] at hk
      omega
  · exact Or.inr h

theorem odd_prime_exponent_rewrite (x y z p q r ell : ℕ)
    (hdiv : ell ∣ p) (hsol : x ^ p + y ^ q = z ^ r) :
    (x ^ (p / ell)) ^ ell + y ^ q = z ^ r := by
  calc
    (x ^ (p / ell)) ^ ell + y ^ q = x ^ p + y ^ q := by
      rw [← pow_mul, Nat.div_mul_cancel hdiv]
    _ = z ^ r := hsol

theorem two_power_no_odd_prime_factor (k ell : ℕ)
    (hp : Nat.Prime ell) (hge : 3 ≤ ell) : ¬ ell ∣ 2 ^ k := by
  intro hd
  have htwo : ell ∣ 2 := hp.dvd_of_dvd_pow hd
  rcases (Nat.dvd_prime Nat.prime_two).mp htwo with h1 | h2
  · exact hp.ne_one h1
  · omega

theorem branch_separate (k : ℕ) (_hk : 2 ≤ k) :
    ¬ ∃ ell : ℕ, Nat.Prime ell ∧ 3 ≤ ell ∧ ell ∣ 2 ^ k := by
  rintro ⟨ell, hprime, hge, hdiv⟩
  exact two_power_no_odd_prime_factor k ell hprime hge hdiv

/-- An *unproved requirement* for the `(4,4,n)` subcase. This
proposition has no inhabitant constructed in this module and is not
asserted as a Darmon–Merel theorem. -/
def RequiredNoPrimitive44n : Prop :=
  ∀ (A B C n : ℕ), 0 < A → 0 < B → 0 < C → 3 ≤ n →
    Nat.Coprime A B → A ^ 4 + B ^ 4 = C ^ n → False

/-- The named Darmon–Merel-style obligation, not a supplied theorem.
An alias keeps the existing `(4,4,n)` statement as the only premise. -/
def DarmonMerel44n : Prop := RequiredNoPrimitive44n

/-- Exactly the conditional `(4,4,n)` elimination; its Darmon–Merel-
style hypothesis is not proved by a bounded check. -/
theorem two_power_conditional
    (h44 : DarmonMerel44n)
    (A B C n : ℕ) (hA : 0 < A) (hB : 0 < B) (hC : 0 < C)
    (hn : 3 ≤ n) (hcop : Nat.Coprime A B)
    (hsol : A ^ 4 + B ^ 4 = C ^ n) : False :=
  h44 A B C n hA hB hC hn hcop hsol

/-- Named conditional elimination of the exact `(4,4,n)` signature.
The `DarmonMerel44n` premise is deliberately not discharged here. -/
theorem two_power_44n_conditional
    (h44 : DarmonMerel44n)
    (A B C n : ℕ) (hA : 0 < A) (hB : 0 < B) (hC : 0 < C)
    (hn : 3 ≤ n) (hcop : Nat.Coprime A B)
    (hsol : A ^ 4 + B ^ 4 = C ^ n) : False :=
  two_power_conditional h44 A B C n hA hB hC hn hcop hsol

/-- The `p=4, q=4` branch explicitly requires the unsupplied
`(4,4,n)` obligation; this is not a proof for arbitrary `q`. -/
theorem two_power_p4_needs_darmon_merel
    (h44 : DarmonMerel44n)
    (x y z n : ℕ) (hx : 0 < x) (hy : 0 < y) (hz : 0 < z)
    (hn : 3 ≤ n) (hcop : Nat.Coprime x y)
    (hsol : x ^ 4 + y ^ 4 = z ^ n) : False :=
  two_power_conditional h44 x y z n hx hy hz hn hcop hsol

/-- With an actual proof of the named `(4,4,n)` requirement, the
corresponding pure-two-power subcase reduces to it. The hypothesis is
not supplied here; this proves no unconditional elimination. -/
theorem two_power_needs_darmon_merel
    (h44 : DarmonMerel44n)
    (x y z k n : ℕ) (hk : 2 ≤ k)
    (hx : 0 < x) (hy : 0 < y) (hz : 0 < z) (hn : 3 ≤ n)
    (hcop : Nat.Coprime x y)
    (hsol : x ^ (2 ^ k) + y ^ 4 = z ^ n) : False := by
  have hpow : 2 ^ (k - 2) * 4 = 2 ^ k := by
    have hdiff : k - 2 + 2 = k := by omega
    calc
      2 ^ (k - 2) * 4 = 2 ^ (k - 2) * 2 ^ 2 := by norm_num
      _ = 2 ^ ((k - 2) + 2) := (pow_add _ _ _).symm
      _ = 2 ^ k := by rw [hdiff]
  apply h44 (x ^ (2 ^ (k - 2))) y z n
    (by positivity) hy hz hn
    ((Nat.coprime_pow_left_iff (by positivity : 0 < 2 ^ (k - 2)) x y).mpr hcop)
  calc
    (x ^ (2 ^ (k - 2))) ^ 4 + y ^ 4 = x ^ (2 ^ k) + y ^ 4 := by
      rw [← pow_mul, hpow]
    _ = z ^ n := hsol

/- TODO darmon_merel_general / DarmonMerel44n:
Supply a real proof with correct hypotheses for the `(4,4,n)`
requirement if one is available; this does not address other exponent
signatures, such as arbitrary q in x^(2^k)+y^q=z^r. The bounded
`(4,4,13)` check for B ≤ 10⁶ (Full10e6, 7433/7433; separately
documented under its own DOI) is not the missing proof. In particular,
neither the odd-prime-divisor branch nor the p = 4 case discharges the
unproved `DarmonMerel44n` premise. -/

#print axioms two_power_conditional
#print axioms two_power_44n_conditional
#print axioms two_power_p4_needs_darmon_merel
#check DarmonMerel44n
#print axioms beal_exponent_split
#print axioms odd_prime_exponent_rewrite
#print axioms branch_separate
#print axioms two_power_needs_darmon_merel

end Beal.General