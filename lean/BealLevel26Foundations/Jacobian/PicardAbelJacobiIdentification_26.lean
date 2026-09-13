import BealLevel26Foundations.M3_Explicit
import Mathlib.Data.ZMod.Basic

namespace BealLevel26Foundations.Jacobian.PicardAbelJacobiIdentification26

open BealLevel26Foundations.M3Explicit

/-!
# Picard/Abel--Jacobi identification as a standalone `Prop`

This file owns `PicardAbelJacobiIdentification_26`.  It is the statement
that a supplied matrix equals the q-expansion `M₃` from the v1.4.0 ledger
`sagemath/level_26_ledger.json` (SHA-256
`0259fe957cc348b7286e233ce717fac47c30ad174b05e8e1c5fb70626f511151`),
which is the same matrix as `sagemath/certs/formal_immersion_M3.json`.

Mathlib 4.12 has no Picard scheme, Abel--Jacobi map, or Jacobian
cotangent space.  This module does not construct those objects and does
not discharge the identification.
-/

/-- Q-expansion `M₃` from the v1.4.0 ledger. -/
def qExpansionM3 : Matrix (Fin 2) (Fin 2) (ZMod 3) :=
  ledgerM3

/-- A supplied cotangent matrix equals the q-expansion `M₃`. -/
def PicardAbelJacobiIdentification_26
    (actual_dAJ_at_infinity : Matrix (Fin 2) (Fin 2) (ZMod 3)) : Prop :=
  actual_dAJ_at_infinity = qExpansionM3

theorem qExpansionM3_eq :
    qExpansionM3 = !![1, 1; 0, 2] :=
  ledgerM3_eq

theorem PicardAbelJacobiIdentification_26.eq_ledgerM3
    {actual_dAJ_at_infinity : Matrix (Fin 2) (Fin 2) (ZMod 3)}
    (h : PicardAbelJacobiIdentification_26 actual_dAJ_at_infinity) :
    actual_dAJ_at_infinity = ledgerM3 :=
  h

#print axioms qExpansionM3_eq
#print axioms PicardAbelJacobiIdentification_26.eq_ledgerM3

end BealLevel26Foundations.Jacobian.PicardAbelJacobiIdentification26
