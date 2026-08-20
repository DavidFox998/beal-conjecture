-- Compatibility shim — old name B14_PrimeNotDvd_Core → new B14_FreyConductor_Core
-- This file exists only to satisfy old imports that still reference the old name

def PrimeNotDvdCore (N p : Nat) : Prop :=
  ¬ (∃ q, N = p * q)

def PrimeNotDvdWitness (N p : Nat) : Prop :=
  ∀ q, N ≠ p * q

-- Re-export new name so both names work
import Beal.B14_FreyConductor_Core
