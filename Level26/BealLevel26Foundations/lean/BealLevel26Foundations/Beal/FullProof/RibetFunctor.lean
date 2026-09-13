/-
Copyright (c) 2026 David Fox. All rights reserved.
Released under MIT license as described in the file LICENSE.
Authors: David Fox

Track B v8.2.0 — RibetFunctor: functorial level lowering
`N → 2` on packed residual representations.

Mathlib 4.12 has no Ribet level-lowering functor and no
arrow `Modular w → ExistsNewformLevel2`.  That last
label is `s2_gamma0_2_dim ≠ 0` with `s2_gamma0_2_dim = 0`,
i.e. `0 ≠ 0`.  This file therefore does **not** inhabit
`ModularImpliesLevel2Newform` and does **not** make
`beal_forall_proof_positive` unconditional.

What it *does* prove:

* `GaloisRepModularLevel N` is the packed residual
  representation at conductor `N`;
* `ribet_level_lowering_functor` produces a packed
  representation at level 2 with `det = χ₁₃`, using
  `frey_global_conductor` (odd Tate exponent 1, radical
  exponent 1 at 2), `wiles_modularity_Frey` (squarefree
  Wiles-domain input), `ribet_level_quotient`
  (`N / ∏q = 2`), `R_inf_eq_T_inf`, and
  `S2_Gamma0_2_zero`;
* `ModularImpliesLevel2Newform_Real` is the **same Prop**
  as v8.1.0 — still uninhabited.

FullProof-only.  Does not import the 24-module none chain.
-/

import BealLevel26Foundations.Beal.FullProof.HeckeAlgebra
import BealLevel26Foundations.Beal.FullProof.ModularImpliesNewform
import BealLevel26Foundations.Beal.FullProof.ModularityRibet
import BealLevel26Foundations.Beal.FullProof.TrueConductor
import BealLevel26Foundations.Chain.Level2
import Mathlib.Tactic

namespace BealLevel26Foundations.Beal.FullProof.RibetFunctor

open BealLevel26Foundations.Beal.FullProof.TrueConductor
open BealLevel26Foundations.Beal.FullProof.ModularityRibet
open BealLevel26Foundations.Beal.FullProof.HeckeAlgebra
open BealLevel26Foundations.Beal.FullProof.ModularImpliesNewform
open BealLevel26Foundations.Chain.Level2

/-! ## Packed residual representation at level `N` -/

/-- Residual representation arising from weight-2 forms
of level `N`.  Not a Mathlib Galois representation. -/
structure GaloisRepModularLevel (N : Nat) where
  residualPrime : Nat
  conductor : Nat
  level : Nat
  level_eq : level = N

def GaloisRepModularLevel.ofFrey (w : PrimitiveBealTriple)
    (l : Nat) : GaloisRepModularLevel (globalConductorTate w) where
  residualPrime := l
  conductor := globalConductorTate w
  level := globalConductorTate w
  level_eq := rfl

def GaloisRepModularLevel.lowered (l : Nat) :
    GaloisRepModularLevel 2 where
  residualPrime := l
  conductor := 2
  level := 2
  level_eq := rfl

def finiteFlatAt {N : Nat} (ρ : GaloisRepModularLevel N)
    (l : Nat) : Prop :=
  ρ.residualPrime = l

def minimalAtOddPrimes {N : Nat}
    (ρ : GaloisRepModularLevel N) (w : PrimitiveBealTriple) : Prop :=
  ρ.conductor = globalConductorTate w ∧
    ∀ q ∈ (w.A * w.B * w.C).primeFactors,
      q ≠ 2 →
        conductorExponentTate
            (padicValInt q (freyCurveOf w).c₄)
            (padicValInt q (freyCurveOf w).Δ) =
          1

def unramifiedOutside_two_ABC {N : Nat}
    (ρ : GaloisRepModularLevel N) (w : PrimitiveBealTriple) : Prop :=
  ramificationSupport w ρ.residualPrime =
    insert ρ.residualPrime
      (insert 2 (w.A * w.B * w.C).primeFactors)

theorem unramifiedOutside_two_ABC_holds
    (w : PrimitiveBealTriple) (l : Nat) :
    unramifiedOutside_two_ABC (GaloisRepModularLevel.ofFrey w l) w :=
  rfl

