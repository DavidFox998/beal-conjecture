#!/usr/bin/env python3
"""Generate TWAuxEllFixed inhabitants at N=26 and N=10000."""

from pathlib import Path

ROOT = Path("/workspace/lean/BealLevel26Foundations/Beal/FullProof")

RANGES = [
    (5, 100, "5_100", "5to100", "TWPrimes_5_100", "TWPrimesQ2_5_100"),
    (101, 200, "101_200", "101to200", "TWPrimes_101_200", "TWPrimesQ2_101_200"),
    (201, 300, "201_300", "201to300", "TWPrimes_201_300", "TWPrimesQ2_201_300"),
    (301, 400, "301_400", "301to400", "TWPrimes_301_400", "TWPrimesQ2_301_400"),
    (401, 500, "401_500", "401to500", "TWPrimes_401_500", "TWPrimesQ2_401_500"),
    (501, 600, "501_600", "501to600", "TWPrimes_501_600", "TWPrimesQ2_501_600"),
    (601, 700, "601_700", "601to700", "TWPrimes_601_700", "TWPrimesQ2_601_700"),
    (701, 800, "701_800", "701to800", "TWPrimes_701_800", "TWPrimesQ2_701_800"),
    (801, 900, "801_900", "801to900", "TWPrimes_801_900", "TWPrimesQ2_801_900"),
    (901, 1000, "901_1000", "901to1000", "TWPrimes_901_1000", "TWPrimesQ2_901_1000"),
]

# New Q2 > 10000 (table Q2 was ≤ 10000). Pratt certificates.
Q2_GT_10000_PRATT = {
    5: (10151, 7, [2, 5, 5, 7, 29]),
    7: (10193, 3, [2, 2, 2, 2, 7, 7, 13]),
    11: (10891, 2, [2, 3, 3, 5, 11, 11]),
    13: (10141, 2, [2, 2, 3, 5, 13, 13]),
    17: (13873, 5, [2, 2, 2, 2, 3, 17, 17]),
    37: (13691, 2, [2, 5, 37, 37]),
    47: (22091, 2, [2, 5, 47, 47]),
}

# ℓ=29: table Q1=Q2=10093. Use next Q1 ≡ 1 [MOD 29].
Q1_OVERRIDE_10000 = {29: 10151}


def load_rows():
    rows = {}
    with open("/tmp/q_gt_tables.txt") as f:
        for line in f:
            parts = line.split()
            ell, q1_26, q1_10k, q2_26, q2_10k = map(int, parts[:5])
            if ell in Q1_OVERRIDE_10000:
                q1_10k = Q1_OVERRIDE_10000[ell]
            rows[ell] = (q1_26, q1_10k, q2_26, q2_10k)
    return rows


def load_finset_order(path: Path, defname: str):
    text = path.read_text()
    start = text.index(f"def {defname}")
    chunk = text[start:]
    brace = chunk.index("{")
    end = chunk.index("}", brace)
    nums = [int(x.strip().rstrip(",")) for x in chunk[brace + 1 : end].replace("\n", " ").split(",") if x.strip()]
    return nums


def inhabitant(ell, N, q1, q2, table_q2):
    if q2 == table_q2:
        q2_prime = f"(q2_witness_{ell}).1"
    else:
        q2_prime = f"(q2_gt_10000_{ell}).1"
    return f"""def twaux_{N}_{ell} : TWAuxEllFixed {ell} {N} where
  Q1ell := {q1}
  Q2ell := {q2}
  Q1_prime := by norm_num
  Q2_prime := {q2_prime}
  Q1_mod := by decide
  Q2_mod := by decide
  Q1_ge5 := by decide
  Q2_ge5 := by decide
  Q1_ne_Q2 := by decide
  Q1_gt_N := by decide
  Q2_gt_N := by decide

theorem twaux_exists_{N}_{ell} : TWAuxEllFixedExists {ell} {N} :=
  ⟨twaux_{N}_{ell}⟩
"""


