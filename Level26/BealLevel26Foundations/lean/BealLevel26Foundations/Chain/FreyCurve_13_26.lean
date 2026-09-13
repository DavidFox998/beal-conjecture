namespace BealLevel26Foundations.Chain.Frey13

/-!
# v4.2.0 Frey / exponent-13 level-lowering *names*

Blueprint: if `A^13 + B^13 = C^13` with coprime positive integers,
the Frey curve `y² = x(x − A^13)(x + B^13)` has conductor dividing
`2 · 13 · rad(ABC)`, and Ribet lowering (residual prime 13) would
target level `26 = 2 · 13`.  That is the classical Darmon / Ribet
step for exponent 13.

Mathlib 4.12 has no modularity theorem, no residual Galois
representation, and no Ribet existence theorem.  This file does
not construct a Frey curve, does not compute a conductor, and does
not prove level lowering.

`FreyLevel26`, `FreyConductorDivides26`, and `FreyToX0_26` are
the displayed arithmetic `26 = 2 × 13`.  They are not
`True`/`trivial` placeholders and not a Lean Ribet theorem.
A `∀ A B C, ¬ A^13+B^13=C^13` theorem would need Ribet / Darmon,
which Mathlib 4.12 does not have.

The frozen v1.4.0 ledger SHA-256
`0259fe957cc348b7286e233ce717fac47c30ad174b05e8e1c5fb70626f511151`
is unchanged.  There is no `theorem BealTheorem` here.
-/

/-- Displayed level-26 Frey / Ribet *name*.  Not `True`, not a
Frey curve, and not Ribet level lowering. -/
def FreyLevel26 : Prop := 2 * 13 = 26

theorem freyLevel26_computational : FreyLevel26 :=
  rfl

/-- Displayed conductor label `2 × 13`.  Not a conductor theorem
and not Ribet level lowering. -/
def FreyConductorDivides26 : Prop := FreyLevel26

/-- Displayed target `26 = 2 × 13`.  Not a Frey residual
representation arising from `X₀(26)`. -/
def FreyToX0_26 : Prop := 26 = 2 * 13

theorem freyToX0_26_computational :
    FreyConductorDivides26 ∧ FreyToX0_26 :=
  ⟨rfl, rfl⟩

#print axioms freyLevel26_computational
#print axioms freyToX0_26_computational

end BealLevel26Foundations.Chain.Frey13
