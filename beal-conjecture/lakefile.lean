import Lake
open Lake DSL

package beal_conjecture where
  -- keep name as repo

require mathlib from git
  "https://github.com/leanprover-community/mathlib4.git" @ "809c3fb3b5c8f5d7dace56e200b426187516535a"

@[default_target]
lean_lib Beal where
  srcDir := "lean"

lean_lib lean where
  srcDir := "lean"
