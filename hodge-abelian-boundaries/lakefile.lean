import Lake
open Lake DSL

package hodge_abelian_boundaries

require mathlib from git
  "https://github.com/leanprover-community/mathlib4.git" @ "v4.12.0"

@[default_target]
lean_lib HodgeAbelian where
  srcDir := "lean"
  globs := #[
    .one `C01_Basic,
    .one `C02_AlgebraicCycles,
    .one `C03_HodgeStructure,
    .one `C04_Comparison,
    .one `C05_Primitive,
    .one `C06_Polarization,
    .one `C07_Abelian,
    .one `C08_HodgeClasses
  ]
