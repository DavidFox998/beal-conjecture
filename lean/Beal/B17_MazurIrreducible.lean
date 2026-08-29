import Beal.B17_MazurIrreducible_Core
import Beal.B17_FreyRationalTwoTorsion
import Beal.B14_FreyTate

namespace Beal17Mazur

open Beal.FreyTate

/-- Arithmetic data fixed before a Mazur irreducibility theorem can be stated.

The record carries the actual integral Frey model and the existing B14
prime-support property for one conductor value. It carries no irreducibility
proof and no hidden torsion theorem.
-/
structure FreyMazurContext where
  A : Nat
  B : Nat
  C : Nat
  x : Nat
  y : Nat
  z : Nat
  p : Nat
  beal : IsBealSolution A B C x y z
  prime : p.Prime
  five_le : 5 ≤ p
  model : FreyIntegralModel (A : Int) (B : Int) (C : Int) x y z
  conductorData : FreyConductorData model
  p_not_dvd_A : ¬ p ∣ A
  p_not_dvd_B : ¬ p ∣ B
  p_not_dvd_C : ¬ p ∣ C

/-- The genuine rational 2-torsion proposition for the Frey equation.

This is inhabited only by a certificate containing the three distinct
nonidentity points in Mathlib's rational-point group, each killed by doubling.
-/
def HasThreeDistinctRationalTwoTorsion (context : FreyMazurContext) : Prop :=
  Nonempty <|
    FreyThreeDistinctRationalTwoTorsion
      context.A context.B context.x context.y

/-- Every positive-base Frey context has three distinct rational 2-torsion points. -/
theorem FreyMazurContext.hasThreeDistinctRationalTwoTorsion
    (context : FreyMazurContext) :
    HasThreeDistinctRationalTwoTorsion context := by
  rcases context.beal with ⟨hA, hB, _⟩
  exact ⟨freyThreeDistinctRationalTwoTorsion
    context.A context.B context.x context.y hA hB⟩

/-- Vocabulary that a future elliptic-curve/Galois layer must instantiate.

Mathlib 4.12 does not provide residual representations for rational Frey
curves. Keeping this predicate explicit prevents an arbitrary arithmetic
proposition from being called reducibility.
-/
structure FreyMazurPredicates where
  residualRepresentationReducible : FreyMazurContext → Prop

/-- The one honest Mazur boundary schema. B17 defines but does not assert it.

A future proof must instantiate `FreyMazurPredicates` with genuine
elliptic-curve notions and then inhabit this proposition.
-/
def MazurIrreducibilityBoundary (predicates : FreyMazurPredicates) : Prop :=
  MazurIrreducibilityBoundary17Core
    FreyMazurContext
    HasThreeDistinctRationalTwoTorsion
    predicates.residualRepresentationReducible

/-- The model-indexed B14 conductor support proves that the fixed odd prime
does not divide the model's conductor when it divides none of the bases. -/
theorem prime_not_dvd_conductor (context : FreyMazurContext) :
    ¬ context.p ∣ context.conductorData.conductor := by
  intro hDivides
  rcases context.conductorData.conductor_prime_support
      context.p context.prime hDivides with hBases | hTwo
  · have hBasesNat :
        context.p ∣ context.A * context.B * context.C := by
      simpa using hBases
    rcases context.prime.dvd_mul.mp hBasesNat with hAB | hC
    · rcases context.prime.dvd_mul.mp hAB with hA | hB
      · exact context.p_not_dvd_A hA
      · exact context.p_not_dvd_B hB
    · exact context.p_not_dvd_C hC
  · exact (by omega : ¬ 5 ≤ 2) (hTwo ▸ context.five_le)

/-- Remove an exactly-dividing factor from an arbitrary natural number.

This theorem is the arithmetic fact that the old B17 wrapper mislabeled as
Mazur irreducibility. It makes no claim about a Galois representation.
-/
theorem remove_exact_divisor (N p : Nat)
    (hExact : ExactDivisor17Core p N) :
    ∃ M : Nat, RemovedPrimeFactor17Core p N M :=
  remove_exact_divisor17Core N p hExact

/-- Specialization of `remove_exact_divisor` to an exactly-dividing factor `q`
of the conductor indexed by one fixed integral Frey model.

The conductor factor is deliberately separate from `context.p`: B14 support
proves that the latter does not divide this conductor under the context's
hypotheses.
-/
theorem remove_exact_context_conductor_divisor
    (context : FreyMazurContext) (q : Nat)
    (hExact :
      ExactDivisor17Core q context.conductorData.conductor) :
    ∃ M : Nat,
      RemovedPrimeFactor17Core
        q context.conductorData.conductor M :=
  remove_exact_divisor17Core
    context.conductorData.conductor q hExact

#print axioms prime_not_dvd_conductor
#print axioms remove_exact_divisor
#print axioms remove_exact_context_conductor_divisor
#print axioms MazurIrreducibilityBoundary

end Beal17Mazur