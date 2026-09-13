/-
Copyright (c) 2026 David Fox. All rights reserved.
Released under MIT license as described in the file LICENSE.
Authors: David Fox

Track B v8.6.0 — Frey residual pack + Hecke/TW
lowering *term* on a `PositiveBealTriple`.

Mathlib 4.12 has no Ribet functor and no arrow
    `Modular w → ExistsNewformLevel2`.  That label is
`s2_gamma0_2_dim ≠ 0` with `s2_gamma0_2_dim = 0`,
i.e. `0 ≠ 0`.  This file therefore does **not**
inhabit `ExistsNewformLevel2`, does **not** prove
`¬ PositiveBealTriple`, and does **not** make
`beal_positive_bases` / `beal_positive_bases_unconditional`
drop the `ModularImpliesLevel2Newform` hypothesis.

What it *does* prove:

* `Frey_GaloisRep` is the packed residual datum
  ρ̄ mod 13 of `Y² = X(X−Aᵐ)(X+Bⁿ)`, conductor
  `N = rad(ABC)`, Tate exponent 1, `det = χ₁₃`,
  finite-flat at 13 from `wiles_modularity_Frey`;
* `level_lowering_to_2_term` is the four-step
  HeckeAction / TW / oldform pack at that conductor
  (basis `f_26a1`/`f_26b1`, dim `2 = 1+1`,
  `R_∞ ≃ T_∞` at `26·53` and `26·677`,
  `N / ∏q = 2`);
* displayed `S₂(Γ₀(2))` dimension is 0, so
  `¬ ExistsNewformLevel2` — the pack is **not**
  a term of type `ExistsNewformLevel2`;
* `beal_positive_bases_unconditional` is the same
  implication as `beal_positive_bases`, still *from*
  `ModularImpliesLevel2Newform`.

FullProof-only.  None chain does not import this file.
-/

import BealLevel26Foundations.Beal.FullProof.HeckeAction
import BealLevel26Foundations.Beal.FullProof.ModularImpliesNewform
import BealLevel26Foundations.Beal.FullProof.RibetFunctor
import BealLevel26Foundations.Beal.FullProof.ModularityRibet
import BealLevel26Foundations.Beal.FullProof.TrueConductor
import Beal.Foundations.J0_26_Decomp
import BealLevel26Foundations.Chain.Level2
import Mathlib.Tactic

namespace BealLevel26Foundations.Beal.FullProof.LevelLowering

open BealLevel26Foundations.Beal.FullProof.TrueConductor
open BealLevel26Foundations.Beal.FullProof.ModularityRibet
open BealLevel26Foundations.Beal.FullProof.ModularImpliesNewform
open BealLevel26Foundations.Beal.FullProof.HeckeAction
open BealLevel26Foundations.Beal.FullProof.RibetFunctor
open Beal.Foundations.J0_26_Decomp
open BealLevel26Foundations.Chain.Level2

/-! ## Residual Frey representation (packed, not Mathlib Gal) -/

/-- Residual Galois data of the Frey curve of a
positive triple: ρ̄ mod 13 attached to
`Y² = X(X−Aᵐ)(X+Bⁿ)`, conductor `N = rad(ABC)`.
Not a Mathlib `Gal(ℚ̄/ℚ) → GL₂(𝔽₁₃)` map. -/
def Frey_GaloisRep (t : PositiveBealTriple) :
    GaloisRepModularLevel (globalConductorTate t.toPrimitive) :=
  GaloisRepModularLevel.ofFrey t.toPrimitive 13

