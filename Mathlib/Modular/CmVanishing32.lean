import DarmonMerel.«3_RibetLowering4413»
import DarmonMerel.«4_MazurTrick4413»
import Mathlib.Modular.CoefficientQCurve
import Mathlib.Modular.FreyTraceF9

/-!
# CM vanishing toward Darmon–Merel Lemma 8.2

`no_newform_32_64_open` is still the frontier elimination. This file does
not rewrite it. `C(5, g) = 0` and `(T₅ - 6) e ≢ 0 (mod 13)` stay where they
are: `darmon_merel_elimination_4413`, `mazur_trick_4413`, and
`winding_elimination_4413`.

The two rational newforms have CM by `ℚ(i)`, discriminant `-4`. The models
are `Y² = X³ - X` and `Y² = X³ + X`. Each carries the endomorphism
`(X, Y) ↦ (-X, i Y)`. Primes inert in `ℚ(i)` are the odd primes `≡ 3 (mod 4)`.
Through `19` those are `3`, `7`, `11`, `19`. The Hecke matrices already
computed in `hecke32_eigenvalues` and `hecke64_eigenvalues` give `a_p = 0`
at each of them, and a nonzero eigenvalue at the split primes `5`, `13`,
and `17`. The same four inert primes have trace `0` on both Weierstrass
models. The identity `a_p(f) = 0` for every inert prime, not just through
`19`, is not a theorem: `Newform` stores no eigenvalues, and the modularity
link from the eigenline to the CM curve is not proved for all `p`.

At the inert prime `3`, a coprime solution has `3 ∤ c`, because a sum of
two fourth powers vanishes mod `3` only when both bases do. The Frey model
over `𝔽₉` then has trace in `{-2, 4, 6}`.

The comparison with a lowered newform is not the residue `0`. A weight-2
form with `a_3 = 0` has `trace(Frob_3²) = 0² - 2·3 = -6`, and `-6 ≡ 7`
mod `13`. That is the extension of `ρ̄_E` to `G_ℚ`: `Frob_𝔭₃ = Frob_3²`.
`velu_target_eq_twist_neg_two` is a 2-isogeny from the conjugate to the
twist by `-2`, with `13 ∤ 2`, so the ℚ-curve cocycle is the input of that
extension. Weil restriction would be the direct sum of the two summands
and the residue `10`. It is not used. `{-2, 4, 6}` meets neither `-6` nor
`7`.

The coefficient 2-isogeny lands on the twist by `-2`, not on `E`. Its
degree is `2`, so the composition with the conjugate has degree `4` and
the endomorphism scalar is `±2`. The twist character `χ_{-2}` takes values
in `{±1}`, so `χ_{-2}(σ)² = 1` and does not move that scalar. `(-2 / 3) = 1`,
and a square in the Galois group is killed by any quadratic character, so
the trace at `Frob_3²` stays `-6`.

`±2` are the residues `2` and `11` in `𝔽₁₃`. Neither is a square, and no
scalar `c` in `𝔽₁₃` satisfies `c² · u = 1`. That rescaling is the linear
lift over `𝔽₁₃`, and its failure is a theorem. Both residues are squares in
`𝔽₁₃[√2]`, so the same rescaling exists over `𝔽₁₆₉`. The class of `-6` is
the prime-field element `7`, fixed by the Frobenius of that extension.

There is still no Tate module and no `GL₂`. The missing representation
`G_ℚ → GL₂(𝔽₁₆₉)` is the single open `qcurve_extension_169_open`. It asks
for the trace at `Frob_3²` to equal `-6`. `qcurve_extension_13_open` is
that statement rewritten by `0² - 2·3 = -6`. `H²(G_ℚ, 𝔽₁₆₉ˣ)` is not
defined here. The local class on the conjugation is the class of `±2`,
which is a coboundary over `𝔽₁₆₉` by the square computation. Tate's
theorem is not proved and is not a second hypothesis.
`modular_residual_13_open` is the projection
`ribet_level_lowering_4413.gkResidual`.
`no_newform_32_64_of_qcurve` is `no_newform_32_64_open` on the `𝔽₁₆₉` open
alone. The frontier definition is unchanged, and the closure is not
unconditional.
-/

namespace Cm32

def cmDiscriminant : Int := -4

/-- Both level-`32` and level-`64` forms are the CM forms of discriminant `-4`. -/
theorem cm_discriminant_both : cmDiscriminant = -4 := rfl

/-- `(X, Y) ↦ (-X, i Y)` preserves `Y² = X³ - X`. -/
theorem cm_endomorphism_x3_sub_x (x y i : Int) (hi : i * i = -1)
    (hon : y * y = x * x * x - x) :
    (i * y) * (i * y) = (-x) * (-x) * (-x) - (-x) := by
  grind

/-- `(X, Y) ↦ (-X, i Y)` preserves `Y² = X³ + X`. -/
theorem cm_endomorphism_x3_add_x (x y i : Int) (hi : i * i = -1)
    (hon : y * y = x * x * x + x) :
    (i * y) * (i * y) = (-x) * (-x) * (-x) + (-x) := by
  grind

/-- Inert and split primes through `19`, by the splitting law in `ℚ(i)`. -/
theorem splitting_through_19 :
    inertInK 3 = true ∧ inertInK 7 = true ∧ inertInK 11 = true ∧ inertInK 19 = true ∧
      splitsInK 5 = true ∧ splitsInK 13 = true ∧ splitsInK 17 = true ∧
      inertInK 2 = false ∧ splitsInK 2 = false := by
  decide

theorem and_true_left {a b : Bool} (h : (a && b) = true) : a = true := by
  cases a <;> cases b <;> simp_all

theorem and_true_right {a b : Bool} (h : (a && b) = true) : b = true := by
  cases a <;> cases b <;> simp_all

