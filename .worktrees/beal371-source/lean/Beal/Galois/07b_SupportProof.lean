/- 
  Galois/07b_SupportProof — conditional attack on newform support

  OPEN INGREDIENTS (not supplied by Lean/Mathlib 4.12 at this boundary):

  1. mod-ℓ newform decomposition:
       the relevant Hecke module is old ⊕ new as 𝕋-modules;
  2. q-expansion principle mod ℓ:
       the q-expansion map is injective;
  3. local Ihara lemma mod ℓ (isolated in `07c_Ihara`):
       ker(B₁, B_p) = 0 in characteristic ℓ;
  4. Jacquet–Langlands local transport at p:
       the exact-divisor case transports the residual system to level M;
  5. multiplicity one:
       the localized Hecke algebra 𝕋_𝔪 acts freely with rank one on the
       new subspace;
  6. quotient/evaluation compatibility:
       (𝕋^M)_𝔪 maps to End(new_M) through the explicit ZMod ℓ evaluation.

  This file makes those six points explicit as named Prop-valued interfaces.
  The proof below does not claim that any of them is available in Mathlib.
  It deliberately stays inside the finite Galois/Hecke boundary described by
  its imports below.

  The existing finite form record is intentionally weaker than a Hecke module:
  it has finite q-expansions and predicates, but no old/new direct-sum
  construction or degeneracy-map kernel. The interfaces below therefore state
  exactly the transport conclusions needed by this scaffold without fabricating
  those absent modules.
-/
import Beal.Galois.«07_NewformSupport»
import Beal.Galois.«05_Hecke»
import Beal.Galois.«07c_Ihara»
import Beal.B14_FreyTate
import Beal.B03_Conductor_Core

namespace Beal.Galois

open Beal.FreyTate

/-- The elementary arithmetic package for one exact prime in the level. -/
def ExactPrimeLevelData (p M N : ℕ) : Prop :=
  p ∣ N ∧ ¬ p * p ∣ N ∧ ¬ p ∣ M

/-- The q-expansion injectivity interface missing from the finite boundary. -/
def ModLQExpansionInjective
    {A B C : ℤ} {x y z : ℕ}
    {model : FreyCurveModel A B C x y z} (N ℓ : ℕ) : Prop :=
  ∀ {W₁ W₂ : ModLWeightTwoForm (model := model) N ℓ},
    W₁.f_q = W₂.f_q → W₁ = W₂

/-- The finite-form consequence needed from a mod-ℓ old/new decomposition.

    This is not itself a direct-sum decomposition of Hecke modules. The
    current finite-form record has no additive module or Hecke action on its
    new component, so the genuine decomposition remains a missing ingredient. -/
def ModLNewformDecomposition
    {A B C : ℤ} {x y z : ℕ}
    {model : FreyCurveModel A B C x y z} {ℓ : ℕ}
    (R : FreyResidualRepresentation model ℓ)
    (p M N : ℕ) : Prop :=
  ModLQExpansionInjective (model := model) N ℓ →
    ∀ W : ModLWeightTwoForm (model := model) N ℓ,
      ModLRealizesRepresentation W R →
        W ∈ OldSubspace (model := model) N M ℓ ∨ IsNewform W

/-- The downstream residual/form consequence needed to rule out old support.

    `07c_Ihara` isolates the raw coefficient-level `(B₁, Bp)` kernel statement.
    That statement alone cannot yield this implication on unrestricted
    coefficient sequences; the missing bridge to the actual level-M form
    subspace and residual ramification remains explicit here. -/
def IharaOldExclusion
    {A B C : ℤ} {x y z : ℕ}
    {model : FreyCurveModel A B C x y z} {ℓ : ℕ}
    (R : FreyResidualRepresentation model ℓ)
    (p M N : ℕ) (I : InertiaSubgroup R.Gabs p) : Prop :=
  ∀ (hPrime : p.Prime), p ≠ 2 →
    ExactPrimeLevelData p M N →
      IsFreyUnramifiedAt R p I →
        ∀ W : ModLWeightTwoForm (model := model) N ℓ,
          ModLRealizesRepresentation W R →
            W ∈ OldSubspace (model := model) N M ℓ → False

/-- The exact-divisor Jacquet--Langlands/local transport interface.

    This is the central missing lower-level existence statement. It is kept
    separate from the old/new alternative so the proof must use the surviving
    new component at level `N`. -/
def JacquetLanglandsLowering
    {A B C : ℤ} {x y z : ℕ}
    {model : FreyCurveModel A B C x y z} {ℓ : ℕ}
    (R : FreyResidualRepresentation model ℓ)
    (p M N : ℕ) : Prop :=
  ∀ (hPrime : p.Prime), p ≠ 2 →
    ExactPrimeLevelData p M N →
      ∀ W : ModLWeightTwoForm (model := model) N ℓ,
        ModLRealizesRepresentation W R →
          IsNewform W →
            ∃ W' : ModLWeightTwoForm (model := model) M ℓ,
              IsNewform W' ∧ ModLRealizesRepresentation W' R

/-- The minimal quotient/evaluation compatibility already present in the
    attachment record.

    This is only the kernel/evaluation relation. A genuine quotient,
    localization, and action on a new subspace are still missing. -/
def QuotientEvaluationCompatible
    {A B C : ℤ} {x y z : ℕ}
    {model : FreyCurveModel A B C x y z} {ℓ : ℕ}
    (R : FreyResidualRepresentation model ℓ)
    {M : ℕ} (𝔪 : MaximalIdeal M ℓ)
    (hAttach : FreyHeckeAttachment R 𝔪.1) : Prop :=
  ∀ T : HeckeAlgebra M ℓ, T ∈ 𝔪.1 ↔ hAttach.eval T = 0