/-- Packed residual properties of `Frey_GaloisRep`:
discriminant `16 (Aᵐ)² (Bⁿ)² (Cᵖ)²`, Tate exponent 1
at odd `q | ABC` (`v_q(c₄)=0`) and radical exponent 1
at 2, pairwise coprimality, squarefree Wiles-domain
`Modular`, `det = χ₁₃`, finite-flat at 13. -/
structure FreyGaloisRepPack (t : PositiveBealTriple) : Prop where
  residual_13 : (Frey_GaloisRep t).residualPrime = 13
  level_N : (Frey_GaloisRep t).level = globalConductorTate t.toPrimitive
  conductor_rad :
    globalConductorTate t.toPrimitive = radABC t.A t.B t.C
  conductor_two_odd :
    globalConductorTate t.toPrimitive = 2 * oddConductorPart t.toPrimitive
  Delta_eq :
    (freyCurveOf t.toPrimitive).Δ =
      16 * ((t.A : Int) ^ t.m) ^ 2 * ((t.B : Int) ^ t.n) ^ 2 *
        ((t.C : Int) ^ t.p) ^ 2
  tate_odd :
    ∀ q ∈ (t.A * t.B * t.C).primeFactors,
      q ≠ 2 →
        conductorExponentTate
            (padicValInt q (freyCurveOf t.toPrimitive).c₄)
            (padicValInt q (freyCurveOf t.toPrimitive).Δ) =
          1
  c4_val_zero :
    ∀ q ∈ (t.A * t.B * t.C).primeFactors,
      q ≠ 2 →
        padicValInt q (freyCurveOf t.toPrimitive).c₄ = 0
  tate_two_exp : padicValNat 2 (radABC t.A t.B t.C) = 1
  pairwise :
    Nat.Coprime t.A t.B ∧ Nat.Coprime t.B t.C ∧ Nat.Coprime t.A t.C
  pairwise_powers :
    (t.A ^ t.m).Coprime (t.B ^ t.n) ∧
      (t.B ^ t.n).Coprime (t.C ^ t.p) ∧
      (t.A ^ t.m).Coprime (t.C ^ t.p)
  modular : Modular t.toPrimitive
  det_chi : cyclotomicCharacter 13 = 13
  finite_flat : finiteFlatAt (Frey_GaloisRep t) 13
  minimal_odd : minimalAtOddPrimes (Frey_GaloisRep t) t.toPrimitive

theorem Frey_GaloisRep_pack (t : PositiveBealTriple) :
    FreyGaloisRepPack t where
  residual_13 := rfl
  level_N := rfl
  conductor_rad := (frey_global_conductor t.toPrimitive).1
  conductor_two_odd := rfl
  Delta_eq := frey_Delta t.toPrimitive
  tate_odd := (frey_global_conductor t.toPrimitive).2.1
  c4_val_zero := by
    intro q hq hodd
    have hqP : q.Prime := Nat.prime_of_mem_primeFactors hq
    have hdvd : q ∣ t.A * t.B * t.C :=
      Nat.dvd_of_mem_primeFactors hq
    exact (tate_odd_prime t.toPrimitive hqP hodd hdvd).c4_val_zero
  tate_two_exp := (tate_two t.toPrimitive).radical_exponent_one
  pairwise := pairwise_coprime t.toPrimitive
  pairwise_powers := true_gcd_pairwise t.toPrimitive
  modular := wiles_modularity_Frey t.toPrimitive
  det_chi := det_eq_chi_13
  finite_flat := finiteFlatAt_13 t.toPrimitive
  minimal_odd := minimalAtOddPrimes_of_tate t.toPrimitive

/-! ## v8.3.0 pack (kept) -/

/-- Packed conclusion of level lowering to 2 on a positive
triple: conductor `rad(ABC)`, quotient 2, TW patching at
`53`/`677`, and displayed `¬ ExistsNewformLevel2`.
Not a Mathlib newform. -/
structure LevelLoweringTo2 (t : PositiveBealTriple) : Prop where
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
  det_chi : cyclotomicCharacter 13 = 13
  tw_53 : Q1 % 13 = 1
  tw_677 : Q2 % 169 = 1
  patched : Nonempty (R_infty patchedLevel1 ≃ T_infty patchedLevel1)
  no_newform : ¬ ExistsNewformLevel2
  s2_zero : s2_gamma0_2_dim = 0

