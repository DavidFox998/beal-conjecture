/-
  Galois/07g_IharaOnV — the Ihara boundary on a finite form submodule

  Layer 07c proves that the raw coefficient-sequence map has a cancellation
  kernel.  This file restricts the desired assertion to a supplied Hecke-stable
  submodule whose elements meet the finite genuine-form boundary of 07f.

  The restricted Ihara theorem is not proved here.  The proved result is more
  limited and exact: the explicit raw witness from 07c cannot be an element of
  such a submodule.  Local geometric input is still required to prove that the
  restricted kernel is zero.
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

-- MISSING: a genuine Ihara theorem must prove `IharaKernelZeroOnV M p ℓ V`
-- for the actual level-M modular-form submodule, using the local geometric
-- and Hecke-theoretic input absent from the coefficient-sequence model.

#print axioms IharaPairIn
#print axioms IharaKernelZeroOnV
#print axioms IsGenuineFormSubmoduleAtLevel
#print axioms rawIharaCounterexample
#print axioms rawIharaCounterexample_in_kernel
#print axioms rawIharaCounterexample_not_in_genuine_domain
-- Expected foundational dependencies: [propext, Quot.sound] only.

end Beal.Galois