/-- `a_p(32.2.a.a) = 0` at the inert primes through `19`, read off
`hecke32_eigenvalues`. The split eigenvalues in that computation are not zero. -/
theorem cm_vanish_32 :
    heckeEigen 32 3 eig32 0 = true ∧
      heckeEigen 32 7 eig32 0 = true ∧
        heckeEigen 32 11 eig32 0 = true ∧
          heckeEigen 32 19 eig32 0 = true ∧
            heckeEigen 32 5 eig32 (-2) = true ∧
              heckeEigen 32 13 eig32 6 = true ∧
                heckeEigen 32 17 eig32 2 = true := by
  have h := hecke32_eigenvalues
  unfold hecke32_ok at h
  have h19 := and_true_right h
  have hL := and_true_left h
  have h17 := and_true_right hL
  have hL := and_true_left hL
  have h13 := and_true_right hL
  have hL := and_true_left hL
  have h11 := and_true_right hL
  have hL := and_true_left hL
  have h7 := and_true_right hL
  have hL := and_true_left hL
  have h5 := and_true_right hL
  have hL := and_true_left hL
  have h3 := and_true_right hL
  exact ⟨h3, h7, h11, h19, h5, h13, h17⟩

/-- `a_p(64.2.a.a) = 0` at the same inert primes. -/
theorem cm_vanish_64 :
    heckeEigen 64 3 eig64 0 = true ∧
      heckeEigen 64 7 eig64 0 = true ∧
        heckeEigen 64 11 eig64 0 = true ∧
          heckeEigen 64 19 eig64 0 = true ∧
            heckeEigen 64 5 eig64 2 = true ∧
              heckeEigen 64 13 eig64 (-6) = true ∧
                heckeEigen 64 17 eig64 2 = true := by
  have h := hecke64_eigenvalues
  unfold hecke64_ok at h
  have h19 := and_true_right h
  have hL := and_true_left h
  have h17 := and_true_right hL
  have hL := and_true_left hL
  have h13 := and_true_right hL
  have hL := and_true_left hL
  have h11 := and_true_right hL
  have hL := and_true_left hL
  have h7 := and_true_right hL
  have hL := and_true_left hL
  have h5 := and_true_right hL
  have hL := and_true_left hL
  have h3 := and_true_right hL
  exact ⟨h3, h7, h11, h19, h5, h13, h17⟩

def nSq (p z : Nat) : Nat :=
  go p
where go : Nat → Nat
  | 0 => 0
  | k + 1 => (if (k * k) % p = z % p then 1 else 0) + go k

def affineFp (p : Nat) (rhs : Nat → Nat) : Nat :=
  go p
where go : Nat → Nat
  | 0 => 0
  | x + 1 => nSq p (rhs x) + go x

/-- Trace of Frobenius of `y² = rhs(x)` over `𝔽_p`, infinity included. -/
def traceFp (p : Nat) (rhs : Nat → Nat) : Int :=
  (p : Int) + 1 - ((1 + affineFp p rhs : Nat) : Int)

def rhsSubP (p x : Nat) : Nat :=
  (x * x * x - x) % p

def rhsAddP (p x : Nat) : Nat :=
  (x * x * x + x) % p

theorem cm_curve_trace_inert_sub :
    traceFp 3 (rhsSubP 3) = 0 ∧ traceFp 7 (rhsSubP 7) = 0 ∧
      traceFp 11 (rhsSubP 11) = 0 ∧ traceFp 19 (rhsSubP 19) = 0 := by
  decide

theorem cm_curve_trace_inert_add :
    traceFp 3 (rhsAddP 3) = 0 ∧ traceFp 7 (rhsAddP 7) = 0 ∧
      traceFp 11 (rhsAddP 11) = 0 ∧ traceFp 19 (rhsAddP 19) = 0 := by
  decide

theorem freyTrace3_table :
    freyTrace3 0 1 = 6 ∧ freyTrace3 0 2 = 6 ∧
      freyTrace3 1 0 = -2 ∧ freyTrace3 2 0 = -2 ∧
        freyTrace3 1 1 = 4 ∧ freyTrace3 1 2 = 4 ∧
          freyTrace3 2 1 = 4 ∧ freyTrace3 2 2 = 4 := by
  decide

theorem not_thirteen_dvd_trace_value (t : Int)
    (h : t = 6 ∨ t = -2 ∨ t = 4) : ¬ (13 : Int) ∣ t := by
  rcases h with h | h | h
  · rw [h]; decide
  · rw [h]; decide
  · rw [h]; decide

/-- No admissible residue mod `3` has Frey trace `0` mod `13`. -/
theorem freyTrace3_not_div_13 (a b : Nat) (ha : a < 3) (hb : b < 3)
    (hne : a ≠ 0 ∨ b ≠ 0) : ¬ (13 : Int) ∣ freyTrace3 a b := by
  have hsplit : a = 0 ∨ a = 1 ∨ a = 2 := by omega
  have hsplitb : b = 0 ∨ b = 1 ∨ b = 2 := by omega
  rcases hsplit with ha0 | ha1 | ha2
  · rcases hsplitb with hb0 | hb1 | hb2
    · exact hne.elim (fun h => absurd ha0 h) (fun h => absurd hb0 h)
    · rw [ha0, hb1]
      exact not_thirteen_dvd_trace_value _ (Or.inl freyTrace3_table.1)
    · rw [ha0, hb2]
      exact not_thirteen_dvd_trace_value _ (Or.inl freyTrace3_table.2.1)
  · rcases hsplitb with hb0 | hb1 | hb2
    · rw [ha1, hb0]
      exact not_thirteen_dvd_trace_value _ (Or.inr (Or.inl freyTrace3_table.2.2.1))
    · rw [ha1, hb1]
      exact not_thirteen_dvd_trace_value _ (Or.inr (Or.inr freyTrace3_table.2.2.2.2.1))
    · rw [ha1, hb2]
      exact not_thirteen_dvd_trace_value _ (Or.inr (Or.inr freyTrace3_table.2.2.2.2.2.1))
  · rcases hsplitb with hb0 | hb1 | hb2
    · rw [ha2, hb0]
      exact not_thirteen_dvd_trace_value _ (Or.inr (Or.inl freyTrace3_table.2.2.2.1))
    · rw [ha2, hb1]
      exact not_thirteen_dvd_trace_value _ (Or.inr (Or.inr freyTrace3_table.2.2.2.2.2.2.1))
    · rw [ha2, hb2]
      exact not_thirteen_dvd_trace_value _ (Or.inr (Or.inr freyTrace3_table.2.2.2.2.2.2.2))

