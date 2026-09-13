import BealLevel26Foundations.Base.BealCounterexampleBase
import BealLevel26Foundations.Chain.Level2
import BealLevel26Foundations.Frey.FreyConductor_26
import BealLevel26Foundations.Frey.FreyCurve13
import BealLevel26Foundations.Frey.FreyModularity_13
import BealLevel26Foundations.Ribet.RibetLevelLowering_26

namespace BealLevel26Foundations.Chain.Beal13CaseToFalse

open BealLevel26Foundations.Base.BealCounterexampleBase
open BealLevel26Foundations.Chain.Level2
open BealLevel26Foundations.Frey.FreyConductor26
  (Is13Case frey_conductor_26_of_Is13Case)
open BealLevel26Foundations.Frey.FreyCurve13
  (FreyCurve13_of_BealCounterexampleBases
    freyCurve13_of_bases_disc_ne_zero)
open BealLevel26Foundations.Frey.FreyModularity13
  (WeierstrassModularity WeierstrassModularity_of_pack)
open BealLevel26Foundations.Ribet.RibetLevelLowering26
  (ribet_produces_newform_level2_of_weierstrass_modularity)

/-!
# v4.48.0 Is13Case → False via level 2 — uninhabited
# v4.55.0 weierstrass-as-hypothesis False wiring (propext only)

`Frey.FreyConductor26.Is13Case` is `13 ∣ A*B*C` on shared
bases.  It is not Forall.`Is13Case` (`13 ∣ x*y*z`).

Intended composition (not a kernel close):

1. `Is13Case w` and `0 < A`, `0 < B` give Frey Δ ≠ 0
   (`freyCurve13_of_bases_disc_ne_zero`).
2. Tate sketch `frey_conductor_26_of_Is13Case` sends that
   to the conductor label `2 * 13`.  v5.0.0 inhabits it
   via the displayed Tate table
   (   `frey_conductor_26_of_Is13Case_inhabited`).  That is
   the label lock, not Mathlib Tate.
   `tate_algorithm_of_Is13Case` stays uninhabited.
3. `WeierstrassModularity (pack w)` is inhabited by
   `WeierstrassModularity_of_pack` (`frey_modular_13`,
   propext + axiom; not Wiles--Taylor) and, in v5.2.0,
   by `WeierstrassModularity_of_pack_from_R_T` (displayed
   `R = T` token, not that axiom).
4. Displayed Ribet `ribet_produces_newform_level2`
   (`26 / 13 = 2`) is inhabited (v5.1.0).  The False
   sketch
   `ribet_produces_newform_level2_of_weierstrass_modularity`
   would send modularity and `2 * 13` to
   `ExistsNewformLevel2` (`0 ≠ 0`).  Uninhabited:
   Mathlib 4.12 has no Ribet theorem.
5. `notExistsNewformLevel2` is none via displayed
   `S₂(Γ₀(2))` dimension `0`.

`Is13CaseForcesFalseSketchViaLevel2` is the valid type
`∀ w, Is13Case w → False`.  It stays uninhabited: a
term would be `False` from `⟨13, 2, 1⟩` (`Is13Case`,
`gcd = 1`) or from inhabiting `ExistsNewformLevel2`
(`0 ≠ 0`).  v5.3.0 inhabits the *displayed* Path 2
table in `Chain.BealForallInKernel`
(`Is13CaseForcesFalseSketchViaLevel2_inhabited`),
not this original type.  This is the only honest
path from `13 ∣ A*B*C` toward Beal `∀`:
`Is13Case → gcd > 1` is false (`⟨13, 2, 1⟩`).
No new axiom.  Does **not** import Forall or Mazur
BealTheorem (cycle).  This is the
`beal_forall_from_ribet` pre-image, not the original
`∀ A B C` sketch.
-/

/-- Valid type `Is13Case → False` on shared bases.
Uninhabited.  Needs Tate + Ribet.  Not `∀ A B C`. -/
def Is13CaseForcesFalseSketchViaLevel2 : Prop :=
  ∀ (w : BealCounterexampleBases), Is13Case w → False

