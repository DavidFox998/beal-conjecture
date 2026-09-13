import Lake
open Lake DSL

package beal_level_26_foundations where
  leanOptions := #[⟨`autoImplicit, false⟩]

require mathlib from git
  "https://github.com/leanprover-community/mathlib4.git" @ "v4.12.0"

/-- Matveev / Baker kernel only.

    Do not add a `BealLevel26Foundations` root without `globs :=
    #[.one ...]`: empty globs treat roots as `.andSubmodules` and
    compile the Zsigmondy / Ribet tree. Do not declare extra libs
    whose barrels import that tree (FullProof.lean, Foundations).
    Transitive imports of these two modules still compile. -/
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
