import Init
import DarmonMerel.«3_RibetLowering4413»
import Mathlib.Modular.QCurve4413
import Mathlib.Modular.CmVanishing32

/-!
# Galois skeleton for the Frey ℚ-curve

`FreyCurve4413` is the curve over `ℤ[√-1]` attached to `a^4 + b^4 = c^13`.
This file packages two objects that the frontier propositions name, and it
records what the two axioms say about them.

* `RhoE13 E` is the mod-`13` residual of `E`. The representation space and
  the residual are the unresolved markers `RhoE13Space.unresolved` and
  `rho_E_p`. There is no `Gal(ℚ̄/ℚ(i))` and no `GL₂(𝔽₁₃)`.
* `qcurve_extension_169 E` stores the conjugate coefficient and the equality
  `velu_target_eq_twist_neg_two`. That equality is the coefficient form of
  the 2-isogeny from the conjugate to the twist by `-2`. It is not a class
  in `H²` and not a map on a Tate module.

`RhoE13Open` and `qcurve_extension_169_open` are the propositions already
in the tree. `rhoE13_irreducible_open` and `qcurve_extension_169_cocycle_open`
are those propositions. `RhoE13.ofFrey` and `qcurve_extension_169.ofFrey`
do not produce terms of them.

`frey_qcurve_modular_on_RhoE13` and `ribet_level_lowering_on_RhoE13` are
what `frey_qcurve_modular` and `ribet_level_lowering_4413` give about
`RhoE13`. The first is `Modular E` with the residual left unresolved. The
second is a `RibetLevel` from `RhoE13Open`, together with `GkResidualIso`.
Neither constructs a representation.

There is no `axiom` in this file and no `sorry`.
-/

/-- Carrier for the residual representation space of `ρ̄_{E,13}`.

The `𝔽₁₃`-vector space and the Galois action are not formalized.
-/
inductive RhoE13Space where
  /-- Marker that no representation space has been constructed. -/
  | unresolved

/-- The mod-`13` residual representation of a Frey curve.

`space` is the unresolved carrier. `residual` is a `GaloisRepresentation`
attached to `E` by `rho_E_p`. The curve is the `FreyCurve4413` of
`DarmonMerel.«1_FreyCurve4413»`.
-/
structure RhoE13 (E : FreyCurve4413) where
  /-- Residual representation space. -/
  space : RhoE13Space
  /-- Residual representation of `E`. -/
  residual : GaloisRepresentation
  /-- The residual is `ρ_{E,13}`, which is `rho_E_p`. -/
  residual_eq : residual = rho_E_p E

/-- The unresolved residual of `E`.

`rho_E_p E` is `GaloisRepresentation.unresolved`. This packages that marker.
It is not a term of `RhoE13Open`.
-/
def RhoE13.ofFrey (E : FreyCurve4413) : RhoE13 E where
  space := .unresolved
  residual := rho_E_p E
  residual_eq := rfl

/-- The packaged residual is the unresolved marker `rho_E_p`. -/
theorem RhoE13.ofFrey_unresolved (E : FreyCurve4413) :
    (RhoE13.ofFrey E).space = RhoE13Space.unresolved ∧
      (RhoE13.ofFrey E).residual = rho_E_p E ∧
      (RhoE13.ofFrey E).residual = GaloisRepresentation.unresolved :=
  ⟨rfl, rfl, rfl⟩

/-- Isogeny and twist data over `ℚ(√-1)` linking `E` to its conjugate.

`conjB` is the image of the linear coefficient under `√(-1) ↦ -√(-1)`.
`velu_eq_twist` is `velu_target_eq_twist_neg_two`: the Vélu target of that
conjugate equals the quadratic twist by `-2`. Both sides are the coefficient
pair `(-8 a, 8 a² + 8 b² √(-1))`. There is no scheme morphism.
-/
structure qcurve_extension_169 (E : FreyCurve4413) where
  /-- `σ(B)`, the conjugate of the coefficient of `X`. -/
  conjB : ℤ × ℤ
  /-- `conjB` is `FreyCurve4413.conj_B`. -/
  conjB_eq : conjB = FreyCurve4413.conj_B E
  /-- The 2-isogeny target of the conjugate equals the twist by `-2`. -/
  velu_eq_twist :
    FreyCurve4413.velu_target_A E = FreyCurve4413.twist_neg_two_A E ∧
      FreyCurve4413.velu_target_B E = FreyCurve4413.twist_neg_two_B E

/-- The coefficient extension data of `E`.

The conjugate and the Vélu/twist equality are the theorems
`conj_B` and `velu_target_eq_twist_neg_two`. This is not a term of
`qcurve_extension_169_open`.
-/
def qcurve_extension_169.ofFrey (E : FreyCurve4413) : qcurve_extension_169 E where
  conjB := FreyCurve4413.conj_B E
  conjB_eq := rfl
  velu_eq_twist := FreyCurve4413.velu_target_eq_twist_neg_two E

