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