def pratt_thm(ell, n, a, qs):
    qs_lit = "[" + ", ".join(str(q) for q in qs) + "]"
    return f"""theorem q2_gt_10000_{ell} :
    Nat.Prime {n} ∧ {n} % ({ell} * {ell}) = 1 ∧
      {n} ≤ 100000000 ∧ 5 ≤ {n} ∧ 10000 < {n} :=
  ⟨prime_of_pratt (a := {a}) {qs_lit}
      (by decide) (by decide) (by decide) (by decide)
      (by decide) (by decide) (by decide),
    by decide, by decide, by decide, by decide⟩
"""


def write_chunk(lo, hi, tag, finset_tag, q1mod, q2mod, rows, order):
    ns = f"BealLevel26Foundations.Beal.FullProof.TWAuxEllFixed_{tag}"
    finset = f"primes{finset_tag}"
    body = []
    header = f"""/-
Copyright (c) 2026 David Fox. All rights reserved.
Released under MIT license as described in the file LICENSE.
Authors: David Fox

Track B v8.17.0 — `TWAuxEllFixed` at `N = 26` and `N = 10000`
for residuals in `{finset}`.  `Qᵢ > N` so `Qᵢ ∤ N`.
Not `∀ N ≤ 10000`.  `ℓ = 941` needs `Q₁ = 30113`
(`N + 21000`, not `N + 20000`).
-/

import BealLevel26Foundations.Beal.FullProof.TWAuxEllFixedCore
import BealLevel26Foundations.Beal.FullProof.{q2mod}
import Mathlib.Tactic

namespace {ns}

open BealLevel26Foundations.Beal.FullProof.TWAuxEllFixedCore
open BealLevel26Foundations.Beal.FullProof.{q1mod}
open BealLevel26Foundations.Beal.FullProof.{q2mod}
open BealLevel26Foundations.Beal.FullProof.TWPrimesPratt

set_option maxHeartbeats 4000000
set_option maxRecDepth 2048
"""
    body.append(header)
    if tag == "5_100":
        body.append("/-- Pratt certificates for the seven residuals\n")
        body.append("whose table `Q₂` is `≤ 10000`. -/\n")
        for ell in (5, 7, 11, 13, 17, 37, 47):
            n, a, qs = Q2_GT_10000_PRATT[ell]
            body.append(pratt_thm(ell, n, a, qs))
            body.append("\n")
    for ell in order:
        q1_26, q1_10k, q2_26, q2_10k = rows[ell]
        body.append(inhabitant(ell, 26, q1_26, q2_26, q2_26))
        body.append("\n")
        body.append(inhabitant(ell, 10000, q1_10k, q2_10k, q2_26))
        body.append("\n")
    cases26 = "\n".join(f"  · exact twaux_exists_26_{ell}" for ell in order)
    cases10k = "\n".join(f"  · exact twaux_exists_10000_{ell}" for ell in order)
    body.append(f"""theorem TWAuxEllFixedExists_26_{tag} {{ℓ : Nat}}
    (h : ℓ ∈ {finset}) : TWAuxEllFixedExists ℓ 26 := by
  fin_cases h
{cases26}

theorem TWAuxEllFixedExists_10000_{tag} {{ℓ : Nat}}
    (h : ℓ ∈ {finset}) : TWAuxEllFixedExists ℓ 10000 := by
  fin_cases h
{cases10k}

end {ns}
""")
    path = ROOT / f"TWAuxEllFixed_{tag}.lean"
    path.write_text("".join(body))
    print("wrote", path, "n=", len(order))


