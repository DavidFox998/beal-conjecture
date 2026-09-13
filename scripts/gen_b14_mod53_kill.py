#!/usr/bin/env python3
"""Count the mod-53 fourth-power kill on step60_b14_list.

The Lean source of truth is
  lean/BealLevel26Foundations/Beal/FullProof/BealFreyMod53Kill.lean
This script only verifies the 266/86 split.  Do not claim 287:
that count is false on this list.
"""
from pathlib import Path

ROOT = Path(__file__).resolve().parents[1]
STEP = ROOT / "lean/BealLevel26Foundations/Beal/FullProof/Step60B14List.lean"
FOURTHS = {0, 1, 10, 13, 15, 16, 24, 28, 36, 42, 44, 46, 47, 49}


def load_b14():
    text = STEP.read_text()
    start = text.find("def step60_b14_list")
    chunk = text[start:]
    lb = chunk.find("[")
    rb = chunk.find("]")
    return [
        int(x.strip().rstrip(","))
        for x in chunk[lb + 1 : rb].split()
        if x.strip().rstrip(",").isdigit()
    ]


def rhs(B: int) -> int:
    return (pow(B + 3, 13, 53) - pow(B, 4, 53)) % 53


def main():
    nums = load_b14()
    killed = [B for B in nums if rhs(B) not in FOURTHS]
    surv = [B for B in nums if rhs(B) in FOURTHS]
    print("named", len(nums), "killed", len(killed), "survives", len(surv))
    assert len(nums) == 352
    assert len(killed) == 266, len(killed)
    assert len(surv) == 86, len(surv)
    print("ok: 266 killed, 86 remaining (not 287)")


if __name__ == "__main__":
    main()
