import Mathlib.Modular.DiscriminantNorm
import Mathlib.Modular.Rank0_32a1
import Mathlib.Modular.EllipticCurveMinimal

/-!
# What Ribet's level still needs

`discriminant_norm` proves `N(Δ) = 2¹⁸ c³⁹` for
`Δ = 2⁹ (a² + b² √(-1)) c¹³`. Since `a⁴ + b⁴ = c¹³`, the factor
`a² + b² √(-1)` has field norm `c¹³`, and `c³⁹ = (c³)¹³`, so

```
N(Δ) = 2¹⁸ (c³)¹³.
```

That is `discriminant_norm_odd_part`. For an odd prime `p` dividing `c`,
the exponent of `p` in this norm is a multiple of `13`. This is an identity
in `ℤ`. It is not finiteness of a residual Galois representation, and it is
not Tate's algorithm.

## FreyConductor_OPEN

Tate's algorithm at `2` is not formalized. `FreyConductor_OPEN E N` is the
hypothesis that a caller-supplied integer `N` equals `32 c²` or `64 c²`
(`2⁵ c²` or `2⁶ c²`). No theorem produces the conductor. The numerical
fact `32 * c ^ 2 = 32 * c ^ 2` does not compute one. The lowered level is
not placed in `{32, 64}`.

## rho_E_13_OPEN

`xDivisionDegree 13 = 84` is the count `(13² - 1) / 2`. The polynomial
`ψ₁₃` is constructed in `EllipticCurveMinimal`. `psi13_no_Qi_root_Frey_OPEN`
is not a theorem. `Irreducibility13.lean` records that statement as
`Psi13HasNoQiRoot`. `RhoE13Open` does not imply it: a missing root in
`ℚ(√-1)` is not absolute irreducibility of `ρ_{E,13}`. The image would
have to contain `SL₂(𝔽₁₃)`. `RhoE13NeedsSL2` records that gap. It is not
an axiom.

`rho_E_13` is the existing marker `GaloisRepresentation.unresolved`.
`RhoE13Open` is sealed. Nothing produces a term of that type.

## From the conductor to the level

`ribet_level_lowering_4413` takes one `N` with `FreyConductorDivides c N`,
`RhoE13Open E`, and `pacetti_2_8_open`. It returns one `RibetLevel`:
`n = 32 ∨ n = 64`, `n ∣ N`, coprimality to the primes dividing `|c|`, and
a `RibetOutput`. The disjunction is part of the axiom. `32 ∣ n` is
`RibetLevel.thirtyTwo_dvd`.

`n_dvd_32_or_64_of_prime_to_c` removes those primes and concludes
`n ∣ 32` or `n ∣ 64`. The positive divisors of `64` are
`1, 2, 4, 8, 16, 32, 64`. `TateAt2LowerBound E n` packages a minimal model,
Pacetti's exponent in `{10, 12}`, and the conjunct `n = 32 ∨ n = 64`.
It is not an axiom and not a theorem. `thirtyTwo_dvd_of_tate_bound` uses
only that disjunction. `thirtyTwo_dvd_of_conductor_shape` is the true
half for `N`: the shape forces `32 ∣ N`. `shape_dvd_does_not_give_thirtyTwo`
is `N = 32`, `n = 1`, `c = 1`. Coprimality holds there because no prime
divides `1`, and `32` does not divide `1`. If `c` is odd,
`tate_lower_bound_of_c_odd` gives `v₂(N(Δ)) = 18`. That is the field norm.
`c4_Frey` is divisible by `2⁵` in each component and `c6_Frey` by `2⁸`.
Those contents are not conductor exponents.
-/

/-- Classical count `(p² - 1) / 2` of the x-coordinates of the nonzero
`p`-torsion of an elliptic curve, for odd `p`.

This is arithmetic. It is not a division polynomial. -/
def xDivisionDegree (p : Nat) : Nat :=
  (p * p - 1) / 2

theorem xDivisionDegree_13 : xDivisionDegree 13 = 84 := by
  decide

namespace FreyCurve4413

/-- `N(Δ) = 2¹⁸ (c³)¹³`.

