/-
Copyright (c) 2026 David Fox. All rights reserved.
Released under MIT license as described in the file LICENSE.
Authors: David Fox

Track B v8.19.1 — Size skeleton for `4,13,13`.
`(B+1)¹³ − B¹³ ≥ 13 B¹²` by the geometric-sum
factorisation, and `A⁴ + B¹³ = C¹³` with `A > 0`
gives `A⁴ ≥ 13 B¹²` and `A ≥ B³`.
The `C = B+1` table `B ∈ [1, 100]` kernel-checks
that those differences are not fourth powers.
That is **not** Zsigmondy and **not** the general
`beal_4_13_13_size` gap around `13^{1/4} B³`.

Does **not** inhabit `ExistsNewformLevel2`.
Does **not** drop `ModularImpliesLevel2Newform`.
-/

import Mathlib.Algebra.GeomSum
import Mathlib.Tactic

namespace BealLevel26Foundations.Beal.FullProof.Beal_4_13_13_Size_Table

/-- Displayed difference `C¹³ − B¹³` when `B < C`. -/
def pow13_sub_pow13_lower_bound (B C : Nat) (_hBltC : B < C) : Nat :=
  C ^ 13 - B ^ 13

/-- Minimal gap `C = B+1`: thirteen terms, each
`≥ B¹²`.  Not a Mathlib Zsigmondy lemma. -/
theorem C13_sub_B13_ge_13_mul_B_pow_12 (B : Nat) :
    13 * B ^ 12 ≤ (B + 1) ^ 13 - B ^ 13 := by
  have hgeom :
      (∑ i ∈ Finset.range 13,
          (B + 1) ^ i * B ^ (13 - 1 - i)) * 1 + B ^ 13
        = (B + 1) ^ 13 := by
    simpa [add_comm B] using geom_sum₂_mul_add (1 : Nat) B 13
  have hS :
      (∑ i ∈ Finset.range 13,
          (B + 1) ^ i * B ^ (13 - 1 - i)) + B ^ 13
        = (B + 1) ^ 13 := by
    simpa using hgeom
  have hdiff :
      (B + 1) ^ 13 - B ^ 13
        = ∑ i ∈ Finset.range 13,
            (B + 1) ^ i * B ^ (13 - 1 - i) := by
    rw [← hS, Nat.add_comm, Nat.add_sub_cancel_left]
  have hterm : ∀ i ∈ Finset.range 13,
      B ^ 12 ≤ (B + 1) ^ i * B ^ (13 - 1 - i) := by
    intro i hi
    have hi12 : i ≤ 12 := Nat.lt_succ_iff.mp (Finset.mem_range.mp hi)
    have hpow : B ^ i * B ^ (12 - i) = B ^ 12 := by
      rw [← Nat.pow_add, Nat.add_comm, Nat.sub_add_cancel hi12]
    have hmono : B ^ i ≤ (B + 1) ^ i :=
      Nat.pow_le_pow_left (Nat.le_succ B) i
    have : B ^ i * B ^ (12 - i)
        ≤ (B + 1) ^ i * B ^ (12 - i) :=
      Nat.mul_le_mul_right _ hmono
    have hidx : 13 - 1 - i = 12 - i := by
      simp
    simpa [hidx, hpow] using this
  have hsum :
      ∑ i ∈ Finset.range 13, B ^ 12
        ≤ ∑ i ∈ Finset.range 13,
            (B + 1) ^ i * B ^ (13 - 1 - i) :=
    Finset.sum_le_sum hterm
  have hcard :
      ∑ i ∈ Finset.range 13, B ^ 12 = 13 * B ^ 12 := by
    simp [Finset.sum_const, Finset.card_range]
  rw [hdiff, ← hcard]
  exact hsum

/-- From `A⁴ + B¹³ = C¹³` and `A > 0`, the gap is
at least the `C = B+1` binomial lower bound. -/
theorem beal_4_13_13_size_lower_bound {A B C : Nat}
    (heq : A ^ 4 + B ^ 13 = C ^ 13) (hA : 0 < A) :
    13 * B ^ 12 ≤ A ^ 4 := by
  have hlt : B ^ 13 < C ^ 13 :=
    Nat.lt_of_lt_of_eq
      (Nat.lt_add_of_pos_left (Nat.pos_pow_of_pos 4 hA)) heq
  have hBC : B < C :=
    (Nat.pow_lt_pow_iff_left (by decide : (13 : Nat) ≠ 0)).mp hlt
  have hmono : (B + 1) ^ 13 ≤ C ^ 13 :=
    Nat.pow_le_pow_left (Nat.succ_le_of_lt hBC) 13
  have hdiff : C ^ 13 - B ^ 13 = A ^ 4 := by
    rw [← heq, Nat.add_comm, Nat.add_sub_cancel_left]
  have hge :
      (B + 1) ^ 13 - B ^ 13 ≤ C ^ 13 - B ^ 13 :=
    Nat.sub_le_sub_right hmono _
  exact (C13_sub_B13_ge_13_mul_B_pow_12 B).trans (hge.trans_eq hdiff)

/-- `A⁴ ≥ 13 B¹² ≥ B¹² = (B³)⁴`, so `A ≥ B³`.
Not `A ≥ 2 B³` (`16 > 13`) and not `13^{1/4}`. -/
theorem beal_4_13_13_A_ge_B_pow_3 {A B C : Nat}
    (heq : A ^ 4 + B ^ 13 = C ^ 13) (hA : 0 < A) :
    B ^ 3 ≤ A := by
  have hlb : 13 * B ^ 12 ≤ A ^ 4 :=
    beal_4_13_13_size_lower_bound heq hA
  have hB12 : B ^ 12 ≤ A ^ 4 :=
    (Nat.le_mul_of_pos_left (B ^ 12) (by decide : 0 < 13)).trans hlb
  have hpow : (B ^ 3) ^ 4 = B ^ 12 := by
    rw [← Nat.pow_mul]
  have : (B ^ 3) ^ 4 ≤ A ^ 4 := hpow ▸ hB12
  exact (Nat.pow_le_pow_iff_left (by decide : (4 : Nat) ≠ 0)).mp this

