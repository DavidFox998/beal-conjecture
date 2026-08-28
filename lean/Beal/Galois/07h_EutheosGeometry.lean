/-
  Galois/07h_EutheosGeometry — typed Eutheos old/new supplier

  The fixed-point jitter certificate is arithmetic data.  It does not, by
  itself, construct modular-form subspaces.  This file therefore records the
  missing geometric content below the existing `OldNewDecompHyp` boundary:

    * a source submodule and the two coefficient-level degeneracy maps;
    * exact identification of the old submodule with their joint image;
    * a supplied Hecke-stable new submodule;
    * coverage of V by old plus new; and
    * a geometric old/new intersection theorem indexed by the jitter witness.

  The last field is where a future modular-curve argument must use the
  denominator-cleared inequality in `EutheosJitter`.  It is deliberately not
  claimed that Lean's natural-number inequality proves that geometric theorem
  on its own.  In particular, this structure has no `OldNewDecompHyp` or
  `IsInternalDirectSum` field.
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

    `kernel_of_jitter` is strictly below an old/new direct-sum assertion: it
    states only that the geometric old and new carriers have trivial
    intersection.  A genuine supplier must prove it for the supplied jitter
    witness from the missing geometric comparison theorem. -/
structure EutheosGeometryInterface
    (M p ℓ : ℕ)
    (V : Submodule (ZMod ℓ) (CoefficientSequence ℓ)) where
  jitter : EutheosJitter p
  anchor : 1419 ∈ brothers1419
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
  kernel_of_jitter :
    ∀ j : EutheosJitter p,
      p * scaledNearestIntegerDistance p < alpha0Denominator →
      ∀ x : CoefficientSequence ℓ, x ∈ Old → x ∈ New → x = 0

/-- The lower-level separation theorem selected by the supplied Eutheos
    witness.  Its conclusion is the literal old/new intersection kernel, not
    an old/new decomposition under another name. -/
theorem separation_kernel
    {M p ℓ : ℕ}
    {V : Submodule (ZMod ℓ) (CoefficientSequence ℓ)}
    (D : EutheosGeometryInterface M p ℓ V)
    (j : EutheosJitter p) :
    ∀ x : CoefficientSequence ℓ, x ∈ D.Old → x ∈ D.New → x = 0 :=
  D.kernel_of_jitter j j.jitter_lt_reciprocal

/-- Coverage plus the Eutheos-indexed intersection kernel constructs the
    internal direct sum required by the existing boundary. -/
theorem internalDirectSum_of_Eutheos
    {M p ℓ : ℕ}
    {V : Submodule (ZMod ℓ) (CoefficientSequence ℓ)}
    (D : EutheosGeometryInterface M p ℓ V) :
    IsInternalDirectSum V D.Old D.New := by
  refine ⟨D.old_mem_V, D.new_mem_V, D.cover_V, ?_⟩
  intro old hOld new hNew hSum
  have hOldEq : old = -new := by
    calc
      old = old + 0 := by simp
      _ = old + (new + -new) := by simp
      _ = (old + new) + -new := by rw [add_assoc]
      _ = 0 + -new := by rw [hSum]
      _ = -new := by simp
  have hOldInNew : old ∈ D.New := by
    rw [hOldEq]
    exact D.New.neg_mem hNew
  have hOldZero : old = 0 :=
    separation_kernel D D.jitter old hOld hOldInNew
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
    (D : EutheosGeometryInterface M p ℓ V) :
    OldNewDecompHyp (M := M) (ℓ := ℓ) V := by
  refine ⟨?_, D.Old, D.New, D.modular_Old, D.modular_New, ?_⟩
  · exact ⟨D.modular_V, D.genuine_mem_V, D.minimal_V⟩
  · exact internalDirectSum_of_Eutheos D

#print axioms EutheosGeometryInterface
#print axioms separation_kernel
#print axioms internalDirectSum_of_Eutheos
#print axioms OldNewDecompHyp_from_Eutheos
-- Expected foundational dependencies: [propext, Quot.sound] only.

end Beal.Galois