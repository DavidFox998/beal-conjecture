import BealLevel26Foundations.Base.BealCounterexampleBase
import BealLevel26Foundations.Chain.Level2
import BealLevel26Foundations.Chain.X0_26_Point
import BealLevel26Foundations.Frey.FreyCurve13
import BealLevel26Foundations.Frey.FreyModularity_13
import BealLevel26Foundations.Modularity.FreyModularity_13

namespace BealLevel26Foundations.Ribet.RibetLevelLowering26

open BealLevel26Foundations.Base.BealCounterexampleBase
open BealLevel26Foundations.Chain.Level2
open BealLevel26Foundations.Chain.X0_26_Point
open BealLevel26Foundations.Frey.FreyCurve13
open BealLevel26Foundations.Frey.FreyModularity13
  (WeierstrassModularity)
open BealLevel26Foundations.Modularity.FreyModularity13

/-!
# v4.43.0 Ribet sketches take WeierstrassModularity

Does **not** import Forall or Mazur BealTheorem (cycle).
Does **not** add an axiom.

`WeierstrassModularity (FreyCurve13_of_BealCounterexampleBases w)`
is a valid type.  The displayed sketch
`ribet_produces_noncuspidal_of_weierstrass` still uses
`Modularity (FreyCurve13 w.A w.B w.C)`.  The bridge-named
sketch `ribet_produces_noncuspidal_of_weierstrass_modularity`
and `weierstrass_modularity_gives_ExistsNoncuspidal_sketch`
take the wrapper.

All three stay uninhabited: a `WeierstrassCurve` is not a
`DisplayedX026CuspPoint`.  Mathlib 4.12 has no `X₀(26)(ℚ)`
and no Ribet theorem.  Inhabiting any of them plus
`notExistsNoncuspidal_26_proved` would be `False` from
modularity and the conductor *label* (`rfl`, not Tate).

v4.44.0 starts `X0_26_Q_Point` as
`Σ (E : EllipticCurve ℚ), CyclicSubgroup E 26`.
That is still not this displayed existential.

v4.46.0: real `X₀(26)(ℚ)` has `26a1` / `26b1`, so a
noncuspidal `X₀(26)` point is not the contradiction.
`ribet_produces_newform_level2_of_weierstrass_modularity`
would send Weierstrass modularity and the conductor
*label* `2 * 13` to `ExistsNewformLevel2`.  Uninhabited:
`ExistsNewformLevel2` is `s2_gamma0_2_dim ≠ 0` i.e.
`0 ≠ 0`.  Inhabiting that plus `notExistsNewformLevel2`
would be `False` from the labels, not Mathlib Ribet.
v5.1.0 inhabits the *displayed* lowering
`ribet_level_26_div_13 = 26 / 13 = 2` and
`ribet_produces_newform_level2` (conclusion is that
label).  Same honesty as `tate_table_conductor = 2 * 13`.
`ribet_algorithm_of_Is13Case` stays the original
`→ ExistsNewformLevel2` sketch, uninhabited.
No new axiom.
-/

/-- Uninhabited.  Displayed `Modularity (FreyCurve13 A B C)`.
Not the Weierstrass wrapper. -/
def ribet_produces_noncuspidal_of_weierstrass : Prop :=
  ∀ (w : BealCounterexampleBases),
    (FreyCurve13_of_BealCounterexampleBases w).Δ ≠ 0 →
    Modularity (FreyCurve13 w.A w.B w.C) →
    frey_conductor_26 = 2 * 13 →
    ExistsNoncuspidal_26

/-- Uninhabited.  Same missing step on the v4.42.0 bridge.
`WeierstrassModularity (pack w)` is a valid type. -/
def ribet_produces_noncuspidal_of_weierstrass_modularity : Prop :=
  ∀ (w : BealCounterexampleBases),
    (FreyCurve13_of_BealCounterexampleBases w).Δ ≠ 0 →
    WeierstrassModularity
      (FreyCurve13_of_BealCounterexampleBases w) →
    frey_conductor_26 = 2 * 13 →
    ExistsNoncuspidal_26