/-- The finite-boundary consequence required from localized multiplicity one.

    Rather than assuming ideal annihilation directly, this interface exposes
    the needed bridge: an operator with zero attached evaluation acts by zero
    on the coefficient sequence of the corresponding lower-level new form.
    A genuine rank-one localized module theorem is stronger and remains
    outside the current finite-form API. -/
def LocalizedMultiplicityOne
    {A B C : ℤ} {x y z : ℕ}
    {model : FreyCurveModel A B C x y z} {ℓ : ℕ}
    (R : FreyResidualRepresentation model ℓ)
    {M : ℕ} (𝔪 : MaximalIdeal M ℓ)
    (hAttach : FreyHeckeAttachment R 𝔪.1) : Prop :=
  QuotientEvaluationCompatible R 𝔪 hAttach →
    ∀ W' : ModLWeightTwoForm (model := model) M ℓ,
      IsNewform W' →
        ModLRealizesRepresentation W' R →
          ∀ T : HeckeAlgebra M ℓ,
            hAttach.eval T = 0 →
              T.1 (coefficientSequenceOfForm W') = 0

/-- One exact prime in `N = M * p` cannot also divide `M`. -/
lemma not_dvd_lower_level
    {p M N : ℕ}
    (hDiv : M * p = N)
    (hExact : ExactDividesCore p N) :
    ¬ p ∣ M := by
  intro hpM
  apply hExact.2
  rcases hpM with ⟨k, hk⟩
  refine ⟨k, ?_⟩
  calc
    N = M * p := hDiv.symm
    _ = (p * k) * p := by rw [hk]
    _ = (p * p) * k := by
      simp [Nat.mul_assoc, Nat.mul_comm, Nat.mul_left_comm]

/-- Conditional construction of the lower-level newform support.

    The current `FreyHeckeAttachment` interface is
    `FreyHeckeAttachment R 𝔪.1`; `W` is kept as a separate argument because
    the record does not contain a form parameter. The six named interfaces
    below are the missing mathematical inputs listed in the file header.

    `hAttach.kernel_eq` supplies the quotient/evaluation compatibility already
    present in the attachment record. The other interfaces remain explicit:
    no unavailable theorem is silently treated as an established result.
-/
def hNewformSupport_proof
    {A B C : ℤ} {x y z : ℕ}
    {model : FreyCurveModel A B C x y z} {ℓ : ℕ}
    (R : FreyResidualRepresentation model ℓ)
    (p M N : ℕ)
    (hDiv : M * p = N)
    (hExact : ExactDividesCore p N)
    (hPrime : p.Prime)
    (hOdd : p ≠ 2)
    (I : InertiaSubgroup R.Gabs p)
    (hUnram : IsFreyUnramifiedAt R p I)
    (W : ModLWeightTwoForm (model := model) N ℓ)
    (hReal : ModLRealizesRepresentation W R)
    (𝔪 : MaximalIdeal M ℓ)
    (hAttach : FreyHeckeAttachment R 𝔪.1)
    (hQExpansion :
      ModLQExpansionInjective (model := model) N ℓ)
    (hNewformDecomposition :
      ModLNewformDecomposition R p M N)
    (hIhara : IharaOldExclusion R p M N I)
    (hJacquetLanglands : JacquetLanglandsLowering R p M N)
    (hMultiplicityOne : LocalizedMultiplicityOne R 𝔪 hAttach) :
    SupportInNewSubspace R 𝔪 := by
  -- MISSING Mathlib 4.12: exact-divisor arithmetic is available here only
  -- because the conductor core exposes p ∣ N and ¬ p² ∣ N explicitly.
  have hNotDivM : ¬ p ∣ M :=
    not_dvd_lower_level hDiv hExact
  have hExactLevel : ExactPrimeLevelData p M N :=
    ⟨hExact.1, hExact.2, hNotDivM⟩

  -- MISSING Mathlib 4.12: the mod-ℓ q-expansion principle and its Hecke
  -- module formulation are represented by this explicit hypothesis.
  rcases hNewformDecomposition hQExpansion W hReal with hOld | hNewAtN
  · -- MISSING Mathlib 4.12: Ihara's kernel argument turns old support into
    -- residual ramification at p. This is the contradiction branch.
    exact False.elim
      (hIhara hPrime hOdd hExactLevel hUnram W hReal hOld)
  · -- MISSING Mathlib 4.12: local Jacquet--Langlands/Ihara transport produces
    -- a lower-level new form from the surviving non-old component.
    rcases hJacquetLanglands hPrime hOdd hExactLevel W hReal hNewAtN with
      ⟨W', hNew', hReal'⟩
    -- MISSING Mathlib 4.12: localized multiplicity one identifies the
    -- attached maximal-ideal component with the lower-level new form.
    have hCompatibility :
        QuotientEvaluationCompatible R 𝔪 hAttach :=
      hAttach.kernel_eq
    have hAnnihilates :
        HeckeIdealAnnihilatesForm 𝔪.1 W' :=
      by
        intro T hTm
        exact hMultiplicityOne hCompatibility W' hNew' hReal' T
          ((hCompatibility T).mp hTm)
    exact ⟨W', hNew', hReal', hAnnihilates⟩

#print axioms ExactPrimeLevelData
#print axioms ModLQExpansionInjective
#print axioms ModLNewformDecomposition
#print axioms IharaOldExclusion
#print axioms JacquetLanglandsLowering
#print axioms QuotientEvaluationCompatible
#print axioms LocalizedMultiplicityOne
#print axioms not_dvd_lower_level
#print axioms hNewformSupport_proof
-- Expected foundational dependencies: [propext, Quot.sound] only.

end Beal.Galois