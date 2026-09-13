# v7.2.1 TrueConductor Tate filled

`lean/BealLevel26Foundations/Beal/FullProof/TrueConductor.lean`

Step 1 toward inhabiting `beal_forall_from_Is13Case_sketch`
(Tate + true gcd, every prime).  The sketch itself stays
uninhabited.  No `sorry`.  No `False.elim`.  Empty-Type
witnesses from v7.2.0 are theorems.

| Name | Status |
|---|---|
| `PrimitiveBealTriple` | packed primitive Beal equation `2 < m,n,p`, `gcd=1` |
| `FreyCurve` / `freyCurveOf` | mixed-exponent Frey model `Y² = X(X − Aᵐ)(X + Bⁿ)` |
| `frey_Delta` / `frey_Delta_of_equation` | `Δ = 16 (Aᵐ)² (Bⁿ)² (Cᵖ)²` by `ring`, not an `rfl` token |
| `frey_c4_formula` | `c₄ = 16 ((Aᵐ)² + Aᵐ Bⁿ + (Bⁿ)²)` by `ring` |
| `pairwise_coprime` | true gcd step on bases |
| `true_gcd_pairwise` | `Aᵐ`, `Bⁿ`, `Cᵖ` pairwise coprime |
| `odd_prime_not_dvd_c4` | odd `q ∣ ABC` does not divide `c₄` |
| `kodairaTate` / `conductorExponentTate` | Tate 1975 Step 2 as a function of valuations |
| `tate_odd_prime` | `v_q(c₄)=0`, exact `v_q(Δ)`, Kodaira `I_n`, exponent `1` |
| `frey_minimal_model_at_odd_prime` | `v_q(c₄)=0` ⇒ `p`-minimal |
| `tate_two` | this model has `v₂(c₄)=4` (not Step 2); `2` has radical exponent `1` |
| `frey_global_conductor` | `N = 2 · ∏_{odd q\|ABC} q = rad(ABC)` |
| `FreyTwoAdicExponentOneCertificate` | supplier, matching `FreyConductorData_26` |
| `FreyTwoAdicConductorCertificate` | supplier |
| `beal_forall_from_Is13Case_sketch_stays_uninhabited` | lock: the quantified Beal statement is not this file's theorem |

`#print axioms` on `true_gcd_pairwise`, `tate_odd_prime`,
`tate_two`, and `frey_global_conductor` is
`[propext, Classical.choice, Quot.sound]`.  No `sorryAx`.

Mathlib 4.12 has no `MinimalModel` / Kodaira / conductor
API.  Tate Step 2 is the published valuation criterion
(Silverman AEC IV.9 / Tate 1975).  A 2-adic change of
variables that would put this integral model into Step 2
is not a `VariableChange` over `ℤ`.

The v7.1.0 `frey_beal_forall_none_formula` none chain is
untouched.  This module is a separate FullProof lake root.
