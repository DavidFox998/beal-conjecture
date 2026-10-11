import Mathlib.Modular.LevelLowering4413
import Mathlib.Modular.EllipticCurveMinimal
import Mathlib.Modular.GL2F13

/-!
# Irreducibility of `ρ_{E,13}` is still open

`xDivisionDegree 13 = 84` is the count `(13² - 1) / 2`. The division
polynomial `ψ₁₃` is `psi13` in `EllipticCurveMinimal`. Its constant term
on `y² = x³ + a₂ x² + a₄ x` is `a₄ ^ 42`. For a Frey curve the norm of
that constant term is `2 ^ 84 * c ^ 546`.

`psi13_no_Qi_root_Frey_OPEN` is the cleared polynomial on every Frey curve,
including the singular curve `(0, 0, 0)`, where `psi13_vanishes_on_zero_curve`
shows it fails. `Psi13HasNoQiRoot` is the same cleared statement restricted
to `NontrivialFrey`: `a ≠ 0`, `b ≠ 0`, and `gcd(|a|, |b|) = 1`. There is no
field type `ℚ(√-1)` here; a ratio is `evalCleared`. The constant term is
`a₄ ^ 42`, with norm `2 ^ 84 * c ^ 546`, which is nonzero when `b ≠ 0`.
An integral root has norm dividing that integer. The divisor list depends
on `c`, and divisors in `ℤ[√-1]` are not enumerated, so the universal
statement is not a closed `decide`.

`RhoE13Open E → Psi13HasNoQiRoot E` is not a lemma in this file.

* `RhoE13Open` is opaque and has no body, so it supplies no fact about
  `ψ₁₃`. The previous sealed body was `True`; that equation is gone.
* A root of `ψ₁₃` in `ℚ(√-1)` is a linear factor. Absolute irreducibility
  of `ρ_{E,13}` is a statement about Galois-stable subgroups. The missing
  linear factor is not that statement, and the sealed irreducibility
  hypothesis does not prove the missing linear factor.
* `rho_E_13` is `GaloisRepresentation.unresolved`.
* A missing linear factor of `ψ₁₃` in `ℚ(√-1)` is not absolute
  irreducibility for GL2-type over `ℚ(√-1)`. The image must contain
  `SL₂(𝔽₁₃)`. `RhoE13NeedsSL2` is `Psi13HasNoQiRoot` together with
  `ImageContainsSL2 E 13`. `rhoE13_open_of_psi` is that implication
  with the real types. It is an open proposition, not a theorem:
  `RhoE13Open` is `opaque` and has no body, so there is no equation lemma
  and the implication is not proved by unfolding. Inhabiting it by
  `rfl`, `decide`, `trivial`, or `True.intro` is not available.
  `ImageContainsSL2` is sealed as well.
* `GL2F13.transvection_classification_13` is the matrix theorem: an
  element of order `13` in `GL₂(𝔽₁₃)` is conjugate to `(1 1; 0 1)`.
  `GL2F13.order_thirteen` is the same statement with no smaller positive
  exponent. `GL2F13.normal_closure_contains_SL2` writes every
  determinant-`1` matrix as a product of such conjugates in the ambient
  group. Those conjugates do not move the fixed line inside an arbitrary
  subgroup, so `GL2F13.dickson_13_open` remains the missing step. None of
  these produces a term of `RhoE13Open`.
* `steinberg_prime_13_open` asks for a prime of multiplicative
  reduction with `13 ∤ tateParameter`. No such prime is constructed.
  `multiplicative_at_dvd_c` does not give the Tate divisibility, and
  `tate_param_13_dvd_of_coprime` asserts the opposite inequality at
  odd primes dividing `c`. If that divisibility holds at every bad
  prime, there is no transvection and strategy A stops. Strategy B,
  the reducible shape, is `ReducibleShape13.lean`. It does not prove
  irreducibility. The classification theorem does not take the
  Steinberg proposition as a hypothesis, because a prime is not a matrix.

`FreyConductor_OPEN` stays a hypothesis. `ribet_level_lowering_4413` takes
`FreyConductorDivides`, `RhoE13Open`, and `pacetti_2_8_open`. The returned
`RibetLevel` stores `n = 32 ∨ n = 64` as part of the axiom.
`thirtyTwo_dvd_of_tate_bound` turns the same disjunction on
`TateAt2LowerBound` into `32 ∣ n`. `Psi13HasNoQiRoot` stays open on
`NontrivialFrey`. `RhoE13Open` stays sealed.
-/

namespace FreyCurve4413

/-- `a` and `b` are nonzero and coprime as integers.

The singular point `(0, 0)` is excluded. `gcd` is `Nat.gcd` of the
absolute values.
-/
def NontrivialFrey (a b : ℤ) : Prop :=
  a ≠ 0 ∧ b ≠ 0 ∧ a.natAbs.gcd b.natAbs = 1

/-- No root of the Frey `ψ₁₃` in the fraction field, for a nontrivial pair.