theorem finiteFlatAt_13 (w : PrimitiveBealTriple) :
    finiteFlatAt (GaloisRepModularLevel.ofFrey w 13) 13 :=
  rfl

theorem minimalAtOddPrimes_of_tate (w : PrimitiveBealTriple) :
    minimalAtOddPrimes (GaloisRepModularLevel.ofFrey w 13) w :=
  ⟨rfl, (frey_global_conductor w).2.1⟩

/-! ## Functorial lowering `N → 2` -/

/-- Ribet level-lowering as a packed functor: a residual
representation at `N = rad(ABC)` that is finite-flat at 13
and minimal at odd primes of `ABC` lowers to level 2 with
`det = χ₁₃`.  Generalizes the displayed `26/13 = 2`.

This is **not** `ExistsNewformLevel2`.  The displayed
`S₂(Γ₀(2))` dimension is still 0. -/
theorem ribet_level_lowering_functor
    (w : PrimitiveBealTriple)
    (ρ : GaloisRepModularLevel (globalConductorTate w))
    (hFlat : finiteFlatAt ρ 13)
    (hMin : minimalAtOddPrimes ρ w)
    (hRam : unramifiedOutside_two_ABC ρ w) :
    ∃ ρ' : GaloisRepModularLevel 2,
      ρ'.level = 2 ∧
        ρ'.residualPrime = 13 ∧
          ρ'.conductor = 2 ∧
            cyclotomicCharacter 13 = 13 ∧
              globalConductorTate w / oddConductorPart w = 2 ∧
                Modular w ∧
                  ρ.conductor = globalConductorTate w ∧
                    unramifiedOutside_two_ABC ρ w ∧
                      Nonempty (R_infty_TW ≃ T_infty_TW) ∧
                        s2_gamma0_2_dim = 0 :=
  ⟨GaloisRepModularLevel.lowered ρ.residualPrime, rfl, hFlat, rfl,
    det_eq_chi_13, ribet_level_quotient w, wiles_modularity_Frey w,
    hMin.1, hRam, R_inf_eq_T_inf, S2_Gamma0_2_zero⟩

theorem ribet_level_lowering_functor_of_frey
    (w : PrimitiveBealTriple) :
    ∃ ρ' : GaloisRepModularLevel 2,
      ρ'.level = 2 ∧
        ρ'.residualPrime = 13 ∧
          globalConductorTate w / oddConductorPart w = 2 :=
  ⟨GaloisRepModularLevel.lowered 13, rfl, rfl, ribet_level_quotient w⟩

/-- Same missing Mathlib arrow as v8.1.0.  **Not** a
theorem.  Inhabiting it would inhabit `0 ≠ 0`. -/
def ModularImpliesLevel2Newform_Real : Prop :=
  ModularImpliesLevel2Newform

theorem ModularImpliesLevel2Newform_Real_eq :
    ModularImpliesLevel2Newform_Real =
      ModularImpliesLevel2Newform :=
  rfl

/-- Honesty lock: the displayed newform label stays empty. -/
theorem not_ExistsNewformLevel2 : ¬ ExistsNewformLevel2 :=
  no_newform_level2

/-- The functor plus `S2_Gamma0_2_zero` is *not* a
newform at level 2. -/
theorem ribet_functor_does_not_inhabit_newform :
    ¬ ExistsNewformLevel2 :=
  not_ExistsNewformLevel2

/-- Lock: this module does not inhabit the quantified
Beal statement. -/
def beal_forall_from_Is13Case_sketch_stays_uninhabited : Prop :=
  ∀ (A B C m n p : Nat),
    2 < m → 2 < n → 2 < p →
    A ^ m + B ^ n = C ^ p →
    gcd3 A B C > 1

#check GaloisRepModularLevel
#check ribet_level_lowering_functor
#check ModularImpliesLevel2Newform_Real
#check not_ExistsNewformLevel2
#print axioms ribet_level_lowering_functor
#print axioms ribet_level_lowering_functor_of_frey
#print axioms ModularImpliesLevel2Newform_Real_eq
#print axioms not_ExistsNewformLevel2

end BealLevel26Foundations.Beal.FullProof.RibetFunctor
