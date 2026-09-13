# BealMatveevThm14 — v24.0.0 Matveev 2000 Thm 1.4 formalization start

**Tag.** `v24.4.0-Beal-44-13-Level-26-v24x-Final-Summary`.
**Source.** `lean/BealLevel26Foundations/Beal/FullProof/BealMatveevThm14.lean`.
**Namespace.** `BealLevel26Foundations.BealMatveevThm14`.
**Parent.** v24.3.2 `305e5f4` / `v24.3.2-Beal-44-13-Level-26-Exp-Numerical-Bound` / DOI `10.5281/zenodo.22732045`.
**Concept.** `10.5281/zenodo.22379293`.

## v24.4.0 — v24.x Final Summary

```lean
theorem matveev_v24x_summary :
    A^4 + B^4 = (B+3)^13 →
      0 < A ∧ 0 < B ∧
      |Lambda| = log(1 + B^4/A^4) ∧
      |Lambda| ≤ B^4/A^4 ∧
      B^4/A^4 = B^4 / ((B+3)^13 - B^4) ∧
      0 < B^4/A^4 ∧
      0 < exp(C) < 1e-12 ∧ exp(C) < 1 ∧
      C = -(height_B0 * log height_B0) ∧
      height_B0 = 104382751019310000000 ∧
      C1_floor * thirty_pow = 104382751019310000000 ∧
      thirty_pow = 729000000
theorem matveev_v24x_conditional_summary :
    A^4 + B^4 = (B+3)^13 →
      matveev_inequality_real_target →
        0 < exp(C) < B^4/A^4 ∧
        B^4 * (1 + exp(C)) > exp(C) * (B+3)^13
theorem bugeaud_v24x_final_link :
    bugeaud_LLL_reduction_conditional ↔
      (matveev_inequality_real_formal →
        ∃ B_reduced ≤ bugeaud_B0,
          ∀ solution with B ≤ bugeaud_B0, B ≤ B_reduced)
```

Honest consolidation of v24.0.0–3.2. Does not claim $|\Lambda| > \exp(C)$.
Target `matveev_inequality_real_target`, `baker_bound_gap3`, and
`bugeaud_LLL_reduction_conditional` stay uninhabited def Props.
v24.4.0 is the honest final of v24.x, not v25.

## v24.3.2 — Numerical Tiny Bound exp(C) << 10^{-12}

```lean
theorem matveev_height_B0_gt_onee20 :
    matveev_ten_pow_20 < matveev_height_B0
theorem matveev_log_ten_gt_23_div_10 :
    (23 / 10 : Real) < Real.log 10
theorem matveev_log_height_B0_gt_46 :
    (46 : Real) < Real.log (matveev_height_B0 : Real)
theorem matveev_exp_46_lt_height_B0 :
    Real.exp 46 < (matveev_height_B0 : Real)
theorem matveev_C_exp_bound_le_neg_1e12 :
    matveev_C_exp_bound ≤ -((ten_pow_12 : Nat) : Real)
theorem matveev_target_exp_lower_lt_exp_neg_1e12 :
    matveev_target_exp_lower < Real.exp (-((ten_pow_12 : Nat) : Real))
theorem matveev_target_exp_lower_lt_onee12 :
    matveev_target_exp_lower < (1 : Real) / ((ten_pow_12 : Nat) : Real)
theorem matveev_exp_C_pos_lt_one :
    0 < matveev_target_exp_lower ∧
      matveev_target_exp_lower < 1 / ↑ten_pow_12 ∧
      matveev_target_exp_lower < 1
```

