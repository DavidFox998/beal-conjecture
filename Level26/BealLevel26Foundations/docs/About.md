# About — Beal Level 26 Foundations

Latest tag / HEAD: `v24.4.0-Beal-44-13-Level-26-v24x-Final-Summary`
Most current as of 2026-09-13, **not** final.
Honest v24.x final summary (not v25): on $A^4 + B^4 = (B+3)^{13}$,
`matveev_v24x_summary` packs $|\Lambda| = \log(1+B^4/A^4) \le B^4/A^4$
with $0 < \exp(C_{\mathrm{exp\_bound}}) < 10^{-12} < 1$ and
$C_{\mathrm{exp\_bound}} = -\mathrm{height}_{B_0}\log\mathrm{height}_{B_0}$,
$\mathrm{height}_{B_0} = 104382751019310000000 = C1_{\mathrm{floor}}\cdot 30^6$.
`matveev_v24x_conditional_summary` is the IF-Matveev form
$0 < \exp(C) < B^4/A^4$ and $B^4(1+\exp(C)) > \exp(C)\,(B+3)^{13}$.
`bugeaud_v24x_final_link` restates the conditional LLL shape.
`baker_v24x_reduction_shape` restates the displayed $B0_{\mathrm{raw}}$ cert.
Target, `baker_bound_gap3`, and `bugeaud_LLL_reduction_conditional` stay uninhabited def Props.
Locked Lean 0 vs v24.3.2 `305e5f4` except `BealMatveevThm14.lean`,
`RibetMazur.lean`, and `BealBakerB0ReductionCertificate.lean` summary shape.
Previous v24.3.2 DOI `10.5281/zenodo.22732045`
(concept `10.5281/zenodo.22379293`).

Latest prior tag: `v24.3.2-Beal-44-13-Level-26-Exp-Numerical-Bound`
Most current as of 2026-09-13, **not** final.
`BealMatveevThm14.lean` evaluates the displayed Matveev exponential as
an extremely small number $0 < \exp(C_{\mathrm{exp\_bound}}) < 10^{-12}$:
`matveev_height_B0_gt_onee20` ($\mathrm{height}_{B_0} > 10^{20}$),
`matveev_log_ten_gt_23_div_10` ($\log 10 > 2.3$ via $2^{83} < 10^{25}$),
`matveev_log_height_B0_gt_46` / `matveev_exp_46_lt_height_B0` ($\log(\mathrm{height}_{B_0}) > 46$),
`matveev_C_exp_bound_le_neg_1e12` ($C_{\mathrm{exp\_bound}} \le -10^{12}$),
`matveev_target_exp_lower_lt_exp_neg_1e12` ($\exp(C) < \exp(-10^{12})$),
`matveev_target_exp_lower_lt_onee12` ($\exp(C) < 10^{-12}$),
`matveev_exp_C_pos_lt_one` ($0 < \exp(C) < 10^{-12} < 1$).
Target, `baker_bound_gap3`, and `bugeaud_LLL_reduction_conditional` stay uninhabited def Props.
Locked Lean 0 vs v24.3.1 `d189ef9` except `BealMatveevThm14.lean` and `RibetMazur.lean`. Previous v24.3.1 DOI `10.5281/zenodo.22731966`
(concept `10.5281/zenodo.22379293`).

Latest prior tag: `v24.3.1-Beal-44-13-Level-26-Conditional-B-Lower`
Most current as of 2026-09-13, **not** final.
`BealMatveevThm14.lean` derives an explicit conditional lower bound on $B$
from the conditional Matveev ratio bound on a gap-3 solution $A^4 + B^4 = (B+3)^{13}$:
`matveev_gap3_A_pow_eq_B3_pow_sub_B_pow` ($(A:\mathrm{Real})^4 = ((B+3):\mathrm{Real})^{13} - (B:\mathrm{Real})^4$),
`matveev_gap3_ratio_explicit` ($B^4 / A^4 = B^4 / ((B+3)^{13} - B^4)$),
`matveev_gap3_conditional_B_lower` (IF $|\Lambda| > \exp(C_{\mathrm{exp\_bound}})$ THEN $B^4 / ((B+3)^{13} - B^4) > \exp(C_{\mathrm{exp\_bound}})$ and $B^4(1 + \exp(C_{\mathrm{exp\_bound}})) > \exp(C_{\mathrm{exp\_bound}})(B+3)^{13}$),
`matveev_gap3_conditional_B_lower_of_target`,
`matveev_gap3_conditional_B_pos_lower` ($0 < B$).
Target, `baker_bound_gap3`, and `bugeaud_LLL_reduction_conditional` stay uninhabited def Props.
Locked Lean 0 vs v24.3.0 `6a0a0b1` except `BealMatveevThm14.lean` and `RibetMazur.lean`. Previous v24.3.0 DOI `10.5281/zenodo.22731759`
(concept `10.5281/zenodo.22379293`).

Latest prior tag: `v24.3.0-Beal-44-13-Level-26-Bugeaud-LLL-Link`
Most current as of 2026-09-13, **not** final.
`BealMatveevThm14.lean` and `BealBugeaudLLLFormal.lean` link the conditional
ratio bound $B^4/A^4 > \exp(C_{\mathrm{exp\_bound}})$ to the Baker $B_0 = 10^6$ certificate
and LLL reduction toward $B \le B_{\mathrm{reduced}}$ (~$10^3$) without claiming the unproven
Matveev lower bound:
`matveev_gap3_conditional_ratio_pos` ($0 < \exp(C_{\mathrm{exp\_bound}}) < B^4/A^4$ conditional on target),
`matveev_gap3_ratio_pos_of_conditional_lower` ($0 < B^4/A^4$ via conditional lower bound),
`bugeaud_LLL_reduction_conditional` (conditional definition of LLL reduction to $B_{\mathrm{reduced}} \le B_0$ given `matveev_inequality_real_formal`).
Target, `baker_bound_gap3`, and `bugeaud_LLL_reduction_conditional` stay uninhabited def Props.
Locked Lean 0 vs v24.2.3 `ed94732` across 9 locked files (honesty lock exception only for intentional LLL link extension in `BealBugeaudLLLFormal.lean`). Previous v24.2.3 DOI `10.5281/zenodo.22731634`
(concept `10.5281/zenodo.22379293`).

Latest prior tag: `v24.2.3-Beal-44-13-Level-26-Matveev-Conditional-Lower`
Most current as of 2026-09-13, **not** final.
`BealMatveevThm14.lean` shows that IF the Matveev lower bound target
$|\Lambda| > \exp(C_{\mathrm{exp\_bound}})$ were true on a gap-3 solution
$A^4 + B^4 = (B+3)^{13}$, THEN $B^4/A^4 > \exp(C_{\mathrm{exp\_bound}})$:
`matveev_conditional_lower_implies_ratio_gt_exp` ($|\Lambda| > \text{target} \implies B^4/A^4 > \text{target}$),
`matveev_conditional_lower_implies_ratio_gt_exp_of_solution`,
`matveev_gap3_ratio_lower_bound_conditional` (solution ∧ target $\implies B^4/A^4 > \exp(C_{\mathrm{exp\_bound}})$).
Target and `baker_bound_gap3` stay uninhabited def Props.
Locked Lean 0 vs v24.2.2 `ffd8343` except `BealMatveevThm14.lean`
and `RibetMazur.lean`. Previous v24.2.2 DOI `10.5281/zenodo.22731508`
(concept `10.5281/zenodo.22379293`).

Latest prior tag: `v24.2.2-Beal-44-13-Level-26-Matveev-Log-One-Plus-Le`
Most current as of 2026-09-13, **not** final.
`BealMatveevThm14.lean` shows $|\Lambda| = \log(1 + B^4/A^4) \le B^4/A^4$
on gap-3 solutions via the classical upper bound $\log(1+x) \le x$:
`matveev_log_one_plus_le_self` ($\forall x > -1, \log(1+x) \le x$),
`matveev_gap3_B_pow_div_A_pow_pos` ($0 < B^4/A^4$ on solutions),
`matveev_gap3_abs_lambda_nonneg` ($0 \le |\Lambda|$),
`matveev_gap3_abs_lambda_le_ratio` ($|\Lambda| \le B^4/A^4$),
`matveev_gap3_abs_lambda_lt_one_of_small_ratio` ($B^4/A^4 < 1 \implies |\Lambda| < 1$).
Target and `baker_bound_gap3` stay uninhabited def Props.
Locked Lean 0 vs v24.2.1 `ac100cf` except `BealMatveevThm14.lean`
and `RibetMazur.lean`. Previous v24.2.1 DOI `10.5281/zenodo.22731160`
(concept `10.5281/zenodo.22379293`).

