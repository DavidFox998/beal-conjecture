/-
  Galois/07h_EutheosGeometry — reusable old/new geometric data

  The fixed-point jitter certificate is arithmetic data.  It does not, by
  itself, construct modular-form subspaces.  This file therefore separates
  the geometric data from the comparison theorem that uses the certificate:

    * a source submodule and the two coefficient-level degeneracy maps;
    * exact identification of the old submodule with their joint image;
    * a supplied Hecke-stable new submodule;
    * coverage of V by old plus new; and
    * a separately stated old/new comparison proposition indexed by a jitter
      witness.

  The comparison proposition is supplied by the Shimura/modular geometry
  layer and is reusable across all descent edges.  The arithmetic inequality
  is consumed only by `old_new_separation_of_eutheos`, which applies that
  formally stated comparison.  No fixed-point arithmetic is presented as a
  proof of modular geometry, and neither `OldNewDecompHyp` nor
  `IsInternalDirectSum` is a field of these structures.
-/
import Beal.Galois.«07h_OldNewOnV»
import Beal.ArakelovRH.DesertBrothers.JitterInterface

namespace Beal.Galois

open Beal.ArakelovRH.DesertBrothers

/-- Choice-free geometric data from which the V-specific old/new proposition
    can be constructed.

    `α_p` and `β_p` are typed coefficient-level degeneracy maps.  Their
    q-expansion identities force them to be the existing `B₁` and `Bp` maps,
    while the source-membership and exact-image fields identify `Old` as their
    joint image on the supplied source module.

    Old/new separation is intentionally not stored here.  It belongs to the
    separately reusable `EutheosGeometryCertificate`, whose comparison field
    is the formal modular-curve or Shimura theorem. -/
structure EutheosGeometryInterface
    (M p ℓ : ℕ)
    (V : Submodule (ZMod ℓ) (CoefficientSequence ℓ)) where
  Source : Submodule (ZMod ℓ) (CoefficientSequence ℓ)
  Old : Submodule (ZMod ℓ) (CoefficientSequence ℓ)
  New : Submodule (ZMod ℓ) (CoefficientSequence ℓ)
  α_p : CoefficientSequence ℓ →ₗ[ZMod ℓ] CoefficientSequence ℓ
  β_p : CoefficientSequence ℓ →ₗ[ZMod ℓ] CoefficientSequence ℓ
  α_qExpansion : α_p = B₁ ℓ
  β_qExpansion : β_p = Bp p ℓ
  α_mem_old :
    ∀ a : CoefficientSequence ℓ, a ∈ Source → α_p a ∈ Old
  β_mem_old :
    ∀ b : CoefficientSequence ℓ, b ∈ Source → β_p b ∈ Old
  old_exact :
    ∀ old : CoefficientSequence ℓ, old ∈ Old →
      ∃ a : CoefficientSequence ℓ, a ∈ Source ∧
        ∃ b : CoefficientSequence ℓ, b ∈ Source ∧
          α_p a + β_p b = old
  modular_V : IsModularFormAtLevel M ℓ V
  genuine_mem_V :
    ∀ f : CoefficientSequence ℓ,
      IsGenuineModularFormAtLevel M ℓ f → f ∈ V
  minimal_V :
    ∀ W : Submodule (ZMod ℓ) (CoefficientSequence ℓ),
      IsModularFormAtLevel M ℓ W →
        (∀ f : CoefficientSequence ℓ,
          IsGenuineModularFormAtLevel M ℓ f → f ∈ W) →
            ∀ v : CoefficientSequence ℓ, v ∈ V → v ∈ W
  modular_Old : IsModularFormAtLevel M ℓ Old
  modular_New : IsModularFormAtLevel M ℓ New
  old_mem_V :
    ∀ old : CoefficientSequence ℓ, old ∈ Old → old ∈ V
  new_mem_V :
    ∀ new : CoefficientSequence ℓ, new ∈ New → new ∈ V
  cover_V :
    ∀ v : CoefficientSequence ℓ, v ∈ V →
      ∃ old : CoefficientSequence ℓ, old ∈ Old ∧
        ∃ new : CoefficientSequence ℓ, new ∈ New ∧ old + new = v

/-- The geometric comparison required to turn an Eutheos witness into
    old/new separation.

    This is deliberately a proposition rather than a consequence of the
    natural-number inequality.  A Shimura or modular-curve proof must show
    that an old/new intersection either forces the opposite inequality or is
    zero.  This constructive alternative avoids deciding equality of
    coefficient sequences and therefore keeps `Classical.choice` out of the
    proof path.  The arithmetic certificate is not an argument to this
    proposition; it enters only later, when
    `old_new_separation_of_eutheos` contradicts the two bounds. -/
def EutheosOldNewComparison
    {M p ℓ : ℕ}
    {V : Submodule (ZMod ℓ) (CoefficientSequence ℓ)}
    (G : EutheosGeometryInterface M p ℓ V) : Prop :=
  ∀ x : CoefficientSequence ℓ, x ∈ G.Old → x ∈ G.New →
    alpha0Denominator ≤ p * scaledNearestIntegerDistance p ∨ x = 0

