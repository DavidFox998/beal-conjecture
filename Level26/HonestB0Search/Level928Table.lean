/-
Copyright (c) 2026 David Fox. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: David Fox
-/
/-
  Root module. Separate Lake target `BealMatveevBealV25B0Search`.
  Do **not** add `Beal/Matveev/Level928Table.lean`:
  `.submodules Beal.Matveev` would pull it into the default glob.
  Do **not** import `Beal.Matveev.MatveevThm14General`,
  `Beal.Matveev.BealMatveevBealV25B0Search`, or
  `Beal.Matveev.PAdicLLL`.
-/
import BealMatveevBealV25B0Search
import DarmonMerelFrey4413
import Level32Table
import LLLTargetB8_C1_lower_bound

/-!
# Bad reduction at `29` / displayed residual `928` (not a v25 mint)

`9a9caa0` showed that a gap-3 solution with **good** reduction at
`29` (`29 ∤ ABC`) has `a₂₉ ≠ −10`, so it cannot arise from LMFDB
`32a1`. That does **not** close `29 ∣ ABC`.

On a solution, `gcd(B, B+3) ∣ 3`, so `29` divides **at most one**
of `A`, `B`, `C = B+3`.

* `29 ∣ C` and `29 ∤ AB`: `v₂₉(Δ) = 26 v₂₉(C)` and `13 ∣ 26`, so
  `29` is a Ribet-lowering candidate. Residual odd estimate stays
  `32` times the odd radical of `AB` (not automatically `32`).
* `29 ∣ A` or `29 ∣ B`: `v₂₉(Δ) = 8 v₂₉(A)` or `8 v₂₉(B)`, and
  `13 ∤ 8`, so `29` need not lower. Displayed extra factor
  `32 · 29 = 928`. This is **not** the Néron conductor, and it
  equals the odd residual only when the odd radical of `AB` is
  exactly `29`.

