import Lake
open Lake DSL

package beal_level_26_foundations where
  leanOptions := #[⟨`autoImplicit, false⟩]

require mathlib from git
  "https://github.com/leanprover-community/mathlib4.git" @ "v4.12.0"

/-- Default lib for Matveev-Beal.

    Empty `globs` would treat `roots` as `.andSubmodules`, so a
    root `BealLevel26Foundations` compiles the whole Zsigmondy /
    Ribet tree. Keep explicit `.one` modules. Transitive imports
    (Gap3 Baker, Tate, Bugeaud) still compile. -/
@[default_target]
lean_lib BealLevel26Foundations where
  srcDir := "lean"
  globs := #[
    .one `BealLevel26Foundations.Beal.FullProof.BealMatveevThm14,
    .one `BealLevel26Foundations.Beal.FullProof.BealBakerB0ReductionCertificate
  ]
  roots := #[
    `BealLevel26Foundations.Beal.FullProof.BealMatveevThm14,
    `BealLevel26Foundations.Beal.FullProof.BealBakerB0ReductionCertificate
  ]

/-- Barrel only (CoefficientLedger / M3 / FiniteChecks). Not the
    whole `BealLevel26Foundations/` directory. -/
lean_lib BealLevel26FoundationsArchive where
  srcDir := "lean"
  globs := #[.one `BealLevel26Foundations, .one `Beal.Foundations]
  roots := #[`BealLevel26Foundations, `Beal.Foundations]

lean_lib BealLevel26FoundationsScaffold where
  srcDir := "lean"
  globs := #[.one `BealLevel26Foundations.Scaffold]
  roots := #[`BealLevel26Foundations.Scaffold]

lean_lib BealLevel26FoundationsReal where
  srcDir := "lean"
  globs := #[.one `BealLevel26Foundations.Real]
  roots := #[`BealLevel26Foundations.Real]

/-- FullProof barrel. Not default: `FullProof.lean` imports RibetMazur. -/
lean_lib BealLevel26FoundationsFullProof where
  srcDir := "lean"
  globs := #[.one `BealLevel26Foundations.Beal.FullProof]
  roots := #[`BealLevel26Foundations.Beal.FullProof]
