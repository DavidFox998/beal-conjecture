import Beal.B17_MazurIrreducible_Core
import Beal.B17_FullE2
import Beal.B14_FreyTate
import Beal.B14_TateC4Nonzero
import Mathlib.FieldTheory.AbsoluteGaloisGroup

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
  eleven_le : 11 ≤ p
  kenku_mazur_bound : p ≤ 37
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

/-- The full rational 2-torsion proposition for the fixed Frey equation.

Unlike the v8.1 lower-bound certificate, this proposition states the exact
four-point set equality, including the point at infinity.
-/
def HasFullRationalTwoTorsion (context : FreyMazurContext) : Prop :=
  ∃ (hA : 0 < context.A) (hB : 0 < context.B),
    FullE2 context.A context.B context.x context.y =
      {0,
        freyTwoTorsionZero context.A context.B context.x context.y hA hB,
        freyTwoTorsionA context.A context.B context.x context.y hA hB,
        freyTwoTorsionNegB context.A context.B context.x context.y hA hB}

/-- Every Frey context has exactly the point at infinity and the three
displayed affine points in its rational 2-torsion set. -/
theorem FreyMazurContext.hasFullRationalTwoTorsion
    (context : FreyMazurContext) :
    HasFullRationalTwoTorsion context := by
  rcases context.beal with ⟨hA, hB, _⟩
  exact ⟨hA, hB,
    freyFullE2_eq context.A context.B context.x context.y hA hB⟩

/-- The geometric points of the fixed Frey curve over `ℚ̄`. -/
noncomputable abbrev GeometricFreyPoint (context : FreyMazurContext) :=
  ((freyRationalCurve context.A context.B context.x context.y).baseChange
    (AlgebraicClosure ℚ)).toAffine.Point

/-- The `p`-torsion subgroup of the geometric Frey points. -/
noncomputable def FreyPTorsion (context : FreyMazurContext) :
    AddSubgroup (GeometricFreyPoint context) where
  carrier := {point | context.p • point = 0}
  zero_mem' := by simp
  add_mem' := by
    intro left right hleft hright
    change context.p • left = 0 at hleft
    change context.p • right = 0 at hright
    change context.p • (left + right) = 0
    rw [nsmul_add, hleft, hright, add_zero]
  neg_mem' := by
    intro point hpoint
    change context.p • point = 0 at hpoint
    simpa using congrArg Neg.neg hpoint

/-- The absolute-Galois action on geometric points of the fixed Frey curve.

The action is induced by applying a `ℚ`-algebra automorphism of `ℚ̄` to both
affine coordinates. This is the actual arithmetic action whose invariant
lines define reducibility of the residual representation.
-/
noncomputable def galoisAction
    (context : FreyMazurContext)
    (σ : Field.absoluteGaloisGroup ℚ) :
    GeometricFreyPoint context →+ GeometricFreyPoint context :=
  WeierstrassCurve.Affine.Point.map
    (W := freyRationalCurve context.A context.B context.x context.y)
    (R := ℚ) (S := ℚ)
    (F := AlgebraicClosure ℚ) (K := AlgebraicClosure ℚ) σ.toAlgHom

/-- A rational cyclic subgroup of order `p` in the geometric `p`-torsion.

Such a Galois-stable subgroup is the kernel form of a rational `p`-isogeny.
Using the kernel avoids pretending that Mathlib 4.12 already contains a
scheme-level elliptic-curve isogeny API.
-/
structure RationalPIsogenyKernel (context : FreyMazurContext) where
  carrier : AddSubgroup (GeometricFreyPoint context)
  finite_carrier : Finite carrier
  card_eq_prime : Nat.card carrier = context.p
  le_pTorsion : carrier ≤ FreyPTorsion context
  galois_stable :
    ∀ (σ : Field.absoluteGaloisGroup ℚ)
      (point : GeometricFreyPoint context),
      point ∈ carrier → galoisAction context σ point ∈ carrier

/-- Reducibility of the fixed Frey mod-`p` representation.

For a two-dimensional elliptic-curve residual representation, reducibility
is equivalent to the existence of an absolute-Galois-stable line. Here that
line is represented concretely by its order-`p` subgroup of geometric
`p`-torsion, equivalently the kernel of a rational `p`-isogeny.
-/
def FreyResidualRepresentationReducible
    (context : FreyMazurContext) : Prop :=
  Nonempty (RationalPIsogenyKernel context)

/-- Predicates consumed by the import-free boundary schema. -/
structure FreyMazurPredicates where
  residualRepresentationReducible : FreyMazurContext → Prop

/-- B17's genuine predicates for full rational `E[2]` and residual
reducibility. -/
def freyMazurPredicates : FreyMazurPredicates where
  residualRepresentationReducible := FreyResidualRepresentationReducible

def MazurIrreducibilityBoundary (predicates : FreyMazurPredicates) : Prop :=
  MazurIrreducibilityBoundary17Core
    FreyMazurContext
    HasFullRationalTwoTorsion
    predicates.residualRepresentationReducible

