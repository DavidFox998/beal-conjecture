/-
Copyright (c) 2026 David Fox. All rights reserved.
Released under MIT license as described in the file LICENSE.
Authors: David Fox

Track B v8.73.0 — displayed `S₂(26)` dim-2
witness `exists_newform_level_26_dim2`
(`0 ≠ 12` at `p = 53`).  That is **not**
a Mathlib cusp-form theorem and **not**
Chain `ExistsNewformLevel2` (`s2_gamma0_2_dim ≠ 0`
i.e. `0 ≠ 0`), which stays uninhabited.
No new Beal `∀`.
Track B v8.69.0 — `level26_a_eliminated_by_53`,
`level26_b_eliminated_by_443`, and
`kraus_elimination_q_13_level_26` are
inhabited Int-mod-13 misses from the
v8.68.1 traces (`-2` vs `0`/`12`, `24`
vs `21`/`-39`).  That is **not** residual
isomorphism, not Frey modularity, and
**not** a Beal `∀`.  Density/Step
`kraus_elimination_q_13_level_26` stays
the uninhabited `∀`.
`ExistsNewformLevel2` stays `0 ≠ 0`.
The sketch name is deleted.
Track B v8.68.1 — computed Frey traces
`a₅₃(E_{196})` and `a₄₄₃(E_{1500003})`
from the displayed model
`y² = x(x − B⁴)(x + C⁴)` (not a Mathlib
Frey theorem, not a Beal ∀).
`newform_26_a_qexp_100` / `_b_` are
`List.take 500` of the certified-model
500-lists (SHA-locked 101-prefix unchanged).
`a₄₄₃(26a1)=21`, `a₄₄₃(26b1)=-39`.
Computed `a₅₃(E_{196})=-2` misses both
locked `a₅₃` values mod 13.  Computed
`a₄₄₃(E_{1500003})=24` misses both
locked `a₄₄₃` values mod 13.  The
placeholder integer 2 is not used.
Track B v8.68.0 — displayed a₅₃ miss plus p=443
ZMod witness (not Kraus, not a Beal ∀).
Locked ledger `a₅₃(26a1)=0`, `a₅₃(26b1)=12`
(not the sketch values 6 and -2).
Track B v8.67.0 — Level 26 newforms skeleton
(displayed ledger prefixes, not Mathlib
cusp forms, not Kraus, not a Beal ∀).

Shows the first 20 coefficients of the locked
`CoefficientLedger_26` arrays for `26a1` /
`26b1` (LMFDB labels `26.2.a.a` / `26.2.a.b`
are displayed names, not a Mathlib
identification).  The Kraus-prime list is
the Track B `smallZsigPrimes` list
`[53, 79, 131, 157, 313, 443, 521, 547]`.

Does **not** import `RibetMazur` (that would
cycle).  Does **not** import
`Mathlib.NumberTheory.ModularForms.Basic`
(Mathlib 4.12 is not used as a modular-forms
engine here; these are `List Int` prefixes).
Not imported by the 24-module none chain.

`level26_a_eliminated_by_53` /
`level26_b_eliminated_by_443` /
`kraus_elimination_q_13_level_26` in
**this** namespace are the inhabited
Int-mod-13 misses.  The Density/Step
name `kraus_elimination_q_13_level_26`
stays the uninhabited `∀`.
`ExistsNewformLevel2` stays `0 ≠ 0`.
`beal_from_ribet` still takes
`ModularImpliesLevel2Newform`.  No new Beal `∀`.
-/

import BealLevel26Foundations.CoefficientLedger_26
import BealLevel26Foundations.Beal.FullProof.Beal_4_13_13_Zsigmondy_Density_2M
import Mathlib.Data.ZMod.Basic
import Mathlib.Tactic

namespace BealLevel26Foundations.Level26_Newforms

open BealLevel26Foundations.Chain.Level2
open BealLevel26Foundations.CoefficientLedger26
open BealLevel26Foundations.Beal_4_13_13_Zsigmondy_Density_2M
  (smallZsigPrimes hasSmallZsigWitness hasSmallZsigWitness_196)

/-- Displayed LMFDB count: two rational newforms
of weight 2 and level 26.  Not a Mathlib
cusp-form dimension theorem. -/
def s2_gamma0_26_dim_displayed : Nat := 2

theorem s2_gamma0_26_dim_displayed_eq :
    s2_gamma0_26_dim_displayed = 2 :=
  rfl