The odd part of the norm is a thirteenth power. This rewrites
`discriminant_norm`. -/
theorem discriminant_norm_odd_part (E : FreyCurve4413) :
    E.discriminant_re ^ 2 + E.discriminant_im ^ 2 =
      (2 : ℤ) ^ 18 * (E.c ^ 3) ^ 13 := by
  rw [discriminant_norm E]
  have hpow : E.c ^ 39 = (E.c ^ 3) ^ 13 := by
    have h39 : (39 : Nat) = 3 * 13 := rfl
    rw [h39, Int.pow_mul]
  rw [hpow]

/-- `2¹⁸ ∣ N(Δ)`, from `N(Δ) = 2¹⁸ c³⁹`. -/
theorem two_pow_eighteen_dvd_discriminant_norm (E : FreyCurve4413) :
    (2 : ℤ) ^ 18 ∣ E.discriminant_re ^ 2 + E.discriminant_im ^ 2 := by
  rw [discriminant_norm E]
  exact ⟨E.c ^ 39, rfl⟩

/-- `FreyConductor_OPEN`.

Hypothesis that `N` equals `32 c²` or `64 c²`. Tate's algorithm is not
formalized, so this file has no proof that the conductor satisfies it.
-/
def FreyConductor_OPEN (E : FreyCurve4413) (N : ℤ) : Prop :=
  N = 32 * E.c ^ 2 ∨ N = 64 * E.c ^ 2

/-- The residual representation attached to `E` in this development.

This is `rho_E_p`, the unresolved marker. It is not built from `13`-torsion.
-/
def rho_E_13 (E : FreyCurve4413) : GaloisRepresentation :=
  rho_E_p E

theorem rho_E_13_is_unresolved (E : FreyCurve4413) :
    rho_E_13 E = GaloisRepresentation.unresolved :=
  rfl

/-- `rho_E_13_OPEN`: both representation markers are unresolved. -/
theorem rho_E_p_is_unresolved (E : FreyCurve4413) :
    rho_E_p E = GaloisRepresentation.unresolved ∧
      rho_E_p_twisted E = GaloisRepresentation.unresolved ∧
      rho_E_13 E = GaloisRepresentation.unresolved :=
  ⟨rfl, rfl, rfl⟩

/-- `z² = |z|²` in `ℤ`. -/
theorem int_sq_natAbs (z : ℤ) : z ^ 2 = ↑(z.natAbs ^ 2) := by
  cases z with
  | ofNat k =>
    simp [Int.natAbs]
  | negSucc k =>
    simp [Int.natAbs, Int.negSucc_pow]

theorem FreyConductor_OPEN.toDivides {E : FreyCurve4413} {N : ℕ}
    (h : FreyConductor_OPEN E (N : ℤ)) : FreyConductorDivides E.c N := by
  have hsq : E.c ^ 2 = ↑(E.c.natAbs ^ 2) := int_sq_natAbs E.c
  rcases h with h | h
  · left
    have hZ : (N : ℤ) = (32 : ℤ) * ↑(E.c.natAbs ^ 2) := by
      rw [h, hsq]
    have hmul : ((32 * E.c.natAbs ^ 2 : Nat) : ℤ) =
        (32 : ℤ) * ↑(E.c.natAbs ^ 2) := by
      rw [Int.natCast_mul]
      simp
    have heq : (N : ℤ) = ((32 * E.c.natAbs ^ 2 : Nat) : ℤ) := by
      rw [hZ, ← hmul]
    exact Int.ofNat.inj heq
  · right
    have hZ : (N : ℤ) = (64 : ℤ) * ↑(E.c.natAbs ^ 2) := by
      rw [h, hsq]
    have hmul : ((64 * E.c.natAbs ^ 2 : Nat) : ℤ) =
        (64 : ℤ) * ↑(E.c.natAbs ^ 2) := by
      rw [Int.natCast_mul]
      simp
    have heq : (N : ℤ) = ((64 * E.c.natAbs ^ 2 : Nat) : ℤ) := by
      rw [hZ, ← hmul]
    exact Int.ofNat.inj heq

/-- Conductor hypothesis, `RhoE13Open`, the Tate bound, and one Ribet level.