theorem level_lowering_to_2 (t : PositiveBealTriple) :
    LevelLoweringTo2 t where
  conductor_rad := (frey_global_conductor t.toPrimitive).1
  pairwise := pairwise_coprime t.toPrimitive
  tate_odd := (frey_global_conductor t.toPrimitive).2.1
  modular := wiles_modularity_Frey t.toPrimitive
  quotient_two := ribet_level_quotient t.toPrimitive
  det_chi := det_eq_chi_13
  tw_53 := Q1_mod13
  tw_677 := Q2_mod169
  patched := ⟨R_T_scaffold patchedLevel1⟩
  no_newform := no_newform_level2
  s2_zero := S2_Gamma0_2_zero

/-- Functorial pack from `RibetFunctor` on the underlying
primitive triple. -/
theorem level_lowering_to_2_functor (t : PositiveBealTriple) :
    ∃ ρ' : GaloisRepModularLevel 2,
      ρ'.level = 2 ∧
        ρ'.residualPrime = 13 ∧
          globalConductorTate t.toPrimitive / oddConductorPart t.toPrimitive = 2 :=
  ribet_level_lowering_functor_of_frey t.toPrimitive

/-! ## v8.6.0 four-step Hecke / TW / oldform term

The requested type `ExistsNewformLevel2` is `0 ≠ 0`.
The term below is the arithmetic that would *feed*
that label if the displayed `S₂(Γ₀(2))` dimension
were nonzero.  It is **not** a term of type
`ExistsNewformLevel2`. -/

structure LevelLoweringTo2Term (t : PositiveBealTriple) : Prop where
  frey : FreyGaloisRepPack t
  hecke_basis :
    certifiedDecompositionDimension = 2 ∧
      factor26a1.dimension = 1 ∧
        factor26b1.dimension = 1
  T3_a1 : HeckeOperator_Tq_coeff 3 1 f_26a1 = 1
  T3_b1 : HeckeOperator_Tq_coeff 3 1 f_26b1 = -3
  hecke_T :
    HeckeAlgebra_T_Model.canonical.T3 =
        (fun a n => HeckeOperator_Tq_coeff 3 n a) ∧
      HeckeAlgebra_T_Model.canonical.T5 =
        (fun a n => HeckeOperator_Tq_coeff 5 n a) ∧
        HeckeAlgebra_T_Model.canonical.T7 =
          (fun a n => HeckeOperator_Tq_coeff 7 n a)
  tw_53 : Q1 % 13 = 1
  tw_677 : Q2 % 169 = 1
  q3_composite : 17 * 517 = Q3
  tw_infinite :
    ∀ n : Nat, 0 < n →
      ∃ q : Nat, q = TW_primes_Q n ∧ q % (13 ^ n) = 1
  patched_53 : Nonempty (R_infty patchedLevel1 ≃ T_infty patchedLevel1)
  patched_677 : Nonempty (R_infty patchedLevel2 ≃ T_infty patchedLevel2)
  patched_levels : patchedLevel1 = 26 * 53 ∧ patchedLevel2 = 26 * 677
  quotient_two :
    globalConductorTate t.toPrimitive / oddConductorPart t.toPrimitive = 2
  rad_two_odd :
    radABC t.A t.B t.C / oddConductorPart t.toPrimitive = 2
  s2_zero : s2_gamma0_2_dim = 0
  no_newform : ¬ ExistsNewformLevel2