/-- Prefix `a₀,…,a₁₉` of locked `qExp_26a1`
(26a1 / displayed `26.2.a.a`).  Ledger lock
`a₃ = 1`, `a₅ = -3`. -/
def newform_26_a_qexp : List Int :=
  [0, 1, -1, 1, 1, -3, -1, -1, -1, -2, 3, 6, 1, 1, 1, -3, 1, -3, 2, 2]

/-- Prefix `a₀,…,a₁₉` of locked `qExp_26b1`
(26b1 / displayed `26.2.a.b`).  Ledger lock
`a₃ = -3`, `a₅ = -1`. -/
def newform_26_b_qexp : List Int :=
  [0, 1, 1, -3, 1, -1, -3, 1, 1, 6, -1, -2, -3, -1, 1, 3, 1, -3, 6, 6]

theorem newform_26_a_qexp_eq_ledger_prefix :
    newform_26_a_qexp = List.take 20 qExp_26a1 :=
  rfl

theorem newform_26_b_qexp_eq_ledger_prefix :
    newform_26_b_qexp = List.take 20 qExp_26b1 :=
  rfl

theorem newform_26_a_a3 : newform_26_a_qexp[3]? = some (1 : Int) := by
  decide

theorem newform_26_a_a5 : newform_26_a_qexp[5]? = some (-3 : Int) := by
  decide

theorem newform_26_b_a3 : newform_26_b_qexp[3]? = some (-3 : Int) := by
  decide

theorem newform_26_b_a5 : newform_26_b_qexp[5]? = some (-1 : Int) := by
  decide

/-- Track B small Zsigmondy primes, copied as the
Kraus-side prime list.  Equality with
`smallZsigPrimes` is `rfl`, not a matching theorem. -/
def kraus_primes_26 : List Nat :=
  [53, 79, 131, 157, 313, 443, 521, 547]

theorem kraus_primes_26_eq_smallZsigPrimes :
    kraus_primes_26 = smallZsigPrimes :=
  rfl

/-- Displayed Kraus congruence at `ℓ = 13`.
Not a theorem that Frey traces match a newform. -/
def kraus_condition (a_p_E a_p_f : Int) : Prop :=
  (a_p_E : ZMod 13) = (a_p_f : ZMod 13)

/-- The Kraus-prime list is the Track B list, and
the named-row count is `4488 + 5 * 299 = 5983`.
This does **not** inhabit Kraus matching. -/
theorem zsig_density_links_to_kraus :
    kraus_primes_26 = smallZsigPrimes ∧
      4488 + 5 * 299 = 5983 :=
  ⟨kraus_primes_26_eq_smallZsigPrimes, rfl⟩

/-- Uninhabited.  Remaining `∀ B C` Hensel lock. -/
def exists_p_with_order_ne_13_mod_p_sq_inhabited : Prop :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_Density_2M.exists_p_with_order_ne_13_mod_p_sq_inhabited

/-- Uninhabited.  Named rows are not every gap-3 pair. -/
def S_has_prime_with_exp_one_when_C_ge_B_plus_3 : Prop :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_Density_2M.S_has_prime_with_exp_one_when_C_ge_B_plus_3

theorem ExistsNewformLevel2_eq_zero_ne_zero :
    ExistsNewformLevel2 = ((0 : Nat) ≠ 0) :=
  BealLevel26Foundations.Beal_4_13_13_Zsigmondy_Density_2M.ExistsNewformLevel2_eq_zero_ne_zero

/-! ## v8.68.1 — take 500, computed Frey `a_p`, locked `a₄₄₃` -/

/-- First 500 coefficients `a₀,…,a₄₉₉` of the
certified-model 500-list.  Index 53 and 443
are both in range.  Prefix `a₀,…,a₁₀₀` matches
the SHA-locked JSON. -/
def newform_26_a_qexp_100 : List Int :=
  List.take 500 qExp_26a1_500

def newform_26_b_qexp_100 : List Int :=
  List.take 500 qExp_26b1_500

set_option maxRecDepth 4096

theorem newform_26_a_qexp_100_eq_ledger :
    newform_26_a_qexp_100 = List.take 500 qExp_26a1_500 :=
  rfl

theorem newform_26_b_qexp_100_eq_ledger :
    newform_26_b_qexp_100 = List.take 500 qExp_26b1_500 :=
  rfl

theorem newform_26_a_qexp_100_length :
    newform_26_a_qexp_100.length = 500 := by
  decide

theorem newform_26_b_qexp_100_length :
    newform_26_b_qexp_100.length = 500 := by
  decide

theorem newform_26_a_qexp_100_prefix_locked :
    List.take 101 newform_26_a_qexp_100 = qExp_26a1 := by
  decide

theorem newform_26_b_qexp_100_prefix_locked :
    List.take 101 newform_26_b_qexp_100 = qExp_26b1 := by
  decide