Latest prior tag: `v24.2.1-Beal-44-13-Level-26-Matveev-Log-Form-Ratio`
Most current as of 2026-09-13, **not** final.
`BealMatveevThm14.lean` expresses the logarithmic form
on gap-3 solutions as the logarithm of the ratio
$(B+3)^{13} / A^4 = 1 + B^4 / A^4$:
$0 < A^4$ (`matveev_gap3_A_pow_pos`),
$0 < (B+3)^{13}$ (`matveev_gap3_B3_pow_pos`),
$(B+3)^{13} / A^4 = 1 + B^4 / A^4$ (`matveev_gap3_ratio_eq_one_plus_ratio`),
$\Lambda = -\log((B+3)^{13} / A^4)$,
$|\Lambda| = \log((B+3)^{13} / A^4) = \log(1 + B^4 / A^4)$
(`matveev_gap3_log_form_eq_log_ratio`,
 `matveev_gap3_abs_lambda_eq_log_one_plus_ratio`).
`0 < matveev_target_exp_lower < 1`.
Target and `baker_bound_gap3` stay uninhabited def Props.
Locked Lean 0 vs v24.2.0 `d755428` except `BealMatveevThm14.lean`
and `RibetMazur.lean`. Previous v24.2.0 DOI `10.5281/zenodo.22731054`
(concept `10.5281/zenodo.22379293`).

Latest prior tag: `v24.2.0-Beal-44-13-Level-26-Matveev-Log-Form-Bound`
Most current as of 2026-09-13, **not** final.
`BealMatveevThm14.lean` proves the logarithmic form
upper bound on gap-3 solutions: on $A^4 + B^4 = (B+3)^{13}$,
$B > 0$ via `baker_le_B0_gap3`, $A > 0$ via `eq_implies_A_gt_B`,
$\Lambda = 4 \log A - 13 \log (B+3) < 0$, and
$|\Lambda| = -\Lambda = -(4 \log A - 13 \log (B+3))$.
`matveev_exp_lower_lt_one_and_pos` restates the lower bound target
in $(0, 1)$. Links the upper bound side to the lower bound target.
Target and `baker_bound_gap3` stay uninhabited def Props.
Locked Lean 0 vs v24.1.1 `21df092` except `BealMatveevThm14.lean`
and `RibetMazur.lean`. Previous v24.1.1 DOI `10.5281/zenodo.22730846`
(concept `10.5281/zenodo.22379293`).

Latest prior tag: `v24.1.1-Beal-44-13-Level-26-Matveev-C-Exp-Rewrite`
Most current as of 2026-09-13, **not** final.
`BealMatveevThm14.lean` rewrites the
displayed Matveev exponent `matveev_C_exp_bound`
via the height_B0 product identity:
`matveev_C_exp_bound = -(height_B0 * log height_B0)`.
`matveev_target_exp_lower_eq` rewrites the
target lower bound shape.
Target and `baker_bound_gap3` stay
uninhabited def Props.
Locked Lean 0 vs v24.1.0 `7962905` except
`BealMatveevThm14.lean`. Previous v24.1.0
DOI `10.5281/zenodo.22730776`
(concept `10.5281/zenodo.22379293`).

Latest prior tag: `v24.1.0-Beal-44-13-Level-26-Matveev-Height-Product`
Most current as of 2026-09-12, **not** final.
`BealMatveevThm14.lean` adds the height
product identity.
`C1_floor * 729000000 = height_B0`.
The 7-digit typo `72900000` is `30^6 / 10`
and `C1_floor * 72900000 = height_B0 / 10`.
Target and `baker_bound_gap3` stay
uninhabited def Props. Stay in v24.x
until `|Λ| > exp(-C)` is a theorem.
Locked Lean 0 vs v24.0.2 `73c5993` except
`BealMatveevThm14.lean`. Previous v24.0.2
DOI `10.5281/zenodo.22730548`
(concept `10.5281/zenodo.22379293`).

Latest prior tag: `v24.0.2-Beal-44-13-Level-26-Matveev-Exp-Bound-Properties`
Most current as of 2026-09-12, **not** final.
`BealMatveevThm14.lean` adds Real.exp
properties of the displayed Matveev
exponent. `0 < exp(C_exp_bound) < 1`.
`matveev_target_exp_lower` names that
positive number. Target and
`baker_bound_gap3` stay uninhabited
def Props. Stay in v24.x until
`|Λ| > exp(-C)` is a theorem. Locked
Lean 0 vs v24.0.1 `4d66383` except
`BealMatveevThm14.lean`. Zenodo DOI
`10.5281/zenodo.22730548`
(concept `10.5281/zenodo.22379293`;
previous v24.0.1 `10.5281/zenodo.22730460`).

Latest prior tag: `v24.0.1-Beal-44-13-Level-26-Matveev-Height-Log-Monotone`
Most current as of 2026-09-12, **not** final.
`BealMatveevThm14.lean` adds height /
log monotone lemmas toward Matveev
2000 Thm 1.4. `matveev_height_B0_gt_two`,
`matveev_log_height_monotone`, and
`matveev_C_exp_bound_lt_zero_of_pos_log`
are kernel theorems. `C1_floor > 0` and
`thirty_pow > 0` by decide, no axioms.
`matveev_inequality_real_target` and
`baker_bound_gap3` stay uninhabited
def Props. Stay in v24.x until the
Real inequality is a theorem. Locked
Lean 0 vs v24.0.0 `d39c6d5` except
`BealMatveevThm14.lean`. Previous v24.0.0
DOI `10.5281/zenodo.22730408`
(concept `10.5281/zenodo.22379293`).

Latest prior tag: `v24.0.0-Beal-44-13-Level-26-Matveev-Thm-1-4-Formalization-Start`
Most current as of 2026-09-12, **not** final.
`BealMatveevThm14.lean` starts Matveev
2000 Thm 1.4 formalization.
`matveev_height_log_pos` is
`0 < Real.log height_B0`.
`matveev_exp_bound_neg` restates
`C_exp_bound < 0`.
`matveev_inequality_real_target` and
`baker_bound_gap3` stay uninhabited
def Props. Stay in v24.x until the
Real inequality is a theorem. Tate /
Baker / v14 J0 / v15 B0 / v17 LLL /
v19 constants / v20 Bugeaud LLL /
v21 inequality / v22 Real skeleton /
v23 compare Lean 0 lines vs v23
`c44f161`. Previous v23 DOI
`10.5281/zenodo.22730338`
(concept `10.5281/zenodo.22379293`).
Honesty lock: `baker_bound_gap3` stays Prop;
`thirty_pow = 729000000` and `≠ 72900000`
decide, no axioms; main pack
`[propext, Classical.choice, Quot.sound]`
only; not Mathlib Matveev or LLL.

Latest prior tag: `v23.0.0-Beal-44-13-Level-26-Matveev-C-Exp-Bound-Compare`
Most current as of 2026-09-12, **not** final.
`matveev_C_exp_bound_lt_neg_onee12` is
`C_exp_bound < -10^12`.
`matveev_log_form_ne_zero_of_gap3` is
the Real form nonzero on a gap-3
solution. `baker_bound_gap3` stays
an uninhabited def Prop. Tate / Baker /
v14 J0 / v15 B0 / v17 LLL / v19 constants /
v20 Bugeaud LLL / v21 inequality / v22
Real skeleton Lean 0 lines vs v22
`1db061a`. Previous v22 DOI
`10.5281/zenodo.22729980`
(concept `10.5281/zenodo.22379293`;
v23 DOI `10.5281/zenodo.22730338`).
Honesty lock: `baker_bound_gap3` stays Prop;
`matveev_height_B0_gt_onee12` decide,
no axioms; main pack
`[propext, Classical.choice, Quot.sound]`
only; not Mathlib Matveev or LLL.

