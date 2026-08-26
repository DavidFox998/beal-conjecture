/-
  Galois/07g_IharaOnV — the Ihara boundary on a finite form submodule

  Layer 07c proves that the raw coefficient-sequence map has a cancellation
  kernel.  This file restricts the desired assertion to a supplied Hecke-stable
  submodule whose elements meet the finite genuine-form boundary of 07f.

  The explicit raw witness from 07c cannot be an element of such a submodule.
  That exclusion does not rule out every possible oldform relation.  The
  remaining local geometric input is therefore exposed below as
  `QExpansionPrincipleOnV`, from which the restricted kernel theorem is proved
  conditionally.
-/
import Beal.Galois.«07f_GenuineSubmodule»

namespace Beal.Galois

/-- Membership in the coefficient-pair domain induced by a submodule `V`. -/
def IharaPairIn
    {ℓ : ℕ} (V : Submodule (ZMod ℓ) (CoefficientSequence ℓ))
    (v : CoefficientSequence ℓ × CoefficientSequence ℓ) : Prop :=
  v.1 ∈ V ∧ v.2 ∈ V

/-- The desired Ihara kernel-zero assertion restricted to `V × V`. -/
def IharaKernelZeroOnV (M p ℓ : ℕ)
    (V : Submodule (ZMod ℓ) (CoefficientSequence ℓ)) : Prop :=
  IsModularFormAtLevel M ℓ V →
    ∀ v : CoefficientSequence ℓ × CoefficientSequence ℓ,
      IharaPairIn V v →
        IharaMap p ℓ v = 0 →
          v = 0

/-- A supplied coefficient submodule is suitable for the finite v7 boundary
    when it is Hecke-stable and all of its elements satisfy the finite
    genuine-form predicate. -/
def IsGenuineFormSubmoduleAtLevel (M ℓ : ℕ)
    (V : Submodule (ZMod ℓ) (CoefficientSequence ℓ)) : Prop :=
  IsModularFormAtLevel M ℓ V ∧
    ∀ f : CoefficientSequence ℓ, f ∈ V →
      IsGenuineModularFormAtLevel M ℓ f

/-- The explicit q-expansion input needed to rule out every oldform relation
    on a genuine coefficient submodule.

    `CoefficientSequence ℓ` is already the project's q-expansion model, so the
    ordinary statement "all coefficients vanish implies the sequence is zero"
    follows by function extensionality and is not enough here.  The missing
    geometric assertion is that two genuine level-`M` sequences cannot cancel
    through the two degeneracy expansions `B₁` and `Bp` unless both are zero.

    This proposition is intentionally an inspectable premise.  It is not
    derived from finite support, and it does not rename the single raw-witness
    exclusion as a full Ihara lemma. -/
def QExpansionPrincipleOnV (M p ℓ : ℕ)
    (V : Submodule (ZMod ℓ) (CoefficientSequence ℓ)) : Prop :=
  IsGenuineFormSubmoduleAtLevel M ℓ V →
    ∀ a b : CoefficientSequence ℓ,
      a ∈ V →
        b ∈ V →
          a + Bp p ℓ b = 0 →
            a = 0 ∧ b = 0

/-- The explicit cancellation pair used in the 07c kernel theorem. -/
def rawIharaCounterexample (p ℓ : ℕ) :
    CoefficientSequence ℓ × CoefficientSequence ℓ :=
  (-Bp p ℓ (1 : CoefficientSequence ℓ), 1)

/-- The raw pair remains in the coefficient-level Ihara kernel. -/
theorem rawIharaCounterexample_in_kernel (p ℓ : ℕ) :
    IharaMap p ℓ (rawIharaCounterexample p ℓ) = 0 := by
  ext n
  simp [rawIharaCounterexample, IharaMap, B₁, Bp, BpCoeff, add_assoc]

/-- The 07c cancellation pair cannot live in a Hecke-stable submodule made
    solely of finite genuine-form sequences. -/
theorem rawIharaCounterexample_not_in_genuine_domain
    {M p ℓ : ℕ} [Nontrivial (ZMod ℓ)] (hp : p.Prime)
    {V : Submodule (ZMod ℓ) (CoefficientSequence ℓ)}
    (hV : IsGenuineFormSubmoduleAtLevel M ℓ V) :
    ¬ IharaPairIn V (rawIharaCounterexample p ℓ) := by
  intro hPair
  have hFirstGenuine :
      IsGenuineModularFormAtLevel M ℓ
        (-Bp p ℓ (1 : CoefficientSequence ℓ)) :=
    hV.2 _ (by simpa [rawIharaCounterexample] using hPair.1)
  exact genuine_excludes_07c_counterexample hp hFirstGenuine

/-- Restricted Ihara injectivity on a genuine coefficient submodule,
    conditional on the explicit q-expansion/degeneracy-relation principle.

    The proof performs only the valid coefficient-level transport: a vector
    in the kernel gives a relation `a + Bp b = 0`, and the supplied geometric
    principle makes both components zero.  No choice or hidden mathematical
    axiom is used. -/
theorem ihara_zero_on_genuine_V_conditional
    (M p ℓ : ℕ)
    (V : Submodule (ZMod ℓ) (CoefficientSequence ℓ))
    (hV : IsGenuineFormSubmoduleAtLevel M ℓ V)
    (hQ : QExpansionPrincipleOnV M p ℓ V) :
    IharaKernelZeroOnV M p ℓ V := by
  intro _hMod v hPair hKernel
  have hRelation : v.1 + Bp p ℓ v.2 = 0 := by
    simpa [IharaMap, B₁] using hKernel
  rcases hQ hV v.1 v.2 hPair.1 hPair.2 hRelation with ⟨hFirst, hSecond⟩
  apply Prod.ext
  · exact hFirst
  · exact hSecond

-- MISSING: prove `QExpansionPrincipleOnV` for the actual level-M modular-form
-- submodule using the local geometric Ihara input.  Finite support and the
-- 07f exclusion of `(-Bp 1, 1)` alone do not establish this proposition.

#print axioms IharaPairIn
#print axioms IharaKernelZeroOnV
#print axioms IsGenuineFormSubmoduleAtLevel
#print axioms QExpansionPrincipleOnV
#print axioms rawIharaCounterexample
#print axioms rawIharaCounterexample_in_kernel
#print axioms rawIharaCounterexample_not_in_genuine_domain
#print axioms ihara_zero_on_genuine_V_conditional
-- Expected foundational dependencies: [propext, Quot.sound] only.

end Beal.Galois