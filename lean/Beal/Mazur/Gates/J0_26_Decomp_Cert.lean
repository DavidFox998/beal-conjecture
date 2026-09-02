import Beal.Mazur.Jacobian.E26

namespace Beal17Mazur.Gates.J0_26_Decomp_Cert

/-!
# Checked data for the v9.3.0 `J₀(26)` decomposition certificate

This module mirrors the immutable JSON witness generated from
`sagemath/j0_26_decomp.log`.  It checks only finite data: dimensions, exact
models, and the archived covering rows.  The interpretation of the Sage
decomposition as an isogeny and the mwrank-to-rank bridge are deliberately
absent here and become explicit premises in `J0_26_Decomp.lean`.

The source transcript's `26a`/`26b` labels use the opposite order from the
established names in `E26.lean`.  The coefficient match is stated explicitly
below rather than silently renaming either source.
-/

open Beal17Mazur.Jacobian

def sage26a_aInvariants : List Int := [1, 0, 1, -5, -8]
def sage26b_aInvariants : List Int := [1, -1, 1, -3, 3]

def leanE26a1_aInvariants : List Int := [1, -1, 1, -3, 3]
def leanE26b1_aInvariants : List Int := [1, 0, 1, -5, -8]

def J0_26_level : Nat := 26
def J0_26_dimension : Nat := 2
def J0_26_factorDimensions : List Nat := [1, 1]

def SUnits_26_certificate : List Int :=
  [1, -1, 2, -2, 13, -13, 26, -26]

def f0 : List Int := [1, 2, -23, 28, -12]
def f1 : List Int := [-1, 0, -5, 26, -16]
def f2 : List Int := [-1, 2, -11, 36, -26]
def f3 : List Int := [-1, 2, 13, 12, -10]
def f4 : List Int := [-3, -2, 1, 12, -4]
def f5 : List Int := [-4, -3, 10, 13, 0]
def fRows : List (List Int) := [f0, f1, f2, f3, f4, f5]

def g0 : List Int := [1, 2, -15, 16, 0]
def g1 : List Int := [1, 2, -3, 4, 12]
def g2 : List Int := [1, 2, 9, 24, 16]
def g3 : List Int := [3, 2, -3, 4, 4]
def gRows : List (List Int) := [g0, g1, g2, g3]

theorem source_models_checked :
    sage26a_aInvariants = [1, 0, 1, -5, -8] ∧
      sage26b_aInvariants = [1, -1, 1, -3, 3] := by
  decide

theorem source_models_match_established_lean_order :
    sage26a_aInvariants = leanE26b1_aInvariants ∧
      sage26b_aInvariants = leanE26a1_aInvariants := by
  decide

theorem J0_26_dimension_eq_two :
    J0_26_dimension = 2 := by
  decide

theorem J0_26_dimension_eq_factor_sum :
    J0_26_dimension = J0_26_factorDimensions.sum := by
  decide

theorem J0_26_dimension_two_eq_one_add_one :
    J0_26_dimension = 2 ∧ 2 = 1 + 1 := by
  decide

theorem fRows_match_E26b1_transcript :
    fRows = E26b1MwrankQuartics.map fun q => [q.a, q.b, q.c, q.d, q.e] := by
  decide

theorem gRows_match_E26a1_transcript :
    gRows = E26a1MwrankQuartics.map fun q => [q.a, q.b, q.c, q.d, q.e] := by
  decide

theorem certificate_data_checked :
    J0_26_dimension = 2 ∧
      J0_26_dimension = J0_26_factorDimensions.sum ∧
      sage26a_aInvariants = leanE26b1_aInvariants ∧
      sage26b_aInvariants = leanE26a1_aInvariants ∧
      fRows.length = 6 ∧
      gRows.length = 4 := by
  decide

#print axioms source_models_checked
#print axioms source_models_match_established_lean_order
#print axioms J0_26_dimension_two_eq_one_add_one
#print axioms certificate_data_checked

end Beal17Mazur.Gates.J0_26_Decomp_Cert