import Mathlib.Modular.QCurve4413
import DarmonMerel.«2_Modularity4413»

/-!
# Coefficient form of the ℚ-curve relation

`velu_target_eq_twist_neg_two` says the Vélu target of the conjugate has the
same Weierstrass coefficients as the quadratic twist by `-2`. That is the
coefficient shadow of “the conjugate is 2-isogenous to a twist”.

It is not Ribet's definition of a ℚ-curve. There is no elliptic curve, no
Galois action on its points, and no isogeny of schemes. This repository has
no theorem that every ℚ-curve over a quadratic field is modular. Serre's
conjecture and the Taylor–Wiles lifting that would produce that theorem are
not formalized.

`frey_is_coefficient_qcurve` returns that coefficient relation. `Modular E`
is a different statement: the only proof of it in this repository is the
axiom `frey_qcurve_modular`. A theorem that every ℚ-curve is modular would
need Serre's conjecture and modularity lifting in the sense of Taylor–Wiles.
This package does not depend on the Mathlib community library, and those
results are not formalized here.
-/

namespace FreyCurve4413

/-- The Vélu target of the conjugate agrees with the twist by `-2`. -/
def IsCoefficientQCurve (E : FreyCurve4413) : Prop :=
  velu_target_A E = twist_neg_two_A E ∧ velu_target_B E = twist_neg_two_B E

/-- Every Frey curve satisfies the coefficient relation.

This is `velu_target_eq_twist_neg_two`. The integers `-2` and the target
`B' = 8 a² + 8 b² √(-1)` are the coefficients already computed there. They
are not a proved degree of a scheme morphism.
-/
theorem frey_is_coefficient_qcurve (E : FreyCurve4413) : IsCoefficientQCurve E :=
  velu_target_eq_twist_neg_two E

/-- Coefficient data for the Frey model: twist `-2`, and the Vélu numerator.

The witnesses are `twistBy = -2` and `numeratorDegree = 2`. The first is the
twist in `velu_target_eq_twist_neg_two`. The second is the exponent in
`ξ = x² + A x + B` from `velu_cleared`, the numerator of `X = ξ / x`.
Both equalities are `rfl`. The proof is not `native_decide`: `a`, `b`, and
`c` are variables. The exponent is not the degree of a morphism of schemes.
-/
def IsQCurve (E : FreyCurve4413) : Prop :=
  ∃ twistBy : ℤ, ∃ numeratorDegree : Nat,
    twistBy = -2 ∧ numeratorDegree = 2 ∧ IsCoefficientQCurve E

/-- The Frey curve satisfies `IsQCurve`.

The witness is `⟨-2, 2, velu_target_eq_twist_neg_two⟩`. It does not produce
`Modular E`.
-/
theorem FreyQCurve_is_QCurve (E : FreyCurve4413) : IsQCurve E :=
  ⟨-2, 2, rfl, rfl, frey_is_coefficient_qcurve E⟩

theorem IsQCurve.toCoefficient {E : FreyCurve4413} (h : IsQCurve E) :
    IsCoefficientQCurve E := by
  rcases h with ⟨_, _, _, _, hcoeffs⟩
  exact hcoeffs

/-- The coefficient relation, together with modularity from the axiom.

The first conjunct is `FreyQCurve_is_QCurve`. The second is
`frey_qcurve_modular`. `frey_is_coefficient_qcurve` does not produce
`Modular E`.
-/
theorem coefficient_relation_and_modularity_axiom (a b c : ℤ) (E : FreyCurve4413) :
    IsQCurve E ∧ Modular E :=
  ⟨FreyQCurve_is_QCurve E, frey_qcurve_modular a b c E⟩

end FreyCurve4413
