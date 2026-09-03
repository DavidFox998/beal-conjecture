import Lake
open Lake DSL

package beal_level_26_foundations where
  leanOptions := #[⟨`autoImplicit, false⟩]

require mathlib from git
  "https://github.com/leanprover-community/mathlib4.git" @ "v4.12.0"

lean_lib BealLevel26Foundations where
  srcDir := "lean"