def write_aggregator(rows):
    imports = "\n".join(
        f"import BealLevel26Foundations.Beal.FullProof.TWAuxEllFixed_{tag}"
        for _, _, tag, *_ in RANGES
    )
    opens = "\n".join(
        f"open BealLevel26Foundations.Beal.FullProof.TWAuxEllFixed_{tag}"
        for _, _, tag, *_ in RANGES
    )
    cases26 = "\n".join(
        f"  · exact TWAuxEllFixedExists_26_{tag} h" for _, _, tag, *_ in RANGES
    )
    cases10k = "\n".join(
        f"  · exact TWAuxEllFixedExists_10000_{tag} h" for _, _, tag, *_ in RANGES
    )
    table_lines = []
    for ell in sorted(rows):
        q1_26, q1_10k, q2_26, q2_10k = rows[ell]
        table_lines.append(
            f"-- {ell:4d}  {q1_26:6d}  {q1_10k:6d}  {q2_26:9d}  {q2_10k:9d}"
        )
    table = "\n".join(table_lines)
    text = f"""/-
Copyright (c) 2026 David Fox. All rights reserved.
Released under MIT license as described in the file LICENSE.
Authors: David Fox

Track B v8.17.0 — `TWAuxEllFixed` at the two conductors
`N = 26` and `N = 10000` for every residual in
`InTWEll1000`.  Not `∀ N ≤ 10000`.  Completeness
`Nat.Prime ℓ → 5 ≤ ℓ ≤ 1000` is still only
kernel-checked on `[5, 100]` via `Finset.filter`.
`ℓ = 941` needs `Q₁ = 30113` (`N + 21000`).
`ℓ = 29` at `N = 10000` uses `Q₁ = 10151`
so `Q₁ ≠ Q₂ = 10093`.
-/

import BealLevel26Foundations.Beal.FullProof.TWAuxEllFixedCore
import BealLevel26Foundations.Beal.FullProof.TWPrimes
{imports}

namespace BealLevel26Foundations.Beal.FullProof.TWAuxEllFixed

open BealLevel26Foundations.Beal.FullProof.TWAuxEllFixedCore
open BealLevel26Foundations.Beal.FullProof.TWPrimes
{opens}

/-!
Full `next_Q1_gt_N` / next-`Q₂` table.

`ell  Q1@26  Q1@10000  Q2@26  Q2@10000`
{table}
-/

theorem TWAuxEllFixedExists_26_all {{ℓ : Nat}}
    (h : InTWEll1000 ℓ) : TWAuxEllFixedExists ℓ 26 := by
  rcases h with h | h | h | h | h | h | h | h | h | h
{cases26}

theorem TWAuxEllFixedExists_10000_all {{ℓ : Nat}}
    (h : InTWEll1000 ℓ) : TWAuxEllFixedExists ℓ 10000 := by
  rcases h with h | h | h | h | h | h | h | h | h | h
{cases10k}

theorem next_Q1_gt_N_exists_26 {{ℓ : Nat}} (h : InTWEll1000 ℓ) :
    ∃ Q1 : Nat, Q1.Prime ∧ Q1 % ℓ = 1 ∧ 26 < Q1 ∧
      Q1 ≤ 26 + 21000 ∧ Q1 ≤ 100000000 := by
  rcases TWAuxEllFixedExists_26_all h with ⟨tw⟩
  exact ⟨tw.Q1ell, tw.Q1_prime, tw.Q1_mod, tw.Q1_gt_N,
    le_trans (Nat.succ_le_of_lt tw.Q1_gt_N) (by decide : 27 ≤ 26 + 21000),
    Nat.le_trans (Nat.succ_le_of_lt tw.Q1_gt_N)
      (by decide : 27 ≤ 100000000)⟩

theorem next_Q1_gt_N_exists_10000 {{ℓ : Nat}} (h : InTWEll1000 ℓ) :
    ∃ Q1 : Nat, Q1.Prime ∧ Q1 % ℓ = 1 ∧ 10000 < Q1 ∧
      Q1 ≤ 10000 + 21000 ∧ Q1 ≤ 100000000 := by
  rcases TWAuxEllFixedExists_10000_all h with ⟨tw⟩
  exact ⟨tw.Q1ell, tw.Q1_prime, tw.Q1_mod, tw.Q1_gt_N,
    by
      have hlt : tw.Q1ell ≤ 30113 := by
        -- largest explicit witness is 941 → 30113
        cases tw
        · decide
      exact le_trans hlt (by decide : (30113 : Nat) ≤ 10000 + 21000),
    by
      have hlt : tw.Q1ell ≤ 30113 := by
        cases tw
        · decide
      exact le_trans hlt (by decide : (30113 : Nat) ≤ 100000000)⟩

end BealLevel26Foundations.Beal.FullProof.TWAuxEllFixed
"""
    path = ROOT / "TWAuxEllFixed.lean"
    # The next_Q1_gt_N_exists_10000 proof with `cases tw; decide` won't work
    # — tw is a structure value, not a 166-way inductive. Drop those
    # bound theorems from the aggregator; the per-row decide proofs
    # already have Q1 ≤ 30113. Keep only Exists_26_all / Exists_10000_all.
    text = f"""/-
Copyright (c) 2026 David Fox. All rights reserved.
Released under MIT license as described in the file LICENSE.
Authors: David Fox

Track B v8.17.0 — `TWAuxEllFixed` at the two conductors
`N = 26` and `N = 10000` for every residual in
`InTWEll1000`.  Not `∀ N ≤ 10000`.  Completeness
`Nat.Prime ℓ → 5 ≤ ℓ ≤ 1000` is still only
kernel-checked on `[5, 100]` via `Finset.filter`.
`ℓ = 941` needs `Q₁ = 30113` (`N + 21000`).
`ℓ = 29` at `N = 10000` uses `Q₁ = 10151`
so `Q₁ ≠ Q₂ = 10093`.
-/

import BealLevel26Foundations.Beal.FullProof.TWAuxEllFixedCore
import BealLevel26Foundations.Beal.FullProof.TWPrimes
{imports}

namespace BealLevel26Foundations.Beal.FullProof.TWAuxEllFixed

open BealLevel26Foundations.Beal.FullProof.TWAuxEllFixedCore
open BealLevel26Foundations.Beal.FullProof.TWPrimes
{opens}

/-!
Full `next_Q1_gt_N` / next-`Q₂` table.

`ell  Q1@26  Q1@10000  Q2@26  Q2@10000`
{table}
-/

theorem TWAuxEllFixedExists_26_all {{ℓ : Nat}}
    (h : InTWEll1000 ℓ) : TWAuxEllFixedExists ℓ 26 := by
  rcases h with h | h | h | h | h | h | h | h | h | h
{cases26}

theorem TWAuxEllFixedExists_10000_all {{ℓ : Nat}}
    (h : InTWEll1000 ℓ) : TWAuxEllFixedExists ℓ 10000 := by
  rcases h with h | h | h | h | h | h | h | h | h | h
{cases10k}

theorem next_Q1_gt_N_exists_26 {{ℓ : Nat}} (h : InTWEll1000 ℓ) :
    ∃ Q1 : Nat, Q1.Prime ∧ Q1 % ℓ = 1 ∧ 26 < Q1 ∧
      Q1 ≤ 26 + 21000 ∧ Q1 ≤ 100000000 := by
  rcases TWAuxEllFixedExists_26_all h with ⟨tw⟩
  refine ⟨tw.Q1ell, tw.Q1_prime, tw.Q1_mod, tw.Q1_gt_N, ?_, ?_⟩
  · exact Nat.le_trans (Nat.succ_le_of_lt tw.Q1_gt_N)
      (by decide : (27 : Nat) ≤ 26 + 21000)
  · exact Nat.le_trans (Nat.succ_le_of_lt tw.Q1_gt_N)
      (by decide : (27 : Nat) ≤ 100000000)

/-- Bound `N + 21000` is forced by `ℓ = 941 → Q₁ = 30113`.
`N + 20000` is false for that residual. -/
theorem next_Q1_gt_N_exists_10000 {{ℓ : Nat}} (h : InTWEll1000 ℓ) :
    ∃ Q1 : Nat, Q1.Prime ∧ Q1 % ℓ = 1 ∧ 10000 < Q1 ∧
      Q1 ≤ 10000 + 21000 ∧ Q1 ≤ 100000000 := by
  rcases TWAuxEllFixedExists_10000_all h with ⟨tw⟩
  refine ⟨tw.Q1ell, tw.Q1_prime, tw.Q1_mod, tw.Q1_gt_N, ?le21000, ?le1e8⟩
  · -- each inhabitant has Q1 ≤ 30113 ≤ 31000; close per table chunk
    have := TWAuxEllFixedExists_10000_all h
    exact next_Q1_le_31000 tw
  · exact Nat.le_trans (next_Q1_le_31000 tw)
      (by decide : (31000 : Nat) ≤ 100000000)

/-- Largest explicit `Q₁` at `N = 10000` is `30113`. -/
theorem next_Q1_le_31000 {{ℓ : Nat}} (tw : TWAuxEllFixed ℓ 10000) :
    tw.Q1ell ≤ 10000 + 21000 := by
  have h := tw.Q1_gt_N
  -- replaced below after generation if needed
  exact Nat.le_trans (Nat.succ_le_of_lt h)
    (by decide : (10001 : Nat) ≤ 10000 + 21000)

end BealLevel26Foundations.Beal.FullProof.TWAuxEllFixed
"""
    # The weak bound 10001 ≤ 31000 is TRUE but that's not what we want
    # to claim as "Q1 ≤ 31000 from the table". Q1_gt_N only gives Q1 ≥ 10001.
    # Q1 ≤ 31000 is a table fact. Don't pretend the weak inequality is the
    # table bound in a misleading way — 10001 ≤ 31000 is always true and
    # does NOT prove tw.Q1ell ≤ 31000.
    #
    # Honest: drop next_Q1_gt_N_exists_10000 as a single inequality
    # unless we prove Q1 ≤ 30113 per row. The Exists_10000_all theorem
    # already packages the table. Per-row decide already has Q1_gt_N.
    text = f"""/-
Copyright (c) 2026 David Fox. All rights reserved.
Released under MIT license as described in the file LICENSE.
Authors: David Fox

Track B v8.17.0 — `TWAuxEllFixed` at the two conductors
`N = 26` and `N = 10000` for every residual in
`InTWEll1000`.  Not `∀ N ≤ 10000`.  Completeness
`Nat.Prime ℓ → 5 ≤ ℓ ≤ 1000` is still only
kernel-checked on `[5, 100]` via `Finset.filter`.
`ℓ = 941` needs `Q₁ = 30113` (`N + 21000`).
`ℓ = 29` at `N = 10000` uses `Q₁ = 10151`
so `Q₁ ≠ Q₂ = 10093`.
-/

import BealLevel26Foundations.Beal.FullProof.TWAuxEllFixedCore
import BealLevel26Foundations.Beal.FullProof.TWPrimes
{imports}

namespace BealLevel26Foundations.Beal.FullProof.TWAuxEllFixed

open BealLevel26Foundations.Beal.FullProof.TWAuxEllFixedCore
open BealLevel26Foundations.Beal.FullProof.TWPrimes
{opens}

/-!
Full `next_Q1_gt_N` / next-`Q₂` table.

`ell  Q1@26  Q1@10000  Q2@26  Q2@10000`
{table}
-/

theorem TWAuxEllFixedExists_26_all {{ℓ : Nat}}
    (h : InTWEll1000 ℓ) : TWAuxEllFixedExists ℓ 26 := by
  rcases h with h | h | h | h | h | h | h | h | h | h
{cases26}

theorem TWAuxEllFixedExists_10000_all {{ℓ : Nat}}
    (h : InTWEll1000 ℓ) : TWAuxEllFixedExists ℓ 10000 := by
  rcases h with h | h | h | h | h | h | h | h | h | h
{cases10k}

end BealLevel26Foundations.Beal.FullProof.TWAuxEllFixed
"""
    path.write_text(text)
    print("wrote", path)


def main():
    rows = load_rows()
    assert len(rows) == 166
    assert rows[29][1] == 10151
    assert rows[941][1] == 30113
    for lo, hi, tag, finset_tag, q1mod, q2mod in RANGES:
        order = load_finset_order(ROOT / f"{q1mod}.lean", f"primes{finset_tag}")
        for ell in order:
            assert lo <= ell <= hi, (ell, lo, hi)
            assert ell in rows
        write_chunk(lo, hi, tag, finset_tag, q1mod, q2mod, rows, order)
    write_aggregator(rows)


if __name__ == "__main__":
    main()
