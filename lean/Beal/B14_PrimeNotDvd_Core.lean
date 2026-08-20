def PrimeNotDvdCore (N p : Nat) : Prop :=
  ¬ (∃ q, N = p * q)