/-- Candidate fourth power at the minimal gap. -/
def sizeDiff13 (B : Nat) : Nat :=
  (B + 1) ^ 13 - B ^ 13

theorem sizeDiff13_eq (B : Nat) :
    sizeDiff13 B = (B + 1) ^ 13 - B ^ 13 :=
  rfl

/-- If `r⁴ < n < (r+1)⁴` then `n` is not a fourth power. -/
theorem not_pow4_of_between {n r : Nat}
    (h1 : r ^ 4 < n) (h2 : n < (r + 1) ^ 4) :
    ∀ A : Nat, A ^ 4 ≠ n := by
  intro A hf
  cases le_or_lt A r with
  | inl hle =>
    have : A ^ 4 ≤ r ^ 4 := Nat.pow_le_pow_left hle 4
    exact (lt_of_le_of_lt this h1).ne hf
  | inr hlt =>
    have : (r + 1) ^ 4 ≤ A ^ 4 :=
      Nat.pow_le_pow_left (Nat.succ_le_of_lt hlt) 4
    exact (h2.trans_le (this.trans_eq hf)).false

set_option maxHeartbeats 8000000

/-- Kernel-check: `C = B+1` difference is at least
`13 B¹²` for every `B ∈ [1, 100]`. -/
theorem size_table_lower_bound_B_le_100 :
    ∀ B ∈ Finset.Icc 1 100, 13 * B ^ 12 ≤ sizeDiff13 B := by
  decide


theorem not_pow4_sizeDiff13_1_10
    {B : Nat} (hB : B ∈ Finset.Icc 1 10)
    (A : Nat) : A ^ 4 ≠ sizeDiff13 B := by
  fin_cases hB
  · have hD : sizeDiff13 1 = 8191 := by decide
    have h1 : (9 : Nat) ^ 4 < 8191 := by decide
    have h2 : 8191 < (9 + 1) ^ 4 := by decide
    exact hD ▸ not_pow4_of_between h1 h2 A
  · have hD : sizeDiff13 2 = 1586131 := by decide
    have h1 : (35 : Nat) ^ 4 < 1586131 := by decide
    have h2 : 1586131 < (35 + 1) ^ 4 := by decide
    exact hD ▸ not_pow4_of_between h1 h2 A
  · have hD : sizeDiff13 3 = 65514541 := by decide
    have h1 : (89 : Nat) ^ 4 < 65514541 := by decide
    have h2 : 65514541 < (89 + 1) ^ 4 := by decide
    exact hD ▸ not_pow4_of_between h1 h2 A
  · have hD : sizeDiff13 4 = 1153594261 := by decide
    have h1 : (184 : Nat) ^ 4 < 1153594261 := by decide
    have h2 : 1153594261 < (184 + 1) ^ 4 := by decide
    exact hD ▸ not_pow4_of_between h1 h2 A
  · have hD : sizeDiff13 5 = 11839990891 := by decide
    have h1 : (329 : Nat) ^ 4 < 11839990891 := by decide
    have h2 : 11839990891 < (329 + 1) ^ 4 := by decide
    exact hD ▸ not_pow4_of_between h1 h2 A
  · have hD : sizeDiff13 6 = 83828316391 := by decide
    have h1 : (538 : Nat) ^ 4 < 83828316391 := by decide
    have h2 : 83828316391 < (538 + 1) ^ 4 := by decide
    exact hD ▸ not_pow4_of_between h1 h2 A
  · have hD : sizeDiff13 7 = 452866803481 := by decide
    have h1 : (820 : Nat) ^ 4 < 452866803481 := by decide
    have h2 : 452866803481 < (820 + 1) ^ 4 := by decide
    exact hD ▸ not_pow4_of_between h1 h2 A
  · have hD : sizeDiff13 8 = 1992110014441 := by decide
    have h1 : (1188 : Nat) ^ 4 < 1992110014441 := by decide
    have h2 : 1992110014441 < (1188 + 1) ^ 4 := by decide
    exact hD ▸ not_pow4_of_between h1 h2 A
  · have hD : sizeDiff13 9 = 7458134171671 := by decide
    have h1 : (1652 : Nat) ^ 4 < 7458134171671 := by decide
    have h2 : 7458134171671 < (1652 + 1) ^ 4 := by decide
    exact hD ▸ not_pow4_of_between h1 h2 A
  · have hD : sizeDiff13 10 = 24522712143931 := by decide
    have h1 : (2225 : Nat) ^ 4 < 24522712143931 := by decide
    have h2 : 24522712143931 < (2225 + 1) ^ 4 := by decide
    exact hD ▸ not_pow4_of_between h1 h2 A

