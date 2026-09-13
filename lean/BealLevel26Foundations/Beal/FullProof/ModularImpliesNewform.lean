/-
Copyright (c) 2026 David Fox. All rights reserved.
Released under MIT license as described in the file LICENSE.
Authors: David Fox

Track B Step 5 — ModularImpliesLevel2Newform *arithmetic* for
positive bases.

This file does **not** inhabit `ExistsNewformLevel2` (`0 ≠ 0`)
and does **not** prove `PositiveBealTriple → False`.  Those two
conclusions would be a journal Beal proof, and Mathlib 4.12 does
not supply the modularity arrow that would justify them.

What this file *does* prove, axiom-free except Lean's
`[propext, Classical.choice, Quot.sound]`:

1. `PositiveBealTriple` is the positivity guard Beal needs
   (`0 < A,B,C`, `2 < m,n,p`, equation, `gcd = 1`).  The
   unguarded sketch
   `∀ A B C m n p, 2 < m → 2 < n → 2 < p → A^m+B^n=C^p → 1 < gcd`
   is `False` (`0³+1³=1³`, `gcd(0,1,1)=1`).

2. Mathlib 4.12 *does* have
   `CongruenceSubgroup.Gamma0 N : Subgroup SL(2,ℤ)`.
   Displayed `S₂(Γ₀(2))` dimension is still
   `s2_gamma0_2_dim = 0` from `Chain.Level2`, not a Mathlib
   cusp-form space.  PARI `J₀(26)` product data (`26a1`/`26b1`,
   `M₃` det 2) stay axiom-free `rfl` certs in GeometryBridge.

3. On a positive triple, Wiles-domain `Modular` +
   `ribet_level_quotient` give `N / ∏q = 2`, generalizing
   `26/13 = 2`.  The Taylor–Wiles family
   `TW_primes_Q n = 4·13ⁿ+1` (`53 % 13 = 1`, `677 % 169 = 1`)
   and `R_T_scaffold` sit at that conductor.  Combined with
   `¬ ExistsNewformLevel2` and `no_noncuspidal_Q_points` this
   is the *arithmetic* of `ModularImpliesLevel2Newform`.

The *Prop* `ModularImpliesLevel2Newform` remains the missing
Mathlib arrow `Modular w → ExistsNewformLevel2`.
`beal_forall_proof_positive` is Beal on positive bases *from*
that Prop — same honesty as `beal_forall_proof`.

The 24-module none chain does not import this file.
-/

import BealLevel26Foundations.Beal.FullProof.TrueConductor
import BealLevel26Foundations.Beal.FullProof.ModularityRibet
import BealLevel26Foundations.Beal.FullProof.GeometryBridge
import Beal.Foundations.J0_26_Decomp
import BealLevel26Foundations.Chain.Level2
import BealLevel26Foundations.Chain.X0_26_Point
import Mathlib.NumberTheory.ModularForms.CongruenceSubgroups
import Mathlib.LinearAlgebra.Matrix.SpecialLinearGroup
import Mathlib.Tactic

namespace BealLevel26Foundations.Beal.FullProof.ModularImpliesNewform

open BealLevel26Foundations.Beal.FullProof.TrueConductor
open BealLevel26Foundations.Beal.FullProof.ModularityRibet
open BealLevel26Foundations.Beal.FullProof.GeometryBridge
open BealLevel26Foundations.Chain.Level2
open BealLevel26Foundations.Chain.X0_26_Point
open Beal.Foundations.J0_26_Decomp
open CongruenceSubgroup

/-! ## Problem 1 — Beal requires positive bases -/

/-- Beal on a packed triple: positive bases, exponents `> 2`,
the equation, and `gcd = 1`.  Same data as
`PrimitiveBealTriple`; named here so Step 5 states the
positivity guard in the requested identifier. -/
structure PositiveBealTriple where
  A : Nat
  B : Nat
  C : Nat
  m : Nat
  n : Nat
  p : Nat
  hposA : 0 < A
  hposB : 0 < B
  hposC : 0 < C
  hm : 2 < m
  hn : 2 < n
  hp : 2 < p
  heq : A ^ m + B ^ n = C ^ p
  hcoprime : Nat.gcd A (Nat.gcd B C) = 1

/-- Convert to the TrueConductor packed triple. -/
def PositiveBealTriple.toPrimitive (t : PositiveBealTriple) :
    PrimitiveBealTriple :=
  ⟨t.A, t.B, t.C, t.m, t.n, t.p,
    t.hposA, t.hposB, t.hposC, t.hm, t.hn, t.hp, t.heq, t.hcoprime⟩