On the displayed Matveev exponent $C_{\mathrm{exp\_bound}} = -(\mathrm{height}_{B_0} \cdot \log(\mathrm{height}_{B_0}))$:
- `height_B0 = 104382751019310000000 > 10^{20}` by decide.
- $\log 10 > 2.3$ via $2^{83} < 10^{25}$ and $\log 2 > 0.6931471803$.
- Therefore $\log(\mathrm{height}_{B_0}) > 20 \cdot \log 10 > 46$ and $\exp(46) < \mathrm{height}_{B_0}$.
- Product $\mathrm{height}_{B_0} \cdot \log(\mathrm{height}_{B_0}) > 46 \cdot 10^{20} > 10^{12}$, so $C \le -10^{12}$.
- Monotonicity: $\exp(C) < \exp(-10^{12}) < 10^{-12}$, hence $0 < \exp(C) < 10^{-12} < 1$.
- Target `matveev_inequality_real_target`, `baker_bound_gap3`, and `bugeaud_LLL_reduction_conditional` stay uninhabited def Props.

## v24.3.1 — Conditional B Lower Bound from Matveev Ratio

```lean
theorem matveev_gap3_A_pow_eq_B3_pow_sub_B_pow :
    A^4 + B^4 = (B+3)^13 →
      (A:Real)^4 = ((B+3):Real)^13 - (B:Real)^4
theorem matveev_gap3_ratio_explicit :
    A^4 + B^4 = (B+3)^13 →
      (B:Real)^4 / (A:Real)^4 = (B:Real)^4 / (((B+3):Real)^13 - (B:Real)^4)
theorem matveev_gap3_conditional_B_lower :
    A^4 + B^4 = (B+3)^13 →
      Real.exp matveev_C_exp_bound < |matveev_log_form A B| →
        Real.exp matveev_C_exp_bound < (B:Real)^4 / (((B+3):Real)^13 - (B:Real)^4) ∧
        Real.exp matveev_C_exp_bound * (((B+3):Real)^13 - (B:Real)^4) < (B:Real)^4 ∧
        Real.exp matveev_C_exp_bound * ((B+3):Real)^13 < (B:Real)^4 * (1 + Real.exp matveev_C_exp_bound)
theorem matveev_gap3_conditional_B_lower_of_target :
    A^4 + B^4 = (B+3)^13 →
      matveev_inequality_real_target →
        Real.exp matveev_C_exp_bound * ((B+3):Real)^13 < (B:Real)^4 * (1 + Real.exp matveev_C_exp_bound)
theorem matveev_gap3_conditional_B_pos_lower :
    A^4 + B^4 = (B+3)^13 →
      matveev_inequality_real_target →
        0 < B
```

On a gap-3 solution $A^4 + B^4 = (B+3)^{13}$:
- `matveev_gap3_A_pow_eq_B3_pow_sub_B_pow`: expresses $A^4$ purely in terms of $B$ as $(B+3)^{13} - B^4$.
- `matveev_gap3_ratio_explicit`: explicit form of the ratio $B^4/A^4$ as $B^4 / ((B+3)^{13} - B^4)$.
- `matveev_gap3_conditional_B_lower`: IF the Matveev lower bound $|\Lambda| > \exp(C_{\mathrm{exp\_bound}})$ holds, THEN $B^4 / ((B+3)^{13} - B^4) > \exp(C_{\mathrm{exp\_bound}})$ and $B^4 (1 + \exp(C_{\mathrm{exp\_bound}})) > \exp(C_{\mathrm{exp\_bound}})(B+3)^{13}$.
- `matveev_gap3_conditional_B_lower_of_target`: targets the formal `matveev_inequality_real_target` hypothesis.
- `matveev_gap3_conditional_B_pos_lower`: strict positivity $B > 0$ on solutions.
- Target `matveev_inequality_real_target`, `baker_bound_gap3`, and `bugeaud_LLL_reduction_conditional` stay uninhabited def Props.

## v24.3.0 — Linking Conditional Matveev Ratio to Baker B0 and LLL Reduction

