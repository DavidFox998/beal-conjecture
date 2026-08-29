/-
      Galois/03_ModLForm — the mod-ℓ weight-two form boundary

      This module records only a finite mod-ℓ q-expansion and its proposed
      trace compatibility with a Frey residual representation. It does not
      construct a modular form, prove modularity, or transport a form to a
      lower level.

      In particular, this is not Mathlib's complex-analytic `CuspForm`
      interface. Introducing that interface here would move the boundary into
      complex analysis and add a stronger classical foundation footprint.
-/
import Beal.Galois.«01_Absolute»
import Beal.Galois.«02_ResidualRep»
import Beal.B14_FreyTate

namespace Beal.Galois

open Beal.FreyTate

/-- A finite mod-ℓ approximation to a weight-two q-expansion for one fixed
    v4.1.0 Frey model.

    The list is indexed by natural numbers through `List.get?`; it is not a
    complex-valued analytic function. The conductor in the divisibility field
    is the conductor stored by `model`, so this record cannot introduce a
    second unrelated conductor. -/
structure ModLWeightTwoForm
    {A B C : ℤ} {x y z : ℕ}
    {model : FreyCurveModel A B C x y z}
    (N ℓ : ℕ) where
  f_q : List (ZMod ℓ)
  level_divides_conductor : N ∣ model.conductor
  nonzero : Prop

/-- The explicit mod-ℓ trace of a two-dimensional linear automorphism.

    `GL2 ℓ` is the linear-automorphism presentation from Layer 1. Evaluating
    the images of the two standard basis vectors on their matching coordinates
    gives the diagonal trace without choosing a basis or an inverse matrix. -/
def standardBasis (ℓ : ℕ) (i : Fin 2) : Fin 2 → ZMod ℓ :=
  fun j => if i = j then 1 else 0

def modLTrace (ℓ : ℕ) (T : GL2 ℓ) : ZMod ℓ :=
  T (standardBasis ℓ 0) 0 + T (standardBasis ℓ 1) 1

/-- Trace compatibility between a finite mod-ℓ q-expansion and a Frey
    residual representation.

    For every represented coefficient index coprime to `N * ℓ`, an explicit
    representative `g` of the relevant Frobenius class has matching trace.
    The `FrobeniusClass` argument keeps the quotient class from Layer 1 in the
    statement. Requiring `FrobeniusClass.mk I g = F` avoids using
    `Classical.choice` to select a representative of a quotient class.

    Since `f_q` is finite, coefficient lookup is intentionally `Option`-valued:
    the proposition itself records whether the supplied finite approximation
    contains the requested index. -/
def ModLRealizesRepresentation
    {A B C : ℤ} {x y z : ℕ}
    {model : FreyCurveModel A B C x y z} {N ℓ : ℕ}
    (W : ModLWeightTwoForm (model := model) N ℓ)
    (R : FreyResidualRepresentation model ℓ) : Prop :=
  ∀ n : ℕ, Nat.Coprime n (N * ℓ) →
    ∀ I : InertiaSubgroup R.Gabs n,
    ∀ F : FrobeniusClass I,
    ∀ g : DecompositionElement I.toDecompositionSubgroup,
      FrobeniusClass.mk I g = F →
        W.f_q.get? n = some (modLTrace ℓ (R.rho g.val))

/-
  The realization clause above is the finite, representative-explicit version
  of:

    ∀ n, Nat.Coprime n (N * ℓ) →
      coefficient(W, n) =
        modLTrace ℓ (R.rho(Frob_n)).

  The quotient interface deliberately does not provide a canonical
  representative of a `FrobeniusClass`; quantifying over `I`, `F`, and `g`
  keeps this definition constructive and makes the required local
  Frobenius/decomposition input explicit. This file remains a type boundary,
  not a theorem of modularity or level lowering.
-/

#print axioms ModLWeightTwoForm
#print axioms ModLRealizesRepresentation
-- Expected: propext, Quot.sound only.

end Beal.Galois