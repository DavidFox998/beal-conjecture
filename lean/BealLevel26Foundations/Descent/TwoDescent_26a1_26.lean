import BealLevel26Foundations.Descent.EllipticCurve_26a1_26b1_26
import BealLevel26Foundations.Certs.LMFDBCert_26
import Mathlib.Tactic

namespace BealLevel26Foundations.Descent.TwoDescent26

open BealLevel26Foundations.Descent.EC26
open BealLevel26Foundations.Certs.LMFDBCert26

/-!
# v4.1.1 displayed 2-descent / Selmer-bound names

Blueprint: a genuine 2-descent computes `E(ℚ)/2E(ℚ)` from 2-coverings
`C_d : d w² = f(x)`.  For `26a1` the full 2-torsion is not rational,
so 2-isogeny descent is unavailable.

`TorsionOrder_26a1` / `TorsionOrder_26b1` are the torsion orders `3`
and `7` (`Z/3Z`, `Z/7Z`).  They are not `|Sel₂|`.

`SelmerBound_26a1` / `SelmerBound_26b1` are the displayed `|Sel₂| = 1`
from `Certs/Descent_26.json` (PARI `ellrank` bounds `[0,0]` and empty
`ell2cover`, SHA-256
`d9d907f6cf29e9a90731184f082d430d33128f0f857e6a8124a1eef0b8e39260`).
That is computational 2-descent, not a Mathlib `SelmerGroup`.  Not a
Selmer group.  Not a two-descent.

`TwoCoverings_*` remain the displayed LMFDB rows, not homogeneous
spaces.

The frozen v1.4.0 ledger SHA-256
`0259fe957cc348b7286e233ce717fac47c30ad174b05e8e1c5fb70626f511151`
is unchanged.
-/

/-- Displayed LMFDB `26.a1` row.  Not a two-descent covering. -/
def TwoCoverings_26a1_finitePackage : Prop := LMFDB_26a1_rankZero

/-- Displayed LMFDB `26.b1` row.  Not a two-descent covering. -/
def TwoCoverings_26b1_finitePackage : Prop := LMFDB_26b1_rankZero

/-- Displayed torsion order for `26a1` (`Z/3Z`).  Not `|Sel₂|`. -/
def TorsionOrder_26a1 : ℕ := 3

/-- Displayed torsion order for `26b1` (`Z/7Z`).  Not `|Sel₂|`. -/
def TorsionOrder_26b1 : ℕ := 7

/-- Displayed `|Sel₂|` from PARI `ellrank` / empty `ell2cover` on
`26a1`.  Not a Selmer group.  Mathlib 4.12 has no `SelmerGroup`. -/
def SelmerBound_26a1 : ℕ := 1

/-- Displayed `|Sel₂|` from PARI `ellrank` / empty `ell2cover` on
`26b1`.  Not a Selmer group. -/
def SelmerBound_26b1 : ℕ := 1

theorem TorsionOrder_26a1_certified : TorsionOrder_26a1 = 3 := rfl
theorem TorsionOrder_26b1_certified : TorsionOrder_26b1 = 7 := rfl
theorem SelmerBound_26a1_certified : SelmerBound_26a1 = 1 := rfl
theorem SelmerBound_26b1_certified : SelmerBound_26b1 = 1 := rfl

theorem TwoCoverings_26a1_is_displayed_LMFDB :
    TwoCoverings_26a1_finitePackage = LMFDB_26a1_rankZero :=
  rfl

theorem TwoCoverings_26b1_is_displayed_LMFDB :
    TwoCoverings_26b1_finitePackage = LMFDB_26b1_rankZero :=
  rfl

/-- Torsion orders stay `3` / `7`; `|Sel₂|` is the displayed `1`. -/
theorem SelmerBound_26a1_is_not_torsion_order :
    lmfdb26a1.torsion = "Z/3Z" ∧
      TorsionOrder_26a1 = 3 ∧
      SelmerBound_26a1 = 1 :=
  ⟨rfl, rfl, rfl⟩

theorem SelmerBound_26b1_is_not_torsion_order :
    lmfdb26b1.torsion = "Z/7Z" ∧
      TorsionOrder_26b1 = 7 ∧
      SelmerBound_26b1 = 1 :=
  ⟨rfl, rfl, rfl⟩

theorem SelmerBound_26a1_on_certified_conductor :
    EC_26a1_conductor = 26 ∧ SelmerBound_26a1 = 1 :=
  ⟨rfl, rfl⟩

theorem SelmerBound_26b1_on_certified_conductor :
    EC_26b1_conductor = 26 ∧ SelmerBound_26b1 = 1 :=
  ⟨rfl, rfl⟩

#print axioms SelmerBound_26a1_certified
#print axioms SelmerBound_26b1_certified

end BealLevel26Foundations.Descent.TwoDescent26
