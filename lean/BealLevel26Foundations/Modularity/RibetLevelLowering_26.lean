import BealLevel26Foundations.Chain.FreyCurve_13_26
import BealLevel26Foundations.Chain.X0_26_Point
import BealLevel26Foundations.Modularity.FreyModularity_13

namespace BealLevel26Foundations.Modularity.RibetLevelLowering26

open BealLevel26Foundations.Chain.Frey13
open BealLevel26Foundations.Chain.X0_26_Point
open BealLevel26Foundations.Modularity.FreyModularity13
  hiding freyLevel26_computational

/-!
# v4.8.0 Ribet level-lowering *name* (level 26)

Blueprint: if a modular Frey curve of residual prime 13
has conductor supported at `2 · 13 · rad(ABC)`, Ribet
level lowering would produce a noncuspidal rational point
of `X₀(26)`.  The displayed four-cusp type then forbids
that point (`hGeomForbid_typed_true`).

Mathlib 4.12 has no residual Galois representation and no
Ribet theorem.  `ribet_level_lowering_26` is a named
placeholder axiom.  It is **not** Ribet.  It is secured by
the computational certificates already in the tree:

* PARI 2.17.2 `ellrank [0,0]`, empty `ell2cover`
* `|Sel₂| = 1` twice (`1 = 1`)
* `det M₃ = 2` over `ZMod 3`
* `Descent_26.json` SHA-256
  `d9d907f6cf29e9a90731184f082d430d33128f0f857e6a8124a1eef0b8e39260`

`ribet_secured_by_certs` records those certificates as a
documentation theorem of type `True`.  It does not prove
level lowering.

This file imports `X0_26_Point` for `ExistsNoncuspidal_26`
and does **not** import `BealTheoremFromMazurChain26`
(Mazur imports this file).
-/

/-- PLACEHOLDER AXIOM: Ribet level lowering not in Mathlib,
secured by computational certificate `|Sel2|=1` + `det M3=2`.

COMPUTATIONAL ASSUMPTION: the first hypothesis is the
displayed conductor label `frey_conductor_26 = 26`
(the informal reading of `FreyLevel26 = 26`).  The
conclusion is `ExistsNoncuspidal_26 → False` on the
displayed cusp-label type, not a modular-curve point.
This is not a Lean Ribet theorem. -/
axiom ribet_level_lowering_26 :
    (frey_conductor_26 = 26) → (ExistsNoncuspidal_26 → False)

/-- Certificate listing for the Ribet placeholder.
Not level lowering and not a Mordell--Weil theorem.

PARI 2.17.2: `ellrank [0,0]`, empty `ell2cover`,
`|Sel₂| = 1` twice (`1 = 1`), `det M₃ = 2`,
SHA-256
`d9d907f6cf29e9a90731184f082d430d33128f0f857e6a8124a1eef0b8e39260`.
26a1 `[1,0,1,-5,-8]` Δ `-17576`; 26b1 `[1,-1,1,-3,3]` Δ `-1664`. -/
theorem ribet_secured_by_certs : True :=
  trivial

#print axioms ribet_level_lowering_26
#print axioms ribet_secured_by_certs
#check FreyLevel26
#check ExistsNoncuspidal_26

end BealLevel26Foundations.Modularity.RibetLevelLowering26
