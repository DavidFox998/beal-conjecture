/-
  Galois/07m_FourierQExpansion

  The ordinary analytic Fourier expansion on a genuine continuous complex
  function on an additive circle is faithful.  This is a small, concrete
  q-expansion-style foundation: it is not a construction of mod-`ℓ` modular
  forms, modular curves, or the Shimura supplier required by 07l.
-/
import Mathlib.Analysis.Fourier.AddCircle

noncomputable section

namespace Beal.Galois

variable (T : ℝ) [Fact (0 < T)]

/-- The full analytic Fourier coefficient sequence of a continuous complex
    function on the additive circle of period `T`.

    This is called a q-expansion-style map only in the limited sense that it
    records all Fourier coefficients.  Its source is the genuine analytic
    space `C(AddCircle T, ℂ)`, not a space of mod-`ℓ` modular forms. -/
def continuousFourierQExpansion : C(AddCircle T, ℂ) → ℤ → ℂ :=
  fun f n => fourierCoeff f n

/-- A continuous complex function on `AddCircle T` is determined by all of
    its Fourier coefficients.

    The proof transports the coefficient equality to `L²`, uses Mathlib's
    complete Fourier Hilbert basis there, and then uses faithfulness of `toLp`
    on continuous functions for Haar measure. -/
theorem continuousFourierQExpansion_injective :
    Function.Injective (continuousFourierQExpansion T) := by
  intro f g hfg
  apply ContinuousMap.toLp_injective (p := 2) (𝕜 := ℂ) AddCircle.haarAddCircle
  apply (fourierBasis.repr).injective
  ext n
  rw [fourierBasis_repr, fourierCoeff_toLp, fourierBasis_repr, fourierCoeff_toLp]
  exact congrFun hfg n

#print axioms continuousFourierQExpansion
#print axioms continuousFourierQExpansion_injective
-- The analytic integral and Hilbert-basis API visibly add `Classical.choice`.

end Beal.Galois