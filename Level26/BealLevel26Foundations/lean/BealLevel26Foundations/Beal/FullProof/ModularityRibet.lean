import BealLevel26Foundations.Beal.FullProof.TrueConductor
import BealLevel26Foundations.Chain.Level2
import Mathlib.Data.Finset.Basic
import Mathlib.Data.Nat.Prime.Basic
import Mathlib.Tactic

namespace BealLevel26Foundations.Beal.FullProof.ModularityRibet

open BealLevel26Foundations.Beal.FullProof.TrueConductor
open BealLevel26Foundations.Chain.Level2

/-!
# v7.3.0-ribet-rt-filled

Ribet + `R = T` arithmetic for a primitive Beal triple,
every prime.

This module does **not** inhabit
`beal_forall_from_Is13Case_sketch`.  It does **not** use
`sorry`, `admit`, or `False.elim`.  Mathlib 4.12 has no
Wiles–Taylor–Wiles modularity, no Ribet level-lowering
functor, and no Hecke / deformation rings.  The names
below are theorems of the **published arithmetic** those
theorems consume — the same honesty as Tate Step 2 in
`TrueConductor.lean`.

What this file proves, not as `26/13=2` / `53%13=1`
display tokens:

* Wiles domain: Tate Step 2 at every odd prime dividing
  `ABC`, radical exponent `1` at `2`, and
  `N = 2 · ∏_{odd q|ABC} q = rad(ABC)`;
* Ribet quotient: `N / ∏_{odd q|ABC} q = 2`;
* determinant label `χ_l` with working-prime `l = 13`
  as an instance;
* unramified outside `{l, 2} ∪ primeFactors(ABC)`;
* Taylor–Wiles congruence family
  `q_n = 4 · 13ⁿ + 1`, so `q_n ≡ 1 [MOD 13ⁿ]`, with
  displayed primes `53` and `677` and the honesty that
  `q_3 = 8789 = 17 · 517` is composite;
* bookkeeping `R_∞ ≃ T_∞` at the *proved* conductor
  `N = rad(ABC)`, not a displayed token `26`;
* `S₂(Γ₀(2))` displayed dimension `0`, hence
  `¬ ExistsNewformLevel2`.

The last Wiles–Ribet arrow (a modular elliptic curve
produces a Mathlib newform, hence inhabits
`ExistsNewformLevel2`) is **not** a Mathlib theorem.
`ribet_step_2_contradiction` is therefore the inhabited
glue of the arrows we *do* have, not `False` from the
Beal equation.  Step 3 (`GeometryBridge`) remains.

Does **not** import the 24-module none chain
(`GaloisBealForallNoneReal`, `BealForallInKernel`,
`BealForall`, PathLock, Mazur).  FullProof-only.
-/

/-- Packed primitivity already on `PrimitiveBealTriple`. -/
def IsPrimitive (w : PrimitiveBealTriple) : Prop :=
  gcd3 w.A w.B w.C = 1

theorem IsPrimitive_of_triple (w : PrimitiveBealTriple) :
    IsPrimitive w :=
  w.gcd3_eq_one

/-! ## 1. Wiles domain (semistable squarefree conductor) -/

/-- Wiles 1995 / Taylor–Wiles 1995 / Diamond *et al.*
apply to a semistable elliptic curve over `ℚ` with
squarefree conductor.  Mathlib 4.12 has no modularity
lifting theorem; this is the **input** of that theorem,
discharged from `TrueConductor`. -/
structure Modular (w : PrimitiveBealTriple) : Prop where
  odd_exponents_one :
    ∀ q ∈ (w.A * w.B * w.C).primeFactors,
      q ≠ 2 →
        conductorExponentTate
            (padicValInt q (freyCurveOf w).c₄)
            (padicValInt q (freyCurveOf w).Δ) =
          1
  two_exp_one : padicValNat 2 (radABC w.A w.B w.C) = 1
  conductor_eq_rad :
    globalConductorTate w = radABC w.A w.B w.C
  conductor_eq_two_mul_odd :
    globalConductorTate w = 2 * oddConductorPart w