/-- `ofFrey` stores `conj_B` and `velu_target_eq_twist_neg_two`. -/
theorem qcurve_extension_169.ofFrey_velu (E : FreyCurve4413) :
    (qcurve_extension_169.ofFrey E).conjB = FreyCurve4413.conj_B E ∧
      FreyCurve4413.velu_target_A E = FreyCurve4413.twist_neg_two_A E ∧
      FreyCurve4413.velu_target_B E = FreyCurve4413.twist_neg_two_B E :=
  ⟨rfl, (qcurve_extension_169.ofFrey E).velu_eq_twist⟩

/-- Absolute irreducibility of the mod-`13` residual of `E`.

This proposition is `RhoE13Open`. `RhoE13.ofFrey` does not prove it.
Nothing produces a term: the declaration is `opaque` and has no body.
This is not an axiom.
-/
def rhoE13_irreducible_open (E : FreyCurve4413) : Prop :=
  RhoE13Open E

/-- `rhoE13_irreducible_open` is the inventory proposition `RhoE13Open`. -/
theorem rhoE13_irreducible_open_eq (E : FreyCurve4413) :
    rhoE13_irreducible_open E = RhoE13Open E :=
  rfl

/-- The trace claim for a lift through `GL₂(𝔽₁₆₉)`.

This proposition is `qcurve_extension_169_open`: for a coprime modular curve
with a `RibetLevel`, the Vélu/twist equality and `13 ∤ 2` imply
`13 ∣ freyTrace3 − (−6)`. `qcurve_extension_169.ofFrey` supplies the equality
and does not supply the divisibility. This is not an axiom.
-/
def qcurve_extension_169_cocycle_open : Prop :=
  qcurve_extension_169_open

/-- `qcurve_extension_169_cocycle_open` is `qcurve_extension_169_open`. -/
theorem qcurve_extension_169_cocycle_open_eq :
    qcurve_extension_169_cocycle_open = qcurve_extension_169_open :=
  rfl

/-- What `frey_qcurve_modular` gives about `RhoE13`.

The axiom produces `Modular E`. The residual on `RhoE13.ofFrey` stays
`rho_E_p`, the unresolved marker. The same axiom does not produce
`RhoE13Open`, and the coefficient extension is the separate structure
`qcurve_extension_169`.
-/
def frey_qcurve_modular_on_RhoE13 (a b c : ℤ) (E : FreyCurve4413) : Prop :=
  E.a = a → E.b = b → E.c = c →
    Modular E ∧
      (RhoE13.ofFrey E).residual = GaloisRepresentation.unresolved ∧
      Nonempty (qcurve_extension_169 E)

/-- `frey_qcurve_modular` yields that interface.

Modularity is the axiom. The residual equality is `RhoE13.ofFrey_unresolved`.
The extension witness is `qcurve_extension_169.ofFrey`, which is
`velu_target_eq_twist_neg_two` and not the trace open.
-/
theorem frey_qcurve_modular_on_RhoE13_holds (a b c : ℤ) (E : FreyCurve4413) :
    frey_qcurve_modular_on_RhoE13 a b c E :=
  fun _ha _hb _hc =>
    ⟨frey_qcurve_modular a b c E, rfl, ⟨qcurve_extension_169.ofFrey E⟩⟩

/-- What `ribet_level_lowering_4413` gives about `RhoE13`.

From the conductor shape, a term of `RhoE13Open`, and `pacetti_2_8_open`,
the axiom's `level` field returns a `RibetLevel`, recorded here as
`Nonempty (RibetLevel c E N)`. Its `gkResidual` field is `GkResidualIso`.
The packaged residual stays unresolved. The axiom does not inhabit
`qcurve_extension_169_open`.
-/
def ribet_level_lowering_on_RhoE13 (c : ℤ) (E : FreyCurve4413) (N : ℕ) : Prop :=
  FreyConductorDivides c N →
    RhoE13Open E →
      pacetti_2_8_open →
        Nonempty (RibetLevel c E N) ∧
          GkResidualIso ∧
          (RhoE13.ofFrey E).residual = GaloisRepresentation.unresolved

/-- `ribet_level_lowering_4413` yields that interface.

`level` is `ribetLevelOfAxiom`. `gkResidual` is the second field of the
axiom. The residual conjunct is definitional.
-/
theorem ribet_level_lowering_on_RhoE13_holds (c : ℤ) (E : FreyCurve4413) (N : ℕ) :
    ribet_level_lowering_on_RhoE13 c E N :=
  fun hCond hIrr hPacetti =>
    ⟨⟨ribet_level_lowering_4413.level N hCond hIrr hPacetti⟩,
      ribet_level_lowering_4413.gkResidual, rfl⟩
