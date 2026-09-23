import Beal.ConditionalBealTheorem

/-!
# The Beal conclusion from explicit level-26 certificates

The theorem below is *conditional*. Neither the bounded `(4,4,13)` search nor
the finite level-26 numerics supplies the seven required certificates for
arbitrary bases and exponents. In particular this file does not assert
an unconditional Beal theorem.
-/

/-- All presently required inputs to the level-26 route remain visible. -/
structure BealData (J0_26 : Type*) [AddCommGroup J0_26] where
  certificates : BealCertificates_26 J0_26

/-- The common-prime formulation follows from the previously defined
conditional level-26 proof, not from a restricted gap-3 search. -/
theorem beal_main_theorem_forward
    {J0_26 : Type*} [AddCommGroup J0_26]
    (data : BealData J0_26)
    (x y z p q r : ℕ)
    (hx : 0 < x) (hy : 0 < y) (hz : 0 < z)
    (hp : 3 ≤ p) (hq : 3 ≤ q) (hr : 3 ≤ r)
    (heq : x ^ p + y ^ q = z ^ r) :
    ∃ l : ℕ, Nat.Prime l ∧ l ∣ x ∧ l ∣ y ∧ l ∣ z := by
  have hbeal : BealConjecture :=
    conditional_beal_of_certificates data.certificates
  have hgcd : Nat.gcd x (Nat.gcd y z) ≠ 1 := by
    intro hone
    exact hbeal x y z p q r
      ⟨hx, hy, hz, (by omega), (by omega), (by omega), heq, hone⟩
  obtain ⟨l, hprime, hdvd⟩ := Nat.exists_prime_and_dvd hgcd
  refine ⟨l, hprime, ?_, ?_, ?_⟩
  · exact dvd_trans hdvd (Nat.gcd_dvd_left _ _)
  · exact dvd_trans hdvd
      (dvd_trans (Nat.gcd_dvd_right _ _) (Nat.gcd_dvd_left _ _))
  · exact dvd_trans hdvd
      (dvd_trans (Nat.gcd_dvd_right _ _) (Nat.gcd_dvd_right _ _))

#print axioms beal_main_theorem_forward