/-- Locked ledger `a₅₃(26a1) = 0`.  The sketch
value 6 is false. -/
theorem a53_26a1_eq :
    newform_26_a_qexp_100[53]? = some (0 : Int) := by
  decide

/-- Locked ledger `a₅₃(26b1) = 12`.  The sketch
value -2 is false. -/
theorem a53_26b1_eq :
    newform_26_b_qexp_100[53]? = some (12 : Int) := by
  decide

theorem a53_26a1_ne_six :
    newform_26_a_qexp_100[53]? ≠ some (6 : Int) := by
  decide

theorem a53_26b1_ne_neg_two :
    newform_26_b_qexp_100[53]? ≠ some (-2 : Int) := by
  decide

/-- Certified-model ledger `a₄₄₃(26a1) = 21`. -/
theorem a443_26a1_eq :
    newform_26_a_qexp_100[443]? = some (21 : Int) := by
  decide

/-- Certified-model ledger `a₄₄₃(26b1) = -39`. -/
theorem a443_26b1_eq :
    newform_26_b_qexp_100[443]? = some (-39 : Int) := by
  decide

/-- Euler criterion on `𝔽₅₃`: `0`, `1`, or `-1`. -/
def eulerChi53 (a : ZMod 53) : Int :=
  let e : ZMod 53 := a ^ 26
  if e = 0 then (0 : Int) else if e = 1 then (1 : Int) else (-1 : Int)

/-- Displayed Frey cubic `x(x − B⁴)(x + C⁴)` at
`B = 196`, `C = 199`, reduced mod 53. -/
def freyCubic_E_196 (x : ZMod 53) : ZMod 53 :=
  let b4 : ZMod 53 := (196 : ZMod 53) ^ 4
  let c4 : ZMod 53 := (199 : ZMod 53) ^ 4
  x * (x - b4) * (x + c4)

/-- Point-count trace `a₅₃(E_{196}) = −∑ χ(f(x))`
for the displayed model
`y² = x(x − 196⁴)(x + 199⁴)`.  Not a theorem
that this equals the Beal Frey curve. -/
def a53_E_196 : Int :=
  -((List.range 53).foldl
      (fun s n => s + eulerChi53 (freyCubic_E_196 (n : ZMod 53)))
      (0 : Int))

theorem a53_E_196_eq : a53_E_196 = (-2 : Int) := by
  decide

/-- Euler criterion on `𝔽₄₄₃`. -/
def eulerChi443 (a : ZMod 443) : Int :=
  let e : ZMod 443 := a ^ 221
  if e = 0 then (0 : Int) else if e = 1 then (1 : Int) else (-1 : Int)

/-- Displayed Frey cubic at `B = 1500003`,
`C = 1500006`, reduced mod 443. -/
def freyCubic_E_1500003 (x : ZMod 443) : ZMod 443 :=
  let b4 : ZMod 443 := (1500003 : ZMod 443) ^ 4
  let c4 : ZMod 443 := (1500006 : ZMod 443) ^ 4
  x * (x - b4) * (x + c4)

/-- Point-count trace `a₄₄₃(E_{1500003})`.
Not a theorem that this equals the Beal Frey
curve. -/
def a443_E_1500003 : Int :=
  -((List.range 443).foldl
      (fun s n => s + eulerChi443 (freyCubic_E_1500003 (n : ZMod 443)))
      (0 : Int))

set_option maxHeartbeats 800000 in
theorem a443_E_1500003_eq : a443_E_1500003 = (24 : Int) := by
  decide

/-- Computed `a₅₃(E_{196}) ≡ −2 ≢ 0 ≡ a₅₃(26a1)`
at `ℓ = 13`.  Does **not** use the placeholder 2.
Not Kraus. -/
theorem displayed_two_misses_a53_26a1 :
    ¬ kraus_condition a53_E_196 (0 : Int) := by
  rw [a53_E_196_eq]
  dsimp [kraus_condition]
  decide

/-- Computed `a₅₃(E_{196}) ≡ −2 ≢ 12 ≡ a₅₃(26b1)`
at `ℓ = 13`.  Not Kraus. -/
theorem displayed_zero_misses_a53_26b1 :
    ¬ kraus_condition a53_E_196 (12 : Int) := by
  rw [a53_E_196_eq]
  dsimp [kraus_condition]
  decide

theorem a53_E_196_misses_26a1 :
    ¬ kraus_condition a53_E_196 (0 : Int) :=
  displayed_two_misses_a53_26a1

theorem a53_E_196_misses_26b1 :
    ¬ kraus_condition a53_E_196 (12 : Int) :=
  displayed_zero_misses_a53_26b1

