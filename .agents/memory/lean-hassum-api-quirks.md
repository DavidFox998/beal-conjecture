---
name: Lean 4.15 HasSum API quirks
description: Non-obvious HasSum/Tendsto API names and pitfalls in Lean 4.15 Mathlib, discovered while closing SiegelZeroFreeElementary sorrys.
---

# Lean 4.15 HasSum / Tendsto API Quirks

**Why:** These tripped up proof compilation repeatedly and are hard to find by grepping.

## HasSum

- **`HasSum.congr` does not exist.** Use `HasSum.congr_fun` with *reversed* equality direction: the proof must show `new_term k = old_term k` (new = old, not old = new).
- **`HasSum.zero_add` exists** (via `@[to_additive]` from `HasProd.zero_mul` in `Mathlib/Topology/Algebra/InfiniteSum/NatInt.lean`). Signature: `(h : HasSum (fun n => f (n+1)) a) : HasSum f (f 0 + a)`. **Must provide `f` explicitly** (`HasSum.zero_add (f := ...)`) or elaboration causes a whnf timeout on complex LSeries terms.
- **`HasSum.mul_left`, `.div_const`, `.neg`, `.sub`, `.unique`, `.tsum_eq`** all exist via `@[to_additive]`.
- **`hasSum_nat_add_iff`** direction: `HasSum (fun n => f (n+k)) a ↔ HasSum f (a + ∑ i ∈ range k, f i)`. Provide `f` explicitly to avoid unification timeouts.
- **`ZMod.LSeriesSummable_of_one_lt_re` already returns the summability proof** expected by `tsum_eq_zero_add`; there is no `.summable` field. For large LSeries terms, bind the term function and prove the shifted tsum as a typed local equality rather than rewriting the entire goal.
- **`tsum_even_add_odd` needs an explicit source function** when the even/odd expressions contain cast normalization such as `2*k+1+1` versus `2*k+2`. Define the source function, transport each summability proof through a local function equality, then apply the theorem; this avoids expensive unification over `tsum`.

## cpow / rpow

- **`cpow_ne_zero` does not exist.** Use instead:
  - `(2:ℂ)^s ≠ 0`: `by norm_num [cpow_eq_zero_iff]`
  - `(k+1:ℂ)^s ≠ 0`: `natCast_add_one_cpow_ne_zero k s`
- **`tendsto_rpow_neg_atTop`** exists: `(hy : 0 < y) : Tendsto (fun x : ℝ => x ^ (-y)) atTop (𝓝 0)`. Clean way to prove `(n+1)^(-σ) → 0`.
- **`Complex.cpow_add` now takes its two exponents explicitly**: `cpow_add y z hx`; the base is inferred. Normalize inverse forms with `cpow_neg` before relying on commutative-ring simplification.

## simp / unfold

- **`simp only [myDef]`** makes no progress on a goal with a partially-applied private `def` (e.g. `Tendsto (eta_term σ) atTop ...` where `eta_term σ` is not fully applied). Use `exact` directly — `exact` uses definitional equality and can see through the def. Or use `show` to restate with the unfolded form.
- **`simp only [myDef, Function.funext_iff]`** — same failure mode; avoid.
- **Documentation comments must remain adjacent to their declaration.** Put a temporary `set_option maxHeartbeats` command before the doc comment, and reset it immediately after a costly proof; inserting it between the doc comment and a `private lemma` is a parse error.

## How to apply

When writing HasSum proofs in SiegelZeroFreeElementary or similar files, always provide `f` explicitly to `HasSum.zero_add` / `hasSum_nat_add_iff` to avoid whnf timeouts. For tendsto-to-zero proofs involving `(n+1)^(-σ)`, reach for `tendsto_rpow_neg_atTop`.