/-- Reusable geometric certificate for one level, prime, and coefficient
    module.  Unlike the old edge-local interface, the arithmetic witness is
    not part of the geometry: the same certificate can be used with every
    edge carrying that `(M,p,ℓ,V)`. -/
structure EutheosGeometryCertificate
    (M p ℓ : ℕ)
    (V : Submodule (ZMod ℓ) (CoefficientSequence ℓ)) where
  geometry : EutheosGeometryInterface M p ℓ V
  comparison : EutheosOldNewComparison geometry

/-- A reusable source of geometric certificates.  B15 stores one of these
    once, rather than asking every descent edge to repeat old/new geometry. -/
structure EutheosGeometrySupplier (ℓ : ℕ) where
  certificate :
    ∀ (M p : ℕ) (V : Submodule (ZMod ℓ) (CoefficientSequence ℓ)),
      EutheosGeometryCertificate M p ℓ V

/-- The lower-level separation theorem selected by the supplied Eutheos
    witness and the formally stated geometric comparison theorem.  Its
    conclusion is the literal old/new intersection kernel, not an old/new
    decomposition under another name. -/
theorem separation_kernel
    {M p ℓ : ℕ}
    {V : Submodule (ZMod ℓ) (CoefficientSequence ℓ)}
    (D : EutheosGeometryCertificate M p ℓ V)
    (j : EutheosJitter p) :
    ∀ x : CoefficientSequence ℓ, x ∈ D.geometry.Old →
      x ∈ D.geometry.New → x = 0 := by
  intro x hOld hNew
  rcases D.comparison x hOld hNew with hGeometricLowerBound | hZero
  · exact False.elim
      ((Nat.not_lt_of_ge hGeometricLowerBound) j.fixedPointBound)
  · exact hZero

/-- The comparison theorem is the only place where the fixed-point bound is
    applied.  The theorem name is intentionally explicit so an axiom audit
    cannot mistake arithmetic certification for modular geometry. -/
theorem old_new_separation_of_eutheos
    {M p ℓ : ℕ}
    {V : Submodule (ZMod ℓ) (CoefficientSequence ℓ)}
    (D : EutheosGeometryCertificate M p ℓ V)
    (j : EutheosJitter p) :
    ∀ x : CoefficientSequence ℓ, x ∈ D.geometry.Old →
      x ∈ D.geometry.New → x = 0 :=
  separation_kernel D j

/-- Coverage plus the Eutheos-indexed intersection kernel constructs the
    internal direct sum required by the existing boundary. -/
theorem internalDirectSum_of_Eutheos
    {M p ℓ : ℕ}
    {V : Submodule (ZMod ℓ) (CoefficientSequence ℓ)}
    (D : EutheosGeometryCertificate M p ℓ V)
    (j : EutheosJitter p) :
    IsInternalDirectSum V D.geometry.Old D.geometry.New := by
  refine ⟨D.geometry.old_mem_V, D.geometry.new_mem_V, D.geometry.cover_V, ?_⟩
  intro old hOld new hNew hSum
  have hOldEq : old = -new := by
    calc
      old = old + 0 := by simp
      _ = old + (new + -new) := by simp
      _ = (old + new) + -new := by rw [add_assoc]
      _ = 0 + -new := by rw [hSum]
      _ = -new := by simp
  have hOldInNew : old ∈ D.geometry.New := by
    rw [hOldEq]
    exact D.geometry.New.neg_mem hNew
  have hOldZero : old = 0 :=
    old_new_separation_of_eutheos D j old hOld hOldInNew
  have hNewZero : new = 0 := by
    simpa [hOldZero] using hSum
  exact ⟨hOldZero, hNewZero⟩

/-- Construct the existing V-specific old/new proposition from the typed
    Eutheos geometry supplier.

    The proof assembles genuine-form generation and the internal direct sum at
    this theorem boundary.  Neither target proposition is accepted as a field
    of `EutheosGeometryInterface`. -/
theorem OldNewDecompHyp_from_Eutheos
    {M p ℓ : ℕ}
    (V : Submodule (ZMod ℓ) (CoefficientSequence ℓ))
    (D : EutheosGeometryCertificate M p ℓ V)
    (j : EutheosJitter p) :
    OldNewDecompHyp (M := M) (ℓ := ℓ) V := by
  refine ⟨?_, D.geometry.Old, D.geometry.New, D.geometry.modular_Old,
    D.geometry.modular_New, ?_⟩
  · exact ⟨D.geometry.modular_V, D.geometry.genuine_mem_V, D.geometry.minimal_V⟩
  · exact internalDirectSum_of_Eutheos D j

#print axioms EutheosGeometryInterface
#print axioms EutheosOldNewComparison
#print axioms EutheosGeometryCertificate
#print axioms EutheosGeometrySupplier
#print axioms separation_kernel
#print axioms old_new_separation_of_eutheos
#print axioms internalDirectSum_of_Eutheos
#print axioms OldNewDecompHyp_from_Eutheos
-- Expected foundational dependencies: [propext, Quot.sound] only.

end Beal.Galois