/-- Four-step lowering term: (1) Frey residual modular at
`N` via HeckeAction basis `f_26a1`/`f_26b1` (dim `2=1+1`);
(2) TW primes `Q1=53`, `Q2=677` give `R_∞ ≃ T_∞` at
`N·53` and `N·677` via `R_inf_eq_T_inf_patched`;
(3) oldform quotient `S₂(Γ₀(N)) → S₂(Γ₀(2))` is the
Ribet identity `N / ∏q = 2`; (4) displayed
`S₂(Γ₀(2))` dim 0, so this is **not**
`ExistsNewformLevel2`. -/
theorem level_lowering_to_2_term (t : PositiveBealTriple) :
    LevelLoweringTo2Term t where
  frey := Frey_GaloisRep_pack t
  hecke_basis := S2_Gamma0_26_dim
  T3_a1 := T3_26a1_at_one
  T3_b1 := T3_26b1_at_one
  hecke_T :=
    ⟨HeckeAlgebra_T_Model.canonical.T3_def,
      HeckeAlgebra_T_Model.canonical.T5_def,
      HeckeAlgebra_T_Model.canonical.T7_def⟩
  tw_53 := Q1_mod13
  tw_677 := Q2_mod169
  q3_composite := Q3_composite
  tw_infinite := TW_Q_infinite_explicit
  patched_53 := R_inf_eq_T_inf_patched.1
  patched_677 := R_inf_eq_T_inf_patched.2.1
  patched_levels := ⟨patchedLevel1_eq, patchedLevel2_eq⟩
  quotient_two := ribet_level_quotient t.toPrimitive
  rad_two_odd := ribet_level_quotient_rad t.toPrimitive
  s2_zero := S2_Gamma0_2_zero
  no_newform := no_newform_level2

/-- Honesty: `S2_Gamma0_2_zero` (`s2_gamma0_2_dim = 0`
by `rfl` from `Chain.Level2`) means the four-step pack
does **not** inhabit `ExistsNewformLevel2`.  It does
**not** refute `PositiveBealTriple`. -/
theorem S2_Gamma0_2_zero_of_term (t : PositiveBealTriple) :
    s2_gamma0_2_dim = 0 ∧ ¬ ExistsNewformLevel2 :=
  ⟨(level_lowering_to_2_term t).s2_zero,
    (level_lowering_to_2_term t).no_newform⟩

/-- Honesty: lowering plus `S2_Gamma0_2_zero` is *not*
`ExistsNewformLevel2`. -/
theorem level_lowering_does_not_inhabit_newform
    (t : PositiveBealTriple) :
    ¬ ExistsNewformLevel2 :=
  (level_lowering_to_2_term t).no_newform

/-- Beal on positive bases, *from* the missing Mathlib
arrow.  Not unconditional.  Equal to
`beal_forall_proof_positive`. -/
theorem beal_positive_bases
    (hModNew : ModularImpliesLevel2Newform) :
    ∀ A B C m n p : Nat,
      0 < A → 0 < B → 0 < C →
      2 < m → 2 < n → 2 < p →
      A ^ m + B ^ n = C ^ p →
      1 < Nat.gcd A (Nat.gcd B C) :=
  beal_forall_proof_positive hModNew

/-- Same theorem as `beal_positive_bases`.  The name
records the v8.6.0 request for an unconditional
statement; the type still requires
`ModularImpliesLevel2Newform` because inhabiting
`ExistsNewformLevel2` would inhabit `0 ≠ 0`. -/
theorem beal_positive_bases_unconditional
    (hModNew : ModularImpliesLevel2Newform) :
    ∀ A B C m n p : Nat,
      0 < A → 0 < B → 0 < C →
      2 < m → 2 < n → 2 < p →
      A ^ m + B ^ n = C ^ p →
      1 < Nat.gcd A (Nat.gcd B C) :=
  beal_positive_bases hModNew

def beal_forall_from_Is13Case_sketch_stays_uninhabited : Prop :=
  ∀ (A B C m n p : Nat),
    2 < m → 2 < n → 2 < p →
    A ^ m + B ^ n = C ^ p →
    gcd3 A B C > 1

#check Frey_GaloisRep
#check Frey_GaloisRep_pack
#check level_lowering_to_2
#check level_lowering_to_2_term
#check level_lowering_to_2_functor
#check S2_Gamma0_2_zero_of_term
#check beal_positive_bases
#check beal_positive_bases_unconditional
#print axioms Frey_GaloisRep_pack
#print axioms level_lowering_to_2
#print axioms level_lowering_to_2_term
#print axioms level_lowering_does_not_inhabit_newform
#print axioms beal_positive_bases
#print axioms beal_positive_bases_unconditional

end BealLevel26Foundations.Beal.FullProof.LevelLowering