LMFDB: `S₂(Γ₀(928))` is listed with dimension `77`
(<https://www.lmfdb.org/ModularForm/GL2/Q/holomorphic/928/>).
That numeral is **data**, not a Mathlib dimension theorem, and
this file does **not** ship a 3-name truncation of 77 newforms.
`level_928_no_match_bad_29` stays `def Prop`. Traces at `l ≠ 29`
of good reduction are still `Level32Table.frey_ap` (no Tate
placeholder `0` at `l = 3`).

The implication “good-`29` closed + `928` table empty + `29 ∣ C`
closed ⇒ no `B ≥ B0` solution” does **not** inhabit the
hypotheses. The LLL nogo persists:
`LLL_reduces_C1_to_lt_nine ↔` no `B ≥ B0` solution.

Does **not** mint v25. 0 sorry. 0 new axioms.
`C1_floor = 143186215390`. `B0_nat = 1000000`.
Tag `v24-v24x-final-rank3-shape-nogo` stays at `c1d173e`.
-/

namespace BealMatveevBeal.Level928Table

open BealMatveevBeal.BealMatveevBealV25B0Search
open BealMatveevBeal.DarmonMerelFrey4413
open BealMatveevBeal.Level32Table
open BealMatveevBeal.LLLTargetB8
open BealMatveevBeal.LLLTargetB8C1LowerBound
open Nat

/-! ## `29` divides at most one of `A`, `B`, `C` -/

def bad_29_case (A B : ℕ) : Prop :=
  29 ∣ A ∨ 29 ∣ B ∨ 29 ∣ (B + 3)

theorem twenty_nine_prime : Nat.Prime 29 := by decide

theorem not_twenty_nine_dvd_three : ¬ 29 ∣ 3 := by decide

theorem gcd_B_C_eq_gcd_B_three (B : ℕ) :
    Nat.gcd B (B + 3) = Nat.gcd B 3 :=
  Nat.gcd_self_add_right B 3

theorem not_twenty_nine_dvd_B_and_C {B : ℕ}
    (hB : 29 ∣ B) (hC : 29 ∣ B + 3) : False := by
  have hg : 29 ∣ Nat.gcd B (B + 3) := Nat.dvd_gcd hB hC
  have hdiv : Nat.gcd B (B + 3) ∣ 3 := by
    rw [gcd_B_C_eq_gcd_B_three]
    exact Nat.gcd_dvd_right B 3
  exact not_twenty_nine_dvd_three (dvd_trans hg hdiv)

theorem not_twenty_nine_dvd_A_and_B {A B : ℕ}
    (hsol : A ^ 4 + B ^ 4 = (B + 3) ^ 13)
    (hA : 29 ∣ A) (hB : 29 ∣ B) : False := by
  have hA4 : 29 ∣ A ^ 4 := dvd_pow hA (by decide : (4 : ℕ) ≠ 0)
  have hB4 : 29 ∣ B ^ 4 := dvd_pow hB (by decide : (4 : ℕ) ≠ 0)
  have hsum : 29 ∣ A ^ 4 + B ^ 4 := dvd_add hA4 hB4
  have hC13 : 29 ∣ (B + 3) ^ 13 := by
    rwa [hsol] at hsum
  have hC : 29 ∣ B + 3 := twenty_nine_prime.dvd_of_dvd_pow hC13
  exact not_twenty_nine_dvd_B_and_C hB hC

theorem not_twenty_nine_dvd_A_and_C {A B : ℕ}
    (hsol : A ^ 4 + B ^ 4 = (B + 3) ^ 13)
    (hA : 29 ∣ A) (hC : 29 ∣ B + 3) : False := by
  have hA4 : 29 ∣ A ^ 4 := dvd_pow hA (by decide : (4 : ℕ) ≠ 0)
  have hC13 : 29 ∣ (B + 3) ^ 13 :=
    dvd_pow hC (by decide : (13 : ℕ) ≠ 0)
  have hsum : 29 ∣ A ^ 4 + B ^ 4 := by
    rwa [← hsol] at hC13
  have hB4 : 29 ∣ B ^ 4 := (Nat.dvd_add_right hA4).mp hsum
  have hB : 29 ∣ B := twenty_nine_prime.dvd_of_dvd_pow hB4
  exact not_twenty_nine_dvd_B_and_C hB hC

/-- User-facing valuation split. The first conjunct is actually
    `False` on a solution (`29 ∤ 3`). -/
theorem v29_valuation_gap3 {A B : ℕ}
    (hsol : A ^ 4 + B ^ 4 = (B + 3) ^ 13) :
    (29 ∣ A ∧ 29 ∣ B → 29 ∣ B + 3) ∧
      (29 ∣ A ∧ ¬ 29 ∣ B → ¬ 29 ∣ B + 3) := by
  constructor
  · intro ⟨hA, hB⟩
    exact (not_twenty_nine_dvd_A_and_B hsol hA hB).elim
  · intro ⟨hA, _hnB⟩ hC
    exact not_twenty_nine_dvd_A_and_C hsol hA hC

theorem not_bad_29_iff (A B : ℕ) :
    ¬ bad_29_case A B ↔ ¬ 29 ∣ A ∧ ¬ 29 ∣ B ∧ ¬ 29 ∣ B + 3 := by
  constructor
  · intro h
    exact ⟨fun hA => h (Or.inl hA),
      fun hB => h (Or.inr (Or.inl hB)),
      fun hC => h (Or.inr (Or.inr hC))⟩
  · intro ⟨hA, hB, hC⟩ hbad
    rcases hbad with h | h | h
    · exact hA h
    · exact hB h
    · exact hC h

/-! ## Displayed `v₂₉(Δ)` (not Tate’s algorithm) -/

theorem thirteen_dvd_eight_mul {k : ℕ} : 13 ∣ 8 * k ↔ 13 ∣ k := by
  constructor
  · intro h
    have hc : Coprime 13 8 := by decide
    exact hc.dvd_of_dvd_mul_left h
  · intro h
    exact Dvd.dvd.mul_left h 8

theorem padicValNat_sixteen_at_29 : padicValNat 29 16 = 0 := by
  haveI : Fact (Nat.Prime 29) := ⟨twenty_nine_prime⟩
  rw [padicValNat.eq_zero_iff]
  refine Or.inr (Or.inr ?_)
  intro h
  have hpow : 29 ∣ 2 ^ 4 := by
    simpa [show (16 : ℕ) = 2 ^ 4 from rfl] using h
  have : 29 ∣ 2 := twenty_nine_prime.dvd_of_dvd_pow hpow
  exact (by decide : (29 : ℕ) ≠ 2)
    ((prime_dvd_prime_iff_eq twenty_nine_prime Nat.prime_two).1 this)

theorem padicValNat_freyDiscNat_29 {A B : ℕ} (hA : A ≠ 0) (hB : B ≠ 0) :
    padicValNat 29 (freyDiscNat A B) =
      8 * padicValNat 29 A + 8 * padicValNat 29 B +
        2 * padicValNat 29 (A ^ 4 + B ^ 4) := by
  haveI : Fact (Nat.Prime 29) := ⟨twenty_nine_prime⟩
  have h16 : (16 : ℕ) ≠ 0 := by decide
  have hA8 : A ^ 8 ≠ 0 := pow_ne_zero 8 hA
  have hB8 : B ^ 8 ≠ 0 := pow_ne_zero 8 hB
  have hS : A ^ 4 + B ^ 4 ≠ 0 :=
    (Nat.add_pos_left (pos_pow_of_pos 4 (Nat.pos_of_ne_zero hA)) (B ^ 4)).ne'
  have hS2 : (A ^ 4 + B ^ 4) ^ 2 ≠ 0 := pow_ne_zero 2 hS
  have hassoc :
      16 * A ^ 8 * B ^ 8 * (A ^ 4 + B ^ 4) ^ 2 =
        16 * (A ^ 8 * (B ^ 8 * (A ^ 4 + B ^ 4) ^ 2)) := by ring
  unfold freyDiscNat
  rw [hassoc, padicValNat.mul h16 (mul_ne_zero hA8 (mul_ne_zero hB8 hS2)),
    padicValNat.mul hA8 (mul_ne_zero hB8 hS2),
    padicValNat.mul hB8 hS2,
    padicValNat.pow 8 hA, padicValNat.pow 8 hB, padicValNat.pow 2 hS,
    padicValNat_sixteen_at_29]
  ring

theorem padicValNat_freyDiscNat_29_at_A {A B : ℕ}
    (hsol : A ^ 4 + B ^ 4 = (B + 3) ^ 13)
    (hA : A ≠ 0) (hB : B ≠ 0)
    (hpB : ¬ 29 ∣ B) (hpC : ¬ 29 ∣ B + 3) :
    padicValNat 29 (freyDiscNat A B) = 8 * padicValNat 29 A := by
  haveI : Fact (Nat.Prime 29) := ⟨twenty_nine_prime⟩
  have hvalB : padicValNat 29 B = 0 := by
    rw [padicValNat.eq_zero_iff]
    exact Or.inr (Or.inr hpB)
  have hvalC : padicValNat 29 (B + 3) = 0 := by
    rw [padicValNat.eq_zero_iff]
    exact Or.inr (Or.inr hpC)
  have hCne : B + 3 ≠ 0 := (Nat.add_pos_right B (by decide : 0 < 3)).ne'
  have hvalS : padicValNat 29 (A ^ 4 + B ^ 4) = 0 := by
    rw [hsol, padicValNat.pow 13 hCne, hvalC]
  rw [padicValNat_freyDiscNat_29 hA hB, hvalB, hvalS]
  ring

theorem padicValNat_freyDiscNat_29_at_C {A B : ℕ}
    (hsol : A ^ 4 + B ^ 4 = (B + 3) ^ 13)
    (hA : A ≠ 0) (hB : B ≠ 0)
    (hpA : ¬ 29 ∣ A) (hpB : ¬ 29 ∣ B) :
    padicValNat 29 (freyDiscNat A B) =
      26 * padicValNat 29 (B + 3) := by
  haveI : Fact (Nat.Prime 29) := ⟨twenty_nine_prime⟩
  have hvalA : padicValNat 29 A = 0 := by
    rw [padicValNat.eq_zero_iff]
    exact Or.inr (Or.inr hpA)
  have hvalB : padicValNat 29 B = 0 := by
    rw [padicValNat.eq_zero_iff]
    exact Or.inr (Or.inr hpB)
  have hCne : B + 3 ≠ 0 := (Nat.add_pos_right B (by decide : 0 < 3)).ne'
  have hvalS : padicValNat 29 (A ^ 4 + B ^ 4) =
      13 * padicValNat 29 (B + 3) := by
    rw [hsol, padicValNat.pow 13 hCne]
  rw [padicValNat_freyDiscNat_29 hA hB, hvalA, hvalB, hvalS]
  ring

/-- `29 ∣ C` and `29 ∤ AB` ⇒ `13 ∣ v₂₉(Δ)` (lowering candidate). -/
theorem thirteen_dvd_v29_Delta_of_only_C {A B : ℕ}
    (hsol : A ^ 4 + B ^ 4 = (B + 3) ^ 13)
    (hBpos : 1 ≤ B)
    (hpA : ¬ 29 ∣ A) (hpB : ¬ 29 ∣ B) (hpC : 29 ∣ B + 3) :
    13 ∣ padicValNat 29 (freyDiscNat A B) ∧
      26 ≤ padicValNat 29 (freyDiscNat A B) := by
  have hA : A ≠ 0 := A_ne_zero_of_sol hBpos hsol
  have hB : B ≠ 0 := Nat.pos_iff_ne_zero.mp (Nat.succ_le_iff.mp hBpos)
  have hval := padicValNat_freyDiscNat_29_at_C hsol hA hB hpA hpB
  haveI : Fact (Nat.Prime 29) := ⟨twenty_nine_prime⟩
  have hCpos : padicValNat 29 (B + 3) ≠ 0 := by
    intro h0
    rw [padicValNat.eq_zero_iff] at h0
    rcases h0 with h | h | h
    · exact (by decide : (29 : ℕ) ≠ 1) h
    · exact (Nat.add_pos_right B (by decide : (0 : ℕ) < 3)).ne' h
    · exact h hpC
  have hge : 1 ≤ padicValNat 29 (B + 3) := Nat.one_le_iff_ne_zero.mpr hCpos
  rw [hval]
  exact ⟨Dvd.dvd.mul_right thirteen_dvd_twenty_six _,
    Nat.mul_le_mul_left 26 hge⟩

/-- `29 ∣ A` and `29 ∤ BC` ⇒ `13 ∣ v₂₉(Δ)` iff `13 ∣ v₂₉(A)`.
    In particular `13 ∤ 8` blocks lowering when `13 ∤ v₂₉(A)`. -/
theorem thirteen_dvd_v29_Delta_of_only_A_iff {A B : ℕ}
    (hsol : A ^ 4 + B ^ 4 = (B + 3) ^ 13)
    (hBpos : 1 ≤ B)
    (hpB : ¬ 29 ∣ B) (hpC : ¬ 29 ∣ B + 3) :
    13 ∣ padicValNat 29 (freyDiscNat A B) ↔ 13 ∣ padicValNat 29 A := by
  have hA : A ≠ 0 := A_ne_zero_of_sol hBpos hsol
  have hB : B ≠ 0 := Nat.pos_iff_ne_zero.mp (Nat.succ_le_iff.mp hBpos)
  have hval := padicValNat_freyDiscNat_29_at_A hsol hA hB hpB hpC
  rw [hval, thirteen_dvd_eight_mul]

theorem not_thirteen_dvd_v29_Delta_of_only_A {A B : ℕ}
    (hsol : A ^ 4 + B ^ 4 = (B + 3) ^ 13)
    (hBpos : 1 ≤ B)
    (hpB : ¬ 29 ∣ B) (hpC : ¬ 29 ∣ B + 3)
    (hnot13 : ¬ 13 ∣ padicValNat 29 A) :
    ¬ 13 ∣ padicValNat 29 (freyDiscNat A B) := by
  intro h
  exact hnot13 ((thirteen_dvd_v29_Delta_of_only_A_iff hsol hBpos hpB hpC).1 h)

/-! ## Displayed residual: `32` vs `32·29 = 928` (not Néron) -/

/-- Odd primes in `n`. The factor `2` is already in the `32`. -/
def oddPrimeFactors (n : ℕ) : Finset ℕ :=
  n.primeFactors.filter (fun p => p ≠ 2)

def oddRadical (n : ℕ) : ℕ :=
  ∏ p ∈ oddPrimeFactors n, p

/-- Kraus-style odd residual `32 · rad_odd(AB)`. Not Tate’s `N_E`. -/
def residualOddEstimate (A B : ℕ) : ℕ :=
  32 * oddRadical (A * B)

/-- `29` remains in the odd residual after a putative lowering of `C`. -/
def N_E_has_29 (A B : ℕ) : Prop :=
  29 ∣ A ∨ 29 ∣ B

/-- Candidate extra factor: `928` if `29 ∣ AB`, else `32`.
    Equals `residualOddEstimate` only when `oddRadical(AB) ∣ 29`. -/
def level_after_ribet_29 (A B : ℕ) : ℕ :=
  if 29 ∣ A ∨ 29 ∣ B then 928 else 32

theorem thirty_two_mul_twenty_nine : (32 : ℕ) * 29 = 928 := by decide

theorem level_after_ribet_29_eq (A B : ℕ) :
    level_after_ribet_29 A B =
      if 29 ∣ A ∨ 29 ∣ B then 928 else 32 :=
  rfl

theorem twenty_nine_mem_oddPrimeFactors {n : ℕ}
    (hn : n ≠ 0) (h : 29 ∣ n) :
    29 ∈ oddPrimeFactors n := by
  simp [oddPrimeFactors, mem_primeFactors, twenty_nine_prime, h, hn]

theorem twenty_nine_dvd_oddRadical {n : ℕ}
    (hn : n ≠ 0) (h : 29 ∣ n) :
    29 ∣ oddRadical n :=
  Finset.dvd_prod_of_mem (fun q => q) (twenty_nine_mem_oddPrimeFactors hn h)

theorem twenty_nine_dvd_residualOdd_of_dvd_A {A B : ℕ}
    (hA : A ≠ 0) (hB : B ≠ 0) (hpA : 29 ∣ A) :
    29 ∣ residualOddEstimate A B := by
  have hmem : 29 ∣ oddRadical (A * B) :=
    twenty_nine_dvd_oddRadical (mul_ne_zero hA hB)
      (dvd_mul_of_dvd_left hpA B)
  exact dvd_mul_of_dvd_right hmem 32

theorem twenty_nine_dvd_residualOdd_of_dvd_B {A B : ℕ}
    (hA : A ≠ 0) (hB : B ≠ 0) (hpB : 29 ∣ B) :
    29 ∣ residualOddEstimate A B := by
  have hmem : 29 ∣ oddRadical (A * B) :=
    twenty_nine_dvd_oddRadical (mul_ne_zero hA hB)
      (dvd_mul_of_dvd_right hpB A)
  exact dvd_mul_of_dvd_right hmem 32

theorem not_twenty_nine_dvd_residualOdd_of_only_C {A B : ℕ}
    (_hA : A ≠ 0) (_hB : B ≠ 0)
    (hpA : ¬ 29 ∣ A) (hpB : ¬ 29 ∣ B) :
    ¬ 29 ∣ residualOddEstimate A B := by
  intro h
  have hrad : 29 ∣ oddRadical (A * B) :=
    (show Coprime 29 32 by decide).dvd_of_dvd_mul_left h
  obtain ⟨q, hqmem, hdvd⟩ :=
    (twenty_nine_prime.prime.dvd_finset_prod_iff (fun p : ℕ => p)).mp hrad
  have hqP : q.Prime :=
    (mem_primeFactors.mp ((Finset.mem_filter.mp hqmem).1)).1
  have hq29 : q = 29 :=
    ((prime_dvd_prime_iff_eq twenty_nine_prime hqP).1 hdvd).symm
  have hPF : 29 ∈ (A * B).primeFactors := by
    have : q ∈ (A * B).primeFactors := (Finset.mem_filter.mp hqmem).1
    simpa [hq29] using this
  have hAB : 29 ∣ A * B := (mem_primeFactors.mp hPF).2.1
  rcases (twenty_nine_prime.dvd_mul.mp hAB) with hA' | hB'
  · exact hpA hA'
  · exact hpB hB'

/-! ## LMFDB level 928 is data; the table stays `def Prop` -/

/-- LMFDB `dim S₂(Γ₀(928))`. Not a Mathlib dimension theorem.
    Do **not** treat a 3-name list as the 77 newforms. -/
def S2_Gamma0_928_dim : ℕ := 77

theorem S2_Gamma0_928_dim_eq : S2_Gamma0_928_dim = 77 := rfl

/-- Empty 928-table close of the `29 ∣ AB` case. Uninhabited:
    Mathlib 4.12 has no 77-row `a_p` table. Traces at `l ≠ 29`
    of good reduction are still `frey_ap`, not a Tate stub `0`. -/
def level_928_no_match_bad_29 : Prop :=
  ∀ A B : ℕ, A ^ 4 + B ^ 4 = (B + 3) ^ 13 →
    29 ∣ A ∨ 29 ∣ B → False

/-- The `29 ∣ C` only case is bad reduction at `29`, so the
    `9a9caa0` `a₂₉` scan does not apply. After lowering `C` the
    residual is still not a uniform level-32 check. Uninhabited. -/
def level_32_no_match_when_29_dvd_C : Prop :=
  ∀ A B : ℕ, A ^ 4 + B ^ 4 = (B + 3) ^ 13 →
    29 ∣ B + 3 → ¬ 29 ∣ A → ¬ 29 ∣ B → False

/-- `l = 3` traces do not need Tate at `29`: good reduction at `3`
    still has `a₃ = 0`, matching `32a1`. -/
theorem frey_a3_still_zero_at_good_3 :
    ∀ (A B : Fin 3),
      A.val ≠ 0 → B.val ≠ 0 →
        (A.val ^ 4 + B.val ^ 4) % 3 ≠ 0 →
        (A.val ^ 4 + B.val ^ 4) % 3 = ((B.val + 3) ^ 13) % 3 →
        frey_ap 3 A.val B.val = 0 :=
  frey_a3_match_32a1

/-- Good reduction at `29` is the `9a9caa0` mismatch, not `False`
    by itself. Needs the extra hyp that traces match `32a1`. -/
theorem no_sol_good_29_of_trace_match
    (h_match :
      ∀ A B : ℕ, A ^ 4 + B ^ 4 = (B + 3) ^ 13 →
        ¬ 29 ∣ A → ¬ 29 ∣ B → ¬ 29 ∣ B + 3 →
        frey_ap 29 (A % 29) (B % 29) = (-10 : ℤ))
    {A B : ℕ}
    (hsol : A ^ 4 + B ^ 4 = (B + 3) ^ 13)
    (hgood : ¬ bad_29_case A B) : False :=
  have ⟨hA, hB, hC⟩ := (not_bad_29_iff A B).1 hgood
  no_sol_with_good_red_29_of_trace_match h_match hsol hA hB hC

/-- Combined split: good `29` closed, `29 ∣ AB` closed by the
    928 table, and `29 ∣ C` closed. Does **not** inhabit any
    hypothesis. `h_good` is not the `a₂₉ ≠ −10` theorem alone. -/
theorem no_sol_ge_B0_of_32_and_928
    (h_good :
      ∀ A B : ℕ, A ^ 4 + B ^ 4 = (B + 3) ^ 13 →
        ¬ bad_29_case A B → False)
    (h_bad_AB : level_928_no_match_bad_29)
    (h_bad_C : level_32_no_match_when_29_dvd_C)
    {A B : ℕ} (_hB : B0_nat ≤ B)
    (hsol : A ^ 4 + B ^ 4 = (B + 3) ^ 13) : False := by
  by_cases hA : 29 ∣ A
  · exact h_bad_AB A B hsol (Or.inl hA)
  · by_cases hBv : 29 ∣ B
    · exact h_bad_AB A B hsol (Or.inr hBv)
    · by_cases hC : 29 ∣ B + 3
      · exact h_bad_C A B hsol hC hA hBv
      · exact h_good A B hsol
          ((not_bad_29_iff A B).2 ⟨hA, hBv, hC⟩)

/-- Same `e5a95f5` equivalence: the 29-split does not replace
    C-scaling, and does not inhabit the LLL target. -/
theorem LLL_still_nogo_after_29 :
    LLL_reduces_C1_to_lt_nine ↔
      ∀ {A B : ℕ}, B0_nat ≤ B → A ^ 4 + B ^ 4 ≠ (B + 3) ^ 13 :=
  LLL_reduces_C1_to_lt_nine_iff_no_sol_ge_B0

theorem LLL_reduces_C1_to_lt_nine_of_no_sol_ge_B0_928
    (h : ∀ B : ℕ, B0_nat ≤ B → ∀ A : ℕ,
      A ^ 4 + B ^ 4 ≠ (B + 3) ^ 13) :
    LLL_reduces_C1_to_lt_nine :=
  LLL_reduces_C1_to_lt_nine_of_no_sol_ge_B0_frey h

#check v29_valuation_gap3
#check thirteen_dvd_v29_Delta_of_only_C
#check not_thirteen_dvd_v29_Delta_of_only_A
#check twenty_nine_dvd_residualOdd_of_dvd_A
#check not_twenty_nine_dvd_residualOdd_of_only_C
#check S2_Gamma0_928_dim_eq
#check level_928_no_match_bad_29
#check no_sol_ge_B0_of_32_and_928
#check LLL_still_nogo_after_29
#print axioms v29_valuation_gap3
#print axioms thirteen_dvd_v29_Delta_of_only_C
#print axioms no_sol_ge_B0_of_32_and_928
#print axioms LLL_still_nogo_after_29

end BealMatveevBeal.Level928Table

