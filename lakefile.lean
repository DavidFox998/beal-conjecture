import Lake
open Lake DSL

package beal_conjecture where
  -- keep name as repo

require mathlib from git
  "https://github.com/leanprover-community/mathlib4.git" @ "v4.12.0"

/-- Relocated v24.4.0 kernel (DOI 10.5281/zenodo.22732209, db7a556).
    Local path — do **not** git-require foundations `v1.2.1`
    (that tag shadows `BealLevel26Foundations.Beal.FullProof.*`).
    Do **not** nest another `Level26/` inside this package. -/
require beal_level_26_foundations from "Level26/BealLevel26Foundations"

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
    (subdirectory of this repo). -/
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
    package depends on the Level26 subtree of this repo.
    Not a default target. Path require (above) no longer
    shadows `BealLevel26Foundations.Beal.FullProof.*`. -/
lean_lib Level26Wiring where
  srcDir := "Level26"
  globs := #[.one `BakerBoundGap3Holds]
  roots := #[`BakerBoundGap3Holds]

/-- Honest B0Search slice from foundations `43735b3`.
    Non-default. Not a vendor nest. Last four gaps stay
    `def Prop` on the working foundations repo. -/
lean_lib HonestB0Search where
  srcDir := "Level26/HonestB0Search"
  globs := #[
    .one `BealMatveevBealV25B0Search,
    .one `LLLTargetB8,
    .one `LLLTargetB8_C1_lower_bound,
    .one `DarmonMerelFrey4413,
    .one `Level32Table,
    .one `Level928Table,
    .one `Ribet29C_Lowering,
    .one `Ribet29C_Residue16,
    .one `Ribet29C_Residue16_L23,
    .one `MazurIrreducibility13,
    .one `Inertia29Unramified,
    .one `SerreImage13,
    .one `MazurIrreducibilityFull,
    .one `TateGalois,
    .one `SerreImageFull,
    .one `Mazur_X0_13_RationalPoints,
    .one `Tate_I29_Inertia,
    .one `Ribet_Level32,
    .one `Serre_Large_vs_CM_Small,
    .one `TwoDescent_26a1_26,
    .one `X0_26_Full2Torsion,
    .one `BSD_MordellWeil,
    .one `J0_26_BSD_26a1_26b1,
    .one `Tate_Frey_Conductor_29,
    .one `Mazur_X0_13_No_Isogeny,
    .one `Ribet_Level_Lowering_29_to_32,
    .one `Kolyvagin_MW_Rank0_26a1_26b1
  ]
  roots := #[
    `TwoDescent_26a1_26,
    `BSD_MordellWeil,
    `Tate_Frey_Conductor_29,
    `Mazur_X0_13_No_Isogeny,
    `Ribet_Level_Lowering_29_to_32,
    `Kolyvagin_MW_Rank0_26a1_26b1
  ]
