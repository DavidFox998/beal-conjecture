import BealLevel26Foundations.Mazur.EndgameScaffold

namespace Beal.Foundations.EndgameScaffold

/-!
# v4.0.0 Foundations entry for the Mazur endgame scaffold

Re-exports `BealLevel26Foundations.Mazur.EndgameScaffold`.
`BealTheoremFromMazurChain26` is conditional on the four named
structures plus v2 Frey, v3 `LevelLowering_26`, the four-cusp
negation `hGeomForbid`, and the j-invariant identification
`hIdentify : ExistsFreyWitness → ExistsNoncuspidal`.  Typed
`hIdentify` packs a Frey `j`-ratio as an elliptic displayed
point, not as `26 ∉ [1, 2, 13, 26]`.  Typed `hGeomForbid`
(`fourCusps → ¬ ExistsNoncuspidal`) is uninhabitable:
constructor inequality does not negate an elliptic `j`.
v4.0.9's cusp-point forall does not range over `ellipticJ`.
v4.1.2 records a computational `Option` `hGeomForbid`
(`rankZero_unconditional` from PARI `|Sel₂|=1` plus
`det M₃ ≠ 0`).  That is not the typed implication and not a
Lean Mordell--Weil theorem.  This is not an unconditional
`BealTheorem`.
-/

export BealLevel26Foundations.Mazur.EndgameScaffold
  (J0_26_Q_RankZero26 FormalImmersionAtTwo26
    X0_26_RationalPoints26 NoFreyPoint26
    ExistsFreyWitness ExistsNoncuspidalLevel26FreyPoint
    BealTheorem BealTheoremFromMazurChain26)

end Beal.Foundations.EndgameScaffold