The polynomial is `evalCleared` of `ψ₁₃` at coefficients `4a` and
`2(a² + b² √(-1))`. The hypothesis `h` is the domain. The proposition is
not proved. `(0, 0)` is not an instance: `zero_curve_not_nontrivial`.
-/
def Psi13HasNoQiRoot (a b : ℤ) (_h : NontrivialFrey a b) (c : ℤ)
    (_heq : a ^ 4 + b ^ 4 = c ^ 13) : Prop :=
  ∀ num den : GaussInt, den ≠ GaussInt.zero →
    evalCleared (psi13 (GaussInt.ofInt (4 * a)) ⟨2 * a ^ 2, 2 * b ^ 2⟩
      GaussInt.zero) num den ≠ GaussInt.zero

theorem xDivisionDegree_13_count : xDivisionDegree 13 = 84 :=
  xDivisionDegree_13

/-- The Frey `ψ₁₃`, constant term first, as a list of Gaussian integers.

This is the existing division polynomial. It is not an element of a
`Polynomial` type. `xDivisionDegree 13 = 84` is the x-coordinate count.
-/
def Psi13OverQi (E : FreyCurve4413) : List GaussInt :=
  psi13 (GaussInt.ofInt E.A_int) ⟨E.B_re, E.B_im⟩ GaussInt.zero

/-- Evaluation of one Gaussian integer at this list is decidable.

`GaussInt` has decidable equality, and `evalPoly` is a function. A single
point is not the universal statement `Psi13HasNoQiRoot`.
-/
def GaussIntRootDecidable (p : List GaussInt) (x : GaussInt) :
    Decidable (evalPoly p x = GaussInt.zero) :=
  inferInstance

/-- `Psi13HasNoQiRoot` is the cleared evaluation of `Psi13OverQi`.

`evalCleared` is `den ^ deg * ψ(num / den)`. The field norm of a value of
a degree-`84` polynomial over `ℚ(√-1)` is a degree-`168` condition over `ℚ`.
The rational root theorem would then bound a rational root by the constant
term. For the Frey polynomial that constant term is `a₄ ^ 42`, with norm
`2 ^ 84 * c ^ 546`, so the candidates depend on `a` and `b`. Euclid's lemma
in `ℤ[√-1]` is not proved, and this equivalence does not decide the
quantifier. The check is not `RhoE13Open`.
-/
theorem psi13_noQiRoot_of_norm_check (a b : ℤ) (h : NontrivialFrey a b)
    (c : ℤ) (heq : a ^ 4 + b ^ 4 = c ^ 13) :
    Psi13HasNoQiRoot a b h c heq ↔
      ∀ num den : GaussInt, den ≠ GaussInt.zero →
        evalCleared (psi13 (GaussInt.ofInt (4 * a)) ⟨2 * a ^ 2, 2 * b ^ 2⟩
          GaussInt.zero) num den ≠ GaussInt.zero := by
  rfl

/-- One candidate ratio, decided by equality in `ℤ[√-1]`.

This is not a check of every divisor of `2 ^ 84 * c ^ 546`. That list
depends on `c`.
-/
def psi13_noQiRoot_check (a b : ℤ) (num den : GaussInt) : Bool :=
  decide (den = GaussInt.zero ∨
    evalCleared (psi13 (GaussInt.ofInt (4 * a)) ⟨2 * a ^ 2, 2 * b ^ 2⟩
      GaussInt.zero) num den ≠ GaussInt.zero)

/-- The image of `ρ_{E,13}` contains `SL₂(𝔽₁₃)`.

`rho_E_13` is `GaloisRepresentation.unresolved`, so the containment is not
a subgroup of a matrix group. Nothing produces a term.
-/
opaque ImageContainsSL2 (E : FreyCurve4413) (_p : ℕ) : Prop := True

/-- No linear factor of `ψ₁₃`, and an image containing `SL₂(𝔽₁₃)`.

