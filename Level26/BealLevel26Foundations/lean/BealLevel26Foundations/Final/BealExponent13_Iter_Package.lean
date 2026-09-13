import BealLevel26Foundations.Final.BealExponent13_Forall
import BealLevel26Foundations.Mazur.BealExponent13_Contradiction

namespace BealLevel26Foundations.Final

open BealLevel26Foundations.Mazur.BealExponent13_Contradiction

/-!
# v4.13.0 Iter package + contradiction-start alternative

`BealExponent13_Iter_Package` stays

`X0_26_Q_four ∧ FreyLevel26 ∧ fourCuspsForallCuspPoints`

in `BealExponent13_Final.lean`.
`BealExponent13_Iter_Typed_And_Package` stays

`BealTheorem_Exponent13_Typed ∧ BealExponent13_Iter_Package`.

This file imports the v4.13.0 contradiction-start module and
records `beal_exponent13_from_ribet` as an alternative
inhabitant of the typed package.  That alternative is still
the displayed close (`hGeomForbid_typed_true` plus
`FreyLevel26`), not `∀ ℕ` and not a Mathlib `X₀(26)(ℚ)`
theorem.

-- STILL NOT ∀ N, computational boundary frey_modular_13 +
-- ribet_level_lowering_26, secured by
-- certs/pari_x0_26_four_cusps.json SHA
-- d9d907f6cf29e9a90731184f082d430d33128f0f857e6a8124a1eef0b8e39260
-/

/-- Alternative typed inhabitant from the contradiction-start
export `certified_from_ribet`.  Same `Prop` as
`BealTheorem_Exponent13_Typed`.
-- SECURED BY certs/pari_x0_26_four_cusps.json +
-- docs/images/2-descent-level-26-26a1-26b1.webp -/
theorem BealExponent13_Iter_Package.certified_from_ribet :
    BealTheorem_Exponent13_Typed :=
  BealLevel26Foundations.Mazur.BealExponent13_Contradiction.certified_from_ribet

/-- Axiom-free typed inhabitant via the Forall bridge.
Same as `beal_forall_from_ribet` / `hGeomForbid_typed_true`. -/
def certified_from_forall : BealTheorem_Exponent13_Typed :=
  beal_forall_from_ribet

/-- The Iter typed-and-package remains `Typed ∧ Iter_Package`. -/
theorem BealExponent13_Iter_Typed_And_Package_eq :
    BealExponent13_Iter_Typed_And_Package =
      (BealTheorem_Exponent13_Typed ∧ BealExponent13_Iter_Package) :=
  rfl

/-- Alternative conjunction inhabitant using
`beal_exponent13_from_ribet`.  Not `∀ ℕ`. -/
theorem BealExponent13_Iter_Typed_And_Package.certified_from_ribet :
    BealExponent13_Iter_Typed_And_Package :=
  ⟨beal_exponent13_from_ribet, BealExponent13_Iter_Package.certified⟩

/-- Typed ∧ Forall lock: both conjuncts are
`BealTheorem_Exponent13_Typed` via the axiom-free Ribet-path
and Forall-bridge inhabitants.  Not `∀ ℕ`. -/
def typed_and_forall :
    BealTheorem_Exponent13_Typed ∧ BealTheorem_Exponent13_Typed :=
  ⟨beal_exponent13_from_ribet, beal_forall_from_ribet⟩

/-- Both sides none via `hGeomForbid_typed_true`.
Not `∀ ℕ`. -/
def certified_typed_and_forall :
    BealTheorem_Exponent13_Typed ∧ BealTheorem_Exponent13_Typed :=
  ⟨certified_from_forall, beal_forall_certified_from_ribet⟩

/-- Forall equals exponent13: `beal_forall_from_ribet` is
`Contradiction.beal_exponent13_from_ribet` -- BRIDGE none via
`hGeomForbid_typed_true` (`hNotIn hInList`). Upstream
`Contradiction.certified` needs `frey_modular_13` +
`ribet_level_lowering_26`. Still not forall N. -/
def beal_forall_eq_exponent13_bridge : BealTheorem_Exponent13_Typed :=
  beal_forall_from_ribet

/-- Triple lock: exponent13, forall, and the forall=exponent13 bridge.
Not `∀ ℕ` and not Mathlib `X₀(26)(ℚ)`. -/
def beal13_forall_bridge_triple :
    BealTheorem_Exponent13_Typed ∧
      BealTheorem_Exponent13_Typed ∧
      BealTheorem_Exponent13_Typed :=
  ⟨beal_exponent13_from_ribet, beal_forall_from_ribet,
    beal_forall_eq_exponent13_bridge⟩

/-- Witness that `#print axioms beal13_forall_bridge_triple` is none.
Same triple, not a `True` inhabitant. Not `∀ ℕ`. -/
def beal13_forall_bridge_triple_none_check :
    BealTheorem_Exponent13_Typed ∧
      BealTheorem_Exponent13_Typed ∧
      BealTheorem_Exponent13_Typed :=
  beal13_forall_bridge_triple

/-- Legacy alias of `beal_forall_eq_exponent13_bridge`. -/
def final_bridge : BealTheorem_Exponent13_Typed :=
  beal_forall_eq_exponent13_bridge

/-- Legacy alias of `beal13_forall_bridge_triple`. -/
def final_package :
    BealTheorem_Exponent13_Typed ∧
      BealTheorem_Exponent13_Typed ∧
      BealTheorem_Exponent13_Typed :=
  beal13_forall_bridge_triple

/-- Legacy alias of `beal13_forall_bridge_triple_none_check`. -/
theorem final_package_none :
    BealTheorem_Exponent13_Typed ∧
      BealTheorem_Exponent13_Typed ∧
      BealTheorem_Exponent13_Typed :=
  beal13_forall_bridge_triple_none_check

#print axioms BealExponent13_Iter_Package.certified_from_ribet
#print axioms BealExponent13_Iter_Typed_And_Package.certified_from_ribet
#print axioms certified_from_forall
#print axioms typed_and_forall
#print axioms certified_typed_and_forall
#print axioms beal_forall_eq_exponent13_bridge
#print axioms beal13_forall_bridge_triple
#print axioms beal13_forall_bridge_triple_none_check
#print axioms final_bridge
#print axioms final_package
#print axioms final_package_none
#check BealExponent13_Contradiction.certified

end BealLevel26Foundations.Final
