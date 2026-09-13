#!/usr/bin/env python3
"""Generate BealFreyModQKill.lean (q=17, 29, 109).

Count-only by default.  Pass --write to emit the Lean file.
Does not overwrite BealFreyMod53Kill.lean.
"""
from __future__ import annotations

import argparse
from pathlib import Path

ROOT = Path(__file__).resolve().parents[1]
MOD53 = ROOT / "lean/BealLevel26Foundations/Beal/FullProof/BealFreyMod53Kill.lean"
OUT = ROOT / "lean/BealLevel26Foundations/Beal/FullProof/BealFreyModQKill.lean"

PRIMES = [17, 29, 37, 41, 73, 97, 101, 109, 113, 137, 149, 157, 173]
WRITE_QS = [17, 29, 109]


def fourth_powers(q: int) -> list[int]:
    return sorted({pow(a, 4, q) for a in range(q)})


def rhs(B: int, q: int) -> int:
    return (pow(B + 3, 13, q) - pow(B, 4, q)) % q


def load_survivors() -> list[int]:
    text = MOD53.read_text()
    start = text.find("def step60_b14_survives_mod53")
    chunk = text[start:]
    lb = chunk.find("[")
    rb = chunk.find("]")
    return [
        int(x.strip().rstrip(","))
        for x in chunk[lb + 1 : rb].split()
        if x.strip().rstrip(",").isdigit()
    ]


def killed_for(surv: list[int], q: int) -> list[int]:
    fp = set(fourth_powers(q))
    return [B for B in surv if rhs(B, q) not in fp]


def emit_list(name: str, nums: list[int], indent: str = "  ") -> str:
    inner = ",\n".join(f"{indent}{n}" for n in nums)
    return f"def {name} : List Nat :=\n  [\n{inner}\n  ]\n"


def is_fourth_prop(q: int, fourths: list[int]) -> str:
    expr = f"n = {fourths[-1]}"
    for f in reversed(fourths[:-1]):
        expr = f"n = {f} ∨ ({expr})"
    return f"def IsFourthMod{q} (n : Nat) : Prop :=\n  {expr}\n"


def not_is_fourth_thm(q: int, fourths: list[int]) -> str:
    params = "\n".join(
        f"    (h{f} : Nat.beq n {f} = false)" for f in fourths
    )
    lines = [
        f"theorem not_is_fourth_{q} {{n : Nat}}",
        params,
        f"    : ¬ IsFourthMod{q} n :=",
        "  fun h =>",
        "  match h with",
    ]
    n = len(fourths)

    def emit_match(i: int, indent: str) -> None:
        f = fourths[i]
        if i == n - 2:
            lines.append(f"{indent}| Or.inl hx{i} =>")
            lines.append(f"{indent}  ne_of_beq_false' h{f} hx{i}")
            lines.append(f"{indent}| Or.inr hx{i + 1} =>")
            lines.append(
                f"{indent}  ne_of_beq_false' h{fourths[i + 1]} hx{i + 1}"
            )
            return
        lines.append(f"{indent}| Or.inl hx{i} =>")
        lines.append(f"{indent}  ne_of_beq_false' h{f} hx{i}")
        lines.append(f"{indent}| Or.inr hrest{i} =>")
        lines.append(f"{indent}  match hrest{i} with")
        emit_match(i + 1, indent + "  ")

    emit_match(0, "  ")
    lines.append("")
    return "\n".join(lines)


def not_is_fourth_n(q: int, n: int, fourths: list[int]) -> str:
    args = " ".join(
        f"(show Nat.beq {n} {f} = false from rfl)" for f in fourths
    )
    return (
        f"theorem not_is_fourth_{q}_{n} : ¬ IsFourthMod{q} {n} :=\n"
        f"  not_is_fourth_{q} {args}\n"
    )


def or_intro(fourths: list[int], val: int) -> str:
    idx = fourths.index(val)
    last = len(fourths) - 1
    if idx == 0:
        return "Or.inl rfl"
    if idx == last:
        return "Or.inr (" * last + "rfl" + ")" * last
    return "Or.inr (" * idx + "Or.inl rfl" + ")" * idx


def fourth_pow_of_lt(q: int, fourths: list[int]) -> str:
    lines = [
        f"theorem fourth_pow_is_fourth_of_lt_{q} :",
        f"    ∀ r : Nat, r < {q} → IsFourthMod{q} (Nat.pow r 4 % {q})",
    ]
    for r in range(q):
        val = pow(r, 4, q)
        lines.append(f"  | {r}, _ => {or_intro(fourths, val)}")
    lines.append(
        f"  | n + {q}, h => absurd h (Nat.not_lt_of_le (Nat.le_add_left {q} n))"
    )
    lines.append("")
    return "\n".join(lines)