theorem mod3_lt (a : Int) : mod3 a < 3 := by
  have hlt : a % 3 < 3 := Int.emod_lt_of_pos a (by decide)
  have hnn : 0 ≤ a % 3 := Int.emod_nonneg a (by decide)
  have heq : ((mod3 a : Nat) : Int) = a % 3 := Int.toNat_of_nonneg hnn
  omega

theorem mod3_eq_zero_of_dvd (a : Int) (h : (3 : Int) ∣ a) : mod3 a = 0 := by
  have h0 : a % 3 = 0 := Int.emod_eq_zero_of_dvd h
  simp [mod3, h0]

theorem dvd_of_mod3_eq_zero (a : Int) (h : mod3 a = 0) : (3 : Int) ∣ a := by
  have hnn : 0 ≤ a % 3 := Int.emod_nonneg a (by decide)
  have heq : ((mod3 a : Nat) : Int) = a % 3 := Int.toNat_of_nonneg hnn
  have h0 : a % 3 = 0 := by rw [← heq, h]; rfl
  exact Int.dvd_of_emod_eq_zero h0

theorem three_dvd_gcd (a b : Int) (ha : (3 : Int) ∣ a) (hb : (3 : Int) ∣ b) :
    3 ∣ a.natAbs.gcd b.natAbs := by
  have ha' : 3 ∣ a.natAbs := (Int.natAbs_dvd_natAbs).mpr ha
  have hb' : 3 ∣ b.natAbs := (Int.natAbs_dvd_natAbs).mpr hb
  exact Nat.dvd_gcd ha' hb'

/-- A coprime pair is not `0` at both residues mod `3`. -/
theorem mod3_not_both_zero (a b : Int) (hcop : a.natAbs.gcd b.natAbs = 1) :
    mod3 a ≠ 0 ∨ mod3 b ≠ 0 := by
  by_cases ha : mod3 a = 0
  · by_cases hb : mod3 b = 0
    · have h3 : 3 ∣ a.natAbs.gcd b.natAbs :=
        three_dvd_gcd a b (dvd_of_mod3_eq_zero a ha) (dvd_of_mod3_eq_zero b hb)
      rw [hcop] at h3
      have : 3 ≤ 1 := Nat.le_of_dvd (by decide) h3
      omega
    · exact Or.inr hb
  · exact Or.inl ha

theorem fourth_mod3 (n : Nat) : n ^ 4 % 3 = 0 ∨ n ^ 4 % 3 = 1 := by
  have hr : n % 3 = 0 ∨ n % 3 = 1 ∨ n % 3 = 2 := by omega
  have hp := Nat.pow_mod n 4 3
  rcases hr with h0 | h1 | h2
  · rw [hp, h0]; decide
  · rw [hp, h1]; decide
  · rw [hp, h2]; decide

theorem fourth_mod3_zero (n : Nat) (h : n ^ 4 % 3 = 0) : n % 3 = 0 := by
  have hr : n % 3 = 0 ∨ n % 3 = 1 ∨ n % 3 = 2 := by omega
  have hp := Nat.pow_mod n 4 3
  rcases hr with h0 | h1 | h2
  · exact h0
  · rw [hp, h1] at h
    omega
  · rw [hp, h2] at h
    omega

/-- `3` does not divide `c` for a coprime solution.

