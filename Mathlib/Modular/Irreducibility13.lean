import Mathlib.Modular.LevelLowering4413
import Mathlib.Modular.EllipticCurveMinimal

/-!
# Irreducibility of `ρ_{E,13}` is still open

`xDivisionDegree 13 = 84` is the count `(13² - 1) / 2`. The division
polynomial `ψ₁₃` is `psi13` in `EllipticCurveMinimal`. Its constant term
on `y² = x³ + a₂ x² + a₄ x` is `a₄ ^ 42`. For a Frey curve the norm of
that constant term is `2 ^ 84 * c ^ 546`.

`Psi13HasNoQiRoot` is `psi13_no_Qi_root_Frey_OPEN`: the cleared polynomial
has no root in the fraction field of `ℤ[√-1]`. It is not a theorem.
`psi13_vanishes_on_zero_curve` shows it is false for `(0, 0, 0)`.
The rational-root candidates of a norm polynomial would be the divisors of
the constant term `a₄ ^ 42`, whose norm is `2 ^ 84 * c ^ 546`. That list
depends on `a` and `b`, so it is not a closed `decide`.

`RhoE13Open E → Psi13HasNoQiRoot E` is not a lemma in this file.

* `RhoE13Open` is opaque. Its body is sealed, so it supplies no fact about
  `ψ₁₃`.
* A root of `ψ₁₃` in `ℚ(√-1)` is a linear factor. Absolute irreducibility
  of `ρ_{E,13}` is a statement about Galois-stable subgroups. The missing
  linear factor is not that statement, and the sealed irreducibility
  hypothesis does not prove the missing linear factor.
* `rho_E_13` is `GaloisRepresentation.unresolved`.
* A missing linear factor of `ψ₁₃` in `ℚ(√-1)` is not absolute
  irreducibility for GL2-type over `ℚ(√-1)`. The image must contain
  `SL₂(𝔽₁₃)`. `RhoE13NeedsSL2` is `Psi13HasNoQiRoot` together with
  `ImageContainsSL2 E 13`. `RhoE13Open_of_needsSL2` is not a lemma:
  both `RhoE13Open` and `ImageContainsSL2` are sealed, and the missing
  linear factor is the wrong direction for absolute irreducibility.

`FreyConductor_OPEN` stays a hypothesis. `ribet_level_lowering_4413` takes
`FreyConductorDivides`, `RhoE13Open`, and `TateAt2LowerBound`. It returns
one level with `n ∣ N`. It does not return `n = 32 ∨ n = 64`.
`n_eq_32_or_64_of_tate` is that equality, from `32 ∣ n`.
-/

namespace FreyCurve4413

/-- No root of the Frey `ψ₁₃` in the fraction field of `ℤ[√-1]`.

This is `psi13_no_Qi_root_Frey_OPEN`. The polynomial is constructed.
The proposition is not proved.
-/
def Psi13HasNoQiRoot (E : FreyCurve4413) : Prop :=
  psi13_no_Qi_root_Frey_OPEN E

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
theorem psi13_noQiRoot_of_norm_check (E : FreyCurve4413) :
    Psi13HasNoQiRoot E ↔
      ∀ num den : GaussInt, den ≠ GaussInt.zero →
        evalCleared (Psi13OverQi E) num den ≠ GaussInt.zero := by
  rfl

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
def RhoE13NeedsSL2 (E : FreyCurve4413) : Prop :=
  Psi13HasNoQiRoot E ∧ ImageContainsSL2 E 13

/-- `(0, 0, 0)` makes `ψ₁₃` vanish at `0`, so the no-root statement is false.

`RhoE13Open` is not this statement, and it is not `ImageContainsSL2`.
-/
theorem not_psi13HasNoQiRoot_zero_curve :
    ¬ Psi13HasNoQiRoot (FreyCurve4413.mk' 0 0 0 rfl) := by
  intro h
  have hden : (GaussInt.one : GaussInt) ≠ GaussInt.zero := by decide
  have hzero := h GaussInt.zero GaussInt.one hden
  simp [Psi13OverQi, FreyCurve4413.mk', GaussInt.ofInt] at hzero
  exact hzero psi13_vanishes_on_zero_curve

end FreyCurve4413
