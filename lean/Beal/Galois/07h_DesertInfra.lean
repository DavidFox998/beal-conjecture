/-
  Galois/07h_DesertInfra — historical hComplement dependency sketch

  This file preserves the v7.2 dependency sketch for audit compatibility.
  The active, non-circular supplier now lives in `07h_EutheosGeometry`; it
  derives the old/new proposition from lower-level maps, coverage, and
  separation data and is consumed by B15.

  The upstream `Family.DirichletJitterTime` module currently requires Mathlib
  4.15, while Beal remains fixed to 4.12. This layer therefore imports the
  small vendored compatibility interface rather than executing the upstream
  1419 native_decide proof.
-/
import Beal.Galois.«07h_EutheosGeometry»
import Beal.ArakelovRH.DesertBrothers.JitterRealBridge

namespace Beal.Galois

/-- The v7.2 dependency bundle retained as an explicit historical boundary.

    The jitter witness is stored as data. `hComplement` remains an explicit
    proposition field: this infrastructure does not pretend that the 1419
    arithmetic condition constructs an old/new decomposition of a Hecke
    module. New code should use `EutheosGeometryInterface` instead. -/
structure EutheosComplementSketch
    {M ℓ : ℕ}
    (V : Submodule (ZMod ℓ) (CoefficientSequence ℓ)) where
  p : ℕ
  jitter :
    Beal.ArakelovRH.DesertBrothers.EutheosJitter p
  anchor : 1419 ∈ Beal.ArakelovRH.DesertBrothers.brothers1419
  hComplement : OldNewDecompHyp (M := M) (ℓ := ℓ) V

/-- Dependency-graph supplier for the 07h old/new complement.

    This is not used by the active B15 path.  The jitter
    certificate concerns an arithmetic input, while `OldNewDecompHyp` is a
    proposition about the genuine-form-generated Hecke module.  Accordingly,
    this definition only projects the still-explicit complement field; it does
    not claim the missing bridge. -/
def OldNewDecompHyp_from_EutheosSketch
    {M ℓ : ℕ}
    (V : Submodule (ZMod ℓ) (CoefficientSequence ℓ))
    (j : EutheosComplementSketch (M := M) V) :
    OldNewDecompHyp (M := M) (ℓ := ℓ) V :=
  j.hComplement

#check Beal.ArakelovRH.DesertBrothers.EutheosJitter
#check Beal.ArakelovRH.DesertBrothers.realJitter_of_fixedPoint
#check Beal.ArakelovRH.DesertBrothers.brothers1419_anchor
#print axioms EutheosComplementSketch
#print axioms OldNewDecompHyp_from_EutheosSketch

end Beal.Galois