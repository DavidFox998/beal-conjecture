/-
Copyright (c) 2026 David Fox. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: David Fox
-/
/-
  Root module. Separate Lake target `BealMatveevBealV25B0Search`.
  Do **not** add `Beal/Matveev/DarmonMerelFrey4413.lean`:
  `.submodules Beal.Matveev` would pull it into the default glob.
  Do **not** import `Beal.Matveev.MatveevThm14General`,
  `Beal.Matveev.BealMatveevBealV25B0Search`, or
  `Beal.Matveev.PAdicLLL`. Do **not** add a second Darmon–Merel
  axiom: the only axiom is `BealTrueV25.darmon_merel_4413_axiom`
  on the default target, not here.
-/
import BealMatveevBealV25B0Search
import LLLTargetB8_C1_lower_bound

/-!
# Frey curve for gap-3 signature `(4,4,13)` (not a v25 mint)

Displayed model `y² = x(x − A⁴)(x + B⁴)` for
`A⁴ + B⁴ = C¹³` with `C = B+3`. Weierstrass data, discriminant,
and `c₄` are theorems. The displayed residual conductor
`32 · rad(AB)` is **not** the Néron conductor (Tate’s algorithm
is not in Mathlib 4.12).

Modularity, Mazur irreducibility of `ρ_{E,13}`, Ribet lowering
to level 32, and the level-32 newform table stay `def Prop`.
Mathlib 4.12 has `ModularForm` spaces but no `dim S₂(Γ₀(32))=1`
and no `32a1` elimination. The implication
“Ribet-to-32 + empty table ⇒ no `B ≥ B0` solution” does **not**
inhabit either hypothesis.

Wiring to `e5a95f5`: if there is no gap-3 solution with `B ≥ B0`,
then `LLL_reduces_C1_to_lt_nine` holds vacuously. That is the
LLL nogo, not a modular-forms close.

Does **not** mint v25. 0 sorry. 0 new axioms.
`C1_floor = 143186215390`. `B0_nat = 1000000`.
Tag `v24-v24x-final-rank3-shape-nogo` stays at `c1d173e`.
-/

namespace BealMatveevBeal.DarmonMerelFrey4413

open BealMatveevBeal.BealMatveevBealV25B0Search
open BealMatveevBeal.LLLTargetB8
open BealMatveevBeal.LLLTargetB8C1LowerBound
open Nat

/-! ## Displayed Frey model `y² = x(x − A⁴)(x + B⁴)` -/

def frey_A4 (A : ℕ) : ℤ := (A : ℤ) ^ 4

def frey_B4 (B : ℕ) : ℤ := (B : ℤ) ^ 4

def frey_C13 (B : ℕ) : ℤ := ((B : ℤ) + 3) ^ 13

def frey_a2 (A B : ℕ) : ℤ := frey_B4 B - frey_A4 A

def frey_a4 (A B : ℕ) : ℤ := -(frey_A4 A * frey_B4 B)

/-- `y² = x³ + (B⁴ − A⁴) x² − A⁴ B⁴ x`. -/
def freyWeierstrass (A B : ℕ) : WeierstrassCurve ℤ where
  a₁ := 0
  a₂ := frey_a2 A B
  a₃ := 0
  a₄ := frey_a4 A B
  a₆ := 0

theorem freyWeierstrass_a₂ (A B : ℕ) :
    (freyWeierstrass A B).a₂ = (B : ℤ) ^ 4 - (A : ℤ) ^ 4 :=
  rfl

theorem freyWeierstrass_a₄ (A B : ℕ) :
    (freyWeierstrass A B).a₄ = -((A : ℤ) ^ 4 * (B : ℤ) ^ 4) :=
  rfl

/-- Geometric discriminant `16 A⁸ B⁸ (A⁴+B⁴)²`. -/
def freyDiscNat (A B : ℕ) : ℕ :=
  16 * A ^ 8 * B ^ 8 * (A ^ 4 + B ^ 4) ^ 2

/-- On-solution specialization `16 A⁸ B⁸ C²⁶` (not an identity
    off the surface `A⁴+B⁴=C¹³`). -/
def frey_disc_of_C (A B : ℕ) : ℤ :=
  16 * (A : ℤ) ^ 8 * (B : ℤ) ^ 8 * ((B : ℤ) + 3) ^ 26

