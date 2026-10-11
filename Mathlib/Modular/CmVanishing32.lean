import DarmonMerel.«6_NoSolution4413»

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
over `𝔽₉` then has trace in `{-2, 4, 6}`, so the trace is not `0` mod `13`.

`ρ̄_f` is a representation of `G_ℚ` and `ρ̄_E` is a representation of
`G_{ℚ(i)}`. `LevelLowered` is sealed and does not equate a Hecke eigenvalue
with this point count. That comparison is `qcurve_descent_13_open`.
`lowered_form_contradicts_trace3` is `False` conditional on it. It is not
`no_newform_32_64_open`.
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

/-- `𝔽₉ = 𝔽₃[i]`, with `i² = -1 ≡ 2`. -/
abbrev F9 := Nat × Nat

def f9Add (z w : F9) : F9 :=
  ((z.1 + w.1) % 3, (z.2 + w.2) % 3)

def f9Mul (z w : F9) : F9 :=
  ((z.1 * w.1 + 3 - z.2 * w.2 % 3) % 3, (z.1 * w.2 + z.2 * w.1) % 3)

def f9Sq (z : F9) : F9 :=
  f9Mul z z

def nY (z : F9) : Nat :=
  go 9
where go : Nat → Nat
  | 0 => 0
  | k + 1 =>
    let y : F9 := (k / 3, k % 3)
    (if f9Sq y = z then 1 else 0) + go k

def freyRhs (a b : Nat) (x : F9) : F9 :=
  let A : F9 := ((4 * a) % 3, 0)
  let B := f9Mul (2, 0) (f9Add ((a * a) % 3, 0) (0, (b * b) % 3))
  let xx := f9Sq x
  f9Add (f9Add (f9Mul xx x) (f9Mul A xx)) (f9Mul B x)

def affine3 (a b : Nat) : Nat :=
  go 9
where go : Nat → Nat
  | 0 => 0
  | k + 1 =>
    let x : F9 := (k / 3, k % 3)
    nY (freyRhs a b x) + go k

/-- Trace of the Frey model over `𝔽₉` at residues `a, b ∈ {0, 1, 2}`. -/
def freyTrace3 (a b : Nat) : Int :=
  10 - (1 + affine3 a b : Nat)

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

/-- Nonnegative residue of an integer mod `3`. -/
def mod3 (a : Int) : Nat :=
  (a % 3).toNat

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

end Cm32

/-- The lowered newform's residual trace at the inert prime `3` matches the
Frey point count over `𝔽₉`.

`ρ̄_f` is a representation of `G_ℚ`. `ρ̄_E` is a representation of `G_{ℚ(i)}`.
`LevelLowered` is sealed and stores no Hecke eigenvalue. `Newform` does not
identify `RibetOutput.g` with `eig32` or `eig64`. The eigenvalues
`a_3 = 0` on those lines are `Cm32.cm_vanish_32` and `Cm32.cm_vanish_64`.
This proposition is the missing comparison: for a coprime curve with
`a ≠ 0` and `b ≠ 0`, modularity and a `RibetLevel` force the `𝔽₉` trace to
be `0` modulo `13`. It is not a theorem.
-/
def qcurve_descent_13_open : Prop :=
  ∀ (a b c : Int) (E : FreyCurve4413) (N : Nat),
    a ≠ 0 → b ≠ 0 →
    a.natAbs.gcd b.natAbs = 1 →
    E.a = a → E.b = b → E.c = c →
    Modular E →
    RibetLevel c E N →
    (13 : Int) ∣ Cm32.freyTrace3 (Cm32.mod3 a) (Cm32.mod3 b)

/-- A coprime modular curve with a lowered newform cannot have Frey trace `0`
mod `13` at the prime `3`, if the ℚ-curve comparison holds.

Conditional on `qcurve_descent_13_open`. `three_not_dvd_c` keeps `3` out of
`c`, and `freyTrace3_not_div_13` is the point count. This is not
`no_newform_32_64_open`: that proposition has no trace hypothesis, and this
theorem does not rewrite it.
-/
theorem lowered_form_contradicts_trace3
    (hdesc : qcurve_descent_13_open)
    (a b c : Int) (E : FreyCurve4413) (N : Nat)
    (ha : a ≠ 0) (hb : b ≠ 0)
    (hcop : a.natAbs.gcd b.natAbs = 1)
    (hEa : E.a = a) (hEb : E.b = b) (hEc : E.c = c)
    (hMod : Modular E) (hRib : RibetLevel c E N) : False := by
  have hdiv := hdesc a b c E N ha hb hcop hEa hEb hEc hMod hRib
  have hne := Cm32.mod3_not_both_zero a b hcop
  exact Cm32.freyTrace3_not_div_13 (Cm32.mod3 a) (Cm32.mod3 b)
    (Cm32.mod3_lt a) (Cm32.mod3_lt b) hne hdiv

