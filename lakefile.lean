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

/-- Do **not** use implicit `.andSubmodules` of `Beal`: that
    steals `Beal.Foundations.J0_26_Decomp` from the path
    package `Level26/BealLevel26Foundations`. Galois file
    names start with digits and cannot be `.one` tokens. -/
@[default_target]
lean_lib Beal where
  srcDir := "lean"
  globs := #[
    .one `Beal,
    .submodules `Beal.ArakelovRH,
    .submodules `Beal.Final,
    .submodules `Beal.Galois,
    .submodules `Beal.Mazur,
    .submodules `Beal.Modular,
    .submodules `Beal.Patching,
    .one `Beal.B00_OperaNumerorum,
    .one `Beal.B01_Def,
    .one `Beal.B01_Def_Core,
    .one `Beal.B02_Frey,
    .one `Beal.B02_Frey_Core,
    .one `Beal.B03_Conductor,
    .one `Beal.B03_Conductor_Core,
    .one `Beal.B04_Modular,
    .one `Beal.B04_Modular_Core,
    .one `Beal.B04_QExpansion_Core,
    .one `Beal.B05_HasseWiles,
    .one `Beal.B05_HasseWiles_Core,
    .one `Beal.B05_Modularity,
    .one `Beal.B05_Modularity_Core,
    .one `Beal.B06_Final,
    .one `Beal.B06_Final_Core,
    .one `Beal.B07_Galois,
    .one `Beal.B07_Galois_Core,
    .one `Beal.B08_LevelLowering,
    .one `Beal.B08_LevelLowering_Core,
    .one `Beal.B09_FinalContradiction,
    .one `Beal.B09_FinalContradiction_Core,
    .one `Beal.B10_RibetReal,
    .one `Beal.B10_RibetReal_Core,
    .one `Beal.B11_Epsilon,
    .one `Beal.B11_Epsilon_Core,
    .one `Beal.B12_RibetProof,
    .one `Beal.B12_RibetProof_Core,
    .one `Beal.B13_RibetRealDefs,
    .one `Beal.B13_RibetRealDefs_Core,
    .one `Beal.B14_FormRepresentation,
    .one `Beal.B14_FreyConductor,
    .one `Beal.B14_FreyConductor_Core,
    .one `Beal.B14_FreyS2,
    .one `Beal.B14_FreyTate,
    .one `Beal.B14_PrimeNotDvd_Core,
    .one `Beal.B14_TateC4Nonzero,
    .one `Beal.B14_TateInImpliesOrd1,
    .one `Beal.B15_LevelTo2,
    .one `Beal.B15_LevelTo2_Core,
    .one `Beal.B15_RibetIterate,
    .one `Beal.B16_BealFinal,
    .one `Beal.B16_BealFinal_Core,
    .one `Beal.B17_FreyRationalTwoTorsion,
    .one `Beal.B17_FullE2,
    .one `Beal.B17_MazurIrreducible,
    .one `Beal.B17_MazurIrreducible_Core,
    .one `Beal.B17_MazurPrimeCoverage,
    .one `Beal.B17_X0Moduli,
    .one `Beal.B18_FreyIsElliptic,
    .one `Beal.B18_FreyIsElliptic_Core,
    .one `Beal.B19_BealFinalAssembly,
    .one `Beal.B19_BealFinalAssembly_Core,
    .one `Beal.B20_BealConjectureDone,
    .one `Beal.B20_BealConjectureDone_Core,
    .one `Beal.B20_Beal_Core,
    .one `Beal.B21_FermatCorollary,
    .one `Beal.B21_FermatCorollary_Core,
    .one `Beal.ConditionalBealTheorem
  ]

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
    (subdirectory of this repo).

    CI must `lake -d Level26/BealLevel26Foundations build`
    first so FullProof oleans land in the path package
    `.lake/build`. A bare `lake build Level26` on a clean
    runner otherwise steals `BealBakerB0ReductionCertificate`
    into the root build dir. -/
lean_lib Level26 where
  srcDir := "Level26/BealLevel26Foundations/lean"
  -- Empty globs would treat roots as `.andSubmodules`.
  globs := #[
    .one `Beal.Foundations.J0_26_Decomp,
    .one `BealLevel26Foundations.Beal.FullProof.BealMatveevThm14,
    .one `BealLevel26Foundations.Beal.FullProof.BealBakerB0ReductionCertificate
  ]
  roots := #[
    `Beal.Foundations.J0_26_Decomp,
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