/-- User-facing `c₄` polynomial `16(A⁸ + B⁸ + A⁴ B⁴)`. -/
def frey_c4 (A B : ℕ) : ℤ :=
  16 * (frey_A4 A ^ 2 + frey_B4 B ^ 2 + frey_A4 A * frey_B4 B)

theorem freyWeierstrass_Δ (A B : ℕ) :
    (freyWeierstrass A B).Δ =
      (16 : ℤ) * (A : ℤ) ^ 8 * (B : ℤ) ^ 8 *
        ((A : ℤ) ^ 4 + (B : ℤ) ^ 4) ^ 2 := by
  simp [freyWeierstrass, frey_a2, frey_a4, frey_A4, frey_B4,
    WeierstrassCurve.Δ, WeierstrassCurve.b₂, WeierstrassCurve.b₄,
    WeierstrassCurve.b₆, WeierstrassCurve.b₈]
  ring

theorem freyWeierstrass_c₄ (A B : ℕ) :
    (freyWeierstrass A B).c₄ = frey_c4 A B := by
  simp [freyWeierstrass, frey_c4, frey_a2, frey_a4, frey_A4, frey_B4,
    WeierstrassCurve.c₄, WeierstrassCurve.b₂, WeierstrassCurve.b₄]
  ring

theorem freyDiscNat_of_sol {A B : ℕ}
    (hsol : A ^ 4 + B ^ 4 = (B + 3) ^ 13) :
    freyDiscNat A B = 16 * A ^ 8 * B ^ 8 * (B + 3) ^ 26 := by
  have hpow : ((B + 3) ^ 13) ^ 2 = (B + 3) ^ 26 := by
    rw [← pow_mul]
  rw [freyDiscNat, hsol, hpow]

/-! ## `13 ∣ 26` (C lowers) and `13 ∤ 8` (A need not) -/

theorem thirteen_dvd_twenty_six : 13 ∣ 26 := by decide

theorem not_thirteen_dvd_eight : ¬ 13 ∣ 8 := by decide

theorem two_pow_five : (2 : ℕ) ^ 5 = 32 := by decide

/-! ## Displayed residual conductor (not Néron) -/

def natRadical (n : ℕ) : ℕ := ∏ p ∈ n.primeFactors, p

/-- Odd part of the displayed `2^α · rad(ABC)` estimate,
    `α ≤ 5`. Not Tate’s `N_E`. -/
def frey_conductor_odd_part (A B : ℕ) : ℕ :=
  natRadical (A * B * (B + 3))

/-- Residual estimate after a putative Ribet removal of primes
    in `C` with `13 ∣ v_ℓ(Δ)`. Same shape as `BealKraus`. -/
def residualLevelEstimate (A B : ℕ) : ℕ :=
  32 * natRadical (A * B)

theorem unlowered_prime_dvd_residual {p A B : ℕ}
    (hp : p.Prime) (hA : A ≠ 0) (hB : B ≠ 0) (hpA : p ∣ A) :
    p ∣ residualLevelEstimate A B := by
  have hmem : p ∈ (A * B).primeFactors := by
    rw [mem_primeFactors]
    exact ⟨hp, dvd_mul_of_dvd_left hpA B, mul_ne_zero hA hB⟩
  have hrad : p ∣ natRadical (A * B) :=
    Finset.dvd_prod_of_mem (fun q => q) hmem
  exact dvd_mul_of_dvd_right hrad 32

/-! ## Missing modularity / Ribet / table (def Prop, not axioms) -/

/-- Darmon–Merel signature `(4,4,13)`. Not in Mathlib 4.12.
    The only repo axiom for this statement is
    `BealTrueV25.darmon_merel_4413_axiom` on the default target. -/
def darmon_merel_44_13_no_coprime : Prop :=
  ∀ A B C : ℕ, Nat.Coprime A B → A ^ 4 + B ^ 4 = C ^ 13 →
    A = 0 ∨ B = 0

/-- Mazur irreducibility of `ρ_{E,13}` on a non-cuspidal Frey
    curve. Not in Mathlib 4.12 for this model. -/
def mazur_rho_E_13_irreducible : Prop :=
  darmon_merel_44_13_no_coprime

/-- Modularity of the displayed Frey representation. Not an axiom
    here. -/