def exists_mod(q: int) -> str:
    lines = [
        f"theorem exists_mod{q} : ∀ n : Nat, ∃ q r : Nat, r < {q} ∧ n = {q} * q + r",
        "  | 0 => ⟨0, 0, by decide, rfl⟩",
        f"  | n + 1 =>",
        f"    match exists_mod{q} n with",
    ]
    for r in range(q - 1):
        lines.append(f"    | ⟨q, {r}, _, heq⟩ =>")
        lines.append(f"      ⟨q, {r + 1}, by decide,")
        lines.append("        (congrArg Nat.succ heq).trans")
        lines.append(
            f"          (show Nat.succ ({q} * q + {r}) = {q} * q + {r + 1} from rfl)⟩"
        )
    lines.append(f"    | ⟨q, {q - 1}, _, heq⟩ =>")
    lines.append("      ⟨q + 1, 0, by decide,")
    lines.append("        (congrArg Nat.succ heq).trans")
    lines.append(
        f"          (show Nat.succ ({q} * q + {q - 1}) = {q} * (q + 1) + 0 from rfl)⟩"
    )
    lines.append(f"    | ⟨_q, r + {q}, hr, _heq⟩ =>")
    lines.append(f"      absurd hr (Nat.not_lt_of_le (Nat.le_add_left {q} r))")
    lines.append("")
    return "\n".join(lines)