`hOpen` is transported to `FreyConductorDivides`. `hLower` is
`pacetti_2_8_open`. The axiom returns one level, and that package stores
`n = 32 ∨ n = 64`. This theorem only keeps the existence of the newform.
`hOpen` and `hRho` are not theorems.
-/
theorem ribet_given_open_hypotheses
    (E : FreyCurve4413) (N : ℕ)
    (hOpen : FreyConductor_OPEN E (N : ℤ))
    (hRho : RhoE13Open E)
    (hLower : pacetti_2_8_open) :
    E.discriminant_re ^ 2 + E.discriminant_im ^ 2 =
        (2 : ℤ) ^ 18 * (E.c ^ 3) ^ 13 ∧
      FreyConductor_OPEN E (N : ℤ) ∧
      RhoE13Open E ∧
      ∃ n : ℕ, ∃ g : Newform n, LevelLowered E g := by
  refine ⟨discriminant_norm_odd_part E, hOpen, hRho, ?_⟩
  have hCond : FreyConductorDivides E.c N := FreyConductor_OPEN.toDivides hOpen
  let pkg : RibetLevel E.c E N := ribet_level_lowering_4413 N hCond hRho hLower
  exact ⟨pkg.level, pkg.output.g, pkg.output.lowered⟩

theorem thirtyTwo_mul_dvd_sixtyFour (m : ℕ) : 32 * m ∣ 64 * m := by
  refine ⟨2, ?_⟩
  calc
    64 * m = (32 * 2) * m := by rw [show 64 = 32 * 2 by decide]
    _ = 32 * (2 * m) := Nat.mul_assoc 32 2 m
    _ = 32 * (m * 2) := by rw [Nat.mul_comm 2 m]
    _ = (32 * m) * 2 := (Nat.mul_assoc 32 m 2).symm

/-- If `N` is `32 |c|²` or `64 |c|²` and `n ∣ N`, then `n ∣ 64 |c|²`.

`hRibet` is arithmetic. `RibetLevel.dvd` is a value of that hypothesis.
-/
theorem conductor_dvd_implies_level_dvd {c : ℤ} {N n : ℕ}
    (hCond : FreyConductorDivides c N) (hRibet : n ∣ N) :
    n ∣ 64 * c.natAbs ^ 2 := by
  rcases hCond with hCond | hCond
  · rw [hCond] at hRibet
    exact Nat.dvd_trans hRibet (thirtyTwo_mul_dvd_sixtyFour (c.natAbs ^ 2))
  · rwa [hCond] at hRibet

/-- Same divisibility, with the hypothesis `n ∣ N` written first.

`RibetOutput.h_n_dvd_N` is a value of that hypothesis. This is not
`n = 32 ∨ n = 64`.
-/
theorem n_dvd_N_of_ribet {c : ℤ} {N n : ℕ}
    (h : n ∣ N) (hN : FreyConductorDivides c N) :
    n ∣ 64 * c.natAbs ^ 2 :=
  conductor_dvd_implies_level_dvd hN h

/-- `n ∣ 64 |c|²` from a conductor shape and `n ∣ N`. -/
theorem n_dvd_64csq_of_ribet {c : ℤ} {N n : ℕ}
    (hDiv : FreyConductorDivides c N) (hR : n ∣ N) :
    n ∣ 64 * c.natAbs ^ 2 :=
  conductor_dvd_implies_level_dvd hDiv hR

/-- The level stored on `RibetOutput` divides `64 |c|²` once `N` has
conductor shape. The divisibility `n ∣ N` is `h_n_dvd_N`, not an extra
assumption.
-/
theorem level_of_ribetOutput_dvd_64csq {E : FreyCurve4413} {N n : ℕ}
    (hDiv : FreyConductorDivides E.c N) (hR : RibetOutput E N n) :
    n ∣ 64 * E.c.natAbs ^ 2 :=
  n_dvd_64csq_of_ribet hDiv hR.h_n_dvd_N

/-- `2` is prime. -/
theorem two_isPrime : IsPrime 2 := by
  refine ⟨by decide, ?_⟩
  intro d hd
  have hle : d ≤ 2 := Nat.le_of_dvd (by decide) hd
  have hcases : d = 0 ∨ d = 1 ∨ d = 2 := by omega
  rcases hcases with h0 | h1 | h2
  · rcases hd with ⟨k, hk⟩
    rw [h0, Nat.zero_mul] at hk
    omega
  · exact Or.inl h1
  · exact Or.inr h2