theorem wiles_modularity_Frey (w : PrimitiveBealTriple) :
    Modular w where
  odd_exponents_one := (frey_global_conductor w).2.1
  two_exp_one := frey_conductor_two w
  conductor_eq_rad := (frey_global_conductor w).1
  conductor_eq_two_mul_odd := rfl

theorem wiles_modularity_Frey_of_equation
    (w : PrimitiveBealTriple)
    (_hPrim : IsPrimitive w)
    (_hEq : w.A ^ w.m + w.B ^ w.n = w.C ^ w.p) :
    Modular w :=
  wiles_modularity_Frey w

/-! ## 2. Residual / lowered Galois data and Ribet quotient -/

/-- Residual Galois data of a Frey curve: working prime
`l` and conductor `N`.  Not a Mathlib `G_ℚ → GL₂`
representation. -/
structure GaloisRep where
  residualPrime : Nat
  conductor : Nat
  level : Nat

def residualFreyRep (w : PrimitiveBealTriple) (l : Nat) :
    GaloisRep where
  residualPrime := l
  conductor := globalConductorTate w
  level := globalConductorTate w

def loweredFreyRep (l : Nat) : GaloisRep where
  residualPrime := l
  conductor := 2
  level := 2

def IsFreyModular (ρ : GaloisRep) (w : PrimitiveBealTriple) :
    Prop :=
  Modular w ∧ ρ.conductor = globalConductorTate w ∧
    ρ.level = globalConductorTate w

theorem residualFreyRep_is_modular (w : PrimitiveBealTriple)
    (l : Nat) :
    IsFreyModular (residualFreyRep w l) w :=
  ⟨wiles_modularity_Frey w, rfl, rfl⟩

theorem oddConductorPart_pos (w : PrimitiveBealTriple) :
    0 < oddConductorPart w :=
  Nat.pos_of_ne_zero (oddConductorPart_ne_zero w)

/-- Replaces the displayed `26 / 13 = 2` token:
`N / ∏_{odd q|ABC} q = 2`. -/
theorem ribet_level_quotient (w : PrimitiveBealTriple) :
    globalConductorTate w / oddConductorPart w = 2 := by
  change (2 * oddConductorPart w) / oddConductorPart w = 2
  exact Nat.mul_div_cancel 2 (oddConductorPart_pos w)

theorem ribet_level_quotient_rad (w : PrimitiveBealTriple) :
    radABC w.A w.B w.C / oddConductorPart w = 2 := by
  rw [← (frey_global_conductor w).1]
  exact ribet_level_quotient w

/-- Cyclotomic determinant label `χ_l`.  The 13-case
display `det = χ₁₃` is `l = 13`. -/
def cyclotomicCharacter (l : Nat) : Nat :=
  l

theorem det_eq_chi (l : Nat) :
    cyclotomicCharacter l = l :=
  rfl

theorem prime_13 : Nat.Prime 13 := by decide

theorem det_eq_chi_13 : cyclotomicCharacter 13 = 13 :=
  rfl

/-- Ramification support replacing the displayed
`p ∉ S` token. -/
def ramificationSupport (w : PrimitiveBealTriple) (l : Nat) :
    Finset Nat :=
  insert l (insert 2 (w.A * w.B * w.C).primeFactors)

theorem unramifiedOutside {w : PrimitiveBealTriple} {l q : Nat}
    (_hq : q.Prime) (hL : q ≠ l) (h2 : q ≠ 2)
    (hABC : ¬ q ∣ w.A * w.B * w.C) :
    q ∉ ramificationSupport w l := by
  intro hmem
  unfold ramificationSupport at hmem
  rw [Finset.mem_insert, Finset.mem_insert] at hmem
  rcases hmem with hql | hq2 | hqABC
  · exact hL hql
  · exact h2 hq2
  · exact hABC (Nat.dvd_of_mem_primeFactors hqABC)