def modularity_Frey_gap3 : Prop :=
  mazur_rho_E_13_irreducible

/-- Displayed residual after Ribet at `13` divides `32`.
    Uninhabited: primes in `A` need not lower (`13 ∤ 8`). -/
def ribet_lowers_Frey_to_level_32 : Prop :=
  ∀ A B : ℕ, A ^ 4 + B ^ 4 = (B + 3) ^ 13 → 0 < B →
    residualLevelEstimate A B ∣ 32

/-- A gap-3 solution whose displayed residual divides 32.
    The level-32 newform table would have to match this. -/
def exists_residual_level_32_sol : Prop :=
  ∃ A B : ℕ, A ^ 4 + B ^ 4 = (B + 3) ^ 13 ∧
    residualLevelEstimate A B ∣ 32

/-- Empty suitable-newform table at level 32 (Kraus / `32a1`
    elimination). Mathlib 4.12 has no `dim S₂(Γ₀(32))=1`.
    Uninhabited. -/
def level_32_no_newform : Prop :=
  ¬ exists_residual_level_32_sol

/-- If Ribet put every `B > 0` solution at residual 32 and the
    level-32 table were empty, there would be no `B ≥ B0`
    solution. Does **not** inhabit either hypothesis. -/
theorem no_sol_ge_B0_of_ribet_and_level_32_table
    (h_ribet : ribet_lowers_Frey_to_level_32)
    (h_empty : level_32_no_newform)
    {A B : ℕ} (hB : B0_nat ≤ B)
    (hsol : A ^ 4 + B ^ 4 = (B + 3) ^ 13) : False := by
  have hB0 : (1000000 : ℕ) ≤ B := by
    simpa [B0_nat_eq] using hB
  have hBpos : 0 < B :=
    lt_of_lt_of_le (by decide : (0 : ℕ) < 1000000) hB0
  exact h_empty ⟨A, B, hsol, h_ribet A B hsol hBpos⟩

/-- Coprime solutions are excluded by Darmon–Merel `(4,4,13)`.
    Does **not** inhabit the signature (and does **not** run
    3-adic descent). -/
theorem no_coprime_sol_of_darmon_merel
    (hDM : darmon_merel_44_13_no_coprime)
    {A B : ℕ} (hcop : Nat.Coprime A B)
    (hsol : A ^ 4 + B ^ 4 = (B + 3) ^ 13) : A = 0 ∨ B = 0 :=
  hDM A B (B + 3) hcop hsol

/-! ## Wiring to the `e5a95f5` LLL nogo -/

/-- Same vacuous converse as `LLLTargetB8_C1_lower_bound`:
    no `B ≥ B0` solution ⇒ `LLL_reduces_C1_to_lt_nine`.
    A Frey/level-32 close of the large-`B` branch would therefore
    inhabit the LLL target without lattice reduction. -/
theorem LLL_reduces_C1_to_lt_nine_of_no_sol_ge_B0_frey
    (h : ∀ B : ℕ, B0_nat ≤ B → ∀ A : ℕ,
      A ^ 4 + B ^ 4 ≠ (B + 3) ^ 13) :
    LLL_reduces_C1_to_lt_nine :=
  LLL_reduces_C1_to_lt_nine_of_no_sol_ge_B0
    (fun {A B} hB hsol => h B hB A hsol)

#check freyWeierstrass
#check freyWeierstrass_Δ
#check freyWeierstrass_c₄
#check freyDiscNat_of_sol
#check thirteen_dvd_twenty_six
#check not_thirteen_dvd_eight
#check residualLevelEstimate
#check darmon_merel_44_13_no_coprime
#check mazur_rho_E_13_irreducible
#check modularity_Frey_gap3
#check ribet_lowers_Frey_to_level_32
#check level_32_no_newform
#check no_sol_ge_B0_of_ribet_and_level_32_table
#check LLL_reduces_C1_to_lt_nine_of_no_sol_ge_B0_frey
#print axioms freyWeierstrass_Δ
#print axioms freyDiscNat_of_sol
#print axioms no_sol_ge_B0_of_ribet_and_level_32_table
#print axioms LLL_reduces_C1_to_lt_nine_of_no_sol_ge_B0_frey

end BealMatveevBeal.DarmonMerelFrey4413