/-- Same missing step with the conductor written `= 26` and
the WeierstrassModularity bridge.  Uninhabited. -/
def weierstrass_modularity_gives_ExistsNoncuspidal_sketch : Prop :=
  ∀ (w : BealCounterexampleBases),
    (FreyCurve13_of_BealCounterexampleBases w).Δ ≠ 0 →
    WeierstrassModularity
      (FreyCurve13_of_BealCounterexampleBases w) →
    frey_conductor_26 = 26 →
    ExistsNoncuspidal_26

/-- Uninhabited.  Ribet would lower the mod-13 residual
representation, unramified at 13, from conductor label
`26 = 2 * 13` to level `26 / 13 = 2`.  Conclusion is
`ExistsNewformLevel2` (`0 ≠ 0`).  Mathlib 4.12 has
no Ribet theorem.  Not Tate.  History sketches above stay
uninhabited. -/
def ribet_produces_newform_level2_of_weierstrass_modularity :
    Prop :=
  ∀ (w : BealCounterexampleBases),
    (FreyCurve13_of_BealCounterexampleBases w).Δ ≠ 0 →
    WeierstrassModularity
      (FreyCurve13_of_BealCounterexampleBases w) →
    frey_conductor_26 = 2 * 13 →
    ExistsNewformLevel2

/-- Displayed Kodaira-style residual conditions.  Not
Mathlib local Galois types. -/
inductive ResidualRepCondition where
  | irreducible_mazur
  | semistable_at_2
  | finite_flat_at_13
  | minimal_at_abc
  | det_cyclotomic_mod13

/-- Displayed residual conditions on `ρ̄_{E,13}`. -/
def rho_bar_displayed_conditions : List ResidualRepCondition :=
  [.irreducible_mazur, .semistable_at_2, .finite_flat_at_13,
    .minimal_at_abc, .det_cyclotomic_mod13]

theorem rho_bar_displayed_conditions_length :
    rho_bar_displayed_conditions.length = 5 :=
  rfl

/-- Displayed `26 / 13`.  Written so `rfl` is **none**. -/
def ribet_level_26_div_13 : Nat :=
  26 / 13

theorem ribet_level_26_div_13_eq :
    ribet_level_26_div_13 = 2 :=
  rfl

/-- Displayed lowering `N / 13 = 2` when `N = 2 * 13`. -/
def ribet_produces_newform_level2 : Prop :=
  ∀ (w : BealCounterexampleBases),
    (FreyCurve13_of_BealCounterexampleBases w).Δ ≠ 0 →
    WeierstrassModularity
      (FreyCurve13_of_BealCounterexampleBases w) →
    frey_conductor_26 = 2 * 13 →
    ribet_level_26_div_13 = 2

/-- v5.1.0: displayed Ribet table.  Conclusion is the
level label `26 / 13 = 2`, not `ExistsNewformLevel2`.
Same honesty as `frey_conductor_26_of_Is13Case_inhabited`. -/
theorem ribet_produces_newform_level2_inhabited :
    ribet_produces_newform_level2 :=
  fun _w _hΔ _hMod _hN =>
    ribet_level_26_div_13_eq

/-- Real Ribet algorithm: the original sketch that
concludes `ExistsNewformLevel2`.  Uninhabited. -/
def ribet_algorithm_of_Is13Case : Prop :=
  ribet_produces_newform_level2_of_weierstrass_modularity

#check ribet_produces_noncuspidal_of_weierstrass
#check ribet_produces_noncuspidal_of_weierstrass_modularity
#check weierstrass_modularity_gives_ExistsNoncuspidal_sketch
#check ribet_produces_newform_level2_of_weierstrass_modularity
#check ribet_produces_newform_level2
#check ribet_produces_newform_level2_inhabited
#check ribet_level_26_div_13
#check ribet_algorithm_of_Is13Case
#check ExistsNewformLevel2
#check notExistsNewformLevel2
#print axioms notExistsNewformLevel2
#print axioms ribet_level_26_div_13_eq
#print axioms rho_bar_displayed_conditions_length
#print axioms ribet_produces_newform_level2_inhabited
#check WeierstrassModularity
#check FreyCurve13_of_BealCounterexampleBases
#check frey_modular_13
#check frey_conductor_26
#check ExistsNoncuspidal_26

end BealLevel26Foundations.Ribet.RibetLevelLowering26