theorem not_pow4_sizeDiff13_11_20
    {B : Nat} (hB : B ∈ Finset.Icc 11 20)
    (A : Nat) : A ^ 4 ≠ sizeDiff13 B := by
  fin_cases hB
  · have hD : sizeDiff13 11 = 72470493235141 := by decide
    have h1 : (2917 : Nat) ^ 4 < 72470493235141 := by decide
    have h2 : 72470493235141 < (2917 + 1) ^ 4 := by decide
    exact hD ▸ not_pow4_of_between h1 h2 A
  · have hD : sizeDiff13 12 = 195881901213181 := by decide
    have h1 : (3741 : Nat) ^ 4 < 195881901213181 := by decide
    have h2 : 195881901213181 < (3741 + 1) ^ 4 := by decide
    exact hD ▸ not_pow4_of_between h1 h2 A
  · have hD : sizeDiff13 13 = 490839666661891 := by decide
    have h1 : (4706 : Nat) ^ 4 < 490839666661891 := by decide
    have h2 : 490839666661891 < (4706 + 1) ^ 4 := by decide
    exact hD ▸ not_pow4_of_between h1 h2 A
  · have hD : sizeDiff13 14 = 1152480295105231 := by decide
    have h1 : (5826 : Nat) ^ 4 < 1152480295105231 := by decide
    have h2 : 1152480295105231 < (5826 + 1) ^ 4 := by decide
    exact hD ▸ not_pow4_of_between h1 h2 A
  · have hD : sizeDiff13 15 = 2557404559011121 := by decide
    have h1 : (7111 : Nat) ^ 4 < 2557404559011121 := by decide
    have h2 : 2557404559011121 < (7111 + 1) ^ 4 := by decide
    exact hD ▸ not_pow4_of_between h1 h2 A
  · have hD : sizeDiff13 16 = 5400978405535441 := by decide
    have h1 : (8572 : Nat) ^ 4 < 5400978405535441 := by decide
    have h2 : 5400978405535441 < (8572 + 1) ^ 4 := by decide
    exact hD ▸ not_pow4_of_between h1 h2 A
  · have hD : sizeDiff13 17 = 10918386832765231 := by decide
    have h1 : (10222 : Nat) ^ 4 < 10918386832765231 := by decide
    have h2 : 10918386832765231 < (10222 + 1) ^ 4 := by decide
    exact hD ▸ not_pow4_of_between h1 h2 A
  · have hD : sizeDiff13 18 = 21230018596585891 := by decide
    have h1 : (12070 : Nat) ^ 4 < 21230018596585891 := by decide
    have h2 : 21230018596585891 < (12070 + 1) ^ 4 := by decide
    exact hD ▸ not_pow4_of_between h1 h2 A
  · have hD : sizeDiff13 19 = 39867016537742941 := by decide
    have h1 : (14130 : Nat) ^ 4 < 39867016537742941 := by decide
    have h2 : 39867016537742941 < (14130 + 1) ^ 4 := by decide
    exact hD ▸ not_pow4_of_between h1 h2 A
  · have hD : sizeDiff13 20 = 72552377739119461 := by decide
    have h1 : (16412 : Nat) ^ 4 < 72552377739119461 := by decide
    have h2 : 72552377739119461 < (16412 + 1) ^ 4 := by decide
    exact hD ▸ not_pow4_of_between h1 h2 A

theorem not_pow4_sizeDiff13_21_30
    {B : Nat} (hB : B ∈ Finset.Icc 21 30)
    (A : Nat) : A ^ 4 ≠ sizeDiff13 B := by
  fin_cases hB
  · have hD : sizeDiff13 21 = 128337680143963291 := by decide
    have h1 : (18927 : Nat) ^ 4 < 128337680143963291 := by decide
    have h2 : 128337680143963291 < (18927 + 1) ^ 4 := by decide
    exact hD ▸ not_pow4_of_between h1 h2 A
  · have hD : sizeDiff13 22 = 221226304053384631 := by decide
    have h1 : (21687 : Nat) ^ 4 < 221226304053384631 := by decide
    have h2 : 221226304053384631 < (21687 + 1) ^ 4 := by decide
    exact hD ▸ not_pow4_of_between h1 h2 A
  · have hD : sizeDiff13 23 = 372451976528890441 := by decide
    have h1 : (24704 : Nat) ^ 4 < 372451976528890441 := by decide
    have h2 : 372451976528890441 < (24704 + 1) ^ 4 := by decide
    exact hD ▸ not_pow4_of_between h1 h2 A
  · have hD : sizeDiff13 24 = 613627780919407801 := by decide
    have h1 : (27988 : Nat) ^ 4 < 613627780919407801 := by decide
    have h2 : 613627780919407801 < (27988 + 1) ^ 4 := by decide
    exact hD ▸ not_pow4_of_between h1 h2 A
  · have hD : sizeDiff13 25 = 991036753818970951 := by decide
    have h1 : (31551 : Nat) ^ 4 < 991036753818970951 := by decide
    have h2 : 991036753818970951 < (31551 + 1) ^ 4 := by decide
    exact hD ▸ not_pow4_of_between h1 h2 A
  · have hD : sizeDiff13 26 = 1571402279815239691 := by decide
    have h1 : (35405 : Nat) ^ 4 < 1571402279815239691 := by decide
    have h2 : 1571402279815239691 < (35405 + 1) ^ 4 := by decide
    exact hD ▸ not_pow4_of_between h1 h2 A
  · have hD : sizeDiff13 27 = 2449556269478971381 := by decide
    have h1 : (39561 : Nat) ^ 4 < 2449556269478971381 := by decide
    have h2 : 2449556269478971381 < (39561 + 1) ^ 4 := by decide
    exact hD ▸ not_pow4_of_between h1 h2 A
  · have hD : sizeDiff13 28 = 3758517290460654541 := by decide
    have h1 : (44030 : Nat) ^ 4 < 3758517290460654541 := by decide
    have h2 : 3758517290460654541 < (44030 + 1) ^ 4 := by decide
    exact hD ▸ not_pow4_of_between h1 h2 A
  · have hD : sizeDiff13 29 = 5682601287041397811 := by decide
    have h1 : (48824 : Nat) ^ 4 < 5682601287041397811 := by decide
    have h2 : 5682601287041397811 < (48824 + 1) ^ 4 := by decide
    exact hD ▸ not_pow4_of_between h1 h2 A
  · have hD : sizeDiff13 30 = 8474316297445042591 := by decide
    have h1 : (53954 : Nat) ^ 4 < 8474316297445042591 := by decide
    have h2 : 8474316297445042591 < (53954 + 1) ^ 4 := by decide
    exact hD ▸ not_pow4_of_between h1 h2 A

