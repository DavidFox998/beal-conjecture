/-
      B14_FormRepresentation — explicit form/representation boundary

      This module imports Mathlib's genuine monoid-representation type and
      exposes the data that a future Ribet level-lowering theorem must
      transport. It deliberately proves no existence theorem and contains no
      level-lowering axiom.

      The upstream ImperialCollegeLondon/FLT project was not imported
      wholesale: its current branch targets a newer Lean/Mathlib pair and
      contains admitted proof content. This adapter therefore uses only the
      representation interface already available in this project's pinned
      Mathlib version.
-/
import Mathlib.RepresentationTheory.Basic
import Mathlib.Data.ZMod.Basic
import Beal.B14_FreyTate

namespace Beal.FreyTate

section FormRepresentation

variable {A B C : ℤ} {x y z : ℕ}

/-- The fixed two-dimensional residual coefficient space at `ℓ`.

    The space is concrete, rather than an opaque dimension token. A future
    implementation may replace it with the actual `E[ℓ]` torsion space once
    the elliptic-curve/Galois construction is formalized. -/
abbrev ResidualSpace (ℓ : ℕ) := Fin 2 → ZMod ℓ

/-- A residual representation associated with one fixed Frey model.

    `G` is left explicit because this project does not yet formalize the
    absolute Galois group. The model is a parameter of the type, so data for
    one Frey equation cannot be silently reused for another equation. -/
structure FreyResidualRepresentation
    (model : FreyCurveModel A B C x y z) (ℓ : ℕ) (G : Type*)
    [Group G] where
  action : Representation (ZMod ℓ) G (ResidualSpace ℓ)
  residual_prime : ℓ.Prime
  frobenius : ℕ → G

/-- The coefficient data exposed by a nonzero weight-two cusp-form witness.

    This is a q-expansion interface, not a construction of the space of
    modular forms. In particular, it records only the concrete data a later
    imported or formalized modular-form theory must validate. A lowered form
    may live at a proper divisor of the original Frey conductor. -/
structure WeightTwoFormInterface
    (model : FreyCurveModel A B C x y z) (ℓ N : ℕ) where
  weight : ℕ
  weight_eq_two : weight = 2
  qExpansion : ℕ → ZMod ℓ
  level_divides_source_conductor : N ∣ model.conductor
  vanishes_at_infinity : qExpansion 0 = 0
  nonzero : ∃ n, qExpansion n ≠ 0

/-- A coordinate trace on the concrete two-dimensional residual space. -/
def residualTrace {ℓ : ℕ}
    (T : ResidualSpace ℓ →ₗ[ZMod ℓ] ResidualSpace ℓ) : ZMod ℓ :=
  T (fun j => if (0 : Fin 2) = j then 1 else 0) 0 +
    T (fun j => if (1 : Fin 2) = j then 1 else 0) 1

/-- The explicit representation/form relation used by this interface.

    This is deliberately concrete and independent of the level index: the
    q-expansion coefficient at `n` is the trace of the residual action at the
    selected Frobenius element. A future modular-form development must prove
    that its genuine form and Galois representation satisfy this relation.
    This definition itself does not assert that such data exist. -/
def TraceCompatible
    (model : FreyCurveModel A B C x y z) (ℓ N : ℕ) (G : Type*)
    [Group G]
    (residual : FreyResidualRepresentation model ℓ G)
    (form : WeightTwoFormInterface model ℓ N) : Prop :=
  ∀ n, form.qExpansion n =
    residualTrace (residual.action (residual.frobenius n))

/-- A form and residual representation satisfying the explicit compatibility
    relation. The model remains a type index, so the witness is tied to one
    fixed Frey equation. -/
structure FreyFormRepresentationInterface
    (model : FreyCurveModel A B C x y z) (ℓ N : ℕ) (G : Type*)
    [Group G] where
  residual : FreyResidualRepresentation model ℓ G
  form : WeightTwoFormInterface model ℓ N
  compatible : TraceCompatible model ℓ N G residual form

/-- Reuse the same q-expansion at any level dividing the source conductor. -/
def transportForm
    {model : FreyCurveModel A B C x y z} {ℓ N M : ℕ}
    (form : WeightTwoFormInterface model ℓ N)
    (hM : M ∣ model.conductor) :
    WeightTwoFormInterface model ℓ M :=
  { weight := form.weight
    weight_eq_two := form.weight_eq_two
    qExpansion := form.qExpansion
    level_divides_source_conductor := hM
    vanishes_at_infinity := form.vanishes_at_infinity
    nonzero := form.nonzero }

/-- The concrete trace/q-expansion relation is unchanged when the level index
    changes and the q-expansion itself is retained. -/
theorem traceCompatible_transport
    {model : FreyCurveModel A B C x y z} {ℓ N M : ℕ} {G : Type*}
    [Group G]
    (residual : FreyResidualRepresentation model ℓ G)
    (form : WeightTwoFormInterface model ℓ N)
    (hCompatible : TraceCompatible model ℓ N G residual form)
    (hM : M ∣ model.conductor) :
    TraceCompatible model ℓ M G residual (transportForm form hM) := by
  intro n
  exact hCompatible n

/-- Transport the explicit representation/form compatibility to a divisor
    level. This is a structural theorem about the stated interface; it is not
    a proof that a genuine modular form is modular at a lower level. -/
def transportFormRepresentation
    {model : FreyCurveModel A B C x y z} {ℓ N M : ℕ} {G : Type*}
    [Group G]
    (witness : FreyFormRepresentationInterface model ℓ N G)
    (hM : M ∣ model.conductor) :
    FreyFormRepresentationInterface model ℓ M G :=
  { residual := witness.residual
    form := transportForm witness.form hM
    compatible :=
      traceCompatible_transport witness.residual witness.form witness.compatible hM }

/-- Exact level division supplies the divisor needed by
    `transportFormRepresentation`. -/
def transportFormRepresentation_of_level_step
    {model : FreyCurveModel A B C x y z} {ℓ N M p : ℕ} {G : Type*}
    [Group G]
    (witness : FreyFormRepresentationInterface model ℓ N G)
    (hlevel : M * p = N) :
    FreyFormRepresentationInterface model ℓ M G := by
  apply transportFormRepresentation witness
  rcases witness.form.level_divides_source_conductor with ⟨k, hk⟩
  refine ⟨p * k, ?_⟩
  calc
    model.conductor = N * k := hk
    _ = (M * p) * k := by rw [hlevel]
    _ = M * (p * k) := by simp [Nat.mul_assoc]

end FormRepresentation

end Beal.FreyTate
