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

`frey_qcurve_modular` is still the only way to obtain `Modular E`.
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

/-- The coefficient relation, together with modularity from the axiom.

The first conjunct is `frey_is_coefficient_qcurve`. The second is
`frey_qcurve_modular`. The relation does not produce `Modular E`.
-/
theorem coefficient_relation_and_modularity_axiom (a b c : ℤ) (E : FreyCurve4413) :
    IsCoefficientQCurve E ∧ Modular E :=
  ⟨frey_is_coefficient_qcurve E, frey_qcurve_modular a b c E⟩

end FreyCurve4413