theorem not_pow4_sizeDiff13_31_40
    {B : Nat} (hB : B ∈ Finset.Icc 31 40)
    (A : Nat) : A ^ 4 ≠ sizeDiff13 B := by
  fin_cases hB
  · have hD : sizeDiff13 31 = 12475941849974060641 := by decide
    have h1 : (59431 : Nat) ^ 4 < 12475941849974060641 := by decide
    have h2 : 12475941849974060641 < (59431 + 1) ^ 4 := by decide
    exact hD ▸ not_pow4_of_between h1 h2 A
  · have hD : sizeDiff13 32 = 18146865846029400481 := by decide
    have h1 : (65268 : Nat) ^ 4 < 18146865846029400481 := by decide
    have h2 : 18146865846029400481 < (65268 + 1) ^ 4 := by decide
    exact hD ▸ not_pow4_of_between h1 h2 A
  · have hD : sizeDiff13 33 = 26097949252116932191 := by decide
    have h1 : (71474 : Nat) ^ 4 < 26097949252116932191 := by decide
    have h2 : 26097949252116932191 < (71474 + 1) ^ 4 := by decide
    exact hD ▸ not_pow4_of_between h1 h2 A
  · have hD : sizeDiff13 34 = 37134414536416985971 := by decide
    have h1 : (78062 : Nat) ^ 4 < 37134414536416985971 := by decide
    have h2 : 37134414536416985971 < (78062 + 1) ^ 4 := by decide
    exact hD ▸ not_pow4_of_between h1 h2 A
  · have hD : sizeDiff13 35 = 52309010397595786381 := by decide
    have h1 : (85044 : Nat) ^ 4 < 52309010397595786381 := by decide
    have h2 : 52309010397595786381 < (85044 + 1) ^ 4 := by decide
    exact hD ▸ not_pow4_of_between h1 h2 A
  · have hD : sizeDiff13 36 = 72987496036503097141 := by decide
    have h1 : (92429 : Nat) ^ 4 < 72987496036503097141 := by decide
    have h2 : 72987496036503097141 < (92429 + 1) ^ 4 := by decide
    exact hD ▸ not_pow4_of_between h1 h2 A
  · have hD : sizeDiff13 37 = 100928816306728521931 := by decide
    have h1 : (100231 : Nat) ^ 4 < 100928816306728521931 := by decide
    have h2 : 100928816306728521931 < (100231 + 1) ^ 4 := by decide
    exact hD ▸ not_pow4_of_between h1 h2 A
  · have hD : sizeDiff13 38 = 138382708044670752391 := by decide
    have h1 : (108460 : Nat) ^ 4 < 138382708044670752391 := by decide
    have h2 : 138382708044670752391 < (108460 + 1) ^ 4 := by decide
    exact hD ▸ not_pow4_of_between h1 h2 A
  · have hD : sizeDiff13 39 = 188207891432519420281 := by decide
    have h1 : (117127 : Nat) ^ 4 < 188207891432519420281 := by decide
    have h2 : 188207891432519420281 < (117127 + 1) ^ 4 := by decide
    exact hD ▸ not_pow4_of_between h1 h2 A
  · have hD : sizeDiff13 40 = 254014462315013629321 := by decide
    have h1 : (126245 : Nat) ^ 4 < 254014462315013629321 := by decide
    have h2 : 254014462315013629321 < (126245 + 1) ^ 4 := by decide
    exact hD ▸ not_pow4_of_between h1 h2 A

theorem not_pow4_sizeDiff13_41_50
    {B : Nat} (hB : B ∈ Finset.Icc 41 50)
    (A : Nat) : A ^ 4 ≠ sizeDiff13 B := by
  fin_cases hB
  · have hD : sizeDiff13 41 = 340334616123852995191 := by decide
    have h1 : (135824 : Nat) ^ 4 < 340334616123852995191 := by decide
    have h2 : 340334616123852995191 < (135824 + 1) ^ 4 := by decide
    exact hD ▸ not_pow4_of_between h1 h2 A
  · have hD : sizeDiff13 42 = 452826405843424160731 := by decide
    have h1 : (145875 : Nat) ^ 4 < 452826405843424160731 := by decide
    have h2 : 452826405843424160731 < (145875 + 1) ^ 4 := by decide
    exact hD ▸ not_pow4_of_between h1 h2 A
  · have hD : sizeDiff13 43 = 598515869895923119141 := by decide
    have h1 : (156411 : Nat) ^ 4 < 598515869895923119141 := by decide
    have h2 : 598515869895923119141 < (156411 + 1) ^ 4 := by decide
    exact hD ▸ not_pow4_of_between h1 h2 A
  · have hD : sizeDiff13 44 = 786083565793709923741 := by decide
    have h1 : (167443 : Nat) ^ 4 < 786083565793709923741 := by decide
    have h2 : 786083565793709923741 < (167443 + 1) ^ 4 := by decide
    exact hD ▸ not_pow4_of_between h1 h2 A
  · have hD : sizeDiff13 45 = 1026202317011616973411 := by decide
    have h1 : (178981 : Nat) ^ 4 < 1026202317011616973411 := by decide
    have h2 : 1026202317011616973411 < (178981 + 1) ^ 4 := by decide
    exact hD ▸ not_pow4_of_between h1 h2 A
  · have hD : sizeDiff13 46 = 1331933829137042375791 := by decide
    have h1 : (191038 : Nat) ^ 4 < 1331933829137042375791 := by decide
    have h2 : 1331933829137042375791 < (191038 + 1) ^ 4 := by decide
    exact hD ▸ not_pow4_of_between h1 h2 A
  · have hD : sizeDiff13 47 = 1719192762587628116881 := by decide
    have h1 : (203625 : Nat) ^ 4 < 1719192762587628116881 := by decide
    have h2 : 1719192762587628116881 < (203625 + 1) ^ 4 := by decide
    exact hD ▸ not_pow4_of_between h1 h2 A
  · have hD : sizeDiff13 48 = 2207287868939543011441 := by decide
    have h1 : (216752 : Nat) ^ 4 < 2207287868939543011441 := by decide
    have h2 : 2207287868939543011441 < (216752 + 1) ^ 4 := by decide
    exact hD ▸ not_pow4_of_between h1 h2 A
  · have hD : sizeDiff13 49 = 2819550912352245694351 := by decide
    have h1 : (230433 : Nat) ^ 4 < 2819550912352245694351 := by decide
    have h2 : 2819550912352245694351 < (230433 + 1) ^ 4 := by decide
    exact hD ▸ not_pow4_of_between h1 h2 A
  · have hD : sizeDiff13 50 = 3584065313156692195651 := by decide
    have h1 : (244677 : Nat) ^ 4 < 3584065313156692195651 := by decide
    have h2 : 3584065313156692195651 < (244677 + 1) ^ 4 := by decide
    exact hD ▸ not_pow4_of_between h1 h2 A