```lean
theorem matveev_gap3_conditional_ratio_pos :
    A^4 + B^4 = (B+3)^13 →
      matveev_inequality_real_target →
        0 < Real.exp matveev_C_exp_bound ∧
          Real.exp matveev_C_exp_bound < (B:Real)^4 / (A:Real)^4
theorem matveev_gap3_ratio_pos_of_conditional_lower :
    A^4 + B^4 = (B+3)^13 →
      matveev_inequality_real_target →
        0 < (B:Real)^4 / (A:Real)^4
def bugeaud_LLL_reduction_conditional : Prop :=
  matveev_inequality_real_formal →
    ∃ B_reduced : Nat,
      B_reduced ≤ bugeaud_B0 ∧
      ∀ A B : Nat,
        A^4 + B^4 = (B+3)^13 →
        B ≤ bugeaud_B0 →
        B ≤ B_reduced
```

On a gap-3 solution $A^4 + B^4 = (B+3)^{13}$:
- `matveev_gap3_conditional_ratio_pos`: IF the Matveev lower bound target holds, THEN $0 < \exp(C_{\mathrm{exp\_bound}}) < B^4/A^4$, combining positivity of exponential with the ratio lower bound.
- `matveev_gap3_ratio_pos_of_conditional_lower`: Transitivity directly establishes $0 < B^4/A^4$ through the conditional exponential bound.
- `bugeaud_LLL_reduction_conditional`: In `BealBugeaudLLLFormal.lean`, defines the formal statement of LLL reduction conditionally: IF Matveev lower bound holds, THEN the Baker bound $B \le B_0 = 10^6$ can be reduced to $B \le B_{\mathrm{reduced}}$. Defined as an uninhabited `def Prop`, making explicit the pipeline toward LLL without claiming unproven theorems.
- Target `matveev_inequality_real_target`, `baker_bound_gap3`, and `bugeaud_LLL_reduction_conditional` stay uninhabited def Props.

## v24.2.3 — conditional lower bound implies ratio bound on gap-3 solutions

```lean
theorem matveev_conditional_lower_implies_ratio_gt_exp :
    A^4 + B^4 = (B+3)^13 →
      matveev_target_exp_lower < |matveev_log_form A B| →
        matveev_target_exp_lower < (B:Real)^4 / (A:Real)^4
theorem matveev_conditional_lower_implies_ratio_gt_exp_of_solution :
    A^4 + B^4 = (B+3)^13 →
      matveev_target_exp_lower < |matveev_log_form A B| →
        matveev_target_exp_lower < (B:Real)^4 / (A:Real)^4
theorem matveev_gap3_ratio_lower_bound_conditional :
    A^4 + B^4 = (B+3)^13 →
      matveev_inequality_real_target →
        Real.exp matveev_C_exp_bound < (B:Real)^4 / (A:Real)^4
```

On a gap-3 solution $A^4 + B^4 = (B+3)^{13}$:
- `matveev_conditional_lower_implies_ratio_gt_exp`: IF $|\Lambda| > \exp(C_{\mathrm{exp\_bound}})$ were true, THEN $B^4/A^4 > \exp(C_{\mathrm{exp\_bound}})$ via $|\Lambda| \le B^4/A^4$.
- `matveev_conditional_lower_implies_ratio_gt_exp_of_solution`: unconditioned implication form.
- `matveev_gap3_ratio_lower_bound_conditional`: explicit connection from the uninhabited `def Prop` `matveev_inequality_real_target` to the ratio lower bound.
- Connects the conditional lower bound toward the Baker $B_0 = 10^6$ reduction without claiming the lower bound itself.
- `matveev_inequality_real_target` and `baker_bound_gap3` stay uninhabited def Props.

## v24.2.2 — logarithmic bound log(1 + x) ≤ x on gap-3 solutions

