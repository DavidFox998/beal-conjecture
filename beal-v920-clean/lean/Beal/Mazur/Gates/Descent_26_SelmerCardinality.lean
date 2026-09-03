import Beal.Mazur.Gates.Descent_26_RankProof

namespace Beal17Mazur.Gates.Descent26SelmerCardinality

open Beal17Mazur.Gates.Descent26RankProof

noncomputable section

/-!
# Level-26 full-Selmer cardinalities

The finite `8 × 10` coefficient audit is not a Selmer cardinality computation.
This module instead derives cardinality one from the explicit full-Selmer
triviality fields in `SecondDescentCertificate_26`.  No Mordell--Weil rank
statement is used in either proof.
-/

/-- A supplied full 2-Selmer carrier has cardinality one once its explicit
triviality proof is available.  Nonemptiness comes from the zero class of the
local-condition subgroup. -/
theorem abstractTwoSelmer_card_eq_one
    {E : WeierstrassCurve ℚ}
    (selmer : AbstractTwoSelmer E)
    (trivial : Subsingleton selmer.Carrier) :
    Nat.card selmer.Carrier = 1 := by
  letI : Subsingleton selmer.Carrier := trivial
  exact Nat.card_of_subsingleton
    ⟨0, selmer.localKummerConditions.zero_mem⟩

/-- Exact cardinality of the supplied full 2-Selmer carrier for `26a1`. -/
theorem selmer2_26a1_card_eq_one
    (certificate : SecondDescentCertificate_26) :
    Nat.card certificate.selmer_26a1.Carrier = 1 :=
  abstractTwoSelmer_card_eq_one certificate.selmer_26a1
    certificate.selmer_26a1_trivial

/-- Exact cardinality of the supplied full 2-Selmer carrier for `26b1`. -/
theorem selmer2_26b1_card_eq_one
    (certificate : SecondDescentCertificate_26) :
    Nat.card certificate.selmer_26b1.Carrier = 1 :=
  abstractTwoSelmer_card_eq_one certificate.selmer_26b1
    certificate.selmer_26b1_trivial

/-- The two cardinality statements are packaged separately from the
Mordell--Weil rank theorem. -/
theorem level26_selmer_cardinalities
    (certificate : SecondDescentCertificate_26) :
    Nat.card certificate.selmer_26a1.Carrier = 1 ∧
      Nat.card certificate.selmer_26b1.Carrier = 1 :=
  ⟨selmer2_26a1_card_eq_one certificate,
    selmer2_26b1_card_eq_one certificate⟩

#print axioms abstractTwoSelmer_card_eq_one
#print axioms selmer2_26a1_card_eq_one
#print axioms selmer2_26b1_card_eq_one
#print axioms level26_selmer_cardinalities

end

end Beal17Mazur.Gates.Descent26SelmerCardinality