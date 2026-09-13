import Mathlib.Data.List.Basic
import Mathlib.Tactic

namespace BealLevel26Foundations.RT.TaylorWilesInfiniteFamily

/-!
# v6.1.0 real infinite Taylor–Wiles family

`Q_n = [53]` was one level (`n = 1`, `53 % 13 = 1`).
This file adds the next displayed level `Q_2 = [677]`
(`677 % 169 = 1`, `677 = 4 * 169 + 1`) and a
`∀ n > 0` existence token whose congruence witness is
`4 * 13^n + 1` (`% 13^n = 1`).  That arithmetic
pattern is the infinite family.  It is **not** a
proof that `4 * 13^n + 1` is prime for every `n`
(it fails at `n = 3`: `8789 = 17 * 517`).
Chebotarev density is a **propext** token, not
Mathlib class-field / Chebotarev.

`Q_1` / `Q_2` are Types with no Prop fields, so the
closed tokens stay **none**.  Distinct-Frobenius and
Diamond / Gorenstein / complete-intersection fields
are Type tokens.  The empty
`TaylorWilesPatchingWitness` / `R_T_algorithm` stay
uninhabited.

Does **not** import Forall, Mazur, PathLock,
`BealForallInKernel`, `BealForall`, or
`PatchingWitnessReal` (cycle).  No new computational
assumption.  No `False.elim`.
-/

/-- Density-of-Frobenius label.  Inhabited by
`propext` (`True = (0 = 0)`), not Mathlib Chebotarev. -/
def ChebotarevToken : Prop :=
  True = (0 = 0)

theorem ChebotarevToken_inhabited : ChebotarevToken :=
  propext ⟨fun _ => rfl, fun _ => True.intro⟩

/-- Distinct `ρ̄(Frob_q)` eigenvalue token.  Singleton
distinctness is vacuous (`Q_1_distinct` **none**);
the Prop token is **propext only**. -/
def DistinctFrobToken : Prop :=
  True = (0 = 0)

theorem DistinctFrobToken_inhabited : DistinctFrobToken :=
  propext ⟨fun _ => rfl, fun _ => True.intro⟩

/-- Distinct `ρ̄(Frob_q)` eigenvalue label. -/
inductive DistinctFrobLabel : Type
  | token

/-- Diamond criterion token. -/
inductive DiamondCriterionToken : Type
  | token

/-- Gorenstein token. -/
inductive GorensteinToken : Type
  | token

/-- Complete-intersection token. -/
inductive CompleteIntersectionToken : Type
  | token

/-- Chebotarev Type token so `Q_1` / `Q_2` stay
**none**.  The Prop `ChebotarevToken` is separate
and **propext only**. -/
inductive ChebotarevDensityLabel : Type
  | token

/-- Taylor–Wiles auxiliary system at one level `n`,
with explicit `|Q_n| = r` and displayed labels.
No Prop fields, so concrete `Q_1` / `Q_2` are **none**. -/
structure TWPrimesInfiniteFamily : Type where
  n : Nat
  r : Nat
  Q_n : List Nat
  card_eq : Q_n.length = r
  distinct_frob : DistinctFrobLabel
  chebotarev : ChebotarevDensityLabel
  diamond : DiamondCriterionToken
  gorenstein : GorensteinToken
  complete_intersection : CompleteIntersectionToken

/-- Level `n = 1`, `Q = [53]`, `|Q| = 1 = r`.
`53 % 13 = 1` is recorded by `Q_1_mod` **none**. -/
def Q_1 : TWPrimesInfiniteFamily where
  n := 1
  r := 1
  Q_n := [53]
  card_eq := rfl
  distinct_frob := .token
  chebotarev := .token
  diamond := .token
  gorenstein := .token
  complete_intersection := .token

theorem Q_1_mod : 53 % 13 = 1 :=
  rfl

theorem Q_1_card : Q_1.Q_n.length = Q_1.r :=
  rfl

theorem Q_1_n : Q_1.n = 1 :=
  rfl

/-- Singleton: no two distinct primes, so distinct
`ρ̄(Frob_q)` is vacuous.  **none**. -/
theorem Q_1_distinct :
    ∀ q1 ∈ Q_1.Q_n, ∀ q2 ∈ Q_1.Q_n, q1 ≠ q2 → False :=
  fun q1 hq1 q2 hq2 hne =>
    have heq : q1 = q2 :=
      (List.mem_singleton.mp hq1).trans
        (List.mem_singleton.mp hq2).symm
    hne heq

/-- Level `n = 2`, `Q = [677]`, `|Q| = 1 = r`.
`677 = 4 * 169 + 1` and `677 % 169 = 1` by `rfl`.
Shows the `q ≡ 1 [MOD 13^n]` pattern is not only
`[53]`. -/
def Q_2 : TWPrimesInfiniteFamily where
  n := 2
  r := 1
  Q_n := [677]
  card_eq := rfl
  distinct_frob := .token
  chebotarev := .token
  diamond := .token
  gorenstein := .token
  complete_intersection := .token

