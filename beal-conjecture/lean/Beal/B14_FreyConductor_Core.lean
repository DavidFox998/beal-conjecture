-- B14_FreyConductor_Core — zero-import conductor divisibility predicates.
def Divides14Core (d n : Nat) : Prop := ∃ q : Nat, n = d * q

def Prime14Core (p : Nat) : Prop :=
  1 < p ∧ ∀ a b : Nat, p = a * b → a = 1 ∨ b = 1

/--
The Core layer does not depend on a factorization implementation.  An exact
radical certificate has the same prime support as its input in both
directions.  The reverse implication is essential: divisibility of the
radical by the input alone does not say that the input has no other prime
factors.
-/
def RadCertificate (n r : Nat) : Prop :=
  Divides14Core r n ∧
    (∀ p : Nat, Prime14Core p → Divides14Core p r → Divides14Core p n) ∧
    ∀ p : Nat, Prime14Core p → Divides14Core p n → Divides14Core p r

/--
The import-free result shape supplied by the radical factorization wrapper
when a positive product has single-prime radical.  The value `1` is
represented by the zero exponent.
-/
def RadPrimePowerCertificate14Core (A B C p : Nat) : Prop :=
  ∃ a b c : Nat, A = p ^ a ∧ B = p ^ b ∧ C = p ^ c

def FreyConductorRealCertificate (A B C r : Nat) : Prop :=
  RadCertificate (A * B * C) r

def FreyConductorDividesABC14Core (A B C N : Nat) : Prop :=
  ∀ p : Nat, Prime14Core p → Divides14Core p N →
    Divides14Core p A ∨ Divides14Core p B ∨ Divides14Core p C

def BealPrimesNotDivideConductor14Core : Prop :=
  ∀ A B C p N : Nat, Prime14Core p →
    ¬ Divides14Core p A → ¬ Divides14Core p B → ¬ Divides14Core p C →
    FreyConductorDividesABC14Core A B C N → ¬ Divides14Core p N

#print axioms Divides14Core
#print axioms Prime14Core
#print axioms RadCertificate
#print axioms RadPrimePowerCertificate14Core
#print axioms FreyConductorRealCertificate
#print axioms FreyConductorDividesABC14Core
#print axioms BealPrimesNotDivideConductor14Core