```lean
theorem matveev_log_one_plus_le_self :
    ∀ {x : Real}, -1 < x → Real.log (1 + x) ≤ x
theorem matveev_gap3_B_pow_div_A_pow_pos :
    A^4 + B^4 = (B+3)^13 → 0 < (B:Real)^4 / (A:Real)^4
theorem matveev_gap3_abs_lambda_nonneg :
    ∀ (A B : Nat), 0 ≤ |matveev_log_form A B|
theorem matveev_gap3_abs_lambda_le_ratio :
    A^4 + B^4 = (B+3)^13 →
      |matveev_log_form A B| ≤ (B:Real)^4 / (A:Real)^4
theorem matveev_gap3_abs_lambda_lt_one_of_small_ratio :
    A^4 + B^4 = (B+3)^13 →
      (B:Real)^4 / (A:Real)^4 < 1 →
        |matveev_log_form A B| < 1
```

On a gap-3 solution $A^4 + B^4 = (B+3)^{13}$:
- General inequality `matveev_log_one_plus_le_self`: $\forall x > -1, \log(1+x) \le x$, proven via Mathlib's `Real.log_le_sub_one_of_pos` and `linarith`.
- Positivity `matveev_gap3_B_pow_div_A_pow_pos`: $0 < (B : \mathrm{Real})^4 / (A : \mathrm{Real})^4$ on solutions with $B > 0$ and $A > 0$.
- Nonnegativity `matveev_gap3_abs_lambda_nonneg`: $0 \le |\Lambda|$ trivially via `abs_nonneg`.
- Classical upper bound `matveev_gap3_abs_lambda_le_ratio`: $|\Lambda| = \log(1 + B^4/A^4) \le B^4/A^4$ by combining `matveev_gap3_abs_lambda_eq_log_one_plus_ratio` with `matveev_log_one_plus_le_self` evaluated at $x = B^4/A^4 > 0$.
- Baker reduction step `matveev_gap3_abs_lambda_lt_one_of_small_ratio`: $B^4/A^4 < 1 \implies |\Lambda| < 1$.
- `matveev_inequality_real_target` and `baker_bound_gap3` stay uninhabited def Props.

## v24.2.1 — logarithmic form as logarithm of ratio

```lean
theorem matveev_gap3_A_pow_pos :
    A^4 + B^4 = (B+3)^13 → 0 < (A:Real)^4
theorem matveev_gap3_B3_pow_pos :
    A^4 + B^4 = (B+3)^13 → 0 < ((B+3):Real)^13
theorem matveev_gap3_ratio_eq_one_plus_ratio :
    A^4 + B^4 = (B+3)^13 →
      ((B+3):Real)^13 / (A:Real)^4 = 1 + (B:Real)^4 / (A:Real)^4
theorem matveev_gap3_log_form_eq_log_ratio :
    A^4 + B^4 = (B+3)^13 →
      matveev_log_form A B = -Real.log (((B+3):Real)^13 / (A:Real)^4) ∧
      |matveev_log_form A B| = Real.log (((B+3):Real)^13 / (A:Real)^4) ∧
      Real.log (((B+3):Real)^13 / (A:Real)^4) = Real.log (1 + (B:Real)^4 / (A:Real)^4)
theorem matveev_gap3_abs_lambda_eq_log_one_plus_ratio :
    A^4 + B^4 = (B+3)^13 →
      |matveev_log_form A B| = Real.log (1 + (B:Real)^4 / (A:Real)^4)
```

On a gap-3 solution $A^4 + B^4 = (B+3)^{13}$:
- $(A : \mathrm{Real})^4 > 0$ and $((B+3) : \mathrm{Real})^{13} > 0$ from solution positivity.
- Ratio identity $((B+3) : \mathrm{Real})^{13} / (A : \mathrm{Real})^4 = 1 + (B : \mathrm{Real})^4 / (A : \mathrm{Real})^4$.
- Logarithmic linear form $\Lambda = 4 \log A - 13 \log (B+3) = -\log(((B+3) : \mathrm{Real})^{13} / (A : \mathrm{Real})^4)$.
- $|\Lambda| = \log(((B+3) : \mathrm{Real})^{13} / (A : \mathrm{Real})^4) = \log(1 + (B : \mathrm{Real})^4 / (A : \mathrm{Real})^4)$.
- Expresses the upper bound side in the classical Baker form $\log(1 + (B/A)^4) \approx (B/A)^4$.
- `matveev_inequality_real_target` and `baker_bound_gap3` stay uninhabited def Props.