/-- Same valid type, named for `#check`.  Uninhabited. -/
def Is13CaseForcesFalseSketchViaLevel2_valid_type : Prop :=
  ∀ (w : BealCounterexampleBases), Is13Case w → False

theorem Is13CaseForcesFalseSketchViaLevel2_type_eq :
    Is13CaseForcesFalseSketchViaLevel2 =
      Is13CaseForcesFalseSketchViaLevel2_valid_type :=
  rfl

/-- Wiring given Tate and Ribet sketches plus Δ ≠ 0.
Does not inhabit `Is13CaseForcesFalseSketchViaLevel2`:
those two sketches stay uninhabited. -/
theorem is13Case_implies_False_of_tate_ribet_disc
    (hTate : frey_conductor_26_of_Is13Case)
    (hRibet : ribet_produces_newform_level2_of_weierstrass_modularity)
    (w : BealCounterexampleBases)
    (h13 : Is13Case w)
    (hΔ : (FreyCurve13_of_BealCounterexampleBases w).Δ ≠ 0) :
    False :=
  notExistsNewformLevel2
    (hRibet w hΔ (WeierstrassModularity_of_pack w)
      (hTate w h13 hΔ))

/-- Same wiring, Δ ≠ 0 from `0 < A` and `0 < B`.
Still does not inhabit the unconditional sketch. -/
theorem is13Case_implies_False_of_tate_ribet_pos
    (hTate : frey_conductor_26_of_Is13Case)
    (hRibet : ribet_produces_newform_level2_of_weierstrass_modularity)
    (w : BealCounterexampleBases)
    (h13 : Is13Case w)
    (hA : 0 < w.A) (hB : 0 < w.B) :
    False :=
  is13Case_implies_False_of_tate_ribet_disc hTate hRibet w h13
    (freyCurve13_of_bases_disc_ne_zero w hA hB)

/-- Same False wiring, modularity as a hypothesis.
Does **not** use `WeierstrassModularity_of_pack`, so it
does not pull `frey_modular_13`.  Still does not inhabit
the unconditional sketch. -/
theorem is13Case_implies_False_of_tate_ribet_weierstrass
    (hTate : frey_conductor_26_of_Is13Case)
    (hRibet : ribet_produces_newform_level2_of_weierstrass_modularity)
    (hWeierstrass :
      ∀ (w : BealCounterexampleBases),
        (FreyCurve13_of_BealCounterexampleBases w).Δ ≠ 0 →
          WeierstrassModularity
            (FreyCurve13_of_BealCounterexampleBases w))
    (w : BealCounterexampleBases)
    (h13 : Is13Case w)
    (hΔ : (FreyCurve13_of_BealCounterexampleBases w).Δ ≠ 0) :
    False :=
  notExistsNewformLevel2
    (hRibet w hΔ (hWeierstrass w hΔ) (hTate w h13 hΔ))

#check Is13Case
#check Is13CaseForcesFalseSketchViaLevel2
#check Is13CaseForcesFalseSketchViaLevel2_valid_type
#check (∀ (w : BealCounterexampleBases), Is13Case w → False)
#check is13Case_implies_False_of_tate_ribet_disc
#check is13Case_implies_False_of_tate_ribet_pos
#check is13Case_implies_False_of_tate_ribet_weierstrass
#check frey_conductor_26_of_Is13Case
#check ribet_produces_newform_level2_of_weierstrass_modularity
#check notExistsNewformLevel2
#check WeierstrassModularity_of_pack
#print axioms Is13CaseForcesFalseSketchViaLevel2_type_eq
#print axioms notExistsNewformLevel2
#print axioms WeierstrassModularity_of_pack
#print axioms is13Case_implies_False_of_tate_ribet_disc
#print axioms is13Case_implies_False_of_tate_ribet_pos
#print axioms is13Case_implies_False_of_tate_ribet_weierstrass

end BealLevel26Foundations.Chain.Beal13CaseToFalse