Fourth powers mod `3` are `0` or `1`, and the sum vanishes only if both do.
-/
theorem three_not_dvd_c (a b c : Int) (heq : a ^ 4 + b ^ 4 = c ^ 13)
    (hcop : a.natAbs.gcd b.natAbs = 1) : ¬ (3 : Int) ∣ c := by
  intro hc
  have hpow : (3 : Int) ∣ c ^ 13 := by
    have hc13 : c ∣ c ^ 13 := by
      rw [show c ^ 13 = c ^ 12 * c by rw [Int.pow_succ]]
      exact Int.dvd_mul_left _ _
    exact Int.dvd_trans hc hc13
  rw [← heq] at hpow
  have hnat : (3 : Nat) ∣ (a ^ 4 + b ^ 4).natAbs := (Int.natAbs_dvd_natAbs).mpr hpow
  have habs : (a ^ 4 + b ^ 4).natAbs = a.natAbs ^ 4 + b.natAbs ^ 4 := by
    have ha4 : (a ^ 4).natAbs = a.natAbs ^ 4 := Int.natAbs_pow a 4
    have hb4 : (b ^ 4).natAbs = b.natAbs ^ 4 := Int.natAbs_pow b 4
    have hsum' : (a ^ 4 + b ^ 4).natAbs = (a ^ 4).natAbs + (b ^ 4).natAbs :=
      Int.natAbs_add_of_nonneg (Int.pow_nonneg_of_even (by decide : (4 : Nat) % 2 = 0))
        (Int.pow_nonneg_of_even (by decide : (4 : Nat) % 2 = 0))
    rw [hsum', ha4, hb4]
  rw [habs] at hnat
  have hsum : (a.natAbs ^ 4 + b.natAbs ^ 4) % 3 = 0 := Nat.mod_eq_zero_of_dvd hnat
  have hmod : (a.natAbs ^ 4 + b.natAbs ^ 4) % 3 =
      ((a.natAbs ^ 4 % 3) + (b.natAbs ^ 4 % 3)) % 3 := Nat.add_mod _ _ _
  have ha4 := fourth_mod3 a.natAbs
  have hb4 := fourth_mod3 b.natAbs
  rcases ha4 with ha0 | ha1
  · rcases hb4 with hb0 | hb1
    · have hga : 3 ∣ a.natAbs := Nat.dvd_of_mod_eq_zero (fourth_mod3_zero _ ha0)
      have hgb : 3 ∣ b.natAbs := Nat.dvd_of_mod_eq_zero (fourth_mod3_zero _ hb0)
      have hgcd : 3 ∣ a.natAbs.gcd b.natAbs := Nat.dvd_gcd hga hgb
      rw [hcop] at hgcd
      have : 3 ≤ 1 := Nat.le_of_dvd (by decide) hgcd
      omega
    · rw [hmod, ha0, hb1] at hsum
      omega
  · rcases hb4 with hb0 | hb1
    · rw [hmod, ha1, hb0] at hsum
      omega
    · rw [hmod, ha1, hb1] at hsum
      omega

/-- `a_3 = 0` gives `trace(Frob_3²) = a_3² - 2·3 = -6`. -/
theorem frob_square_trace_at_3 : (0 : Int) * 0 - 2 * 3 = -6 := by
  decide

/-- `-6 ≡ 7 (mod 13)`. -/
theorem neg_six_cong_seven : (13 : Int) ∣ 7 - (-6) := by
  decide

/-- The Weil-restriction residue `10` is not the extension residue `-6`.

`2 · 10 ≡ -6 (mod 13)`, which is candidate (b), and `10 ≢ -6 (mod 13)`.
-/
theorem weil_sum_residue_ten :
    (13 : Int) ∣ 2 * 10 - (-6) ∧ ¬ (13 : Int) ∣ 10 - (-6) := by
  decide

/-- Each admissible `𝔽₉` trace differs from `-6` and from `7`. -/
theorem not_thirteen_dvd_trace_minus_neg_six (t : Int)
    (h : t = 6 ∨ t = -2 ∨ t = 4) :
    ¬ (13 : Int) ∣ t - (-6) ∧ ¬ (13 : Int) ∣ t - 7 := by
  rcases h with h | h | h
  · rw [h]; decide
  · rw [h]; decide
  · rw [h]; decide

/-- The rejected residue `10` is also disjoint from `{-2, 4, 6}`.

Disjointness does not choose the formalism. `qcurve_isogeny_input` does.
-/
theorem not_thirteen_dvd_trace_minus_ten (t : Int)
    (h : t = 6 ∨ t = -2 ∨ t = 4) : ¬ (13 : Int) ∣ t - 10 := by
  rcases h with h | h | h
  · rw [h]; decide
  · rw [h]; decide
  · rw [h]; decide

/-- No admissible residue mod `3` has Frey trace `-6` mod `13`. -/
theorem freyTrace3_not_cong_neg_six (a b : Nat) (ha : a < 3) (hb : b < 3)
    (hne : a ≠ 0 ∨ b ≠ 0) :
    ¬ (13 : Int) ∣ freyTrace3 a b - (-6) := by
  have hsplit : a = 0 ∨ a = 1 ∨ a = 2 := by omega
  have hsplitb : b = 0 ∨ b = 1 ∨ b = 2 := by omega
  rcases hsplit with ha0 | ha1 | ha2
  · rcases hsplitb with hb0 | hb1 | hb2
    · exact hne.elim (fun h => absurd ha0 h) (fun h => absurd hb0 h)
    · rw [ha0, hb1]
      exact (not_thirteen_dvd_trace_minus_neg_six _
        (Or.inl freyTrace3_table.1)).1
    · rw [ha0, hb2]
      exact (not_thirteen_dvd_trace_minus_neg_six _
        (Or.inl freyTrace3_table.2.1)).1
  · rcases hsplitb with hb0 | hb1 | hb2
    · rw [ha1, hb0]
      exact (not_thirteen_dvd_trace_minus_neg_six _
        (Or.inr (Or.inl freyTrace3_table.2.2.1))).1
    · rw [ha1, hb1]
      exact (not_thirteen_dvd_trace_minus_neg_six _
        (Or.inr (Or.inr freyTrace3_table.2.2.2.2.1))).1
    · rw [ha1, hb2]
      exact (not_thirteen_dvd_trace_minus_neg_six _
        (Or.inr (Or.inr freyTrace3_table.2.2.2.2.2.1))).1
  · rcases hsplitb with hb0 | hb1 | hb2
    · rw [ha2, hb0]
      exact (not_thirteen_dvd_trace_minus_neg_six _
        (Or.inr (Or.inl freyTrace3_table.2.2.2.1))).1
    · rw [ha2, hb1]
      exact (not_thirteen_dvd_trace_minus_neg_six _
        (Or.inr (Or.inr freyTrace3_table.2.2.2.2.2.2.1))).1
    · rw [ha2, hb2]
      exact (not_thirteen_dvd_trace_minus_neg_six _
        (Or.inr (Or.inr freyTrace3_table.2.2.2.2.2.2.2))).1

end Cm32

/-- The proved ℚ-curve input: the conjugate's Vélu target equals the twist
by `-2`, and the isogeny degree `2` is not divisible by `13`.

This is a coefficient identity. It is not a Galois representation. It
selects the extension, not Weil restriction. A 2-isogeny of degree coprime
to `13` is the cocycle of a projective representation of `G_ℚ` whose
2-dimensional lift restricts to `ρ̄_E` on `G_{ℚ(i)}`. Weil restriction of
`ρ̄_E` is 4-dimensional on `G_ℚ` and restricts as `ρ̄_E ⊕ ρ̄_{E^σ}`. A
weight-2 newform supplies a 2-dimensional residual representation, so the
direct-sum comparison is not the one `RibetLevel` can carry. The residue
of the extension at `𝔭₃` is `a_3² - 2·3`. The residue of the direct sum,
with equal summand traces, would be the class `10`. `Cm32.weil_sum_residue_ten`
separates them. The dimension comparison itself is not a formal theorem.
-/
theorem qcurve_isogeny_input (E : FreyCurve4413) :
    (FreyCurve4413.velu_target_A E = FreyCurve4413.twist_neg_two_A E ∧
        FreyCurve4413.velu_target_B E = FreyCurve4413.twist_neg_two_B E) ∧
      ¬ ((13 : Int) ∣ 2) :=
  ⟨FreyCurve4413.velu_target_eq_twist_neg_two E, thirteen_not_dvd_two⟩

/-- `rho_E_p` and `rho_E_p_twisted` are the unresolved marker.

`RibetLevel` still has no isomorphism field. `Newform` has no fields.
`LevelLowered` is opaque. `ResidualEqual` is not a field of `RibetOutput`.
The isomorphism the descent consumes is the second conjunct of
`ribet_level_lowering_4413`, projected by `modular_residual_13_open`.
-/
theorem modular_package_unresolved (E : FreyCurve4413) :
    rho_E_p E = GaloisRepresentation.unresolved ∧
      rho_E_p_twisted E = GaloisRepresentation.unresolved :=
  ⟨rfl, rfl⟩

/-- The coefficient ℚ-curve relation does not force the residue `-6`.

`FreyCurve4413.trivial` is `(1, 0, 1)`. It is a ℚ-curve, and its `𝔽₉` trace
is `-2`. An open stated for bare `IsQCurve` would be false.
-/
theorem coefficient_qcurve_misses_neg_six :
    FreyCurve4413.IsQCurve FreyCurve4413.trivial ∧
      ¬ ((13 : Int) ∣ Cm32.freyTrace3 (Cm32.mod3 FreyCurve4413.trivial.a)
          (Cm32.mod3 FreyCurve4413.trivial.b) - (-6)) := by
  refine ⟨FreyCurve4413.FreyQCurve_is_QCurve _, ?_⟩
  have ha : FreyCurve4413.trivial.a = 1 := rfl
  have hb : FreyCurve4413.trivial.b = 0 := rfl
  rw [ha, hb]
  have hma : Cm32.mod3 (1 : Int) = 1 := by decide
  have hmb : Cm32.mod3 (0 : Int) = 0 := by decide
  rw [hma, hmb]
  have htr : Cm32.freyTrace3 1 0 = -2 := Cm32.freyTrace3_table.2.2.1
  rw [htr]
  decide

/-- Coefficient data for `μ : E^σ → E^{(-2)}`.

`FreyQCurve_is_QCurve` supplies the twist `-2` and the Vélu numerator
degree `2`. `qcurve_isogeny_input` supplies the equality of Weierstrass
coefficients with that twist, and `13 ∤ 2`. The target is the twist, not
`E`. This is not a map on a mod-`13` Tate module. The scalars below are
what `μ_* ∘ σ(μ_*)` would act by once that map exists.
-/
theorem mu_coefficient_data (E : FreyCurve4413) :
    (∃ twistBy : Int, ∃ degree : Nat,
      twistBy = -2 ∧ degree = 2 ∧
        (FreyCurve4413.velu_target_A E = FreyCurve4413.twist_neg_two_A E ∧
          FreyCurve4413.velu_target_B E = FreyCurve4413.twist_neg_two_B E)) ∧
      ¬ ((13 : Int) ∣ 2) := by
  refine ⟨?_, (qcurve_isogeny_input E).2⟩
  rcases FreyCurve4413.FreyQCurve_is_QCurve E with ⟨tw, deg, htw, hdeg, hcoeff⟩
  exact ⟨tw, deg, htw, hdeg, hcoeff⟩

/-- Each factor has degree `2`, so the composition has degree `4`.
Both signs square to the same degree. -/
theorem isogeny_composition_degree :
    (2 : Int) * 2 = 4 ∧ ((-2 : Int) * -2) = 4 := by
  decide

/-- An endomorphism scalar of a degree-`4` isogeny satisfies `n² = 4`,
hence `n = 2` or `n = -2`. -/
theorem scalar_of_degree_four (n : Int) (hn : n * n = 4) : n = 2 ∨ n = -2 := by
  have hprod : (n - 2) * (n + 2) = 0 := by
    grind
  rcases Int.mul_eq_zero.mp hprod with h | h
  · left
    exact Int.sub_eq_zero.mp h
  · right
    have hsub : n - (-2) = n + 2 := by
      rw [Int.sub_eq_add_neg, Int.neg_neg]
    apply Int.sub_eq_zero.mp
    rw [hsub]
    exact h

/-- `χ_{-2}` takes values in `{±1}`, so `χ_{-2}(σ)² = 1`. -/
theorem chi_neg_two_square (ε : Int) (h : ε = 1 ∨ ε = -1) : ε * ε = 1 := by
  rcases h with rfl | rfl
  · decide
  · decide

/-- The square of the character does not move the scalar `n`. -/
theorem twist_factor_fixes_scalar (n ε : Int) (hε : ε = 1 ∨ ε = -1) :
    n * (ε * ε) = n := by
  rw [chi_neg_two_square ε hε, Int.mul_one]

/-- `μ_* ∘ σ(μ_*)`, up to the twist, is `[n]` with `n = ±2`.
The factor `χ_{-2}(σ)²` equals `1`. -/
theorem intertwiner_endomorphism_scalar (n ε : Int)
    (hn : n * n = 4) (hε : ε = 1 ∨ ε = -1) :
    n * (ε * ε) = 2 ∨ n * (ε * ε) = -2 := by
  rw [twist_factor_fixes_scalar n ε hε]
  exact scalar_of_degree_four n hn

/-- `(-1 / 3) = (-1)^{(3 - 1) / 2} = -1`. -/
theorem legendre_neg_one_at_three : (-1 : Int) ^ ((3 - 1) / 2) = -1 := by
  decide

/-- `(2 / 3) = (-1)^{(3² - 1) / 8} = -1`, since `3 ≡ 3 (mod 8)`. -/
theorem legendre_two_at_three : (-1 : Int) ^ ((3 * 3 - 1) / 8) = -1 := by
  decide

theorem three_mod_eight : (3 : Nat) % 8 = 3 := by
  decide

/-- `(-2 / 3) = (-1 / 3) (2 / 3) = 1`. -/
theorem legendre_neg_two_at_three :
    ((-1 : Int) ^ ((3 - 1) / 2)) * ((-1 : Int) ^ ((3 * 3 - 1) / 8)) = 1 := by
  decide

/-- Multiplying `a_3² - 2·3` by `χ_{-2}(Frob_3²) = χ(Frob_3)² = 1`
leaves `-6`. -/
theorem twisted_frob_square_trace (ε : Int) (h : ε = 1 ∨ ε = -1) :
    ((0 : Int) * 0 - 2 * 3) * (ε * ε) = -6 := by
  rw [chi_neg_two_square ε h, Cm32.frob_square_trace_at_3]
  decide

/-- The same trace, multiplied by the Legendre value `(-2 / 3) = 1`. -/
theorem trace_unmoved_by_legendre :
    ((0 : Int) * 0 - 2 * 3) *
      (((-1 : Int) ^ ((3 - 1) / 2)) * ((-1 : Int) ^ ((3 * 3 - 1) / 8))) = -6 := by
  rw [legendre_neg_two_at_three, Cm32.frob_square_trace_at_3]
  decide

/-- Nonzero squares in `𝔽₁₃` are `{1, 3, 4, 9, 10, 12}`. -/
theorem unit_square_residues (k : Nat) (hk : k < 13) (hk0 : k ≠ 0) :
    (k * k) % 13 = 1 ∨ (k * k) % 13 = 3 ∨ (k * k) % 13 = 4 ∨
      (k * k) % 13 = 9 ∨ (k * k) % 13 = 10 ∨ (k * k) % 13 = 12 := by
  have hor : k = 0 ∨ k = 1 ∨ k = 2 ∨ k = 3 ∨ k = 4 ∨ k = 5 ∨ k = 6 ∨
      k = 7 ∨ k = 8 ∨ k = 9 ∨ k = 10 ∨ k = 11 ∨ k = 12 := by omega
  rcases hor with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl
  · exact absurd rfl hk0
  all_goals decide

/-- `2` and `11` are not squares in `𝔽₁₃`. These are the residues of `±2`. -/
theorem two_and_eleven_not_squares (k : Nat) (hk : k < 13) :
    (k * k) % 13 ≠ 2 ∧ (k * k) % 13 ≠ 11 := by
  have hor : k = 0 ∨ k = 1 ∨ k = 2 ∨ k = 3 ∨ k = 4 ∨ k = 5 ∨ k = 6 ∨
      k = 7 ∨ k = 8 ∨ k = 9 ∨ k = 10 ∨ k = 11 ∨ k = 12 := by omega
  rcases hor with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl
  all_goals decide

/-- `-2 ≡ 11 (mod 13)` and `2 ≡ 2`. -/
theorem neg_two_residue : (-2 : Int) % 13 = 11 ∧ (2 : Int) % 13 = 2 := by
  decide

/-- No `c` in `𝔽₁₃` satisfies `c² · u = 1` for `u ∈ {2, 11}`.

This is the failure of the linear rescaling over `𝔽₁₃`. It is not a claim
that every representation `G_ℚ → GL₂(𝔽₁₃)` is absent. It is the statement
that an intertwiner with `M₀² = u I` cannot be rescaled to `M² = I` by a
scalar of `𝔽₁₃`.
-/
theorem f13_no_rescale (c : Nat) (hc : c < 13) :
    (c * c * 2) % 13 ≠ 1 ∧ (c * c * 11) % 13 ≠ 1 := by
  have hor : c = 0 ∨ c = 1 ∨ c = 2 ∨ c = 3 ∨ c = 4 ∨ c = 5 ∨ c = 6 ∨
      c = 7 ∨ c = 8 ∨ c = 9 ∨ c = 10 ∨ c = 11 ∨ c = 12 := by omega
  rcases hor with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl
  all_goals decide

/-- The scalar `u = n · χ_{-2}(σ)²` is `±2`, its residues are not squares,
and neither residue has a rescaling to `1`. -/
theorem f13_linear_lift_scalar_fails (n ε : Int) (k : Nat)
    (hn : n * n = 4) (hε : ε = 1 ∨ ε = -1) (hk : k < 13) :
    (n * (ε * ε) = 2 ∨ n * (ε * ε) = -2) ∧
      (k * k) % 13 ≠ 2 ∧ (k * k) % 13 ≠ 11 ∧
      (k * k * 2) % 13 ≠ 1 ∧ (k * k * 11) % 13 ≠ 1 := by
  refine ⟨intertwiner_endomorphism_scalar n ε hn hε, ?_⟩
  have hsq := two_and_eleven_not_squares k hk
  have hre := f13_no_rescale k hk
  exact ⟨hsq.1, hsq.2, hre.1, hre.2⟩

/-- Multiplication in `𝔽₁₃[√2]`: `(x₁ + y₁ √2)(x₂ + y₂ √2)`. -/
def mul169 (a b : Nat × Nat) : Nat × Nat :=
  ((a.1 * b.1 + 2 * a.2 * b.2) % 13, (a.1 * b.2 + a.2 * b.1) % 13)

/-- Powers in `𝔽₁₃[√2]`. `pow169 a 0` is `1`. -/
def pow169 (a : Nat × Nat) : Nat → Nat × Nat
  | 0 => (1, 0)
  | n + 1 => mul169 a (pow169 a n)

/-- The nontrivial automorphism of `𝔽₁₆₉` over `𝔽₁₃`: `√2 ↦ -√2`. -/
def conj169 (a : Nat × Nat) : Nat × Nat :=
  (a.1 % 13, (13 - a.2 % 13) % 13)

/-- `2 = (√2)²` in `𝔽₁₃[√2]`. -/
theorem f169_two_is_square : mul169 (0, 1) (0, 1) = (2, 0) := by
  decide

/-- `-2 ≡ 11 = (5 √2)²` in `𝔽₁₃[√2]`. -/
theorem f169_neg_two_is_square : mul169 (0, 5) (0, 5) = (11, 0) := by
  decide

/-- `c = 7 √2` satisfies `c² · 2 = 1`. -/
theorem f169_rescale_two : mul169 (mul169 (0, 7) (0, 7)) (2, 0) = (1, 0) := by
  decide

/-- `c = 4 √2` satisfies `c² · 11 = 1`. -/
theorem f169_rescale_neg_two : mul169 (mul169 (0, 4) (0, 4)) (11, 0) = (1, 0) := by
  decide

/-- Both intertwiner scalars rescale to `1` over `𝔽₁₆₉`, and both are squares. -/
theorem f169_linear_lift_scalar_exists :
    mul169 (0, 1) (0, 1) = (2, 0) ∧
      mul169 (0, 5) (0, 5) = (11, 0) ∧
      mul169 (mul169 (0, 7) (0, 7)) (2, 0) = (1, 0) ∧
      mul169 (mul169 (0, 4) (0, 4)) (11, 0) = (1, 0) :=
  ⟨f169_two_is_square, f169_neg_two_is_square, f169_rescale_two, f169_rescale_neg_two⟩

/-- `(√2)¹³ = 2⁶ √2` and `2⁶ = 64 ≡ -1 (mod 13)`, so Frobenius sends `√2` to `-√2`. -/
theorem sqrt_two_frobenius : pow169 (0, 1) 13 = (0, 12) ∧ (2 ^ 6) % 13 = 12 := by
  decide

def frobSweep : Nat → Bool
  | 0 => true
  | k + 1 =>
    (pow169 (k / 13, k % 13) 13 == conj169 (k / 13, k % 13)) && frobSweep k

theorem frobSweep_step (k : Nat) :
    frobSweep (k + 1) =
      ((pow169 (k / 13, k % 13) 13 == conj169 (k / 13, k % 13)) && frobSweep k) :=
  rfl

private theorem bool_and_left (a b : Bool) (h : (a && b) = true) : a = true := by
  match a, b with
  | true, true => rfl
  | true, false => simp [Bool.and] at h
  | false, true => simp [Bool.and] at h
  | false, false => simp [Bool.and] at h

private theorem bool_and_right (a b : Bool) (h : (a && b) = true) : b = true := by
  match a, b with
  | true, true => rfl
  | true, false => simp [Bool.and] at h
  | false, true => simp [Bool.and] at h
  | false, false => simp [Bool.and] at h

/-- Every one of the `169` residue classes satisfies `z¹³ = conjugate(z)`. -/
theorem f169_frobenius_sweep : frobSweep 169 = true := by
  decide

private theorem nat_eq_of_beq (a b : Nat) (h : (a == b) = true) : a = b :=
  (beq_iff_eq).mp h

private theorem pair_eq_of_beq (p q : Nat × Nat) (h : (p == q) = true) : p = q := by
  have hprod : ((p.1 == q.1) && (p.2 == q.2)) = true := by
    simpa [BEq.beq] using h
  exact Prod.ext (nat_eq_of_beq _ _ (bool_and_left _ _ hprod))
    (nat_eq_of_beq _ _ (bool_and_right _ _ hprod))

private theorem frob_at_index (n k : Nat) (hk : k < n) (h : frobSweep n = true) :
    (pow169 (k / 13, k % 13) 13 == conj169 (k / 13, k % 13)) = true := by
  induction n with
  | zero => omega
  | succ n ih =>
    rw [frobSweep_step] at h
    by_cases hlt : k < n
    · exact ih hlt (bool_and_right _ _ h)
    · have hk' : k = n := by omega
      rw [hk']
      exact bool_and_left _ _ h

/-- Frobenius of `𝔽₁₆₉` over `𝔽₁₃` is the conjugation `√2 ↦ -√2`. -/
theorem f169_frobenius (x y : Nat) (hx : x < 13) (hy : y < 13) :
    pow169 (x, y) 13 = conj169 (x, y) := by
  have hk : x * 13 + y < 169 := by omega
  have hidx := frob_at_index 169 (x * 13 + y) hk f169_frobenius_sweep
  have hdiv : (x * 13 + y) / 13 = x := by omega
  have hmod : (x * 13 + y) % 13 = y := by omega
  rw [hdiv, hmod] at hidx
  exact pair_eq_of_beq _ _ hidx

/-- A class fixed by conjugation has vanishing `√2` coefficient. -/
theorem conj_fixed_is_prime_field (x y : Nat) (hx : x < 13) (hy : y < 13)
    (h : conj169 (x, y) = (x, y)) : y = 0 := by
  have h2 : (13 - y % 13) % 13 = y := by
    have := congrArg Prod.snd h
    simpa [conj169, Nat.mod_eq_of_lt hx] using this
  have hym : y % 13 = y := Nat.mod_eq_of_lt hy
  rw [hym] at h2
  cases y with
  | zero => rfl
  | succ y =>
    have hlt : 13 - (y + 1) < 13 := by omega
    rw [Nat.mod_eq_of_lt hlt] at h2
    omega

/-- Prime-field classes are fixed by conjugation. -/
theorem prime_field_fixed (x : Nat) (hx : x < 13) : conj169 (x, 0) = (x, 0) := by
  unfold conj169
  have hfst : (x, 0).fst % 13 = x := Nat.mod_eq_of_lt hx
  have hsnd : (13 - (x, 0).snd % 13) % 13 = 0 := by
    have hz : (x, 0).snd = 0 := rfl
    rw [hz]
  exact Prod.ext hfst hsnd

/-- The trace value `-6` is the class `(7, 0)`.
It is fixed by Frobenius, so it lies in `𝔽₁₃`. -/
theorem trace_neg_six_in_prime_field :
    (0 : Int) * 0 - 2 * 3 = -6 ∧
      (-6 : Int) % 13 = 7 ∧
      conj169 (7, 0) = (7, 0) ∧
      pow169 (7, 0) 13 = (7, 0) := by
  refine ⟨Cm32.frob_square_trace_at_3, ?_, ?_, ?_⟩
  · decide
  · decide
  · decide

/-- The `𝔽₁₆₉` lift, as the trace the descent consumes.

A linear representation `G_ℚ → GL₂(𝔽₁₃)` whose cocycle is the intertwiner
of `mu_coefficient_data` would need a scalar `c` with `c² · u = 1` for
`u = ±2`. `f13_linear_lift_scalar_fails` says there is no such `c`.
`f169_linear_lift_scalar_exists` produces one in `𝔽₁₃[√2]`.
`trace_neg_six_in_prime_field` says the integer `-6` is fixed by Frobenius,
so a trace equal to `-6` lands in `𝔽₁₃`.

What is not formalized is the representation itself: a class
`ρ̄_ext` with values in `GL₂(𝔽₁₆₉)`, restriction to `G_{ℚ(i)}` isomorphic
to `ρ̄_E` up to `χ_{-2}`, and trace of `Frob_3²` equal to `-6`. The group
`H²(G_ℚ, 𝔽₁₆₉ˣ)` is not defined in this repository. The local class on the
conjugation is the class of `u`, and the square computation shows that
class is a coboundary. Tate's vanishing theorem is not proved, and it is
not a separate hypothesis: this proposition is the trace the elimination
uses. `rho_E_p` stays unresolved. This is not a bare `IsQCurve` statement.
-/
def qcurve_extension_169_open : Prop :=
  ∀ (a b c : Int) (E : FreyCurve4413) (N : Nat),
    a ≠ 0 → b ≠ 0 →
    a.natAbs.gcd b.natAbs = 1 →
    E.a = a → E.b = b → E.c = c →
    Modular E →
    RibetLevel c E N →
    (FreyCurve4413.velu_target_A E = FreyCurve4413.twist_neg_two_A E ∧
        FreyCurve4413.velu_target_B E = FreyCurve4413.twist_neg_two_B E) →
    ¬ ((13 : Int) ∣ 2) →
    (13 : Int) ∣ Cm32.freyTrace3 (Cm32.mod3 a) (Cm32.mod3 b) - (-6)

/-- The old extension congruence, from the `𝔽₁₆₉` trace.

`frob_square_trace_at_3` rewrites `-6` as `0² - 2·3`. The value is the
same integer, and `trace_neg_six_in_prime_field` places it in `𝔽₁₃`.
-/
theorem qcurve_extension_13_open (hext : qcurve_extension_169_open) :
    ∀ (a b c : Int) (E : FreyCurve4413) (N : Nat),
      a ≠ 0 → b ≠ 0 →
      a.natAbs.gcd b.natAbs = 1 →
      E.a = a → E.b = b → E.c = c →
      Modular E →
      RibetLevel c E N →
      (FreyCurve4413.velu_target_A E = FreyCurve4413.twist_neg_two_A E ∧
          FreyCurve4413.velu_target_B E = FreyCurve4413.twist_neg_two_B E) →
      ¬ ((13 : Int) ∣ 2) →
      (13 : Int) ∣ Cm32.freyTrace3 (Cm32.mod3 a) (Cm32.mod3 b) -
        ((0 : Int) * 0 - 2 * 3) := by
  intro a b c E N ha hb hcop hEa hEb hEc hMod hRib hvelu hdeg
  have h := hext a b c E N ha hb hcop hEa hEb hEc hMod hRib hvelu hdeg
  rw [Cm32.frob_square_trace_at_3]
  exact h

/-- The residual isomorphism, projected from `ribet_level_lowering_4413`.

The statement is `GkResidualIso`: the `𝔽₉` trace is `-6` mod `13` for a
coprime modular curve with a `RibetLevel`. That is the fact
`no_newform_32_64_of_qcurve` applies. The proof is the second conjunct.
It does not construct a representation.
-/
theorem modular_residual_13_open : GkResidualIso :=
  ribet_level_lowering_4413.gkResidual

/-- Corrected descent: the `𝔽₉` trace is `-6` mod `13`, hence `7` mod `13`.

`qcurve_descent_13_of_bridge` derives it from `qcurve_extension_169_open`,
through `qcurve_extension_13_open`, and from `modular_residual_13_open`.
-/
def qcurve_descent_13_open : Prop :=
  ∀ (a b c : Int) (E : FreyCurve4413) (N : Nat),
    a ≠ 0 → b ≠ 0 →
    a.natAbs.gcd b.natAbs = 1 →
    E.a = a → E.b = b → E.c = c →
    Modular E →
    RibetLevel c E N →
    (13 : Int) ∣ Cm32.freyTrace3 (Cm32.mod3 a) (Cm32.mod3 b) - (-6)

/-- The extension and the projected isomorphism are the corrected descent.

The extension contributes `a_3² - 2·3` at `a_3 = 0`. `modular_residual_13_open`
contributes the class `-6`. `frob_square_trace_at_3` identifies them.
`Modular E` in the residual application is `frey_qcurve_modular`.
The cocycle lift is `qcurve_extension_169_open`.
-/
theorem qcurve_descent_13_of_bridge
    (hext : qcurve_extension_169_open) :
    qcurve_descent_13_open := by
  intro a b c E N ha hb hcop hEa hEb hEc hMod hRib
  have hvelu := qcurve_isogeny_input E
  have hpoly := qcurve_extension_13_open hext a b c E N ha hb hcop hEa hEb hEc
    hMod hRib hvelu.1 hvelu.2
  have hmark := modular_package_unresolved E
  have hModAx : Modular E := frey_qcurve_modular a b c E
  have hmod := modular_residual_13_open a b c E N ha hb hcop hEa hEb hEc
    hModAx hRib hmark.1 hmark.2
  rw [Cm32.frob_square_trace_at_3] at hpoly
  exact And.left ⟨hpoly, hmod⟩

/-- A coprime modular curve with a lowered newform cannot have Frey trace
`-6` mod `13` at the prime `3`, if the cocycle lift holds.

The point count is `freyTrace3_not_cong_neg_six`: the trace lies in
`{-2, 4, 6}`. The residual isomorphism is `modular_residual_13_open`.
The frontier definition `no_newform_32_64_open` is not rewritten.
-/
theorem lowered_form_contradicts_trace3
    (hext : qcurve_extension_169_open)
    (a b c : Int) (E : FreyCurve4413) (N : Nat)
    (ha : a ≠ 0) (hb : b ≠ 0)
    (hcop : a.natAbs.gcd b.natAbs = 1)
    (hEa : E.a = a) (hEb : E.b = b) (hEc : E.c = c)
    (hMod : Modular E) (hRib : RibetLevel c E N) : False := by
  have hdiv := qcurve_descent_13_of_bridge hext a b c E N ha hb hcop
    hEa hEb hEc hMod hRib
  have hne := Cm32.mod3_not_both_zero a b hcop
  exact Cm32.freyTrace3_not_cong_neg_six (Cm32.mod3 a) (Cm32.mod3 b)
    (Cm32.mod3_lt a) (Cm32.mod3_lt b) hne hdiv

/-- `no_newform_32_64_open` follows from the cocycle lift.

`modular_residual_13_open` is no longer a hypothesis. The extension
hypothesis is `qcurve_extension_169_open`. `0 < c` is the frontier
quantifier and is not used. The definition in
`DarmonMerel.«6_NoSolution4413»` is unchanged. This is not an
unconditional proof of that definition.
-/
theorem no_newform_32_64_of_qcurve
    (hext : qcurve_extension_169_open) :
    no_newform_32_64_open := by
  intro a b c E N ha hb hcop _hpos hEa hEb hEc hMod hRib
  exact lowered_form_contradicts_trace3 hext a b c E N ha hb hcop
    hEa hEb hEc hMod hRib

