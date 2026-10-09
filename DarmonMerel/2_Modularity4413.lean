import Init
import DarmonMerel.«1_FreyCurve4413»

/-!
# Modularity of the Frey ℚ-curve

Pacetti's Dubrovnik talk (19 June 2023) records the step after the Frey
ℚ-curve is attached to `x^4 + d y^2 = z^p`:

* a theorem of Ribet supplies a twist of `ρ_{E,p}` that extends from
  `Gal(ℚ̄/K)` to `Gal(ℚ̄/ℚ)`;
* Serre's modularity conjecture, together with the Taylor–Wiles method,
  implies that the extended representation is modular.

For `d = 1` and `p = 13` the curve is `FreyCurve4413`. This file states that
modularity as one axiom. It is not proved here. Mathlib does not yet contain
ℚ-curve modularity, so the axiom stays until that formalization exists.

## Citations

* Ribet 2004, Theorem: Kenneth A. Ribet, *Abelian varieties over ℚ and modular
  forms*, in Modular curves and abelian varieties, Progress in Mathematics 224,
  Birkhäuser, 2004, pp. 241–261. A twist of the Galois representation of a
  ℚ-curve extends to `Gal(ℚ̄/ℚ)` and arises from a classical modular form.
* BCDT (Breuil–Conrad–Diamond–Taylor 2001): Christophe Breuil, Brian Conrad,
  Fred Diamond, and Richard Taylor, *On the modularity of elliptic curves over
  ℚ: wild 3-adic exercises*, J. Amer. Math. Soc. 14 (2001), no. 4, 843–939.
  This is the modularity theorem for elliptic curves over `ℚ`.
* Pacetti 2023, Slide on the Frey curve: "Serre's conjectures + results of
  Taylor–Wiles imply the extension is modular."
-/

/-- Carrier for a residual Galois representation.

The group, the coefficient field, and the residual prime are not formalized.
-/
inductive GaloisRepresentation where
  /-- Marker that no representation has been constructed yet. -/
  | unresolved

/-- The predicate “`E` is a modular Frey ℚ-curve”.

The body is sealed. In this development the only way to produce a proof is
the axiom `frey_qcurve_modular`. The sealed body is `True`, so that axiom
does not assert a contradiction; it is the interface that will be replaced
when Mathlib has ℚ-curve modularity.
-/
opaque Modular (E : FreyCurve4413) : Prop := True

/-- Level lowering can be applied to `E`.

Ribet's lowering-the-level theorem (Invent. Math. 100 (1990)) needs a modular
extension of `ρ_{E,p}` to `Gal(ℚ̄/ℚ)`. This packages exactly that hypothesis.
-/
structure LevelLoweringPossible (a b c : ℤ) (E : FreyCurve4413) : Prop where
  modular : Modular E

/-- Ribet's theorem: `ρ_{E,p}` extends to `Gal(ℚ̄/ℚ)` and is modular.

`a`, `b`, and `c` are the integers of the solution `a^4 + b^4 = c^13` to
which `E` is attached. The axiom does not restate `E.a = a`; the curve
already carries its own coefficients and `E.h_eq`.

Citation: Ribet 2004, Theorem, plus BCDT (Breuil–Conrad–Diamond–Taylor 2001).
Pacetti 2023: Serre's conjectures + results of Taylor–Wiles imply the
extension is modular.

Note: this will be an axiom until Mathlib has ℚ-curve modularity.
-/
axiom frey_qcurve_modular (a b c : ℤ) (E : FreyCurve4413) : Modular E

/-- The twist of `ρ_{E,p}` that Ribet extends to `Gal(ℚ̄/ℚ)`.

Placeholder definition, not an axiom. The representation is not constructed.
-/
noncomputable def rho_E_p_twisted (_E : FreyCurve4413) : GaloisRepresentation :=
  sorry

/-- Modularity of the Frey ℚ-curve is the hypothesis level lowering needs.

There is no level-lowering argument in this file. `frey_qcurve_modular a b c E`
is a term of type `Modular E`; this proof only packages such a term as
`LevelLoweringPossible`.
-/
theorem modularity_needed_for_level_lowering (a b c : ℤ) (E : FreyCurve4413) :
    Modular E → LevelLoweringPossible a b c E :=
  fun h => ⟨h⟩