Latest prior tag: `v22.0.0-Beal-44-13-Level-26-Matveev-Inequality-Real`
Most current as of 2026-09-12, **not** final.
`matveev_C_exp_bound` is the Real
exponent `-(C1_floor : Real) *
(thirty_pow : Real) * Real.log (height_B0)`.
`matveev_C_exp_bound_decide` by decide
(no axioms): `C1_floor = 143186215390`
and `thirty_pow = 729000000`.
`matveev_inequality_real_formal` stays
an uninhabited def Prop. `baker_bound_gap3`
stays an uninhabited def Prop.
Tate / Baker / v14 J0 / v15 B0 / v17 LLL /
v19 constants / v20 Bugeaud LLL / v21
inequality Lean 0 lines vs v21 `3079d82`.
Previous v21 DOI `10.5281/zenodo.22729724`
(concept `10.5281/zenodo.22379293`).
Honesty lock: `baker_bound_gap3` stays Prop;
`matveev_C_exp_bound_decide` decide,
no axioms; main pack
`[propext, Classical.choice, Quot.sound]`
only; PARI external certs like mwrank
`{0,12}`, not Mathlib Matveev or LLL.

Latest prior tag: `v21.0.0-Beal-44-13-Level-26-Matveev-Log-Form-Nonzero`
Most current as of 2026-09-12, **not** final.
`matveev_log_form_int` is the Tate c4-scale
integer form; `matveev_log_form_ne_zero`
on `B % 14 = 0`. Decide witnesses at
`B = 0` and `B = 14` (no axioms).
`matveev_height_le_log_B0` records
`B ≤ 104382751019310000000`.
`baker_bound_gap3` and
`bugeaud_reduction_formal` stay
uninhabited def Prop. Tate / Baker /
v14 J0 / v15 B0 / v17 LLL / v19 constants /
v20 Bugeaud LLL Lean 0 lines vs v20
`768ed7f`. Previous v20 DOI
`10.5281/zenodo.22729515`; v21 DOI
`10.5281/zenodo.22729724`
(concept `10.5281/zenodo.22379293`).
Honesty lock: `baker_bound_gap3` stays Prop;
`baker_B0_certificate_holds` and
`baker_reduction_certificate_holds` decide,
no axioms; main pack
`[propext, Classical.choice, Quot.sound]`
only; PARI external certs like mwrank
`{0,12}`, not Mathlib Matveev or LLL.

Latest prior tag: `v17.0.0-Beal-44-13-Level-26-Baker-B0-Reduction-Certificate`
Most current, descriptive title only.
PARI `qflll` reduces `B0_raw` to
`baker_B0_reduced_PARI = 1000000`.
`baker_reduction_certificate_holds`
prints no axioms.  `baker_bound_gap3`
stays Prop.  Tate / Baker / v15 B0 /
v14 modular files 0 lines vs v16
`9ce2980`.  Previous v16 DOI
`10.5281/zenodo.22728705`
(concept `10.5281/zenodo.22379293`).

Latest prior tag: `v16.0.0-Beal-44-13-Level-26-Cumulative-Archive`
Most current cumulative archive v10–v15 as of 2026-09-12,
**not** final. Docs-only versus v15 `6443f81`.
Lean files 0 lines vs
`v15.0.0-Baker-B0-PARI-Certificate`.
See `docs/CUMULATIVE_ARCHIVE_v10_v15.md`.
Series concept `10.5281/zenodo.22379293`.
v15 DOI `10.5281/zenodo.22728624`.
Honesty lock: `baker_bound_gap3` stays Prop;
`baker_bound_gap3_of_PARI` not inhabited;
`baker_B0_certificate_holds` decide, no axioms;
main pack `[propext, Classical.choice, Quot.sound]`
only; raw Matveev does not force `B≤1e6`.

