/-
  Patching/DeformationHecke — explicit deformation/Hecke comparison data

  This file records the algebraic objects needed to compare a deformation of
  one fixed Frey residual representation with its localized Hecke algebra.
  It does not assert universality, completeness, Noetherianity, or R=T. Those
  stronger properties belong to the later modularity-lifting layer.
-/
import Beal.Patching.PatchedModule
import Beal.Galois.«06_MaximalIdeal»
import Beal.Galois.«07e_MultOne»

namespace Beal.Patching

open Beal.FreyTate
open Beal.Galois
open Beal.ArakelovRH.DesertBrothers

/-- A deformation-ring carrier attached to one fixed Frey residual
    representation.

    The lifted traces and their residual specializations are explicit. This is
    strictly less than a universal deformation ring: no representability or
    complete-local-ring theorem is claimed here. -/
structure FreyDeformationRingData
    {A B C : ℤ} {x y z : ℕ}
    {model : FreyCurveModel A B C x y z} {ℓ : ℕ}
    (R : FreyResidualRepresentation model ℓ) where
  Carrier : Type
  semiring : Semiring Carrier
  residual : Carrier →+* ZMod ℓ
  traceLift : R.Gabs.carrier → Carrier
  trace_specializes :
    ∀ g : R.Gabs.carrier,
      residual (traceLift g) = modLTrace ℓ (R.rho g)

instance freyDeformationRingSemiring
    {A B C : ℤ} {x y z : ℕ}
    {model : FreyCurveModel A B C x y z} {ℓ : ℕ}
    {R : FreyResidualRepresentation model ℓ}
    (D : FreyDeformationRingData R) : Semiring D.Carrier :=
  D.semiring

/-- A comparison map from the deformation carrier to the localized Hecke
    algebra attached to the same residual representation.

    The commuting residual-specialization square is recorded pointwise so the
    later trace theorem is constructive. Surjectivity or injectivity of
    `toHecke` is deliberately not asserted here; that is the genuine R=T step. -/
structure FreyDeformationHeckeComparison
    {A B C : ℤ} {x y z : ℕ}
    {model : FreyCurveModel A B C x y z} {M ℓ : ℕ}
    {R : FreyResidualRepresentation model ℓ}
    (𝔪 : MaximalIdeal M ℓ)
    [H : LocalizedHeckeData M ℓ 𝔪]
    (attachment : FreyHeckeAttachment R 𝔪.1)
    (D : FreyDeformationRingData R) where
  toHecke : D.Carrier →+* LocalizedHeckeAlgebra M ℓ 𝔪
  heckeResidual : LocalizedHeckeAlgebra M ℓ 𝔪 →+* ZMod ℓ
  extends_attachment :
    ∀ T : HeckeAlgebra M ℓ,
      heckeResidual (H.algebraMap T) = attachment.eval T
  residual_commutes :
    ∀ r : D.Carrier,
      heckeResidual (toHecke r) = D.residual r

/-- Lifted Galois traces specialize through the Hecke comparison to the fixed
    residual trace. -/
theorem FreyDeformationHeckeComparison.trace_specializes
    {A B C : ℤ} {x y z : ℕ}
    {model : FreyCurveModel A B C x y z} {M ℓ : ℕ}
    {R : FreyResidualRepresentation model ℓ}
    {𝔪 : MaximalIdeal M ℓ}
    [H : LocalizedHeckeData M ℓ 𝔪]
    {attachment : FreyHeckeAttachment R 𝔪.1}
    {D : FreyDeformationRingData R}
    (C : FreyDeformationHeckeComparison 𝔪 attachment D)
    (g : R.Gabs.carrier) :
    C.heckeResidual (C.toHecke (D.traceLift g)) =
      modLTrace ℓ (R.rho g) := by
  rw [C.residual_commutes, D.trace_specializes]

/-- The localized residual map agrees with the attached Hecke eigenvalue on
    every away-from-level generator. -/
theorem FreyDeformationHeckeComparison.attached_generator_trace
    {A B C : ℤ} {x y z : ℕ}
    {model : FreyCurveModel A B C x y z} {M ℓ : ℕ}
    {R : FreyResidualRepresentation model ℓ}
    {𝔪 : MaximalIdeal M ℓ}
    [H : LocalizedHeckeData M ℓ 𝔪]
    {attachment : FreyHeckeAttachment R 𝔪.1}
    {D : FreyDeformationRingData R}
    (C : FreyDeformationHeckeComparison 𝔪 attachment D)
    (q : ℕ) (hq : q.Prime) (hAway : ¬ q ∣ M) :
    C.heckeResidual
        (H.algebraMap
          ⟨HeckeSequenceOp q ℓ,
            heckeSequenceOp_mem_HeckeAlgebra hq hAway⟩) =
      attachment.trace q hq hAway := by
  rw [C.extends_attachment, attachment.generator_trace]

/-- Taylor–Wiles primes act on the finite patched modules through explicit
    diamond scalars, compatibly with transition maps.

    Membership in `Qₙ` is required for the scalar attached to a prime. The
    transition law is stated for the whole supplied diamond action because
    adjacent Taylor–Wiles prime lists need not be definitionally nested. -/
structure TaylorWilesFiniteLevelAction
    {p ℓ : ℕ} {j : EutheosJitter p}
    (Q : TaylorWilesPrimeSystem p ℓ j)
    {T N : Type} [Semiring T] [AddCommMonoid N] [Module T N]
    (P : PatchedModuleData T N) where
  diamondScalar :
    ∀ (n q : ℕ), q ∈ (Q.level n).Q → T
  diamond_action :
    ∀ (n q : ℕ) (hq : q ∈ (Q.level n).Q)
      (v : (P.finiteLevel n).Carrier),
      P.diamondOperator n q v = diamondScalar n q hq • v
  transition_diamond :
    ∀ (n q : ℕ) (v : (P.finiteLevel (n + 1)).Carrier),
      P.transition n (P.diamondOperator (n + 1) q v) =
        P.diamondOperator n q (P.transition n v)
  scalar_compatible :
    ∀ (n q : ℕ)
      (hq : q ∈ (Q.level n).Q)
      (hq' : q ∈ (Q.level (n + 1)).Q),
      diamondScalar n q hq = diamondScalar (n + 1) q hq'

/-- Finite-level rank-one coordinates turn the diamond action into
    multiplication by its explicit scalar. -/
theorem TaylorWilesFiniteLevelAction.coordinate_diamond
    {p ℓ : ℕ} {j : EutheosJitter p}
    {Q : TaylorWilesPrimeSystem p ℓ j}
    {T N : Type} [Semiring T] [AddCommMonoid N] [Module T N]
    {P : PatchedModuleData T N}
    (A : TaylorWilesFiniteLevelAction Q P)
    (n q : ℕ) (hq : q ∈ (Q.level n).Q)
    (v : (P.finiteLevel n).Carrier) :
    (P.finiteLevelCoordinates n).coordinate
        (P.diamondOperator n q v) =
      A.diamondScalar n q hq *
        (P.finiteLevelCoordinates n).coordinate v := by
  rw [A.diamond_action,
    (P.finiteLevelCoordinates n).coordinate_smul]

#print axioms FreyDeformationRingData
#print axioms FreyDeformationHeckeComparison
#print axioms FreyDeformationHeckeComparison.trace_specializes
#print axioms FreyDeformationHeckeComparison.attached_generator_trace
#print axioms TaylorWilesFiniteLevelAction
#print axioms TaylorWilesFiniteLevelAction.coordinate_diamond
-- Expected foundational dependencies: [propext, Quot.sound] at most.

end Beal.Patching