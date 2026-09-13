#!/usr/bin/env python3
"""Emit the 352-row B14_full residue cover (mod53 + mod29 + mod109).

Does not regenerate BealFreyModQKill.lean.  Prints Lean to stdout.
"""
from __future__ import annotations

from pathlib import Path

ROOT = Path(__file__).resolve().parents[1]
STEP = ROOT / "lean/BealLevel26Foundations/Beal/FullProof/Step60B14List.lean"
MOD53 = ROOT / "lean/BealLevel26Foundations/Beal/FullProof/BealFreyMod53Kill.lean"
MODQ = ROOT / "lean/BealLevel26Foundations/Beal/FullProof/BealFreyModQKill.lean"


def load_list(path: Path, defname: str) -> list[int]:
    text = path.read_text()
    start = text.find(f"def {defname}")
    chunk = text[start:]
    lb = chunk.find("[")
    rb = chunk.find("]")
    return [
        int(x.strip().rstrip(","))
        for x in chunk[lb + 1 : rb].split()
        if x.strip().rstrip(",").isdigit()
    ]


def rhs(B: int, q: int) -> int:
    return (pow(B + 3, 13, q) - pow(B, 4, q)) % q


def kill_line(B: int, q: int) -> str:
    r = B % q
    R = rhs(B, q)
    if q == 53:
        return (
            "BealLevel26Foundations.BealFreyMod53Kill.direct_mod53_kill "
            f"{B}\n"
            f"      (not_fourth_rhs_mod53_of_res {B} {r} rfl "
            f"BealLevel26Foundations.BealFreyMod53Kill.not_is_fourth_{R})"
        )
    return (
        f"direct_mod{q}_kill {B}\n"
        f"      (not_fourth_rhs_mod{q}_of_res {B} {r} rfl not_is_fourth_{q}_{R})"
    )


def main() -> None:
    step = load_list(STEP, "step60_b14_list")
    k53 = set(load_list(MOD53, "step60_b14_killed_mod53"))
    k29 = set(load_list(MODQ, "killed_mod29"))
    k109 = set(load_list(MODQ, "killed_mod109"))
    rem109 = set(step) - k53 - k29
    assert len(step) == 352
    assert len(k53) == 266
    assert len(k29) == 77
    assert len(rem109) == 9
    assert rem109 <= k109
    assert set(step) == k53 | k29 | rem109

    kills = []
    n53 = n29 = n109 = 0
    for B in step:
        if B in k53:
            kills.append(kill_line(B, 53))
            n53 += 1
        elif B in k29:
            kills.append(kill_line(B, 29))
            n29 += 1
        else:
            assert B in rem109
            kills.append(kill_line(B, 109))
            n109 += 1
    assert (n53, n29, n109) == (266, 77, 9)

    and_proof = "True.intro"
    for k in reversed(kills):
        and_proof = f"⟨{k},\n    {and_proof}⟩"

    inner = ",\n".join(f"  {n}" for n in step)
    print(
        f"""
open BealLevel26Foundations.Step60B14List

theorem not_fourth_rhs_mod53_of_res (B r : Nat)
    (hr : B % 53 = r)
    (hnot : ¬ BealLevel26Foundations.BealFreyMod53Kill.IsFourthMod53
      (BealLevel26Foundations.BealFreyMod53Kill.rhs_mod53_res r)) :
    ¬ BealLevel26Foundations.BealFreyMod53Kill.IsFourthMod53
      (BealLevel26Foundations.BealFreyMod53Kill.rhs_mod53 B) :=
  let h1 : BealLevel26Foundations.BealFreyMod53Kill.rhs_mod53 B =
      BealLevel26Foundations.BealFreyMod53Kill.rhs_mod53_res (B % 53) :=
    BealLevel26Foundations.BealFreyMod53Kill.rhs_mod53_eq_res B
  let h2 :
      BealLevel26Foundations.BealFreyMod53Kill.rhs_mod53_res (B % 53) =
        BealLevel26Foundations.BealFreyMod53Kill.rhs_mod53_res r :=
    congrArg BealLevel26Foundations.BealFreyMod53Kill.rhs_mod53_res hr
  Eq.rec (motive := fun (t : Nat) (_ :
      BealLevel26Foundations.BealFreyMod53Kill.rhs_mod53_res r = t) =>
      ¬ BealLevel26Foundations.BealFreyMod53Kill.IsFourthMod53 t)
    hnot (h2.symm.trans h1.symm)

def step60_b14_concrete : List Nat :=
  [
{inner}
  ]

theorem step60_b14_concrete_length :
    step60_b14_concrete.length = 352 :=
  rfl

theorem step60_b14_concrete_eq :
    step60_b14_concrete = step60_b14_list :=
  rfl

set_option maxRecDepth 32768
set_option maxHeartbeats 8000000

theorem all_no_A_step60 :
    all_no_A step60_b14_concrete :=
  {and_proof}

/-- 352 named `B ≡ 14` rows: 266 by mod 53, 77 by
    q=29, 9 by q=109.  Empty axioms.  Not Ribet.
    Does not replace KrausB14.`eliminated_full`
    (the two-element mod-16 kill).
    `B14_honest` stays the uninhabited Prop. -/
theorem beal_4_13_13_gap3_B_le_2M_eliminated_B14_full
    (B : Nat) (hMem : B ∈ step60_b14_list) :
    ¬ ∃ A, Nat.pow A 4 + Nat.pow B 4 = Nat.pow (B + 3) 13 :=
  let h' : B ∈ step60_b14_concrete :=
    Eq.rec (motive := fun t (_ : step60_b14_list = t) => B ∈ t)
      hMem step60_b14_concrete_eq.symm
  no_A_of_all step60_b14_concrete all_no_A_step60 B h'

/-- User draft name, in this namespace only.
    KrausB14 / RibetMazur keep `eliminated_full`
    as the two-element `[196, 1500003]` kill. -/
theorem beal_4_13_13_gap3_B_le_2M_eliminated_full
    (B : Nat) (hMem : B ∈ step60_b14_list) :
    ¬ ∃ A, Nat.pow A 4 + Nat.pow B 4 = Nat.pow (B + 3) 13 :=
  beal_4_13_13_gap3_B_le_2M_eliminated_B14_full B hMem
"""
    )


if __name__ == "__main__":
    main()