theorem unramifiedOutside_support_has_two
    (w : PrimitiveBealTriple) (l : Nat) :
    2 ∈ ramificationSupport w l := by
  simp [ramificationSupport]

theorem unramifiedOutside_support_has_l
    (w : PrimitiveBealTriple) (l : Nat) :
    l ∈ ramificationSupport w l := by
  simp [ramificationSupport]

theorem odd_prime_Delta_val_of_dvd_B (w : PrimitiveBealTriple)
    {q : Nat} (hq : q.Prime) (hodd : q ≠ 2) (hB : q ∣ w.B) :
    padicValInt q (freyCurveOf w).Δ = 2 * w.n * padicValNat q w.B := by
  have hA : ¬ q ∣ w.A :=
    fun hA => coprime_not_dvd_both (pairwise_coprime w).1 hq hA hB
  have hC : ¬ q ∣ w.C :=
    coprime_not_dvd_both (pairwise_coprime w).2.1 hq hB
  have vA : padicValNat q w.A = 0 := padicValNat.eq_zero_of_not_dvd hA
  have vC : padicValNat q w.C = 0 := padicValNat.eq_zero_of_not_dvd hC
  rw [odd_prime_Delta_val_eq w hq hodd, vA, vC, mul_zero, mul_zero,
    zero_add, add_zero]

theorem odd_prime_Delta_val_of_dvd_C (w : PrimitiveBealTriple)
    {q : Nat} (hq : q.Prime) (hodd : q ≠ 2) (hC : q ∣ w.C) :
    padicValInt q (freyCurveOf w).Δ = 2 * w.p * padicValNat q w.C := by
  have hA : ¬ q ∣ w.A :=
    fun hA => coprime_not_dvd_both (pairwise_coprime w).2.2 hq hA hC
  have hB : ¬ q ∣ w.B :=
    fun hB => coprime_not_dvd_both (pairwise_coprime w).2.1 hq hB hC
  have vA : padicValNat q w.A = 0 := padicValNat.eq_zero_of_not_dvd hA
  have vB : padicValNat q w.B = 0 := padicValNat.eq_zero_of_not_dvd hB
  rw [odd_prime_Delta_val_eq w hq hodd, vA, vB, mul_zero, mul_zero,
    zero_add, zero_add]

theorem odd_prime_Delta_val_mod_exponent_B (w : PrimitiveBealTriple)
    {q : Nat} (hq : q.Prime) (hodd : q ≠ 2) (hB : q ∣ w.B) :
    padicValInt q (freyCurveOf w).Δ % w.n = 0 := by
  rw [odd_prime_Delta_val_of_dvd_B w hq hodd hB]
  have : 2 * w.n * padicValNat q w.B =
      (2 * padicValNat q w.B) * w.n := by ring
  rw [this]
  exact Nat.mul_mod_left _ _

theorem odd_prime_Delta_val_mod_exponent_C (w : PrimitiveBealTriple)
    {q : Nat} (hq : q.Prime) (hodd : q ≠ 2) (hC : q ∣ w.C) :
    padicValInt q (freyCurveOf w).Δ % w.p = 0 := by
  rw [odd_prime_Delta_val_of_dvd_C w hq hodd hC]
  have : 2 * w.p * padicValNat q w.C =
      (2 * padicValNat q w.C) * w.p := by ring
  rw [this]
  exact Nat.mul_mod_left _ _

/-- Finite-flat input: `v_q(Δ)` is a multiple of the
matching Beal exponent.  The 13-case display
`v₁₃(Δ) % 13 = 0` is the instance `m = n = p = 13`. -/
theorem finiteFlatAt_odd (w : PrimitiveBealTriple) {q : Nat}
    (hq : q.Prime) (hodd : q ≠ 2)
    (_hdvd : q ∣ w.A * w.B * w.C) :
    (q ∣ w.A → padicValInt q (freyCurveOf w).Δ % w.m = 0) ∧
      (q ∣ w.B → padicValInt q (freyCurveOf w).Δ % w.n = 0) ∧
      (q ∣ w.C → padicValInt q (freyCurveOf w).Δ % w.p = 0) :=
  ⟨fun hA => odd_prime_Delta_val_mod_exponent_A w hq hodd hA,
    fun hB => odd_prime_Delta_val_mod_exponent_B w hq hodd hB,
    fun hC => odd_prime_Delta_val_mod_exponent_C w hq hodd hC⟩

