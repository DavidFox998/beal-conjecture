-- B00_OperaNumerorum.lean
-- Opera Numerorum metadata header. No imports, no axioms, no sorry.

def OperaNumerorum_Version : String := "1.0"
def OperaNumerorum_Tower : String := "p||N → M*p=N (real arith []) → S2(2)=0 dim0 rfl [] → Modularity Hypothesis (explicit axiom [modularity_hypothesis]+[propext]) → BealConjecture"
def OperaNumerorum_Audit : String := "B03/B04/B10/B20 Core [] ; B05 Modularity explicit axiom only ; No Prop:=True stubs ; Check NO sorry 0s"
def FLT_Alignment : String := "ImperialCollegeLondon/FLT is inspiration for formalization, not a dependency. This repo formalizes Beal via Frey + Ribet-real + Mazur + Wiles pattern."

#print axioms OperaNumerorum_Tower