def toolkit(q: int) -> str:
    q1 = q - 1
    return f"""theorem add{q}_mod (x : Nat) : (x + {q}) % {q} = x % {q} :=
  let hcond : 0 < {q} ∧ {q} ≤ x + {q} :=
    ⟨Nat.succ_pos {q1}, Nat.le_add_left {q} x⟩
  let hmod := Nat.mod_eq (x + {q}) {q}
  let hif :
      (if 0 < {q} ∧ {q} ≤ x + {q} then (x + {q} - {q}) % {q} else x + {q}) =
        (x + {q} - {q}) % {q} :=
    if_pos hcond
  let hsub : x + {q} - {q} = x := rfl
  (hmod.trans hif).trans (congrArg (fun t => t % {q}) hsub)

theorem add_mul{q}_mod (n : Nat) : ∀ k : Nat, (n + {q} * k) % {q} = n % {q}
  | 0 =>
    congrArg (fun t => t % {q}) (show n + {q} * 0 = n from rfl)
  | k + 1 =>
    let h1 : n + {q} * (k + 1) = n + {q} * k + {q} :=
      (congrArg (fun t => n + t)
          (show {q} * (k + 1) = {q} * k + {q} from rfl)).trans
        (Nat.add_assoc n ({q} * k) {q})
    (congrArg (fun t => t % {q}) h1).trans
      ((add{q}_mod (n + {q} * k)).trans (add_mul{q}_mod n k))

theorem add_mul_left_{q} (a m : Nat) :
    ∀ qq : Nat, (a + m * ({q} * qq)) % {q} = a % {q}
  | 0 =>
    congrArg (fun t => t % {q}) (show a + m * ({q} * 0) = a from rfl)
  | qq + 1 =>
    let hmul : m * ({q} * (qq + 1)) = m * ({q} * qq) + m * {q} :=
      (congrArg (fun t => m * t)
          (show {q} * (qq + 1) = {q} * qq + {q} from rfl)).trans
        (Nat.mul_add m ({q} * qq) {q})
    let hsum : a + m * ({q} * (qq + 1)) = a + m * ({q} * qq) + {q} * m :=
      (congrArg (fun t => a + t) hmul).trans
        ((Nat.add_assoc a (m * ({q} * qq)) (m * {q})).symm.trans
          (congrArg (fun t => a + m * ({q} * qq) + t) (Nat.mul_comm m {q})))
    (congrArg (fun t => t % {q}) hsum).trans
      ((add_mul{q}_mod (a + m * ({q} * qq)) m).trans
        (add_mul_left_{q} a m qq))

{exists_mod(q)}
theorem eq_mod{q}_of_decomp {{n q r : Nat}}
    (hr : r < {q}) (h : n = {q} * q + r) : n % {q} = r :=
  let h1 : n % {q} = ({q} * q + r) % {q} :=
    congrArg (fun t => t % {q}) h
  let h2 : {q} * q + r = r + {q} * q := Nat.add_comm ({q} * q) r
  let h3 : ({q} * q + r) % {q} = (r + {q} * q) % {q} :=
    congrArg (fun t => t % {q}) h2
  h1.trans (h3.trans ((add_mul{q}_mod r q).trans (Nat.mod_eq_of_lt hr)))

theorem mul_mod{q} (x y : Nat) :
    (x * y) % {q} = (x % {q} * (y % {q})) % {q} :=
  match exists_mod{q} x with
  | ⟨qx, rx, hrx, hx⟩ =>
    match exists_mod{q} y with
    | ⟨qy, ry, hry, hy⟩ =>
      let hxmod : x % {q} = rx := eq_mod{q}_of_decomp hrx hx
      let hymod : y % {q} = ry := eq_mod{q}_of_decomp hry hy
      let hxy : x * y = ({q} * qx + rx) * ({q} * qy + ry) :=
        (congrArg (fun t => t * y) hx).trans
          (congrArg (fun t => ({q} * qx + rx) * t) hy)
      let hexp : ({q} * qx + rx) * ({q} * qy + ry) =
          ({q} * qx + rx) * ry + ({q} * qx + rx) * ({q} * qy) :=
        (Nat.mul_add ({q} * qx + rx) ({q} * qy) ry).trans
          (Nat.add_comm (({q} * qx + rx) * ({q} * qy)) (({q} * qx + rx) * ry))
      let hpeel1 :
          (({q} * qx + rx) * ry + ({q} * qx + rx) * ({q} * qy)) % {q} =
            (({q} * qx + rx) * ry) % {q} :=
        add_mul_left_{q} (({q} * qx + rx) * ry) ({q} * qx + rx) qy
      let hry : ({q} * qx + rx) * ry = rx * ry + ry * ({q} * qx) :=
        let hflip : ({q} * qx + rx) * ry = ry * ({q} * qx + rx) :=
          Nat.mul_comm ({q} * qx + rx) ry
        let hdist : ry * ({q} * qx + rx) = ry * ({q} * qx) + ry * rx :=
          Nat.mul_add ry ({q} * qx) rx
        let h1 : ry * ({q} * qx) + ry * rx = ry * ({q} * qx) + rx * ry :=
          congrArg (fun t => ry * ({q} * qx) + t) (Nat.mul_comm ry rx)
        let h2 : ry * ({q} * qx) + rx * ry = rx * ry + ry * ({q} * qx) :=
          Nat.add_comm (ry * ({q} * qx)) (rx * ry)
        hflip.trans (hdist.trans (h1.trans h2))
      let hpeel2 : (rx * ry + ry * ({q} * qx)) % {q} = (rx * ry) % {q} :=
        add_mul_left_{q} (rx * ry) ry qx
      let hprod : (x * y) % {q} = (rx * ry) % {q} :=
        (congrArg (fun t => t % {q}) (hxy.trans hexp)).trans
          (hpeel1.trans
            ((congrArg (fun t => t % {q}) hry).trans hpeel2))
      let hrxry : rx * ry = x % {q} * (y % {q}) :=
        (congrArg (fun t => t * ry) hxmod.symm).trans
          (congrArg (fun t => x % {q} * t) hymod.symm)
      hprod.trans (congrArg (fun t => t % {q}) hrxry)

theorem add_mod{q} (x y : Nat) :
    (x + y) % {q} = (x % {q} + y % {q}) % {q} :=
  match exists_mod{q} x with
  | ⟨qx, rx, hrx, hx⟩ =>
    match exists_mod{q} y with
    | ⟨qy, ry, hry, hy⟩ =>
      let hxmod : x % {q} = rx := eq_mod{q}_of_decomp hrx hx
      let hymod : y % {q} = ry := eq_mod{q}_of_decomp hry hy
      let hxy : x + y = ({q} * qx + rx) + ({q} * qy + ry) :=
        (congrArg (fun t => t + y) hx).trans
          (congrArg (fun t => ({q} * qx + rx) + t) hy)
      let hcomm : {q} * qy + ry = ry + {q} * qy :=
        Nat.add_comm ({q} * qy) ry
      let hxy' : ({q} * qx + rx) + ({q} * qy + ry) =
          ({q} * qx + rx) + (ry + {q} * qy) :=
        congrArg (fun t => ({q} * qx + rx) + t) hcomm
      let hassoc : ({q} * qx + rx) + (ry + {q} * qy) =
          ({q} * qx + rx) + ry + {q} * qy :=
        (Nat.add_assoc ({q} * qx + rx) ry ({q} * qy)).symm
      let hpeel : (({q} * qx + rx) + ry + {q} * qy) % {q} =
          (({q} * qx + rx) + ry) % {q} :=
        add_mul{q}_mod (({q} * qx + rx) + ry) qy
      let hcomm2 : {q} * qx + rx = rx + {q} * qx :=
        Nat.add_comm ({q} * qx) rx
      let hxy2 : ({q} * qx + rx) + ry = rx + {q} * qx + ry :=
        congrArg (fun t => t + ry) hcomm2
      let hassoc2 : rx + {q} * qx + ry = rx + ry + {q} * qx :=
        let h1 : rx + {q} * qx + ry = rx + ({q} * qx + ry) :=
          Nat.add_assoc rx ({q} * qx) ry
        let h2 : {q} * qx + ry = ry + {q} * qx :=
          Nat.add_comm ({q} * qx) ry
        let h3 : rx + ({q} * qx + ry) = rx + (ry + {q} * qx) :=
          congrArg (fun t => rx + t) h2
        let h4 : rx + (ry + {q} * qx) = rx + ry + {q} * qx :=
          (Nat.add_assoc rx ry ({q} * qx)).symm
        h1.trans (h3.trans h4)
      let hpeel2 : (rx + ry + {q} * qx) % {q} = (rx + ry) % {q} :=
        add_mul{q}_mod (rx + ry) qx
      let hsum : (x + y) % {q} = (rx + ry) % {q} :=
        (congrArg (fun t => t % {q}) (hxy.trans (hxy'.trans hassoc))).trans
          (hpeel.trans
            ((congrArg (fun t => t % {q}) (hxy2.trans hassoc2)).trans hpeel2))
      let hrxry : rx + ry = x % {q} + y % {q} :=
        (congrArg (fun t => t + ry) hxmod.symm).trans
          (congrArg (fun t => x % {q} + t) hymod.symm)
      hsum.trans (congrArg (fun t => t % {q}) hrxry)

theorem pow_mod{q} (n : Nat) :
    ∀ k : Nat, Nat.pow n k % {q} = Nat.pow (n % {q}) k % {q}
  | 0 => rfl
  | k + 1 =>
    let hs : Nat.pow n (k + 1) = Nat.pow n k * n := Nat.pow_succ n k
    let hs' : Nat.pow (n % {q}) (k + 1) =
        Nat.pow (n % {q}) k * (n % {q}) :=
      Nat.pow_succ (n % {q}) k
    let hmodmod : (n % {q}) % {q} = n % {q} :=
      Nat.mod_eq_of_lt (Nat.mod_lt n (Nat.succ_pos {q1}))
    let h1 : (Nat.pow n k * n) % {q} =
        (Nat.pow n k % {q} * (n % {q})) % {q} :=
      mul_mod{q} (Nat.pow n k) n
    let h2 : (Nat.pow n k % {q} * (n % {q})) % {q} =
        (Nat.pow (n % {q}) k % {q} * (n % {q})) % {q} :=
      congrArg (fun t => (t * (n % {q})) % {q}) (pow_mod{q} n k)
    let h3 : (Nat.pow (n % {q}) k * (n % {q})) % {q} =
        (Nat.pow (n % {q}) k % {q} * ((n % {q}) % {q})) % {q} :=
      mul_mod{q} (Nat.pow (n % {q}) k) (n % {q})
    let h4 : (Nat.pow (n % {q}) k % {q} * (n % {q})) % {q} =
        (Nat.pow (n % {q}) k * (n % {q})) % {q} :=
      (congrArg (fun t => (Nat.pow (n % {q}) k % {q} * t) % {q})
          hmodmod.symm).trans h3.symm
    (congrArg (fun t => t % {q}) hs).trans
      (h1.trans (h2.trans (h4.trans
        (congrArg (fun t => t % {q}) hs'.symm))))

theorem fourth_pow_is_fourth_{q} (A : Nat) :
    IsFourthMod{q} (Nat.pow A 4 % {q}) :=
  let hr : A % {q} < {q} := Nat.mod_lt A (Nat.succ_pos {q1})
  let hpow : Nat.pow A 4 % {q} = Nat.pow (A % {q}) 4 % {q} :=
    pow_mod{q} A 4
  Eq.rec (motive := fun (t : Nat) (_ : Nat.pow (A % {q}) 4 % {q} = t) =>
      IsFourthMod{q} t)
    (fourth_pow_is_fourth_of_lt_{q} (A % {q}) hr) hpow.symm

theorem sub_add_cancel_{q} {{n : Nat}} (h : {q} ≤ n) :
    n - {q} + {q} = n :=
  match Nat.le.dest h with
  | ⟨k, hk⟩ =>
    let hsub : n - {q} = k :=
      let hcomm : {q} + k = k + {q} := Nat.add_comm {q} k
      let hcancel : k + {q} - {q} = k := rfl
      (congrArg (fun t => t - {q}) (hk.symm.trans hcomm)).trans hcancel
    let hsum : n - {q} + {q} = k + {q} :=
      congrArg (fun t => t + {q}) hsub
    hsum.trans ((Nat.add_comm k {q}).trans hk)

theorem residue_sub_mod{q} (a b c : Nat)
    (ha : a < {q}) (hb : b < {q}) (_hc : c < {q})
    (h : (a + b) % {q} = c) :
    a = (c + {q} - b) % {q} :=
  match Nat.decLe {q} (a + b) with
  | isFalse hnot =>
    let hlt : a + b < {q} := Nat.not_le.mp hnot
    let hmod : (a + b) % {q} = a + b := Nat.mod_eq_of_lt hlt
    let hab : a + b = c := hmod.symm.trans h
    let hsum : c + {q} - b = a + {q} :=
      let h1 : c + {q} - b = a + b + {q} - b :=
        congrArg (fun t => t + {q} - b) hab.symm
      let h2 : a + b + {q} = a + {q} + b :=
        let h2a : a + b + {q} = a + (b + {q}) := Nat.add_assoc a b {q}
        let h2b : b + {q} = {q} + b := Nat.add_comm b {q}
        let h2c : a + (b + {q}) = a + ({q} + b) :=
          congrArg (fun t => a + t) h2b
        let h2d : a + ({q} + b) = a + {q} + b :=
          (Nat.add_assoc a {q} b).symm
        h2a.trans (h2c.trans h2d)
      let h3 : a + {q} + b - b = a + {q} :=
        add_sub_cancel_empty (a + {q}) b
      h1.trans ((congrArg (fun t => t - b) h2).trans h3)
    let hmod2 : (c + {q} - b) % {q} = (a + {q}) % {q} :=
      congrArg (fun t => t % {q}) hsum
    let haq : (a + {q}) % {q} = a % {q} := add{q}_mod a
    let haeq : a % {q} = a := Nat.mod_eq_of_lt ha
    (hmod2.trans (haq.trans haeq)).symm
  | isTrue hle =>
    let hcond : 0 < {q} ∧ {q} ≤ a + b := ⟨Nat.succ_pos {q1}, hle⟩
    let hmod := Nat.mod_eq (a + b) {q}
    let hif :
        (if 0 < {q} ∧ {q} ≤ a + b then (a + b - {q}) % {q} else a + b) =
          (a + b - {q}) % {q} :=
      if_pos hcond
    let hsumq : a + b < {q} + {q} :=
      Nat.add_lt_add ha hb
    let hsublt : a + b - {q} < {q} :=
      let hrestore : a + b - {q} + {q} = a + b := sub_add_cancel_{q} hle
      let hlt' : a + b - {q} + {q} < {q} + {q} :=
        Eq.subst (motive := fun t => t < {q} + {q}) hrestore.symm hsumq
      Nat.lt_of_add_lt_add_right hlt'
    let hmodsub : (a + b - {q}) % {q} = a + b - {q} :=
      Nat.mod_eq_of_lt hsublt
    let hc' : a + b - {q} = c :=
      ((hmod.trans hif).trans hmodsub).symm.trans h
    let hsum : c + {q} - b = a :=
      let h1 : c + {q} - b = a + b - {q} + {q} - b :=
        congrArg (fun t => t + {q} - b) hc'.symm
      let h2 : a + b - {q} + {q} = a + b := sub_add_cancel_{q} hle
      let h3 : a + b - b = a := add_sub_cancel_empty a b
      h1.trans ((congrArg (fun t => t - b) h2).trans h3)
    let hmod2 : (c + {q} - b) % {q} = a % {q} :=
      congrArg (fun t => t % {q}) hsum
    let haeq : a % {q} = a := Nat.mod_eq_of_lt ha
    (hmod2.trans haeq).symm

def rhs_mod{q} (B : Nat) : Nat :=
  (Nat.pow (B + 3) 13 % {q} + {q} - Nat.pow B 4 % {q}) % {q}

def rhs_mod{q}_res (r : Nat) : Nat :=
  (Nat.pow ((r + 3) % {q}) 13 % {q} + {q} -
    Nat.pow (r % {q}) 4 % {q}) % {q}

theorem rhs_mod{q}_eq_res (B : Nat) :
    rhs_mod{q} B = rhs_mod{q}_res (B % {q}) :=
  let hC : Nat.pow (B + 3) 13 % {q} =
      Nat.pow ((B + 3) % {q}) 13 % {q} :=
    pow_mod{q} (B + 3) 13
  let hB : Nat.pow B 4 % {q} = Nat.pow (B % {q}) 4 % {q} :=
    pow_mod{q} B 4
  let h3 : 3 % {q} = 3 := rfl
  let hadd : (B + 3) % {q} = (B % {q} + 3) % {q} :=
    let h1 : (B + 3) % {q} = (B % {q} + 3 % {q}) % {q} :=
      add_mod{q} B 3
    h1.trans (congrArg (fun t => (B % {q} + t) % {q}) h3)
  let hC' : Nat.pow ((B + 3) % {q}) 13 % {q} =
      Nat.pow ((B % {q} + 3) % {q}) 13 % {q} :=
    congrArg (fun t => Nat.pow t 13 % {q}) hadd
  let hmodmod : (B % {q}) % {q} = B % {q} :=
    Nat.mod_eq_of_lt (Nat.mod_lt B (Nat.succ_pos {q1}))
  let hB' : Nat.pow (B % {q}) 4 % {q} =
      Nat.pow ((B % {q}) % {q}) 4 % {q} :=
    congrArg (fun t => Nat.pow t 4 % {q}) hmodmod.symm
  (congrArg (fun t => (t + {q} - Nat.pow B 4 % {q}) % {q})
      (hC.trans hC')).trans
    (congrArg
      (fun t =>
        (Nat.pow ((B % {q} + 3) % {q}) 13 % {q} + {q} - t) % {q})
      (hB.trans hB'))

theorem direct_mod{q}_kill (B : Nat)
    (h : ¬ IsFourthMod{q} (rhs_mod{q} B)) :
    ¬ ∃ A, Nat.pow A 4 + Nat.pow B 4 = Nat.pow (B + 3) 13 := by
  intro ⟨A, hEq⟩
  let a := Nat.pow A 4 % {q}
  let b := Nat.pow B 4 % {q}
  let c := Nat.pow (B + 3) 13 % {q}
  let hsum : (Nat.pow A 4 + Nat.pow B 4) % {q} = c :=
    congrArg (fun n => n % {q}) hEq
  let hadd : (a + b) % {q} = c :=
    (add_mod{q} (Nat.pow A 4) (Nat.pow B 4)).symm.trans hsum
  let ha : a < {q} := Nat.mod_lt (Nat.pow A 4) (Nat.succ_pos {q1})
  let hb : b < {q} := Nat.mod_lt (Nat.pow B 4) (Nat.succ_pos {q1})
  let hc : c < {q} := Nat.mod_lt (Nat.pow (B + 3) 13) (Nat.succ_pos {q1})
  let hrhs : a = rhs_mod{q} B :=
    residue_sub_mod{q} a b c ha hb hc hadd
  let hA : IsFourthMod{q} a := fourth_pow_is_fourth_{q} A
  let hRhs : IsFourthMod{q} (rhs_mod{q} B) :=
    Eq.rec (motive := fun (t : Nat) (_ : a = t) => IsFourthMod{q} t) hA hrhs
  exact h hRhs

theorem not_fourth_rhs_mod{q}_of_res (B r : Nat)
    (hr : B % {q} = r)
    (hnot : ¬ IsFourthMod{q} (rhs_mod{q}_res r)) :
    ¬ IsFourthMod{q} (rhs_mod{q} B) :=
  let h1 : rhs_mod{q} B = rhs_mod{q}_res (B % {q}) := rhs_mod{q}_eq_res B
  let h2 : rhs_mod{q}_res (B % {q}) = rhs_mod{q}_res r :=
    congrArg rhs_mod{q}_res hr
  Eq.rec (motive := fun (t : Nat) (_ : rhs_mod{q}_res r = t) =>
      ¬ IsFourthMod{q} t)
    hnot (h2.symm.trans h1.symm)
"""


