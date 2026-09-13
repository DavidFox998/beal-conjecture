import Lake
open Lake DSL

package beal_conjecture where
  -- keep name as repo

require mathlib from git
  "https://github.com/leanprover-community/mathlib4.git" @ "v4.12.0"

require beal_level_26_foundations from git
  "https://github.com/DavidFox998/beal-level-26-foundations.git" @
    "v1.2.1-formal-coordinate-boundary-corrected"

@[default_target]
lean_lib Beal where
  srcDir := "lean"

lean_lib lean where
  srcDir := "lean"

/-- Relocated v24.4.0 kernel (DOI 10.5281/zenodo.22732209, db7a556).

    Import path used by Matveev-Beal:
      `BealLevel26Foundations.Beal.FullProof.BealMatveevThm14`
      `BealLevel26Foundations.Beal.FullProof.BealBakerB0ReductionCertificate`

    Explicit FullProof roots only. A glob on all of
    `Level26.BealLevel26Foundations.Beal` would compile RibetMazur.
    The subtree package at
    `Level26/BealLevel26Foundations` remains the Lake package
    Matveev-Beal requires (subdirectory of this repo). -/
lean_lib Level26 where
  srcDir := "Level26/BealLevel26Foundations/lean"
  -- Empty globs would treat roots as `.andSubmodules`.
  globs := #[
    .one `BealLevel26Foundations.Beal.FullProof.BealMatveevThm14,
    .one `BealLevel26Foundations.Beal.FullProof.BealBakerB0ReductionCertificate
  ]
  roots := #[
    `BealLevel26Foundations.Beal.FullProof.BealMatveevThm14,
    `BealLevel26Foundations.Beal.FullProof.BealBakerB0ReductionCertificate
  ]

/-- v25 wiring names. Does not `require` Matveev-Beal: that
    package depends on the Level26 subtree of this repo. -/
lean_lib Level26Wiring where
  srcDir := "Level26"
  roots := #[`BakerBoundGap3Holds]
