# v8.1.0 ModularImpliesNewform Step 5 arithmetic

`lean/BealLevel26Foundations/Beal/FullProof/ModularImpliesNewform.lean`

Step 5 toward Beal `∀` on **positive** bases.  The
none-chain sketch
`Beal.BealForall.beal_forall_from_Is13Case_sketch`
stays **uninhabited**.  No `sorry`.  No `False.elim`.
This file does **not** import `BealForall.lean`.

| Name | Status |
|---|---|
| `PositiveBealTriple` | `0 < A,B,C`, `2 < m,n,p`, equation, `gcd = 1` |
| `sketch_fails_on_zero_one_counterexample` | unguarded `∀` is `False` (`0³ + 1³ = 1³`) |
| `Gamma0_2` | Mathlib `CongruenceSubgroup.Gamma0 2` |
| `S2_Gamma0_2_zero_cert` | displayed `s2_gamma0_2_dim = 0` (`rfl` cert) |
| `TW_Q_base_53` / `TW_Q_base_677` | `53 % 13 = 1`, `677 % 169 = 1` by `rfl` |
| `GaloisRepModular` | bookkeeping residual data, not a Mathlib Galois rep |
| `modular_implies_ribet_level_two` | `N / ∏q = 2` from `ribet_level_quotient` |
| `modular_implies_level2_arithmetic` | Tate + Ribet + TW + `R≃T` + `S₂=0` + four cusps + `M₃` det 2 |
| `ModularImpliesLevel2Newform` | missing Mathlib arrow `Modular w → ExistsNewformLevel2` (**Prop**, not a theorem) |
| `beal_forall_proof_positive` | positive-bases Beal **from** that arrow |
| `beal_forall_from_Is13Case_sketch_stays_uninhabited` | lock: the unguarded sketch is not this file's theorem |

`#print axioms` on `modular_implies_level2_arithmetic`
and `beal_forall_proof_positive` is
`[propext, Classical.choice, Quot.sound]`.
`sketch_fails_on_zero_one_counterexample` is `[propext]`.
No `sorryAx`.

Why this is not an unconditional Beal theorem:

1. The unguarded sketch omits `0 < A,B,C`.
   `0³ + 1³ = 1³` is a counterexample.
2. Mathlib 4.12 has `Γ₀(N)` as a congruence subgroup
   and does **not** have a Wiles modularity or Ribet
   functor that produces `ExistsNewformLevel2` (`0 ≠ 0`).
   `wiles_modularity_Frey` is the Wiles-domain input.

`BealForallProof.beal_forall_proof` equals
`beal_forall_proof_positive`.  Track A About mint
stays `22635221`.  Track B does **not** mint a Zenodo
claiming Beal `∀`.