HEADER = r"""/-
Copyright (c) 2026 David Fox. All rights reserved.
Released under MIT license as described in the file LICENSE.
Authors: David Fox

Track B v8.84.0 — fourth-power non-residue kill of the
86 mod-53 survivors at q = 17, 29, 109.

If `(B+3)¹³ − B⁴` is not a fourth power in `𝔽_q`,
there is no `A` with `A⁴ + B⁴ = (B+3)¹³`.
That is the same arithmetic obstruction as
`direct_mod53_kill`, **not** Ribet, **not** BCDT,
**not** an Euler miss.

The user's `Finset` draft is rewritten as `List`.
Kernel `Nat.pow`, not `HPow`.  No `omega`.
`IsFourthModQ` is a nested `Or` of equalities,
not `List.Mem` / `∉`.

Scan of the 86 at
`[17,29,37,41,73,97,101,109,113,137,149,157,173]`:
every listed q kills some rows; the union covers
all 86.  A greedy cover is q=29 (77) plus q=109
(the remaining 9).  q=17 is the named example
(`fourth_powers_mod_q_17 = [0,1,4,13,16]`, 57
killed).

`#print axioms` is empty on `direct_modQ_kill`
and on `beal_..._86_modq`.
`beal_4_13_13_gap3_B_le_2M_eliminated_86` stays
the uninhabited Prop (level-lowering pack).
`B14_honest` stays the uninhabited `∀` on all 352.
Chain `ExistsNewformLevel2` stays `0 ≠ 0`.
Density/Step `kraus_elimination_q_13_level_26`
stays the uninhabited `∀`.

Does **not** import `RibetMazur`.
Does **not** import `frey_modular_13`.
Not imported by the 24-module none chain.
-/

import BealLevel26Foundations.Beal.FullProof.BealFreyMod53Kill

namespace BealLevel26Foundations.BealFreyModQKill

theorem beq_self : ∀ n : Nat, Nat.beq n n = true
  | 0 => rfl
  | n + 1 => beq_self n

theorem ne_of_beq_false' {n m : Nat} (hnm : Nat.beq n m = false) :
    n ≠ m :=
  fun h =>
    let htrue : Nat.beq n n = true := beq_self n
    let heq : true = false :=
      htrue.symm.trans ((congrArg (Nat.beq n) h).trans hnm)
    Bool.noConfusion heq

theorem add_sub_cancel_empty (n : Nat) : ∀ k : Nat, n + k - k = n
  | 0 => rfl
  | k + 1 =>
    (Nat.succ_sub_succ (n + k) k).trans (add_sub_cancel_empty n k)

"""


