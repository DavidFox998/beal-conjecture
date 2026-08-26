/-
  Galois/07b_SupportProof — conditional attack on newform support

  This file makes explicit the missing mod-ℓ newform decomposition,
  q-expansion, Ihara, local transport, multiplicity-one, and
  quotient/evaluation ingredients. It proves only their valid logical
  transport to typed newform support.
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

/-- The finite-form consequence needed from a mod-ℓ old/new decomposition. -/
def ModLNewformDecomposition
    {A B C : ℤ} {x y z : ℕ}
    {model : FreyCurveModel A B C x y z} {ℓ : ℕ}
    (R : FreyResidualRepresentation model ℓ)
    (p M N : ℕ) : Prop :=
  ModLQExpansionInjective (model := model) N ℓ →
    ∀ W : ModLWeightTwoForm (model := model) N ℓ,
      ModLRealizesRepresentation W R →
        W ∈ OldSubspace (model := model) N M ℓ ∨ IsNewform W

/-- The downstream residual/form consequence needed to rule out old support. -/
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

/-- The exact-divisor Jacquet--Langlands/local transport interface. -/
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
    attachment record. -/
def QuotientEvaluationCompatible
    {A B C : ℤ} {x y z : ℕ}
    {model : FreyCurveModel A B C x y z} {ℓ : ℕ}
    (R : FreyResidualRepresentation model ℓ)
    {M : ℕ} (𝔪 : MaximalIdeal M ℓ)
    (hAttach : FreyHeckeAttachment R 𝔪.1) : Prop :=
  ∀ T : HeckeAlgebra M ℓ, T ∈ 𝔪.1 ↔ hAttach.eval T = 0

/-- The finite-boundary consequence required from localized multiplicity one. -/
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

/-- Conditional construction of the lower-level newform support. -/
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
  have hNotDivM : ¬ p ∣ M :=
    not_dvd_lower_level hDiv hExact
  have hExactLevel : ExactPrimeLevelData p M N :=
    ⟨hExact.1, hExact.2, hNotDivM⟩
  rcases hNewformDecomposition hQExpansion W hReal with hOld | hNewAtN
  · exact False.elim
      (hIhara hPrime hOdd hExactLevel hUnram W hReal hOld)
  · rcases hJacquetLanglands hPrime hOdd hExactLevel W hReal hNewAtN with
      ⟨W', hNew', hReal'⟩
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

end Beal.Galois