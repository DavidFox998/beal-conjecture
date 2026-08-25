-- B14_FreyConductor_Core — zero-import conductor certificates.
def Divides14Core (d n : Nat) : Prop := ∃ q : Nat, n = d * q

def Prime14Core (p : Nat) : Prop :=
  1 < p ∧ ∀ a b : Nat, p = a * b → a = 1 ∨ b = 1

/--
The Core layer does not depend on a factorization implementation. A
certificate records the two properties needed from a radical: it divides its
input, and every prime divisor of the input divides the certificate.
-/
def RadCertificate (n r : Nat) : Prop :=
  Divides14Core r n ∧
    ∀ p : Nat, Prime14Core p → Divides14Core p n → Divides14Core p r

/--
The import-free result shape supplied by the real radical factorization
wrapper when a radical is a single prime. The value `1` is represented by the
zero exponent.
-/
def RadPrimePowerCertificate14Core (A B C p : Nat) : Prop :=
  ∃ a b c : Nat, A = p ^ a ∧ B = p ^ b ∧ C = p ^ c

def FreyConductorRealCertificate (A B C r : Nat) : Prop :=
  RadCertificate (A * B * C) r

/--
The Core-only prime-radical data consumed by the elementary contradiction.
It is defined here so the search module can import Core alone.
-/
def RadPrimeCase14Core (A B C p : Nat) : Prop :=
  FreyConductorRealCertificate A B C p ∧ Prime14Core p

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
#print axioms RadPrimeCase14Core
#print axioms FreyConductorDividesABC14Core
#print axioms BealPrimesNotDivideConductor14Core