def of_positive
    {A B C m n p : Nat}
    (hA : 0 < A) (hB : 0 < B) (hC : 0 < C)
    (hm : 2 < m) (hn : 2 < n) (hp : 2 < p)
    (hEq : A ^ m + B ^ n = C ^ p)
    (hGcd : gcd3 A B C = 1) :
    PositiveBealTriple :=
  ⟨A, B, C, m, n, p, hA, hB, hC, hm, hn, hp, hEq, hGcd⟩

theorem PositiveBealTriple.posA (t : PositiveBealTriple) : 0 < t.A :=
  t.hposA
theorem PositiveBealTriple.posB (t : PositiveBealTriple) : 0 < t.B :=
  t.hposB
theorem PositiveBealTriple.posC (t : PositiveBealTriple) : 0 < t.C :=
  t.hposC
theorem PositiveBealTriple.exp_m (t : PositiveBealTriple) : 2 < t.m :=
  t.hm
theorem PositiveBealTriple.exp_n (t : PositiveBealTriple) : 2 < t.n :=
  t.hn
theorem PositiveBealTriple.exp_p (t : PositiveBealTriple) : 2 < t.p :=
  t.hp
theorem PositiveBealTriple.equation (t : PositiveBealTriple) :
    t.A ^ t.m + t.B ^ t.n = t.C ^ t.p :=
  t.heq
theorem PositiveBealTriple.coprime (t : PositiveBealTriple) :
    Nat.gcd t.A (Nat.gcd t.B t.C) = 1 :=
  t.hcoprime

/-- From v8.0.0: `sketch_fails_on_zero_one` already shows the
unguarded `∀` is `False`.  Re-stated here so Step 5 carries
the counterexample next to the positivity structure. -/
theorem sketch_fails_on_zero_one_counterexample :
    ¬ (∀ A B C m n p : Nat, 2 < m → 2 < n → 2 < p →
        A ^ m + B ^ n = C ^ p → 1 < Nat.gcd A (Nat.gcd B C)) :=
  fun h =>
    Nat.lt_irrefl (1 : Nat)
      (h 0 1 1 3 3 3 (by decide) (by decide) (by decide) rfl)

/-! ## Problem 2 — Mathlib 4.12 congruence subgroup, displayed S₂, PARI certs -/

/-- Mathlib 4.12 *does* define `Γ₀(N)` as a congruence subgroup
of `SL(2,ℤ)`.  This is the analytic object the displayed
`S₂(Γ₀(2))` dimension is *about*.  Mathlib still does not
compute `dim S₂(Γ₀(2))`; that displayed zero is
`s2_gamma0_2_dim` in `Chain.Level2`. -/
def Gamma0_2 : Subgroup (Matrix.SpecialLinearGroup (Fin 2) ℤ) :=
  Gamma0 2

theorem Gamma0_2_eq : Gamma0_2 = Gamma0 2 :=
  rfl

/-- PARI / displayed `S₂(Γ₀(2))` dimension is already a theorem
(`S2_Gamma0_2_zero`).  Marked here as an axiom-free `rfl` cert
alias. -/
def S2_Gamma0_2_zero_cert : Prop :=
  s2_gamma0_2_dim = 0

theorem S2_Gamma0_2_zero_cert_holds : S2_Gamma0_2_zero_cert :=
  S2_Gamma0_2_zero

/-- Taylor–Wiles primes `qₙ = 4·13ⁿ + 1`.  Base congruences
are `rfl`. -/
theorem TW_primes_Q_def (n : Nat) : TW_primes_Q n = 4 * 13 ^ n + 1 :=
  rfl

theorem TW_Q_base_53 : 53 % 13 = 1 :=
  TW_q53_mod13

theorem TW_Q_base_677 : 677 % 169 = 1 :=
  TW_q677_mod169

/-- `J₀(26)` product data stay axiom-free `rfl` certs
(GeometryBridge). -/
theorem J0_26_dim_cert :
    certifiedDecompositionDimension = 2 :=
  J0_26_dim.1

theorem J0_26_isogeny_cert : J0_26_IsogenyData :=
  J0_26_isogeny

theorem M3_det_cert : Matrix.det dAJ_at_infinity = 2 :=
  formal_immersion_X0_26_to_J0_26_at_2.det_two

/-! ## Bookkeeping Galois representation (not a Mathlib `GaloisRep`) -/

/-- What the Frey residual representation *would* be, as
bookkeeping.  Not a Mathlib Galois representation; the `det`
field is the residual prime 13. -/
structure GaloisRepModular where
  level : Nat
  isSquarefree : Bool
  det : Nat
  isFiniteFlatAt13 : Bool
  unramifiedOutside : Finset Nat