FOOT_SHARED = r"""
def all_no_A : List Nat → Prop
  | [] => True
  | x :: xs =>
      (¬ ∃ A, Nat.pow A 4 + Nat.pow x 4 = Nat.pow (x + 3) 13) ∧
        all_no_A xs

theorem no_A_of_all :
    ∀ l : List Nat, all_no_A l →
      ∀ B : Nat, B ∈ l →
        ¬ ∃ A, Nat.pow A 4 + Nat.pow B 4 = Nat.pow (B + 3) 13
  | [], _, _B, hB => nomatch hB
  | _x :: xs, ⟨hx, hxs⟩, B, hB =>
    match hB with
    | List.Mem.head _ => hx
    | List.Mem.tail _ h' => no_A_of_all xs hxs B h'

"""


def emit_q_block(q: int, surv: list[int]) -> tuple[str, list[int], set[int]]:
    fourths = fourth_powers(q)
    killed = killed_for(surv, q)
    used_res = {rhs(B, q) for B in killed}
    parts: list[str] = []
    parts.append(f"/-! ## Fourth powers modulo {q} -/\n")
    parts.append(emit_list(f"fourth_powers_mod{q}", fourths))
    parts.append(
        f"\ntheorem fourth_powers_mod{q}_length :\n"
        f"    fourth_powers_mod{q}.length = {len(fourths)} :=\n  rfl\n"
    )
    if q == 17:
        parts.append(
            "\n/-- User-facing alias.  `List`, not `Finset`. -/\n"
            "def fourth_powers_mod_q_17 : List Nat :=\n"
            "  fourth_powers_mod17\n"
        )
    parts.append("\n" + is_fourth_prop(q, fourths) + "\n")
    parts.append(not_is_fourth_thm(q, fourths) + "\n")
    for n in sorted(used_res):
        parts.append(not_is_fourth_n(q, n, fourths))
    parts.append("\n" + fourth_pow_of_lt(q, fourths))
    parts.append(f"\n/-! ## Empty-axiom `Nat` toolkit modulo {q} -/\n\n")
    parts.append(toolkit(q))
    parts.append(emit_list(f"killed_mod{q}", killed))
    parts.append(
        f"\ntheorem killed_mod{q}_length :\n"
        f"    killed_mod{q}.length = {len(killed)} :=\n  rfl\n"
    )
    parts.append(
        f"""
def all_killed_mod{q} : List Nat → Prop
  | [] => True
  | x :: xs =>
      ¬ IsFourthMod{q} (rhs_mod{q}_res (x % {q})) ∧ all_killed_mod{q} xs

set_option maxRecDepth 32768
set_option maxHeartbeats 4000000

"""
    )
    conjuncts = []
    for B in killed:
        r = rhs(B, q)
        conjuncts.append(f"not_is_fourth_{q}_{r}")
    and_proof = "True.intro"
    for c in reversed(conjuncts):
        and_proof = f"⟨{c}, {and_proof}⟩"
    parts.append(
        f"theorem all_killed_mod{q}_list :\n"
        f"    all_killed_mod{q} killed_mod{q} :=\n"
        f"  {and_proof}\n"
    )
    parts.append(
        f"""
theorem not_fourth_of_all_killed_{q} :
    ∀ l : List Nat, all_killed_mod{q} l →
      ∀ B : Nat, B ∈ l → ¬ IsFourthMod{q} (rhs_mod{q}_res (B % {q}))
  | [], _, _B, hB => nomatch hB
  | _x :: xs, ⟨hx, hxs⟩, B, hB =>
    match hB with
    | List.Mem.head _ => hx
    | List.Mem.tail _ h' => not_fourth_of_all_killed_{q} xs hxs B h'

theorem killed_mod{q}_rhs (B : Nat)
    (hB : B ∈ killed_mod{q}) :
    ¬ IsFourthMod{q} (rhs_mod{q} B) :=
  let hnot : ¬ IsFourthMod{q} (rhs_mod{q}_res (B % {q})) :=
    not_fourth_of_all_killed_{q} killed_mod{q}
      all_killed_mod{q}_list B hB
  Eq.rec (motive := fun t (_ : rhs_mod{q}_res (B % {q}) = t) =>
      ¬ IsFourthMod{q} t)
    hnot (rhs_mod{q}_eq_res B).symm

theorem beal_4_13_13_gap3_B_le_2M_eliminated_86_mod{q}
    (B : Nat) (hB : B ∈ killed_mod{q}) :
    ¬ ∃ A, Nat.pow A 4 + Nat.pow B 4 = Nat.pow (B + 3) 13 :=
  direct_mod{q}_kill B (killed_mod{q}_rhs B hB)
"""
    )
    if q == 17:
        parts.append(
            """
/-- User-facing alias of `direct_mod17_kill`. -/
theorem direct_mod_q_17_kill (B : Nat)
    (h : ¬ IsFourthMod17 (rhs_mod17 B)) :
    ¬ ∃ A, Nat.pow A 4 + Nat.pow B 4 = Nat.pow (B + 3) 13 :=
  direct_mod17_kill B h
"""
        )
    return "".join(parts), killed, used_res