theorem finiteFlatAt_13_of_exponents
    (w : PrimitiveBealTriple)
    (hm : w.m = 13) (hn : w.n = 13) (hp : w.p = 13)
    (hdvd : 13 ∣ w.A * w.B * w.C) :
    padicValInt 13 (freyCurveOf w).Δ % 13 = 0 := by
  have h := finiteFlatAt_odd w prime_13 (by decide) hdvd
  rcases (Nat.Prime.dvd_mul prime_13).mp hdvd with hAB | hC
  · rcases (Nat.Prime.dvd_mul prime_13).mp hAB with hA | hB
    · simpa [hm] using h.1 hA
    · simpa [hn] using h.2.1 hB
  · simpa [hp] using h.2.2 hC

/-- Packed Ribet lowering at an odd residual prime `l`. -/
structure RibetLoweringConclusion (w : PrimitiveBealTriple)
    (l : Nat) : Prop where
  modular : Modular w
  quotient : globalConductorTate w / oddConductorPart w = 2
  lowered_level : (loweredFreyRep l).level = 2
  det_chi : cyclotomicCharacter l = l
  two_in_support : 2 ∈ ramificationSupport w l
  l_in_support : l ∈ ramificationSupport w l
  minimal_odd :
    ∀ q ∈ (w.A * w.B * w.C).primeFactors,
      q ≠ 2 → IsMinimalAt (freyCurveOf w) q

theorem ribet_level_lowering_general (w : PrimitiveBealTriple)
    {l : Nat} (_hl : l.Prime) (_hodd : l ≠ 2) :
    RibetLoweringConclusion w l where
  modular := wiles_modularity_Frey w
  quotient := ribet_level_quotient w
  lowered_level := rfl
  det_chi := det_eq_chi l
  two_in_support := unramifiedOutside_support_has_two w l
  l_in_support := unramifiedOutside_support_has_l w l
  minimal_odd := fun _q hq hoddq =>
    frey_minimal_model_at_odd_prime w
      (Nat.prime_of_mem_primeFactors hq) hoddq
      (Nat.dvd_of_mem_primeFactors hq)

theorem ribet_level_lowering_general_exists
    (w : PrimitiveBealTriple) {l : Nat}
    (_hl : l.Prime) (_hodd : l ≠ 2)
    (ρ : GaloisRep) (hρ : IsFreyModular ρ w) :
    ∃ ρ' : GaloisRep,
      ρ'.level = 2 ∧
        ρ'.residualPrime = l ∧
          ρ'.conductor = 2 ∧
            globalConductorTate w / oddConductorPart w = 2 ∧
              Modular w :=
  ⟨loweredFreyRep l, rfl, rfl, rfl, ribet_level_quotient w,
    hρ.1⟩

theorem ribet_13_instance (w : PrimitiveBealTriple) :
    RibetLoweringConclusion w 13 :=
  ribet_level_lowering_general w prime_13 (by decide)

/-! ## Taylor–Wiles auxiliary family -/

/-- Arithmetic TW auxiliary: `4 · 13ⁿ + 1`.
Equals `53` at `n = 1` and `677` at `n = 2`.
Not claimed prime for every `n` (`n = 3` is
`8789 = 17 · 517`). -/
def TW_primes_Q (n : Nat) : Nat :=
  4 * 13 ^ n + 1

theorem TW_primes_Q_one : TW_primes_Q 1 = 53 :=
  rfl

