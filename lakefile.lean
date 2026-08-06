import Lake
open Lake DSL

package «brothers-desert-proof» where
  version := v!"0.1.0"

require mathlib from git
  "https://github.com/leanprover-community/mathlib4.git" @ "v4.15.0"

-- Pull brothers, desert, and Hilbert-route facts from eutheos-property
require eutheos from git
  "https://github.com/DavidFox998/eutheos-property.git" @ "main"

lean_lib BrothersDesertProof where
  srcDir := "."
  globs := #[
    -- The Object layer (new Self-Symmetry formalization)
    .one `Eutheos.Object,
    .one `Eutheos.Theta,
    -- SelfSymmetry layer (wraps eutheos-property theorems)
    .one `SelfSymmetry.Core,
    .one `SelfSymmetry.Desert,
    .one `SelfSymmetry.JitterSymmetry,
    .one `SelfSymmetry.TwinWormhole,
    .one `SelfSymmetry.ClayWitness,
    .one `Protocol.Chain
  ]
