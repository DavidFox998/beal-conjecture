-- B05_HasseWiles_Core — zero-import arithmetic version of the Hasse bound.
def Divides05Core (d n : Nat) : Prop := ∃ q : Nat, n = d * q

def Prime05Core (p : Nat) : Prop :=
  1 < p ∧ ∀ a b : Nat, p = a * b → a = 1 ∨ b = 1

def HasseBound05Core (a : Nat → Int) : Prop :=
  ∀ p : Nat, Prime05Core p → ¬ Divides05Core p 143 →
    a p ^ 2 ≤ 4 * (p : Int)

#print axioms Divides05Core
#print axioms Prime05Core
#print axioms HasseBound05Core