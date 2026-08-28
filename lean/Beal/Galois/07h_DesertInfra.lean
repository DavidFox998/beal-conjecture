/-
  Galois/07h_DesertInfra — dependency graph for the hComplement sketch

  This file is infrastructure only.  The imported desert-brothers result is
  an arithmetic jitter certificate; it is not an old/new decomposition of a
  Hecke module.  The supplier below is therefore intentionally a sketch and
  is not used by B15 or B20.

  The upstream `Family.DirichletJitterTime` module currently requires Mathlib
  4.15, while Beal remains fixed to 4.12. This layer therefore imports the
  small vendored compatibility interface rather than executing the upstream
  1419 native_decide proof.
-/
import Beal.Galois.«07h_OldNewOnV»
import Beal.ArakelovRH.DesertBrothers.JitterRealBridge

namespace Beal.Galois

/-- The explicit dependency bundle for a future hComplement construction.

    The jitter witness is stored as data. `hComplement` remains an explicit
    proposition field: this infrastructure does not pretend that the 1419
    arithmetic condition constructs an old/new decomposition of a Hecke
    module. The follow-on task must replace this field with the actual bridge. -/
structure EutheosComplementSketch
    {M ℓ : ℕ}
    (V : Submodule (ZMod ℓ) (CoefficientSequence ℓ)) where
  p : ℕ
  jitter :
    Beal.ArakelovRH.DesertBrothers.EutheosJitter p
  anchor : 1419 ∈ Beal.ArakelovRH.DesertBrothers.brothers1419
  hComplement : OldNewDecompHyp (M := M) (ℓ := ℓ) V

/-- Dependency-graph supplier for the 07h old/new complement.

    This is deliberately not used by the active B15 path.  The jitter
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