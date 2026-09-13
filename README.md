[![v17 DOI](https://zenodo.org/badge/DOI/10.5281/zenodo.22729067.svg)](https://doi.org/10.5281/zenodo.22729067) [![v16 DOI](https://zenodo.org/badge/DOI/10.5281/zenodo.22728705.svg)](https://doi.org/10.5281/zenodo.22728705) [![v15 DOI](https://zenodo.org/badge/DOI/10.5281/zenodo.22728624.svg)](https://doi.org/10.5281/zenodo.22728624) [![v14 DOI](https://zenodo.org/badge/DOI/10.5281/zenodo.22722140.svg)](https://doi.org/10.5281/zenodo.22722140) [![v13 DOI](https://zenodo.org/badge/DOI/10.5281/zenodo.22721843.svg)](https://doi.org/10.5281/zenodo.22721843) [![v12 DOI](https://zenodo.org/badge/DOI/10.5281/zenodo.22721089.svg)](https://doi.org/10.5281/zenodo.22721089) [![v11 DOI](https://zenodo.org/badge/DOI/10.5281/zenodo.22721420.svg)](https://doi.org/10.5281/zenodo.22721420) [![math DOI](https://zenodo.org/badge/DOI/10.5281/zenodo.22712897.svg)](https://doi.org/10.5281/zenodo.22712897) [![paper DOI](https://zenodo.org/badge/DOI/10.5281/zenodo.22713047.svg)](https://doi.org/10.5281/zenodo.22713047) [![v8.20.0 DOI](https://zenodo.org/badge/DOI/10.5281/zenodo.22654189.svg)](https://doi.org/10.5281/zenodo.22654189) [![v7.1.1 DOI](https://zenodo.org/badge/DOI/10.5281/zenodo.22635221.svg)](https://doi.org/10.5281/zenodo.22635221) [![Concept DOI](https://zenodo.org/badge/DOI/10.5281/zenodo.22272382.svg)](https://doi.org/10.5281/zenodo.22272382)

# Beal Level 26 Foundations — v24.4.0-Beal-44-13-Level-26-v24x-Final-Summary

**v24.4.0-Beal-44-13-Level-26-v24x-Final-Summary — v24.x Final Summary Linking Log Upper Bound to Conditional Matveev Ratio Toward $B_0$. Track A: no new Beal-∀, unconditional Beal NOT claimed.**

Honest consolidation of v24.0.0–3.2 on a gap-3 solution $A^4 + B^4 = (B+3)^{13}$. Mathlib 4.12 has no Matveev 2000 Thm 1.4, so this is the honest final of v24.x, **not** v25:
- Keeps all v24.0.0 through v24.3.2 lemmas
- `matveev_v24x_summary`: on a solution, $|\Lambda| = \log(1 + B^4/A^4) \le B^4/A^4 = B^4/((B+3)^{13}-B^4)$, $0 < B^4/A^4$, $0 < \exp(C_{\mathrm{exp\_bound}}) < 10^{-12} < 1$, $C_{\mathrm{exp\_bound}} = -\mathrm{height}_{B_0}\log\mathrm{height}_{B_0}$, $\mathrm{height}_{B_0} = 104382751019310000000 = C1_{\mathrm{floor}}\cdot 30^6$ with $30^6 = 729000000$
- `matveev_v24x_conditional_summary`: IF `matveev_inequality_real_target` THEN $0 < \exp(C) < B^4/A^4$ and $B^4(1+\exp(C)) > \exp(C)\,(B+3)^{13}$
- `bugeaud_v24x_final_link`: restates the conditional LLL reduction shape (still uninhabited)
- `baker_v24x_reduction_shape`: displayed LLL cert $B0_{\mathrm{raw}} = 104382751019310000000$, $B0_{\mathrm{reduced}} = 10^6$, nonempty qflll list; does not inhabit `baker_bound_gap3`
- `matveev_inequality_real_target`, `baker_bound_gap3`, and `bugeaud_LLL_reduction_conditional` stay uninhabited def Props
- Standard Real axiom pack only: `[propext, Classical.choice, Quot.sound]`, 0 axioms for decide theorems, no sorry
- Locked Lean 0 vs v24.3.2 / `305e5f4` except `BealMatveevThm14.lean`, `RibetMazur.lean`, and `BealBakerB0ReductionCertificate.lean` summary shape
- Previous v24.3.2 DOI [`10.5281/zenodo.22732045`](https://doi.org/10.5281/zenodo.22732045) (concept [`10.5281/zenodo.22379293`](https://doi.org/10.5281/zenodo.22379293))
- v24.x DOI chain: [`22730408`](https://doi.org/10.5281/zenodo.22730408), [`22730460`](https://doi.org/10.5281/zenodo.22730460), [`22730548`](https://doi.org/10.5281/zenodo.22730548), [`22730776`](https://doi.org/10.5281/zenodo.22730776), [`22730846`](https://doi.org/10.5281/zenodo.22730846), [`22731054`](https://doi.org/10.5281/zenodo.22731054), [`22731160`](https://doi.org/10.5281/zenodo.22731160), [`22731508`](https://doi.org/10.5281/zenodo.22731508), [`22731634`](https://doi.org/10.5281/zenodo.22731634), [`22731759`](https://doi.org/10.5281/zenodo.22731759), [`22731966`](https://doi.org/10.5281/zenodo.22731966), [`22732045`](https://doi.org/10.5281/zenodo.22732045)

**v24.3.2-Beal-44-13-Level-26-Exp-Numerical-Bound — Numerical Tiny Bound $\exp(C) \ll 10^{-12}$ Toward $B_0$. Track A: no new Beal-∀, unconditional Beal NOT claimed.**

Kernel lemmas evaluating the displayed Matveev exponential $\exp(C_{\mathrm{exp\_bound}})$ as an extremely small number in $(0, 10^{-12})$:
- Keeps all v24.0.0 through v24.3.1 lemmas
- `matveev_height_B0_gt_onee20`: $\mathrm{height}_{B_0} = 104382751019310000000 > 10^{20}$
- `matveev_log_ten_gt_23_div_10`: $\log 10 > 2.3$ via $2^{83} < 10^{25}$ and $\log 2 > 0.6931471803$
- `matveev_log_height_B0_gt_46` / `matveev_exp_46_lt_height_B0`: $\log(\mathrm{height}_{B_0}) > 46$ and $\exp(46) < \mathrm{height}_{B_0}$
- `matveev_C_exp_bound_le_neg_1e12`: $C_{\mathrm{exp\_bound}} \le -10^{12}$ from the product $\mathrm{height}_{B_0} \cdot \log(\mathrm{height}_{B_0}) > 46 \cdot 10^{20}$
- `matveev_target_exp_lower_lt_exp_neg_1e12`: $\exp(C_{\mathrm{exp\_bound}}) < \exp(-10^{12})$
- `matveev_target_exp_lower_lt_onee12`: $\exp(C_{\mathrm{exp\_bound}}) < 10^{-12}$
- `matveev_exp_C_pos_lt_one`: $0 < \exp(C_{\mathrm{exp\_bound}}) < 10^{-12} < 1$
- `matveev_inequality_real_target`, `baker_bound_gap3`, and `bugeaud_LLL_reduction_conditional` stay uninhabited def Props (Mathlib 4.12 has no Matveev 2000 Thm 1.4)
- Standard Real axiom pack only: `[propext, Classical.choice, Quot.sound]`, 0 axioms for decide theorems, no sorry
- Locked Lean 0 vs v24.3.1 / `d189ef9` except `BealMatveevThm14.lean` and `RibetMazur.lean`
- Previous v24.3.1 DOI [`10.5281/zenodo.22731966`](https://doi.org/10.5281/zenodo.22731966) (concept [`10.5281/zenodo.22379293`](https://doi.org/10.5281/zenodo.22379293))

**v24.3.1-Beal-44-13-Level-26-Conditional-B-Lower — Conditional B Lower Bound from Matveev Ratio. Track A: no new Beal-∀, unconditional Beal NOT claimed.**

Kernel lemmas deriving an explicit conditional lower bound on $B$ from the Matveev ratio bound on a gap-3 solution $A^4 + B^4 = (B+3)^{13}$:
- Keeps all v24.0.0 through v24.3.0 lemmas
- `matveev_gap3_A_pow_eq_B3_pow_sub_B_pow`: $(A : \mathrm{Real})^4 = ((B+3) : \mathrm{Real})^{13} - (B : \mathrm{Real})^4$ on solution
- `matveev_gap3_ratio_explicit`: $B^4 / A^4 = B^4 / ((B+3)^{13} - B^4)$
- `matveev_gap3_conditional_B_lower`: IF $|\Lambda| > \exp(C_{\mathrm{exp\_bound}})$ THEN $B^4 / ((B+3)^{13} - B^4) > \exp(C_{\mathrm{exp\_bound}})$ and cleared of denominator: $B^4(1 + \exp(C_{\mathrm{exp\_bound}})) > \exp(C_{\mathrm{exp\_bound}})(B+3)^{13}$
- `matveev_gap3_conditional_B_lower_of_target`: form conditioned on `matveev_inequality_real_target`
- `matveev_gap3_conditional_B_pos_lower`: $0 < B$ from solution conditionally (and unconditionally)
- `matveev_inequality_real_target`, `baker_bound_gap3`, and `bugeaud_LLL_reduction_conditional` stay uninhabited def Props (Mathlib 4.12 has no Matveev 2000 Thm 1.4)
- Standard Real axiom pack only: `[propext, Classical.choice, Quot.sound]`, 0 axioms for decide theorems, no sorry
- Locked Lean 0 vs v24.3.0 / `6a0a0b1` except `BealMatveevThm14.lean` and `RibetMazur.lean`
- Previous v24.3.0 DOI [`10.5281/zenodo.22731759`](https://doi.org/10.5281/zenodo.22731759) (concept [`10.5281/zenodo.22379293`](https://doi.org/10.5281/zenodo.22379293))

**v24.3.0-Beal-44-13-Level-26-Bugeaud-LLL-Link — Linking Conditional Matveev Ratio to Baker B0 and LLL Reduction. Track A: no new Beal-∀, unconditional Beal NOT claimed.**

Kernel lemmas and formal definitions linking the conditional ratio lower bound $B^4/A^4 > \exp(C_{\mathrm{exp\_bound}})$ to the Baker $B_0 = 10^6$ reduction and LLL-reduced bound $B \le B_{\mathrm{reduced}}$, without claiming the lower bound itself:
- Keeps all v24.0.0 through v24.2.3 lemmas
- `matveev_gap3_conditional_ratio_pos`: on $A^4 + B^4 = (B+3)^{13}$, if `matveev_inequality_real_target` holds, then $0 < \exp(C_{\mathrm{exp\_bound}}) < B^4/A^4$
- `matveev_gap3_ratio_pos_of_conditional_lower`: conditional ratio bound directly implies $0 < B^4/A^4$
- `bugeaud_LLL_reduction_conditional`: IF `matveev_inequality_real_formal` holds, THEN $\exists B_{\mathrm{reduced}} \le 10^6$ such that every solution with $B \le 10^6$ satisfies $B \le B_{\mathrm{reduced}}$ (stays an uninhabited def Prop)
- `matveev_inequality_real_target` and `baker_bound_gap3` stay uninhabited def Props (Mathlib 4.12 has no Matveev 2000 Thm 1.4)
- Standard Real axiom pack only: `[propext, Classical.choice, Quot.sound]`, 0 axioms for decide theorems, no sorry
- Locked Lean 0 vs v24.2.3 / `ed94732` except `BealMatveevThm14.lean`, `BealBugeaudLLLFormal.lean`, and `RibetMazur.lean`
- Previous v24.2.3 DOI [`10.5281/zenodo.22731634`](https://doi.org/10.5281/zenodo.22731634) (concept [`10.5281/zenodo.22379293`](https://doi.org/10.5281/zenodo.22379293))

**v24.2.3-Beal-44-13-Level-26-Matveev-Conditional-Lower — Conditional Lower Bound Implies Ratio Bound. Track A: no new Beal-∀, unconditional Beal NOT claimed.**

Kernel lemmas showing that IF the Matveev lower bound target $|\Lambda| > \exp(C_{\mathrm{exp\_bound}})$ were true on a gap-3 solution $A^4 + B^4 = (B+3)^{13}$, THEN $B^4/A^4 > \exp(C_{\mathrm{exp\_bound}})$, toward the Baker $B_0 = 10^6$ reduction link without claiming the lower bound itself:
- Keeps all v24.0.0 through v24.2.2 lemmas
- `matveev_conditional_lower_implies_ratio_gt_exp`: on $A^4 + B^4 = (B+3)^{13}$, if $|\Lambda| > \text{matveev\_target\_exp\_lower}$ then $B^4/A^4 > \text{matveev\_target\_exp\_lower}$ via $|\Lambda| \le B^4/A^4$
- `matveev_conditional_lower_implies_ratio_gt_exp_of_solution`: unconditioned implication form on solutions
- `matveev_gap3_ratio_lower_bound_conditional`: on $A^4 + B^4 = (B+3)^{13}$, if `matveev_inequality_real_target` holds then $B^4/A^4 > \exp(C_{\mathrm{exp\_bound}})$
- `matveev_inequality_real_target` and `baker_bound_gap3` stay uninhabited def Props (Mathlib 4.12 has no Matveev 2000 Thm 1.4)
- Standard Real axiom pack only: `[propext, Classical.choice, Quot.sound]`, 0 axioms for decide theorems, no sorry
- Locked Lean 0 vs v24.2.2 / `ffd8343` except `BealMatveevThm14.lean` and `RibetMazur.lean`
- Previous v24.2.2 DOI [`10.5281/zenodo.22731508`](https://doi.org/10.5281/zenodo.22731508) (concept [`10.5281/zenodo.22379293`](https://doi.org/10.5281/zenodo.22379293))

**v24.2.2-Beal-44-13-Level-26-Matveev-Log-One-Plus-Le — Logarithmic Bound $\log(1+x) \le x$ on Gap-3 Solutions. Track A: no new Beal-∀, unconditional Beal NOT claimed.**

Kernel lemmas showing $|\Lambda| = \log(1 + B^4/A^4) \le B^4/A^4$ on gap-3 solutions $A^4 + B^4 = (B+3)^{13}$ via the classical upper bound $\log(1+x) \le x$, toward the Baker $B_0 = 10^6$ reduction link:
- Keeps all v24.0.0 through v24.2.1 lemmas
- `matveev_log_one_plus_le_self`: $\forall x > -1, \log(1+x) \le x$ via `Real.log_le_sub_one_of_pos`
- `matveev_gap3_B_pow_div_A_pow_pos`: on $A^4 + B^4 = (B+3)^{13}$, $0 < (B : \mathrm{Real})^4 / (A : \mathrm{Real})^4$ from $B > 0$ and $A > 0$
- `matveev_gap3_abs_lambda_nonneg`: $0 \le |\Lambda|$ for all $A, B$
- `matveev_gap3_abs_lambda_le_ratio`: on $A^4 + B^4 = (B+3)^{13}$, $|\Lambda| = \log(1 + B^4/A^4) \le B^4/A^4$
- `matveev_gap3_abs_lambda_lt_one_of_small_ratio`: on $A^4 + B^4 = (B+3)^{13}$, if $B^4/A^4 < 1$ then $|\Lambda| < 1$
- `matveev_inequality_real_target` and `baker_bound_gap3` stay uninhabited def Props (Mathlib 4.12 has no Matveev 2000 Thm 1.4)
- Standard Real axiom pack only: `[propext, Classical.choice, Quot.sound]`, 0 axioms for decide theorems, no sorry
- Locked Lean 0 vs v24.2.1 / `ac100cf` except `BealMatveevThm14.lean` and `RibetMazur.lean`
- Previous v24.2.1 DOI [`10.5281/zenodo.22731160`](https://doi.org/10.5281/zenodo.22731160) (concept [`10.5281/zenodo.22379293`](https://doi.org/10.5281/zenodo.22379293))

**v24.2.1-Beal-44-13-Level-26-Matveev-Log-Form-Ratio — Logarithmic Form as Logarithm of Ratio. Track A: no new Beal-∀, unconditional Beal NOT claimed.**

Kernel lemmas expressing the logarithmic linear form $\Lambda = 4 \log A - 13 \log (B+3)$ on gap-3 solutions $A^4 + B^4 = (B+3)^{13}$ as the logarithm of the ratio $(B+3)^{13} / A^4 = 1 + B^4 / A^4$:
- Keeps all v24.0.0 through v24.2.0 lemmas
- `matveev_gap3_A_pow_pos`: on $A^4 + B^4 = (B+3)^{13}$, $0 < (A : \mathrm{Real})^4$ from `matveev_gap3_A_pos`
- `matveev_gap3_B3_pow_pos`: on $A^4 + B^4 = (B+3)^{13}$, $0 < ((B+3) : \mathrm{Real})^{13}$ from `matveev_gap3_B_pos_of_solution`
- `matveev_gap3_ratio_eq_one_plus_ratio`: $((B+3) : \mathrm{Real})^{13} / (A : \mathrm{Real})^4 = 1 + (B : \mathrm{Real})^4 / (A : \mathrm{Real})^4$
- `matveev_gap3_log_form_eq_log_ratio`: $\Lambda = -\log(((B+3) : \mathrm{Real})^{13} / (A : \mathrm{Real})^4)$ and $|\Lambda| = \log(((B+3) : \mathrm{Real})^{13} / (A : \mathrm{Real})^4) = \log(1 + B^4 / A^4)$
- `matveev_gap3_abs_lambda_eq_log_one_plus_ratio`: $|\Lambda| = \log(1 + B^4 / A^4)$ on solutions (name for Baker upper bound side)
- `matveev_exp_lower_lt_one_and_pos`: $0 < \text{matveev\_target\_exp\_lower} \wedge \text{matveev\_target\_exp\_lower} < 1$
- `matveev_inequality_real_target` and `baker_bound_gap3` stay uninhabited def Props (Mathlib 4.12 has no Matveev 2000 Thm 1.4)
- Standard Real axiom pack only: `[propext, Classical.choice, Quot.sound]`, 0 axioms for decide theorems, no sorry
- Locked Lean 0 vs v24.2.0 / `d755428` except `BealMatveevThm14.lean` and `RibetMazur.lean`
- Previous v24.2.0 DOI [`10.5281/zenodo.22731054`](https://doi.org/10.5281/zenodo.22731054) (concept [`10.5281/zenodo.22379293`](https://doi.org/10.5281/zenodo.22379293))

**v24.2.0-Beal-44-13-Level-26-Matveev-Log-Form-Bound — Logarithmic Form Upper Bound on Gap-3 Solutions. Track A: no new Beal-∀, unconditional Beal NOT claimed.**

Kernel lemmas establishing the upper bound side of the logarithmic linear form on gap-3 solutions:
- Keeps all v24.0.0 through v24.1.1 lemmas
- `matveev_gap3_B_pos_of_solution`: on $A^4 + B^4 = (B+3)^{13}$, $0 < B$ by eliminating $B = 0$ via `baker_le_B0_gap3` ($0 \le 10^6$)
- `matveev_gap3_A_pos`: on $A^4 + B^4 = (B+3)^{13}$, $0 < A$ via $0 < B$ and $B < A$ from `eq_implies_A_gt_B`
- `matveev_gap3_log_form_upper_bound`: on $A^4 + B^4 = (B+3)^{13}$ with $B > 0$, $\Lambda = 4 \log A - 13 \log (B+3) < 0$ and $|\Lambda| = -\Lambda = -(4 \log A - 13 \log (B+3))$ via `matveev_log_form_lt_zero_of_gap3` and `abs_of_neg`
- `matveev_gap3_log_form_upper_bound_expanded`: expanded form with explicit logarithmic linear combination
- `matveev_gap3_log_form_upper_bound_of_solution`: holds directly on a solution without requiring $B > 0$ as a premise
- `matveev_exp_lower_lt_one_and_pos`: $0 < \text{matveev\_target\_exp\_lower} \wedge \text{matveev\_target\_exp\_lower} < 1$
- `matveev_inequality_real_target` and `baker_bound_gap3` stay uninhabited def Props (Mathlib 4.12 has no Matveev 2000 Thm 1.4)
- Standard Real axiom pack only: `[propext, Classical.choice, Quot.sound]`, 0 axioms for decide theorems, no sorry
- Locked Lean 0 vs v24.1.1 / `21df092` except `BealMatveevThm14.lean` and `RibetMazur.lean`
- Previous v24.1.1 DOI [`10.5281/zenodo.22730846`](https://doi.org/10.5281/zenodo.22730846) (concept [`10.5281/zenodo.22379293`](https://doi.org/10.5281/zenodo.22379293))

**v24.1.1-Beal-44-13-Level-26-Matveev-C-Exp-Rewrite — Rewriting the Matveev Exponent via Height Identity. Track A: no new Beal-∀, unconditional Beal NOT claimed.**

Kernel lemmas rewriting the displayed exponent `matveev_C_exp_bound` using the `height_B0` product identity:
- Keeps all v24.0.0 / v24.0.1 / v24.0.2 / v24.1.0 lemmas
- `matveev_C_exp_bound_eq_neg_height_mul_log`: `matveev_C_exp_bound = -(((height_B0 : Real) * Real.log (height_B0 : Real)))` via product identity `matveev_height_product_link`
- `matveev_C_exp_bound_eq_neg_height_log`: `matveev_C_exp_bound = -(height_B0 : Real) * Real.log (height_B0 : Real)` (associativity version for AMS)
- `matveev_target_exp_lower_eq`: `matveev_target_exp_lower = Real.exp (-((height_B0 : Real) * Real.log (height_B0 : Real)))`
- `matveev_height_B0_mul_log_pos`: `0 < (height_B0 : Real) * Real.log (height_B0 : Real)` via `mul_pos`
- `matveev_C_exp_bound_neg_of_mul_log_pos`: `matveev_C_exp_bound < 0 ↔ 0 < (height_B0 : Real) * Real.log (height_B0 : Real)`
- `matveev_inequality_real_target` and `baker_bound_gap3` stay uninhabited def Props (Mathlib 4.12 has no Matveev 2000 Thm 1.4; this file only rewrites displayed exponent)
- Standard Real axiom pack only: `[propext, Classical.choice, Quot.sound]`, 0 axioms for decide theorems, no sorry
- Locked Lean 0 vs v24.1.0 / `7962905` except `BealMatveevThm14.lean`
- Previous v24.1.0 DOI [`10.5281/zenodo.22730776`](https://doi.org/10.5281/zenodo.22730776) (concept [`10.5281/zenodo.22379293`](https://doi.org/10.5281/zenodo.22379293))

**v24.1.0-Beal-44-13-Level-26-Matveev-Height-Product — Matveev height product identity. Stay in v24 until `|Λ| > exp(-C)` is a theorem. Track A: no new Beal-∀, unconditional Beal NOT claimed.**

Kernel lemmas making the product that controls the displayed exponent explicit:
- Keeps all v24.0.0 / v24.0.1 / v24.0.2 lemmas
- `matveev_C1_floor_mul_thirty_pow`: `C1_floor * 729000000 = 104382751019310000000` by `decide` (**no axioms**); this **is** `height_B0`
- `matveev_C1_floor_mul_thirty_pow_div10`: `C1_floor * 72900000 = 10438275101931000000` by `decide` (**no axioms**); the 7-digit typo is `30^6 / 10`, so this is `height_B0 / 10`
- `matveev_C1_floor_mul_thirty_pow_div10_times_ten`: typo product times ten recovers `height_B0`
- `matveev_height_product_link`: `height_B0 = C1_floor * thirty_pow` with `thirty_pow = 729000000 = 30^6`
- Do **not** claim `30^6 = 72900000`. Do **not** claim `height_B0 * 10 = C1_floor * thirty_pow`
- `matveev_inequality_real_target` and `baker_bound_gap3` stay uninhabited def Props (Mathlib 4.12 has no Matveev 2000 Thm 1.4)
- Locked Lean 0 vs v24.0.2 / `73c5993` except `BealMatveevThm14.lean`
- Previous v24.0.2 DOI [`10.5281/zenodo.22730548`](https://doi.org/10.5281/zenodo.22730548) (concept [`10.5281/zenodo.22379293`](https://doi.org/10.5281/zenodo.22379293))

**v24.0.2-Beal-44-13-Level-26-Matveev-Exp-Bound-Properties — properties of the Matveev exponential bound. Stay in v24 until `|Λ| > exp(-C)` is a theorem. Track A: no new Beal-∀, unconditional Beal NOT claimed.**

Kernel lemmas linking `C_exp_bound` to the uniform lower-bound shape `exp(C_exp_bound)`:
- Keeps v24.0.0 / v24.0.1 height, log, and positivity lemmas
- `matveev_exp_bound_lt_zero`: `C_exp_bound < 0`
- `matveev_exp_of_bound_pos_lt_one`: `Real.exp C_exp_bound < 1` via `Real.exp_lt_one_iff`
- `matveev_exp_of_bound_pos`: `0 < Real.exp C_exp_bound` via `Real.exp_pos`
- `matveev_C_exp_bound_le_neg_onee12`: strengthen v23 `< -10^12` to `≤`
- `matveev_target_exp_lower := Real.exp C_exp_bound` with `0 < target < 1`
- `matveev_inequality_real_target` and `baker_bound_gap3` stay uninhabited def Props (Mathlib 4.12 has no Matveev 2000 Thm 1.4)
- Locked Lean 0 vs v24.0.1 / `4d66383` except `BealMatveevThm14.lean`
- Zenodo DOI [`10.5281/zenodo.22730548`](https://doi.org/10.5281/zenodo.22730548) (concept [`10.5281/zenodo.22379293`](https://doi.org/10.5281/zenodo.22379293); previous v24.0.1 [`10.5281/zenodo.22730460`](https://doi.org/10.5281/zenodo.22730460))

**v24.0.1-Beal-44-13-Level-26-Matveev-Height-Log-Monotone — Matveev height and logarithmic monotonicity. Stay in v24 until `|Λ| > exp(-C)` is a theorem. Track A: no new Beal-∀, unconditional Beal NOT claimed.**

Kernel lemmas toward Matveev 2000 Thm 1.4, extending `BealMatveevThm14.lean`:
- Keeps v24.0.0 `matveev_height_log_pos` and `matveev_exp_bound_neg`
- `matveev_height_B0_gt_two`: `(height_B0 : Real) > 2` from `height_B0 > 10^12`
- `matveev_log_height_monotone`: `0 < h1 → h1 < h2 → log h1 < log h2` via `Real.log_lt_log`
- `matveev_C_exp_bound_lt_zero_of_pos_log`: `C_exp_bound < 0 ↔ 0 < log height_B0` from `C1_floor > 0` and `thirty_pow > 0`
- `matveev_C1_floor_pos` / `matveev_thirty_pow_pos` by `decide` (**no axioms**)
- `thirty_pow = 729000000` (`30^6`) and `≠ 72900000` (`30^6 / 10`) by `decide`
- `matveev_inequality_real_target` and `baker_bound_gap3` stay uninhabited def Props
- Tate / Baker / v14 J0 / v15 B0 / v17 LLL / v19–v23 locked Lean stay exactly v24.0.0 / `d39c6d5` (0 lines)
- Zenodo DOI [`10.5281/zenodo.22730460`](https://doi.org/10.5281/zenodo.22730460) (concept [`10.5281/zenodo.22379293`](https://doi.org/10.5281/zenodo.22379293); previous v24.0.0 [`10.5281/zenodo.22730408`](https://doi.org/10.5281/zenodo.22730408))

**v24.0.0-Beal-44-13-Level-26-Matveev-Thm-1-4-Formalization-Start — start formalizing Matveev 2000 Thm 1.4 `|Λ| > exp(-C)`. Stay in v24 until `baker_bound_gap3` is inhabited. Track A: no new Beal-∀, unconditional Beal NOT claimed.**

First in-kernel file toward the uniform lower bound on a gap-3 solution:
- New file `BealMatveevThm14.lean` (does **not** import Ribet / Frey modularity / `BealFreyB14`)
- Reuses v19 `C1_floor = 143186215390`, `thirty_pow = 729000000` (`30^6`; typo `72900000` is `decide` `≠`), `height_B0 = 104382751019310000000`
- Reuses v20 `bugeaud_K = 10^20` and `bugeaud_LLL_basis_holds` by `decide` (**no axioms**)
- Reuses v21 Int log-form nonzero and Tate witness `63982 = 2 * 31991` by `decide` (**no axioms**)
- Reuses v22 `matveev_C_exp_bound` and v23 `C_exp_bound < -10^12` / `height_B0_gt_onee12`
- New: `matveev_height_log_pos` (`0 < Real.log height_B0`) and `matveev_exp_bound_neg` (`C_exp_bound < 0`)
- `matveev_inequality_real_target` stays an uninhabited def Prop (Mathlib 4.12 has no Matveev 2000 Thm 1.4)
- `baker_bound_gap3` stays an uninhabited def Prop; we stay in v24.x until that inequality is a theorem
- Tate / Baker / v14 J0 / v15 B0 / v17 LLL / v19 constants / v20 Bugeaud / v21 inequality / v22 Real skeleton / v23 compare stay exactly v23 / `c44f161` (0 lines)
- Zenodo DOI [`10.5281/zenodo.22730408`](https://doi.org/10.5281/zenodo.22730408) (concept [`10.5281/zenodo.22379293`](https://doi.org/10.5281/zenodo.22379293); previous v23 [`10.5281/zenodo.22730338`](https://doi.org/10.5281/zenodo.22730338))

**v23.0.0-Beal-44-13-Level-26-Matveev-C-Exp-Bound-Compare — displayed exponent `< -10^12` and Real log-form nonzero on a gap-3 solution. `baker_bound_gap3` stays Prop. Track A: no new Beal-∀, unconditional Beal NOT claimed.**

What Mathlib 4.12 can close from the v19/v21/v22 integer skeleton:
- `matveev_C_exp_bound = -height_B0 * log(height_B0)` and `1 < log(height_B0)`, so `C_exp_bound < -10^12`
- `matveev_height_B0_gt_onee12` by `decide` (**no axioms**); `thirty_pow = 729000000`
- `matveev_log_form_ne_zero_of_gap3`: on `A^4 + B^4 = (B+3)^13` with `B > 0`, `4 log A - 13 log(B+3) < 0`
- `|Λ| > exp(C_exp_bound)` and `baker_bound_gap3` stay uninhabited def Props
- `baker_conditional_gap3_full` still takes `hBaker : baker_bound_gap3`
- Tate / Baker / v14 J0 / v15 B0 / v17 LLL / v19 constants / v20 Bugeaud / v21 inequality / v22 Real skeleton stay exactly v22 / `1db061a` (0 lines)
- Zenodo DOI [`10.5281/zenodo.22730338`](https://doi.org/10.5281/zenodo.22730338) (concept [`10.5281/zenodo.22379293`](https://doi.org/10.5281/zenodo.22379293); previous v22 [`10.5281/zenodo.22729980`](https://doi.org/10.5281/zenodo.22729980))

**v22.0.0-Beal-44-13-Level-26-Matveev-Inequality-Real — Matveev `|Λ| > exp(-C1_floor · 30^{n+3})` Real bound skeleton from integer constants. Track A: no new Beal-∀, unconditional Beal NOT claimed.**

First brick toward inhabiting `∀ B > 10^6` in-kernel without the PARI `baker_B0_PARI = 1000000` hypothesis:
- `matveev_C_exp_bound : Real` is `-(C1_floor : Real) * (thirty_pow : Real) * Real.log (height_B0 : Real)`
- `matveev_C_exp_bound_decide` : `C1_floor = 143186215390 ∧ thirty_pow = 729000000` by `decide` (**no axioms**)
- `matveev_C_exp_bound_height_decide` : `C1_floor * thirty_pow = 104382751019310000000` by `decide` (**no axioms**)
- v21 Int witnesses and height bound reused (`matveev_inequality_real_int_ne_zero_*`, `matveev_inequality_real_height_le`)
- `matveev_inequality_real_formal` / `matveev_inequality_real_lower` stay uninhabited def Props (Mathlib 4.12 has no Matveev 2000 Thm 1.4)
- `baker_bound_gap3` stays an uninhabited def Prop; `baker_bound_gap3_of_matveev_inequality_real` is the named implication only
- Tate / Baker / v14 J0 / v15 B0 / v17 LLL / v19 constants / v20 Bugeaud LLL / v21 inequality stay exactly v21 / `3079d82` (0 lines)
- Zenodo DOI [`10.5281/zenodo.22729980`](https://doi.org/10.5281/zenodo.22729980) (concept [`10.5281/zenodo.22379293`](https://doi.org/10.5281/zenodo.22379293); previous v21 [`10.5281/zenodo.22729724`](https://doi.org/10.5281/zenodo.22729724))

**v21.0.0-Beal-44-13-Level-26-Matveev-Log-Form-Nonzero — integer log-form nonzero + height bound. Track A: no new Beal-∀, unconditional Beal NOT claimed.**

First brick toward inhabiting `∀` in-kernel without PARI:
- `matveev_log_form_int B = 16 * (4B − 13(B+3))` using Tate c4 scale 16; **no Real.log**
- `matveev_log_form_ne_zero` on `B % 14 = 0`; decide witnesses at `B = 0` and `B = 14` (**no axioms**)
- `matveev_height_le_log_B0`: `B ≤ B0_raw` is `B ≤ 104382751019310000000` (v19 numeral)
- `matveev_census_B0_le_height` (`baker_B0 ≤ height_B0`) by `decide` (**no axioms**)
- `baker_bound_gap3` and `bugeaud_reduction_formal` stay uninhabited def Props
- Tate / Baker / v14 J0 / v15 B0 / v17 LLL / v19 constants / v20 Bugeaud LLL stay exactly v20 / `768ed7f` (0 lines)
- Previous v20 DOI [`10.5281/zenodo.22729515`](https://doi.org/10.5281/zenodo.22729515); v21 DOI [`10.5281/zenodo.22729724`](https://doi.org/10.5281/zenodo.22729724) (concept [`10.5281/zenodo.22379293`](https://doi.org/10.5281/zenodo.22379293))

**v20.0.0-Beal-44-13-Level-26-Matveev-Inequality-Bugeaud-LLL-Formalization — attempt Matveev inequality and Bugeaud LLL formalization. Track A: no new Beal-∀, unconditional Beal NOT claimed.**

From the v19 integer skeleton, names the linear form and the LLL lattice in Lean:
- `matveev_log_form A B = 4 log A - 13 log(B+3)` via Mathlib `Real.log`
- `matveev_lower_bound` stays an uninhabited def Prop (`|Λ| > exp(-C1_floor * 30^{n+3})`)
- `matveev_inequality_constants_hold` by `decide` (**no axioms**)
- `bugeaud_K = 10^20`; `bugeaud_lattice = K*(4 log B0, 9 log B0, 13 log(B0+3))`
- `bugeaud_LLL_basis` is the v17 qflll rows; `bugeaud_LLL_basis_holds` by `decide` (**no axioms**)
- `bugeaud_reduction_formal` stays an uninhabited def Prop
- `baker_bound_gap3` stays a def Prop; named implications are not inhabited
- Tate / Baker / v14 J0 / v15 B0 / v17 LLL / v19 constants stay exactly v19 / `8fe96fd` (0 lines)
- Previous v19 DOI [`10.5281/zenodo.22729309`](https://doi.org/10.5281/zenodo.22729309) (concept [`10.5281/zenodo.22379293`](https://doi.org/10.5281/zenodo.22379293))

**v19.0.0-Beal-44-13-Level-26-Matveev-Constants-Formalization — attempt Matveev constants formalization. Track A: no new Beal-∀, unconditional Beal NOT claimed.**

Moves `C = 143186215390` from a PARI list entry to an explicit `Nat` plus kernel theorems:
- `matveev_C1_floor = 143186215390`; `matveev_C1_pos` by `decide` (**no axioms**)
- `matveev_n = 3`, `matveev_D = 1`, `matveev_thirty_pow = 30^6 = 729000000`
- `matveev_height_B0 = C1_floor * 30^{n+3} = 104382751019310000000` by `decide`
- Tate c4 scale `16` from `BealFreyTateConductor` (`matveev_c4_height`)
- `matveev_explicit_gap3_constants_hold` is kernel `decide` on a nonempty `List Int` (**no axioms**)
- `baker_bound_gap3` stays a def Prop; `baker_bound_gap3_of_matveev_constants` is the named implication (not inhabited)
- Tate / Baker / v14 modular / v15 B0 / v17 LLL files stay exactly v18 / `430189e` (0 lines)
- Previous v18 DOI [`10.5281/zenodo.22729129`](https://doi.org/10.5281/zenodo.22729129) (concept [`10.5281/zenodo.22379293`](https://doi.org/10.5281/zenodo.22379293))

**v18.0.0-Beal-44-13-Level-26-Cumulative-Archive-v10-v17 — most current, descriptive title only, NOT final. Track A: no new Beal-∀, unconditional Beal NOT claimed.** Docs-only versus v17 `3fbafa6`. Lean files 0 lines vs `v17.0.0-Beal-44-13-Level-26-Baker-B0-Reduction-Certificate`. See [`docs/CUMULATIVE_ARCHIVE_v10_v17.md`](docs/CUMULATIVE_ARCHIVE_v10_v17.md). Zenodo DOI [`10.5281/zenodo.22729129`](https://doi.org/10.5281/zenodo.22729129) (concept [`10.5281/zenodo.22379293`](https://doi.org/10.5281/zenodo.22379293)).

**v17.0.0-Beal-44-13-Level-26-Baker-B0-Reduction-Certificate — most current, descriptive title only. Track A: no new Beal-∀, unconditional Beal NOT claimed.**

PARI LLL reduction of the huge Matveev integer `B0_raw` to the displayed cutoff `B0_reduced = 10^6`:
- `gp -q < scripts/baker_b0_reduction.gp` prints `B0_reduced=1000000` and writes `baker_B0_reduction_certificate.json`
- `baker_B0_reduced_PARI = 1000000` equals Lean `baker_B0`; `baker_B0_raw_PARI = 104382751019310000000`
- `baker_reduction_certificate_displayed` is `List (List Int)`: LLL `qflll` basis plus convergents
- `baker_reduction_certificate_holds` is kernel `decide` (**no axioms**)
- `baker_bound_gap3` stays a def Prop; `baker_bound_gap3_of_LLL` is the named implication (not inhabited)
- Tate / Baker / v15 B0 / v14 modular-elimination files stay exactly v16 / `9ce2980` (0 lines)
- Zenodo DOI [`10.5281/zenodo.22729067`](https://doi.org/10.5281/zenodo.22729067) (concept [`10.5281/zenodo.22379293`](https://doi.org/10.5281/zenodo.22379293); previous v16 [`10.5281/zenodo.22728705`](https://doi.org/10.5281/zenodo.22728705))

**v16.0.0-Beal-44-13-Level-26-Cumulative-Archive — most current cumulative archive, NOT final. Track A: no new Beal-∀, unconditional Beal NOT claimed.** Docs-only versus v15 `6443f81`. Lean files 0 lines vs `v15.0.0-Baker-B0-PARI-Certificate`. See [`docs/CUMULATIVE_ARCHIVE_v10_v15.md`](docs/CUMULATIVE_ARCHIVE_v10_v15.md). Zenodo DOI [`10.5281/zenodo.22728705`](https://doi.org/10.5281/zenodo.22728705).

| Version | DOI | Commit | Transparent content |
| --- | --- | --- | --- |
| v10 | [`10.5281/zenodo.22712897`](https://doi.org/10.5281/zenodo.22712897) / [`22713047`](https://doi.org/10.5281/zenodo.22713047) | — | 25 chunks `B≡14` 62500 values `allKilled_1e6` [] `B≤1e6` |
| v11 | [`10.5281/zenodo.22721420`](https://doi.org/10.5281/zenodo.22721420) | — | Tate `tateConductor=2^{f2}*rad(AB(B+3))*13` `f2≤5` witness `63982=2*31991` `c4=16*(A^8+A^4B^4+B^8)` |
| v12 | [`10.5281/zenodo.22721089`](https://doi.org/10.5281/zenodo.22721089) | — | Baker explicit `matveev_explicit_gap3` def Prop |
| v13 | [`10.5281/zenodo.22721843`](https://doi.org/10.5281/zenodo.22721843) | `cea155c` | transparent List/Nat/Int certs; opaque deleted |
| v14 | [`10.5281/zenodo.22722140`](https://doi.org/10.5281/zenodo.22722140) | `3089bec` | J0 `[[1,0,1,-5,-8],[1,-1,1,-3,3]]` mwrank `{0,12}` formal M3 `[[1,1],[0,2]]` displayed holds no axioms; kraus `{-10,-2,1,6,14}` vs `{0,12}` decide [] |
| v15 | [`10.5281/zenodo.22728624`](https://doi.org/10.5281/zenodo.22728624) | `6443f81` | PARI gp `B0=1e6` `baker_B0_certificate.json` List Int decide no axioms |
| v16 | [`10.5281/zenodo.22728705`](https://doi.org/10.5281/zenodo.22728705) | `9ce2980` | Cumulative Archive v10–v15 docs-only most current |
| v17 | [`10.5281/zenodo.22729067`](https://doi.org/10.5281/zenodo.22729067) | `3fbafa6` | PARI LLL `qflll` `C=143186215390` `B0_raw=104382751019310000000` → `B0_reduced=1e6` `baker_B0_reduction_certificate.json` `List (List Int)` decide no axioms |
| v18 | [`10.5281/zenodo.22729129`](https://doi.org/10.5281/zenodo.22729129) | `430189e` | Cumulative Archive v10–v17 docs-only most current |
| v19 | [`10.5281/zenodo.22729309`](https://doi.org/10.5281/zenodo.22729309) | `8fe96fd` | `BealMatveevConstants.lean` `matveev_C1_floor=143186215390` Nat/Int theorems by decide; `baker_bound_gap3` stays Prop |
| v20 | [`10.5281/zenodo.22729515`](https://doi.org/10.5281/zenodo.22729515) | `768ed7f` | `matveev_log_form` Real.log; `matveev_lower_bound` / `bugeaud_reduction_formal` def Prop; `bugeaud_LLL_basis_holds` decide no axioms |
| v21 | [`10.5281/zenodo.22729724`](https://doi.org/10.5281/zenodo.22729724) | `3079d82` | `matveev_log_form_int` Tate c4×(4B−13(B+3)); `matveev_log_form_ne_zero` on B%14=0; `matveev_height_le_log_B0` |
| v22 | [`10.5281/zenodo.22729980`](https://doi.org/10.5281/zenodo.22729980) | `1db061a` | `matveev_C_exp_bound` Real exponent; `matveev_C_exp_bound_decide` no axioms; `matveev_inequality_real_formal` def Prop |
| v23 | [`10.5281/zenodo.22730338`](https://doi.org/10.5281/zenodo.22730338) | `c44f161` | `C_exp_bound < -10^12`; Real log-form nonzero on a gap-3 solution; `baker_bound_gap3` stays Prop |
| v24.0.0 | [`10.5281/zenodo.22730408`](https://doi.org/10.5281/zenodo.22730408) | `d39c6d5` | `BealMatveevThm14.lean` starts Matveev 1.4; `matveev_height_log_pos` / `matveev_exp_bound_neg`; target and `baker_bound_gap3` stay Prop |
| v24.0.1 | [`10.5281/zenodo.22730460`](https://doi.org/10.5281/zenodo.22730460) | `4d66383` | height / log monotone: `matveev_height_B0_gt_two` / `matveev_log_height_monotone` / `C_exp_bound < 0 ↔ log height_B0 > 0` |
| v24.0.2 | [`10.5281/zenodo.22730548`](https://doi.org/10.5281/zenodo.22730548) | `73c5993` | `exp(C_exp_bound)` in `(0,1)`; `C_exp_bound ≤ -10^12`; named `matveev_target_exp_lower` |
| v24.1.0 | [`10.5281/zenodo.22730776`](https://doi.org/10.5281/zenodo.22730776) | `7962905` | `C1_floor * 729000000 = height_B0`; typo `C1_floor * 72900000 = height_B0 / 10`; `matveev_height_product_link` |
| v24.1.1 | [`10.5281/zenodo.22730846`](https://doi.org/10.5281/zenodo.22730846) | `21df092` | `matveev_C_exp_bound = -(height_B0 * log height_B0)`; `matveev_target_exp_lower_eq`; `0 < height_B0 * log height_B0` |
| v24.2.0 | [`10.5281/zenodo.22731054`](https://doi.org/10.5281/zenodo.22731054) | `d755428` | log form upper bound: `matveev_gap3_B_pos_of_solution`, `matveev_gap3_A_pos`, `matveev_gap3_log_form_upper_bound`, `matveev_exp_lower_lt_one_and_pos` |
| v24.2.1 | [`10.5281/zenodo.22731160`](https://doi.org/10.5281/zenodo.22731160) | `ac100cf` | log form as log of ratio: `matveev_gap3_A_pow_pos`, `matveev_gap3_B3_pow_pos`, `matveev_gap3_ratio_eq_one_plus_ratio`, `matveev_gap3_log_form_eq_log_ratio`, `matveev_gap3_abs_lambda_eq_log_one_plus_ratio` |
| v24.2.2 | [`10.5281/zenodo.22731508`](https://doi.org/10.5281/zenodo.22731508) | `ffd8343` | log bound $\log(1+x)\le x$: `matveev_log_one_plus_le_self`, `matveev_gap3_B_pow_div_A_pow_pos`, `matveev_gap3_abs_lambda_nonneg`, `matveev_gap3_abs_lambda_le_ratio`, `matveev_gap3_abs_lambda_lt_one_of_small_ratio` |
| v24.2.3 | [`10.5281/zenodo.22731634`](https://doi.org/10.5281/zenodo.22731634) | `ed94732` | conditional lower implies ratio bound: `matveev_conditional_lower_implies_ratio_gt_exp`, `matveev_conditional_lower_implies_ratio_gt_exp_of_solution`, `matveev_gap3_ratio_lower_bound_conditional` |
| v24.3.0 | [`10.5281/zenodo.22731759`](https://doi.org/10.5281/zenodo.22731759) | `6a0a0b1` | link conditional ratio to Baker $B_0$ and LLL reduction: `matveev_gap3_conditional_ratio_pos`, `matveev_gap3_ratio_pos_of_conditional_lower`, `bugeaud_LLL_reduction_conditional` |
| v24.3.1 | [`10.5281/zenodo.22731966`](https://doi.org/10.5281/zenodo.22731966) | `d189ef9` | conditional $B$ lower bound from Matveev ratio: `matveev_gap3_A_pow_eq_B3_pow_sub_B_pow`, `matveev_gap3_ratio_explicit`, `matveev_gap3_conditional_B_lower`, `matveev_gap3_conditional_B_lower_of_target`, `matveev_gap3_conditional_B_pos_lower` |
| v24.3.2 | [`10.5281/zenodo.22732045`](https://doi.org/10.5281/zenodo.22732045) | `305e5f4` | numerical tiny bound $\exp(C) \ll 10^{-12}$: `matveev_C_exp_bound_le_neg_1e12`, `matveev_target_exp_lower_lt_exp_neg_1e12`, `matveev_target_exp_lower_lt_onee12`, `matveev_exp_C_pos_lt_one` |
| v24.4.0 | pending webhook | — | v24.x final summary: `matveev_v24x_summary`, `matveev_v24x_conditional_summary`, `bugeaud_v24x_final_link`, `baker_v24x_reduction_shape` |

Most current snapshot as of 2026-09-13, **not** a final Beal proof. Concept [`10.5281/zenodo.22379293`](https://doi.org/10.5281/zenodo.22379293). See [`docs/CUMULATIVE_ARCHIVE_v10_v17.md`](docs/CUMULATIVE_ARCHIVE_v10_v17.md).

**Honesty lock (most current).** `git diff v24.3.2 -- BealFreyTateConductor.lean BealGap3BakerUpperBound.lean BealLevel26ModularElimination.lean BealBakerB0Certificate.lean BealMatveevConstants.lean BealMatveevInequality.lean BealMatveevInequalityReal.lean BealBakerBoundGap3.lean BealBugeaudLLLFormal.lean` = 0 (9 locked files). Extended: `BealMatveevThm14.lean`, `RibetMazur.lean`, and `BealBakerB0ReductionCertificate.lean` v24.4.0 summary shape only (displayed LLL rows unchanged). Tate 0 lines since v11. Baker-upper-bound 0 lines since v12. v14 displayed J0 / mwrank / formal unchanged. `baker_bound_gap3`, `matveev_inequality_real_target`, and `bugeaud_LLL_reduction_conditional` stay uninhabited def Props. Main pack prints `[propext, Classical.choice, Quot.sound]` only.

**v15.0.0-Baker-B0-PARI-Certificate — Track A lock. Track A: no new Beal-∀, unconditional Beal NOT claimed.**

Transparent PARI / Matveev 2000 Thm 1.4 integer cert for the displayed Baker cutoff:
- `gp -q < scripts/baker_b0_gap3.gp` prints `B0=1000000` and writes `baker_B0_certificate.json`
- `baker_B0_PARI = 1000000` equals Lean `baker_B0`; `baker_B0_certificate_displayed` is the List/Int trace
- `baker_B0_certificate_holds` is kernel `decide` (**no axioms**)
- `baker_bound_gap3` stays a def Prop; `baker_bound_gap3_of_PARI` is the named implication (def Prop, not inhabited)
- Tate and Baker-upper-bound files stay exactly v14 / `3089bec` (0 lines)
- v14 displayed J0 / mwrank / formal certs stay the same inhabitants
- Zenodo DOI [`10.5281/zenodo.22728624`](https://doi.org/10.5281/zenodo.22728624) (concept [`10.5281/zenodo.22379293`](https://doi.org/10.5281/zenodo.22379293); previous v14 [`10.5281/zenodo.22722140`](https://doi.org/10.5281/zenodo.22722140))

**v14.0.0-J0-Mwrank-Formal-Verified — Track A lock. Track A: no new Beal-∀, unconditional Beal NOT claimed.**

Displayed J0 / mwrank / formal certs with kernel `decide` / `rfl`:
- `J0DecompositionCert_26_displayed` = `[[1,0,1,-5,-8],[1,-1,1,-3,3]]`, `rankProof := 2`
- `MwrankCertificate_26_displayed` = `{s2Basis := [0,12], rank := 2, gens := [0,12]}`
- `FormalImmersionCert_26_displayed` = `M3 [[1,1],[0,2]]`
- `FreyCurveCert_displayed` / `LevelLoweringCert_26_displayed` reuse Tate `c4 = 16*(A^8+A^4 B^4+B^8)`, `tateF2 ≤ 5`, `tateConductor`
- `J0DecompositionSoundness_26_holds`, `MwrankCertificateSoundness_26_holds`, `FormalImmersionSoundness_26_holds` print **no axioms**
- `kraus_a53_elimination` still kernel `decide` (`{-10,-2,1,6,14}` miss `{0,12}`)
- `beal_44_13_level_26_modular_elimination` uses the holds lemmas, `allKilled_1e6`, and `baker_conditional_gap3_full` (`baker_bound_gap3` stays Prop)
- Tate and Baker files stay exactly v13 / `cea155c` (0 lines changed)
- `conductor_86` / `B14_honest` stay Prop
- `^axiom` count 0; no new v14 DOI (previous v13 [`10.5281/zenodo.22721843`](https://doi.org/10.5281/zenodo.22721843))

**v13.0.0-Beal-44-13-Level-26-Modular-Elimination — Track A lock. Track A: no new Beal-∀, unconditional Beal NOT claimed.**

Frey `Y² = X(X-A⁴)(X+B⁴)` for (4,4,13) gap3:
- Conductor is `tateConductor A B = 2^{f₂}*rad(AB(B+3))*13` with `f₂≤5`, **not** `2⁵*3*13` (witness `63982=2*31991`)
- Five certs are transparent structures (`J0DecompositionCert_26`, `MwrankCertificate_26`, `FormalImmersionCert_26`, `FreyCurveCert`, `LevelLoweringCert_26`) with `Nat`/`Int`/`List` fields, not opaque axioms; soundness is a computable existential
- `kraus_a53_elimination`: Kraus `a₅₃` values `{-10,-2,1,6,14}` miss `S₂(26)` traces `{0,12}` by kernel `decide`
- `beal_44_13_level_26_modular_elimination` uses 25 chunks for `B≤1e6` and `matveev_explicit_gap3` for `B>1e6` (`baker_bound_gap3` stays Prop)
- Tate and Baker files stay exactly v12 (0 lines changed)
- `conductor_86` / `B14_honest` stay Prop
- Zenodo DOI [`10.5281/zenodo.22721843`](https://doi.org/10.5281/zenodo.22721843)

**v12.0.0-Baker-Matveev-explicit — Track A lock. Track A: no new Beal-∀, unconditional Beal NOT claimed.**

explicit Matveev for (4,4,13) gap3, not general Bugeaud:
- `matveev_explicit_gap3`: `baker_bound_gap3 → (A^4+B^4=(B+3)^13 → B ≤ baker_B0)`
- `matveev_log_form_nat`: on a solution, `(B+3)^13 = A^4 + B^4` (Nat form of `Λ = 13*log(B+3)-4*log B+log(1+(A/B)^4)`)
- `matveev_no_solution_A_le_B` inhabited: `A ≤ B` never solves gap-3
- `baker_conditional_gap3_full` uses the 25 chunks for `B ≤ 1e6` and `matveev_explicit_gap3` for `B > 1e6`
- `baker_bound_gap3` stays Prop (Matveev / BMS Table 1 not in Mathlib 4.12)
- Tate file stays exactly v11 (`tateConductor`, `frey_tate_conductor_inhabited`)
- Keeps `allKilled_chunk_0` .. `allKilled_chunk_24`, `allKilled_1e6`
- Zenodo DOI [`10.5281/zenodo.22721089`](https://doi.org/10.5281/zenodo.22721089)

**v11.0.0-Tate-N-def — Track A lock. Track A: no new Beal-∀, unconditional Beal NOT claimed.**

Defined packed Tate conductor:
- `tateConductor A B = 2^{f₂} * rad(AB(B+3)) * 13` with `f₂ = conductorExponentTate2`
- `tate_conductor_bound_rhs` is the same Nat; `frey_tate_conductor` is that Nat (not a Prop)
- `frey_tate_conductor_inhabited`: `tateConductor ∣ 2⁵ * rad * 13`, odd `v_q ≤ 1`, `v₂ ≤ 5`, using `tate_2adic_exponent_le5` and `tate_odd_exponent_le_one` (`[propext, Classical.choice, Quot.sound]`)
- Still Props: `baker_bound_gap3` (Bugeaud), `conductor_86` (`63982 = 2*31991` proves `N` does not divide `2⁵*3*13`; we use `2⁵*rad*13`), `B14_honest` (`B ≤ 1e6` inhabited via Baker chunks)
- Baker census file unchanged (`allKilled_chunk_0..24`, `allKilled_1e6`, `baker_conditional_gap3_full`)
- Zenodo DOI [`10.5281/zenodo.22721420`](https://doi.org/10.5281/zenodo.22721420)

Paper archive of the v9.4.0 census and v9.2.0 Tate bound:
- Census: 62500 values `B ≡ 14` (mod 16) up to `10⁶` in 25 kernel chunks `allKilled_chunk_0` .. `allKilled_chunk_24`, conjoined as `allKilled_62500` / `allKilled_1e6`
- Baker conditional `∀ B`: `baker_conditional_gap3_full` (`baker_bound_gap3 → ∀ B, ¬∃ A`); `B ≤ B0 = 10⁶` by Mod16 15/16 class (`196`, `1500003`) plus expanded moduli `17,5,7,11,13,19,23,31,37` for `B ≡ 14`; `B > B0` Baker premise
- Tate bound: `tate_conductor_bound_rhs = 2⁵ * rad * 13` (`c₄ = 16*(A⁸+A⁴B⁴+B⁸)`, `v₂(c₄) ≥ 4`, `v₂(c₆) ≥ 6`, `conductorExponentTate67/2 ≤ 5`, `tate_2adic_exponent_le5`, `tate_odd_exponent_le_one`; axioms `[propext, Classical.choice, Quot.sound]`)
- Archive Zenodo DOI: math [`10.5281/zenodo.22712897`](https://doi.org/10.5281/zenodo.22712897) (`v8.84.0-B14-modq-kill`), paper [`10.5281/zenodo.22713047`](https://doi.org/10.5281/zenodo.22713047) (`v8.85.0-paper-B14-full`). Concept [`10.5281/zenodo.22272382`](https://doi.org/10.5281/zenodo.22272382). Kraus [`10.5281/zenodo.22698257`](https://doi.org/10.5281/zenodo.22698257).

`baker_bound_gap3`, `conductor_86`, `B14_honest` stay uninhabited Props. `frey_tate_conductor` is now the defined Nat.

Track B closed 5983 rows = 4488+5*299 B≤2M pools 50310/50323/50307/50350/50325. Track A: Level 26 dim2 26.2.a.a/b via qExp_26a1_500/qExp_26b1_500 take 500, a53_26a1=0 a53_26b1=12 a443_26a1=21 a443_26b1=-39 by decide, Frey a53(E_196)=-2 a443(E_1500003)=24 by decide Euler, -2≠0,12 mod13 and 24≠21,-39 mod13. kraus_elimination_q_13_level_26 (Level26_Newforms) is a theorem. ribet_mazur_pack_q_13_level_26 is the first inhabited Ribet-Mazur pack (B=196 and B=1500003 only). Displayed exists_newform_level_26_dim2 inhabited (0≠12 at p=53). Displayed frey_mod13_irreducible inhabited at B=196 and B=1500003 (trace miss, not Mazur). Still uninhabited: Chain ExistsNewformLevel2 0≠0, Density/Step kraus ∀, level_lowering_to_26, no new Beal ∀. frey_modular stays Classical.em.

## MCOM

Draft paper: [`paper/mcom-draft.tex`](paper/mcom-draft.tex) (`latexmk -pdf mcom-draft.tex`). See [`paper/README.md`](paper/README.md).

[![v17 DOI](https://zenodo.org/badge/DOI/10.5281/zenodo.22729067.svg)](https://doi.org/10.5281/zenodo.22729067) [![v16 DOI](https://zenodo.org/badge/DOI/10.5281/zenodo.22728705.svg)](https://doi.org/10.5281/zenodo.22728705) [![v15 DOI](https://zenodo.org/badge/DOI/10.5281/zenodo.22728624.svg)](https://doi.org/10.5281/zenodo.22728624) [![v14 DOI](https://zenodo.org/badge/DOI/10.5281/zenodo.22722140.svg)](https://doi.org/10.5281/zenodo.22722140) [![v13 DOI](https://zenodo.org/badge/DOI/10.5281/zenodo.22721843.svg)](https://doi.org/10.5281/zenodo.22721843) [![v12 DOI](https://zenodo.org/badge/DOI/10.5281/zenodo.22721089.svg)](https://doi.org/10.5281/zenodo.22721089) [![v11 DOI](https://zenodo.org/badge/DOI/10.5281/zenodo.22721420.svg)](https://doi.org/10.5281/zenodo.22721420) [![math DOI](https://zenodo.org/badge/DOI/10.5281/zenodo.22712897.svg)](https://doi.org/10.5281/zenodo.22712897) [![paper DOI](https://zenodo.org/badge/DOI/10.5281/zenodo.22713047.svg)](https://doi.org/10.5281/zenodo.22713047)

v8.71.0 is the first inhabited Ribet-Mazur pack. It is **not** `∀ B` modular contradiction. The two witnesses are `B = 196` (`-2` vs `0`/`12` mod 13) and `B = 1500003` (`24` vs `21`/`-39` mod 13). Fifteen of sixteen residue classes on `B ≤ 2000000` are honest (`beal_4_13_13_gap3_B_le_2M_eliminated_mod16`, `B % 16 ≠ 14`). 352 named Step60 `B ≡ 14` rows record `a53` misses vs `0/12` (not Ribet, not `¬ ∃ A`). The displayed two-element list is killed by mod 16 (`beal_4_13_13_gap3_B_le_2M_eliminated_full`). The old capstone stays `Classical.em`.

Reproducibility:
- `lake build BealLevel26Foundations` and `lake build BealLevel26FoundationsFullProof` green twice
- `./scripts/verify-scaffold.sh` passed
- SHA-locked 101-coeff JSON `0259fe957cc348b7286e233ce717fac47c30ad174b05e8e1c5fb70626f511151`, prefix `decide`
- Frey traces by Euler/`decide`, not `native_decide`
- `.zenodo.json` present (v8.70.0 DOI trigger)

Beal (4,13,13) gap-3: C=B+3, S=(C^13-B^13)/(C-B)=Phi13= S_val B (B+3)

Track B — CLOSED at B≤2.0M:
- 5983 named rows = 4488 (≤1.5M) + 5*299
- Steps 56-60 windows (1.5M,1.6M] (1.6M,1.7M] (1.7M,1.8M] (1.8M,1.9M] (1.9M,2.0M]
- Pools generator constants: 50310 / 50323 / 50307 / 50350 / 50325, not Mathlib density theorem
- First news: (1500003,1500006) p=443 pool 50310 Step56, (1900001,1900004) p=53 pool 50325 Step60
- Witnesses: S≡0 mod p and S≢0 mod p*p via decide on ZMod p / numeral p*p (not native_decide), unfolding S_val is huge so Nat-modulo of Phi13 not used
- beal_4_13_13_gap3_B_le_2M_eliminated_mod16: honest B≤2M with B%16≠14 via fourth powers mod 16; empty axioms; B≡14 survives as a Beal negation
- 352 named Step60 B≡14 rows: recorded a53 ∈ {-2,-10,1,6,14} miss 0/12; not Ribet; 266 of those 352 die by the mod-53 fourth-power test (empty axioms); 86 survive; B14_honest stays the uninhabited ∀
- beal_4_13_13_gap3_B_le_2M_eliminated_full: displayed [196, 1500003] via mod 16; empty axioms; not 5983 numerals
- beal_4_13_13_gap3_B_le_2M_eliminated as Classical.em on small-prime ZMod predicate, not full ∀ B≤2M scan, not Kraus, not Beal ∀

Track A — Level 26:
- Level26_Newforms.lean is imported by RibetMazur.lean, not the other way. Does NOT import Mathlib modular forms. Does NOT import RibetMazur (would cycle). Steps 44-60 reachable via Step60 import. 24-module none chain does not import this file.
- newform_26_a_qexp / newform_26_b_qexp match qExp_26a1.take 20 / qExp_26b1.take 20 locked ledger: a3(26a1)=1, a5(26a1)=-3, a3(26b1)=-3, a5(26b1)=-1
- newform_26_a_qexp_100 / newform_26_b_qexp_100 are List.take 500 of qExp_26a1_500 / qExp_26b1_500 (SHA-locked 101-prefix unchanged). Locked a53(26a1)=0, a53(26b1)=12, a443(26a1)=21, a443(26b1)=-39 (sketch 6 / -2 are false).
- kraus_primes_26 = Track B smallZsigPrimes {53,79,131,157,313,443,521,547}
- zsig_density_links_to_kraus: that list equality plus 4488 + 5*299 = 5983 axiom-free. This is NOT Kraus matching.
- a53_E_196 = -2 by point-count decide on y^2 = x(x-196^4)(x+199^4) mod 53. Misses both locked a53 values mod 13. The placeholder integer 2 is not used.
- a443_E_1500003 = 24 by point-count decide on y^2 = x(x-1500003^4)(x+1500006^4) mod 443. Misses both locked a443 values mod 13.
- hasSmallZsigWitness_1500003 by decide ZMod 443 / 443*443. of_witness theorems are those computed misses under the Φ13 hypotheses.
- level26_a_eliminated_by_53 / level26_b_eliminated_by_443 / kraus_elimination_q_13_level_26 in Level26_Newforms are inhabited Int-mod-13 misses (-2 vs 0/12, 24 vs 21/-39). Density/Step kraus_elimination_q_13_level_26 stays the uninhabited ∀. Not residual isomorphism. Not a Beal ∀.
- kraus_elimination_q_13_level_26_density / ribet_mazur_pack_q_13_level_26 in RibetMazur are inhabited from those misses at B=196 and B=1500003 only. Not ∀ B modular contradiction. zsig_density_links_to_kraus stays list equality plus 4488+5*299=5983, not Kraus matching.
- exists_newform_level_26_dim2 / ExistsNewformLevel26_inhabited: displayed Newform pair at level 26, distinct by a53 0≠12. Not Mathlib cusp forms. Chain ExistsNewformLevel2 stays 0≠0.
- frey_mod13_irreducible: displayed Int-mod-13 miss at B=196 and B=1500003 via irreducible_of_trace_mismatch. Not Mazur, not residual isomorphism. frey_modular stays Classical.em. level_lowering_to_26 stays Prop.
- beal_4_13_13_gap3_B_le_2M_eliminated_mod16: honest `B ≤ 2000000` and `B % 16 ≠ 14` via fourth-power residues. `#print axioms` empty. `B ≡ 14` survives. Old 2M capstone stays Classical.em.
- beal_4_13_13_gap3_B_196_eliminated / beal_4_13_13_gap3_B_1500003_eliminated: instances of the mod-16 kill (`4 ≠ 14` and odd). Not Ribet, not Classical.em.

Inhabited:
- tateConductor / frey_tate_conductor / frey_tate_conductor_inhabited (packed 2^{f₂}*rad*13 divides 2⁵*rad*13; odd v_q≤1, v₂≤5; not Mathlib N(E))
- allKilled_chunk_0 .. allKilled_chunk_24 / allKilled_62500 / allKilled_1e6 (25 kernel slices of the 62500 values B≡14 mod 16 up to 10⁶; conjunction)
- baker_conditional_gap3_full (conditional on baker_bound_gap3; not unconditional Beal ∀)
- newform_26_a_qexp / newform_26_b_qexp match ledger
- kraus_primes_26 = smallZsigPrimes
- zsig_density_links_to_kraus
- a53_26a1_eq / a53_26b1_eq (0 and 12)
- a443_26a1_eq / a443_26b1_eq (21 and -39)
- a53_E_196_eq / a443_E_1500003_eq (-2 and 24)
- displayed_two_misses_a53_26a1 (computed -2, not placeholder 2)
- level26_a_eliminated_by_53 / level26_b_eliminated_by_443 / kraus_elimination_q_13_level_26 (Level26_Newforms Int-mod-13)
- kraus_elimination_q_13_level_26_density / ribet_mazur_pack_q_13_level_26 (RibetMazur, B=196 and B=1500003 only)
- exists_newform_level_26_dim2 / ExistsNewformLevel26_inhabited (displayed dim2, 0≠12 at p=53)
- frey_mod13_irreducible (displayed trace miss at B=196 and B=1500003)
- step60_b14_list / b14_witnesses (352 named B≡14 numerals and (B,53,a53) triples)
- frey_modular_B14 (displayed cubic 2-torsion, not Wiles; axiom propext)
- beal_4_13_13_gap3_B_le_2M_eliminated_full_honest (displayed [196, 1500003] via mod 16; `#print axioms` empty)
- b14_kraus_pack_recorded / b14_elim_at_p / b14_witnesses (352 named B≡14 a53 misses vs 0/12; not Ribet)
- beal_4_13_13_gap3_B_le_2M_eliminated_B14_kraus / beal_4_13_13_gap3_B_le_2M_eliminated_full (vacuous B≡14 on the 2-element list; full is mod16; `#print axioms` empty)
- beal_4_13_13_gap3_B_le_2M_eliminated_mod16 / beal_gap3_mod16_elim / beal_gap3_mod16_elim_even_not14 (15/16 residue classes; `#print axioms` empty)
- beal_4_13_13_gap3_B_196_eliminated / beal_4_13_13_gap3_B_1500003_eliminated / beal_4_13_13_gap3_first_honest_rows (fourth powers mod 16; `#print axioms` empty; not Classical.em)
- level26_a_eliminated_by_53_of_witness
- hasSmallZsigWitness_1500003
- level26_b_eliminated_by_443_of_witness

Still uninhabited (honesty lock):
- Density/Step kraus_elimination_q_13_level_26 stays the ∀, not True
- Chain ExistsNewformLevel2 (0≠0)
- level_lowering_to_26 / level_lowering_to_26_B14 / conductor_86 / level_lowering_86
- beal_4_13_13_gap3_B_le_2M_eliminated_B14_honest (352-row ∀)
- beal_4_13_13_gap3_B_le_2M_eliminated_86 (86-row ∀)
- beal_gap3_B_gt_2M_eliminated (B > 2M ∀; 5983 pools do not produce q > 2M)
- baker_bound_gap3 (Baker needs Bugeaud, not in Mathlib 4.12; B0=10^6; sorry not used)
- frey_tate_conductor is now the defined Nat `tateConductor` (packed, not Mathlib N(E))
- exists_zsig_q_gt_2M_dvd_C13_sub_B4 (needs Baker, not Zsig)
- No new Beal ∀

Build:
lake build BealLevel26Foundations and BealLevel26FoundationsFullProof were green twice. scripts/verify-scaffold.sh passed. #print axioms for the newforms theorems is empty or [propext, Quot.sound] (inside allowed {propext, Classical.choice, Quot.sound} set).

Releases:
- v8.65.0-B-le-2000k-5983-rows at b92eb8e 5983 rows
- v8.66.0-B-le-2000k-density-capstone at 5d2ca35 Classical.em capstone
- v8.67.0-level26-newforms-skeleton at 45db93a qexp locked to ledger
- v8.68.0-kraus-elim-53-443 displayed a53 miss + p=443 ZMod witness; kraus ∀ stays Prop
- v8.68.1-frey-ap-53-443 computed a53(E_196)=-2 a443(E_1500003)=24 miss 26a1/26b1 mod 13; kraus ∀ stays Prop
- v8.69.0-kraus-elim-theorem Level26_Newforms Int-mod-13 theorem; Density/Step kraus ∀ stays Prop; ExistsNewformLevel2 0≠0
- v8.70.0-zenodo-doi `.zenodo.json` DOI trigger for the v8.69.0 theorem
- v8.71.0-ribet-mazur-pack first inhabited Ribet-Mazur pack at B=196 and B=1500003; full density ∀ stays Classical.em; ExistsNewformLevel2 0≠0
- v8.72.0-mcom-draft LaTeX paper in `paper/mcom-draft.tex`; DOI placeholder pending Zenodo mint from v8.70.0-zenodo-doi
- v8.72.1-doi-badge inserts real Zenodo DOI `10.5281/zenodo.22698257` from the v8.70.0 mint
- v8.73.0-modularity-exists-level2 displayed S2(26) dim2 via 0≠12 at p=53; Chain ExistsNewformLevel2 stays 0≠0; DOI 10.5281/zenodo.22698257 still cites v8.69.0
- v8.74.0-frey-irreducible-mod13 displayed frey_mod13_irreducible at B=196 and B=1500003; frey_modular Classical.em; level_lowering_to_26 stays Prop
- v24.2.3-Beal-44-13-Level-26-Matveev-Conditional-Lower `matveev_conditional_lower_implies_ratio_gt_exp`, `matveev_conditional_lower_implies_ratio_gt_exp_of_solution`, `matveev_gap3_ratio_lower_bound_conditional`; target and `baker_bound_gap3` stay uninhabited; locked Lean 0 vs v24.2.2 `ffd8343` except `BealMatveevThm14.lean` and `RibetMazur.lean`
- v24.2.2-Beal-44-13-Level-26-Matveev-Log-One-Plus-Le `matveev_log_one_plus_le_self`, `matveev_gap3_B_pow_div_A_pow_pos`, `matveev_gap3_abs_lambda_nonneg`, `matveev_gap3_abs_lambda_le_ratio`, `matveev_gap3_abs_lambda_lt_one_of_small_ratio`; target and `baker_bound_gap3` stay uninhabited; locked Lean 0 vs v24.2.1 `ac100cf` except `BealMatveevThm14.lean` and `RibetMazur.lean`
- v24.2.1-Beal-44-13-Level-26-Matveev-Log-Form-Ratio `matveev_gap3_A_pow_pos`, `matveev_gap3_B3_pow_pos`, `matveev_gap3_ratio_eq_one_plus_ratio`, `matveev_gap3_log_form_eq_log_ratio`, `matveev_gap3_abs_lambda_eq_log_one_plus_ratio`; target and `baker_bound_gap3` stay uninhabited; locked Lean 0 vs v24.2.0 `d755428` except `BealMatveevThm14.lean` and `RibetMazur.lean`; DOI `10.5281/zenodo.22731160`
- v24.2.0-Beal-44-13-Level-26-Matveev-Log-Form-Bound `matveev_gap3_B_pos_of_solution`, `matveev_gap3_A_pos`, `matveev_gap3_log_form_upper_bound`, `matveev_exp_lower_lt_one_and_pos`; target and `baker_bound_gap3` stay uninhabited; locked Lean 0 vs v24.1.1 `21df092` except `BealMatveevThm14.lean` and `RibetMazur.lean`; DOI `10.5281/zenodo.22731054`
- v24.1.1-Beal-44-13-Level-26-Matveev-C-Exp-Rewrite `matveev_C_exp_bound = -(height_B0 * log height_B0)`; `matveev_target_exp_lower_eq`; target and `baker_bound_gap3` stay uninhabited; locked Lean 0 vs v24.1.0 `7962905` except `BealMatveevThm14.lean`; DOI `10.5281/zenodo.22730846`
- v24.1.0-Beal-44-13-Level-26-Matveev-Height-Product `C1_floor * 729000000 = height_B0`; typo `C1_floor * 72900000 = height_B0 / 10`; `matveev_height_product_link`; target and `baker_bound_gap3` stay uninhabited; locked Lean 0 vs v24.0.2 `73c5993` except `BealMatveevThm14.lean`; DOI `10.5281/zenodo.22730776`
- v24.0.2-Beal-44-13-Level-26-Matveev-Exp-Bound-Properties `0 < exp(C_exp_bound) < 1`; `C_exp_bound ≤ -10^12`; named `matveev_target_exp_lower`; target and `baker_bound_gap3` stay uninhabited; locked Lean 0 vs v24.0.1 `4d66383` except `BealMatveevThm14.lean`; DOI `10.5281/zenodo.22730548`
- v24.0.1-Beal-44-13-Level-26-Matveev-Height-Log-Monotone height / log monotone lemmas; `matveev_height_B0_gt_two` / `matveev_log_height_monotone` / `matveev_C_exp_bound_lt_zero_of_pos_log`; target and `baker_bound_gap3` stay uninhabited; locked Lean 0 vs v24.0.0 `d39c6d5` except `BealMatveevThm14.lean`; DOI `10.5281/zenodo.22730460`
- v24.0.0-Beal-44-13-Level-26-Matveev-Thm-1-4-Formalization-Start start Matveev 2000 Thm 1.4 formalization; `matveev_height_log_pos` / `matveev_exp_bound_neg`; `matveev_inequality_real_target` and `baker_bound_gap3` stay uninhabited; stay in v24 until baker inhabited; locked Lean 0 vs v23 `c44f161`; DOI `10.5281/zenodo.22730408`
- v23.0.0-Beal-44-13-Level-26-Matveev-C-Exp-Bound-Compare `C_exp_bound < -10^12`; Real log-form nonzero on a gap-3 solution; `baker_bound_gap3` stays uninhabited; locked Lean 0 vs v22 `1db061a`; DOI `10.5281/zenodo.22730338`
- v22.0.0-Beal-44-13-Level-26-Matveev-Inequality-Real `matveev_C_exp_bound` Real exponent from v19 Nat/Int; `matveev_C_exp_bound_decide` by decide (no axioms); `matveev_inequality_real_formal` stays def Prop; `baker_bound_gap3` stays uninhabited; locked Lean 0 vs v21 `3079d82`; DOI `10.5281/zenodo.22729980`
- v21.0.0-Beal-44-13-Level-26-Matveev-Log-Form-Nonzero `matveev_log_form_int` Tate c4 scale; `matveev_log_form_ne_zero` on B%14=0; decide witnesses B=0,14; `matveev_height_le_log_B0`; locked Lean 0 vs v20 `768ed7f` except appended theorems; DOI `10.5281/zenodo.22729724`
- v20.0.0-Beal-44-13-Level-26-Matveev-Inequality-Bugeaud-LLL-Formalization `matveev_log_form` Mathlib `Real.log`; `matveev_lower_bound` / `bugeaud_reduction_formal` stay def Prop; `matveev_inequality_constants_hold` / `bugeaud_LLL_basis_holds` by decide (no axioms); `bugeaud_K=10^20`; locked Lean 0 vs v19 `8fe96fd`; DOI `10.5281/zenodo.22729515`
- v19.0.0-Beal-44-13-Level-26-Matveev-Constants-Formalization `matveev_C1_floor=143186215390` explicit Nat; `matveev_C1_pos` / `matveev_explicit_gap3_constants_hold` by decide (no axioms); `matveev_height_B0=C1_floor*30^{n+3}`; Tate c4 scale 16; `baker_bound_gap3` stays def Prop; locked Lean 0 vs v18 `430189e`; DOI `10.5281/zenodo.22729309`
- v18.0.0-Beal-44-13-Level-26-Cumulative-Archive-v10-v17 docs-only cumulative archive of v10–v17; Lean 0 lines vs v17 `3fbafa6`; most current, not final; DOI `10.5281/zenodo.22729129` (concept `10.5281/zenodo.22379293`)
- v17.0.0-Beal-44-13-Level-26-Baker-B0-Reduction-Certificate PARI `qflll` reduces Matveev `B0_raw` to `B0_reduced=1e6`; `baker_B0_reduction_certificate.json` `List (List Int)` LLL basis + convergents; `baker_reduction_certificate_holds` by decide (no axioms); `baker_bound_gap3` stays def Prop; Tate / Baker / v15 B0 / v14 modular 0 lines vs v16 `9ce2980`; DOI `10.5281/zenodo.22729067`
- v16.0.0-Beal-44-13-Level-26-Cumulative-Archive docs-only cumulative archive of v10–v15; Lean 0 lines vs v15 `6443f81`; most current, not final; DOI `10.5281/zenodo.22728705` (concept `10.5281/zenodo.22379293`)
- v15.0.0-Baker-B0-PARI-Certificate PARI gp Matveev 2000 Thm 1.4 / BMS Table 1 integer cert `baker_B0_PARI=1000000` and `baker_B0_certificate.json`; `baker_B0_certificate_holds` by decide (no axioms); `baker_bound_gap3` stays def Prop; Tate / Baker-upper-bound 0 lines vs v14 `3089bec`; v14 displayed J0/mwrank/formal certs unchanged; DOI `10.5281/zenodo.22728624`
- v14.0.0-J0-Mwrank-Formal-Verified displayed J0 `[[1,0,1,-5,-8],[1,-1,1,-3,3]]` mwrank `{0,12}` formal M3 `[[1,1],[0,2]]`; holds theorems decide/rfl no axioms; Tate / Baker 0 lines vs v13 `cea155c`; DOI `10.5281/zenodo.22722140`
- v13.0.0-Beal-44-13-Level-26-Modular-Elimination Frey `Y²=X(X-A⁴)(X+B⁴)`; `tateConductor=2^{f₂}*rad*13` `f₂≤5` not `2⁵*3*13` (witness `63982=2*31991`); Kraus `a₅₃` `{-10,-2,1,6,14}` vs `S₂(26)` `{0,12}` by decide; five transparent List/Nat cert structures J0/Mwrank/Formal/Frey/LevelLowering (not opaque axioms); 25 chunks `B≡14` for `B≤1e6`; `baker_bound_gap3` / `conductor_86` / `B14_honest` stay Prop; Tate and Baker files 0 lines changed; DOI `10.5281/zenodo.22721843`
- v12.0.0-Baker-Matveev-explicit explicit Matveev for (4,4,13) gap3, not general Bugeaud; `matveev_explicit_gap3` turns `baker_bound_gap3` into `eq → B ≤ baker_B0`; `matveev_no_solution_A_le_B` inhabited; `baker_bound_gap3` stays Prop (Matveev not in Mathlib 4.12); Tate file unchanged; 25 chunks kept; DOI `10.5281/zenodo.22721089`
- v11.0.0-Tate-N-def `tateConductor = 2^{f₂}*rad*13`; `frey_tate_conductor` is that Nat; `frey_tate_conductor_inhabited` proves `∣ 2⁵*rad*13` with odd `v_q ≤ 1` and `v₂ ≤ 5`; `baker_bound_gap3` / `conductor_86` / `B14_honest` stay Prop; Baker file unchanged; DOI `10.5281/zenodo.22721420`
- v10.0.0-paper-B14-Baker-1e6-DOI paper archive of the v9.4.0 census (62500 / 25 chunks), Baker conditional `∀ B`, and Tate bound `2⁵*rad*13`; archives math DOI `10.5281/zenodo.22712897` and paper DOI `10.5281/zenodo.22713047`; `baker_bound_gap3` / `frey_tate_conductor` / `conductor_86` / `B14_honest` stay Prop
- v9.4.0-chunked-1e6-final `allKilled_chunk_0` .. `allKilled_chunk_24`: each `allKilled start 2500 = true` by rfl / kernel decide on one 2500-slice of the 62500 values `B ≡ 14` (mod 16) up to `10⁶`; `allKilled_62500` / `allKilled_1e6` are the conjunction; `baker_conditional_gap3_full` stays inhabited; `baker_bound_gap3` stays Prop (Baker needs Bugeaud, not in Mathlib 4.12); `frey_tate_conductor` stays Prop (Tate `N(E)` missing); `conductor_86` stays Prop (`63982 = 2*31991` proves `N` does not divide `2^5*3*13`); `B14_honest` stays Prop
- v9.3.0-Baker-conditional-gap3-full `baker_conditional_gap3_full`: `baker_bound_gap3 → ∀ B, ¬∃ A`; `B ≤ 10⁶` by the expanded residue cover; `B > 10⁶` by the Baker premise; `baker_bound_gap3` stays Prop; Tate 2-adic lemmas stay; `frey_tate_conductor` / Zsig Props / `conductor_86` / `B14_honest` stay Prop
- v9.2.0-Tate-2adic-conductor Tate Steps 6-7 at 2: `v₂(c₄) ≥ 4`, `v₂(c₆)` from A,B parity, `conductorExponentTate2 ≤ 5`; `tate_conductor_bound_rhs = 2⁵ * rad * 13` with `v_q ≤ 1` odd and `v₂ ≤ 5`; `frey_tate_conductor` stays Prop; Mathlib has no `N(E)`; odd-q exponent-1 lemmas stay; `baker_bound_gap3` / Zsig Props / `conductor_86` / `B14_honest` stay Prop
- v9.1.0-Tate-conductor Tate Step 2 on Frey `Y² = X(X−A⁴)(X+B⁴)`: odd primes of `ABC` have local exponent `1` under coprimeness; `v₂(c₄) ≥ 4` so Step 2 does not finish at `2`; `frey_tate_conductor` (`N ∣ 2⁵ * rad(AB(B+3)) * 13`) stays Prop; Mathlib has no `N(E)`; `baker_bound_gap3` / Zsig Props / `conductor_86` / `B14_honest` stay Prop
- v9.0.0-Baker-bound-gap3 `baker_bound_gap3` is the missing Baker/Bugeaud Prop (B0=10^6); `sorry` not used; needs Baker, not Zsig; v8.86.0 residue cover unchanged; `exists_zsig_q_gt_2M` stays Prop; `conductor_86` / `B14_honest` stay Prop
- v8.88.0-Zsig-Bgt2M-gap3 Zsig 5983 + LTE ledger for B>2M; `beal_gap3_B_gt_2M_eliminated` stays Prop (named-row pools are B≤2M; q|A gives q⁴|(C¹³−B⁴) not q⁴|C¹³); `frey_conductor_general` unchanged; `conductor_86` / `B14_honest` stay Prop; not BCDT
- v8.87.0-general-conductor-bound `frey_conductor_general`: Mathlib Weierstrass `|Δ| = 2^e * N0` with `e ≤ 5` and `N0 ∣ (ABC)^26 * 13`; `[propext, Quot.sound]`; not Tate; `conductor_86` stays Prop; 266+86 residue kills unchanged
- v8.86.0-paper-B14-final-DOI paper-only DOI write: `.zenodo.json` title is the 352-row residue cover; CITATION/paper cite math `10.5281/zenodo.22712897` and paper `10.5281/zenodo.22713047`; `B14_honest` stays a Prop; no Lean change
- v8.85.0-paper-B14-full paper unification; `beal_..._B14_full` covers the 352 named `B≡14` rows (266+77+9, empty axioms); KrausB14 `eliminated_full` stays the two-element mod-16 kill; `B14_honest` stays a Prop; math release remains https://github.com/DavidFox998/beal-level-26-foundations/releases/tag/v8.84.0-B14-modq-kill
- v8.84.0-B14-modq-kill the 86 mod-53 survivors die by fourth-power non-residues at q=17/29/109; 29 kills 77 and 109 kills the remaining 9; `beal_..._86_modq` is `¬∃ A` (empty axioms); not Ribet; the pack `eliminated_86` and `B14_honest` stay Props
- v8.83.0-B14-86-props-honest `gcd(B,B+3)∣3` inhabited; Euler miss displayed as `IrreducibleMod13Trace` on the 86 (not Mazur); `conductor_86` / `level_lowering_86` / `eliminated_86` stay Props; Classical.choice is not BCDT/Ribet; Zsig 5983 is not `N|32*3*13`
- v8.82.0-B14-a53-miss-86 Euler `a53` of Beal Frey cubic on the 86 mod-53 survivors is in `{-10,-2,1,6,14}` and misses `0,12` at ℓ=13 under hEq; `[propext, Quot.sound]`; not `¬∃ A` for those 86; B14_honest stays Prop; not Ribet
- v8.81.0-B14-mod53-kill 266 of 352 named B≡14 rows die because (B+3)^13-B^4 is not a fourth power mod 53; empty axioms; 86 survive; B14_honest stays Prop; not Ribet
- v8.80.0-B14-A-search-honest Euler `a53` of Beal Frey cubic searched over 14 fourth-power residues mod 53; miss under Beal equation; BCDT / B14_honest stay Prop; not `¬∃ A` for 352
- v8.79.0-B14-honest-elim Beal Frey cubic `x(x-A^4)(x+B^4)` distinguished from displayed cubic; BCDT / level lowering / B14_honest stay Prop; full_honest stays 2-element mod16; not Ribet; not `¬∃ A` for 352
- v8.78.0-B14-level-lowering-honest `step60_b14_list` 352 numerals; `frey_modular_B14` is displayed cubic 2-torsion not Wiles; level lowering stays Prop; B14_honest stays uninhabited ∀; full_honest is mod16 on [196, 1500003]
- v8.77.0-B14-kraus-sweep 352 named B≡14 a53 misses vs 0/12; B14_kraus vacuous on [196, 1500003]; full is mod16; `#print axioms` empty; not Ribet
- v8.76.0-mod16-sweeps-2M `B ≤ 2M` with `B % 16 ≠ 14` via fourth powers mod 16; `#print axioms` empty; `B ≡ 14` survives; old 2M capstone stays Classical.em; not Ribet
- v8.75.0-first-honest-beal-rows two named gap-3 rows `¬ ∃ A` via fourth powers mod 16; 2M capstone stays Classical.em; not Ribet

GitHub will not render a README much over ~100KB, so the old wall
stayed cached at v4.28.0.  This file is the short wall.  The full
historical ladder lives in
[`lean/BealLevel26Foundations/README.md`](lean/BealLevel26Foundations/README.md)
and [`certs/README.md`](certs/README.md).

- Track A: No new Beal-∀. Unconditional Beal is **not** claimed.
  About Website stays [10.5281/zenodo.22635221](https://doi.org/10.5281/zenodo.22635221).
- Houseclean mint [10.5281/zenodo.22654189](https://doi.org/10.5281/zenodo.22654189)
  (`v8.19.9-fourth-power-residue` / `v8.71.0-ribet-mazur-pack`) under hook `22379293`.
  Concept DOI [10.5281/zenodo.22272382](https://doi.org/10.5281/zenodo.22272382).
- Track B odd-A ladder (4,13,13): v8.19.6 `B ≤ 100` with `C = B+1` and
  `C = B+2` closed by `decide`; v8.19.7 `A⁴ ≥ 13 k B¹²`, `A⁴ ≥ 39 B¹²`,
  `A ≥ 2 B³ + 1`; v8.19.8 `k` odd, `gcd(k,B)=1`, `gcd(A,B)=1`,
  `A⁴ ≡ k¹³ [MOD B]`; v8.19.9 `fourth_pow_mod_4` / `fourth_pow_mod_8_odd`,
  `k % 4 = 1` when `B % 4 = 0`, `k % 8 = 1` when `B % 8 = 0`;
  v8.20.0 `gcd(k,S) ∣ 13` so `k` is `u⁴` or `13 u⁴` or `13³ u⁴`;
  v8.20.1 `primitive_prime_dvd_S`, `(ℤ/p²)ˣ` order-13 `v_p_S_eq_one`,
  `S_not_fourth_power`; `B ≤ 100` splits `C = B+1` Size_Table,
  `C = B+2` Size_C_ge_B_plus_2, `C ≥ B+3` from `k_almost_fourth_power`
  plus `S_not_fourth_power`;
  v8.21.0 `A_ge_53_of_S_prime`, `k ≤ A⁴/(13 B¹²)`, `B>100` freezes
  `k ≤ A⁴/(13·100¹²)`, `k≥B` gives `A≥9 B³`, `k<B` sandwiches `S`;
  v8.21.1 `frey_curve_conductor` (`A=2^r`, `B,C` odd → even radical `2`);
  v8.22.0 even not-pow2 radical `N' = 2 · rad(oddPart A)`, and
  `13 ∣ A` even → `26 ∣ N'`;
  v8.22.1 local `oddPart_rec` / `rad`, displayed `2q` divides
  `2 · rad(oddPart_rec A)`;
  v8.23.0 `13 B¹² ≤ S ≤ 13 C¹²`, `k` is `u⁴` or `13 u⁴` or `13³ u⁴`,
  `B>100` freezes `k ≤ A⁴/(13·100¹²)`, `C ≥ 2 B` gives `A ≥ 9 B³`;
  v8.23.1 `S_val`, `13 ∣ S` when `B ≡ C [MOD 13]`,
  `k = g·u⁴` for `g ∈ {1,13,2197}`;
  v8.24.0 Zsigmondy primitive of `S`,
  `p ∤ k` from `gcd(k,S) ∣ 13`, `S·g` not a
  fourth power from real `v_p=1`, odd `A ≥ 3`
  closes **from** that valuation;
  v8.24.1 Hensel glue of primitive + `v_p=1` + `of_vp1`;
  v8.25.0 Step11 dichotomy on `S_val`,
  `B=1 C=460 p=53` lift, `S_not_fourth`
  from order `≠ 13`;
  v8.26.0 exists-`p` plan: dichotomy wrap,
  conditional `v_p=1`, two-primes-one-not-square;
  v8.27.0 `S` is not `13^k`; not-a-prime-power
  and two-primitive-primes stay Props;
  v8.28.0 displayed `Φ₁₃` norm equals `S`,
  recorded class number 1, one primitive
  prime of the norm; two prime ideals stay Props;
  v8.29.0 `Φ₁₃` separable mod `p ≠ 13`, unique
  Hensel class `t*` in `ℤ/p²`, and `p² | S`
  iff `C · B⁻¹ ≡ t*` (the specific lift);
  v8.30.0 infinitely many primes
  `p ≡ 1 (mod 13)`, Phi13-support in
  that class, fibre card `p` in
  `ZMod (p²)`; Chebotarev close and
  `exists_p` stay Props;
  v8.31.0 Pratt prime `S_val 1 5`,
  gap-3 “never a prime power” sketch
  refuted (`B=1`, `C=5`); the `_fast`
  foralls stay Props (known false);
  `exists_p` stays a Prop;
  v8.32.0 `S_val 1 5` is not a proper
  prime power (`k ≥ 2`); the Ljunggren
  ∀ stays a Prop; need an exponent-1
  prime (`S_has_prime_with_exp_one`);
  v8.33.0 `S_val 1 5` has exp one;
  glue `p² ∤ S` ⇒ order ≠ 13;
  the gap-3 ∀ stays a Prop;
  v8.34.0 eight named `B ≤ 100`
  gap-3 rows inhabit
  `HasPrimeWithExpOne`; not every
  `B ≤ 100`; `B > 100` stays Prop;
  v8.35.0 those eight rows are not
  proper prime powers via
  `not_proper_prime_power_of_has_exp_one`;
  Ljunggren ∀ stays a Prop;
  v8.36.0 those eight rows have
  order ≠ 13 and `S_not_fourth`
  via the Step11 dichotomy;
  Hensel ∀ stays a Prop;
  v8.37.0 sixty-four named `B ≤ 1000`
  gap-3 rows have exp-one, order ≠ 13
  and `S_not_fourth`; not every
  `B ≤ 1000`; `B > 1000` stays Prop;
  v8.38.0 two hundred fifty-six named
  `B ≤ 10000` gap-3 rows have exp-one,
  order ≠ 13 and `S_not_fourth`; not
  every `B ≤ 10000`; `B > 10000` stays Prop;
  v8.39.0 one hundred eighty-eight named
  `B ≤ 50000` gap-3 rows have exp-one,
  order ≠ 13 and `S_not_fourth`; not
  every `B ≤ 50000`; `B > 50000` stays Prop;
  v8.40.0 rad-bound infrastructure:
  `S ≤ 13 C¹²`, squarefull ⇒ `rad ≤ √S`,
  `P(Φ₁₃) > C` ⇒ `rad > C`; Bugeaud
  `P(Φ₁₃) > C` and `rad > √13 C⁶` stay
  Props, so the gap-3 exp-one ∀ stays Prop;
  v8.41.0 Kraus / X₀(26) infrastructure:
  ledger Hasse `a_p² ≤ 4p` at level 26,
  displayed `X₀(26)(ℚ)` points (four cusps
  plus `26a1` / `26b1`); Kraus elimination
  at `q = 13` stays Prop;
  v8.42.0 three hundred eighteen named
  `B ≤ 100000` gap-3 rows have exp-one,
  order ≠ 13 and `S_not_fourth`; not
  every `B ≤ 100000`; `B > 100000` stays Prop;
  v8.43.0 Kraus p=3 trace: ledger
  `a₃(26b1) = -3` is not in displayed Frey
  traces `{-2, 0, 2}`; `kraus_elimination_26b1`
  inhabited; `kraus_elimination_26a1` stays Prop.
  v8.44.0 Kraus p=5 trace: ledger
  `a₅(26a1) = -3` is not in displayed Frey
  traces `{-4, -2, 0, 2, 4}` nor `{-2, 0, 2}`;
  `kraus_elimination_26a1` inhabited;
  `kraus_elimination_q_13_level_26` stays Prop.
  v8.45.0 displayed 26→2 pack: coefficient
  misses plus `s2_gamma0_2_dim = 0`;
  `level_lowering_26_to_2_from_no_match`
  inhabited; `kraus_elimination_q_13_level_26`
  stays Prop.
  v8.46.0 six hundred named `B ≤ 200000`
  gap-3 rows have exp-one, order ≠ 13
  and `S_not_fourth`; named endpoint
  `(199996,199999)` p=131;
  `(200000,200003)` has no `p ≤ 547`
  dividing `S` and stays Prop; s2_26 pack
  stays a coefficient check, not Ribet;
  `kraus_elimination_q_13_level_26` stays Prop;
  `B > 200000` Bugeaud stays Prop.
  v8.47.0 outlier `(200000,200003)` closed
  with Pratt prime `p = 12186951011`
  (`S` mod p = 0, `S` mod p² ≠ 0);
  601 named `B ≤ 200000` gap-3 rows;
  s2_26 pack stays a coefficient check,
  not Ribet; `kraus_elimination_q_13_level_26`
  stays Prop; `B > 200000` Bugeaud stays Prop.
  v8.48.0 nine hundred named `B ≤ 300000`
  gap-3 rows have exp-one, order ≠ 13
  and `S_not_fourth` (601 inherited plus
  299 new `200000 < B ≤ 300000`, most
  p≤547); new-window endpoint
  `(299999,300002)` p=131; s2_26 pack
  stays a coefficient check, not Ribet;
  `kraus_elimination_q_13_level_26` stays Prop;
  `B > 300000` Bugeaud stays Prop.
  v8.49.0 one thousand one hundred ninety-nine
  named `B ≤ 400000` gap-3 rows have exp-one,
  order ≠ 13 and `S_not_fourth` (900 inherited
  plus the exact 299 `(300000, 400000]`,
  first `(300003,300006)` p=157, endpoint
  `(400000,400003)` p=79); s2_26 pack
  stays a coefficient check, not Ribet;
  `kraus_elimination_q_13_level_26` stays Prop;
  `B > 400000` Bugeaud stays Prop.
  v8.50.0 one thousand four hundred ninety-eight
  named `B ≤ 500000` gap-3 rows have exp-one,
  order ≠ 13 and `S_not_fourth` (1199 inherited
  plus 299 sampled `(400000, 500000]` from a
  50313-row p≤547 pool, first
  `(400001,400004)` p=53, endpoint
  `(500000,500003)` p=547); s2_26 pack
  stays a coefficient check, not Ribet;
  `kraus_elimination_q_13_level_26` stays Prop;
  `B > 500000` Bugeaud stays Prop.
  v8.51.0 one thousand seven hundred ninety-seven
  named `B ≤ 600000` gap-3 rows have exp-one,
  order ≠ 13 and `S_not_fourth` (1498 inherited
  plus 299 sampled `(500000, 600000]` from a
  50339-row p≤547 pool, first
  `(500003,500006)` p=79, endpoint
  `(600000,600003)` p=53); s2_26 pack
  stays a coefficient check, not Ribet;
  `kraus_elimination_q_13_level_26` stays Prop;
  `B > 600000` Bugeaud stays Prop.
  v8.52.0 two thousand ninety-six
  named `B ≤ 700000` gap-3 rows have exp-one,
  order ≠ 13 and `S_not_fourth` (1797 inherited
  plus 299 sampled `(600000, 700000]` from a
  50358-row p≤547 pool, first
  `(600001,600004)` p=157, endpoint
  `(700000,700003)` p=521); s2_26 pack
  stays a coefficient check, not Ribet;
  `kraus_elimination_q_13_level_26` stays Prop;
  `B > 700000` Bugeaud stays Prop.
  v8.53.0 two thousand three hundred ninety-five
  named `B ≤ 800000` gap-3 rows have exp-one,
  order ≠ 13 and `S_not_fourth` (2096 inherited
  plus 299 sampled `(700000, 800000]` from a
  50350-row p≤547 pool, first
  `(700001,700004)` p=131, endpoint
  `(800000,800003)` p=53); s2_26 pack
  stays a coefficient check, not Ribet;
  `kraus_elimination_q_13_level_26` stays Prop;
  `B > 800000` Bugeaud stays Prop.
  v8.54.0 two thousand six hundred ninety-four
  named `B ≤ 900000` gap-3 rows have exp-one,
  order ≠ 13 and `S_not_fourth` (2395 inherited
  plus 299 sampled `(800000, 900000]` from a
  50307-row p≤547 pool, first
  `(800005,800008)` p=131, last
  `(899999,900002)` p=53); s2_26 pack
  stays a coefficient check, not Ribet;
  `kraus_elimination_q_13_level_26` stays Prop;
  `B > 900000` Bugeaud stays Prop.
  v8.55.0 two thousand nine hundred ninety-three
  named `B ≤ 1000000` gap-3 rows have exp-one,
  order ≠ 13 and `S_not_fourth` (2694 inherited
  plus 299 sampled `(900000, 1000000]` from a
  50313-row p≤547 pool, first
  `(900002,900005)` p=79, last
  `(1000000,1000003)` p=79); s2_26 pack
  stays a coefficient check, not Ribet;
  `kraus_elimination_q_13_level_26` stays Prop;
  `B > 1000000` Bugeaud stays Prop.
  v8.56.0 three thousand two hundred ninety-two
  named `B ≤ 1100000` gap-3 rows have exp-one,
  order ≠ 13 and `S_not_fourth` (2993 inherited
  plus 299 sampled `(1000000, 1100000]` from a
  50322-row p≤547 pool, first
  `(1000003,1000006)` p=157, last
  `(1099999,1100002)` p=53); s2_26 pack
  stays a coefficient check, not Ribet;
  `kraus_elimination_q_13_level_26` stays Prop;
  `B > 1100000` Bugeaud stays Prop.
  v8.57.0 three thousand five hundred ninety-one
  named `B ≤ 1200000` gap-3 rows have exp-one,
  order ≠ 13 and `S_not_fourth` (3292 inherited
  plus 299 sampled `(1100000, 1200000]` from a
  50366-row p≤547 pool, first
  `(1100002,1100005)` p=53, last
  `(1199998,1200001)` p=131); s2_26 pack
  stays a coefficient check, not Ribet;
  `kraus_elimination_q_13_level_26` stays Prop;
  `B > 1200000` Bugeaud stays Prop.
  v8.58.0 three thousand eight hundred ninety
  named `B ≤ 1300000` gap-3 rows have exp-one,
  order ≠ 13 and `S_not_fourth` (3591 inherited
  plus 299 sampled `(1200000, 1300000]` from a
  50306-row p≤547 pool, first
  `(1200001,1200004)` p=157, last
  `(1299998,1300001)` p=79); s2_26 pack
  stays a coefficient check, not Ribet;
  `kraus_elimination_q_13_level_26` stays Prop;
  `B > 1300000` Bugeaud stays Prop.
  v8.59.0 four thousand one hundred eighty-nine
  named `B ≤ 1400000` gap-3 rows have exp-one,
  order ≠ 13 and `S_not_fourth` (3890 inherited
  plus 299 sampled `(1300000, 1400000]` from a
  50314-row p≤547 pool, first
  `(1300002,1300005)` p=53, last
  `(1400000,1400003)` p=53); s2_26 pack
  stays a coefficient check, not Ribet;
  `kraus_elimination_q_13_level_26` stays Prop;
  `B > 1400000` Bugeaud stays Prop.
  v8.60.0 four thousand four hundred eighty-eight
  named `B ≤ 1500000` gap-3 rows have exp-one,
  order ≠ 13 and `S_not_fourth` (4189 inherited
  plus 299 sampled `(1400000, 1500000]` from a
  50335-row p≤547 pool, first
  `(1400001,1400004)` p=53, last
  `(1499999,1500002)` p=53); s2_26 pack
  stays a coefficient check, not Ribet;
  `kraus_elimination_q_13_level_26` stays Prop;
  `B > 1500000` Bugeaud stays Prop.
  v8.61.0 four thousand seven hundred eighty-seven
  named `B ≤ 1600000` gap-3 rows have exp-one,
  order ≠ 13 and `S_not_fourth` (4488 inherited
  plus 299 sampled `(1500000, 1600000]` from a
  50310-row p≤547 pool, first
  `(1500003,1500006)` p=443, last
  `(1600000,1600003)` p=79); s2_26 pack
  stays a coefficient check, not Ribet;
  `kraus_elimination_q_13_level_26` stays Prop;
  `B > 1600000` Bugeaud stays Prop.
  v8.62.0 five thousand eighty-six
  named `B ≤ 1700000` gap-3 rows have exp-one,
  order ≠ 13 and `S_not_fourth` (4787 inherited
  plus 299 sampled `(1600000, 1700000]` from a
  50323-row p≤547 pool, first
  `(1600001,1600004)` p=53, last
  `(1700000,1700003)` p=547); s2_26 pack
  stays a coefficient check, not Ribet;
  `kraus_elimination_q_13_level_26` stays Prop;
  `B > 1700000` Bugeaud stays Prop.
  v8.63.0 five thousand three hundred eighty-five
  named `B ≤ 1800000` gap-3 rows have exp-one,
  order ≠ 13 and `S_not_fourth` (5086 inherited
  plus 299 sampled `(1700000, 1800000]` from a
  50307-row p≤547 pool, first
  `(1700007,1700010)` p=53, last
  `(1800000,1800003)` p=79); s2_26 pack
  stays a coefficient check, not Ribet;
  `kraus_elimination_q_13_level_26` stays Prop;
  `B > 1800000` Bugeaud stays Prop.
  v8.64.0 five thousand six hundred eighty-four
  named `B ≤ 1900000` gap-3 rows have exp-one,
  order ≠ 13 and `S_not_fourth` (5385 inherited
  plus 299 sampled `(1800000, 1900000]` from a
  50350-row p≤547 pool, first
  `(1800004,1800007)` p=53, last
  `(1899995,1899998)` p=443); s2_26 pack
  stays a coefficient check, not Ribet;
  `kraus_elimination_q_13_level_26` stays Prop;
  `B > 1900000` Bugeaud stays Prop.
  v8.65.0 five thousand nine hundred eighty-three
  named `B ≤ 2000000` gap-3 rows have exp-one,
  order ≠ 13 and `S_not_fourth` (5684 inherited
  plus 299 sampled `(1900000, 2000000]` from a
  50325-row p≤547 pool, first
  `(1900001,1900004)` p=53, last
  `(2000000,2000003)` p=53); s2_26 pack
  stays a coefficient check, not Ribet;
  `kraus_elimination_q_13_level_26` stays Prop;
  `B > 2000000` Bugeaud stays Prop.
  v8.66.0 density capstone records
  `smallZsigPrimes` `{53,79,131,157,313,443,521,547}`,
  `4488 + 5 * 299 = 5983` named rows, and
  `hasSmallZsigWitness_196` by `decide` on `ZMod 53`;
  `beal_4_13_13_gap3_B_le_2M_eliminated` is
  `Classical.em`, not Kraus and not a Beal `∀`;
  s2_26 pack stays a coefficient check, not Ribet;
  `kraus_elimination_q_13_level_26` stays Prop;
  `B > 2000000` Bugeaud stays Prop.
  v8.67.0 Level 26 newforms skeleton records
  displayed ledger prefixes `newform_26_a_qexp`
  / `newform_26_b_qexp` (a₃(26a1)=1,
  a₅(26a1)=-3, a₃(26b1)=-3, a₅(26b1)=-1)
  and `kraus_primes_26` = Track B
  `smallZsigPrimes`; `zsig_density_links_to_kraus`
  is that list equality plus
  `4488 + 5 * 299 = 5983`; dim 2 is displayed,
  not Mathlib; `level26_a_eliminated_by_53`,
  `level26_b_eliminated_by_443`, and
  `kraus_elimination_q_13_level_26_proof_sketch`
  stay Prop (a Φ₁₃ hit is not Kraus);
  s2_26 pack stays a coefficient check, not Ribet;
  `kraus_elimination_q_13_level_26` stays Prop;
  `B > 2000000` Bugeaud stays Prop.
  v8.68.0 records locked `a₅₃(26a1)=0` /
  `a₅₃(26b1)=12` from `List.take 100`;
  `hasSmallZsigWitness_1500003` by `decide`
  on `ZMod 443` / `443*443`;
  `level26_a_eliminated_by_53_of_witness` is
  displayed `2 ≢ 0 [MOD 13]`, not Frey `a₅₃`,
  not Kraus; locked prefix has no `a₄₄₃`;
  `level26_a_eliminated_by_53` stays the `∀`;
  s2_26 pack stays a coefficient check, not Ribet;
  `kraus_elimination_q_13_level_26` stays Prop;
  `B > 2000000` Bugeaud stays Prop.
  v8.68.1 records `List.take 500` with
  `a₄₄₃(26a1)=21` / `a₄₄₃(26b1)=-39`;
  `a53_E_196 = -2` and `a443_E_1500003 = 24`
  by point-count `decide`; both miss locked
  traces at `ℓ = 13`; placeholder 2 is not used;
  `level26_a_eliminated_by_53` stays the `∀`;
  s2_26 pack stays a coefficient check, not Ribet;
  `kraus_elimination_q_13_level_26` stays Prop;
  `B > 2000000` Bugeaud stays Prop.
- Inhabited: `newform_26_a_qexp_100`,
  `a53_26a1_eq`,
  `a53_26b1_eq`,
  `a443_26a1_eq`,
  `a443_26b1_eq`,
  `a53_E_196_eq`,
  `a443_E_1500003_eq`,
  `displayed_two_misses_a53_26a1`,
  `level26_a_eliminated_by_53_of_witness`,
  `hasSmallZsigWitness_1500003`,
  `level26_b_eliminated_by_443_of_witness`,
  `newform_26_a_qexp`,
  `newform_26_b_qexp`,
  `kraus_primes_26`,
  `zsig_density_links_to_kraus`,
  `smallZsigPrimes`,
  `Phi13`,
  `zsig_density_2M_stats`,
  `hasSmallZsigWitness_196`,
  `beal_4_13_13_gap3_B_le_2M_eliminated`,
  `S_has_prime_with_exp_one_B_le_2000000_table_rows`,
  `exists_p_with_order_ne_13_B_le_2000000_from_exp_one_table_rows`,
  `S_not_fourth_B_le_2000000_from_exp_one_table_rows`,
  `row_1900001_1900004`,
  `row_2000000_2000003`,
  `S_has_prime_with_exp_one_B_le_1900000_table_rows`,
  `exists_p_with_order_ne_13_B_le_1900000_from_exp_one_table_rows`,
  `S_not_fourth_B_le_1900000_from_exp_one_table_rows`,
  `row_1800004_1800007`,
  `row_1899995_1899998`,
  `S_has_prime_with_exp_one_B_le_1800000_table_rows`,
  `exists_p_with_order_ne_13_B_le_1800000_from_exp_one_table_rows`,
  `S_not_fourth_B_le_1800000_from_exp_one_table_rows`,
  `row_1700007_1700010`,
  `row_1800000_1800003`,
  `S_has_prime_with_exp_one_B_le_1700000_table_rows`,
  `exists_p_with_order_ne_13_B_le_1700000_from_exp_one_table_rows`,
  `S_not_fourth_B_le_1700000_from_exp_one_table_rows`,
  `row_1600001_1600004`,
  `row_1700000_1700003`,
  `S_has_prime_with_exp_one_B_le_1600000_table_rows`,
  `exists_p_with_order_ne_13_B_le_1600000_from_exp_one_table_rows`,
  `S_not_fourth_B_le_1600000_from_exp_one_table_rows`,
  `row_1500003_1500006`,
  `row_1600000_1600003`,
  `S_has_prime_with_exp_one_B_le_1500000_table_rows`,
  `exists_p_with_order_ne_13_B_le_1500000_from_exp_one_table_rows`,
  `S_not_fourth_B_le_1500000_from_exp_one_table_rows`,
  `row_1400001_1400004`,
  `row_1499999_1500002`,
  `S_has_prime_with_exp_one_B_le_1400000_table_rows`,
  `exists_p_with_order_ne_13_B_le_1400000_from_exp_one_table_rows`,
  `S_not_fourth_B_le_1400000_from_exp_one_table_rows`,
  `row_1300002_1300005`,
  `row_1400000_1400003`,
  `S_has_prime_with_exp_one_B_le_1300000_table_rows`,
  `exists_p_with_order_ne_13_B_le_1300000_from_exp_one_table_rows`,
  `S_not_fourth_B_le_1300000_from_exp_one_table_rows`,
  `row_1200001_1200004`,
  `row_1299998_1300001`,
  `S_has_prime_with_exp_one_B_le_1200000_table_rows`,
  `exists_p_with_order_ne_13_B_le_1200000_from_exp_one_table_rows`,
  `S_not_fourth_B_le_1200000_from_exp_one_table_rows`,
  `row_1100002_1100005`,
  `row_1199998_1200001`,
  `S_has_prime_with_exp_one_B_le_1100000_table_rows`,
  `exists_p_with_order_ne_13_B_le_1100000_from_exp_one_table_rows`,
  `S_not_fourth_B_le_1100000_from_exp_one_table_rows`,
  `row_1000003_1000006`,
  `row_1099999_1100002`,
  `S_has_prime_with_exp_one_B_le_1000000_table_rows`,
  `exists_p_with_order_ne_13_B_le_1000000_from_exp_one_table_rows`,
  `S_not_fourth_B_le_1000000_from_exp_one_table_rows`,
  `row_900002_900005`,
  `row_1000000_1000003`,
  `S_has_prime_with_exp_one_B_le_900000_table_rows`,
  `exists_p_with_order_ne_13_B_le_900000_from_exp_one_table_rows`,
  `S_not_fourth_B_le_900000_from_exp_one_table_rows`,
  `row_800005_800008`,
  `row_899999_900002`,
  `S_has_prime_with_exp_one_B_le_800000_table_rows`,
  `exists_p_with_order_ne_13_B_le_800000_from_exp_one_table_rows`,
  `S_not_fourth_B_le_800000_from_exp_one_table_rows`,
  `row_700001_700004`,
  `row_800000_800003`,
  `S_has_prime_with_exp_one_B_le_700000_table_rows`,
  `exists_p_with_order_ne_13_B_le_700000_from_exp_one_table_rows`,
  `S_not_fourth_B_le_700000_from_exp_one_table_rows`,
  `row_600001_600004`,
  `row_700000_700003`,
  `S_has_prime_with_exp_one_B_le_600000_table_rows`,
  `exists_p_with_order_ne_13_B_le_600000_from_exp_one_table_rows`,
  `S_not_fourth_B_le_600000_from_exp_one_table_rows`,
  `row_500003_500006`,
  `row_600000_600003`,
  `S_has_prime_with_exp_one_B_le_500000_table_rows`,
  `exists_p_with_order_ne_13_B_le_500000_from_exp_one_table_rows`,
  `S_not_fourth_B_le_500000_from_exp_one_table_rows`,
  `row_400001_400004`,
  `row_500000_500003`,
  `S_has_prime_with_exp_one_B_le_400000_table_rows`,
  `exists_p_with_order_ne_13_B_le_400000_from_exp_one_table_rows`,
  `S_not_fourth_B_le_400000_from_exp_one_table_rows`,
  `row_300003_300006`,
  `row_400000_400003`,
  `S_has_prime_with_exp_one_B_le_300000_table_rows`,
  `exists_p_with_order_ne_13_B_le_300000_from_exp_one_table_rows`,
  `S_not_fourth_B_le_300000_from_exp_one_table_rows`,
  `row_299999_300002`,
  `row_200000_200003`,
  `prime_12186951011`,
  `S_has_prime_with_exp_one_B_le_200000_table_rows`,
  `exists_p_with_order_ne_13_B_le_200000_from_exp_one_table_rows`,
  `S_not_fourth_B_le_200000_from_exp_one_table_rows`,
  `row_199996_199999`,
  `level_lowering_26_to_2_from_no_match`,
  `kraus_elimination_26a1`,
  `s2_26_displayed_newforms_miss_frey_traces`,
  `kraus_elimination_26b1`,
  `S_has_prime_with_exp_one_B_le_100000_table_rows`,
  `exists_p_with_order_ne_13_B_le_100000_from_exp_one_table_rows`,
  `S_not_fourth_B_le_100000_from_exp_one_table_rows`,
  `ap_bound_level_26`,
  `X0_26_Q_displayed_points`,
  `level_26_eq_2_mul_13`,
  `S2_level_26_dim_two`,
  `S_le_13_C_pow12`,
  `sqrt_S_le_4_C6`,
  `rad_le_sqrt_of_squarefull`,
  `rad_gt_C_of_P_phi13_gt_C`,
  `S_has_prime_with_exp_one_B_le_50000_table_rows`,
  `exists_p_with_order_ne_13_B_le_50000_from_exp_one_table_rows`,
  `S_not_fourth_B_le_50000_from_exp_one_table_rows`,
  `S_has_prime_with_exp_one_B_le_10000_table_rows`,
  `exists_p_with_order_ne_13_B_le_10000_from_exp_one_table_rows`,
  `S_not_fourth_B_le_10000_from_exp_one_table_rows`,
  `S_has_prime_with_exp_one_B_le_1000_table_rows`,
  `exists_p_with_order_ne_13_B_le_1000_from_exp_one_table_rows`,
  `S_not_fourth_B_le_1000_from_exp_one_table_rows`,
  `exists_p_with_order_ne_13_B_le_100_from_exp_one_table_rows`,
  `S_not_fourth_B_le_100_from_exp_one_table_rows`,
  `order_ne_13_B1_C4`,
  `S_not_proper_prime_power_B_le_100_from_exp_one_table_rows`,
  `not_proper_prime_power_of_has_exp_one`,
  `S_val_1_4_not_proper_prime_power`,
  `S_has_prime_with_exp_one_B_le_100_table_rows`,
  `S_val_1_4_has_prime_with_exp_one`,
  `S_val_2_5_has_prime_with_exp_one`,
  `exists_p_with_order_ne_13_mod_p_sq_example_B1_C4`,
  `S_val_1_5_has_prime_with_exp_one`,
  `exists_p_with_order_ne_13_of_has_exp_one`,
  `HasPrimeWithExpOne`,
  `S_val_1_5_not_proper_prime_power`,
  `IsProperPrimePower`,
  `not_isProperPrimePower_of_prime`,
  `proper_prime_power_imp_sq_dvd`,
  `S_val_1_5_prime`,
  `S_not_prime_power_when_C_ge_B_plus_3_fast_refuted`,
  `S_has_two_distinct_primitive_primes_when_C_ge_B_plus_3_fast_refuted`,
  `exists_p_with_order_ne_13_mod_p_sq_example_B1_C5`,
  `S_prime_power_example_B1_C5`,
  `prime_power_S_eq_zsigmondy_prime`,
  `primes_eq1_mod13_infinite`,
  `density_p_div_S`, `thin_set_p_sq_div_S`,
  `phi13_derivative_separable_mod_p_inhabited`,
  `hensel_unique_lift_of_phi13_root_inhabited`,
  `p_sq_dvd_S_iff_CB_eq_lifted_root_inhabited`,
  `Phi13`, `phi13_derivative_separable_mod_p`,
  `hensel_unique_lift_of_phi13_root`,
  `p_sq_dvd_S_iff_CB_eq_lifted_root`,
  `norm_eq_S`, `zeta13_class_number_one`,
  `zeta13_prime_ideal_factorization_exists`,
  `S_not_power_of_thirteen_inhabited`,
  `S_not_power_of_thirteen`,
  `exists_p_of_two_primes_one_not_square_inhabited`,
  `p_sq_dvd_S_iff_order_13_mod_p_sq_inhabited`,
  `zsigmondy_vp_S_eq_one_of_order_ne_13`,
  `exists_p_of_two_primes_one_not_square`;
  `p_sq_dvd_S_iff_order_13_mod_p_sq`,
  `hensel_lift_example_B1_C460_p53`,
  `S_not_fourth_of_order_ne_13`;
  `primitive_prime_not_dvd_bases`,
  `beal_odd_A_closed_via_zsig_hensel`,
  `beal_odd_A_ge3_closed_of_vp1_inhabited`;
  `zsigmondy_exists_primitive_inhabited`,
  `zsig_p_not_dvd_k_of_gcd_inhabited`,
  `S_times_g_not_fourth_of_vp1_inhabited`,
  `beal_odd_A_ge3_closed_of_vp1`,
  `zsigmondy_vp_S_eq_one_inhabited`
  (Hensel-conditional);
  `S_val`, `S_bounds`,
  `thirteen_dvd_S_of_13_nmid_B`, `gcd_k_S_dvd_13`,
  `k_shape_1_13_13cubed`;
  `S_bounds_13_B12_le_S_le_13_C12`,
  `k_almost_fourth_power_shape`, `k_le_A4_div_13_B12`,
  `B_gt_100_k_bounded`, `k_ge_B_imp_A_ge_9B3`;
  `oddPart_rec`, `rad`, `oddPart_def`, `rad_dvd_pow`,
  `even_not_pow2_has_odd_prime_q`, `level_2q_of_odd_prime_dvd_A`;
  `even_not_pow2_has_odd_prime`, `frey_conductor_even_A`,
  `minimal_level_26_of_13_dvd_A`, `level_at_least_6_of_even_not_pow2`;
  `frey_curve_conductor`; v8.21.0 `A_ge_53_of_S_prime`,
  `k_le_A_pow4_div_13_B_pow12`, `B_gt_100_imp_k_bounded_by_A`;
  `genus_X0_2_rat=0`; `S_13_mod_k`, `gcd(k,S)|13`, `k_almost_fourth_power`;
  `B_le_100_closed`.
- Uninhabited:   `level26_a_eliminated_by_53`,
  `level26_b_eliminated_by_443`,
  `kraus_elimination_q_13_level_26_proof_sketch`,
  `kraus_elimination_q_13_level_26`,
  `ribet_26_to_2_from_displayed_miss`,
  `bugeaud_P_phi13_gt_C_when_B_gt_2000000`,
  `rad_S_gt_sqrt_13_C12_when_squarefull_B_gt_2000000`,
  `bugeaud_P_phi13_gt_C_when_B_gt_1900000`,
  `rad_S_gt_sqrt_13_C12_when_squarefull_B_gt_1900000`,
  `bugeaud_P_phi13_gt_C_when_B_gt_1800000`,
  `rad_S_gt_sqrt_13_C12_when_squarefull_B_gt_1800000`,
  `bugeaud_P_phi13_gt_C_when_B_gt_1700000`,
  `rad_S_gt_sqrt_13_C12_when_squarefull_B_gt_1700000`,
  `bugeaud_P_phi13_gt_C_when_B_gt_1600000`,
  `rad_S_gt_sqrt_13_C12_when_squarefull_B_gt_1600000`,
  `bugeaud_P_phi13_gt_C_when_B_gt_1500000`,
  `rad_S_gt_sqrt_13_C12_when_squarefull_B_gt_1500000`,
  `bugeaud_P_phi13_gt_C_when_B_gt_1400000`,
  `rad_S_gt_sqrt_13_C12_when_squarefull_B_gt_1400000`,
  `bugeaud_P_phi13_gt_C_when_B_gt_1300000`,
  `rad_S_gt_sqrt_13_C12_when_squarefull_B_gt_1300000`,
  `bugeaud_P_phi13_gt_C_when_B_gt_1200000`,
  `rad_S_gt_sqrt_13_C12_when_squarefull_B_gt_1200000`,
  `bugeaud_P_phi13_gt_C_when_B_gt_1100000`,
  `rad_S_gt_sqrt_13_C12_when_squarefull_B_gt_1100000`,
  `bugeaud_P_phi13_gt_C_when_B_gt_1000000`,
  `rad_S_gt_sqrt_13_C12_when_squarefull_B_gt_1000000`,
  `bugeaud_P_phi13_gt_C_when_B_gt_900000`,
  `rad_S_gt_sqrt_13_C12_when_squarefull_B_gt_900000`,
  `bugeaud_P_phi13_gt_C_when_B_gt_800000`,
  `rad_S_gt_sqrt_13_C12_when_squarefull_B_gt_800000`,
  `bugeaud_P_phi13_gt_C_when_B_gt_700000`,
  `rad_S_gt_sqrt_13_C12_when_squarefull_B_gt_700000`,
  `bugeaud_P_phi13_gt_C_when_B_gt_600000`,
  `rad_S_gt_sqrt_13_C12_when_squarefull_B_gt_600000`,
  `bugeaud_P_phi13_gt_C_when_B_gt_500000`,
  `rad_S_gt_sqrt_13_C12_when_squarefull_B_gt_500000`,
  `bugeaud_P_phi13_gt_C_when_B_gt_400000`,
  `rad_S_gt_sqrt_13_C12_when_squarefull_B_gt_400000`,
  `bugeaud_P_phi13_gt_C_when_B_gt_300000`,
  `rad_S_gt_sqrt_13_C12_when_squarefull_B_gt_300000`,
  `bugeaud_P_phi13_gt_C_when_B_gt_200000`,
  `rad_S_gt_sqrt_13_C12_when_squarefull_B_gt_200000`,
  `bugeaud_P_phi13_gt_C_when_B_gt_100000`,
  `rad_S_gt_sqrt_13_C12_when_squarefull_B_gt_100000`,
  `bugeaud_P_phi13_gt_C_when_B_gt_50000`,
  `rad_S_gt_sqrt_13_C12_when_squarefull_B_gt_50000`,
  `S_has_prime_with_exp_one_when_C_ge_B_plus_3`,
  `S_not_proper_prime_power_when_C_ge_B_plus_3`,
  `S_has_prime_with_exp_one`,
  `S_not_prime_power_when_C_ge_B_plus_3_fast`,
  `S_has_two_distinct_primitive_primes_when_C_ge_B_plus_3_fast`,
  `chebotarev_gives_p_with_p_div_not_p_sq_div_when_C_ge_B_plus_3`,
  `S_has_two_distinct_prime_ideals_in_Z_zeta13_when_C_ge_B_plus_3`,
  `zeta13_two_prime_ideals_give_two_rational_primes`,
  `S_not_prime_power_when_C_ge_B_plus_3`,
  `exists_p_with_order_ne_13_mod_p_sq_inhabited`,
  `S_has_two_distinct_primitive_primes_when_C_ge_B_plus_3`,
  `not_all_p_lift_when_two_primes`,
  `exists_p_with_order_ne_13_mod_p_sq`,
  `beal_odd_A_closed_v8_24_0_inhabited`,
  `beal_4_13_13_Zsigmondy_13_odd_A_closed_for_real`,
  `beal_4_13_13_full_closed_mod_modular_v8_24_0_inhabited`;
  `zsigmondy_vp_S_eq_one_unconditional`,
  `beal_odd_A_closed_v8_24_0`,
  `beal_4_13_13_Zsigmondy_13_Zsig_primitive_vp1_inhabited_plan`;
  `zsigmondy_exists_primitive`,
  `zsigmondy_vp_S_eq_one`, `S_times_g_not_fourth_of_vp1`,
  `beal_odd_A_closed_v8_23_1`,
  `beal_4_13_13_Zsigmondy_13_Zsig_S_vp1_plan`;
  `zsigmondy_prime_S`, `S_not_fourth_power_of_zsig`,
  `beal_odd_A_closed_v8_23_0`,
  `beal_4_13_13_Zsigmondy_13_odd_A_closure_plan`;
  `kraus_criterion_q_ne_13`, `X0_2q_no_Frey_match`,
  `beal_even_A_closed_v8_22_1`,
  `beal_4_13_13_X0_2q_Darmon_Merel_plan`;
  `ribet_level_lowering_to_Nprime`,
  `X0_26_no_matching_newform`, `beal_even_A_closed`,
  `beal_4_13_13_X0_26_RibetMazur_plan`;
  `beal_mixed_pow2_implies_level_2_newform` →
  `ExistsNewformLevel2`; `modular_W_lift`, `ribet_level_lowering_to_2`,
  `X0_2_no_newforms` (still `0 ≠ 0`); `beal_4_13_13_final_closed`,
  `beal_from_ribet_upside_down`, `beal_4_13_13_size`.
  Unconditional `¬ p² ∣ S` is false (Hensel lifts).
- Build: `lake build BealLevel26Foundations` and
  `BealLevel26FoundationsFullProof` green twice,
  `scripts/verify-scaffold.sh` passed, `#print axioms`
  `[propext, Classical.choice, Quot.sound]`.
- Releases: [`v8.19.9`](https://github.com/DavidFox998/beal-level-26-foundations/releases/tag/v8.19.9)
  and [`v8.19.9-fourth-power-residue`](https://github.com/DavidFox998/beal-level-26-foundations/releases/tag/v8.19.9-fourth-power-residue)
  carry version DOI `10.5281/zenodo.22654189`.

**The wider work:** this repository is one chamber of David Fox's *Opera Numerorum* — see [`docs/OPERA_NUMERORUM_LINKS.md`](docs/OPERA_NUMERORUM_LINKS.md) for the coordination index across all repositories, including the parent [beal-conjecture](https://github.com/DavidFox998/beal-conjecture) assembly.

Plates: [`docs/assets/v6.7.0/ribet_26_to_2.jpg`](docs/assets/v6.7.0/ribet_26_to_2.jpg),
[`docs/assets/v6.7.0/tw_qn_infinite_family.jpg`](docs/assets/v6.7.0/tw_qn_infinite_family.jpg),
[`docs/assets/v6.7.0/galois_token.jpg`](docs/assets/v6.7.0/galois_token.jpg).
PARI 2-Descent Certificates image
[`docs/images/2-descent-level-26-26a1-26b1.webp`](docs/images/2-descent-level-26-26a1-26b1.webp).
`Jacobian/` `FreyCurveExists` `LevelLowering_26` cohomological 2-Selmer.
`final_package` / `beal13_forall_bridge_triple`. Extra-loop verify:
22452680 22456594 hook 22379293 IsVersionOf 22272382 X0_26_cusps.
`hGeomForbid_typed_true` depends on no axioms (`hNotIn hInList`).
Still not `∀ ℕ`. No `False.elim`. no `False.elim`.
`BealExponent13_Iter_Package` `d3cf8a7` `1d0044e`.

HEAD also has Track B `v13.0.0-Beal-44-13-Level-26-Modular-Elimination`
(RibetMazur pack from v8.69.0 Int-mod-13
misses at `B = 196` and `B = 1500003`;
Density/Step `kraus_elimination_q_13_level_26`
stays the uninhabited `∀`; s2_26 pack still
coefficient check not Ribet;
`ExistsNewformLevel2` stays `0 ≠ 0`;
`B > 2000000` Bugeaud / rad stay
Props; Hensel forall stays a Prop);
that does **not** change the Track A lock or the About Website.

---

# Beal Level 26 Foundations — X0(26)(Q)=[1,2,13,26] + Beal13-Forall-Bridge triple none — BOTH none unconditional

**v7.1.0-iter-beal-forall-kernel-separated-none-real — Beal ∀ none + kernel separated none BOTH none unconditional via rfl only, push propext out of BOTH closed real witness and kernel separated same OFF-token pattern as ExistsNewformLevel2_real_witness none 0≠0→none**

- 24 modules green twice `verify-scaffold.sh OK`
- Track A none-chain mint stays `10.5281/zenodo.22635221`

### Compact version lock (full prose in the linked READMEs)

v1.0.1-computable v1.3.0 v1.4.0 v2.0.0 v2.0.0-frey v3.0.0 v3.0.0-ribet v4.0.0 v4.0.0-mazur
v4.0.1-jacobian-skeleton v4.0.2-selmer v4.0.3-formal-immersion v4.0.4-x026-rational-points
v4.0.5-nofrey-point v4.0.6-rank-zero-fixed v4.0.7-hIdentify v4.0.7-hIdentify-j
v4.0.8-geom-forbid v4.0.9-fourCusps-forall v4.0.10-chabauty0-no-doi
v4.0.11-residue-disks-no-doi v4.0.12-scheme-stub-no-doi
v4.0.13-formal-immersion-proof-no-doi v4.0.14-coleman-integral-no-doi
v4.0.15-lmfdb-certs-no-doi v4.1.0-descent-start v4.1.1-descent-compute
v4.1.2-beal-13-endgame v4.1.3-beal-13-theorem v4.2.0-full-chain
v4.2.1-chabauty-closes-typed v4.2.2-zenodo-trigger v4.3.0-final-forall-package
v4.4.0-typed-refactor-true-close v4.5.0-forall-real v4.6.0-readmes-about
v4.7.0-iter-typed-no-axioms-closing v4.8.0-iter-modularity-scaffold
v4.9.0-iter-no-True-X0 v4.10.0-iter-pari-locked v4.12.0-iter-verify-plus
v4.13.0-iter-contradiction-start v4.13.1-iter-unstick
v4.35.0 `#check is13CaseForcesGcdGt1Sketch_inhabited` is `BealTheorem_Exponent13_Typed` none, `Is13CaseForcesGcdGt1Sketch` still uninhabited, still not `∀ A B C`.
v4.40.0 `FreyCurve13_of_BealCounterexampleBases` is Weierstrass `freyCurve ↑A ↑B 13 13`, not a noncuspidal `X₀(26)` point. `ExistsNoncuspidal_26_of_Is13CaseSketch` still uninhabited, still not `∀ A B C`.
v4.41.0 `ribet_produces_noncuspidal_of_weierstrass` / `weierstrass_modularity_gives_ExistsNoncuspidal_sketch` stay uninhabited. `WeierstrassCurve` is not `DisplayedX026CuspPoint`, still not `∀ A B C`.
v4.42.0 `WeierstrassModularity (FreyCurve13_of_BealCounterexampleBases w)` is a valid type; Ribet sketches stay uninhabited, still not `∀ A B C`.
v4.43.0 Ribet sketches take `WeierstrassModularity` and stay uninhabited. `WeierstrassCurve` is not `DisplayedX026CuspPoint`, still not `∀ A B C`.
v4.44.0 `X0_26_Q_Point` is `Σ (E : EllipticCurve ℚ), CyclicSubgroup E 26` started; Mathlib 4.12 has no `X₀(26)(ℚ)`. Ribet sketches stay uninhabited, still not `∀ A B C`.
v4.45.0 `X0_26_Q_Point_to_ExistsNoncuspidal` is `Nonempty → ExistsNoncuspidal_26` uninhabited. Empty inductive, still not `∀ A B C`.
v4.46.0 real `X₀(26)(ℚ)` has 26a1/26b1 so cusp→False is false; contradiction is `S₂(Γ₀(2))=0` no newform. Still not `∀ A B C`.
v4.47.0 Tate conductor from `Is13Case` (`13 ∣ A*B*C`) is an uninhabited sketch; `frey_conductor_26_rfl` stays `rfl`. Still not `∀ A B C`.
v4.48.0 `Is13CaseForcesFalseSketchViaLevel2` is `∀ w, Is13Case w → False` uninhabited (needs Tate+Ribet); valid type, still not `∀ A B C`.
v4.49.0 `beal_forall_from_Is13Case_sketch` is `∀ A B C` uninhabited (needs Tate+Ribet+GcdGt1); still not `∀ A B C`.
v4.50.0 `13 ∣ A*B*C` splits to one factor (`Is13Case_prime_dvd` none); `⟨13,2,1⟩` has gcd 1, so GcdGt1 stays uninhabited. Still not `∀ A B C`.
v4.51.0 `triple_13_2_1` gcd=1 by `rfl`; bases not primitive-by-definition; GcdGt1 stays uninhabited. Still not `∀ A B C`.
v4.52.0 `IsPrimitive` subtype; ∃ primitive Is13Case gcd=1 vs ∀ gcd>1 false. Still not `∀ A B C`.
v4.53.0 Path1 gcd>1 false; Path2 only honest `Is13Case → False` via level 2. Still not `∀ A B C`.
v4.54.0 conditional `hTate+hRibet+hComp+hΔ → Beal ∀`; does not inhabit unconditional False. Still not `∀ A B C`.
v4.55.0 explicit Δ≠0; propext-only Beal ∀ via hTate+hRibet+hWeierstrass. Still not `∀ A B C`.
v4.56.0 Mathlib gaps Tate/Ribet/Modularity/X0; propext-only Beal ∀ is ceiling. Still not `∀ A B C`.
v4.57.0 Phase5 X0(26)(Q) honest scaffold; real-points String list; not Mazur. Still not `∀ A B C`.
v4.58.0 TaylorWilesScaffold R=T|Hecke|Deformation; ceiling propext-only. Still not `∀ A B C`.
v4.59.0 About catch-up 22551298; ROADMAP v5 without Mathlib. Still not `∀ A B C`.
v5.0.0 Tate table inhabit; hTate fillable; not Mathlib Tate. Still not `∀ A B C`.
v5.1.0 Ribet table inhabit; rho_bar+Deformation+26/13=2; not Mathlib Ribet. Still not `∀ A B C`.
v5.2.0 R=T table inhabit; Hecke token+Equiv; hWeierstrass from R=T; not Mathlib R=T. Still not `∀ A B C`.
v5.3.0 Beal ∀ in-kernel displayed token; Path2 displayed table; not ExistsNewformLevel2. Still not Mathlib ∀.
v5.4.0 About catch-up 22553671; Beal ∀ in-kernel displayed token recorded. Still not Mathlib ∀.
v5.5.0 Path lock ⟨13,2,1⟩ gcd=1 rfl; Path1 false; Path2 displayed table. Still not Mathlib ∀.
v5.6.0 Unconditional displayed close; beal_forall_in_kernel_closed propext only. Still not Mathlib ∀.
v5.7.0 FINAL v5 green; About catch-up 22556701. Still not Mathlib ∀.
v6.0.0-iter-real-algorithms G_Q→GL2 + Tate + R=T real structures. Still not Full Mathlib ∀.
v6.0.1-iter-about-catchup-22558788 About catch-up 22558113 → 22558788. Still not Full Mathlib ∀.
v6.1.0-iter-tw-infinite-family Q_n=[53]→infinite family q≡1 mod13^n. Still not Full Mathlib ∀.
v6.1.1-iter-about-catchup-22559449 About catch-up 22558788 → 22559449. Still not Full Mathlib ∀.
v6.2.0-iter-frey-delta-separated Frey Δ separated Nat.pow OFF none inhabitant. Still not Full Mathlib ∀.
v6.2.1-iter-about-catchup-22562014 About catch-up 22559449 → 22562014. Still not Full Mathlib ∀.
v6.3.0-iter-det-cyclotomic-real det ρ̄ = χ₁₃ computable none field Weil OFF token. Still not Full Mathlib ∀.
v6.3.1-iter-about-catchup-22565376 About catch-up 22562014 → 22565376. Still not Full Mathlib ∀.
v6.4.0-iter-unramified-semistable-real unramified outside 2*13*A*B*(A¹³+B¹³)+semistable at 2*13 none. Still not Full Mathlib ∀.
v6.4.1-iter-about-catchup-22572211 About catch-up 22565376 → 22572211. Still not Full Mathlib ∀.
v6.5.0-iter-finite-flat-at-13-real finite-flat at 13 real none Nat.pow OFF token. Still not Full Mathlib ∀.
v6.5.1-iter-about-catchup-22582199 About catch-up 22572211 → 22582199. Still not Full Mathlib ∀.
v6.6.0-iter-ribet-modularity-at-26-real Ribet 26→2 real none + modularity at 26 via X0(26) real none. Still not Full Mathlib ∀.
v6.6.1-iter-about-catchup-22587409 About catch-up 22582199 → 22587409. Still not Full Mathlib ∀.
v6.7.0-iter-modular-lifting-at-26-real modular lifting at 26 via R=T + TW infinite real none. Still not Full Mathlib ∀.
v6.7.1-iter-about-catchup-22592524 About catch-up 22587409 → 22592524. Still not Full Mathlib ∀.
v6.8.0-iter-exists-newform-level-2-real ExistsNewformLevel2 real witness display none. Still not Full Mathlib ∀.
v6.8.1-iter-about-catchup-22602899-relook About catch-up 22592524 → 22602899. Still not Full Mathlib ∀.
v6.9.0-iter-beal-forall-closed-real Beal Forall closed real via positivity/det/unramified/semistable/finite-flat/Ribet/modularity/TW/R=T/lifting/exists-newform. Still not Full Mathlib ∀.
v6.9.1-iter-about-catchup-22611775-relook About catch-up 22602899 → 22611775. Still not Full Mathlib ∀.
v7.0.0-iter-beal-forall-none-real Beal ∀ from propext only OFF inhabitant → none via rfl only. Still not Full Mathlib ∀.
v7.0.1-iter-about-catchup-22618433-relook About catch-up 22611775 → 22618433. Still not Full Mathlib ∀.
v7.1.0-iter-beal-forall-kernel-separated-none-real Beal ∀ kernel separated from propext only → none via rfl only. Still not Full Mathlib ∀.
v7.1.1-iter-about-catchup-22632209-relook About catch-up 22618433 → 22632209. Still not Full Mathlib ∀.
v7.1.2-iter-readme-uniform-opera-links README header uniformized (badges 22632209/22635221/22272382) + Opera Numerorum coordination index docs/OPERA_NUMERORUM_LINKS.md added in both repos, no Lean change. Still not Full Mathlib ∀.
v7.1.3-iter-beal-not-route-e-corrected Beal Conjecture corrected from mislabeled "Route E" to its own two-repository chamber of Opera Numerorum, not part of the Riemann Hypothesis A-D route lettering, no Lean change. Still not Full Mathlib ∀.
v7.2.0-step1-true-conductor-scaffold TrueConductor typed scaffold. Still not Full Mathlib ∀.
v7.2.1-tate-filled TrueConductor Tate filled. Still not Full Mathlib ∀.
v7.3.0-ribet-rt-filled ModularityRibet theorems. Still not Full Mathlib ∀.
v7.4.0-geometry-filled GeometryBridge theorems. Still not Full Mathlib ∀.
v8.0.0-beal-forall-proof FullProof glue; unguarded sketch is false. Still not Full Mathlib ∀.
v8.1.0-modular-implies-newform ModularImpliesLevel2Newform stays a Prop. Still not Full Mathlib ∀.
v8.2.0-scheme-hecke-ribet packed X0(26)/J0(26) models. Still not Full Mathlib ∀.
v8.3.0-explicit-X0-26 X0_26_Model + HeckeAction + LevelLowering. Still not Full Mathlib ∀.
v8.4.0-formal-immersion localizes M_ℤ at (2)/(3). Still not Full Mathlib ∀.
v8.5.0-cotangent-sheaf cotangent sheaf affine patch. Still not Full Mathlib ∀.
v8.6.0-level-lowering-term ExistsNewformLevel2 stays 0≠0. Still not Full Mathlib ∀.
v8.7.0-ribet-q-mazur ribet_iterated_arrow stays the Prop. Still not Full Mathlib ∀.
v8.8.0-ribet-proof beal_from_ribet_real still from the Prop. Still not Full Mathlib ∀.
v8.9.0-explicit-J0N packed X0_N_Model/J0_N_Model. Still not Full Mathlib ∀.
v8.10.0-frey-aq-pm1-real frey_a_q_real via (-c6/q)=±1. Still not Full Mathlib ∀.
v8.11.0-frey-ell-case FreyEllCase5 + ell_of_q. Still not Full Mathlib ∀.
v8.12.0-fermat-four-plus-RinfTinf-ell fermat_four_lemma. Still not Full Mathlib ∀.
v8.13.0-mixed-ell-plus-dirichlet FreyEllCase5Mixed. Still not Full Mathlib ∀.
v8.14.0-mixed-odd-A Mixed covers 4,13,13 iff A=2^e. Still not Full Mathlib ∀.
v8.15.0-dirichlet-up-to-1000 166-row Q1 table. Still not Full Mathlib ∀.
v8.16.0-q2-table-100M 166-row Q2 table. Still not Full Mathlib ∀.
v8.17.0-twaux-26-and-10000 TWAuxEllFixed at N=26 and N=10000. Still not Full Mathlib ∀.
v8.18.0-product TWAuxEllFixed for every N≤10000 on the table. Still not Full Mathlib ∀.
v8.19.0-ExistsNewformLevel2 genus_X0_2_rat=0; ExistsNewformLevel2 stays 0≠0. Still not Full Mathlib ∀.
v8.19.1-beal-4-13-13-size C=B+1 size table. Still not Full Mathlib ∀.
v8.19.2-C-ge-B+2 C≥B+2 gives A^4≥26 B^12. Still not Full Mathlib ∀.
v8.19.3-zsigmondy-13 zsigmondy_13 inhabited. Still not Full Mathlib ∀.
v8.19.4-zsigmondy-13-step4 p∣S from p∣(C^13-B^13). Still not Full Mathlib ∀.
v8.19.5-p-mod-13-eq-1 primitive p≡1 mod 13, p≥53. Still not Full Mathlib ∀.
v8.19.6-B-le-100-closed RibetMazur B≤100 C=B+1 and C=B+2 closed for odd A by A≥53 A≥B³ and decide tables; C≥B+3 stays open; zsigmondy_13 stays inhabited; ExistsNewformLevel2 stays 0≠0; beal_from_ribet still from the Prop. Sketch stays uninhabited. Still not Full Mathlib ∀.
v8.19.7-general-k RibetMazur C≥B+k gives A^4≥13k B^12 from the 13-term sum; C≥B+3 gives A^4≥39 B^12; A≥3 B^3 stays uninhabited (39<81); B≤100 C=B+1,B+2 stay closed; ExistsNewformLevel2 stays 0≠0; beal_from_ribet still from the Prop. Sketch stays uninhabited. Still not Full Mathlib ∀.
v8.19.8-k-odd-coprime RibetMazur odd A gives k=C-B odd; Coprime C B and C≥B give Coprime k B; Coprime C B gives Coprime A B; A^4 ≡ k^13 mod B; unrestricted gcd(k,B)=1 without C≥B stays uninhabited; ExistsNewformLevel2 stays 0≠0; beal_from_ribet still from the Prop. Sketch stays uninhabited. Still not Full Mathlib ∀.
v8.19.9-fourth-pow-residue RibetMazur A^4≡k^13 mod B and B%4=0 give k%4=1; B%8=0 give k%8=1 for odd A; without odd A stays uninhabited; ExistsNewformLevel2 stays 0≠0; beal_from_ribet still from the Prop. Sketch stays uninhabited. Still not Full Mathlib ∀.
v8.19.9-fourth-power-residue houseclean Track B residue names fourth_pow_mod_4/8 k%4=1 when B%4=0 k%8=1 when B%8=0; Track A no new Beal-∀ unconditional Beal NOT claimed. Still not Full Mathlib ∀.
v8.20.0-k-upper-bound-plan RibetMazur gcd(k,S)|13 so k is u^4 or 13 u^4 or 13^3 u^4; B≤100 k≥3 S=v^4 stays uninhabited; ExistsNewformLevel2 stays 0≠0; beal_from_ribet still from the Prop. Sketch stays uninhabited. Still not Full Mathlib ∀.
v8.20.0-upper-bound-k RibetMazur Step10_upper_bound_k gcd(k,S)|13 k almost fourth power; B≤100 C≥B+3 of S not fourth stays uninhabited; ExistsNewformLevel2 stays 0≠0; beal_from_ribet still from the Prop. Sketch stays uninhabited. Still not Full Mathlib ∀.
v8.20.1-B-le-100-closed RibetMazur Step11 primitive_prime_dvd_S (Z/p²)× order-13 v_p_S_eq_one S_not_fourth_power; B≤100 splits C=B+1 Size_Table C=B+2 Size_C_ge_B_plus_2 C≥B+3 from k_almost_fourth_power + S_not_fourth_power; ExistsNewformLevel2 stays 0≠0; beal_from_ribet still from the Prop. Sketch stays uninhabited. Still not Full Mathlib ∀.
v8.21.0-B-gt-100-bounded-k RibetMazur Step12 A_ge_53_of_S_prime k_le_A_pow4_div_13_B_pow12 B_gt_100_imp_k_bounded_by_A k_ge_B_imp_A_large k_lt_B_imp_S_between; B>100 closed of S_not_fourth+modular stays uninhabited; ExistsNewformLevel2 stays 0≠0; beal_from_ribet still from the Prop. Sketch stays uninhabited. Still not Full Mathlib ∀.
v8.21.1-Modular-W-lift-last-lock RibetMazur Step13 frey_curve_conductor A=2^r B,C odd rad=2; modular_W_lift ribet_level_lowering_to_2 X0_2_no_newforms stay uninhabited; ExistsNewformLevel2 stays 0≠0; beal_from_ribet still from the Prop. Sketch stays uninhabited. Still not Full Mathlib ∀.
v8.22.0-X0-26-RibetMazur-plan RibetMazur Step14 even_not_pow2_has_odd_prime frey_conductor_even_A minimal_level_26_of_13_dvd_A level_at_least_6_of_even_not_pow2; ribet_level_lowering_to_Nprime X0_26_no_matching_newform stay uninhabited; ExistsNewformLevel2 stays 0≠0; beal_from_ribet still from the Prop. Sketch stays uninhabited. Still not Full Mathlib ∀.
v8.22.1-X0-2q-Darmon-Merel-plan RibetMazur Step15 oddPart_rec rad oddPart_def rad_dvd_pow even_not_pow2_has_odd_prime_q level_2q_of_odd_prime_dvd_A; kraus_criterion_q_ne_13 X0_2q_no_Frey_match stay uninhabited; ExistsNewformLevel2 stays 0≠0; beal_from_ribet still from the Prop. Sketch stays uninhabited. Still not Full Mathlib ∀.
v8.23.0-odd-A-closure-plan RibetMazur Step16 S_bounds_13_B12_le_S_le_13_C12 k_almost_fourth_power_shape k_le_A4_div_13_B12 B_gt_100_k_bounded k_ge_B_imp_A_ge_9B3; zsigmondy_prime_S S_not_fourth_power_of_zsig stay uninhabited; ExistsNewformLevel2 stays 0≠0; beal_from_ribet still from the Prop. Sketch stays uninhabited. Still not Full Mathlib ∀.
v8.23.1-Zsigmondy-S-vp1-plan RibetMazur Step17 S_val S_bounds thirteen_dvd_S_of_13_nmid_B gcd_k_S_dvd_13 k_shape_1_13_13cubed; zsigmondy_exists_primitive zsigmondy_vp_S_eq_one S_times_g_not_fourth_of_vp1 stay uninhabited; ExistsNewformLevel2 stays 0≠0; beal_from_ribet still from the Prop. Sketch stays uninhabited. Still not Full Mathlib ∀.
v8.24.0-Zsigmondy-primitive-vp1-inhabited RibetMazur Step18 zsigmondy_exists_primitive_inhabited zsig_p_not_dvd_k_of_gcd_inhabited S_times_g_not_fourth_of_vp1_inhabited beal_odd_A_ge3_closed_of_vp1; zsigmondy_vp_S_eq_one stays Hensel-conditional; beal_odd_A_closed_v8_24_0 stay uninhabited; ExistsNewformLevel2 stays 0≠0; beal_from_ribet still from the Prop. Sketch stays uninhabited. Still not Full Mathlib ∀.
v8.24.1-odd-A-closed-for-real RibetMazur Step19 beal_odd_A_closed_via_zsig_hensel primitive_prime_not_dvd_bases beal_odd_A_ge3_closed_of_vp1_inhabited; beal_odd_A_closed_v8_24_0_inhabited stay uninhabited; ExistsNewformLevel2 stays 0≠0; beal_from_ribet still from the Prop. Sketch stays uninhabited. Still not Full Mathlib ∀.
v8.25.0-Hensel-dichotomy-S-not-fourth-plan RibetMazur Step20 p_sq_dvd_S_iff_order_13_mod_p_sq hensel_lift_example_B1_C460_p53 S_not_fourth_of_order_ne_13; exists_p_with_order_ne_13_mod_p_sq stay uninhabited; ExistsNewformLevel2 stays 0≠0; beal_from_ribet still from the Prop. Sketch stays uninhabited. Still not Full Mathlib ∀.
v8.26.0-exists-p-order-ne-13-plan RibetMazur Step21 p_sq_dvd_S_iff_order_13_mod_p_sq_inhabited hensel_lift_example_B1_C460_p53 S_not_fourth_of_order_ne_13 zsigmondy_vp_S_eq_one_of_order_ne_13; exists_p_with_order_ne_13_mod_p_sq_inhabited stay uninhabited; ExistsNewformLevel2 stays 0≠0; beal_from_ribet still from the Prop. Sketch stays uninhabited. Still not Full Mathlib ∀.
v8.27.0-two-primitive-primes-counting-plan RibetMazur Step22 S_not_power_of_thirteen exists_p_of_two_primes_one_not_square_inhabited; S_has_two_distinct_primitive_primes_when_C_ge_B_plus_3 exists_p_with_order_ne_13_mod_p_sq_inhabited stay uninhabited; ExistsNewformLevel2 stays 0≠0; beal_from_ribet still from the Prop. Sketch stays uninhabited. Still not Full Mathlib ∀.
v8.28.0-Phi13-Zeta13-prime-ideal-plan RibetMazur Step23 S_not_power_of_thirteen_inhabited norm_eq_S zeta13_class_number_one zeta13_prime_ideal_factorization_exists; S_has_two_distinct_prime_ideals_in_Z_zeta13_when_C_ge_B_plus_3 exists_p_with_order_ne_13_mod_p_sq_inhabited stay uninhabited; ExistsNewformLevel2 stays 0≠0; beal_from_ribet still from the Prop. Sketch stays uninhabited. Still not Full Mathlib ∀.
v8.29.0-Phi13-derivative-LTE-plan RibetMazur Step24 phi13_derivative_separable_mod_p hensel_unique_lift_of_phi13_root p_sq_dvd_S_iff_CB_eq_lifted_root; exists_p_with_order_ne_13_mod_p_sq_inhabited stay uninhabited; ExistsNewformLevel2 stays 0≠0; beal_from_ribet still from the Prop. Sketch stays uninhabited. Still not Full Mathlib ∀.
v8.30.0-Chebotarev-lift-density-plan RibetMazur Step25 primes_eq1_mod13_infinite density_p_div_S thin_set_p_sq_div_S; chebotarev_gives_p_with_p_div_not_p_sq_div_when_C_ge_B_plus_3 exists_p_with_order_ne_13_mod_p_sq_inhabited stay uninhabited; ExistsNewformLevel2 stays 0≠0; beal_from_ribet still from the Prop. Sketch stays uninhabited. Still not Full Mathlib ∀.
v8.31.0-S-not-prime-power-gap3-fast-track RibetMazur Step26 S_val_1_5_prime S_not_prime_power_when_C_ge_B_plus_3_fast_refuted; S_not_prime_power_when_C_ge_B_plus_3_fast exists_p_with_order_ne_13_mod_p_sq_inhabited stay uninhabited; ExistsNewformLevel2 stays 0≠0; beal_from_ribet still from the Prop. Sketch stays uninhabited. Still not Full Mathlib ∀.
v8.32.0-S-not-proper-prime-power-gap3 RibetMazur Step27 S_val_1_5_not_proper_prime_power; S_not_proper_prime_power_when_C_ge_B_plus_3 exists_p_with_order_ne_13_mod_p_sq_inhabited stay uninhabited; ExistsNewformLevel2 stays 0≠0; beal_from_ribet still from the Prop. Sketch stays uninhabited. Still not Full Mathlib ∀.
v8.33.0-S-has-prime-with-exp-one-gap3 RibetMazur Step28 S_val_1_5_has_prime_with_exp_one exists_p_with_order_ne_13_of_has_exp_one; S_has_prime_with_exp_one_when_C_ge_B_plus_3 exists_p_with_order_ne_13_mod_p_sq_inhabited stay uninhabited; ExistsNewformLevel2 stays 0≠0; beal_from_ribet still from the Prop. Sketch stays uninhabited. Still not Full Mathlib ∀.
v8.34.0-B-le-100-exp-one-table RibetMazur Step29 S_has_prime_with_exp_one_B_le_100_table_rows; S_has_prime_with_exp_one_when_C_ge_B_plus_3 exists_p_with_order_ne_13_mod_p_sq_inhabited stay uninhabited; ExistsNewformLevel2 stays 0≠0; beal_from_ribet still from the Prop. Sketch stays uninhabited. Still not Full Mathlib ∀.
v8.35.0-S-not-proper-power-B-le-100-from-exp-one RibetMazur Step30 S_not_proper_prime_power_B_le_100_from_exp_one_table_rows; S_not_proper_prime_power_when_C_ge_B_plus_3 exists_p_with_order_ne_13_mod_p_sq_inhabited stay uninhabited; ExistsNewformLevel2 stays 0≠0; beal_from_ribet still from the Prop. Sketch stays uninhabited. Still not Full Mathlib ∀.
v8.36.0-B-le-100-order-ne-13-from-exp-one RibetMazur Step31 exists_p_with_order_ne_13_B_le_100_from_exp_one_table_rows; exists_p_with_order_ne_13_mod_p_sq_inhabited S_has_prime_with_exp_one_when_C_ge_B_plus_3 stay uninhabited; ExistsNewformLevel2 stays 0≠0; beal_from_ribet still from the Prop. Sketch stays uninhabited. Still not Full Mathlib ∀.
v8.37.0-B-le-1000-exp-one-extension RibetMazur Step32 S_has_prime_with_exp_one_B_le_1000_table_rows; exists_p_with_order_ne_13_mod_p_sq_inhabited S_has_prime_with_exp_one_when_C_ge_B_plus_3 stay uninhabited; ExistsNewformLevel2 stays 0≠0; beal_from_ribet still from the Prop. Sketch stays uninhabited. Still not Full Mathlib ∀.
v8.38.0-B-le-10000-exp-one-extension RibetMazur Step33 S_has_prime_with_exp_one_B_le_10000_table_rows; exists_p_with_order_ne_13_mod_p_sq_inhabited S_has_prime_with_exp_one_when_C_ge_B_plus_3 stay uninhabited; ExistsNewformLevel2 stays 0≠0; beal_from_ribet still from the Prop. Sketch stays uninhabited. Still not Full Mathlib ∀.
v8.39.0-B-le-50000-exp-one-real-witnesses RibetMazur Step34 S_has_prime_with_exp_one_B_le_50000_table_rows; exists_p_with_order_ne_13_mod_p_sq_inhabited S_has_prime_with_exp_one_when_C_ge_B_plus_3 stay uninhabited; ExistsNewformLevel2 stays 0≠0; beal_from_ribet still from the Prop. Sketch stays uninhabited. Still not Full Mathlib ∀.
v8.40.0-B-gt-50000-rad-bound RibetMazur Step35 S_le_13_C_pow12 rad_le_sqrt_of_squarefull rad_gt_C_of_P_phi13_gt_C; bugeaud_P_phi13_gt_C_when_B_gt_50000 rad_S_gt_sqrt_13_C12_when_squarefull_B_gt_50000 S_has_prime_with_exp_one_when_C_ge_B_plus_3 stay uninhabited; ExistsNewformLevel2 stays 0≠0; beal_from_ribet still from the Prop. Sketch stays uninhabited. Still not Full Mathlib ∀.
v8.41.0-Kraus-X0-26-elimination RibetMazur Step36 ap_bound_level_26 X0_26_Q_displayed_points; kraus_elimination_q_13_level_26 bugeaud_P_phi13_gt_C_when_B_gt_50000 S_has_prime_with_exp_one_when_C_ge_B_plus_3 stay uninhabited; ExistsNewformLevel2 stays 0≠0; beal_from_ribet still from the Prop. Sketch stays uninhabited. Still not Full Mathlib ∀.
v8.42.0-B-le-100k-extension RibetMazur Step37 S_has_prime_with_exp_one_B_le_100000_table_rows; exists_p_with_order_ne_13_mod_p_sq_inhabited S_has_prime_with_exp_one_when_C_ge_B_plus_3 kraus_elimination_q_13_level_26 stay uninhabited; ExistsNewformLevel2 stays 0≠0; beal_from_ribet still from the Prop. Sketch stays uninhabited. Still not Full Mathlib ∀.
v8.43.0-Kraus-p3-elim-26b1 RibetMazur Step38 kraus_elimination_26b1; kraus_elimination_26a1 kraus_elimination_q_13_level_26 exists_p_with_order_ne_13_mod_p_sq_inhabited S_has_prime_with_exp_one_when_C_ge_B_plus_3 stay uninhabited; ExistsNewformLevel2 stays 0≠0; beal_from_ribet still from the Prop. Sketch stays uninhabited. Still not Full Mathlib ∀.
v8.44.0-Kraus-p5-elim-26a1 RibetMazur Step39 kraus_elimination_26a1; kraus_elimination_q_13_level_26 exists_p_with_order_ne_13_mod_p_sq_inhabited S_has_prime_with_exp_one_when_C_ge_B_plus_3 stay uninhabited; ExistsNewformLevel2 stays 0≠0; beal_from_ribet still from the Prop. Sketch stays uninhabited. Still not Full Mathlib ∀.
v8.45.0-level-lowering-26-to-2 RibetMazur Step40 level_lowering_26_to_2_from_no_match; kraus_elimination_q_13_level_26 exists_p_with_order_ne_13_mod_p_sq_inhabited S_has_prime_with_exp_one_when_C_ge_B_plus_3 stay uninhabited; ExistsNewformLevel2 stays 0≠0; beal_from_ribet still from the Prop. Sketch stays uninhabited. Still not Full Mathlib ∀.
v8.46.0-B-le-200k-600-rows RibetMazur Step41 S_has_prime_with_exp_one_B_le_200000_table_rows; kraus_elimination_q_13_level_26 exists_p_with_order_ne_13_mod_p_sq_inhabited S_has_prime_with_exp_one_when_C_ge_B_plus_3 stay uninhabited; ExistsNewformLevel2 stays 0≠0; beal_from_ribet still from the Prop. Sketch stays uninhabited. Still not Full Mathlib ∀.
v8.47.0-B-200k-outlier-12186951011 RibetMazur Step42 S_has_prime_with_exp_one_B_le_200000_table_rows; kraus_elimination_q_13_level_26 exists_p_with_order_ne_13_mod_p_sq_inhabited S_has_prime_with_exp_one_when_C_ge_B_plus_3 stay uninhabited; ExistsNewformLevel2 stays 0≠0; beal_from_ribet still from the Prop. Sketch stays uninhabited. Still not Full Mathlib ∀.
v8.48.0-B-le-300k-900-rows RibetMazur Step43 S_has_prime_with_exp_one_B_le_300000_table_rows; kraus_elimination_q_13_level_26 exists_p_with_order_ne_13_mod_p_sq_inhabited S_has_prime_with_exp_one_when_C_ge_B_plus_3 stay uninhabited; ExistsNewformLevel2 stays 0≠0; beal_from_ribet still from the Prop. Sketch stays uninhabited. Still not Full Mathlib ∀.
v8.49.0-B-le-400k-1199-rows RibetMazur Step44 S_has_prime_with_exp_one_B_le_400000_table_rows; kraus_elimination_q_13_level_26 exists_p_with_order_ne_13_mod_p_sq_inhabited S_has_prime_with_exp_one_when_C_ge_B_plus_3 stay uninhabited; ExistsNewformLevel2 stays 0≠0; beal_from_ribet still from the Prop. Sketch stays uninhabited. Still not Full Mathlib ∀.
v8.50.0-B-le-500k-1498-rows RibetMazur Step45 S_has_prime_with_exp_one_B_le_500000_table_rows; kraus_elimination_q_13_level_26 exists_p_with_order_ne_13_mod_p_sq_inhabited S_has_prime_with_exp_one_when_C_ge_B_plus_3 stay uninhabited; ExistsNewformLevel2 stays 0≠0; beal_from_ribet still from the Prop. Sketch stays uninhabited. Still not Full Mathlib ∀.
v8.51.0-B-le-600k-1797-rows RibetMazur Step46 S_has_prime_with_exp_one_B_le_600000_table_rows; kraus_elimination_q_13_level_26 exists_p_with_order_ne_13_mod_p_sq_inhabited S_has_prime_with_exp_one_when_C_ge_B_plus_3 stay uninhabited; ExistsNewformLevel2 stays 0≠0; beal_from_ribet still from the Prop. Sketch stays uninhabited. Still not Full Mathlib ∀.
v8.52.0-B-le-700k-2096-rows RibetMazur Step47 S_has_prime_with_exp_one_B_le_700000_table_rows; kraus_elimination_q_13_level_26 exists_p_with_order_ne_13_mod_p_sq_inhabited S_has_prime_with_exp_one_when_C_ge_B_plus_3 stay uninhabited; ExistsNewformLevel2 stays 0≠0; beal_from_ribet still from the Prop. Sketch stays uninhabited. Still not Full Mathlib ∀.
v8.53.0-B-le-800k-2395-rows RibetMazur Step48 S_has_prime_with_exp_one_B_le_800000_table_rows; kraus_elimination_q_13_level_26 exists_p_with_order_ne_13_mod_p_sq_inhabited S_has_prime_with_exp_one_when_C_ge_B_plus_3 stay uninhabited; ExistsNewformLevel2 stays 0≠0; beal_from_ribet still from the Prop. Sketch stays uninhabited. Still not Full Mathlib ∀.
v8.54.0-B-le-900k-2694-rows RibetMazur Step49 S_has_prime_with_exp_one_B_le_900000_table_rows; kraus_elimination_q_13_level_26 exists_p_with_order_ne_13_mod_p_sq_inhabited S_has_prime_with_exp_one_when_C_ge_B_plus_3 stay uninhabited; ExistsNewformLevel2 stays 0≠0; beal_from_ribet still from the Prop. Sketch stays uninhabited. Still not Full Mathlib ∀.
v8.55.0-B-le-1000k-2993-rows RibetMazur Step50 S_has_prime_with_exp_one_B_le_1000000_table_rows; kraus_elimination_q_13_level_26 exists_p_with_order_ne_13_mod_p_sq_inhabited S_has_prime_with_exp_one_when_C_ge_B_plus_3 stay uninhabited; ExistsNewformLevel2 stays 0≠0; beal_from_ribet still from the Prop. Sketch stays uninhabited. Still not Full Mathlib ∀.
v8.56.0-B-le-1100k-3292-rows RibetMazur Step51 S_has_prime_with_exp_one_B_le_1100000_table_rows; kraus_elimination_q_13_level_26 exists_p_with_order_ne_13_mod_p_sq_inhabited S_has_prime_with_exp_one_when_C_ge_B_plus_3 stay uninhabited; ExistsNewformLevel2 stays 0≠0; beal_from_ribet still from the Prop. Sketch stays uninhabited. Still not Full Mathlib ∀.
v8.57.0-B-le-1200k-3591-rows RibetMazur Step52 S_has_prime_with_exp_one_B_le_1200000_table_rows; kraus_elimination_q_13_level_26 exists_p_with_order_ne_13_mod_p_sq_inhabited S_has_prime_with_exp_one_when_C_ge_B_plus_3 stay uninhabited; ExistsNewformLevel2 stays 0≠0; beal_from_ribet still from the Prop. Sketch stays uninhabited. Still not Full Mathlib ∀.
v8.58.0-B-le-1300k-3890-rows RibetMazur Step53 S_has_prime_with_exp_one_B_le_1300000_table_rows; kraus_elimination_q_13_level_26 exists_p_with_order_ne_13_mod_p_sq_inhabited S_has_prime_with_exp_one_when_C_ge_B_plus_3 stay uninhabited; ExistsNewformLevel2 stays 0≠0; beal_from_ribet still from the Prop. Sketch stays uninhabited. Still not Full Mathlib ∀.
v8.59.0-B-le-1400k-4189-rows RibetMazur Step54 S_has_prime_with_exp_one_B_le_1400000_table_rows; kraus_elimination_q_13_level_26 exists_p_with_order_ne_13_mod_p_sq_inhabited S_has_prime_with_exp_one_when_C_ge_B_plus_3 stay uninhabited; ExistsNewformLevel2 stays 0≠0; beal_from_ribet still from the Prop. Sketch stays uninhabited. Still not Full Mathlib ∀.
v8.60.0-B-le-1500k-4488-rows RibetMazur Step55 S_has_prime_with_exp_one_B_le_1500000_table_rows; kraus_elimination_q_13_level_26 exists_p_with_order_ne_13_mod_p_sq_inhabited S_has_prime_with_exp_one_when_C_ge_B_plus_3 stay uninhabited; ExistsNewformLevel2 stays 0≠0; beal_from_ribet still from the Prop. Sketch stays uninhabited. Still not Full Mathlib ∀.
v8.61.0-B-le-1600k-4787-rows RibetMazur Step56 S_has_prime_with_exp_one_B_le_1600000_table_rows; kraus_elimination_q_13_level_26 exists_p_with_order_ne_13_mod_p_sq_inhabited S_has_prime_with_exp_one_when_C_ge_B_plus_3 stay uninhabited; ExistsNewformLevel2 stays 0≠0; beal_from_ribet still from the Prop. Sketch stays uninhabited. Still not Full Mathlib ∀.
v8.62.0-B-le-1700k-5086-rows RibetMazur Step57 S_has_prime_with_exp_one_B_le_1700000_table_rows; kraus_elimination_q_13_level_26 exists_p_with_order_ne_13_mod_p_sq_inhabited S_has_prime_with_exp_one_when_C_ge_B_plus_3 stay uninhabited; ExistsNewformLevel2 stays 0≠0; beal_from_ribet still from the Prop. Sketch stays uninhabited. Still not Full Mathlib ∀.
v8.63.0-B-le-1800k-5385-rows RibetMazur Step58 S_has_prime_with_exp_one_B_le_1800000_table_rows; kraus_elimination_q_13_level_26 exists_p_with_order_ne_13_mod_p_sq_inhabited S_has_prime_with_exp_one_when_C_ge_B_plus_3 stay uninhabited; ExistsNewformLevel2 stays 0≠0; beal_from_ribet still from the Prop. Sketch stays uninhabited. Still not Full Mathlib ∀.
v8.64.0-B-le-1900k-5684-rows RibetMazur Step59 S_has_prime_with_exp_one_B_le_1900000_table_rows; kraus_elimination_q_13_level_26 exists_p_with_order_ne_13_mod_p_sq_inhabited S_has_prime_with_exp_one_when_C_ge_B_plus_3 stay uninhabited; ExistsNewformLevel2 stays 0≠0; beal_from_ribet still from the Prop. Sketch stays uninhabited. Still not Full Mathlib ∀.
v8.65.0-B-le-2000k-5983-rows RibetMazur Step60 S_has_prime_with_exp_one_B_le_2000000_table_rows; kraus_elimination_q_13_level_26 exists_p_with_order_ne_13_mod_p_sq_inhabited S_has_prime_with_exp_one_when_C_ge_B_plus_3 stay uninhabited; ExistsNewformLevel2 stays 0≠0; beal_from_ribet still from the Prop. Sketch stays uninhabited. Still not Full Mathlib ∀.
v8.66.0-B-le-2000k-density-capstone RibetMazur Density_2M smallZsigPrimes zsig_density_2M_stats; kraus_elimination_q_13_level_26 exists_p_with_order_ne_13_mod_p_sq_inhabited S_has_prime_with_exp_one_when_C_ge_B_plus_3 stay uninhabited; ExistsNewformLevel2 stays 0≠0; beal_from_ribet still from the Prop. Sketch stays uninhabited. Still not Full Mathlib ∀.
v8.67.0-level26-newforms-skeleton RibetMazur Level26_Newforms kraus_primes_26 zsig_density_links_to_kraus; kraus_elimination_q_13_level_26 level26_a_eliminated_by_53 kraus_elimination_q_13_level_26_proof_sketch stay uninhabited; ExistsNewformLevel2 stays 0≠0; beal_from_ribet still from the Prop. Sketch stays uninhabited. Still not Full Mathlib ∀.
v8.68.0-kraus-elim-53-443 RibetMazur Level26_Newforms a53_26a1_eq level26_a_eliminated_by_53_of_witness hasSmallZsigWitness_1500003; kraus_elimination_q_13_level_26 level26_a_eliminated_by_53 kraus_elimination_q_13_level_26_proof_sketch stay uninhabited; ExistsNewformLevel2 stays 0≠0; beal_from_ribet still from the Prop. Sketch stays uninhabited. Still not Full Mathlib ∀.
v8.68.1-frey-ap-53-443 RibetMazur Level26_Newforms a53_E_196 a443_E_1500003 a443_26a1_eq; kraus_elimination_q_13_level_26 level26_a_eliminated_by_53 kraus_elimination_q_13_level_26_proof_sketch stay uninhabited; ExistsNewformLevel2 stays 0≠0; beal_from_ribet still from the Prop. Sketch stays uninhabited. Still not Full Mathlib ∀.
