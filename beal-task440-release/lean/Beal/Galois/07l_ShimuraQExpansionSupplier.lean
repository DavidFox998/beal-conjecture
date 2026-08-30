/-
  Galois/07l_ShimuraQExpansionSupplier

  Structured landing zones for Shimura/modular-curve proofs of the
  q-expansion premise used by 07g and the old/new comparison used by 07h.

  The public Batch148 decomposition is useful as a historical roadmap, but its
  Hecke-eigenvalue, Jacobian-factor, and Frobenius/Hecke statements do not by
  themselves imply the pair-cancellation theorem required by
  `QExpansionPrincipleOnV`.  In particular, an ordinary q-expansion principle
  says that one geometric form is determined by its coefficients; 07g also
  needs independence of the two degeneracy images.

  This file therefore separates the missing geometry into an explicit data
  structure:

  * every coefficient sequence in `V` is realized by a source-level form;
  * source and target forms have compatible q-expansion maps;
  * the target q-expansion map is injective;
  * the sum of the two degeneracy images has the expected coefficients; and
  * the geometric degeneracy-pair map has trivial kernel.

  Once those fields are genuinely constructed, the coefficient-level
  `QExpansionPrincipleOnV`, restricted Ihara theorem, and Eutheos-indexed
  old/new separation theorem follow by transparent transport.  The structures
  are supplier boundaries, not claims that fixed-point arithmetic has
  formalized the required modular curves or Shimura correspondence.
-/
import Beal.Galois.«07g_IharaOnV»
import Beal.Galois.«07h_EutheosGeometry»

namespace Beal.Galois

/-- Geometric data sufficient to transport a genuine Shimura/Ihara argument
    into the finite coefficient-sequence model used by the Beal development.

    `SourceForm` models the relevant level-`M` geometric forms and
    `TargetForm` the target of the two degeneracy maps.  No analytic or
    algebro-geometric implementation is hidden in these carrier types: a
    future supplier must construct them and prove every compatibility field.

    The final field is deliberately geometric.  It is stronger and more
    informative than merely restating coefficient cancellation: it says that
    the sum of the two actual degeneracy images has trivial kernel before
    transporting back through q-expansions. -/
structure ShimuraQExpansionData
    (M p ℓ : ℕ)
    (V : Submodule (ZMod ℓ) (CoefficientSequence ℓ)) where
  SourceForm : Type
  TargetForm : Type
  sourceZero : SourceForm
  targetZero : TargetForm
  sourceQExpansion : SourceForm → CoefficientSequence ℓ
  targetQExpansion : TargetForm → CoefficientSequence ℓ
  realize :
    ∀ f : CoefficientSequence ℓ, f ∈ V → SourceForm
  realize_qExpansion :
    ∀ (f : CoefficientSequence ℓ) (hf : f ∈ V),
      sourceQExpansion (realize f hf) = f
  sourceZero_qExpansion :
    sourceQExpansion sourceZero = 0
  targetZero_qExpansion :
    targetQExpansion targetZero = 0
  degeneracyPair : SourceForm → SourceForm → TargetForm
  degeneracyPair_qExpansion :
    ∀ a b : SourceForm,
      targetQExpansion (degeneracyPair a b) =
        sourceQExpansion a + Bp p ℓ (sourceQExpansion b)
  targetQExpansion_injective :
    Function.Injective targetQExpansion
  degeneracyPair_kernel_zero :
    ∀ a b : SourceForm,
      degeneracyPair a b = targetZero →
        a = sourceZero ∧ b = sourceZero

/-- Concrete modular-curve/Shimura old/new data together with the comparison
    theorem used to separate the two geometric carriers.

    The comparison is a geometric theorem: its input records the Eutheos
    scale through `p`, but it does not consume the fixed-point upper bound.
    Instead, it constructively says an old/new intersection either forces the
    opposite lower bound or is zero.  Nothing in this structure derives
    modular geometry from arithmetic alone. -/
structure ShimuraOldNewGeometry
    (M p ℓ : ℕ)
    (V : Submodule (ZMod ℓ) (CoefficientSequence ℓ)) where
  geometry : EutheosGeometryInterface M p ℓ V
  old_new_comparison : EutheosOldNewComparison geometry

/-- One reusable Shimura geometry implementation supplies every descent edge
    at the relevant level, prime, coefficient characteristic, and module. -/
structure ShimuraOldNewGeometrySupplier (ℓ : ℕ) where
  geometry :
    ∀ (M p : ℕ) (V : Submodule (ZMod ℓ) (CoefficientSequence ℓ)),
      ShimuraOldNewGeometry M p ℓ V

/-- Forget only the Shimura carrier names, retaining the exact geometric
    comparison theorem in the 07h reusable certificate. -/
