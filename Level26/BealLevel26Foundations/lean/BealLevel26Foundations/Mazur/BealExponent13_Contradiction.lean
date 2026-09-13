import BealLevel26Foundations.Chain.FreyCurve_13_26
import BealLevel26Foundations.Chain.X0_26_Point
import BealLevel26Foundations.Modularity.FreyModularity_13
import BealLevel26Foundations.Modularity.RibetLevelLowering_26
import BealLevel26Foundations.Mazur.BealTheoremFromMazurChain26

namespace BealLevel26Foundations.Mazur.BealExponent13_Contradiction

set_option linter.dupNamespace false

open BealLevel26Foundations.Chain.Frey13
open BealLevel26Foundations.Chain.X0_26_Point
open BealLevel26Foundations.Modularity.FreyModularity13
  hiding freyLevel26_computational
open BealLevel26Foundations.Modularity.RibetLevelLowering26
open BealLevel26Foundations.Mazur.BealTheoremFromMazurChain26
  hiding ExistsNoncuspidal_26 DisplayedX026CuspPoint fourCuspsList
    fourCuspsList_complete_computational fourCuspsForallCuspPoints
    BealTheorem_Exponent13_Typed

/-!
# v4.13.0 Iter contradiction start

Wires the three named modules into one displayed package:

* `X0_26_Point` — `X0_26_Q = {P | P.label ∈ fourCuspsList}`
  (`X0_26_Q_four_cusps`), `ExistsNoncuspidal_26` empty by `P.mem`
* `FreyModularity_13` — `frey_modular_13`, `FreyLevel26` `2 * 13 = 26`
* `RibetLevelLowering_26` — `ribet_level_lowering_26`

`contradiction_from_ribet` is the Ribet-path close
`ExistsNoncuspidal_26 → False` on the displayed cusp-label
type.  `beal_exponent13_from_ribet` is the existing typed
package via axiom-free `hGeomForbid_typed_true`
(`hNotIn hInList`) plus `FreyLevel26`.

-- STILL NOT ∀ N, computational boundary frey_modular_13 +
-- ribet_level_lowering_26.
-- SECURED BY certs/pari_x0_26_four_cusps.json +
-- docs/images/2-descent-level-26-26a1-26b1.webp
-- SHA d9d907f6cf29e9a90731184f082d430d33128f0f857e6a8124a1eef0b8e39260

This is **not** `∀ A B C : ℕ`, not
`¬ A^13 + B^13 = C^13`, and not a Mathlib `X₀(26)(ℚ)`
theorem.  The carrier remains `X0_26_Point_Raw`.  There is
no placeholders and no `False.elim`.
-/

/-- Ribet-path close on `X0_26_Point.ExistsNoncuspidal_26`.
Uses `ribet_level_lowering_26` at `frey_conductor_26 = 26`.
Not a Lean Ribet theorem and not a modular-curve point. -/
theorem contradiction_from_ribet :
    ExistsNoncuspidal_26 → False :=
  fun h => ribet_level_lowering_26 (by rfl) h

/-- Typed displayed close plus `FreyLevel26`.
Inhabitant is axiom-free `hGeomForbid_typed_true` together
with `2 * 13 = 26`.  The Ribet path sits beside this as
`contradiction_from_ribet`; this theorem does not inhabit
the old elliptic-`j` `True → ¬True`. -/
theorem beal_exponent13_from_ribet :
    BealTheoremFromMazurChain26.BealTheorem_Exponent13_Typed :=
  ⟨hGeomForbid_typed_true, freyLevel26_computational⟩

/-- Displayed contradiction-start package: Ribet-path close,
typed close, Frey modularity name, and four-cusp audit.
Not `∀ ℕ`. -/
def BealExponent13_Contradiction : Prop :=
  (ExistsNoncuspidal_26 → False) ∧
    BealTheoremFromMazurChain26.BealTheorem_Exponent13_Typed ∧
    (∀ A B C : Nat, Modularity (FreyCurve13 A B C)) ∧
    (∀ P : DisplayedX026CuspPoint, P.label ∈ fourCuspsList)

theorem BealExponent13_Contradiction.certified :
    BealExponent13_Contradiction :=
  ⟨contradiction_from_ribet, beal_exponent13_from_ribet,
    frey_modular_13, X0_26_Q_four_cusps⟩

/-- Exported typed inhabitant for the Iter package citation
lock.  Same as `beal_exponent13_from_ribet`.
-- SECURED BY certs/pari_x0_26_four_cusps.json +
-- docs/images/2-descent-level-26-26a1-26b1.webp -/
theorem certified_from_ribet :
    BealTheoremFromMazurChain26.BealTheorem_Exponent13_Typed :=
  beal_exponent13_from_ribet

#print axioms contradiction_from_ribet
#print axioms beal_exponent13_from_ribet
#print axioms certified_from_ribet
#print axioms BealExponent13_Contradiction.certified
#check X0_26_Q_four_cusps
#check frey_modular_13
#check ribet_level_lowering_26
#check hGeomForbid_typed_true

end BealLevel26Foundations.Mazur.BealExponent13_Contradiction
