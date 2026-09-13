import Lake
open Lake DSL

package beal_level_26_foundations where
  leanOptions := #[⟨`autoImplicit, false⟩]

require mathlib from git
  "https://github.com/leanprover-community/mathlib4.git" @ "v4.12.0"

lean_lib BealLevel26Foundations where
  srcDir := "lean"
  roots := #[`BealLevel26Foundations, `Beal]

lean_lib BealLevel26FoundationsScaffold where
  srcDir := "lean"
  roots := #[`BealLevel26Foundations.Scaffold]

lean_lib BealLevel26FoundationsReal where
  srcDir := "lean"
  roots := #[`BealLevel26Foundations.Real]

/-- v8.85.0 FullProof track.  Separate root so the 24-module
none chain is not rebuilt from this file. -/
lean_lib BealLevel26FoundationsFullProof where
  srcDir := "lean"
  roots := #[`BealLevel26Foundations.Beal.FullProof]