/-- No shared prime divisor means the gcd is `1`.

The case `gcd = 0` is `n = m = 0`, and then `2` divides both.
-/
theorem coprime_of_no_shared_prime {n m : ℕ}
    (h : ∀ p, IsPrime p → p ∣ m → ¬ p ∣ n) : Nat.Coprime n m := by
  have hg : n.gcd m = 0 ∨ n.gcd m = 1 ∨ 2 ≤ n.gcd m := by
    match n.gcd m with
    | 0 => exact Or.inl rfl
    | 1 => exact Or.inr (Or.inl rfl)
    | k + 2 => exact Or.inr (Or.inr (Nat.le_add_left 2 k))
  rcases hg with h0 | h1 | hge
  · have hn0 : n = 0 := Nat.eq_zero_of_gcd_eq_zero_left h0
    have hm0 : m = 0 := Nat.eq_zero_of_gcd_eq_zero_right h0
    have hdv : 2 ∣ m := by
      rw [hm0]
      exact ⟨0, rfl⟩
    have hdn : 2 ∣ n := by
      rw [hn0]
      exact ⟨0, rfl⟩
    exact absurd hdn (h 2 two_isPrime hdv)
  · exact h1
  · rcases exists_prime_factor (n.gcd m) hge with ⟨p, hp, hpg⟩
    have hpn : p ∣ n := Nat.dvd_trans hpg (Nat.gcd_dvd_left n m)
    have hpm : p ∣ m := Nat.dvd_trans hpg (Nat.gcd_dvd_right n m)
    exact absurd hpn (h p hp hpm)

/-- After the primes dividing `c` are removed, `n` divides `32` or `64`.

The hypothesis quantifies over primes. `1` divides every integer, so
`∀ p, p ∣ c → ¬ p ∣ n` is unsatisfiable and is not the hypothesis used here.

This is not `n = 32 ∨ n = 64`. The positive divisors of `64` are
`1, 2, 4, 8, 16, 32, 64`. Equality would need a lower bound on `v₂(n)`,
and that bound is the open Tate exponent in `FreyConductor_OPEN`.
-/
theorem n_dvd_32_or_64_of_prime_to_c {c : ℤ} {N n : ℕ}
    (hDiv : FreyConductorDivides c N) (hn : n ∣ N)
    (hcop : ∀ p, IsPrime p → p ∣ c.natAbs → ¬ p ∣ n) :
    (N = 32 * c.natAbs ^ 2 ∧ n ∣ 32) ∨
      (N = 64 * c.natAbs ^ 2 ∧ n ∣ 64) := by
  have hbase : Nat.Coprime n c.natAbs := coprime_of_no_shared_prime hcop
  have hsq : Nat.Coprime n (c.natAbs ^ 2) := hbase.pow_right 2
  rcases hDiv with hDiv | hDiv
  · refine Or.inl ⟨hDiv, ?_⟩
    rw [hDiv] at hn
    exact Nat.Coprime.dvd_of_dvd_mul_right hsq hn
  · refine Or.inr ⟨hDiv, ?_⟩
    rw [hDiv] at hn
    exact Nat.Coprime.dvd_of_dvd_mul_right hsq hn

/-- The same removal of primes, weakened to `n ∣ 64`. -/
theorem n_dvd_64_of_prime_to_c {c : ℤ} {N n : ℕ}
    (hDiv : FreyConductorDivides c N) (hn : n ∣ N)
    (hcop : ∀ p, IsPrime p → p ∣ c.natAbs → ¬ p ∣ n) : n ∣ 64 := by
  rcases n_dvd_32_or_64_of_prime_to_c hDiv hn hcop with ⟨_, h⟩ | ⟨_, h⟩
  · exact Nat.dvd_trans h (by decide)
  · exact h

/-- The 2-adic valuation of a natural number. `natTwoVal 0 = 0`.

An odd argument returns `0` before the recursive call.
-/
def natTwoVal (n : ℕ) : ℕ :=
  if n = 0 then 0
  else if n % 2 = 1 then 0
  else natTwoVal (n / 2) + 1