`Psi13HasNoQiRoot` is not proved. `ImageContainsSL2` is sealed. This
conjunction is not `RhoE13Open`. The implication
`RhoE13NeedsSL2 E → RhoE13Open E` is not a lemma.
-/
def RhoE13NeedsSL2 (a b c : ℤ) (heq : a ^ 4 + b ^ 4 = c ^ 13)
    (h : NontrivialFrey a b) : Prop :=
  Psi13HasNoQiRoot a b h c heq ∧
    ImageContainsSL2 (FreyCurve4413.mk' a b c heq) 13

/-- Not a theorem. The requested characterization of `RhoE13Open`.

`RhoE13Open` is `opaque` and has no body. There is no equation lemma,
so this implication is not proved by unfolding, `rfl`, `decide`,
`trivial`, or `True.intro`. `Psi13HasNoQiRoot` stays an open statement
on `NontrivialFrey`. `ImageContainsSL2` stays sealed. Nothing here
produces a term of `RhoE13Open`.
-/
def rhoE13_open_of_psi : Prop :=
  ∀ (a b c : ℤ) (heq : a ^ 4 + b ^ 4 = c ^ 13) (h : NontrivialFrey a b),
    Psi13HasNoQiRoot a b h c heq →
      ImageContainsSL2 (FreyCurve4413.mk' a b c heq) 13 →
        RhoE13Open (FreyCurve4413.mk' a b c heq)

/-- A Steinberg prime: multiplicative reduction with `13 ∤ v(q)`.

No prime is exhibited. `multiplicative_at_dvd_c` gives, at an odd prime
`p ∣ c`, that `p` misses `2|a||b|`, that `v_p(N(c₄)) = 0`, and that
`v_p(N(Δ)) = 13 · 3 · v_p(|c|)`. Those are valuations of field norms.
They are not `13 ∤ tateParameter`. `tate_param_13_dvd_of_coprime` is
the open claim that `13` divides that sealed parameter at every odd
prime divisor of `c`, which is the opposite inequality. Uneven splitting
is why `13 ∣ v_p(N(Δ))` is not `13 ∣ v_𝔭(Δ)`. This proposition does not
build an element of `GL₂(𝔽₁₃)` and does not produce `RhoE13Open`.
`transvection_classification_13` is not conditional on it.
-/
def steinberg_prime_13_open : Prop :=
  ∀ E : FreyCurve4413, E.a ≠ 0 → E.b ≠ 0 →
    E.a.natAbs.gcd E.b.natAbs = 1 →
      ∃ p : ℕ, IsPrime p ∧ p ≠ 2 ∧
        0 < padicVal p (E.discriminant_re ^ 2 + E.discriminant_im ^ 2).natAbs ∧
        padicVal p (GaussInt.norm (FreyCurve4413.c4_Frey E.a E.b)).natAbs = 0 ∧
        ¬ 13 ∣ tateParameter E p

theorem zero_curve_not_nontrivial : ¬ NontrivialFrey 0 0 := by
  intro h
  exact h.1 rfl

/-- The unrestricted cleared statement fails at `(0, 0, 0)`.

`Psi13HasNoQiRoot` is not stated for this pair.
-/
theorem not_psi13_open_zero_curve :
    ¬ psi13_no_Qi_root_Frey_OPEN (FreyCurve4413.mk' 0 0 0 rfl) := by
  intro h
  have hden : (GaussInt.one : GaussInt) ≠ GaussInt.zero := by decide
  have hzero := h GaussInt.zero GaussInt.one hden
  simp [FreyCurve4413.mk', GaussInt.ofInt] at hzero
  exact hzero psi13_vanishes_on_zero_curve

theorem gaussList_exists_cons {p : List GaussInt} (h : p ≠ []) :
    ∃ coeff cs, p = coeff :: cs := by
  match p with
  | [] => exact absurd rfl h
  | coeff :: cs => exact ⟨coeff, cs, rfl⟩

/-- An integral root of a nontrivial Frey `ψ₁₃` has norm dividing
`2 ^ 84 * c ^ 546`.

The constant term is `a₄ ^ 42 ≠ 0`. This bounds integral roots. It does
not list them, and it does not decide roots in the fraction field.
-/
theorem psi13_root_candidates_finite (a b c : ℤ) (h : NontrivialFrey a b)
    (heq : a ^ 4 + b ^ 4 = c ^ 13) (z : GaussInt)
    (hroot : evalPoly (psi13 (GaussInt.ofInt (4 * a)) ⟨2 * a ^ 2, 2 * b ^ 2⟩
      GaussInt.zero) z = GaussInt.zero) :
    GaussInt.norm z ∣ (2 : ℤ) ^ 84 * c ^ 546 := by
  let E := FreyCurve4413.mk' a b c heq
  have hb : E.b ≠ 0 := h.2.1
  have hct := frey_psi13_constant_ne_zero E hb
  have hne : psi13 (GaussInt.ofInt E.A_int) ⟨E.B_re, E.B_im⟩ GaussInt.zero ≠ [] := by
    intro hn
    have hct0 : ct (psi13 (GaussInt.ofInt E.A_int) ⟨E.B_re, E.B_im⟩ GaussInt.zero) =
        GaussInt.zero := by
      rw [hn]
      simp [ct]
    exact hct hct0
  have hlist := gaussList_exists_cons hne
  rcases hlist with ⟨coeff, cs, hpoly⟩
  have hsame :
      psi13 (GaussInt.ofInt (4 * a)) ⟨2 * a ^ 2, 2 * b ^ 2⟩ GaussInt.zero =
        psi13 (GaussInt.ofInt E.A_int) ⟨E.B_re, E.B_im⟩ GaussInt.zero := rfl
  have hrootE : evalPoly (coeff :: cs) z = GaussInt.zero := by
    rw [← hpoly, ← hsame]
    exact hroot
  have hdiv := integral_root_divides_constant coeff cs z hrootE
  have hctE : coeff = GaussInt.npow ⟨E.B_re, E.B_im⟩ 42 := by
    have hhead : ct (coeff :: cs) = coeff := by simp [ct]
    rw [← hhead, ← hpoly, frey_psi13_constant_term]
  rw [hctE] at hdiv
  exact frey_constant_divisor_norm E z (GaussInt.neg (evalPoly cs z)) hdiv

end FreyCurve4413