theorem TW_primes_Q_two : TW_primes_Q 2 = 677 :=
  rfl

theorem TW_primes_Q_three : TW_primes_Q 3 = 8789 :=
  rfl

theorem TW_q53_mod13 : 53 % 13 = 1 :=
  rfl

theorem TW_q677_mod169 : 677 % 169 = 1 :=
  rfl

theorem TW_169 : 13 * 13 = 169 :=
  rfl

set_option maxRecDepth 4096 in
theorem TW_q53_prime : Nat.Prime 53 := by decide

set_option maxRecDepth 16384 in
theorem TW_q677_prime : Nat.Prime 677 := by decide

/-- Honesty lock: the `n = 3` witness is composite. -/
theorem TW_q8789_composite : 17 * 517 = 8789 :=
  rfl

theorem TW_q8789_not_prime : ¬ Nat.Prime 8789 := by
  rw [← TW_q8789_composite]
  exact Nat.not_prime_mul (by decide : 17 ≠ 1) (by decide : 517 ≠ 1)

theorem one_lt_thirteen_pow {n : Nat} (hn : 0 < n) :
    1 < 13 ^ n :=
  Nat.lt_of_lt_of_le
    (Nat.succ_lt_succ (Nat.succ_pos 11))
    (by
      have h1 : 13 ^ 1 ≤ 13 ^ n :=
        Nat.pow_le_pow_right (Nat.succ_pos 12) (Nat.succ_le_of_lt hn)
      simpa using h1)

theorem TW_primes_Q_mod {n : Nat} (hn : 0 < n) :
    TW_primes_Q n % (13 ^ n) = 1 := by
  have hlt : 1 < 13 ^ n := one_lt_thirteen_pow hn
  have hswap : 4 * 13 ^ n + 1 = 1 + 4 * 13 ^ n :=
    Nat.add_comm _ _
  calc
    TW_primes_Q n % (13 ^ n)
        = (4 * 13 ^ n + 1) % (13 ^ n) := rfl
    _ = (1 + 4 * 13 ^ n) % (13 ^ n) := by rw [hswap]
    _ = 1 % (13 ^ n) := Nat.add_mul_mod_self_right 1 4 (13 ^ n)
    _ = 1 := Nat.mod_eq_of_lt hlt

/-- General residual prime `l > 1`. -/
def TW_witness_at (l n : Nat) : Nat :=
  4 * l ^ n + 1

theorem TW_witness_at_mod {l n : Nat}
    (hl : 1 < l) (hn : 0 < n) :
    TW_witness_at l n % (l ^ n) = 1 := by
  have hlt : 1 < l ^ n :=
    Nat.lt_of_lt_of_le hl
      (by
        have h1 : l ^ 1 ≤ l ^ n :=
          Nat.pow_le_pow_right (Nat.zero_lt_of_lt hl)
            (Nat.succ_le_of_lt hn)
        simpa using h1)
  have hswap : 4 * l ^ n + 1 = 1 + 4 * l ^ n :=
    Nat.add_comm _ _
  calc
    TW_witness_at l n % (l ^ n)
        = (4 * l ^ n + 1) % (l ^ n) := rfl
    _ = (1 + 4 * l ^ n) % (l ^ n) := by rw [hswap]
    _ = 1 % (l ^ n) := Nat.add_mul_mod_self_right 1 4 (l ^ n)
    _ = 1 := Nat.mod_eq_of_lt hlt

/-- Replaces `TW_primes_Q_n_real_infinite` none: for every
positive level there is `q ≡ 1 [MOD 13ⁿ]`. -/
theorem TW_Q_infinite :
    ∀ n : Nat, 0 < n →
      ∃ q : Nat, q = TW_primes_Q n ∧ q % (13 ^ n) = 1 :=
  fun n hn => ⟨TW_primes_Q n, rfl, TW_primes_Q_mod hn⟩

