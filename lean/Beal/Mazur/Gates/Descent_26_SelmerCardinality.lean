import Beal.Mazur.Gates.Descent_26_RankProof

namespace Beal17Mazur.Gates.Descent26SelmerCardinality

open Beal17Mazur.Gates.Descent26RankProof

noncomputable section

/-!
# Level-26 full-Selmer cardinalities

The finite `8 × 10` coefficient audit is not by itself a Selmer cardinality
computation. This module gives two separate routes to cardinality one: one from
the explicit full-Selmer triviality fields in `SecondDescentCertificate_26`,
and one from a genuine equivalence between the cohomological Selmer carrier and
the surviving locally soluble ledger classes. No Mordell--Weil rank statement
is used in either route.
-/

theorem abstractTwoSelmer_card_eq_one
    {E : WeierstrassCurve ℚ}
    (selmer : AbstractTwoSelmer E)
    (trivial : Subsingleton selmer.Carrier) :
    Nat.card selmer.Carrier = 1 := by
  letI : Subsingleton selmer.Carrier := trivial
  exact Nat.card_of_subsingleton
    ⟨0, selmer.localKummerConditions.zero_mem⟩

/-- The equivalence is an explicit input; no coefficient ledger is identified
with a cohomological Selmer group by definition. -/
theorem abstractTwoSelmer_card_eq_one_of_ledger_equiv
    {E : WeierstrassCurve ℚ}
    {rows : List Beal17Mazur.Jacobian.BinaryQuartic}
    (selmer : AbstractTwoSelmer E)
    (ledgerEquiv :
      selmer.Carrier ≃
        {d : Beal17Mazur.Gates.Descent26Bridge.SUnitRepresentative //
          d ∈ SelmerCandidates rows})
    (ledger_singleton : SelmerCandidates rows =
      {Beal17Mazur.Gates.Descent26RankProof.oneSUnit}) :
    Nat.card selmer.Carrier = 1 := by
  have hLedgerSubsingleton :
      Subsingleton
        {d : Beal17Mazur.Gates.Descent26Bridge.SUnitRepresentative //
          d ∈ SelmerCandidates rows} := by
    constructor
    intro x y
    apply Subtype.ext
    have hx : x.1 = Beal17Mazur.Gates.Descent26RankProof.oneSUnit := by
      apply Set.mem_singleton_iff.mp
      rw [← ledger_singleton]
      exact x.2
    have hy : y.1 = Beal17Mazur.Gates.Descent26RankProof.oneSUnit := by
      apply Set.mem_singleton_iff.mp
      rw [← ledger_singleton]
      exact y.2
    exact hx.trans hy.symm
  have hSelmerSubsingleton : Subsingleton selmer.Carrier := by
    constructor
    intro x y
    apply ledgerEquiv.injective
    exact hLedgerSubsingleton.elim _ _
  exact abstractTwoSelmer_card_eq_one selmer hSelmerSubsingleton

theorem selmer2_26a1_card_eq_one
    (certificate : SecondDescentCertificate_26) :
    Nat.card certificate.selmer_26a1.Carrier = 1 :=
  abstractTwoSelmer_card_eq_one certificate.selmer_26a1
    certificate.selmer_26a1_trivial

theorem selmer2_26b1_card_eq_one
    (certificate : SecondDescentCertificate_26) :
    Nat.card certificate.selmer_26b1.Carrier = 1 :=
  abstractTwoSelmer_card_eq_one certificate.selmer_26b1
    certificate.selmer_26b1_trivial

theorem level26_selmer_cardinalities
    (certificate : SecondDescentCertificate_26) :
    Nat.card certificate.selmer_26a1.Carrier = 1 ∧
      Nat.card certificate.selmer_26b1.Carrier = 1 :=
  ⟨selmer2_26a1_card_eq_one certificate,
    selmer2_26b1_card_eq_one certificate⟩

#print axioms abstractTwoSelmer_card_eq_one
#print axioms abstractTwoSelmer_card_eq_one_of_ledger_equiv
#print axioms selmer2_26a1_card_eq_one
#print axioms selmer2_26b1_card_eq_one
#print axioms level26_selmer_cardinalities

end

end Beal17Mazur.Gates.Descent26SelmerCardinality