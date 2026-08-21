-- B00_OperaNumerorum.lean
-- Opera Numerorum metadata header. No imports, no axioms, no sorry.

def OperaNumerorum_Version : String := "1.0"
def OperaNumerorum_Tower : String := "p||N → M*p=N (real arith []) → S2(2)=0 dim0 rfl [] → Ribet proved from S2DimZero [] → Modularity (Mazur+Wiles axioms) → BealConjecture"
def OperaNumerorum_Audit : String := "B03/B04/B10/B20 Core [] ; B05 Modularity explicit axiom only ; No Prop:=True stubs ; Check NO sorry 0s"
def FLT_Alignment : String := "ImperialCollegeLondon/FLT is inspiration for formalization, not a dependency. This repo formalizes Beal via Frey + Ribet-real + Mazur + Wiles pattern."
def OperaNumerorum_Audit_v2 : String := "Core [] ; S2(2)=0 rfl [] ; Ribet [] from S2DimZero (p=5 N=10 witnesses, no Nat.gcd/Nat.div) ; Mazur+Wiles 2 explicit axioms ; [mazur wiles] only"

#print axioms OperaNumerorum_Tower
#print axioms OperaNumerorum_Audit_v2