def EutheosGeometryCertificate.fromShimura
    {M p ℓ : ℕ}
    {V : Submodule (ZMod ℓ) (CoefficientSequence ℓ)}
    (D : ShimuraOldNewGeometry M p ℓ V) :
    EutheosGeometryCertificate M p ℓ V where
  geometry := D.geometry
  comparison := D.old_new_comparison

/-- The geometric old/new separation theorem.

    The formally supplied Shimura theorem gives a lower bound from a
    hypothetical nonzero intersection; the Eutheos certificate gives the
    strict upper bound.  In particular, this proof contains no coefficient
    arithmetic pretending to establish modular geometry. -/
theorem old_new_separation_from_shimura
    {M p ℓ : ℕ}
    {V : Submodule (ZMod ℓ) (CoefficientSequence ℓ)}
    (D : ShimuraOldNewGeometry M p ℓ V)
    (j : Beal.ArakelovRH.DesertBrothers.EutheosJitter p) :
    ∀ x : CoefficientSequence ℓ, x ∈ D.geometry.Old →
      x ∈ D.geometry.New → x = 0 :=
  old_new_separation_of_eutheos
    (EutheosGeometryCertificate.fromShimura D) j

/-- A genuine `ShimuraQExpansionData` supplier closes the exact 07g
    coefficient-cancellation premise.

    This theorem is only the adapter.  Its proof uses no Hecke-eigenvalue
    placeholder, no zero-form shortcut, and no choice of geometric witnesses:
    all realization and injectivity data are explicit fields of `D`. -/
theorem QExpansionPrincipleOnV_FromShimura
    (M p ℓ : ℕ)
    (V : Submodule (ZMod ℓ) (CoefficientSequence ℓ))
    (D : ShimuraQExpansionData M p ℓ V) :
    QExpansionPrincipleOnV M p ℓ V := by
  intro _hV a b ha hb hRelation
  let aGeom : D.SourceForm := D.realize a ha
  let bGeom : D.SourceForm := D.realize b hb
  have hTargetQ :
      D.targetQExpansion (D.degeneracyPair aGeom bGeom) =
        D.targetQExpansion D.targetZero := by
    calc
      D.targetQExpansion (D.degeneracyPair aGeom bGeom) =
          D.sourceQExpansion aGeom +
            Bp p ℓ (D.sourceQExpansion bGeom) :=
        D.degeneracyPair_qExpansion aGeom bGeom
      _ = a + Bp p ℓ b := by
        rw [D.realize_qExpansion a ha, D.realize_qExpansion b hb]
      _ = 0 := hRelation
      _ = D.targetQExpansion D.targetZero :=
        D.targetZero_qExpansion.symm
  have hTarget :
      D.degeneracyPair aGeom bGeom = D.targetZero :=
    D.targetQExpansion_injective hTargetQ
  rcases D.degeneracyPair_kernel_zero aGeom bGeom hTarget with
    ⟨haGeom, hbGeom⟩
  constructor
  · calc
      a = D.sourceQExpansion aGeom :=
        (D.realize_qExpansion a ha).symm
      _ = D.sourceQExpansion D.sourceZero :=
        congrArg D.sourceQExpansion haGeom
      _ = 0 := D.sourceZero_qExpansion
  · calc
      b = D.sourceQExpansion bGeom :=
        (D.realize_qExpansion b hb).symm
      _ = D.sourceQExpansion D.sourceZero :=
        congrArg D.sourceQExpansion hbGeom
      _ = 0 := D.sourceZero_qExpansion

/-- The same supplier also closes the restricted Ihara conclusion once the
    existing 07f genuine-submodule witness is provided. -/
theorem IharaKernelZeroOnV_FromShimura
    (M p ℓ : ℕ)
    (V : Submodule (ZMod ℓ) (CoefficientSequence ℓ))
    (hV : IsGenuineFormSubmoduleAtLevel M ℓ V)
    (D : ShimuraQExpansionData M p ℓ V) :
    IharaKernelZeroOnV M p ℓ V :=
  ihara_zero_on_genuine_V_conditional M p ℓ V hV
    (QExpansionPrincipleOnV_FromShimura M p ℓ V D)

#print axioms ShimuraQExpansionData
#print axioms ShimuraOldNewGeometry
#print axioms ShimuraOldNewGeometrySupplier
#print axioms EutheosGeometryCertificate.fromShimura
#print axioms old_new_separation_from_shimura
#print axioms QExpansionPrincipleOnV_FromShimura
#print axioms IharaKernelZeroOnV_FromShimura
-- Expected foundational dependencies: [propext, Quot.sound] only.

end Beal.Galois