## v24.2.0 — logarithmic form upper bound on gap-3 solutions

```lean
theorem matveev_gap3_B_pos_of_solution :
    A^4 + B^4 = (B+3)^13 → 0 < B
theorem matveev_gap3_A_pos :
    A^4 + B^4 = (B+3)^13 → 0 < A
theorem matveev_gap3_log_form_upper_bound :
    A^4 + B^4 = (B+3)^13 → 0 < B →
      matveev_log_form A B < 0 ∧
        |matveev_log_form A B| = -matveev_log_form A B
theorem matveev_exp_lower_lt_one_and_pos :
    0 < matveev_target_exp_lower ∧ matveev_target_exp_lower < 1
```

On a gap-3 solution $A^4 + B^4 = (B+3)^{13}$:
- $B > 0$ is proven by eliminating $B = 0$ via `baker_le_B0_gap3` ($0 \le 10^6$).
- $A > 0$ follows from $0 < B$ and $B < A$ via `eq_implies_A_gt_B`.
- The logarithmic linear form $\Lambda = 4 \log A - 13 \log (B+3)$ is strictly negative, so $|\Lambda| = -\Lambda = -(4 \log A - 13 \log (B+3))$.
- The target lower bound $\exp(C_{\mathrm{exp\_bound}})$ is strictly in $(0, 1)$.
- Links the upper bound side to the lower bound target. `matveev_inequality_real_target` and `baker_bound_gap3` stay uninhabited def Props.

## v24.1.1 — rewriting C_exp_bound via height_B0

```lean
theorem matveev_C_exp_bound_eq_neg_height_mul_log :
    matveev_C_exp_bound = -(((height_B0 : Real) * Real.log (height_B0 : Real)))
theorem matveev_C_exp_bound_eq_neg_height_log :
    matveev_C_exp_bound = -(height_B0 : Real) * Real.log (height_B0 : Real)
theorem matveev_target_exp_lower_eq :
    matveev_target_exp_lower = Real.exp (-((height_B0 : Real) * Real.log (height_B0 : Real)))
theorem matveev_height_B0_mul_log_pos :
    0 < (height_B0 : Real) * Real.log (height_B0 : Real)
theorem matveev_C_exp_bound_neg_of_mul_log_pos :
    matveev_C_exp_bound < 0 ↔ 0 < (height_B0 : Real) * Real.log (height_B0 : Real)
```

Rewrites the displayed exponent `matveev_C_exp_bound` using the product identity `matveev_height_product_link` (`height_B0 = C1_floor * thirty_pow`).
`matveev_inequality_real_target` and `baker_bound_gap3` stay uninhabited def Props.

## v24.1.0 — height product identity

```lean
theorem matveev_C1_floor_mul_thirty_pow_div10 :
    C1_floor * 72900000 = 10438275101931000000
theorem matveev_C1_floor_mul_thirty_pow :
    C1_floor * 729000000 = 104382751019310000000
theorem matveev_C1_floor_mul_thirty_pow_div10_times_ten :
    C1_floor * 72900000 * 10 = height_B0
theorem matveev_C1_floor_mul_thirty_pow_div10_ne_height :
    C1_floor * 72900000 ≠ height_B0
theorem matveev_height_product_link :
    height_B0 = C1_floor * thirty_pow
```

`thirty_pow = 729000000 = 30^6`. The 7-digit typo `72900000` is `30^6 / 10`. The correct product **is** `height_B0`. The typo product is `height_B0 / 10`. This is **not** `|Λ| > exp(-C)`.

`matveev_inequality_real_target` and `baker_bound_gap3` stay uninhabited.

