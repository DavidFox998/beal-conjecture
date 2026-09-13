import BealLevel26Foundations.Ribet.LevelLowering_26

namespace Beal.Foundations.LevelLowering26

/-!
# v3.0.0 Foundations entry for `LevelLowering_26`

Re-exports the typed certificate from
`BealLevel26Foundations.Ribet.LevelLowering26`.  Mathlib 4.12 has no
Ribet theorem; this is not a modularity or Galois-representation result.
-/

export BealLevel26Foundations.Ribet.LevelLowering26
  (ResidualRepresentation26 LevelStep26 LoweringRelation26
    LevelLowering_26 exactDivides_mul_self_of_not_dvd
    LevelLowering_26.toLevel26 LevelLowering_26.factor26By13
    RibetTheoremBoundary26)

end Beal.Foundations.LevelLowering26
