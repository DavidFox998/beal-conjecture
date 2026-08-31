import Lake
open Lake DSL

package beal_conjecture where
  -- keep name as repo

require mathlib from git
  "https://github.com/leanprover-community/mathlib4.git" @ "v4.12.0"

@[default_target]
lean_lib Beal where
  srcDir := "lean"

lean_lib lean where
  srcDir := "lean"