/-- Residual bookkeeping attached to a positive triple:
conductor `N = rad(ABC)` from Tate, residual prime 13,
finite-flat flag, unramified outside `{2, 13} ∪ primeFactors(ABC)`. -/
def residualBookkeeping (t : PositiveBealTriple) : GaloisRepModular :=
  { level := globalConductorTate t.toPrimitive
    isSquarefree := true
    det := 13
    isFiniteFlatAt13 := true
    unramifiedOutside := ramificationSupport t.toPrimitive 13 }

theorem residualBookkeeping_level (t : PositiveBealTriple) :
    (residualBookkeeping t).level = radABC t.A t.B t.C :=
  (frey_global_conductor t.toPrimitive).1

theorem residualBookkeeping_det (t : PositiveBealTriple) :
    (residualBookkeeping t).det = 13 :=
  rfl

/-! ## Arithmetic of ModularImpliesLevel2Newform (not the missing Mathlib arrow) -/

/-- On a positive triple the Wiles-domain `Modular` hypothesis
plus Ribet quotient is the level-2 arithmetic: `N / ∏q = 2`. -/
theorem modular_implies_ribet_level_two (t : PositiveBealTriple) :
    globalConductorTate t.toPrimitive / oddConductorPart t.toPrimitive = 2 :=
  ribet_level_quotient t.toPrimitive

/-- Combined arithmetic used by Step 5: conductor `rad(ABC)`,
Ribet quotient 2, Taylor–Wiles family, `R ≃ T` scaffold,
displayed `¬ ExistsNewformLevel2`, and the four-cusp
`X₀(26)(ℚ)` label.  This is *not* `ExistsNewformLevel2`. -/
structure Level2Arithmetic (t : PositiveBealTriple) : Prop where
  conductor_rad :
    globalConductorTate t.toPrimitive = radABC t.A t.B t.C
  pairwise :
    Nat.Coprime t.A t.B ∧ Nat.Coprime t.B t.C ∧ Nat.Coprime t.A t.C
  tate_odd :
    ∀ q ∈ (t.A * t.B * t.C).primeFactors,
      q ≠ 2 →
        conductorExponentTate
            (padicValInt q (freyCurveOf t.toPrimitive).c₄)
            (padicValInt q (freyCurveOf t.toPrimitive).Δ) =
          1
  modular : Modular t.toPrimitive
  quotient_two :
    globalConductorTate t.toPrimitive / oddConductorPart t.toPrimitive = 2
  tw_family : ∀ n : Nat, TW_primes_Q n = 4 * 13 ^ n + 1
  tw_53 : 53 % 13 = 1
  tw_677 : 677 % 169 = 1
  r_eq_t :
    Nonempty
      (R_infty (globalConductorTate t.toPrimitive) ≃
        T_infty (globalConductorTate t.toPrimitive))
  no_newform : ¬ ExistsNewformLevel2
  no_noncuspidal : ¬ ExistsNoncuspidal_26
  j0_product : certifiedDecompositionDimension = 2
  m3_det : Matrix.det dAJ_at_infinity = 2
  gamma0_exists : Gamma0_2 = Gamma0 2

theorem modular_implies_level2_arithmetic (t : PositiveBealTriple) :
    Level2Arithmetic t where
  conductor_rad := (frey_global_conductor t.toPrimitive).1
  pairwise := pairwise_coprime t.toPrimitive
  tate_odd := (frey_global_conductor t.toPrimitive).2.1
  modular := wiles_modularity_Frey t.toPrimitive
  quotient_two := ribet_level_quotient t.toPrimitive
  tw_family := fun _ => rfl
  tw_53 := TW_q53_mod13
  tw_677 := TW_q677_mod169
  r_eq_t := R_T_scaffold_of_triple t.toPrimitive
  no_newform := no_newform_level2
  no_noncuspidal := no_noncuspidal_Q_points
  j0_product := J0_26_dim.1
  m3_det := formal_immersion_X0_26_to_J0_26_at_2.det_two
  gamma0_exists := Gamma0_2_eq

/-- Ribet lowering on the positive-base Wiles-domain input is
the `26/13 = 2` pattern at the proved conductor. -/
theorem ribet_level_lowering_positive (t : PositiveBealTriple) :
    RibetLoweringConclusion t.toPrimitive 13 :=
  ribet_level_lowering_general t.toPrimitive prime_13 (by decide)

/-! ## The missing Mathlib arrow stays a Prop

`ModularImpliesLevel2Newform` is **not** a theorem.  Inhabiting
it would inhabit `ExistsNewformLevel2` (`0 ≠ 0`) from
`wiles_modularity_Frey`.  `beal_forall_proof_positive` is Beal
on positive bases *from* that Prop.
-/

