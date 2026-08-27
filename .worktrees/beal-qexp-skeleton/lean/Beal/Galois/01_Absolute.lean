/-
      Galois/01_Absolute — the absolute-Galois interface used by Ribet

      This file does not construct Qbar or identify a concrete absolute Galois
      group. It records only the group, decomposition-subgroup, and
      inertia-subgroup interfaces needed to state unramifiedness.

      Tate's local conductor boundary is intentionally not used here:
      p ∣ N and p² ∤ N do not imply that a residual representation has
      trivial inertia at p.
-/
import Mathlib.LinearAlgebra.Matrix.GeneralLinearGroup.Defs

namespace Beal.Galois

/-- An abstract carrier for `Gal(Qbar / Q)`.

    The group operation is carried as structure data because decomposition and
    inertia interfaces require multiplication and inversion. No field,
    algebraic closure, topology, or construction of `Qbar` is introduced at
    this boundary. -/
structure AbsoluteGaloisGroup where
  carrier : Type
  group : Group carrier

instance : CoeSort AbsoluteGaloisGroup Type where
  coe G := G.carrier

instance (G : AbsoluteGaloisGroup) : Group G :=
  G.group

/-- A constructive subgroup interface.

    Mathlib's bundled `Subgroup` pulls `Classical.choice` into the axiom audit
    for this abstract-carrier setup. This closure-complete interface is the
    exact subgroup data needed here and keeps the Galois boundary constructive. -/
structure GaloisSubgroup (G : Type) [Group G] where
  carrier : Set G
  one_mem : 1 ∈ carrier
  mul_mem : ∀ {a b : G}, a ∈ carrier → b ∈ carrier → a * b ∈ carrier
  inv_mem : ∀ {a : G}, a ∈ carrier → a⁻¹ ∈ carrier

/-- A decomposition subgroup at the rational prime `p`.

    Its carrier is a subset of the absolute Galois carrier, so `Dp ≤ G` is
    built into its type. -/
structure DecompositionSubgroup (G : AbsoluteGaloisGroup) (p : ℕ) where
  Dp : GaloisSubgroup G

/-- An inertia subgroup together with the inclusion `Ip ≤ Dp`. -/
structure InertiaSubgroup
    (G : AbsoluteGaloisGroup) (p : ℕ)
    extends DecompositionSubgroup G p where
  Ip : GaloisSubgroup G
  Ip_le_Dp : ∀ {g : G}, g ∈ Ip.carrier → g ∈ toDecompositionSubgroup.Dp.carrier

/-- The carrier of a decomposition subgroup. -/
abbrev DecompositionElement
    {G : AbsoluteGaloisGroup} {p : ℕ}
    (D : DecompositionSubgroup G p) :=
  { g : G // g ∈ D.Dp.carrier }

/-- The canonical inclusion of inertia into its decomposition subgroup. -/
def InertiaSubgroup.toDecomposition
    {G : AbsoluteGaloisGroup} {p : ℕ}
    (I : InertiaSubgroup G p) :
    { g : G // g ∈ I.Ip.carrier } →
      DecompositionElement I.toDecompositionSubgroup :=
  fun g => ⟨g, I.Ip_le_Dp g.property⟩

/-- The canonical inclusion of inertia into the absolute Galois group. -/
def InertiaSubgroup.toAbsolute
    {G : AbsoluteGaloisGroup} {p : ℕ}
    (I : InertiaSubgroup G p) :
    { g : G // g ∈ I.Ip.carrier } → G :=
  fun g => g

/-- The equivalence relation for a coset modulo inertia.

    It is written as `a⁻¹ b ∈ Ip`; its quotient is a right-coset class space.
    No normality assumption is needed merely to speak about a class. -/
def inertiaCosetSetoid
    {G : AbsoluteGaloisGroup} {p : ℕ}
    (I : InertiaSubgroup G p) :
    Setoid (DecompositionElement I.toDecompositionSubgroup) where
  r a b := a.val⁻¹ * b.val ∈ I.Ip.carrier
  iseqv := by
    constructor
    · intro a
      simpa using I.Ip.one_mem
    · intro a b hab
      simpa only [mul_inv_rev, inv_inv] using I.Ip.inv_mem hab
    · intro a b c hab hbc
      have hmul : (a.val⁻¹ * b.val) * (b.val⁻¹ * c.val) ∈ I.Ip.carrier :=
        I.Ip.mul_mem hab hbc
      have hrewrite :
          (a.val⁻¹ * b.val) * (b.val⁻¹ * c.val) = a.val⁻¹ * c.val := by
        calc
          (a.val⁻¹ * b.val) * (b.val⁻¹ * c.val) =
              a.val⁻¹ * (b.val * (b.val⁻¹ * c.val)) := by
                exact mul_assoc _ _ _
          _ = a.val⁻¹ * ((b.val * b.val⁻¹) * c.val) := by
                congr 1
                exact (mul_assoc _ _ _).symm
          _ = a.val⁻¹ * c.val := by simp
      rwa [hrewrite] at hmul

/-- A Frobenius element modulo inertia, represented as a quotient class. -/
abbrev FrobeniusClass
    {G : AbsoluteGaloisGroup} {p : ℕ}
    (I : InertiaSubgroup G p) :=
  Quotient (inertiaCosetSetoid I)

/-- The quotient class of an element of the decomposition subgroup. -/
def FrobeniusClass.mk
    {G : AbsoluteGaloisGroup} {p : ℕ}
    (I : InertiaSubgroup G p)
    (g : DecompositionElement I.toDecompositionSubgroup) :
    FrobeniusClass I :=
  Quotient.mk (inertiaCosetSetoid I) g

/-- The two-dimensional general linear group over `ZMod ℓ`, represented as
    automorphisms of the concrete free module `(Fin 2 → ZMod ℓ)`. -/
abbrev GL2 (ℓ : ℕ) :=
  (Fin 2 → ZMod ℓ) ≃ₗ[ZMod ℓ] (Fin 2 → ZMod ℓ)

/-- A residual representation is a function into the concrete `GL₂(ZMod ℓ)`.

    The source group is abstract on purpose: this layer supplies the local
    subgroup interface without building the absolute Galois field. -/
abbrev ResidualRepresentation
    (G : AbsoluteGaloisGroup) (ℓ : ℕ) :=
  G → GL2 ℓ

/-- A residual representation is unramified at `p` when inertia acts
    trivially. -/
def IsUnramifiedAt
    {G : AbsoluteGaloisGroup} {ℓ : ℕ}
    (ρ : ResidualRepresentation G ℓ)
    (p : ℕ) (I : InertiaSubgroup G p) : Prop :=
  ∀ g : G, g ∈ I.Ip.carrier → ρ g = 1

theorem isUnramifiedAt_iff
    {G : AbsoluteGaloisGroup} {ℓ : ℕ}
    (ρ : ResidualRepresentation G ℓ)
    (p : ℕ) (I : InertiaSubgroup G p) :
    IsUnramifiedAt ρ p I ↔ ∀ g : G, g ∈ I.Ip.carrier → ρ g = 1 :=
  Iff.rfl

#print axioms isUnramifiedAt_iff
-- Expected: propext, Quot.sound only.

end Beal.Galois