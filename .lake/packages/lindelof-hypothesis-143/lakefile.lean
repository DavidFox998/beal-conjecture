import Lake
open Lake DSL

package «lindelof-hypothesis-143» where
  leanOptions := #[
    ⟨`pp.unicode.fun, true⟩,
    ⟨`autoImplicit, false⟩
  ]

require mathlib from git
  "https://github.com/leanprover-community/mathlib4.git" @ "v4.12.0"

@[default_target]
lean_lib LindelofHypothesis143 where
  globs := #[.submodules `lean]
