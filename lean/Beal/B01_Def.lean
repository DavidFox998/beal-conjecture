-- B01_Def — Mathlib wrapper and backwards-compatible public API.
--
-- The actual Beal statement lives in B01_Def_Core, deliberately without
-- imports. Downstream bricks import this wrapper and keep using the historical
-- names below.

import Beal.B01_Def_Core
import Mathlib.Data.Nat.GCD.Basic
import Mathlib.Tactic

-- Backwards compatibility for B02–B21 and external users.
abbrev IsBealSolution (A B C x y z : Nat) : Prop :=
  IsBealSolutionCore A B C x y z

abbrev BealConjecture : Prop := BealConjectureCore

#print axioms IsBealSolutionCore
#print axioms BealConjectureCore
#print axioms IsBealSolution
#print axioms BealConjecture
-- Expected: all four declarations depend on no axioms.