def emit_combined(surv: list[int], killed29: list[int], killed109: list[int]) -> str:
    k29 = set(killed29)
    parts: list[str] = []
    parts.append(emit_list("survivors_86_concrete", surv))
    parts.append(
        """
theorem survivors_86_concrete_length :
    survivors_86_concrete.length = 86 :=
  rfl

theorem survivors_86_concrete_eq :
    survivors_86_concrete =
      BealLevel26Foundations.BealFreyMod53Kill.survivors_86_list :=
  rfl

"""
    )
    parts.append(FOOT_SHARED)
    kills = []
    for B in surv:
        if B in k29:
            q = 29
        else:
            assert B in set(killed109), B
            q = 109
        r = B % q
        R = rhs(B, q)
        kills.append(
            f"direct_mod{q}_kill {B}\n"
            f"      (not_fourth_rhs_mod{q}_of_res {B} {r} rfl not_is_fourth_{q}_{R})"
        )
    and_proof = "True.intro"
    for k in reversed(kills):
        and_proof = f"⟨{k},\n    {and_proof}⟩"
    parts.append(
        "set_option maxRecDepth 32768\n"
        "set_option maxHeartbeats 4000000\n\n"
        "theorem all_no_A_survivors_86 :\n"
        "    all_no_A survivors_86_concrete :=\n"
        f"  {and_proof}\n"
    )
    parts.append(
        """
/-- All 86 mod-53 survivors die by a fourth-power
    non-residue at q=29 (77 rows) or q=109 (9 rows).
    Empty axioms.  Not Ribet.  Not BCDT.
    The pack name
    `beal_4_13_13_gap3_B_le_2M_eliminated_86`
    stays the uninhabited Prop. -/
theorem beal_4_13_13_gap3_B_le_2M_eliminated_86_modq
    (B : Nat)
    (hMem : B ∈ BealLevel26Foundations.BealFreyMod53Kill.survivors_86_list) :
    ¬ ∃ A, Nat.pow A 4 + Nat.pow B 4 = Nat.pow (B + 3) 13 :=
  let h' : B ∈ survivors_86_concrete :=
    Eq.rec (motive := fun t (_ :
        BealLevel26Foundations.BealFreyMod53Kill.survivors_86_list = t) =>
        B ∈ t)
      hMem survivors_86_concrete_eq.symm
  no_A_of_all survivors_86_concrete all_no_A_survivors_86 B h'

#check fourth_powers_mod17
#check fourth_powers_mod_q_17
#check fourth_powers_mod29
#check fourth_powers_mod109
#check rhs_mod17
#check rhs_mod29
#check rhs_mod109
#check direct_mod17_kill
#check direct_mod_q_17_kill
#check direct_mod29_kill
#check direct_mod109_kill
#check killed_mod17
#check killed_mod29
#check killed_mod109
#check beal_4_13_13_gap3_B_le_2M_eliminated_86_mod17
#check beal_4_13_13_gap3_B_le_2M_eliminated_86_mod29
#check beal_4_13_13_gap3_B_le_2M_eliminated_86_mod109
#check beal_4_13_13_gap3_B_le_2M_eliminated_86_modq
#print axioms direct_mod17_kill
#print axioms direct_mod_q_17_kill
#print axioms direct_mod29_kill
#print axioms direct_mod109_kill
#print axioms beal_4_13_13_gap3_B_le_2M_eliminated_86_mod17
#print axioms beal_4_13_13_gap3_B_le_2M_eliminated_86_mod29
#print axioms beal_4_13_13_gap3_B_le_2M_eliminated_86_mod109
#print axioms beal_4_13_13_gap3_B_le_2M_eliminated_86_modq

end BealLevel26Foundations.BealFreyModQKill
"""
    )
    return "".join(parts)


