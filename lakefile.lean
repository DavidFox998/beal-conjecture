import Lake
open Lake DSL

package «beal-conjecture» where

require mathlib from git
  "https://github.com/leanprover-community/mathlib4.git" @ "v4.12.0"

@[default_target]
lean_lib Beal where