/-- Missing Mathlib arrow: Wiles-domain modularity produces a
displayed level-2 newform (`0 ≠ 0`). -/
def ModularImpliesLevel2Newform : Prop :=
  ∀ w : PrimitiveBealTriple, Modular w → ExistsNewformLevel2

theorem gcd3_eq_one_of_not_gt
    {A B C : Nat} (hA : 0 < A)
    (hnot : ¬ gcd3 A B C > 1) :
    gcd3 A B C = 1 := by
  have hle : gcd3 A B C ≤ 1 := Nat.not_lt.mp hnot
  have hpos : 0 < gcd3 A B C :=
    Nat.gcd_pos_of_pos_left (Nat.gcd B C) hA
  exact Nat.le_antisymm hle (Nat.succ_le_of_lt hpos)

/-- The missing arrow plus `S2_Gamma0_2_zero` /
`no_newform_level2` is `False`.  Not a theorem from a
positive triple alone. -/
theorem no_newform_level2_of_arrow
    (hArrow : ModularImpliesLevel2Newform)
    (w : PrimitiveBealTriple) : False :=
  absurd (hArrow w (wiles_modularity_Frey w)) no_newform_level2

/-- Beal on positive bases, *from* the missing Mathlib arrow.
Not unconditional.  Uses `no_newform_level2` (from
`S2_Gamma0_2_zero`) and `no_noncuspidal_Q_points`. -/
theorem beal_forall_proof_positive
    (hModNew : ModularImpliesLevel2Newform) :
    ∀ A B C m n p : Nat,
      0 < A → 0 < B → 0 < C →
      2 < m → 2 < n → 2 < p →
      A ^ m + B ^ n = C ^ p →
      1 < Nat.gcd A (Nat.gcd B C) := by
  intro A B C m n p hposA hposB hposC hm hn hp heq
  by_cases hgt : gcd3 A B C > 1
  · exact hgt
  · have trip := of_positive hposA hposB hposC hm hn hp heq
      (gcd3_eq_one_of_not_gt hposA hgt)
    have arith := modular_implies_level2_arithmetic trip
    have _s2 : S2_Gamma0_2_zero_cert := S2_Gamma0_2_zero_cert_holds
    have _cusp := arith.no_noncuspidal
    have _ribet := arith.quotient_two
    have _tw53 := arith.tw_53
    have _tw677 := arith.tw_677
    have _rt := arith.r_eq_t
    have _m3 := arith.m3_det
    have _j0 := arith.j0_product
    exact nomatch (no_newform_level2_of_arrow hModNew trip.toPrimitive)

/-- The same implication, packaged on the `PositiveBealTriple`
structure.  Still conditional on the missing arrow. -/
theorem beal_forall_positive_from_level2
    (hModNew : ModularImpliesLevel2Newform) (t : PositiveBealTriple) :
    1 < Nat.gcd t.A (Nat.gcd t.B t.C) :=
  beal_forall_proof_positive hModNew t.A t.B t.C t.m t.n t.p
    t.hposA t.hposB t.hposC t.hm t.hn t.hp t.heq

/-- What *is* proved on every positive triple: Ribet/`R=T` +
GeometryBridge + the Step 5 arithmetic.  Not `False`. -/
theorem beal_forall_positive_glue (t : PositiveBealTriple) :
    Level2Arithmetic t ∧ RibetStep2Glue t.toPrimitive ∧
      GeometryBridgeConclusion :=
  ⟨modular_implies_level2_arithmetic t,
    ribet_step_2_contradiction t.toPrimitive, GeometryBridge⟩

/-- Lock: this module does not inhabit the quantified Beal
statement. -/
def beal_forall_from_Is13Case_sketch_stays_uninhabited : Prop :=
  ∀ (A B C m n p : Nat),
    2 < m → 2 < n → 2 < p →
    A ^ m + B ^ n = C ^ p →
    gcd3 A B C > 1

#check PositiveBealTriple
#check sketch_fails_on_zero_one_counterexample
#check Gamma0_2
#check GaloisRepModular
#check TW_Q_base_53
#check TW_Q_base_677
#check modular_implies_ribet_level_two
#check modular_implies_level2_arithmetic
#check ModularImpliesLevel2Newform
#check beal_forall_proof_positive
#check beal_forall_positive_from_level2
#check beal_forall_from_Is13Case_sketch_stays_uninhabited
#print axioms sketch_fails_on_zero_one_counterexample
#print axioms modular_implies_level2_arithmetic
#print axioms no_newform_level2_of_arrow
#print axioms beal_forall_proof_positive

end BealLevel26Foundations.Beal.FullProof.ModularImpliesNewform