termination_by n
decreasing_by
  have hn : 0 < n := by omega
  exact Nat.div_lt_self hn (by decide)

/-- `v₂(|c|)`. This is `0` when `c` is odd. It is not a conductor exponent. -/
def FreyValuationAt2 (c : ℤ) : ℕ :=
  natTwoVal c.natAbs

theorem natTwoVal_odd {n : ℕ} (h : n % 2 = 1) : natTwoVal n = 0 := by
  unfold natTwoVal
  by_cases hz : n = 0
  · simp [hz]
  · simp [hz, h]

theorem freyValuationAt2_odd {c : ℤ} (h : c.natAbs % 2 = 1) :
    FreyValuationAt2 c = 0 :=
  natTwoVal_odd h

/-- If `c` is odd, `v₂(N(Δ)) = 18` and `32 ∣ N(Δ)` in absolute value.

`N(Δ) = 2¹⁸ (c³)¹³`. An odd `c` contributes no factor `2`, so the power of
`2` is exactly `18`. `32 = 2⁵` divides `2¹⁸`. This is not a conductor
exponent and it does not conclude `32 ∣ n`.
-/
theorem tate_lower_bound_of_c_odd (E : FreyCurve4413)
    (hodd : E.c.natAbs % 2 = 1) :
    FreyValuationAt2 E.c = 0 ∧
      (E.discriminant_re ^ 2 + E.discriminant_im ^ 2).natAbs =
        2 ^ 18 * E.c.natAbs ^ 39 ∧
      32 ∣ (E.discriminant_re ^ 2 + E.discriminant_im ^ 2).natAbs := by
  refine ⟨freyValuationAt2_odd hodd, ?_⟩
  have hc : E.c.natAbs = 2 ^ 0 * E.c.natAbs := by simp
  have hnorm := norm_two_adic E 0 E.c.natAbs hc hodd
  have hpow : 2 ^ (18 + 39 * 0) = 2 ^ 18 := by simp
  rw [hpow] at hnorm
  refine ⟨hnorm.1, ?_⟩
  have h32 : 32 ∣ 2 ^ 18 := by decide
  exact Nat.dvd_trans h32 ⟨E.c.natAbs ^ 39, hnorm.1⟩

/-- The positive divisors of `2` are `1` and `2`. -/
theorem eq_one_or_two_of_dvd_two {k : ℕ} (h : k ∣ 2) : k = 1 ∨ k = 2 := by
  have hle : k ≤ 2 := Nat.le_of_dvd (by decide) h
  match k with
  | 0 =>
    rcases h with ⟨t, ht⟩
    have : (2 : ℕ) = 0 := by
      rw [Nat.zero_mul] at ht
      exact ht
    omega
  | 1 => exact Or.inl rfl
  | 2 => exact Or.inr rfl
  | k + 3 => omega

/-- `n ∣ 32` or `n ∣ 64`, plus `32 ∣ n`, forces `n = 32 ∨ n = 64`.

The positive divisors of `64` that are multiples of `32` are `32` and `64`.
This is the direction from a lower bound `32 ∣ n`. `TateAt2LowerBound`
stores the disjunction and derives `32 ∣ n` the other way.
-/
theorem n_eq_32_or_64_of_lower_bound {c : ℤ} {N n : ℕ}
    (h : (N = 32 * c.natAbs ^ 2 ∧ n ∣ 32) ∨ (N = 64 * c.natAbs ^ 2 ∧ n ∣ 64))
    (h32 : 32 ∣ n) : n = 32 ∨ n = 64 := by
  rcases h with ⟨_, hn⟩ | ⟨_, hn⟩
  · exact Or.inl (Nat.dvd_antisymm hn h32)
  · rcases h32 with ⟨k, hk⟩
    have hn64 : 32 * k ∣ 64 := by simpa [hk] using hn
    have h64 : (64 : ℕ) = 32 * 2 := by decide
    rw [h64] at hn64
    have hk2 : k ∣ 2 := dvd_cancel_left (by decide) hn64
    rcases eq_one_or_two_of_dvd_two hk2 with hk1 | hk2
    · rw [hk1] at hk
      simp [Nat.mul_one] at hk
      exact Or.inl hk
    · rw [hk2] at hk
      exact Or.inr (hk.trans h64.symm)

