-- B14_FreyConductor_Core — zero-import conductor divisibility predicates.
def Divides14Core (d n : Nat) : Prop := ∃ q : Nat, n = d * q

def Prime14Core (p : Nat) : Prop :=
  1 < p ∧ ∀ a b : Nat, p = a * b → a = 1 ∨ b = 1

def FreyConductorDividesABC14Core (A B C N : Nat) : Prop :=
  ∀ p : Nat, Prime14Core p → Divides14Core p N →
    Divides14Core p A ∨ Divides14Core p B ∨ Divides14Core p C

def BealPrimesNotDivideConductor14Core : Prop :=
  ∀ A B C p N : Nat, Prime14Core p →
    ¬ Divides14Core p A → ¬ Divides14Core p B → ¬ Divides14Core p C →
    FreyConductorDividesABC14Core A B C N → ¬ Divides14Core p N

#print axioms Divides14Core
#print axioms Prime14Core
#print axioms FreyConductorDividesABC14Core
#print axioms BealPrimesNotDivideConductor14Core