## v24.0.2 — exp of the displayed bound

```lean
theorem matveev_exp_bound_lt_zero : matveev_C_exp_bound < 0
theorem matveev_exp_of_bound_pos_lt_one :
    Real.exp matveev_C_exp_bound < 1
theorem matveev_exp_of_bound_pos :
    0 < Real.exp matveev_C_exp_bound
theorem matveev_C_exp_bound_le_neg_onee12 :
    matveev_C_exp_bound ≤ -((ten_pow_12 : Nat) : Real)
noncomputable def matveev_target_exp_lower : Real :=
  Real.exp matveev_C_exp_bound
```

`0 < matveev_target_exp_lower < 1`. This names the Matveev lower-bound shape. It does **not** prove `|Λ| > matveev_target_exp_lower`. Mathlib 4.12 has no Matveev 2000 Thm 1.4.

`matveev_inequality_real_target` and `baker_bound_gap3` stay uninhabited.

## v24.0.1 — height and log monotone

Keeps the v24.0.0 lemmas and adds:

```lean
theorem matveev_C1_floor_pos : matveev_C1_floor > 0
theorem matveev_thirty_pow_pos : matveev_thirty_pow > 0
theorem matveev_thirty_pow_eq_typo_times_ten :
    matveev_thirty_pow = 72900000 * 10
```

`decide`, no axioms. `thirty_pow = 729000000 = 30^6`. The 7-digit numeral `72900000` is `30^6 / 10`, not `30^6`.

```lean
theorem matveev_height_B0_gt_two :
    (2 : Real) < (matveev_height_B0 : Real)
```

From `height_B0 > 10^12`. Pack axioms from Real coercion.

```lean
theorem matveev_log_height_monotone :
    ∀ h1 h2 : Real, 0 < h1 → h1 < h2 → Real.log h1 < Real.log h2
```

`Real.log_lt_log`. Pack axioms.

```lean
theorem matveev_C_exp_bound_lt_zero_of_pos_log :
    matveev_C_exp_bound < 0 ↔
      0 < Real.log (matveev_height_B0 : Real)
```

Because `C1_floor > 0` and `thirty_pow > 0`, the product in `-C1_floor * thirty_pow * log height_B0` is negative iff the log is positive. Pack axioms.

`matveev_inequality_real_target` and `baker_bound_gap3` stay uninhabited.

This is the first v24 file. It starts a real in-kernel formalization of the Matveev 2000 Theorem 1.4 lower bound

\[
|\Lambda| \;>\; \exp\bigl(-C_{1,\mathrm{floor}}\cdot 30^{n+3}\cdot\log\mathrm{height}_{B_0}\bigr)
\]

on a gap-3 Beal solution. It does **not** inhabit that inequality, and it does **not** inhabit `baker_bound_gap3`. We stay in the v24 series (`v24.0.1`, `v24.1.0`, …) until the Real inequality is a theorem. v25 is reserved for the first version where `baker_bound_gap3` is inhabited and `baker_conditional_gap3_full` drops `hBaker`.

## Imports (no Ribet / Frey modularity)

```
import BealLevel26Foundations.BealMatveevConstants
import BealLevel26Foundations.BealMatveevInequality
import BealLevel26Foundations.BealBugeaudLLLFormal
import BealLevel26Foundations.BealMatveevInequalityReal
import BealLevel26Foundations.BealBakerBoundGap3
```

Does **not** import `BealRibetMazur`, `Modularity.FreyModularity_13`, or `BealFreyB14`. The 24-module none-chain stays intact.

## Reused constants (v19–v23)

