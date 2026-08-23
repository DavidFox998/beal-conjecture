---
name: Lean tsum even-odd rewriting direction
description: Which direction to apply tsum_even_add_odd and common mistake
---

`tsum_even_add_odd he ho : ∑' k, f(2k) + ∑' k, f(2k+1) = ∑' n, f n`

**Rule:** To simplify a goal whose LHS is already in even+odd form, use `rw [tsum_even_add_odd he ho]` (forward). Use `rw [← tsum_even_add_odd ...]` only when the FULL tsum `∑' n, f n` appears in the goal and you want to split it.

**Why:** The lemma's LHS is the even+odd sum and its RHS is the full tsum. Rewriting backwards (`←`) looks for `∑' n, f n` in the goal and replaces it with even+odd — the opposite of what you usually want when the goal already has even+odd on the left.

**How to apply:** When proving `∑' k, even_term + ∑' k, odd_term = X`, use `rw [tsum_even_add_odd he ho]` first to collapse to `∑' n, f n = X`, then prove the full-tsum goal.