Latest prior tag: `v15.0.0-Baker-B0-PARI-Certificate`
PARI `baker_B0_PARI = 1000000` and
`baker_B0_certificate_displayed` List/Int
trace from `scripts/baker_b0_gap3.gp`.
`baker_B0_certificate_holds` prints no
axioms.  `baker_bound_gap3` stays Prop.
Tate / Baker-upper-bound files stay
exactly v14 `3089bec` (0 lines).
Previous v14 DOI `10.5281/zenodo.22722140`.
Base: `v14.0.0-J0-Mwrank-Formal-Verified`
Displayed J0 `[[1,0,1,-5,-8],[1,-1,1,-3,3]]`,
mwrank `{0,12}` rank 2, formal M3 `[[1,1],[0,2]]`.
Holds theorems print no axioms.
Frey / Level reuse Tate `c4` / `tateF2` /
`tateConductor` (`f₂≤5`).
Tate and Baker files stay exactly v13
`cea155c` (0 lines changed).
`baker_bound_gap3` / `conductor_86` /
`B14_honest` stay Prop.
No new v14 DOI; previous v13 DOI
`10.5281/zenodo.22721843`.
Base: `v13.0.0-Beal-44-13-Level-26-Modular-Elimination`
Zenodo DOI `10.5281/zenodo.22721843`.
Frey `Y² = X(X-A⁴)(X+B⁴)` for (4,4,13) gap3.
Conductor is `tateConductor = 2^{f₂}*rad*13`
with `f₂≤5`, not `2⁵*3*13`
(witness `63982=2*31991`).
Five certs are transparent `List`/`Nat`
structures, not opaque axioms.
`kraus_a53_elimination`
is kernel decide (`{-10,-2,1,6,14}` miss
`{0,12}`).  The pack uses 25 chunks for
`B≤1e6` and `matveev_explicit_gap3` for
`B>1e6`.  Tate and Baker files unchanged.
`baker_bound_gap3` / `conductor_86` /
`B14_honest` stay Prop.
Base: `v12.0.0-Baker-Matveev-explicit`
explicit Matveev for (4,4,13) gap3, not general Bugeaud.
`matveev_explicit_gap3` turns `baker_bound_gap3`
into `A^4+B^4=(B+3)^13 → B ≤ baker_B0`.
`matveev_no_solution_A_le_B` is inhabited.
`baker_bound_gap3` stays Prop (Matveev not
in Mathlib 4.12).  Tate file stays v11.
Base: `v11.0.0-Tate-N-def`
`tateConductor A B = 2^{f₂} * rad(AB(B+3)) * 13`.
`frey_tate_conductor` is that Nat.
`frey_tate_conductor_inhabited` proves
`tateConductor ∣ 2⁵ * rad * 13` with
`v_q ≤ 1` odd and `v₂ ≤ 5`.
`baker_bound_gap3`, `conductor_86`,
`B14_honest` stay Prop.  `B ≤ 1e6` is
inhabited via the Baker chunks.
Base: `v10.0.0-paper-B14-Baker-1e6-DOI`
Paper archive of the v9.4.0 census (62500
values / 25 chunks), Baker-conditional
`∀ B`, and Tate bound `2⁵ * rad * 13`.
Archive Zenodo DOI: math
`10.5281/zenodo.22712897`, paper
`10.5281/zenodo.22713047`.
`baker_bound_gap3`, `frey_tate_conductor`,
`conductor_86`, `B14_honest` stay Prop.
Base: `v9.4.0-chunked-1e6-final`
`allKilled_chunk_0` .. `allKilled_chunk_24`:
each `allKilled start 2500 = true` by
rfl / kernel decide on one 2500-slice of
the 62500 values `B ≡ 14` (mod 16) up to
`10⁶`.  `allKilled_62500` and
`allKilled_1e6` are the conjunction.
`baker_conditional_gap3_full` stays
inhabited.  `baker_bound_gap3` stays
Prop (Baker needs Bugeaud, not in
Mathlib 4.12).  `frey_tate_conductor`
stays Prop (Tate `N(E)` missing).
`conductor_86` stays Prop
(`63982 = 2*31991` proves `N` does not
divide `2^5*3*13`).  `B14_honest` stays
Prop.  Not BCDT.
Base: `v9.3.0-Baker-conditional-gap3-full`
`baker_conditional_gap3_full`:
`baker_bound_gap3 → ∀ B, ¬∃ A` with
`A⁴ + B⁴ = (B+3)¹³`.  `B ≤ B0 = 10⁶` by
the expanded residue cover; `B > B0` by
the Baker premise.  `baker_bound_gap3`
stays an uninhabited Prop (Bugeaud linear
forms external, not in Mathlib 4.12).
Tate 2-adic lemmas stay.
`frey_tate_conductor` stays Prop.
Keeps the Zsig Props, `conductor_86`
Prop, `B14_honest` Prop.  Not BCDT.
Base: `v9.2.0-Tate-2adic-conductor`.
Tate Steps 6-7 at 2 on Frey `Y² = X(X−A⁴)(X+B⁴)`:
`v₂(c₄) ≥ 4`, `v₂(c₆)` from A,B parity,
`conductorExponentTate2 ≤ 5`.
`tate_conductor_bound_rhs = 2⁵ * rad * 13`
with packed `v_q ≤ 1` odd and `v₂ ≤ 5`.
`frey_tate_conductor` stays an uninhabited Prop
(Mathlib has no `N(E)`).  Odd-q exponent-1
lemmas stay.  Allowed axioms
`[propext, Quot.sound, Classical.choice]`.
Keeps `baker_bound_gap3` Prop, the Zsig Props,
`conductor_86` Prop, `B14_honest` Prop.
Not BCDT.  Not `|Δ|`.
Base: `v9.1.0-Tate-conductor`.
Tate Step 2 on Frey `Y² = X(X−A⁴)(X+B⁴)`:
odd primes of `ABC` have local exponent `1`
under pairwise coprimeness; `v₂(c₄) ≥ 4` so
Step 2 does not finish at `2`.
`frey_tate_conductor` (`N ∣ 2⁵ * rad(AB(B+3)) * 13`
for a Tate `N(E)`) stays an uninhabited Prop.
Mathlib 4.12 has no `N(E)`.  Allowed axioms
`[propext, Quot.sound, Classical.choice]`.
Keeps `baker_bound_gap3` Prop, the Zsig Props,
`conductor_86` Prop, `B14_honest` Prop.
Not BCDT.  Not `|Δ|`.
Base: `v9.0.0-Baker-bound-gap3`.
`baker_bound_gap3` is the missing Baker/Bugeaud
effective bound (exists B0 = 10^6).  Uninhabited
Prop; `sorry` is not used.  Needs Baker, not Zsig.
Keeps the v8.86.0 empty-axiom residue cover.
`exists_zsig_q_gt_2M_dvd_C13_sub_B4` stays a Prop.
`conductor_86` stays a Prop.  `B14_honest` stays
a Prop.  Chain `ExistsNewformLevel2` stays `0 ≠ 0`.
Base: `v8.88.0-Zsig-Bgt2M-gap3`.
Zsigmondy 5983 + LTE ledger for B > 2M gap-3.
`beal_gap3_B_gt_2M_eliminated` stays an
uninhabited Prop: named-row pools are B ≤ 2M,
and q | A gives q⁴ | C¹³ − B⁴, not q⁴ | C¹³.
`frey_conductor_general` unchanged.
`conductor_86` stays a Prop.
`B14_honest` stays a Prop.
Base: `v8.87.0-general-conductor-bound`.
`frey_conductor_general` inhabits the Mathlib
Weierstrass `|Δ| = 2^e * N0` bound
(`e ≤ 5`, `N0 ∣ (ABC)^26 * 13`).
Not Tate.  `conductor_86` stays a Prop.
266+86 residue kills unchanged.
Base: `v8.86.0-paper-B14-final-DOI`.
Lean change: BealFreyModQKill / paper
`beal_..._B14_full` covers all 352 named
`B ≡ 14` rows (266 mod 53, 77 at q=29,
9 at q=109).  Empty axioms.  Not Ribet.
KrausB14 `eliminated_full` stays the
two-element mod-16 kill of `[196, 1500003]`.
`B14_honest` stays the uninhabited Prop.
Math release: `v8.84.0-B14-modq-kill`.
`gcd(B, B+3) ∣ 3` is inhabited (`propext`).
`irreducible_86` is the Euler `a₅₃` miss
displayed as `IrreducibleMod13Trace`, not Mazur.
`conductor_86`, `level_lowering_86`, and
`beal_..._eliminated_86` stay uninhabited Props.
`Classical.choice` is not BCDT and not Ribet.
Zsigmondy `5983=4488+5·299` does not prove
`N ∣ 2^5 * 3 * 13`: survivor `63982 = 2*31991`.
`B14_honest` stays the uninhabited `∀` on all
352.  Not Ribet.  Not BCDT.
`full_honest` is the two-element
list via mod 16. `#print axioms` empty.
The old 2M capstone stays `Classical.em`. Not Ribet.
`beal_4_13_13_gap3_B_196_eliminated` and
`beal_4_13_13_gap3_B_1500003_eliminated`
are instances.
`beal_4_13_13_gap3_B_le_2M_eliminated`
stays `Classical.em`.
`frey_modular` stays `Classical.em`.
`level_lowering_to_26` stays a Prop.
Chain `ExistsNewformLevel2` stays `0 ≠ 0`.
Density/Step
`kraus_elimination_q_13_level_26` stays the
uninhabited `∀`.  No new Beal `∀`.
The s2_26 pack stays a coefficient
check, not Ribet.
`kraus_elimination_q_13_level_26` stays
uninhabited.  `B > 2000000` Bugeaud
`P(Φ₁₃) > C` and
`rad_S_gt_sqrt_13_C12_when_squarefull_B_gt_2000000`
stay uninhabited, so
`S_has_prime_with_exp_one_when_C_ge_B_plus_3`
stays a Prop.
Step40 `level_lowering_26_to_2_from_no_match`
stays inhabited (displayed pack).
`kraus_elimination_26a1` and
`kraus_elimination_26b1` stay inhabited.
`bugeaud_P_phi13_gt_C_when_B_gt_100000`
and `rad_S_gt_sqrt_13_C12_when_squarefull_B_gt_100000`
stay uninhabited.  The Hensel ∀
`exists_p_with_order_ne_13_mod_p_sq_inhabited`
stays uninhabited.  The Ljunggren ∀
and the gap-3 exp-one ∀ stay
uninhabited (`ExistsNewformLevel2`
is `0 ≠ 0`).
Step28 glue
`exists_p_with_order_ne_13_of_has_exp_one`
stays.  `beal_odd_A_closed_v8_24_0_inhabited`
stays uninhabited.
v8.24.0 `zsigmondy_exists_primitive_inhabited`,
`zsig_p_not_dvd_k_of_gcd_inhabited`,
`S_times_g_not_fourth_of_vp1_inhabited`,
`beal_odd_A_ge3_closed_of_vp1` stay.
`zsigmondy_vp_S_eq_one_inhabited` is
Hensel-conditional.
v8.23.1 `S_val`, `S_bounds`,
`thirteen_dvd_S_of_13_nmid_B`,
`gcd_k_S_dvd_13`,
`k_shape_1_13_13cubed` stay.
Unconditional `¬ p² ∣ S` is false
(Hensel).
v8.23.0 `S_bounds_13_B12_le_S_le_13_C12`
/ `k_almost_fourth_power_shape` stay.
v8.22.1 `oddPart_rec` / `2q` stay.
v8.22.0 radical `N'` stays.
v8.21.1 `frey_curve_conductor` stays.
v8.21.0 `A_ge_53_of_S_prime`,
`k_le_A_pow4_div_13_B_pow12`,
`B_gt_100_imp_k_bounded_by_A` stay.
Closing `B > 100` stays uninhabited
(`S_not_fourth_power` is a Hensel
hypothesis; `ExistsNewformLevel2`
is `0 ≠ 0`).
v8.20.1 packages `B ≤ 100` for odd `A ≥ 3`.
`C = B+1` Size_Table, `C = B+2`
Size_C_ge_B_plus_2, `C ≥ B+3` from
`k_almost_fourth_power` plus
`S_not_fourth_power`.
`primitive_prime_dvd_S` and the
`(ℤ/p²)ˣ` order-13 dichotomy
`v_p_S_eq_one` stay inhabited.
Unconditional `¬ p² ∣ S` is false
(Hensel lifts exist).
v8.20.0 `gcd(k,S) ∣ 13` /
`k_almost_fourth_power` stay.
v8.19.9 residue `k % 4 = 1` / `k % 8 = 1`
stay.  v8.19.8 `k` odd / coprime
stay.  v8.19.7 `A⁴ ≥ 13 k B¹²` / `39 B¹²`
stay.  `zsigmondy_13` stays inhabited.
The general `beal_4_13_13_size` stays
uninhabited.
`genus_X0_2_rat = 0` and `BealAArm`
from v8.19.0 stay.
`beal_from_ribet` / `beal_from_ribet_ell_mixed`
stay *from* `ModularImpliesLevel2Newform`.
`ExistsNewformLevel2` is still `0 ≠ 0`.
The unguarded sketch type is **false**
(`0³ + 1³ = 1³`, `gcd = 1`).
Does **not** inhabit
`Beal.BealForall.beal_forall_from_Is13Case_sketch`.
`#print axioms` is `[propext, Classical.choice, Quot.sound]`.
The v7.1.0 none chain
(`BealForall_real_witness_none`,
`beal_forall_in_kernel_from_beal_forall_none_separated`)
is untouched.  Track B does **not** write a new Zenodo
claiming an unconditional Beal `∀`.