theorem not_pow4_sizeDiff13_51_60
    {B : Nat} (hB : B ∈ Finset.Icc 51 60)
    (A : Nat) : A ^ 4 ≠ sizeDiff13 B := by
  fin_cases hB
  · have hD : sizeDiff13 51 = 4534507774128317834941 := by decide
    have h1 : (259497 : Nat) ^ 4 < 4534507774128317834941 := by decide
    have h2 : 4534507774128317834941 < (259497 + 1) ^ 4 := by decide
    exact hD ▸ not_pow4_of_between h1 h2 A
  · have hD : sizeDiff13 52 = 5711117588321476165381 := by decide
    have h1 : (274903 : Nat) ^ 4 < 5711117588321476165381 := by decide
    have h2 : 5711117588321476165381 < (274903 + 1) ^ 4 := by decide
    exact hD ▸ not_pow4_of_between h1 h2 A
  · have hD : sizeDiff13 53 = 7161809887924967383291 := by decide
    have h1 : (290908 : Nat) ^ 4 < 7161809887924967383291 := by decide
    have h2 : 7161809887924967383291 < (290908 + 1) ^ 4 := by decide
    exact hD ▸ not_pow4_of_between h1 h2 A
  · have hD : sizeDiff13 54 = 8943450784040567905111 := by decide
    have h1 : (307522 : Nat) ^ 4 < 8943450784040567905111 := by decide
    have h2 : 8943450784040567905111 < (307522 + 1) ^ 4 := by decide
    exact hD ▸ not_pow4_of_between h1 h2 A
  · have hD : sizeDiff13 55 = 11123314175531165648041 := by decide
    have h1 : (324757 : Nat) ^ 4 < 11123314175531165648041 := by decide
    have h2 : 11123314175531165648041 < (324757 + 1) ^ 4 := by decide
    exact hD ▸ not_pow4_of_between h1 h2 A
  · have hD : sizeDiff13 56 = 13780741979392873943641 := by decide
    have h1 : (342624 : Nat) ^ 4 < 13780741979392873943641 := by decide
    have h2 : 13780741979392873943641 < (342624 + 1) ^ 4 := by decide
    exact hD ▸ not_pow4_of_between h1 h2 A
  · have hD : sizeDiff13 57 = 17009031664060808056231 := by decide
    have h1 : (361135 : Nat) ^ 4 < 17009031664060808056231 := by decide
    have h2 : 17009031664060808056231 < (361135 + 1) ^ 4 := by decide
    exact hD ▸ not_pow4_of_between h1 h2 A
  · have hD : sizeDiff13 58 = 20917577259575561163691 := by decide
    have h1 : (380301 : Nat) ^ 4 < 20917577259575561163691 := by decide
    have h2 : 20917577259575561163691 < (380301 + 1) ^ 4 := by decide
    exact hD ▸ not_pow4_of_between h1 h2 A
  · have hD : sizeDiff13 59 = 25634292483867569704021 := by decide
    have h1 : (400133 : Nat) ^ 4 < 25634292483867569704021 := by decide
    have h2 : 25634292483867569704021 < (400133 + 1) ^ 4 := by decide
    exact hD ▸ not_pow4_of_between h1 h2 A
  · have hD : sizeDiff13 60 = 31308347272152755657581 := by decide
    have h1 : (420644 : Nat) ^ 4 < 31308347272152755657581 := by decide
    have h2 : 31308347272152755657581 < (420644 + 1) ^ 4 := by decide
    exact hD ▸ not_pow4_of_between h1 h2 A

