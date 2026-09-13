import Mathlib.NumberTheory.Padics.PadicVal.Basic
import Mathlib.Tactic

namespace BealLevel26Foundations.Ribet.LevelLowering26

/-!
# v3.0.0 typed level-lowering certificate

Mathlib 4.12 has no residual Galois representation of a Frey curve, no
Hecke-algebra transport, and no Ribet existence theorem.  This module
therefore does not prove modularity or level lowering.

It exposes the three pieces of data a later Ribet theorem would consume:

* a residual-representation index `(ℓ, weight)`;
* a level step `(N, p, M)`;
* the lowering relation `M * p = N` and `vₚ(N) = 1`.

`LevelLowering_26` is that indexed certificate.  It is not an opaque
`Prop`, not a supplier axiom, and not a replacement of the parent
`LevelLowering_26` premise.
-/

/-- Residual-representation parameters: odd-or-even residual prime `ℓ`
and weight two.  This is not a homomorphism `Gal(ℚ̄/ℚ) → GL₂(𝔽_ℓ)`. -/
structure ResidualRepresentation26 (ℓ : Nat) where
  residualPrime_prime : ℓ.Prime
  weight : Nat
  weight_eq_two : weight = 2

/-- One exact-divide level step `N = M * p` with `vₚ(N) = 1`. -/
structure LevelStep26 (N p M : Nat) where
  dividingPrime_prime : p.Prime
  product : M * p = N
  exactDivides : padicValNat p N = 1

/-- The lowering relation is the pairing of representation parameters
with a level step.  It does not assert that a modular form at `N`
transports to a modular form at `M`. -/
structure LoweringRelation26 (ℓ N p M : Nat) where
  representation : ResidualRepresentation26 ℓ
  levels : LevelStep26 N p M

/-- Indexed level-26 Ribet certificate.

The four indices are the residual prime, source level, dividing prime,
and target level.  Every field is data. -/
structure LevelLowering_26 (ℓ N p M : Nat) where
  residualPrime_prime : ℓ.Prime
  dividingPrime_prime : p.Prime
  weight : Nat
  weight_eq_two : weight = 2
  product : M * p = N
  exactDivides : padicValNat p N = 1

def LevelLowering_26.residualPrime
    {ℓ N p M : Nat} (_c : LevelLowering_26 ℓ N p M) : Nat :=
  ℓ

def LevelLowering_26.sourceLevel
    {ℓ N p M : Nat} (_c : LevelLowering_26 ℓ N p M) : Nat :=
  N

def LevelLowering_26.dividingPrime
    {ℓ N p M : Nat} (_c : LevelLowering_26 ℓ N p M) : Nat :=
  p

def LevelLowering_26.targetLevel
    {ℓ N p M : Nat} (_c : LevelLowering_26 ℓ N p M) : Nat :=
  M

def LevelLowering_26.toRepresentation
    {ℓ N p M : Nat} (c : LevelLowering_26 ℓ N p M) :
    ResidualRepresentation26 ℓ where
  residualPrime_prime := c.residualPrime_prime
  weight := c.weight
  weight_eq_two := c.weight_eq_two

def LevelLowering_26.toLevels
    {ℓ N p M : Nat} (c : LevelLowering_26 ℓ N p M) :
    LevelStep26 N p M where
  dividingPrime_prime := c.dividingPrime_prime
  product := c.product
  exactDivides := c.exactDivides

def LevelLowering_26.toRelation
    {ℓ N p M : Nat} (c : LevelLowering_26 ℓ N p M) :
    LoweringRelation26 ℓ N p M where
  representation := c.toRepresentation
  levels := c.toLevels

theorem LevelLowering_26.representation_data
    {ℓ N p M : Nat} (c : LevelLowering_26 ℓ N p M) :
    c.residualPrime = ℓ ∧ c.weight = 2 :=
  ⟨rfl, c.weight_eq_two⟩

theorem LevelLowering_26.level_data
    {ℓ N p M : Nat} (c : LevelLowering_26 ℓ N p M) :
    c.sourceLevel = N ∧
      c.dividingPrime = p ∧
      c.targetLevel = M ∧
      M * p = N :=
  ⟨rfl, rfl, rfl, c.product⟩

theorem LevelLowering_26.lowering_relation
    {ℓ N p M : Nat} (c : LevelLowering_26 ℓ N p M) :
    ℓ.Prime ∧
      c.weight = 2 ∧
      M * p = N ∧
      padicValNat p N = 1 :=
  ⟨c.residualPrime_prime, c.weight_eq_two, c.product, c.exactDivides⟩

