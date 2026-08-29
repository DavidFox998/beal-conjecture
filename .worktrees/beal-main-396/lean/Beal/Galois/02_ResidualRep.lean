/-
      Galois/02_ResidualRep — the Frey residual-representation boundary

      This module packages the representation data needed by a later
      unramifiedness theorem. It intentionally proves no continuity,
      semisimplicity, oddness, or Tate-to-inertia implication.

      The existing FreyCurveModel is the fixed typed model from v4.1.0.
      No preserved-form or Ribet-level-lowering interface is imported here.
-/
import Beal.Galois.«01_Absolute»
import Beal.B14_FreyTate

namespace Beal.Galois

open Beal.FreyTate

/-- A residual representation attached to one fixed Frey curve model.

    `Gabs` is abstract: this record does not construct the absolute Galois
    group or the elliptic-curve torsion representation. The three named
    properties are deliberately propositions with no proof hidden in this
    layer. -/
structure FreyResidualRepresentation
    {A B C : ℤ} {x y z : ℕ}
    (model : FreyCurveModel A B C x y z) (ℓ : ℕ) where
  Gabs : AbsoluteGaloisGroup
  rho : Gabs.carrier → GL2 ℓ
  continuous : Prop
  semisimple : Prop
  odd : Prop

/-- Unramifiedness for the residual representation attached to the Frey model.

    The inertia subgroup is explicitly tied to the representation's own
    absolute-Galois carrier, so this statement cannot silently mix groups. -/
def IsFreyUnramifiedAt
    {A B C : ℤ} {x y z : ℕ}
    {model : FreyCurveModel A B C x y z} {ℓ : ℕ}
    (R : FreyResidualRepresentation model ℓ)
    (p : ℕ) (I : InertiaSubgroup R.Gabs p) : Prop :=
  IsUnramifiedAt R.rho p I

/-
  Boundary preserved for the next layer; intentionally not a declaration:

    For a residual representation `R`, the hypotheses

      p.Prime ∧ p ≠ 2 ∧ ExactDividesCore p R's model.conductor

    do not by themselves imply `IsFreyUnramifiedAt R p I`, even when p = 3.
    Tate's local conclusion p ∣ N ∧ ¬ p² ∣ N is conductor-exponent data,
    not a proof that the residual representation is trivial on inertia.

  A future theorem must provide actual residual-representation and inertia
  input before it can establish unramifiedness. This comment is not an axiom,
  theorem, or admitted placeholder.
-/

#print axioms IsFreyUnramifiedAt
-- Expected: propext, Quot.sound only.

end Beal.Galois