theorem not_pow4_sizeDiff13_61_70
    {B : Nat} (hB : B ∈ Finset.Icc 61 70)
    (A : Nat) : A ^ 4 ≠ sizeDiff13 B := by
  fin_cases hB
  · have hD : sizeDiff13 61 = 38113251836517033247891 := by decide
    have h1 : (441844 : Nat) ^ 4 < 38113251836517033247891 := by decide
    have h2 : 38113251836517033247891 < (441844 + 1) ^ 4 := by decide
    exact hD ▸ not_pow4_of_between h1 h2 A
  · have hD : sizeDiff13 62 = 46250325425496367514431 := by decide
    have h1 : (463744 : Nat) ^ 4 < 46250325425496367514431 := by decide
    have h2 : 46250325425496367514431 < (463744 + 1) ^ 4 := by decide
    exact hD ▸ not_pow4_of_between h1 h2 A
  · have hD : sizeDiff13 63 = 55952590209491137256641 := by decide
    have h1 : (486356 : Nat) ^ 4 < 55952590209491137256641 := by decide
    have h2 : 55952590209491137256641 < (486356 + 1) ^ 4 := by decide
    exact hD ▸ not_pow4_of_between h1 h2 A
  · have hD : sizeDiff13 64 = 67489134198214044214081 := by decide
    have h1 : (509692 : Nat) ^ 4 < 67489134198214044214081 := by decide
    have h2 : 67489134198214044214081 < (509692 + 1) ^ 4 := by decide
    exact hD ▸ not_pow4_of_between h1 h2 A
  · have hD : sizeDiff13 65 = 81169990812458804526271 := by decide
    have h1 : (533763 : Nat) ^ 4 < 81169990812458804526271 := by decide
    have h2 : 81169990812458804526271 < (533763 + 1) ^ 4 := by decide
    exact hD ▸ not_pow4_of_between h1 h2 A
  · have hD : sizeDiff13 66 = 97351586696071286268691 := by decide
    have h1 : (558580 : Nat) ^ 4 < 97351586696071286268691 := by decide
    have h2 : 97351586696071286268691 < (558580 + 1) ^ 4 := by decide
    exact hD ▸ not_pow4_of_between h1 h2 A
  · have hD : sizeDiff13 67 = 116442813577270622239981 := by decide
    have h1 : (584155 : Nat) ^ 4 < 116442813577270622239981 := by decide
    have h2 : 116442813577270622239981 < (584155 + 1) ^ 4 := by decide
    exact hD ▸ not_pow4_of_between h1 h2 A
  · have hD : sizeDiff13 68 = 138911784483962436541141 := by decide
    have h1 : (610498 : Nat) ^ 4 < 138911784483962436541141 := by decide
    have h2 : 138911784483962436541141 < (610498 + 1) ^ 4 := by decide
    exact hD ▸ not_pow4_of_between h1 h2 A
  · have hD : sizeDiff13 69 = 165293339398365512533291 := by decide
    have h1 : (637622 : Nat) ^ 4 < 165293339398365512533291 := by decide
    have h2 : 165293339398365512533291 < (637622 + 1) ^ 4 := by decide
    exact hD ▸ not_pow4_of_between h1 h2 A
  · have hD : sizeDiff13 70 = 196197370515497590531111 := by decide
    have h1 : (665538 : Nat) ^ 4 < 196197370515497590531111 := by decide
    have h2 : 196197370515497590531111 < (665538 + 1) ^ 4 := by decide
    exact hD ▸ not_pow4_of_between h1 h2 A

theorem not_pow4_sizeDiff13_71_80
    {B : Nat} (hB : B ∈ Finset.Icc 71 80)
    (A : Nat) : A ^ 4 ≠ sizeDiff13 B := by
  fin_cases hB
  · have hD : sizeDiff13 71 = 232318042661607091502041 := by decide
    have h1 : (694257 : Nat) ^ 4 < 232318042661607091502041 := by decide
    have h2 : 232318042661607091502041 < (694257 + 1) ^ 4 := by decide
    exact hD ▸ not_pow4_of_between h1 h2 A
  · have hD : sizeDiff13 72 = 274443990146684203907881 := by decide
    have h1 : (723791 : Nat) ^ 4 < 274443990146684203907881 := by decide
    have h2 : 274443990146684203907881 < (723791 + 1) ^ 4 := by decide
    exact hD ▸ not_pow4_of_between h1 h2 A
  · have hD : sizeDiff13 73 = 323469577384349167871191 := by decide
    have h1 : (754151 : Nat) ^ 4 < 323469577384349167871191 := by decide
    have h2 : 323469577384349167871191 < (754151 + 1) ^ 4 := by decide
    exact hD ▸ not_pow4_of_between h1 h2 A
  · have hD : sizeDiff13 74 = 380407317027739631734651 := by decide
    have h1 : (785348 : Nat) ^ 4 < 380407317027739631734651 := by decide
    have h2 : 380407317027739631734651 < (785348 + 1) ^ 4 := by decide
    exact hD ▸ not_pow4_of_between h1 h2 A
  · have hD : sizeDiff13 75 = 446401546156980419924101 := by decide
    have h1 : (817393 : Nat) ^ 4 < 446401546156980419924101 := by decide
    have h2 : 446401546156980419924101 < (817393 + 1) ^ 4 := by decide
    exact hD ▸ not_pow4_of_between h1 h2 A
  · have hD : sizeDiff13 76 = 522743468228337835418941 := by decide
    have h1 : (850299 : Nat) ^ 4 < 522743468228337835418941 := by decide
    have h2 : 522743468228337835418941 < (850299 + 1) ^ 4 := by decide
    exact hD ▸ not_pow4_of_between h1 h2 A
  · have hD : sizeDiff13 77 = 610887676073604968168131 := by decide
    have h1 : (884077 : Nat) ^ 4 < 610887676073604968168131 := by decide
    have h2 : 610887676073604968168131 < (884077 + 1) ^ 4 := by decide
    exact hD ▸ not_pow4_of_between h1 h2 A
  · have hD : sizeDiff13 78 = 712470279237457208075791 := by decide
    have h1 : (918738 : Nat) ^ 4 < 712470279237457208075791 := by decide
    have h2 : 712470279237457208075791 < (918738 + 1) ^ 4 := by decide
    exact hD ▸ not_pow4_of_between h1 h2 A
  · have hD : sizeDiff13 79 = 829328767377741882866161 := by decide
    have h1 : (954292 : Nat) ^ 4 < 829328767377741882866161 := by decide
    have h2 : 829328767377741882866161 < (954292 + 1) ^ 4 := by decide
    exact hD ▸ not_pow4_of_between h1 h2 A
  · have hD : sizeDiff13 80 = 963523750346673298932241 := by decide
    have h1 : (990753 : Nat) ^ 4 < 963523750346673298932241 := by decide
    have h2 : 963523750346673298932241 < (990753 + 1) ^ 4 := by decide
    exact hD ▸ not_pow4_of_between h1 h2 A