| Source | Object | Kernel status |
|---|---|---|
| v19 `8fe96fd` | `matveev_C1_floor = 143186215390` | `decide`, no axioms |
| v19 | `matveev_thirty_pow = 729000000` (`30^6`) | `decide`, no axioms |
| v19 | `matveev_thirty_pow ≠ 72900000` (typo) | `decide`, no axioms |
| v19 | `matveev_height_B0 = 104382751019310000000` | `decide`, no axioms |
| v19 | `matveev_c4_scale = 16` | `decide`, no axioms |
| v20 `768ed7f` | `bugeaud_K = 10^{20}` | `decide`, no axioms |
| v20 | `bugeaud_LLL_basis_holds` | `decide`, no axioms |
| v21 `3079d82` | `matveev_log_form_int 0 / 14 ≠ 0` | `decide`, no axioms |
| v21 | Tate witness `63982 = 2 * 31991` | `decide`, no axioms |
| v22 `1db061a` | `matveev_C_exp_bound : Real` | reused as-is |
| v23 `c44f161` | `matveev_height_B0_gt_onee12` | `decide`, no axioms |
| v23 | `matveev_C_exp_bound < -10^{12}` | pack axioms |

v23 compare used `729000000`. The user prompt also mentioned `72900000`. Both numerals are recorded as `decide` theorems so the typo cannot silently replace `30^6`.

## New lemmas

```lean
theorem matveev_height_log_pos :
    0 < Real.log (matveev_height_B0 : Real)
```

From `1 < height_B0` (via `height_B0_gt_onee12` and `1 < 10^{12}`) plus `Real.log_pos`. Pack `[propext, Classical.choice, Quot.sound]`.

```lean
theorem matveev_exp_bound_neg : matveev_C_exp_bound < 0
```

Restates v23 `matveev_C_exp_bound_neg`. Same pack.

## Named target (uninhabited)

```lean
def matveev_inequality_real_target : Prop :=
  ∀ (A B : Nat),
    0 < B →
      Nat.pow A 4 + Nat.pow B 4 = Nat.pow (B + 3) 13 →
        |matveev_log_form A B| > Real.exp matveev_C_exp_bound
```

This is the Matveev 2000 Theorem 1.4 statement we are formalizing, specialized to a gap-3 Beal solution. Mathlib 4.12 has no Matveev theorem, so the name is a `def Prop` with no inhabitant and no `sorry`.

The target is **not** `∀ A B, |Λ| > exp(-C)`. That universal statement is false for arbitrary positive integers: the logs can be arbitrarily close. The bound is only claimed on an actual gap-3 solution, which is where Matveev applies.

## What this does **not** prove

- It does **not** prove `|Λ| > Real.exp matveev_C_exp_bound`.
- It does **not** inhabit `baker_bound_gap3`.
- It does **not** drop `hBaker` from `baker_conditional_gap3_full`.
- It does **not** claim a Beal theorem.

v23 already showed `Λ ≠ 0` on a solution and `C_exp_bound < -10^{12}`. Those facts are necessary but not sufficient: on a solution `|Λ| = log(1+(B/A)^4)` can be arbitrarily small for huge `B`. The missing piece is Matveev's uniform lower bound.

## Honesty lock

`git diff v24.1.1-Beal-44-13-Level-26-Matveev-C-Exp-Rewrite` is empty on:

- Tate (`BealFreyTateConductor.lean`)
- Baker (`BealGap3BakerUpperBound.lean`)
- modular-elim (`BealLevel26ModularElimination.lean`)
- v15 B0 (`BealBakerB0Certificate.lean`)
- v17 LLL (`BealBakerB0ReductionCertificate.lean`)
- v19 constants (`BealMatveevConstants.lean`)
- v20 Bugeaud (`BealBugeaudLLLFormal.lean`)
- v21 inequality (`BealMatveevInequality.lean`)
- v22 Real skeleton (`BealMatveevInequalityReal.lean`)
- v23 compare (`BealBakerBoundGap3.lean`)

v14 J0 `[[1,0,1,-5,-8],[1,-1,1,-3,3]]` mwrank `{0,12}` M3 `[[1,1],[0,2]]` unchanged, holds, no axioms. J0 formal unchanged since v11 `3089bec`.