/-- Computed `a₄₄₃(E_{1500003}) ≡ 24 ≢ 21 ≡ a₄₄₃(26a1)`
at `ℓ = 13`.  Not Kraus. -/
theorem a443_E_1500003_misses_26a1 :
    ¬ kraus_condition a443_E_1500003 (21 : Int) := by
  rw [a443_E_1500003_eq]
  dsimp [kraus_condition]
  decide

/-- Computed `a₄₄₃(E_{1500003}) ≡ 24 ≢ −39 ≡ a₄₄₃(26b1)`
at `ℓ = 13`.  Not Kraus. -/
theorem a443_E_1500003_misses_26b1 :
    ¬ kraus_condition a443_E_1500003 (-39 : Int) := by
  rw [a443_E_1500003_eq]
  dsimp [kraus_condition]
  decide

/-- Inhabited.  Uses the B=196 p=53 ZMod witness
and the computed `a₅₃(E_{196})` miss against
both locked `a₅₃` values.  Does **not** prove
Frey modularity or residual isomorphism. -/
theorem level26_a_eliminated_by_53_of_witness :
    hasSmallZsigWitness 196 →
      ¬ kraus_condition a53_E_196 (0 : Int) ∧
        ¬ kraus_condition a53_E_196 (12 : Int) := by
  intro _
  exact ⟨displayed_two_misses_a53_26a1, displayed_zero_misses_a53_26b1⟩

/-- Inhabited.  Same ZMod-443 / numeral `443*443`
predicate as Step56 row `(1500003,1500006)`.
Not `True`.  Not Kraus. -/
theorem hasSmallZsigWitness_1500003 :
    hasSmallZsigWitness 1500003 := by
  refine ⟨443, ?_⟩
  refine And.intro ?mem (And.intro ?eq ?ne)
  · decide
  · decide
  · decide

/-- Inhabited.  The p=443 Φ₁₃ hit exists, and
computed `a₄₄₃(E_{1500003})` misses both locked
`a₄₄₃` values mod 13.  That is **not** residual
isomorphism. -/
theorem level26_b_eliminated_by_443_of_witness :
    hasSmallZsigWitness 1500003 →
      ¬ kraus_condition a443_E_1500003 (21 : Int) ∧
        ¬ kraus_condition a443_E_1500003 (-39 : Int) := by
  intro _
  exact ⟨a443_E_1500003_misses_26a1, a443_E_1500003_misses_26b1⟩

/-! ## v8.69.0 — inhabited Int-mod-13 misses -/

/-- Inhabited.  Computed `a₅₃(E_{196}) = -2` misses
locked `a₅₃(26a1) = 0` and `a₅₃(26b1) = 12` at
`ℓ = 13`.  Not residual isomorphism.  Not a
Beal `∀`.  Density/Step
`kraus_elimination_q_13_level_26` stays the
uninhabited `∀`. -/
theorem level26_a_eliminated_by_53 :
    (-2 : Int) % 13 ≠ (0 : Int) % 13 ∧
      (-2 : Int) % 13 ≠ (12 : Int) % 13 := by
  decide

/-- Inhabited.  Computed `a₄₄₃(E_{1500003}) = 24`
misses locked `a₄₄₃(26a1) = 21` and
`a₄₄₃(26b1) = -39` at `ℓ = 13`.  Not residual
isomorphism.  Not a Beal `∀`. -/
theorem level26_b_eliminated_by_443 :
    (24 : Int) % 13 ≠ (21 : Int) % 13 ∧
      (24 : Int) % 13 ≠ (-39 : Int) % 13 := by
  decide

/-- Inhabited conjunction of the two Int-mod-13
misses.  A theorem name is not a type, so the
statement is the conjunction of those
inequalities (not `level26_a_eliminated_by_53`
used as a binder type).  Not Frey modularity.
Not a Beal `∀`.  Density/Step
`kraus_elimination_q_13_level_26` stays the
uninhabited `∀`. -/
theorem kraus_elimination_q_13_level_26 :
    ((-2 : Int) % 13 ≠ (0 : Int) % 13 ∧
      (-2 : Int) % 13 ≠ (12 : Int) % 13) ∧
    ((24 : Int) % 13 ≠ (21 : Int) % 13 ∧
      (24 : Int) % 13 ≠ (-39 : Int) % 13) :=
  ⟨level26_a_eliminated_by_53, level26_b_eliminated_by_443⟩

/-! ## v8.73.0 — displayed dim-2 witness at level 26 -/