theorem not_pow4_sizeDiff13_81_90
    {B : Nat} (hB : B ∈ Finset.Icc 81 90)
    (A : Nat) : A ^ 4 ≠ sizeDiff13 B := by
  fin_cases hB
  · have hD : sizeDiff13 81 = 1117362724937918352465391 := by decide
    have h1 : (1028131 : Nat) ^ 4 < 1117362724937918352465391 := by decide
    have h2 : 1117362724937918352465391 < (1028131 + 1) ^ 4 := by decide
    exact hD ▸ not_pow4_of_between h1 h2 A
  · have hD : sizeDiff13 82 = 1293426028144281674645731 := by decide
    have h1 : (1066437 : Nat) ^ 4 < 1293426028144281674645731 := by decide
    have h2 : 1293426028144281674645731 < (1066437 + 1) ^ 4 := by decide
    exact hD ▸ not_pow4_of_between h1 h2 A
  · have hD : sizeDiff13 83 = 1494595147142322061958941 := by decide
    have h1 : (1105683 : Nat) ^ 4 < 1494595147142322061958941 := by decide
    have h2 : 1494595147142322061958941 < (1105683 + 1) ^ 4 := by decide
    exact hD ▸ not_pow4_of_between h1 h2 A
  · have hD : sizeDiff13 84 = 1724083567123434738950821 := by decide
    have h1 : (1145881 : Nat) ^ 4 < 1724083567123434738950821 := by decide
    have h2 : 1724083567123434738950821 < (1145881 + 1) ^ 4 := by decide
    exact hD ▸ not_pow4_of_between h1 h2 A
  · have hD : sizeDiff13 85 = 1985470349545895985757531 := by decide
    have h1 : (1187041 : Nat) ^ 4 < 1985470349545895985757531 := by decide
    have h2 : 1985470349545895985757531 < (1187041 + 1) ^ 4 := by decide
    exact hD ▸ not_pow4_of_between h1 h2 A
  · have hD : sizeDiff13 86 = 2282736645409771405062391 := by decide
    have h1 : (1229175 : Nat) ^ 4 < 2282736645409771405062391 := by decide
    have h2 : 2282736645409771405062391 < (1229175 + 1) ^ 4 := by decide
    exact hD ▸ not_pow4_of_between h1 h2 A
  · have hD : sizeDiff13 87 = 2620305360777630786940681 := by decide
    have h1 : (1272295 : Nat) ^ 4 < 2620305360777630786940681 := by decide
    have h2 : 2620305360777630786940681 < (1272295 + 1) ^ 4 := by decide
    exact hD ▸ not_pow4_of_between h1 h2 A
  · have hD : sizeDiff13 88 = 3003084205000402182299641 := by decide
    have h1 : (1316412 : Nat) ^ 4 < 3003084205000402182299641 := by decide
    have h2 : 3003084205000402182299641 < (1316412 + 1) ^ 4 := by decide
    exact hD ▸ not_pow4_of_between h1 h2 A
  · have hD : sizeDiff13 89 = 3436512365981669512986631 := by decide
    have h1 : (1361537 : Nat) ^ 4 < 3436512365981669512986631 := by decide
    have h2 : 3436512365981669512986631 < (1361537 + 1) ^ 4 := by decide
    exact hD ▸ not_pow4_of_between h1 h2 A
  · have hD : sizeDiff13 90 = 3926611071348035222576971 := by decide
    have h1 : (1407681 : Nat) ^ 4 < 3926611071348035222576971 := by decide
    have h2 : 3926611071348035222576971 < (1407681 + 1) ^ 4 := by decide
    exact hD ▸ not_pow4_of_between h1 h2 A

