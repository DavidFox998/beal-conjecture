import Mathlib.Modular.DiscriminantNorm
import Mathlib.Modular.Rank0_32a1

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
`ℚ(√-1)` is not absolute irreducibility of `ρ_{E,13}`.

`rho_E_13` is the existing marker `GaloisRepresentation.unresolved`.
`RhoE13Open` is the sealed irreducibility statement. Nothing produces a
term of that type. The predicate `Irreducible` used by
`ribet_level_lowering_4413` is a separate interface.

## From the conductor to the level

`ribet_level_lowering_4413` returns two conclusions. The first is a newform
of some level, with no divisibility. The second says that if
`ConductorShape E.c N` holds, then some level `n` divides `N`.
`RibetOutput` stores that `n ∣ N`. It has no field `n = 32` or `n = 64`.

`FreyConductorDivides` is `ConductorShape`. It is still a hypothesis: the
axiom does not prove that the conductor equals `32 |c|²` or `64 |c|²`.
`n_dvd_32_or_64_of_prime_to_c` removes the primes dividing `c` and concludes
`n ∣ 32` or `n ∣ 64`. The positive divisors of `64` are
`1, 2, 4, 8, 16, 32, 64`, so this is not `n = 32 ∨ n = 64`.
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

/-- `rho_E_13_OPEN`.

Sealed stand-in for absolute irreducibility of the residual representation
on the `13`-torsion. `ψ₁₃` is constructed in `EllipticCurveMinimal`.
`Psi13HasNoQiRoot` is not a theorem, and this sealed proposition does not
imply it. There is no axiom and no theorem giving a term of this type.
The sealed body is `True`, so the definition does not assert a contradiction.
-/
opaque RhoE13Open (E : FreyCurve4413) : Prop := True

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

/-- Conductor hypothesis, irreducibility hypothesis, and the first conjunct
of the Ribet axiom.

`hTate` and `hRho` are returned unchanged. They are not theorems.
`discriminant_norm_odd_part` is a theorem. The first conjunct of
`ribet_level_lowering_4413` supplies a newform of some level `n` and does
not identify `n` with `32`, `64`, or `N`. The second conjunct, used by
`ribetOutput_of_open_hypotheses`, is the one that carries `n ∣ N`.
-/
theorem ribet_given_open_hypotheses
    (a b c : ℤ) (E : FreyCurve4413) (N : ℤ)
    (hTate : FreyConductor_OPEN E N)
    (hRho : RhoE13Open E)
    (hIrred : Irreducible (rho_E_p E))
    (hp : ¬ ((13 : ℕ) ∣ 2)) :
    E.discriminant_re ^ 2 + E.discriminant_im ^ 2 =
        (2 : ℤ) ^ 18 * (E.c ^ 3) ^ 13 ∧
      FreyConductor_OPEN E N ∧
      RhoE13Open E ∧
      ∃ n : ℕ, ∃ g : Newform n, LevelLowered E g :=
  ⟨discriminant_norm_odd_part E, hTate, hRho,
    (ribet_level_lowering_4413 a b c E hIrred hp).1⟩

/-- A lowered newform whose level divides the supplied integer `N`.

`n` is an index of `Newform`. `h_n_dvd_N` is the only arithmetic field.
There is no field `n = 32` or `n = 64`.
-/
structure RibetOutput (E : FreyCurve4413) (N n : ℕ) where
  h_n_dvd_N : n ∣ N
  g : Newform n
  lowered : LevelLowered E g

/-- `z² = |z|²` in `ℤ`. -/
theorem int_sq_natAbs (z : ℤ) : z ^ 2 = ↑(z.natAbs ^ 2) := by
  cases z with
  | ofNat k =>
    simp [Int.natAbs]
  | negSucc k =>
    simp [Int.natAbs, Int.negSucc_pow]

/-- The conductor alternative for a natural number `N` and `|c|`.

This is `ConductorShape`. It is the shape in `FreyConductor_OPEN`, rewritten
so that divisibility of levels is a statement in `ℕ`. It is not a proof of
the conductor.
-/
def FreyConductorDivides (c : ℤ) (N : ℕ) : Prop :=
  ConductorShape c N

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

theorem thirtyTwo_mul_dvd_sixtyFour (m : ℕ) : 32 * m ∣ 64 * m := by
  refine ⟨2, ?_⟩
  calc
    64 * m = (32 * 2) * m := by rw [show 64 = 32 * 2 by decide]
    _ = 32 * (2 * m) := Nat.mul_assoc 32 2 m
    _ = 32 * (m * 2) := by rw [Nat.mul_comm 2 m]
    _ = (32 * m) * 2 := (Nat.mul_assoc 32 m 2).symm

/-- If `N` is `32 |c|²` or `64 |c|²` and `n ∣ N`, then `n ∣ 64 |c|²`.

`hRibet` is arithmetic. When it comes from `RibetOutput.h_n_dvd_N`, the
second conjunct of `ribet_level_lowering_4413` is what supplied it.
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

/-- `ribet_level_lowering_4413`, read at a conductor-shaped `N`, as
`RibetOutput`.

`hTate` is turned into `ConductorShape` by `FreyConductor_OPEN.toDivides`.
The axiom's second conjunct then returns a level `n` with `n ∣ N`.
The witness is `Classical.choose` because the axiom returns an existential
in `Prop`. `hRho` stays in the interface and is not read by the axiom.
`RhoE13Open` is opaque, and a missing linear factor of `ψ₁₃` in `ℚ(√-1)`
is not absolute irreducibility. The image of `ρ_{E,13}` would have to
contain `SL₂(𝔽₁₃)`. The axiom consumes `Irreducible`, whose body is `True`,
and does not prove `RhoE13Open`.
-/
noncomputable def ribetOutput_of_open_hypotheses
    (a b c : ℤ) (E : FreyCurve4413) (N : ℕ)
    (hTate : FreyConductor_OPEN E (N : ℤ))
    (hRho : RhoE13Open E)
    (hIrred : Irreducible (rho_E_p E))
    (hp : ¬ ((13 : ℕ) ∣ 2)) : Σ n, RibetOutput E N n := by
  classical
  have hShape : ConductorShape E.c N := FreyConductor_OPEN.toDivides hTate
  have hEx : ∃ n, ∃ g : Newform n, n ∣ N ∧ LevelLowered E g :=
    (ribet_level_lowering_4413 a b c E hIrred hp).2 N hShape
  let n : ℕ := Classical.choose hEx
  have hEx1 : ∃ g : Newform n, n ∣ N ∧ LevelLowered E g :=
    Classical.choose_spec hEx
  let g : Newform n := Classical.choose hEx1
  have hpair : n ∣ N ∧ LevelLowered E g := Classical.choose_spec hEx1
  exact (fun (_ : RhoE13Open E) =>
    (⟨n, ⟨hpair.1, g, hpair.2⟩⟩ : Σ n, RibetOutput E N n)) hRho

end FreyCurve4413