def LevelLowering_26.ofExactStep
    {ℓ N p M : Nat}
    (hℓ : ℓ.Prime) (hp : p.Prime)
    (hprod : M * p = N)
    (hexact : padicValNat p N = 1) :
    LevelLowering_26 ℓ N p M where
  residualPrime_prime := hℓ
  dividingPrime_prime := hp
  weight := 2
  weight_eq_two := rfl
  product := hprod
  exactDivides := hexact

theorem two_prime : Nat.Prime 2 := by
  decide

theorem thirteen_prime : Nat.Prime 13 := by
  decide

theorem twenty_six_eq_two_mul_thirteen : 2 * 13 = 26 := by
  decide

/-- If `p` does not already divide `n`, then `vₚ(n * p) = 1`. -/
theorem exactDivides_mul_self_of_not_dvd
    {p n : Nat} [hp : Fact p.Prime] (hn : n ≠ 0) (hpn : ¬ p ∣ n) :
    padicValNat p (n * p) = 1 := by
  have hp0 : p ≠ 0 := Nat.Prime.ne_zero hp.out
  have hp1 : 1 < p := Nat.Prime.one_lt hp.out
  rw [padicValNat.mul hn hp0, padicValNat.eq_zero_of_not_dvd hpn,
    padicValNat.self hp1, zero_add]

theorem twenty_six_ne_zero : (26 : Nat) ≠ 0 := by
  decide

theorem padicValNat_thirteen_twenty_six : padicValNat 13 26 = 1 := by
  haveI : Fact (Nat.Prime 13) := ⟨thirteen_prime⟩
  have h26 : (26 : Nat) = 2 * 13 := twenty_six_eq_two_mul_thirteen.symm
  have h2 : ¬ (13 : Nat) ∣ 2 := by decide
  rw [h26, exactDivides_mul_self_of_not_dvd (by decide) h2]

theorem padicValNat_two_twenty_six : padicValNat 2 26 = 1 := by
  haveI : Fact (Nat.Prime 2) := ⟨two_prime⟩
  have h26 : (26 : Nat) = 13 * 2 := by decide
  have h13 : ¬ (2 : Nat) ∣ 13 := by decide
  rw [h26, exactDivides_mul_self_of_not_dvd (by decide) h13]

/-- One arithmetic lowering step onto level 26: from `p ∤ 26` conclude
`vₚ(26 p) = 1` and package the typed certificate.  This is not Ribet
transport of a modular form. -/
def LevelLowering_26.toLevel26
    {ℓ p : Nat} (hℓ : ℓ.Prime) (hp : p.Prime) (hp26 : ¬ p ∣ 26) :
    LevelLowering_26 ℓ (26 * p) p 26 :=
  letI : Fact p.Prime := ⟨hp⟩
  ofExactStep hℓ hp rfl
    (exactDivides_mul_self_of_not_dvd twenty_six_ne_zero hp26)

theorem LevelLowering_26.toLevel26_levels
    {ℓ p : Nat} (hℓ : ℓ.Prime) (hp : p.Prime) (hp26 : ¬ p ∣ 26) :
    (toLevel26 hℓ hp hp26).targetLevel = 26 ∧
      (toLevel26 hℓ hp hp26).sourceLevel = 26 * p ∧
      (toLevel26 hℓ hp hp26).weight = 2 :=
  ⟨rfl, rfl, rfl⟩

/-- Displayed factorization `26 = 2 * 13`, packaged as the same
certificate type.  This is arithmetic, not a modular-form step from
level 26 to level 2. -/
def LevelLowering_26.factor26By13
    {ℓ : Nat} (hℓ : ℓ.Prime) :
    LevelLowering_26 ℓ 26 13 2 :=
  ofExactStep hℓ thirteen_prime twenty_six_eq_two_mul_thirteen
    padicValNat_thirteen_twenty_six

/-- Explicit Ribet-theorem boundary.  The typed certificate is present;
existence of a realizing form at the lower level is not a Mathlib 4.12
theorem and is not obtained by `decide`. -/
structure RibetTheoremBoundary26 (ℓ N p M : Nat) where
  certificate : LevelLowering_26 ℓ N p M

theorem ribetTheoremBoundary26_certificate
    {ℓ N p M : Nat} (h : RibetTheoremBoundary26 ℓ N p M) :
    h.certificate.weight = 2 ∧
      M * p = N ∧
      padicValNat p N = 1 :=
  ⟨h.certificate.weight_eq_two, h.certificate.product,
    h.certificate.exactDivides⟩

#print axioms LevelLowering_26.representation_data
#print axioms LevelLowering_26.level_data
#print axioms LevelLowering_26.lowering_relation
#print axioms exactDivides_mul_self_of_not_dvd
#print axioms LevelLowering_26.toLevel26_levels
#print axioms ribetTheoremBoundary26_certificate

end BealLevel26Foundations.Ribet.LevelLowering26