/-- `n = 32 ∨ n = 64` implies `32 ∣ n`.

Both values are multiples of `32`. The exponent in `TateAt2LowerBound` is
not used. `shape_dvd_does_not_give_thirtyTwo` is the case `n = 1`.
-/
theorem thirtyTwo_dvd_of_eq {n : ℕ} (h : n = 32 ∨ n = 64) : 32 ∣ n := by
  rcases h with h | h
  · subst h
    decide
  · subst h
    decide

/-- `32 ∣ n` from the disjunction stored on `TateAt2LowerBound`.

Minimality and the exponent are not used. This does not use
`ribet_level_lowering_4413`.
-/
theorem thirtyTwo_dvd_of_tate_bound {E : FreyCurve4413} {n : ℕ}
    (h : TateAt2LowerBound E n) : 32 ∣ n :=
  thirtyTwo_dvd_of_eq h.2.2

theorem RibetLevel.thirtyTwo_dvd {c : ℤ} {E : FreyCurve4413} {N : ℕ}
    (p : RibetLevel c E N) : 32 ∣ p.n :=
  thirtyTwo_dvd_of_eq p.h_n_eq

/-- The disjunction stored on `TateAt2LowerBound`.

This is the third conjunct. It is not derived from the exponent.
-/
theorem n_eq_32_or_64_of_tate {E : FreyCurve4413} {n : ℕ}
    (hTate : TateAt2LowerBound E n) : n = 32 ∨ n = 64 :=
  hTate.2.2

/-- The Ribet axiom at one conductor-shaped `N`.

This is `ribet_level_lowering_4413`. The package stores `n = 32 ∨ n = 64`,
`n ∣ N`, coprimality for `IsPrime`, and a `RibetOutput`. `hPacetti` is
`pacetti_2_8_open`. The disjunction is part of the axiom.
`RibetLevel.thirtyTwo_dvd` turns it into `32 ∣ n`.
-/
noncomputable def ribetOutput_of_open_hypotheses
    {c : ℤ} {E : FreyCurve4413} (N : ℕ)
    (hCond : FreyConductorDivides c N) (hIrr : RhoE13Open E)
    (hPacetti : pacetti_2_8_open) : RibetLevel c E N :=
  ribet_level_lowering_4413 N hCond hIrr hPacetti

/-- A conductor shape is divisible by `32 = 2⁵`.

This is the divisibility for `N`. It is not a divisibility for a level
`n` that merely divides `N`.
-/
theorem thirtyTwo_dvd_of_conductor_shape {c : ℤ} {N : ℕ}
    (h : FreyConductorDivides c N) : 32 ∣ N := by
  rcases h with h | h
  · rw [h]
    exact ⟨c.natAbs ^ 2, rfl⟩
  · rw [h]
    refine ⟨2 * c.natAbs ^ 2, ?_⟩
    rw [show (64 : ℕ) = 32 * 2 by decide, Nat.mul_assoc]

/-- No prime divides `1`, so coprimality at `|c| = 1` holds for every `n`. -/
theorem prime_not_dvd_one {p : ℕ} (hp : IsPrime p) : ¬ p ∣ 1 := by
  intro h
  have hp1 : p = 1 := Nat.dvd_one.mp h
  have hge : 2 ≤ p := hp.1
  omega

/-- `N = 32`, `n = 1`, `c = 1` satisfies the shape and `n ∣ N`, and `32 ∤ n`.

Coprimality holds because `prime_not_dvd_one` says no prime divides `|c|`.
`TateAt2LowerBound` stores `n = 32 ∨ n = 64`, which implies `32 ∣ n`.
This example has `n = 1`, so the shape does not give that disjunction.
-/
theorem shape_dvd_does_not_give_thirtyTwo :
    FreyConductorDivides (1 : ℤ) 32 ∧ (1 ∣ 32) ∧
      (∀ p, IsPrime p → p ∣ (1 : ℤ).natAbs → ¬ p ∣ 1) ∧ ¬ 32 ∣ 1 := by
  exact ⟨Or.inl (by decide), ⟨32, rfl⟩,
    fun p hp _hdv => prime_not_dvd_one hp,
    by decide⟩

end FreyCurve4413