/-- The residual prime is different from `2`. -/
theorem FreyMazurContext.prime_ne_two (context : FreyMazurContext) :
    context.p ≠ 2 := by
  have hp := context.eleven_le
  omega

/-- The residual prime has good reduction on the displayed Frey model.

The discriminant is a product of `16` and powers of the three bases. Since
`p ≥ 5` and the context records that `p` divides none of those bases, its
image modulo `p` is nonzero.
-/
theorem FreyMazurContext.hasGoodReductionAtResidualPrime
    (context : FreyMazurContext) :
    HasGoodReductionAt context.model context.p := by
  haveI : Fact (Nat.Prime context.p) := ⟨context.prime⟩
  have h16 : (16 : ZMod context.p) ≠ 0 :=
    Beal.FreyTate.TateC4.sixteen_ne_zero_ZMod
      context.prime context.prime_ne_two
  have hA : (context.A : ZMod context.p) ≠ 0 := by
    intro hZero
    exact context.p_not_dvd_A
      ((ZMod.natCast_zmod_eq_zero_iff_dvd context.A context.p).mp hZero)
  have hB : (context.B : ZMod context.p) ≠ 0 := by
    intro hZero
    exact context.p_not_dvd_B
      ((ZMod.natCast_zmod_eq_zero_iff_dvd context.B context.p).mp hZero)
  have hC : (context.C : ZMod context.p) ≠ 0 := by
    intro hZero
    exact context.p_not_dvd_C
      ((ZMod.natCast_zmod_eq_zero_iff_dvd context.C context.p).mp hZero)
  intro hDivides
  have hZero :
      ((context.model.discriminant : ℤ) : ZMod context.p) = 0 := by
    rw [ZMod.intCast_zmod_eq_zero_iff_dvd]
    exact Int.natCast_dvd.mpr hDivides
  have hNonzero :
      ((context.model.discriminant : ℤ) : ZMod context.p) ≠ 0 := by
    rw [context.model.discriminant_eq]
    simp only [disc_Frey]
    push_cast
    exact mul_ne_zero
      (mul_ne_zero
        (mul_ne_zero h16 (pow_ne_zero 2 (pow_ne_zero context.x hA)))
        (pow_ne_zero 2 (pow_ne_zero context.y hB)))
      (pow_ne_zero 2 (pow_ne_zero context.z hC))
  exact False.elim (hNonzero hZero)

/-- Good reduction is one of the two explicit semistable branches. -/
theorem FreyMazurContext.isSemistableAtResidualPrime
    (context : FreyMazurContext) :
    IsSemistableAt context.model context.p :=
  Or.inl context.hasGoodReductionAtResidualPrime

/-- A theorem-valued interface for the Mazur rational-isogeny classification
specialized to the concrete Frey objects used here.

The supplier must consume the proved full rational `E[2]`, good-reduction, and
semistability certificates and rule out a genuine Galois-stable order-`p`
subgroup. Keeping this as an explicit argument removes the global B17 axiom
without pretending that Mathlib 4.12 contains the modular-curve proof.
-/
def MazurRationalIsogenyClassification : Prop :=
  ∀ context : FreyMazurContext,
    HasFullRationalTwoTorsion context →
    HasGoodReductionAt context.model context.p →
    IsSemistableAt context.model context.p →
    RationalPIsogenyKernel context →
    False

/-- Derive Frey residual irreducibility from the explicit Mazur classification
supplier and the reduction facts proved from the context. -/
theorem frey_irreducible_of_mazur
    (classification : MazurRationalIsogenyClassification)
    (context : FreyMazurContext)
    (hFull : HasFullRationalTwoTorsion context) :
    ¬ FreyResidualRepresentationReducible context := by
  rintro ⟨kernel⟩
  exact classification context hFull
    context.hasGoodReductionAtResidualPrime
    context.isSemistableAtResidualPrime kernel

/-- B17 instantiates its boundary with the genuine Frey residual predicate,
conditional on an explicit theorem-valued Mazur classification supplier. -/
theorem frey_mazur_irreducibility_boundary
    (classification : MazurRationalIsogenyClassification) :
    MazurIrreducibilityBoundary freyMazurPredicates :=
  fun context hFull =>
    frey_irreducible_of_mazur classification context hFull

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
  · exact (by omega : ¬ 11 ≤ 2) (hTwo ▸ context.eleven_le)

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
#print axioms FreyMazurContext.hasFullRationalTwoTorsion
#print axioms FreyPTorsion
#print axioms galoisAction
#print axioms RationalPIsogenyKernel
#print axioms FreyResidualRepresentationReducible
#print axioms MazurIrreducibilityBoundary
#print axioms FreyMazurContext.hasGoodReductionAtResidualPrime
#print axioms FreyMazurContext.isSemistableAtResidualPrime
#print axioms MazurRationalIsogenyClassification
#print axioms frey_irreducible_of_mazur
#print axioms frey_mazur_irreducibility_boundary

end Beal17Mazur