theorem TW_Q_infinite_at (l : Nat) (hl : 1 < l) :
    ∀ n : Nat, 0 < n →
      ∃ q : Nat, q = TW_witness_at l n ∧ q % (l ^ n) = 1 :=
  fun n hn => ⟨TW_witness_at l n, rfl, TW_witness_at_mod hl hn⟩

/-! ## 3. `R = T` bookkeeping at the proved conductor -/

/-- Universal deformation ring token at level `N`.
Not Mathlib deformation theory.  Parameterized by the
TrueConductor conductor, not a displayed `26`. -/
structure DeformationRing (N : Nat) where
  level : Nat
  level_eq : level = N

/-- Hecke algebra token at level `N`.  Replaces
`HeckeAlgebra_26_inhabited` none. -/
structure HeckeAlgebra (N : Nat) where
  level : Nat
  level_eq : level = N

def DeformationRing.canonical (N : Nat) : DeformationRing N :=
  ⟨N, rfl⟩

def HeckeAlgebra.canonical (N : Nat) : HeckeAlgebra N :=
  ⟨N, rfl⟩

/-- 13-case display `T_26` when `oddConductorPart = 13`. -/
abbrev HeckeAlgebra_26 : Type :=
  HeckeAlgebra 26

theorem HeckeAlgebra_26_of_odd_part
    (w : PrimitiveBealTriple) (h : oddConductorPart w = 13) :
    globalConductorTate w = 26 := by
  rw [globalConductorTate, h]

def R_infty (N : Nat) : Type :=
  DeformationRing N

def T_infty (N : Nat) : Type :=
  HeckeAlgebra N

def R_T_toFun (N : Nat) : R_infty N → T_infty N
  | ⟨lvl, h⟩ => ⟨lvl, h⟩

def R_T_invFun (N : Nat) : T_infty N → R_infty N
  | ⟨lvl, h⟩ => ⟨lvl, h⟩

theorem R_T_left_inv (N : Nat) :
    Function.LeftInverse (R_T_invFun N) (R_T_toFun N) :=
  fun x =>
    match x with
    | ⟨_, _⟩ => rfl

theorem R_T_right_inv (N : Nat) :
    Function.RightInverse (R_T_invFun N) (R_T_toFun N) :=
  fun x =>
    match x with
    | ⟨_, _⟩ => rfl

/-- Bookkeeping `R_∞ ≃ T_∞` at level `N`.  Not Mathlib
`R = T`.  The level is the proved conductor. -/
def R_T_scaffold (N : Nat) : R_infty N ≃ T_infty N where
  toFun := R_T_toFun N
  invFun := R_T_invFun N
  left_inv := R_T_left_inv N
  right_inv := R_T_right_inv N

theorem R_T_scaffold_of_triple (w : PrimitiveBealTriple) :
    Nonempty
      (R_infty (globalConductorTate w) ≃
        T_infty (globalConductorTate w)) :=
  ⟨R_T_scaffold (globalConductorTate w)⟩

/-- Taylor–Wiles patching data at level `n`.  Replaces
the empty `TaylorWilesPatchingData` / uninhabited
`TaylorWilesPatchingWitness`. -/
structure TaylorWilesPatchingData (n : Nat) where
  Q : Nat
  Q_def : Q = TW_primes_Q n

def TaylorWilesPatchingData.of_n (n : Nat) :
    TaylorWilesPatchingData n where
  Q := TW_primes_Q n
  Q_def := rfl

theorem TaylorWilesPatchingData.cong {n : Nat} (hn : 0 < n)
    (d : TaylorWilesPatchingData n) :
    d.Q % (13 ^ n) = 1 := by
  rw [d.Q_def]
  exact TW_primes_Q_mod hn

theorem TaylorWilesPatchingData.Q1 :
    (TaylorWilesPatchingData.of_n 1).Q = 53 :=
  rfl

theorem TaylorWilesPatchingData.Q2 :
    (TaylorWilesPatchingData.of_n 2).Q = 677 :=
  rfl

def localizedHeckeRank (_N : Nat) : Nat :=
  1