def scan(surv: list[int]) -> None:
    print("survivors", len(surv))
    fp_union: set[int] = set(surv)
    for q in PRIMES:
        fp = fourth_powers(q)
        killed = killed_for(surv, q)
        print(q, "fourths", len(fp), fp[:8], "...", "killed", len(killed), killed[:5])
        fp_union -= set(killed)
    print("remain after all q", len(fp_union), sorted(fp_union))
    k29 = set(killed_for(surv, 29))
    rem = [B for B in surv if B not in k29]
    k109 = set(killed_for(surv, 109))
    print("remain after 29", len(rem), rem)
    print("those killed by 109", all(B in k109 for B in rem))


def main() -> None:
    ap = argparse.ArgumentParser()
    ap.add_argument("--write", action="store_true")
    args = ap.parse_args()
    surv = load_survivors()
    assert len(surv) == 86, len(surv)
    scan(surv)
    if not args.write:
        return
    parts = [HEADER]
    killed_map: dict[int, list[int]] = {}
    for q in WRITE_QS:
        block, killed, _used = emit_q_block(q, surv)
        killed_map[q] = killed
        parts.append(block)
    parts.append(emit_combined(surv, killed_map[29], killed_map[109]))
    OUT.parent.mkdir(parents=True, exist_ok=True)
    OUT.write_text("".join(parts))
    print("wrote", OUT, "bytes", OUT.stat().st_size)


if __name__ == "__main__":
    main()
