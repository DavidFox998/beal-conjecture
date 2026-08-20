def PrimeNotDvdCore (N p : Nat) : Prop :=
  ¬ (∃ q, N = p * q)

def PrimeNotDvdWitness (N p : Nat) : Prop :=
  ∀ q, N ≠ p * q

#print axioms PrimeNotDvdCore
#print axioms PrimeNotDvdWitness