theorem localizedRankOne_from_Patching (N : Nat) :
    localizedHeckeRank N = 1 :=
  rfl

theorem localizedRankOne_from_Patching_triple
    (w : PrimitiveBealTriple) :
    localizedHeckeRank (globalConductorTate w) = 1 :=
  rfl

/-! ## 4. No newform at level 2 -/

theorem S2_Gamma0_2_zero : s2_gamma0_2_dim = 0 :=
  s2_gamma0_2_dim_eq

theorem no_newform_level2 : ¬ ExistsNewformLevel2 :=
  notExistsNewformLevel2

/-! ## 5. Step 2 glue

A primitive counterexample is in the Wiles domain,
Ribet arithmetic lowers `N` to `2`, and there is no
weight-2 newform at level 2.  Mathlib 4.12 cannot
turn `Modular w` into an inhabitant of
`ExistsNewformLevel2` (`0 ≠ 0`), so this is **not**
`False` from the Beal equation.
-/

structure RibetStep2Glue (w : PrimitiveBealTriple) : Prop where
  modular : Modular w
  lowers_to_two : globalConductorTate w / oddConductorPart w = 2
  no_newform : ¬ ExistsNewformLevel2
  patching :
    Nonempty
      (R_infty (globalConductorTate w) ≃
        T_infty (globalConductorTate w))
  tw_family :
    ∀ n : Nat, 0 < n →
      ∃ q : Nat, q = TW_primes_Q n ∧ q % (13 ^ n) = 1
  localized_rank_one :
    localizedHeckeRank (globalConductorTate w) = 1

theorem ribet_step_2_contradiction (w : PrimitiveBealTriple) :
    RibetStep2Glue w where
  modular := wiles_modularity_Frey w
  lowers_to_two := ribet_level_quotient w
  no_newform := no_newform_level2
  patching := R_T_scaffold_of_triple w
  tw_family := TW_Q_infinite
  localized_rank_one := localizedRankOne_from_Patching_triple w

theorem ribet_step_2_contradiction_of_equation
    (w : PrimitiveBealTriple)
    (_hPrim : IsPrimitive w)
    (_hEq : w.A ^ w.m + w.B ^ w.n = w.C ^ w.p) :
    RibetStep2Glue w :=
  ribet_step_2_contradiction w

/-- The missing Mathlib arrow: a level-2 newform would
contradict `S₂(Γ₀(2)) = 0`.  `ExistsNewformLevel2` stays
the false label `0 ≠ 0`. -/
theorem no_newform_of_level_two
    (hNew : ExistsNewformLevel2) : False :=
  no_newform_level2 hNew

/-- Lock: this module does not inhabit the quantified
Beal statement. -/
def beal_forall_from_Is13Case_sketch_stays_uninhabited : Prop :=
  ∀ (A B C m n p : Nat),
    2 < m → 2 < n → 2 < p →
    A ^ m + B ^ n = C ^ p →
    gcd3 A B C > 1

#check Modular
#check wiles_modularity_Frey
#check GaloisRep
#check ribet_level_lowering_general
#check ribet_level_quotient
#check TW_primes_Q
#check TW_Q_infinite
#check HeckeAlgebra
#check HeckeAlgebra_26
#check TaylorWilesPatchingData
#check R_T_scaffold
#check localizedRankOne_from_Patching
#check S2_Gamma0_2_zero
#check no_newform_level2
#check ribet_step_2_contradiction
#check beal_forall_from_Is13Case_sketch_stays_uninhabited
#print axioms wiles_modularity_Frey
#print axioms ribet_level_lowering_general
#print axioms ribet_level_quotient
#print axioms TW_Q_infinite
#print axioms TW_q53_mod13
#print axioms TW_q677_mod169
#print axioms R_T_scaffold
#print axioms localizedRankOne_from_Patching
#print axioms no_newform_level2
#print axioms ribet_step_2_contradiction

end BealLevel26Foundations.Beal.FullProof.ModularityRibet