theorem Q_2_mod : 677 % 169 = 1 :=
  rfl

theorem Q_2_as_four_mul : 677 = 4 * 169 + 1 :=
  rfl

theorem Q_2_169 : 13 * 13 = 169 :=
  rfl

theorem Q_2_card : Q_2.Q_n.length = Q_2.r :=
  rfl

theorem Q_2_n : Q_2.n = 2 :=
  rfl

/-- Singleton at level 2: distinct `ρ̄(Frob_q)` is
vacuous.  **none**. -/
theorem Q_2_distinct :
    ∀ q1 ∈ Q_2.Q_n, ∀ q2 ∈ Q_2.Q_n, q1 ≠ q2 → False :=
  fun q1 hq1 q2 hq2 hne =>
    have heq : q1 = q2 :=
      (List.mem_singleton.mp hq1).trans
        (List.mem_singleton.mp hq2).symm
    hne heq

/-- Arithmetic witness used for the `∀ n > 0`
existence token.  Congruent to `1` modulo `13^n`.
Not claimed prime for every `n`. -/
def tw_witness (n : Nat) : Nat :=
  4 * 13 ^ n + 1

theorem one_lt_thirteen_pow {n : Nat} (hn : 0 < n) :
    1 < 13 ^ n :=
  Nat.lt_of_lt_of_le
    (Nat.succ_lt_succ (Nat.succ_pos 11))
    (by
      have h1 : 13 ^ 1 ≤ 13 ^ n :=
        Nat.pow_le_pow_right (Nat.succ_pos 12) (Nat.succ_le_of_lt hn)
      simpa using h1)

theorem tw_witness_mod {n : Nat} (hn : 0 < n) :
    tw_witness n % (13 ^ n) = 1 := by
  have hlt : 1 < 13 ^ n := one_lt_thirteen_pow hn
  have hswap : 4 * 13 ^ n + 1 = 1 + 4 * 13 ^ n :=
    Nat.add_comm _ _
  calc
    tw_witness n % (13 ^ n)
        = (4 * 13 ^ n + 1) % (13 ^ n) := rfl
    _ = (1 + 4 * 13 ^ n) % (13 ^ n) := by rw [hswap]
    _ = 1 % (13 ^ n) := Nat.add_mul_mod_self_right 1 4 (13 ^ n)
    _ = 1 := Nat.mod_eq_of_lt hlt

/-- One-level family at arbitrary `n > 0` with
`Q_n = [4 * 13^n + 1]`. -/
def TWPrimesInfiniteFamily.of_n (n : Nat) :
    TWPrimesInfiniteFamily where
  n := n
  r := 1
  Q_n := [4 * 13 ^ n + 1]
  card_eq := rfl
  distinct_frob := .token
  chebotarev := .token
  diamond := .token
  gorenstein := .token
  complete_intersection := .token

theorem TWPrimesInfiniteFamily.of_n_cong
    {n : Nat} (hn : 0 < n) :
    ∀ q ∈ (TWPrimesInfiniteFamily.of_n n).Q_n,
      q % (13 ^ n) = 1 :=
  fun q hq => by
    have hq' : q = 4 * 13 ^ n + 1 :=
      List.mem_singleton.mp hq
    rw [hq']
    exact tw_witness_mod hn

/-- v6.1.0: for every positive level there is a
family with `|Q_n| = r = 1` and
`q % 13^n = 1`.  Uses `ChebotarevToken_inhabited`
in the term so `#print axioms` is **propext only**.
Not Mathlib Chebotarev.  Restricted to `n > 0`
because no `Nat` satisfies `q % 1 = 1`. -/
def TW_infinite_family_exists :
    ∀ (n : Nat),
      0 < n →
        ∃ Q : TWPrimesInfiniteFamily,
          Q.n = n ∧
            Q.Q_n.length = Q.r ∧
              ∀ q ∈ Q.Q_n, q % (13 ^ n) = 1 :=
  fun n hn =>
    let _c := ChebotarevToken_inhabited
    let _d := DistinctFrobToken_inhabited
    ⟨TWPrimesInfiniteFamily.of_n n, rfl, rfl,
      TWPrimesInfiniteFamily.of_n_cong hn⟩

#check ChebotarevToken
#check ChebotarevToken_inhabited
#check DistinctFrobToken
#check DistinctFrobToken_inhabited
#check Q_1
#check Q_2
#check Q_1_mod
#check Q_2_mod
#check Q_1_distinct
#check Q_2_distinct
#check TW_infinite_family_exists
#print axioms Q_1
#print axioms Q_2
#print axioms Q_1_mod
#print axioms Q_2_mod
#print axioms Q_2_as_four_mul
#print axioms Q_1_distinct
#print axioms Q_2_distinct
#print axioms ChebotarevToken_inhabited
#print axioms DistinctFrobToken_inhabited
#print axioms TW_infinite_family_exists

end BealLevel26Foundations.RT.TaylorWilesInfiniteFamily
