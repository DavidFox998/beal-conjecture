/-
  Galois/07f_GenuineSubmodule — the finite genuine-form boundary

  The ambient coefficient-sequence module is deliberately larger than the
  finite q-expansion boundary.  This file names the narrower boundary used by
  the v7 support work:

  * the constructive principal submodule of the supplied sequence is stable
    under the existing Hecke
    algebra at level `M`; and
  * the sequence has finite support and is stable under a finite family of
    away-from-level Hecke generators.

  This is still a coefficient-level boundary.  It is not a construction of a
  complex-analytic modular-form space, and it does not prove any geometric
  Ihara or old/new theorem.
-/
import Beal.Galois.«07c_Ihara»
import Beal.Galois.«07d_OldNew»

namespace Beal.Galois

/-- The constructive one-generator coefficient submodule.

    This is the intended principal span of `f`, written directly rather than
    with `Submodule.span`.  In Lean 4.12, the literal lattice-span definition
    imports `Classical.choice` into the axiom report.  The explicit carrier
    below has the same one-generator meaning while retaining the project-wide
    `[propext, Quot.sound]` audit boundary. -/
def PrincipalCoefficientSubmodule (ℓ : ℕ)
    (f : CoefficientSequence ℓ) :
    Submodule (ZMod ℓ) (CoefficientSequence ℓ) where
  carrier := { g | ∃ c : ZMod ℓ, c • f = g }
  zero_mem' := ⟨0, by simp⟩
  add_mem' := by
    intro a b ha hb
    rcases ha with ⟨ca, hca⟩
    rcases hb with ⟨cb, hcb⟩
    refine ⟨ca + cb, ?_⟩
    rw [add_smul, hca, hcb]
  smul_mem' := by
    intro c a ha
    rcases ha with ⟨ca, hca⟩
    refine ⟨c * ca, ?_⟩
    rw [mul_smul, hca]

/-- Finite q-expansion support together with a finite away-from-level Hecke
    stability test.

    The first conjunct is the finite-support convention used by
    `coefficientSequenceOfForm`.  The second conjunct checks the finitely many
    generator labels below `M + ℓ + 1`; the all-expression stability of the
    span is supplied separately by `IsModularFormAtLevel`.  This split keeps
    the present boundary explicit instead of pretending that a finite list is
    an analytic modular-form space. -/
def FiniteHeckeStabilityCondition (M ℓ : ℕ)
    (f : CoefficientSequence ℓ) : Prop :=
  ∃ bound : ℕ,
    (∀ n, bound ≤ n → f n = 0) ∧
    (∀ q : Fin (M + ℓ + 1),
        q.val.Prime →
          ¬ q.val ∣ M →
            HeckeSequenceOp q.val ℓ f ∈
              PrincipalCoefficientSubmodule ℓ f)

/-- A finite coefficient sequence with a Hecke-stable one-dimensional span.

    `IsGenuineModularFormAtLevel` is intentionally a project-local finite
    boundary.  The name records the intended role in the support argument; it
    does not assert that the coefficient sequence comes from a classical
    modular form. -/
def IsGenuineModularFormAtLevel (M ℓ : ℕ)
    (f : CoefficientSequence ℓ) : Prop :=
  IsModularFormAtLevel M ℓ
      (PrincipalCoefficientSubmodule ℓ f) ∧
    FiniteHeckeStabilityCondition M ℓ f

/-- The unrestricted Ihara cancellation witness has infinite support and so
    cannot be a finite genuine-form sequence.

    The calculation is performed directly on `CoefficientSequence`: at
    `p * (bound + 1)`, the `Bp` component of the constant-one sequence is one,
    while the finite-support condition requires the negated component to be
    zero. -/
theorem genuine_excludes_07c_counterexample
    {M p ℓ : ℕ} [Nontrivial (ZMod ℓ)] (hp : p.Prime) :
    ¬ IsGenuineModularFormAtLevel M ℓ
        (-Bp p ℓ (1 : CoefficientSequence ℓ)) := by
  intro hGenuine
  rcases hGenuine.2 with ⟨bound, hFinite, _hHecke⟩
  have hBound : bound ≤ p * (bound + 1) := by
    exact (Nat.le_succ bound).trans
      (Nat.le_mul_of_pos_left (bound + 1) hp.pos)
  have hZero :
      (-Bp p ℓ (1 : CoefficientSequence ℓ)) (p * (bound + 1)) = 0 :=
    hFinite (p * (bound + 1)) hBound
  have hBp :
      Bp p ℓ (1 : CoefficientSequence ℓ) (p * (bound + 1)) = 1 := by
    simp [Bp, BpCoeff, hp.ne_zero]
  have hOneZero : (1 : ZMod ℓ) = 0 := by
    have hNegOneZero : (-1 : ZMod ℓ) = 0 := by
      change -((Bp p ℓ (1 : CoefficientSequence ℓ))
        (p * (bound + 1))) = 0 at hZero
      rw [hBp] at hZero
      exact hZero
    exact neg_eq_zero.mp hNegOneZero
  exact one_ne_zero hOneZero

#print axioms FiniteHeckeStabilityCondition
#print axioms PrincipalCoefficientSubmodule
#print axioms IsGenuineModularFormAtLevel
#print axioms genuine_excludes_07c_counterexample
-- Expected foundational dependencies: [propext, Quot.sound] only.

end Beal.Galois