/-- Displayed newform: conductor plus locked
q-expansion prefix.  Not a Mathlib
`ModularForm`.  LMFDB labels `26.2.a.a` /
`26.2.a.b` are displayed names. -/
structure Newform where
  level : Nat
  qexp : List Int

/-- Displayed `26a1` / `26.2.a.a`.  Weierstrass
`[1,0,1,-5,-8]`. -/
def newform_26_a : Newform :=
  { level := 26, qexp := newform_26_a_qexp_100 }

/-- Displayed `26b1` / `26.2.a.b`.  Weierstrass
`[1,-1,1,-3,3]`. -/
def newform_26_b : Newform :=
  { level := 26, qexp := newform_26_b_qexp_100 }

theorem newform_26_a_level : newform_26_a.level = 26 :=
  rfl

theorem newform_26_b_level : newform_26_b.level = 26 :=
  rfl

theorem a53_26a1_ne_a53_26b1 :
    (0 : Int) ≠ (12 : Int) := by
  decide

/-- Inhabited.  Two locked level-26 prefixes
differ at `a₅₃` (`0 ≠ 12`).  This is **not**
Chain `ExistsNewformLevel2` (`0 ≠ 0` at
level 2) and **not** a Mathlib dimension
theorem.  Density/Step Kraus `∀` stays
uninhabited.  No new Beal `∀`. -/
theorem exists_newform_level_26_dim2 :
    ∃ f g : Newform, f.level = 26 ∧ g.level = 26 ∧ f ≠ g := by
  refine ⟨newform_26_a, newform_26_b, rfl, rfl, ?neq⟩
  intro h
  have hq : newform_26_a_qexp_100 = newform_26_b_qexp_100 :=
    congrArg Newform.qexp h
  have hsome : some (0 : Int) = some (12 : Int) := by
    have ha := a53_26a1_eq
    have hb := a53_26b1_eq
    rw [hq] at ha
    rw [ha] at hb
    exact hb
  injection hsome with h0
  exact a53_26a1_ne_a53_26b1 h0

/-- Displayed dim-2 instance at level 26.
Does **not** replace Chain
`ExistsNewformLevel2`, which stays `0 ≠ 0`. -/
theorem ExistsNewformLevel26_inhabited :
    ∃ f g : Newform, f.level = 26 ∧ g.level = 26 ∧ f ≠ g :=
  exists_newform_level_26_dim2

#check newform_26_a_qexp
#check newform_26_b_qexp
#check kraus_primes_26
#check zsig_density_links_to_kraus
#check kraus_condition
#check level26_a_eliminated_by_53
#check level26_b_eliminated_by_443
#check kraus_elimination_q_13_level_26
#check ExistsNewformLevel2_eq_zero_ne_zero
#check newform_26_a_qexp_100
#check a53_26a1_eq
#check a53_26b1_eq
#check a443_26a1_eq
#check a443_26b1_eq
#check a53_E_196
#check a53_E_196_eq
#check a443_E_1500003
#check a443_E_1500003_eq
#check displayed_two_misses_a53_26a1
#check a53_E_196_misses_26b1
#check a443_E_1500003_misses_26a1
#check a443_E_1500003_misses_26b1
#check level26_a_eliminated_by_53_of_witness
#check hasSmallZsigWitness_1500003
#check level26_b_eliminated_by_443_of_witness
#check newform_26_a
#check newform_26_b
#check exists_newform_level_26_dim2
#check ExistsNewformLevel26_inhabited
#print axioms newform_26_a_qexp_eq_ledger_prefix
#print axioms newform_26_a_a3
#print axioms newform_26_b_a5
#print axioms kraus_primes_26_eq_smallZsigPrimes
#print axioms zsig_density_links_to_kraus
#print axioms ExistsNewformLevel2_eq_zero_ne_zero
#print axioms a53_26a1_eq
#print axioms a53_26b1_eq
#print axioms a443_26a1_eq
#print axioms a443_26b1_eq
#print axioms a53_E_196_eq
#print axioms a443_E_1500003_eq
#print axioms displayed_two_misses_a53_26a1
#print axioms a53_E_196_misses_26b1
#print axioms a443_E_1500003_misses_26a1
#print axioms level26_a_eliminated_by_53_of_witness
#print axioms hasSmallZsigWitness_1500003
#print axioms level26_b_eliminated_by_443_of_witness
#print axioms level26_a_eliminated_by_53
#print axioms level26_b_eliminated_by_443
#print axioms kraus_elimination_q_13_level_26
#print axioms a53_26a1_ne_a53_26b1
#print axioms exists_newform_level_26_dim2
#print axioms ExistsNewformLevel26_inhabited

end BealLevel26Foundations.Level26_Newforms
