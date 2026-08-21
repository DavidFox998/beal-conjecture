def IsPrime05Core (p : Nat) : Prop := 2 ≤ p ∧ ∀ m, m ∣ p → m = 1 ∨ m = p
def EllipticCurve05Core (a b : Int) : Prop := a = a ∧ b = b
def FreyCurve05Core (A B C x y z : Nat) : Prop := 1 < x ∧ 1 < y ∧ 1 < z
def ModularityHypothesis05Core (E : Int) : Prop := E = E
def FreyModular05Core (A B C x y z : Nat) : Prop := FreyCurve05Core A B C x y z

def ModularityHypothesisTyped : Prop :=
  ∀ A B C x y z, FreyCurve05Core A B C x y z → True

#print axioms ModularityHypothesisTyped
