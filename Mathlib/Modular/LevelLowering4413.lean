import Mathlib.Modular.DiscriminantNorm

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

`RibetOutput` is a newform of some level `n` together with `LevelLowered`.
It has no field `n = 32`, `n = 64`, or `n = N`, and it does not contain
`n ∣ N`. The axiom does not produce that divisibility.

`FreyConductorDivides c N` is the same numerical alternative as
`FreyConductor_OPEN`, stated for `N : ℕ` and `|c|`. It is still a
hypothesis. `n_dvd_N_of_ribet` says that if that hypothesis holds and
`n ∣ N`, then `n ∣ 64 |c|²`. The hypothesis `n ∣ N` is not a theorem.
`n = 32 ∨ n = 64` is not a theorem.
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

/-- Conductor hypothesis, irreducibility hypothesis, and the Ribet axiom.

`hTate` and `hRho` are returned unchanged. They are not theorems.
`discriminant_norm_odd_part` is a theorem. `ribet_level_lowering_4413`
supplies a newform of some level `n` and does not identify `n` with `32`,
`64`, or `N`.
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
    ribet_level_lowering_4413 a b c E hIrred hp⟩

/-- A newform returned by level lowering, at whatever level the axiom gives.

`n` is an index of `Newform`. There is no equation `n = 32`, `n = 64`,
`n = N`, or `n ∣ N`.
-/
structure RibetOutput (E : FreyCurve4413) (n : ℕ) where
  g : Newform n
  lowered : LevelLowered E g

/-- The Ribet axiom, packaged as `RibetOutput`.

`hTate` and `hRho` are returned unchanged. The existential level `n` is
not shown to divide a conductor.
-/
theorem ribetOutput_of_open_hypotheses
    (a b c : ℤ) (E : FreyCurve4413) (N : ℤ)
    (hTate : FreyConductor_OPEN E N)
    (hRho : RhoE13Open E)
    (hIrred : Irreducible (rho_E_p E))
    (hp : ¬ ((13 : ℕ) ∣ 2)) :
    FreyConductor_OPEN E N ∧ RhoE13Open E ∧ ∃ n : ℕ, Nonempty (RibetOutput E n) := by
  refine ⟨hTate, hRho, ?_⟩
  rcases ribet_level_lowering_4413 a b c E hIrred hp with ⟨n, g, hL⟩
  exact ⟨n, ⟨⟨g, hL⟩⟩⟩

/-- `z² = |z|²` in `ℤ`. -/
theorem int_sq_natAbs (z : ℤ) : z ^ 2 = ↑(z.natAbs ^ 2) := by
  cases z with
  | ofNat k =>
    simp [Int.natAbs]
  | negSucc k =>
    simp [Int.natAbs, Int.negSucc_pow]

/-- The conductor alternative for a natural number `N` and `|c|`.

This is the shape in `FreyConductor_OPEN`, rewritten so that divisibility
of levels is a statement in `ℕ`. It is not a proof of the conductor.
-/
def FreyConductorDivides (c : ℤ) (N : ℕ) : Prop :=
  N = 32 * c.natAbs ^ 2 ∨ N = 64 * c.natAbs ^ 2

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

`hRibet` is an assumption. `ribet_level_lowering_4413` does not provide it.
-/
theorem conductor_dvd_implies_level_dvd {c : ℤ} {N n : ℕ}
    (hCond : FreyConductorDivides c N) (hRibet : n ∣ N) :
    n ∣ 64 * c.natAbs ^ 2 := by
  rcases hCond with hCond | hCond
  · rw [hCond] at hRibet
    exact Nat.dvd_trans hRibet (thirtyTwo_mul_dvd_sixtyFour (c.natAbs ^ 2))
  · rwa [hCond] at hRibet

/-- Same divisibility, with the hypothesis `n ∣ N` written first.

This is not `n = 32 ∨ n = 64`. That disjunction needs `n = N` and `|c| = 1`,
neither of which is known.
-/
theorem n_dvd_N_of_ribet {c : ℤ} {N n : ℕ}
    (h : n ∣ N) (hN : FreyConductorDivides c N) :
    n ∣ 64 * c.natAbs ^ 2 :=
  conductor_dvd_implies_level_dvd hN h

end FreyCurve4413