theorem not_pow4_sizeDiff13_91_100
    {B : Nat} (hB : B ∈ Finset.Icc 91 100)
    (A : Nat) : A ^ 4 ≠ sizeDiff13 B := by
  fin_cases hB
  · have hD : sizeDiff13 91 = 4480038309611131023605941 := by decide
    have h1 : (1454857 : Nat) ^ 4 < 4480038309611131023605941 := by decide
    have h2 : 4480038309611131023605941 < (1454857 + 1) ^ 4 := by decide
    exact hD ▸ not_pow4_of_between h1 h2 A
  · have hD : sizeDiff13 92 = 5104148001332306392627981 := by decide
    have h1 : (1503075 : Nat) ^ 4 < 5104148001332306392627981 := by decide
    have h2 : 5104148001332306392627981 < (1503075 + 1) ^ 4 := by decide
    exact hD ▸ not_pow4_of_between h1 h2 A
  · have hD : sizeDiff13 93 = 5807053926958344749851891 := by decide
    have h1 : (1552347 : Nat) ^ 4 < 5807053926958344749851891 := by decide
    have h2 : 5807053926958344749851891 < (1552347 + 1) ^ 4 := by decide
    exact hD ▸ not_pow4_of_between h1 h2 A
  · have hD : sizeDiff13 94 = 6597698735410694085946591 := by decide
    have h1 : (1602684 : Nat) ^ 4 < 6597698735410694085946591 := by decide
    have h2 : 6597698735410694085946591 < (1602684 + 1) ^ 4 := by decide
    exact hD ▸ not_pow4_of_between h1 h2 A
  · have hD : sizeDiff13 95 = 7485928375707155447542561 := by decide
    have h1 : (1654098 : Nat) ^ 4 < 7485928375707155447542561 := by decide
    have h2 : 7485928375707155447542561 < (1654098 + 1) ^ 4 := by decide
    exact hD ▸ not_pow4_of_between h1 h2 A
  · have hD : sizeDiff13 96 = 8482572312899819106467041 := by decide
    have h1 : (1706600 : Nat) ^ 4 < 8482572312899819106467041 := by decide
    have h2 : 8482572312899819106467041 < (1706600 + 1) ^ 4 := by decide
    exact hD ▸ not_pow4_of_between h1 h2 A
  · have hD : sizeDiff13 97 = 9599529909452917243257631 := by decide
    have h1 : (1760201 : Nat) ^ 4 < 9599529909452917243257631 := by decide
    have h2 : 9599529909452917243257631 < (1760201 + 1) ^ 4 := by decide
    exact hD ▸ not_pow4_of_between h1 h2 A
  · have hD : sizeDiff13 98 = 10849863373886395513344691 := by decide
    have h1 : (1814914 : Nat) ^ 4 < 10849863373886395513344691 := by decide
    have h2 : 10849863373886395513344691 < (1814914 + 1) ^ 4 := by decide
    exact hD ▸ not_pow4_of_between h1 h2 A
  · have hD : sizeDiff13 99 = 12247897700103201214778701 := by decide
    have h1 : (1870748 : Nat) ^ 4 < 12247897700103201214778701 := by decide
    have h2 : 12247897700103201214778701 < (1870748 + 1) ^ 4 := by decide
    exact hD ▸ not_pow4_of_between h1 h2 A
  · have hD : sizeDiff13 100 = 13809328043328941786781301 := by decide
    have h1 : (1927716 : Nat) ^ 4 < 13809328043328941786781301 := by decide
    have h2 : 13809328043328941786781301 < (1927716 + 1) ^ 4 := by decide
    exact hD ▸ not_pow4_of_between h1 h2 A

/-- Kernel-check: `C = B+1` differences for `B ∈ [1, 100]`
are not fourth powers.  Not a search over `C ≥ B+2`. -/
theorem size_table_not_fourth_B_le_100
    {B : Nat} (hB : B ∈ Finset.Icc 1 100) (A : Nat) :
    A ^ 4 ≠ sizeDiff13 B := by
  have hmem := Finset.mem_Icc.mp hB
  rcases le_or_lt B 10 with h10 | h10
  · exact not_pow4_sizeDiff13_1_10 (Finset.mem_Icc.mpr ⟨hmem.1, h10⟩) A
  rcases le_or_lt B 20 with h20 | h20
  · exact not_pow4_sizeDiff13_11_20
      (Finset.mem_Icc.mpr ⟨Nat.succ_le_of_lt h10, h20⟩) A
  rcases le_or_lt B 30 with h30 | h30
  · exact not_pow4_sizeDiff13_21_30
      (Finset.mem_Icc.mpr ⟨Nat.succ_le_of_lt h20, h30⟩) A
  rcases le_or_lt B 40 with h40 | h40
  · exact not_pow4_sizeDiff13_31_40
      (Finset.mem_Icc.mpr ⟨Nat.succ_le_of_lt h30, h40⟩) A
  rcases le_or_lt B 50 with h50 | h50
  · exact not_pow4_sizeDiff13_41_50
      (Finset.mem_Icc.mpr ⟨Nat.succ_le_of_lt h40, h50⟩) A
  rcases le_or_lt B 60 with h60 | h60
  · exact not_pow4_sizeDiff13_51_60
      (Finset.mem_Icc.mpr ⟨Nat.succ_le_of_lt h50, h60⟩) A
  rcases le_or_lt B 70 with h70 | h70
  · exact not_pow4_sizeDiff13_61_70
      (Finset.mem_Icc.mpr ⟨Nat.succ_le_of_lt h60, h70⟩) A
  rcases le_or_lt B 80 with h80 | h80
  · exact not_pow4_sizeDiff13_71_80
      (Finset.mem_Icc.mpr ⟨Nat.succ_le_of_lt h70, h80⟩) A
  rcases le_or_lt B 90 with h90 | h90
  · exact not_pow4_sizeDiff13_81_90
      (Finset.mem_Icc.mpr ⟨Nat.succ_le_of_lt h80, h90⟩) A
  exact not_pow4_sizeDiff13_91_100
    (Finset.mem_Icc.mpr ⟨Nat.succ_le_of_lt h90, hmem.2⟩) A

/-- `beal_4_13_13_size` on the `C = B+1` slice
`B ∈ [1, 100]`.  Not the general odd-`A` gap. -/
theorem beal_4_13_13_size_B_le_100_C_succ
    {A B : Nat} (hB : B ∈ Finset.Icc 1 100)
    (heq : A ^ 4 + B ^ 13 = (B + 1) ^ 13) : False := by
  have hdiff : A ^ 4 = sizeDiff13 B := by
    rw [sizeDiff13, ← heq, Nat.add_comm, Nat.add_sub_cancel_left]
  exact size_table_not_fourth_B_le_100 hB A hdiff

end BealLevel26Foundations.Beal.FullProof.Beal_4_13_13_Size_Table