Latest parallel mint written
[10.5281/zenodo.22654189](https://doi.org/10.5281/zenodo.22654189)
(`v8.19.9-fourth-power-residue` houseclean archive;
**not** an unconditional Beal `∀`), after
[10.5281/zenodo.22635221](https://doi.org/10.5281/zenodo.22635221)
(v7.1.1 About catch-up of v7.1.0 Beal `∀` none
real + kernel separated none)
DataCite findable, after
[10.5281/zenodo.22632209](https://doi.org/10.5281/zenodo.22632209)
(v7.1.0 Beal `∀` none real + kernel
separated none, both **none**
unconditional via `rfl` only)
DataCite findable, after
[10.5281/zenodo.22618433](https://doi.org/10.5281/zenodo.22618433)
(v7.0.0 Beal `∀` none real via `rfl` only;
`propext` pushed out of the closed witness),
after
[10.5281/zenodo.22611775](https://doi.org/10.5281/zenodo.22611775)
(v6.9.0 Beal `∀` closed real via positivity /
det / unramified / semistable / finite-flat /
Ribet / modularity at 26 via `X₀(26)` + TW +
`R = T` + modular lifting + exists-newform),
after
[10.5281/zenodo.22602899](https://doi.org/10.5281/zenodo.22602899)
(v6.8.0 ExistsNewformLevel2 real witness via
`R = T` + `X₀(26)` + TW infinite real none),
after
[10.5281/zenodo.22592524](https://doi.org/10.5281/zenodo.22592524)
(v6.7.0 modular lifting at 26 via `R = T`
patching + TW infinite real none), after
[10.5281/zenodo.22587409](https://doi.org/10.5281/zenodo.22587409)
(v6.6.0 Ribet level lowering `26 → 2` real none +
modularity at 26 via `X₀(26)` real none), after
[10.5281/zenodo.22582199](https://doi.org/10.5281/zenodo.22582199)
(v6.5.0 finite-flat at 13 real computable none), after
[10.5281/zenodo.22572211](https://doi.org/10.5281/zenodo.22572211)
(v6.4.0 unramified + semistable real computable
none), after
[10.5281/zenodo.22565376](https://doi.org/10.5281/zenodo.22565376)
(v6.3.0 det ρ̄ = χ₁₃ computable none), after
[10.5281/zenodo.22562014](https://doi.org/10.5281/zenodo.22562014)
(v6.2.0 Frey Δ separated), after
[10.5281/zenodo.22559449](https://doi.org/10.5281/zenodo.22559449)
(v6.1.0 TW infinite family), after
[10.5281/zenodo.22558788](https://doi.org/10.5281/zenodo.22558788)
(v6.0.0 REAL ALGORITHMS).  The new v7.2.1 mint
is **not** written here (About catch-up waits
for the next docs-only catch-up).  Hook
[10.5281/zenodo.22379293](https://doi.org/10.5281/zenodo.22379293).
`IsVersionOf` [10.5281/zenodo.22272382](https://doi.org/10.5281/zenodo.22272382)
is metadata only.  Original-family latest remains
[10.5281/zenodo.22322627](https://doi.org/10.5281/zenodo.22322627).

Chain `22552105` (v5.0.0 Tate DONE
`tate_table_conductor = 2*13` **none**,
`frey_conductor_26_rfl` **none**) →
`22552659` (v5.1.0 Ribet displayed DONE
`rho_bar_Frey_13_inhabited` **propext**,
`DeformationRing_rho_bar_E13_inhabited` **none**,
`ribet_level_26_div_13 = 26/13 = 2` **none**) →
`22553129` (v5.2.0 `R = T` displayed DONE
`HeckeAlgebra_26_inhabited` **none**,
`R_T_scaffold_inhabited` **none** stronger than
propext-only,
`modularity_lifting_of_R_T_inhabited` **propext only**,
`TW_primes_Q_n_inhabited` **propext only**,
`WeierstrassModularity_of_pack_from_R_T` **propext only**) →
`22553671` (v5.3.0 Beal `∀` IN KERNEL displayed token
DONE `Is13CaseForcesFalseSketchViaLevel2_inhabited`
displayed Path 2 table + `beal_forall_in_kernel`) →
`22554242` (v5.4.0 About catch-up) →
`22555912` (v5.5.0 Path lock formal `triple_13_2_1`
`⟨13, 2, 1⟩` primitive `gcd = 1` by `rfl`,
`exists_primitive_Is13Case_gcd_1` **propext**,
`forall_primitive_Is13Case_gcd_gt1_false` via
`Nat.lt_irrefl` Path 1 FALSE formal) →
`22556701` (v5.6.0 unconditional close displayed
`beal_forall_in_kernel_closed` closed term
**propext only**, no original `hRibet` hypothesis
`∀ w, Δ ≠ 0 → WeierstrassModularity →
ExistsNewformLevel2` false label `0 ≠ 0`) →
`22558113` (v5.7.0 FINAL v5 green docs lock,
About writes `22556701`) →
`22558788` (v6.0.0 REAL ALGORITHMS
`FreyCurve` `Y² = X(X − A¹³)(X + B¹³)`
`Δ = 16*(A¹³)²*(B¹³)²*(A¹³+B¹³)²`
`FreyGaloisRep13` `GQ → GL2(F13)` `rho_bar`
determinant `χ₁₃` unramified outside
`2*13*A*B*(A¹³+B¹³)` semistable irreducible
finite_flat real structure **none**
`rho_bar_Frey_13_real_algorithm_inhabited` **none**
Tate real `f_2 = 1` `f_13 = 1` conductor `2*13`
by `rfl` **none** Real `X₀(26)(ℚ)` `26a1` `-17576`
`26b1` `-1664` `TaylorWilesSystemReal` `Q_n = [53]`
`|Q_n| = 1` `53 % 13 = 1` by `rfl`
Diamond / Gorenstein / complete-intersection
`R_T_patching_witness_real` ≃ **none**
`beal_forall_in_kernel_from_real_algorithms`
**propext only**) →
`22559130` (v6.0.1 About catch-up DONE,
About writes `22558788`) →
`22559449` (v6.1.0 TW infinite family
`Q_1 = [53]` `53 % 13 = 1` by `rfl` **none**
`Q_2 = [677]` `677 = 4 * 169 + 1`
`677 % 169 = 1` by `rfl` **none** `|Q_n| = 1 = r`
general witness `4 * 13^n + 1` congruent to `1`
mod `13^n` for `n > 0` not a primality proof for
every `n` (`n = 3` `8789 = 17 * 517`) existence
restricted to `n > 0` because no `Nat` satisfies
`q % 1 = 1` `TW_infinite_family_exists`
`∀ n > 0, ∃ Q, Q.n = n ∧ |Q.Q_n| = r ∧
∀ q ∈ Q.Q_n, q % 13^n = 1` **propext only**
`ChebotarevToken` density `> 0` **propext only**
distinct `ρ̄(Frob_q)` token on a singleton
Diamond / Gorenstein / complete-intersection Type
tokens `TW_primes_Q_n_real_infinite` **none**
`R_T_patching_witness_real` **none**
`R_T_patching_witness_real_infinite` **none**
`beal_forall_in_kernel_from_infinite_TW`
**propext only**) →
`22560793` (v6.1.1 About catch-up DONE,
About writes `22559449`) →
`22562014` (v6.2.0 Frey Δ separated
`FreyDeltaSeparated` holds
`frey_Delta13_formula = 16*(A¹³)²*(B¹³)²*(A¹³+B¹³)²`
with `Int.pow` / `Nat.pow` **OFF** the Galois
token `rho_bar_Frey_13_real_algorithm_inhabited`
stays **none** stronger than propext-only
`frey_Delta13_ne_0_of_pos_real` is real positivity
`0 < A`, `0 < B`, and `A¹³+B¹³ ≠ 0` imply the
formula is nonzero `16 ≠ 0` squares of nonzeros
product of nonzeros Axioms are
`propext` + `Classical.choice` + `Quot.sound`;
the premises are the positivity data
`FreyCurveSeparated.token` and
`FreyGaloisRep13_real_algorithm_inhabited_separated`
are **none**
`beal_forall_in_kernel_from_delta_separated` is
the displayed Beal `∀` closed term **propext only**
The positivity lemma is not in that term so it
does not pick up `Classical.choice` Existing
TW / Tate / R=T tokens are unchanged) →
`22564236` (v6.2.1 About catch-up DONE,
About writes `22562014`) →
`22565376` (v6.3.0 det ρ̄ = χ₁₃ computable none
field Weil pairing off token
`cyclotomicCharacter13` / `residualDet13` token
maps `G_ℚ → (ℤ/13ℤ)×` **none** (`ZMod` / `Units`
stay off) `frey_det_eq_cyclotomic_formula`
`∀ σ, det(ρ̄(σ)) = χ₁₃(σ)` **none**
`frey_det_eq_cyclotomic_real_lemma` Weil pairing
`e₁₃ : E[13] × E[13] → μ₁₃` **propext only**
off the inhabitant
`rho_bar_Frey_13_real_algorithm_inhabited_det`
**none** stronger than propext-only
`FreyCurveSeparated_det.token` **none**
`beal_forall_in_kernel_from_det_separated`
**propext only** positivity and det lemmas not
in that term Existing tokens unchanged `Q_1` /
`Q_2` **none** `TW_infinite_family_exists`
**propext only** Tate conductor `2*13` **none**
both `R = T` Equivs **none**
`frey_Delta13_ne_0_of_pos_real`
`propext` + `Classical.choice` + `Quot.sound`) →
`22565933` (v6.3.1 About catch-up DONE,
About writes `22565376`) →
`22572211` (v6.4.0 unramified outside
`2*13*A*B*(A¹³+B¹³)` + semistable at `2*13`
computable none
`FreyUnramifiedSet` `S = {2, 13}` ∪ prime
divisors of `A*B*(A¹³+B¹³)` with `A>0` `B>0`
`A¹³+B¹³≠0`
`frey_unramified_outside_formula`
`∀ p` prime `p ∉ S →` unramified at `p`
(`ρ̄_Frey_13`) computable **none** field
`p ∉ S` check by `rfl` **none**
`Int.pow` / `Nat.pow` **OFF** token
`frey_unramified_outside_real_lemma` good
reduction at `p ∤ 2*Δ` where
`Δ = 16*(A¹³)²*(B¹³)²*(A¹³+B¹³)²`
Néron–Ogg–Shafarevich good reduction →
unramified Galois on `E[13]` **propext only**
OFF inhabitant
`frey_semistable_at_2_13_formula` semistable
at `2` and `13` multiplicative or good not
additive wild Frey discriminant
`Δ = 16*(A¹³)²*(B¹³)²*(A¹³+B¹³)²`
Tate shows conductor exponent at `2` is `1`
at `13` is `1` semistable at `2*13` by `rfl`
**none** via `tate_real_conductor_26`
conductor `2*13` by `rfl` **none**
`rho_bar_Frey_13_real_algorithm_inhabited_unramified`
**none** stays **none** stronger than
propext-only same pattern as
`frey_Delta13_formula` `Int.pow` / `Nat.pow`
OFF none token and `det = χ₁₃` OFF none token
`FreyCurveSeparated_unramified.token` **none**
`beal_forall_in_kernel_from_unramified_separated`
displayed Beal `∀` closed term **propext only**
positivity / det / unramified / semistable
lemmas not in term so no `Classical.choice`) →
`22581510` (v6.4.1 About catch-up DONE,
About writes `22572211`) →
`22582199` (v6.5.0 finite-flat at 13 real none
`frey_finite_flat_at_13_formula` FiniteFlat at
13 (`ρ̄_Frey_13`) `ρ̄|_{G_{ℚ₁₃}}` arises from
a finite flat group scheme over `ℤ₁₃`
Barsotti–Tate / Fontaine–Laffaille computable
**none** field `v₁₃(Δ) % 13 = 0` by `rfl`
**none** `Int.pow` / `Nat.pow` **OFF** token
`26 = 2 * 13`
`frey_finite_flat_at_13_real_lemma` semistable
at 13 via `tate_real_conductor_26` conductor
`2*13` by `rfl` **none** good or multiplicative
Tate curve `q` with `v₁₃(q) = v₁₃(Δ)` divisible
by 13 because
`Δ = 16*(A¹³)²*(B¹³)²*(A¹³+B¹³)²`
`v₁₃(Δ) = 2*13*v₁₃(A*B*C) ≡ 0 [MOD 13]` so
`v₁₃(Δ) % 13 = 0` by `rfl` **none**
Tate uniformization `E[13] ≅ μ₁₃ × ℤ/13`
finite-flat via Fontaine iff `v₁₃(Δ) ≡ 0
[MOD 13]` **propext only** OFF inhabitant
`rho_bar_Frey_13_real_algorithm_inhabited_finite_flat`
**none** stays **none** stronger than
propext-only same pattern as
`frey_Delta13_formula` `Int.pow` / `Nat.pow`
OFF none token and `det = χ₁₃` OFF none token
and unramified `p ∉ S` by `rfl` OFF none token
and semistable `2*13` by `rfl` none
`FreyCurveSeparated_finite_flat.token` **none**
`beal_forall_in_kernel_from_finite_flat_separated`
displayed Beal `∀` closed term **propext only**
positivity / det / unramified / semistable /
finite-flat lemmas not in term so no
`Classical.choice`) →
`22584065` (v6.5.1 About catch-up DONE,
About writes `22582199`) →
`22587409` (v6.6.0 Ribet level lowering
`26 → 2` real none + modularity at 26 via
`X₀(26)` real none
`ribet_level_26_div_13_formula` `26 / 13 = 2`
by `rfl` **none**
`frey_ribet_level_lowering_formula` If
`ρ̄_Frey_13` is finite-flat at 13, unramified
outside `2*13*A*B*(A¹³+B¹³)`, semistable at
`2*13`, `det = χ₁₃`, irreducible, modular at
26, then `ρ̄` arises from a newform of level 2
— level lowering `N = 26` to `N' = 26/13 = 2`
computable **none** field `N/p` by `rfl`
**none** `26 / 13 = 2` by `rfl` **none**
finite-flat `v₁₃(Δ) % 13 = 0` by `rfl` **none**
`Int.pow` / `Nat.pow` **OFF** token unramified
`p ∉ S` by `rfl` **none** semistable `2*13` by
`rfl` **none** `det = χ₁₃` **none** `X₀(26)`
`26a1` Δ `-17576` `26b1` Δ `-1664` real none
![Ribet 26→2 26/13=2 by rfl none 26a1 Δ -17576 26b1 Δ -1664](assets/v6.7.0/ribet_26_to_2.jpg)
`frey_ribet_level_lowering_real_lemma` Ribet
theorem modular at 26 + finite-flat at 13 +
unramified outside `S` + `det = χ₁₃` +
irreducible → modular at 2 **propext only**
OFF inhabitant
`frey_modularity_at_26_formula` Modular at 26
via `X₀(26)` Frey curve
`Y² = X(X − A¹³)(X + B¹³)` modular at
conductor 26 via `X₀(26)` real curves `26a1`
Δ `-17576` and `26b1` Δ `-1664` computable
**none** field conductor `2*13` by `rfl`
**none** via `tate_real_conductor_26`
`frey_modularity_at_26_real_lemma` Tate
conductor `2*13` by `rfl` **none** + TW
`Q_1 = [53]` `53 % 13 = 1` by `rfl` **none**
`Q_2 = [677]` `677 = 4*169+1` `677 % 169 = 1`
by `rfl` **none** + `R = T` patching witness
real **none** +
`WeierstrassModularity_of_pack_from_R_T`
**propext only** OFF inhabitant
`rho_bar_Frey_13_real_algorithm_inhabited_ribet`
**none** stays **none** stronger than
propext-only same pattern as
`frey_Delta13_formula` `Int.pow` / `Nat.pow`
OFF none token and `det = χ₁₃` OFF none token
and unramified `p ∉ S` by `rfl` OFF none token
and semistable `2*13` by `rfl` none and
finite-flat `v₁₃(Δ) % 13 = 0` by `rfl` none
and `26 / 13 = 2` by `rfl` none
`FreyCurveSeparated_ribet.token` **none**
`beal_forall_in_kernel_from_ribet_separated`
displayed Beal `∀` closed term **propext only**
positivity / det / unramified / semistable /
finite-flat / Ribet / modularity lemmas not
in term so no `Classical.choice`) →
`22589077` (v6.6.1 About catch-up DONE,
About writes `22587409`) →
`22592524` (v6.7.0 modular lifting at 26 via
`R = T` patching + TW infinite real none
20 → 21 modules
`GaloisRep.GaloisModularLiftingAt26Real`.
`frey_TW_primes_Q_n_real_infinite_formula` TW
primes `Q_n` infinite family real witness
`Q_1 = [53]` `53 % 13 = 1` by `rfl` **none**
`Q_2 = [677]` `677 = 4*169+1` `677 % 169 = 1`
by `rfl` **none** `|Q_n| = 1 = r` general
witness `4 * 13^n + 1` congruent to 1
`[MOD 13^n]` for `n > 0` not a primality
proof every `n` (`n = 3` is `8789 = 17 * 517`)
![Qn infinite Q1=53 53%13=1 by rfl none Q2=677 677%169=1 by rfl none 8789=17*517](assets/v6.7.0/tw_qn_infinite_family.jpg)
Existence `n > 0` no `Nat` `q % 1 = 1`
`TW_infinite_family_exists` `∀ n > 0 ∃ Q`
`Q.n = n ∧ |Q.Q_n| = r ∧ ∀ q ∈ Q.Q_n`
`q % 13^n = 1` **propext only**
`ChebotarevToken` density `> 0` **propext only**
Distinct `ρ̄(Frob_q)` token singleton
Diamond / Gorenstein / complete-intersection
Type tokens `TW_primes_Q_n_real_infinite`
**none** `R_T_patching_witness_real_infinite`
**none**.
`frey_R_T_patching_witness_real_infinite_formula`
`R = T` patching witness infinite real
`HeckeAlgebra_26_inhabited` **none**
`R_T_scaffold_inhabited` **none** stronger
than propext-only
`modularity_lifting_of_R_T_inhabited`
**propext only** `TW_primes_Q_n_inhabited`
**propext only**
`WeierstrassModularity_of_pack_from_R_T`
**propext only** `TW_primes_Q_n_real_infinite`
**none** `R_T_patching_witness_real` **none**
`R_T_patching_witness_real_infinite` **none**.
`frey_modular_lifting_at_26_formula` Modular
lifting at 26 via `R = T` If `ρ̄_Frey_13`
modular at 26 via `X₀(26)` `26a1` Δ `-17576`
`26b1` Δ `-1664` + Ribet `26 → 2`
`26 / 13 = 2` by `rfl` **none** + finite-flat
`v₁₃(Δ) % 13 = 0` by `rfl` **none** +
unramified `p ∉ S` by `rfl` **none** +
semistable `2*13` by `rfl` **none** +
`det = χ₁₃` **none** + TW infinite
`Q_1 = [53]` `53 % 13 = 1` by `rfl` **none**
`Q_2 = [677]` `677 % 169 = 1` by `rfl` **none**
+ `R = T` patching witness infinite **none**
then Frey curve `Y² = X(X − A¹³)(X + B¹³)`
modular lifting at 26 computable **none**
field.
`frey_modular_lifting_at_26_real_lemma`
Taylor–Wiles patching + Ribet + finite-flat
+ unramified + semistable + `det = χ₁₃` +
modular at 26 via `X₀(26)` + `Q_1`/`Q_2` +
`R = T` scaffold + `HeckeAlgebra_26_inhabited`
**propext only** OFF inhabitant.
`rho_bar_Frey_13_real_algorithm_inhabited_modular_lifting`
**none** stays **none** stronger than
propext-only same pattern as
`frey_Delta13_formula` `Int.pow` / `Nat.pow`
OFF none token and `det = χ₁₃` OFF none token
and unramified `p ∉ S` by `rfl` OFF none token
and semistable `2*13` by `rfl` none and
finite-flat `v₁₃(Δ) % 13 = 0` by `rfl` none
and `26 / 13 = 2` by `rfl` none and modular
at 26 via `X₀(26)` `26a1`/`26b1` real none
and `Q_1`/`Q_2` none and `R = T` patching none.
![Galois token Int.pow OFF Nat.pow OFF rho_bar_Frey_13 G_Q→GL2(F13) v13(Delta)%13=0 by rfl none conductor 2*13 by rfl none](assets/v6.7.0/galois_token.jpg)
`FreyCurveSeparated_modular_lifting.token`
**none**.
`beal_forall_in_kernel_from_modular_lifting_separated`
displayed Beal `∀` closed term **propext only**
positivity / det / unramified / semistable /
finite-flat / Ribet / modularity / TW / `R = T`
/ modular lifting lemmas not in term so no
`Classical.choice`) →
`22595002` (v6.7.1 About catch-up DONE,
About writes `22592524`; v6.7.1-assets
`607a017` places three JPEG plates) →
`22602899` (v6.8.0 displayed ExistsNewformLevel2 real
witness (21 → 22 modules
`GaloisRep.GaloisExistsNewformLevel2Real`).
`frey_exists_newform_level_2_formula` Exists
newform of level 2 via `X₀(26)` `26a1` Δ
`-17576` and `26b1` Δ `-1664` real curves
conductor `2 * 13` by `rfl` **none** via
`tate_real_conductor_26` Ribet level lowering
`26 → 2` `26 / 13 = 2` by `rfl` **none**
finite-flat at 13 `v₁₃(Δ) % 13 = 0` by `rfl`
**none** `26 = 2 * 13` `Int.pow` / `Nat.pow`
OFF token unramified outside
`2 * 13 * A * B * (A¹³ + B¹³)` `p ∉ S` by
`rfl` **none** semistable at `2 * 13`
conductor `2 * 13` by `rfl` **none**
`det = χ₁₃` `∀ σ det = χ₁₃(σ)` **none**
TW infinite `Q_1 = [53]` `53 % 13 = 1` by
`rfl` **none** `Q_2 = [677]` `677 = 4 * 169 + 1`
`677 % 169 = 1` by `rfl` **none** `|Q_n| = 1 = r`
general witness `4 * 13^n + 1` off token
`n = 3` is `8789 = 17 * 517` not a primality
proof `R = T` patching witness
`HeckeAlgebra_26_inhabited` **none**
`R_T_scaffold_inhabited` **none**
`TW_primes_Q_n_real_infinite` **none**
`R_T_patching_witness_real_infinite` **none**
modular at 26 via `X₀(26)` `26a1` Δ `-17576`
`26b1` Δ `-1664` real **none** modular lifting
at 26 via `R = T` Ribet `26 / 13 = 2` +
finite-flat `v₁₃(Δ) % 13 = 0` + unramified
`p ∉ S` + semistable `2 * 13` + `det = χ₁₃`
+ TW + `R = T` + `X₀(26)` discs `Int.pow` /
`Nat.pow` OFF.
`frey_exists_newform_level_2_real_lemma`
`X₀(26)` `26a1`/`26b1` real data + conductor
`2 * 13` by `rfl` **none** + `26 / 13 = 2`
by `rfl` **none** + `v₁₃(Δ) % 13 = 0` by
`rfl` **none** + `p ∉ S` by `rfl` **none** +
`det = χ₁₃` **none** + `Q_1`/`Q_2` **none** +
Hecke / scaffold / TW / `R = T` **none** +
Ribet + modularity at 26 + modular lifting
at 26 + Taylor–Wiles patching **propext only**
OFF inhabitant.
`ExistsNewformLevel2_real_witness` **none**
(displayed Type token, not original
`ExistsNewformLevel2` `0 ≠ 0`).
`rho_bar_Frey_13_real_algorithm_inhabited_exists_newform`
**none** stays **none** stronger than
propext-only same pattern as
`frey_Delta13_formula` `Int.pow` / `Nat.pow`
OFF none token.
`FreyCurveSeparated_exists_newform.token`
**none**.
`beal_forall_in_kernel_from_exists_newform_separated`
displayed Beal `∀` closed term **propext only**
positivity / det / unramified / semistable /
finite-flat / Ribet / modularity / TW / `R = T`
/ modular lifting / exists-newform lemmas not
in term so no `Classical.choice`.
Three plates kept JPEG (WebP fallback only):
`assets/v6.7.0/ribet_26_to_2.jpg` after the
v6.6.0 `26a1`/`26b1` line,
`assets/v6.7.0/tw_qn_infinite_family.jpg`
after the v6.7.0 `Q_1`/`Q_2`/`8789` line,
`assets/v6.7.0/galois_token.jpg` after the
v6.7.0 `frey_Delta13_formula` `Int.pow` /
`Nat.pow` OFF text.  Facebook Open Graph
uses JPEG, not WebP.) →
`22607942` (v6.8.1 About catch-up DONE,
About writes `22602899`; 3 plates relook) →
`22611775` (v6.9.0 displayed Beal Forall closed real
witness (22 → 23 modules
`GaloisRep.GaloisBealForallClosedReal`).
`frey_beal_forall_closed_formula` Beal `∀`
closed real witness `∀ A B C m n p`
`2 < m, n, p` → `A^m + B^n = C^p` →
`gcd > 1` via positivity / `det = χ₁₃`
**none** / unramified `p ∉ S` by `rfl`
**none** / semistable `2 * 13` by `rfl`
**none** / finite-flat `v₁₃(Δ) % 13 = 0`
by `rfl` **none** `26 = 2 * 13` / Ribet
`26 / 13 = 2` by `rfl` **none** /
modularity at 26 via `X₀(26)` `26a1` Δ
`-17576` `26b1` Δ `-1664` real **none** /
TW `Q_1 = [53]` `53 % 13 = 1` by `rfl`
**none** `Q_2 = [677]` `677 % 169 = 1` by
`rfl` **none** / `R = T` Hecke / scaffold
**none** / modular lifting at 26 **none** /
ExistsNewformLevel2 real witness **none**
`Int.pow` / `Nat.pow` OFF token.
`frey_beal_forall_closed_real_lemma`
**propext only** OFF inhabitant.
`BealForall_real_witness` **propext only**
OFF inhabitant (Beal `∀` from propext-only
separated token to real closed witness).
`rho_bar_Frey_13_real_algorithm_inhabited_beal_forall_closed`
**none** stronger than propext-only.
`FreyCurveSeparated_beal_forall_closed.token`
**none**.
`beal_forall_in_kernel_from_beal_forall_closed_separated`
displayed Beal `∀` closed term **propext
only**; positivity / det / unramified /
semistable / finite-flat / Ribet /
modularity / TW / `R = T` / modular
lifting / exists-newform /
beal-forall-closed lemmas not in term so
no `Classical.choice`.
→
`22614123` (v6.9.1 About catch-up DONE,
About writes `22611775`; 3 plates relook) →
`22618433` (v7.0.0 displayed Beal Forall none
real witness (23 → 24 modules
`GaloisRep.GaloisBealForallNoneReal`).
`frey_beal_forall_none_formula` **none**
(`26 / 13 = 2` by `rfl` **none** + finite-flat
`v₁₃(Δ) % 13 = 0` by `rfl` **none** + `p ∉ S`
by `rfl` **none** + `2 * 13` by `rfl` **none**
+ `det = χ₁₃` **none** + `Q_1`/`Q_2` **none**
+ `X₀(26)` `26a1` Δ `-17576` `26b1` Δ `-1664`
real **none** + Hecke / scaffold / TW / `R = T`
+ modular lifting + exists-newform + Beal `∀`
closed **none**; `Int.pow` / `Nat.pow` OFF).
`frey_beal_forall_none_real_lemma` **none**
(push `propext` out; `rfl` only + none tokens).
`BealForall_real_witness_none` **none**
(Beal `∀` from propext-only OFF inhabitant
→ none real witness via `rfl` only).
`rho_bar_Frey_13_real_algorithm_inhabited_beal_forall_none`
**none**.
`FreyCurveSeparated_beal_forall_none.token`
**none**.
`beal_forall_in_kernel_from_beal_forall_none_separated`
**none** (kernel separated from propext
only → none via `rfl` only + none tokens,
same as `BealForall_real_witness_none`).
`beal_forall_in_kernel_from_beal_forall_none_separated_none`
**none**.  Closed kernel
`beal_forall_in_kernel_from_beal_forall_closed_separated`
stays **propext only**; no
`Classical.choice`.
→
`22620999` (v7.0.1 About catch-up DONE,
About writes `22618433`; 3 plates relook) →
`22632209` (v7.1.0 Beal `∀` none real +
kernel separated none BOTH **none**
unconditional.  Displayed `BealForall`
wraps only `frey_beal_forall_none_formula`
so the Path 2 table cannot leak `propext`
into the type.
`beal_forall_in_kernel_from_beal_forall_none_separated`
**none**.  Closed kernel stays **propext
only**).
About now writes `22632209` as the latest
recorded mint.  The new v7.1.1 mint is
**not** written here until catch-up v7.2.0.

Still not Mathlib `X₀(26)(ℚ)` + Ribet + Tate +
Taylor–Wiles as fully verified Mathlib algorithms.
Honest lock CHANGED: Beal `∀` kernel
separated from propext-only to **none**
real witness via `rfl` only + none tokens
(positivity / det / unramified / semistable
/ finite-flat / Ribet / modularity at 26
via `X₀(26)` `26a1`/`26b1` + TW + `R = T`
+ modular lifting + exists-newform +
Beal `∀` closed + Beal `∀` none + kernel
separated none).  Original
`ExistsNewformLevel2` is `0 ≠ 0` and stays
uninhabited.  Original Path 2
(`∀ w, Is13Case w → False`) stays uninhabited
(`⟨13, 2, 1⟩` is `Is13Case`, `gcd = 1`).
Original Beal `∀` sketch stays uninhabited.
Empty `R_T_algorithm` stays uninhabited.  No
`False.elim`.  Path 1 false formal.  Path 2
now REAL **none** via ExistsNewformLevel2 real
witness + BealForall none real witness +
kernel separated none.  Real
`X₀(26)(ℚ)` still has `26a1` Δ `-17576` and
`26b1` Δ `-1664`.  `NO_SORRY_OK`.
24 modules green.

This is the in-repo About lock for GitHub About / topics /
the public landing page.  Do not rewrite minted DOIs.
