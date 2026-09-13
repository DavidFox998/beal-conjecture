import BealLevel26Foundations.Ribet.LevelLowering_26

namespace BealLevel26Foundations.Real.LevelLowering26

/-!
v3.0.0 Real entry for the typed Ribet certificate.  The proofs live in
`BealLevel26Foundations.Ribet.LevelLowering26` so the filename
`LevelLowering_26.lean` remains the audit target.
-/

export BealLevel26Foundations.Ribet.LevelLowering26
  (ResidualRepresentation26 LevelStep26 LoweringRelation26
    LevelLowering_26 exactDivides_mul_self_of_not_dvd
    two_prime thirteen_prime twenty_six_eq_two_mul_thirteen
    padicValNat_thirteen_twenty_six padicValNat_two_twenty_six
    RibetTheoremBoundary26 ribetTheoremBoundary26_certificate)

end BealLevel26Foundations.Real.LevelLowering26
