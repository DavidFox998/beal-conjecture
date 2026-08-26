---
name: Beal final-proof CI
description: Durable rules for auditing the Beal final theorem's mathematical assumptions under Lean 4.12.
---

## Rule
Audit the final Beal theorem for exactly these named domain axioms:

- `Beal.FreyTate.wiles_modularity`
- `Beal.FreyTate.TateStep2.tate_step2_I_n_conductor_one`
- `Beal.RibetIterate.ribet_single_step`

Reject `sorryAx` everywhere. Treat `propext`, `Classical.choice`, and `Quot.sound` as foundational Lean dependencies rather than additional mathematical assumptions.

**Why:** Finset and ZMod proofs can introduce the latter foundational dependencies even when the only mathematical assumptions are the three approved theorems. A blanket audit that rejects them incorrectly reports a fourth assumption.

**How to apply:** Keep the general no-`sorryAx` audit, then run a dedicated `#print axioms` check on the final B20 declarations. Extract both the `Beal.FreyTate` and `Beal.RibetIterate` names, sort them, and compare the complete set to the approved list exactly.

## Lean 4.12 factor API
Use `Nat.primeFactors` when working with Finsets of natural prime factors. Its matching lemmas are `Nat.prime_of_mem_primeFactors` and `Nat.dvd_of_mem_primeFactors`. The deprecated `Nat.factors` alias is a list and uses the `...primeFactorsList` lemmas.

**Why:** Simplifying a filtered `primeFactors` Finset leaves Finset membership, which is not accepted by list-factor lemmas.

**How to apply:** Choose the lemma family based on the container actually present in the goal; do not bridge a Finset membership proof to a list lemma by guesswork.
