# FINAL v24.4.0 — v24.x Final Summary Linking Log Upper Bound to Conditional Matveev Ratio Toward B0 (not final)

Latest tag `v24.4.0-Beal-44-13-Level-26-v24x-Final-Summary`.
Honest consolidation of v24.0.0–3.2. On $A^4 + B^4 = (B+3)^{13}$:
$|\Lambda| = \log(1 + B^4/A^4) \le B^4/A^4 = B^4/((B+3)^{13}-B^4)$
and $0 < \exp(C_{\mathrm{exp\_bound}}) < 10^{-12} < 1$ via `matveev_v24x_summary`,
with $C_{\mathrm{exp\_bound}} = -\mathrm{height}_{B_0}\log\mathrm{height}_{B_0}$
and $\mathrm{height}_{B_0} = 104382751019310000000 = C1_{\mathrm{floor}}\cdot 30^6$,
$30^6 = 729000000$.
IF `matveev_inequality_real_target` THEN $0 < \exp(C) < B^4/A^4$ and
$B^4(1+\exp(C)) > \exp(C)\,(B+3)^{13}$ via `matveev_v24x_conditional_summary`.
Conditional LLL shape restated via `bugeaud_v24x_final_link`.
Displayed LLL cert shape via `baker_v24x_reduction_shape`.
Target, `baker_bound_gap3`, and `bugeaud_LLL_reduction_conditional` stay uninhabited
def Props. Mathlib 4.12 has no Matveev 2000 Thm 1.4, so v24.4.0 is the
honest final of v24.x, **not** v25.
Locked Lean 0 vs v24.3.2 `305e5f4` /
`10.5281/zenodo.22732045` except `BealMatveevThm14.lean`,
`RibetMazur.lean`, and `BealBakerB0ReductionCertificate.lean` summary shape.
Most current as of 2026-09-13, **not** a
final Beal proof. Series concept
`10.5281/zenodo.22379293`.
v24.x DOI chain: 22730408, 22730460, 22730548, 22730776, 22730846,
22731054, 22731160, 22731508, 22731634, 22731759, 22731966, 22732045.

# FINAL v24.3.2 — Numerical Tiny Bound exp(C) << 10^{-12} Toward B0 (not final)

Latest tag `v24.3.2-Beal-44-13-Level-26-Exp-Numerical-Bound`.
$\mathrm{height}_{B_0} > 10^{20}$ via `matveev_height_B0_gt_onee20`,
$\log 10 > 2.3$ via `matveev_log_ten_gt_23_div_10` ($2^{83} < 10^{25}$),
$\log(\mathrm{height}_{B_0}) > 46$ via `matveev_log_height_B0_gt_46`,
$\exp(46) < \mathrm{height}_{B_0}$ via `matveev_exp_46_lt_height_B0`,
$C_{\mathrm{exp\_bound}} \le -10^{12}$ via `matveev_C_exp_bound_le_neg_1e12`,
$\exp(C) < \exp(-10^{12}) < 10^{-12}$ via `matveev_target_exp_lower_lt_exp_neg_1e12`
and `matveev_target_exp_lower_lt_onee12`,
$0 < \exp(C) < 10^{-12} < 1$ via `matveev_exp_C_pos_lt_one`.
Target, `baker_bound_gap3`, and `bugeaud_LLL_reduction_conditional` stay uninhabited
def Props. Evaluates the displayed exponential as tiny toward Baker $B_0$
without claiming $|\Lambda| > \exp(C)$.
Locked Lean 0 vs v24.3.1 `d189ef9` /
`10.5281/zenodo.22731966` on all 10 locked files.
Most current as of 2026-09-13, **not** a
final Beal proof. Series concept
`10.5281/zenodo.22379293`.

# FINAL v24.3.1 — Conditional B Lower Bound from Matveev Ratio (not final)

Latest tag `v24.3.1-Beal-44-13-Level-26-Conditional-B-Lower`.
On $A^4 + B^4 = (B+3)^{13}$:
$(A:\mathrm{Real})^4 = ((B+3):\mathrm{Real})^{13} - (B:\mathrm{Real})^4$ via `matveev_gap3_A_pow_eq_B3_pow_sub_B_pow`,
$B^4 / A^4 = B^4 / ((B+3)^{13} - B^4)$ via `matveev_gap3_ratio_explicit`,
$|\Lambda| > \exp(C_{\mathrm{exp\_bound}}) \implies B^4 / ((B+3)^{13} - B^4) > \exp(C_{\mathrm{exp\_bound}})$ and
$B^4(1 + \exp(C_{\mathrm{exp\_bound}})) > \exp(C_{\mathrm{exp\_bound}})(B+3)^{13}$ via `matveev_gap3_conditional_B_lower`,
conditioned form via `matveev_gap3_conditional_B_lower_of_target`,
$0 < B$ via `matveev_gap3_conditional_B_pos_lower`.
Target, `baker_bound_gap3`, and `bugeaud_LLL_reduction_conditional` stay uninhabited
def Props. Derives explicit $B$ inequality from conditional ratio bound toward LLL reduction.
Locked Lean 0 vs v24.3.0 `6a0a0b1` /
`10.5281/zenodo.22731759` on all 10 locked files.
Most current as of 2026-09-13, **not** a
final Beal proof. Series concept
`10.5281/zenodo.22379293`.

# FINAL v24.3.0 — Linking Conditional Matveev Ratio to Baker B0 and LLL Reduction (not final)

Latest tag `v24.3.0-Beal-44-13-Level-26-Bugeaud-LLL-Link`.
On $A^4 + B^4 = (B+3)^{13}$:
$0 < \exp(C_{\mathrm{exp\_bound}}) < B^4/A^4$ via `matveev_gap3_conditional_ratio_pos`,
$0 < B^4/A^4$ via `matveev_gap3_ratio_pos_of_conditional_lower`,
conditional LLL reduction defined via `bugeaud_LLL_reduction_conditional` in `BealBugeaudLLLFormal.lean`.
Target, `baker_bound_gap3`, and `bugeaud_LLL_reduction_conditional` stay uninhabited
def Props. Links conditional ratio bound to Baker B0=1e6 certificate and LLL reduction without claiming Matveev lower bound.
Locked Lean 0 vs v24.2.3 `ed94732` /
`10.5281/zenodo.22731634` across 9 locked files (honesty lock exception only for intentional LLL link extension in `BealBugeaudLLLFormal.lean`).
Most current as of 2026-09-13, **not** a
final Beal proof. Series concept
`10.5281/zenodo.22379293`.

# FINAL v24.2.3 — Conditional Lower Bound Implies Ratio Bound (not final)

Latest tag `v24.2.3-Beal-44-13-Level-26-Matveev-Conditional-Lower`.
On $A^4 + B^4 = (B+3)^{13}$:
$|\Lambda| > \text{target} \implies B^4/A^4 > \text{target}$ via `matveev_conditional_lower_implies_ratio_gt_exp`,
unconditioned form via `matveev_conditional_lower_implies_ratio_gt_exp_of_solution`,
`matveev_gap3_ratio_lower_bound_conditional` (solution ∧ target $\implies B^4/A^4 > \exp(C_{\mathrm{exp\_bound}})$).
Target and `baker_bound_gap3` stay uninhabited
def Props. Links conditional lower bound to ratio toward Baker B0 without claiming lower bound itself.
Locked Lean 0 vs v24.2.2 `ffd8343` /
`10.5281/zenodo.22731508` except
`BealMatveevThm14.lean` and `RibetMazur.lean`.
Most current as of 2026-09-13, **not** a
final Beal proof. Series concept
`10.5281/zenodo.22379293`.

# FINAL v24.2.2 — Logarithmic Bound log(1+x) ≤ x on Gap-3 (not final)

Latest tag `v24.2.2-Beal-44-13-Level-26-Matveev-Log-One-Plus-Le`.
On $A^4 + B^4 = (B+3)^{13}$:
$\forall x > -1, \log(1+x) \le x$ via `matveev_log_one_plus_le_self`,
$0 < B^4 / A^4$ via `matveev_gap3_B_pow_div_A_pow_pos`,
$0 \le |\Lambda|$ via `matveev_gap3_abs_lambda_nonneg`,
$|\Lambda| = \log(1 + B^4 / A^4) \le B^4 / A^4$ via `matveev_gap3_abs_lambda_le_ratio`,
$B^4 / A^4 < 1 \implies |\Lambda| < 1$ via `matveev_gap3_abs_lambda_lt_one_of_small_ratio`.
Target and `baker_bound_gap3` stay uninhabited
def Props. Links the classical logarithmic upper bound to the ratio $B^4/A^4$ toward Baker B0.
Locked Lean 0 vs v24.2.1 `ac100cf` /
`10.5281/zenodo.22731160` except
`BealMatveevThm14.lean` and `RibetMazur.lean`.
Most current as of 2026-09-13, **not** a
final Beal proof. Series concept
`10.5281/zenodo.22379293`.

# FINAL v24.2.1 — Logarithmic Form as Logarithm of Ratio (not final)

Latest tag `v24.2.1-Beal-44-13-Level-26-Matveev-Log-Form-Ratio`.
On $A^4 + B^4 = (B+3)^{13}$:
$0 < A^4$ via `matveev_gap3_A_pow_pos`,
$0 < (B+3)^{13}$ via `matveev_gap3_B3_pow_pos`,
$(B+3)^{13} / A^4 = 1 + B^4 / A^4$ via `matveev_gap3_ratio_eq_one_plus_ratio`,
$\Lambda = -\log((B+3)^{13} / A^4)$,
$|\Lambda| = \log((B+3)^{13} / A^4) = \log(1 + B^4 / A^4)$
via `matveev_gap3_log_form_eq_log_ratio`,
`matveev_gap3_abs_lambda_eq_log_one_plus_ratio`.
`0 < matveev_target_exp_lower < 1`.
Target and `baker_bound_gap3` stay uninhabited
def Props. Links the upper bound side via ratio toward Baker B0.
Locked Lean 0 vs v24.2.0 `d755428` /
`10.5281/zenodo.22731054` except
`BealMatveevThm14.lean` and `RibetMazur.lean`.
Most current as of 2026-09-13, **not** a
final Beal proof. Series concept
`10.5281/zenodo.22379293`.

# FINAL v24.2.0 — Logarithmic Form Upper Bound on Gap-3 Solutions (not final)

Latest tag `v24.2.0-Beal-44-13-Level-26-Matveev-Log-Form-Bound`.
On $A^4 + B^4 = (B+3)^{13}$:
$B > 0$ via `baker_le_B0_gap3`,
$A > 0$ via `eq_implies_A_gt_B`,
$\Lambda = 4 \log A - 13 \log (B+3) < 0$,
$|\Lambda| = -\Lambda = -(4 \log A - 13 \log (B+3))$.
`0 < matveev_target_exp_lower < 1`.
Target and `baker_bound_gap3` stay uninhabited
def Props. Links the upper bound side to the lower bound target.
Locked Lean 0 vs v24.1.1 `21df092` /
`10.5281/zenodo.22730846` except
`BealMatveevThm14.lean` and `RibetMazur.lean`.
Most current as of 2026-09-13, **not** a
final Beal proof. Series concept
`10.5281/zenodo.22379293`.

# FINAL v24.1.1 — Matveev C_exp_bound rewrite (not final)

Latest tag `v24.1.1-Beal-44-13-Level-26-Matveev-C-Exp-Rewrite`.
`matveev_C_exp_bound = -(height_B0 * log height_B0)`.
`matveev_target_exp_lower_eq` rewrites the
displayed lower-bound shape. Target and
`baker_bound_gap3` stay uninhabited
def Props.
Locked Lean 0 vs v24.1.0 `7962905` /
`10.5281/zenodo.22730776` except
`BealMatveevThm14.lean`.
Most current as of 2026-09-13, **not** a
final Beal proof. Series concept
`10.5281/zenodo.22379293`.

# FINAL v24.1.0 — Matveev height product identity (not final)

Latest tag `v24.1.0-Beal-44-13-Level-26-Matveev-Height-Product`.
`C1_floor * 729000000 = height_B0`.
The typo product `C1_floor * 72900000`
is `height_B0 / 10`. Target and
`baker_bound_gap3` stay uninhabited
def Props. Stay in v24.x until
`|Λ| > exp(-C)` is a theorem.
Locked Lean 0 vs v24.0.2 `73c5993` /
`10.5281/zenodo.22730548` except
`BealMatveevThm14.lean`.
Most current as of 2026-09-12, **not** a
final Beal proof. Series concept
`10.5281/zenodo.22379293`.

# FINAL v24.0.2 — Matveev exp bound properties (not final)

Latest tag `v24.0.2-Beal-44-13-Level-26-Matveev-Exp-Bound-Properties`.
`0 < Real.exp C_exp_bound < 1`.
`matveev_C_exp_bound ≤ -10^12`.
`matveev_target_exp_lower` names the
displayed lower-bound shape. Target and
`baker_bound_gap3` stay uninhabited
def Props. Stay in v24.x until
`|Λ| > exp(-C)` is a theorem.
Locked Lean 0 vs v24.0.1 `4d66383` /
`10.5281/zenodo.22730460` except
`BealMatveevThm14.lean`.
Most current as of 2026-09-12, **not** a
final Beal proof. Series concept
`10.5281/zenodo.22379293`.

# FINAL v24.0.1 — Matveev height and log monotone (not final)

Latest tag `v24.0.1-Beal-44-13-Level-26-Matveev-Height-Log-Monotone`.
`BealMatveevThm14.lean` adds
`matveev_height_B0_gt_two`,
`matveev_log_height_monotone`, and
`matveev_C_exp_bound_lt_zero_of_pos_log`.
`C1_floor > 0` and `thirty_pow > 0` by
decide, no axioms. Target and
`baker_bound_gap3` stay uninhabited
def Props. Stay in v24.x until
`|Λ| > exp(-C)` is a theorem.
Locked Lean 0 vs v24.0.0 `d39c6d5` /
`10.5281/zenodo.22730408` except
`BealMatveevThm14.lean`.
Most current as of 2026-09-12, **not** a
final Beal proof. Series concept
`10.5281/zenodo.22379293`.

# FINAL v24.0.0 — Matveev Thm 1.4 formalization start (not final)

Latest tag `v24.0.0-Beal-44-13-Level-26-Matveev-Thm-1-4-Formalization-Start`.
`BealMatveevThm14.lean` starts the
in-kernel formalization of Matveev 2000
Thm 1.4 `|Λ| > exp(-C)`.
`matveev_height_log_pos` and
`matveev_exp_bound_neg` are kernel
theorems. `matveev_inequality_real_target`
and `baker_bound_gap3` stay uninhabited
def Props. Stay in v24.x until the Real
inequality is a theorem; v25 only when
`baker_bound_gap3` greens with no `hBaker`.
Tate / Baker / v14 J0 / v15 B0 / v17 LLL /
v19 constants / v20 Bugeaud LLL / v21
inequality / v22 Real skeleton / v23
compare Lean 0 lines vs v23 `c44f161` /
`10.5281/zenodo.22730338`.
Most current as of 2026-09-12, **not** a
final Beal proof. Series concept
`10.5281/zenodo.22379293`.
Honesty lock: Tate 0 since v11, Baker 0
since v12, v14 displayed certs unchanged,
`baker_bound_gap3` uninhabited def Prop,
`thirty_pow = 729000000` and `≠ 72900000`
kernel decide no axioms, main pack
`[propext, Classical.choice, Quot.sound]`
only. Not Mathlib Matveev or LLL.

# FINAL v23.0.0 — C_exp_bound compare (not final)

Latest tag `v23.0.0-Beal-44-13-Level-26-Matveev-C-Exp-Bound-Compare`.
`matveev_C_exp_bound_lt_neg_onee12` is
`C_exp_bound < -10^12`.
`matveev_log_form_ne_zero_of_gap3` is
Real-log nonzero on a gap-3 solution.
`baker_bound_gap3` stays an uninhabited
def Prop. Tate / Baker / v14 J0 / v15 B0 /
v17 LLL / v19 constants / v20 Bugeaud LLL /
v21 inequality / v22 Real skeleton Lean
0 lines vs v22 `1db061a` /
`10.5281/zenodo.22729980`.
Most current as of 2026-09-12, **not** a
final Beal proof. Series concept
`10.5281/zenodo.22379293`.
Honesty lock: Tate 0 since v11, Baker 0
since v12, v14 displayed certs unchanged,
`baker_bound_gap3` uninhabited def Prop,
`matveev_height_B0_gt_onee12` kernel
decide no axioms, main pack
`[propext, Classical.choice, Quot.sound]`
only. Not Mathlib Matveev or LLL.

# FINAL v22.0.0 — Matveev Real inequality skeleton (not final)

Latest tag `v22.0.0-Beal-44-13-Level-26-Matveev-Inequality-Real`.
`matveev_C_exp_bound` is
`-(C1_floor : Real) * (thirty_pow : Real) *
Real.log (height_B0 : Real)`.
`matveev_C_exp_bound_decide` by decide
(no axioms): `C1_floor = 143186215390`
and `thirty_pow = 729000000`.
`matveev_inequality_real_formal` /
`matveev_inequality_real_lower` stay
uninhabited def Prop. `baker_bound_gap3`
stays an uninhabited def Prop.
Tate / Baker / v14 J0 / v15 B0 / v17 LLL /
v19 constants / v20 Bugeaud LLL / v21
inequality Lean 0 lines vs v21
`3079d82` / `10.5281/zenodo.22729724`.
Most current as of 2026-09-12, **not** a
final Beal proof. Series concept
`10.5281/zenodo.22379293`.
Honesty lock: Tate 0 since v11, Baker 0
since v12, v14 displayed certs unchanged,
`baker_bound_gap3` uninhabited def Prop,
`matveev_C_exp_bound_decide` kernel
decide no axioms, main pack
`[propext, Classical.choice, Quot.sound]`
only. PARI external certs like mwrank
`{0,12}`, not Mathlib Matveev or LLL.

# FINAL v21.0.0 — Matveev log-form nonzero (not final)

Latest tag `v21.0.0-Beal-44-13-Level-26-Matveev-Log-Form-Nonzero`.
Integer brick: `matveev_log_form_int B =
16 * (4B − 13(B+3))` using Tate c4 scale,
no Real.log. `matveev_log_form_ne_zero`
on `B % 14 = 0`. Decide witnesses at 0
and 14 (no axioms).
`matveev_height_le_log_B0` is
`B ≤ 104382751019310000000`.
`baker_bound_gap3` and
`bugeaud_reduction_formal` stay
uninhabited def Prop. Tate / Baker /
v14 J0 / v15 B0 / v17 LLL / v19 constants /
v20 Bugeaud LLL Lean 0 lines vs v20
`768ed7f` / `10.5281/zenodo.22729515`.
Most current as of 2026-09-12, **not** a
final Beal proof. Series concept
`10.5281/zenodo.22379293`.
Honesty lock: Tate 0 since v11, Baker 0
since v12, v14 displayed certs unchanged,
`baker_bound_gap3` uninhabited def Prop,
`baker_B0_certificate_holds` and
`baker_reduction_certificate_holds`
kernel decide no axioms, main pack
`[propext, Classical.choice, Quot.sound]`
only. PARI external certs like mwrank
`{0,12}`, not Mathlib Matveev or LLL.

# FINAL v17.0.0 — Baker B0 PARI LLL reduction

Latest tag `v17.0.0-Beal-44-13-Level-26-Baker-B0-Reduction-Certificate`.
`baker_B0_reduced_PARI = 1000000`.
`baker_reduction_certificate_displayed`
is the qflll basis plus convergents.
`baker_reduction_certificate_holds`
prints no axioms.  `baker_bound_gap3`
stays a def Prop.  Locked Lean files
0 lines vs v16 `9ce2980`.
Previous v16 DOI `10.5281/zenodo.22728705`
(concept `10.5281/zenodo.22379293`).

# FINAL v16.0.0 — Cumulative archive v10–v15 (not final)

Latest tag `v16.0.0-Beal-44-13-Level-26-Cumulative-Archive`.
Docs-only versus v15 `6443f81` /
`10.5281/zenodo.22728624`.
Lean files 0 lines vs that tag.
Most current as of 2026-09-12, **not** a final
Beal proof. Series concept
`10.5281/zenodo.22379293`.
See `docs/CUMULATIVE_ARCHIVE_v10_v15.md`.
Honesty lock: Tate 0 since v11, Baker 0 since
v12, v14 displayed certs unchanged,
`baker_bound_gap3` uninhabited def Prop,
`baker_bound_gap3_of_PARI` implication type
not inhabited, `baker_B0_certificate_holds`
kernel decide no axioms, main pack
`[propext, Classical.choice, Quot.sound]`
only. Raw Matveev 2000 Thm 1.4 does not
force `B≤1e6`.

# FINAL v15.0.0 — Baker B0 PARI certificate

Latest tag `v15.0.0-Baker-B0-PARI-Certificate`.
`baker_B0_PARI = 1000000` equals `baker_B0`.
`baker_B0_certificate_displayed` is the
PARI / Matveev 2000 Thm 1.4 integer trace.
`baker_B0_certificate_holds` prints no
axioms.  `baker_bound_gap3` stays a def
Prop.  `baker_bound_gap3_of_PARI` is the
named implication (def Prop).
Tate and Baker-upper-bound files stay
exactly v14 `3089bec` (0 lines).
Previous v14 DOI `10.5281/zenodo.22722140`.

# FINAL v14.0.0 — J0 / mwrank / formal displayed certs

Latest tag `v14.0.0-J0-Mwrank-Formal-Verified`.
Displayed J0 `[[1,0,1,-5,-8],[1,-1,1,-3,3]]`,
mwrank `{0,12}` rank 2 gens `{0,12}`,
formal M3 `[[1,1],[0,2]]`.
`J0DecompositionSoundness_26_holds`,
`MwrankCertificateSoundness_26_holds`,
`FormalImmersionSoundness_26_holds`
print no axioms (`decide` / `rfl`).
Frey / Level reuse Tate `c4` / `tateF2` /
`tateConductor` (`f₂≤5`).
`beal_44_13_level_26_modular_elimination`
uses the holds lemmas, `allKilled_1e6`,
and `baker_conditional_gap3_full`
(`baker_bound_gap3` stays Prop).
Tate and Baker files stay exactly v13
`cea155c` (0 lines changed).
`conductor_86` / `B14_honest` stay Prop.
`^axiom` count 0.  No new v14 DOI.

# FINAL v13.0.0 — Level-26 modular elimination

Latest tag `v13.0.0-Beal-44-13-Level-26-Modular-Elimination`.
New file `BealLevel26ModularElimination.lean`.
Frey `Y² = X(X-A⁴)(X+B⁴)`.
`tateConductor = 2^{f₂}*rad(AB(B+3))*13`
with `f₂≤5`, not `2⁵*3*13`
(witness `63982=2*31991`).
Five certs are transparent `List`/`Nat`
structures, not opaque axioms.
`kraus_a53_elimination` is kernel decide.
`beal_44_13_level_26_modular_elimination`
uses 25 chunks for `B≤1e6` and
`matveev_explicit_gap3` for `B>1e6`.
Tate and Baker files stay exactly v12
(0 lines changed).
`baker_bound_gap3` / `conductor_86` /
`B14_honest` stay Prop.

# FINAL v12.0.0 — Baker-Matveev-explicit

Latest tag `v12.0.0-Baker-Matveev-explicit`.
explicit Matveev for (4,4,13) gap3, not general Bugeaud.
`matveev_explicit_gap3` turns
`baker_bound_gap3` into
`A^4+B^4=(B+3)^13 → B ≤ baker_B0`.
`matveev_no_solution_A_le_B` is inhabited.
`baker_conditional_gap3_full` uses the
25 chunks plus that implication.
`baker_bound_gap3` stays Prop (Matveev /
BMS Table 1 not in Mathlib 4.12).
Tate file stays exactly v11.
Keeps `allKilled_chunk_0` ..
`allKilled_chunk_24`.
`conductor_86` / `B14_honest` stay Prop.

# FINAL v11.0.0 — defined packed Tate conductor

Latest tag `v11.0.0-Tate-N-def`.
`tateConductor A B = 2^{f₂} * rad * 13`.
`frey_tate_conductor` is that Nat, not a Prop.
`frey_tate_conductor_inhabited` proves the
divisibility `∣ 2⁵ * rad * 13` with
`v_q ≤ 1` odd and `v₂ ≤ 5`.
`baker_bound_gap3`, `conductor_86`,
`B14_honest` stay Prop.
Baker census file unchanged.

# FINAL v10.0.0 — paper archive B14 + Baker 1e6 + Tate DOI

Latest tag `v10.0.0-paper-B14-Baker-1e6-DOI`.
Paper archive of the v9.4.0 census
(62500 values / 25 chunks
`allKilled_chunk_0` .. `allKilled_chunk_24`,
`allKilled_62500`, `allKilled_1e6`),
Baker-conditional `∀ B`
(`baker_conditional_gap3_full`), and
Tate bound `tate_conductor_bound_rhs = 2⁵ * rad * 13`.
Archive Zenodo DOI: math
`10.5281/zenodo.22712897`, paper
`10.5281/zenodo.22713047`.
`baker_bound_gap3`, `frey_tate_conductor`,
`conductor_86`, `B14_honest` stay Prop.
Not BCDT.  Not unconditional Beal.

# FINAL v9.4.0 — chunked 1e6 kernel census

Latest tag `v9.4.0-chunked-1e6-final`.
File `BealGap3BakerUpperBound.lean`.
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
Prop.  Not BCDT.  Not unconditional Beal.

# FINAL v9.3.0 — Baker-conditional gap-3 forall

Latest tag `v9.3.0-Baker-conditional-gap3-full`.
File `BealGap3BakerUpperBound.lean`.
`baker_conditional_gap3_full`:
`baker_bound_gap3 → ∀ B, ¬∃ A`.
`B ≤ 10⁶` by the expanded residue cover
(mod 16 plus fourth powers at
53/29/109/17/5/7/11/13/19/23/31/37).
`B > 10⁶` by the Baker premise.
`baker_bound_gap3` stays Prop.
Keeps Tate 2-adic lemmas,
`frey_tate_conductor` Prop, the Zsig
Props, `conductor_86` Prop, `B14_honest`
Prop.  Not BCDT.  Not unconditional Beal.

# FINAL v9.2.0 — Tate Steps 6-7 at 2; N(E) bound stays a Prop

Latest tag `v9.2.0-Tate-2adic-conductor`.
File `BealFreyTateConductor.lean`.
`tate_2adic_exponent_le5`: `v₂(c₄) ≥ 4`,
`v₂(c₆)` from A,B parity, Tate Steps 6-7
give `conductorExponentTate2 ≤ 5`.
`tate_conductor_bound_rhs = 2⁵ * rad * 13`
with proof `v_q ≤ 1` odd and `v₂ ≤ 5`.
`frey_tate_conductor` stays an uninhabited
Prop (Mathlib has no `N(E)`).  Odd-q
exponent-1 lemmas stay.
Keeps `baker_bound_gap3` Prop, the Zsig
Props, `conductor_86` Prop, `B14_honest`
Prop.  Not BCDT.  Not `|Δ|`.

# FINAL v9.1.0 — Tate Step 2; full N-bound stays a Prop

Latest tag `v9.1.0-Tate-conductor`.
New file `BealFreyTateConductor.lean`.
Tate Step 2 on Frey `Y² = X(X−A⁴)(X+B⁴)`:
odd primes of `ABC` have local exponent `1`
under pairwise coprimeness; `v₂(c₄) ≥ 4` so
Step 2 does not finish at `2`.
`frey_tate_conductor` stays an uninhabited
Prop (Mathlib has no `N(E)`).
Keeps `baker_bound_gap3` Prop, the Zsig Props,
`conductor_86` Prop, `B14_honest` Prop.
Not BCDT.  Not `|Δ|`.

# FINAL v9.0.0 — Baker / Bugeaud effective bound stays a Prop

Latest tag `v9.0.0-Baker-bound-gap3`.
New file `BealGap3BakerUpperBound.lean`.
`baker_bound_gap3` is the missing effective bound
(exists B0 = 10^6).  Uninhabited Prop.
`sorry` is not used.  Needs Baker, not Zsig.
Keeps the v8.86.0 empty-axiom residue cover.
`exists_zsig_q_gt_2M_dvd_C13_sub_B4` stays a Prop.
`conductor_86` stays a Prop.  `B14_honest` stays
a Prop.  Not BCDT.

# FINAL v8.88.0 — Zsigmondy 5983 + LTE ledger for B > 2M (arrow stays a Prop)

Latest tag `v8.88.0-Zsig-Bgt2M-gap3`.
New file `BealGap3ZsigBeyond2M.lean`.
Re-exports `4488 + 5 * 299 = 5983` and pools
50310/50323/50307/50350/50325.
Inhabits `q > B+3 ⇒ ¬ q ∣ C¹³` and
`q ∣ A ⇒ q⁴ ∣ C¹³ − B⁴`.
`beal_gap3_B_gt_2M_eliminated` stays an
uninhabited Prop.  Not BCDT.
`frey_conductor_general` unchanged.
`conductor_86` stays a Prop.
`B14_honest` stays a Prop.

# FINAL v8.87.0 — general Weierstrass Δ bound (arrow stays a Prop)

Latest tag `v8.87.0-general-conductor-bound`.
`frey_conductor_general` inhabits
`|Δ| = 2^e * N0` with `e ≤ 5` and
`N0 ∣ (ABC)^26 * 13` from the Mathlib
Weierstrass instance.  `[propext, Quot.sound]`.
Not Tate.  `conductor_86` stays a Prop.
`B14_honest` stays the uninhabited Prop.
266+86 residue kills unchanged.

# FINAL v8.86.0 — paper-only final-DOI write (arrow stays a Prop)

Latest tag `v8.86.0-paper-B14-final-DOI`.
Paper-only.  No Lean change.
Cites math `10.5281/zenodo.22712897` and
paper `10.5281/zenodo.22713047`.
`B14_honest` stays the uninhabited Prop.

# FINAL v8.85.0 — paper unification; 352-row residue cover (arrow stays a Prop)

Latest tag `v8.85.0-paper-B14-full`.
Lean change / paper.
`beal_..._B14_full` inhabits `¬∃ A` on all
352 named `B ≡ 14` rows (266+77+9).
Empty axioms.  Not Ribet.  Not BCDT.
KrausB14 `eliminated_full` stays the
two-element mod-16 kill.
`B14_honest` stays the uninhabited Prop.
Chain `ExistsNewformLevel2` stays `0 ≠ 0`.
Math release remains `v8.84.0-B14-modq-kill`.
Still not Full Mathlib `∀`.

# FINAL v8.82.0 — Euler a53 value set on the 86 survivors (arrow stays a Prop)

Latest tag `v8.82.0-B14-a53-miss-86`.
Lean change.
Euler `a53` of the Beal Frey cubic on the
86 mod-53 survivors is in `{-10,-2,1,6,14}`
and misses `0,12` at ℓ=13 under `hEq`
(`beal_frey_a53_miss_86`).
Axioms `[propext, Quot.sound]`.
That is not `¬ ∃ A` for those 86.
`beal_..._B14_honest` stays the uninhabited
`∀` on all 352.  Not BCDT, not Ribet.
Not `Classical.em`.
Chain `ExistsNewformLevel2` stays `0 ≠ 0`.
No new Beal `∀` on the full 352.
Still not Full Mathlib `∀`.

# FINAL v8.81.0 — 266 of 352 B≡14 rows die mod 53; 86 remain (arrow stays a Prop)

Latest tag `v8.81.0-B14-mod53-kill`.
Lean change.
`(B+3)¹³ − B⁴` not a fourth power modulo 53
kills 266 of the 352 named `B ≡ 14` rows
(`direct_mod53_kill`, empty axioms).
The count is 266, not 287.  The remaining
86 survive this residue test.
`beal_..._B14_honest` stays the uninhabited
`∀` on all 352.  Not BCDT, not Ribet.
Not `Classical.em`.
Chain `ExistsNewformLevel2` stays `0 ≠ 0`.
No new Beal `∀` on the full 352.
Still not Full Mathlib `∀`.

# FINAL v8.80.0 — A-mod-53 Euler search; ¬∃ A stays a Prop (arrow stays a Prop)

Latest tag `v8.80.0-B14-A-search-honest`.
Lean change.
Euler `a53` of the Beal Frey cubic is
searched over 14 fourth-power residues
mod 53.  Under the Beal equation that
trace misses `0,12`.
Axioms `[propext, Quot.sound]`.
`beal_frey_modular`, level lowering, and
`beal_..._B14_honest` stay Props.
Not BCDT, not Ribet, not `¬ ∃ A` for the
352 rows.  Not `Classical.em`.
Chain `ExistsNewformLevel2` stays `0 ≠ 0`.
No new Beal `∀`.
Still not Full Mathlib `∀`.

# FINAL v8.79.0 — Beal Frey cubic distinguished; BCDT stays a Prop (arrow stays a Prop)

Latest tag `v8.79.0-B14-honest-elim`.
Lean change.
The Beal Frey cubic `x(x-A^4)(x+B^4)` is
distinguished from the displayed cubic.
Roots and the Beal rewrite use `propext`.
`beal_frey_modular`, level lowering, and
`beal_..._B14_honest` stay Props.
`full_honest` stays the two-element
mod-16 kill. `#print axioms` empty there.
Not BCDT, not Ribet, not `¬ ∃ A` for the
352 rows.  Not `Classical.em`.
Chain `ExistsNewformLevel2` stays `0 ≠ 0`.
No new Beal `∀`.
Still not Full Mathlib `∀`.

# FINAL v8.78.0 — B≡14 list; lowering stays a Prop (arrow stays a Prop)

Latest tag `v8.78.0-B14-level-lowering-honest`.
Lean change.
`step60_b14_list` is 352 named numerals.
`frey_modular_B14` is displayed cubic
2-torsion, not Wiles.
`level_lowering_to_26_B14` stays a Prop.
`beal_..._B14_honest` stays the uninhabited
`∀`.  `full_honest` is the two-element
list via mod 16. `#print axioms` empty.
Chain `ExistsNewformLevel2` stays `0 ≠ 0`.
No new Beal `∀`.
Still not Full Mathlib `∀`.

# FINAL v8.77.0 — B≡14 Kraus sweep (arrow stays a Prop)

Latest tag `v8.77.0-B14-kraus-sweep`.
Lean change.
352 named Step60 rows with `B ≡ 14`
record `a53 ∈ {-2,-10,1,6,14}` missing
`0/12`. That is not Ribet and not `¬ ∃ A`.
`beal_4_13_13_gap3_B_le_2M_eliminated_B14_kraus`
is vacuous on `[196, 1500003]`.
`beal_4_13_13_gap3_B_le_2M_eliminated_full`
is those two rows via mod 16.
`#print axioms` empty.
The old 2M capstone stays `Classical.em`.
Chain `ExistsNewformLevel2` stays `0 ≠ 0`.
No new Beal `∀`.
Still not Full Mathlib `∀`.

# FINAL v8.76.0 — mod-16 sweep of the 2M class (arrow stays a Prop)

Latest tag `v8.76.0-mod16-sweeps-2M`.
Lean change.
`beal_4_13_13_gap3_B_le_2M_eliminated_mod16`
kills `B ≤ 2000000` with `B % 16 ≠ 14`
via fourth-power residues. `#print axioms`
empty. `B ≡ 14` survives. The old 2M
capstone stays `Classical.em`. Kraus pack
recorded, not needed for the 15/16 kill.
Chain `ExistsNewformLevel2` stays `0 ≠ 0`.
No new Beal `∀`.
Still not Full Mathlib `∀`.

# FINAL v8.75.0 — first honest Beal rows (arrow stays a Prop)

Latest tag `v8.75.0-first-honest-beal-rows`.
Lean change.
`beal_4_13_13_gap3_B_196_eliminated` and
`beal_4_13_13_gap3_B_1500003_eliminated`
are honest `¬ ∃ A` via fourth-power
residues modulo 16 (`A^4 + B^4 = C^13`,
residues 7 and 15). `#print axioms`
empty. Not Ribet and not
`Classical.em`. The 2M capstone stays
`Classical.em`. Chain
`ExistsNewformLevel2` stays `0 ≠ 0`.
No new Beal `∀`.
Still not Full Mathlib `∀`.

# FINAL v8.74.0 — displayed Frey mod-13 miss (arrow stays a Prop)

Latest tag `v8.74.0-frey-irreducible-mod13`.
Lean change.
`frey_mod13_irreducible` is inhabited at
`B = 196` and `B = 1500003` as the
v8.69.0 Int-mod-13 miss. That is not
Mazur and not Ribet.
`frey_modular` stays `Classical.em`.
`level_lowering_to_26` stays a Prop.
Chain `ExistsNewformLevel2` stays `0 ≠ 0`.
No new Beal `∀`.
Still not Full Mathlib `∀`.

# FINAL v8.73.0 — displayed dim-2 (arrow stays a Prop)

Latest tag `v8.73.0-modularity-exists-level2`.
Lean change.
`exists_newform_level_26_dim2` is inhabited
(`0 ≠ 12` at `p = 53`). That is not a
Mathlib cusp-form theorem.
Chain `ExistsNewformLevel2` stays `0 ≠ 0`.
Density/Step
`kraus_elimination_q_13_level_26` stays
the uninhabited `∀`.
No new Beal `∀`.
Still not Full Mathlib `∀`.

# FINAL v8.71.0 — Ribet-Mazur pack (arrow stays a Prop)

Latest tag `v8.71.0-ribet-mazur-pack`.
Lean change.
RibetMazur `kraus_elimination_q_13_level_26_density`
and `ribet_mazur_pack_q_13_level_26` are
inhabited from the v8.69.0 Int-mod-13
misses at `B = 196` and `B = 1500003`
only. That is not `∀ B` modular
contradiction and not a Beal `∀`.
Density/Step
`kraus_elimination_q_13_level_26` stays
the uninhabited `∀`.
`ExistsNewformLevel2` stays `0 ≠ 0`.
`beal_4_13_13_gap3_B_le_2M_eliminated`
stays `Classical.em`.
No new Beal `∀`.
Still not Full Mathlib `∀`.

# FINAL v8.69.0 — Level26 Int-mod-13 theorem (arrow stays a Prop)

Latest tag `v8.69.0-kraus-elim-theorem`.
Lean change.
Level26_Newforms `level26_a_eliminated_by_53` /
`level26_b_eliminated_by_443` /
`kraus_elimination_q_13_level_26` are
inhabited Int-mod-13 misses from the
v8.68.1 traces. Density/Step
`kraus_elimination_q_13_level_26` stays
the uninhabited `∀`. That is not residual
isomorphism and not a Beal `∀`.
`ExistsNewformLevel2` stays `0 ≠ 0`.
The s2_26 pack stays a coefficient
check, not Ribet.
`B > 2000000` Bugeaud `P(Φ₁₃) > C`
and `rad > √13 C⁶` stay Props, so
`S_has_prime_with_exp_one_when_C_ge_B_plus_3`
stays a Prop. The Hensel ∀ stays a Prop.
The Ljunggren ∀ stays a Prop.
No new Beal `∀`.
Still not Full Mathlib `∀`.

# FINAL v8.68.1 — computed Frey a53/a443 (arrow stays a Prop)

Latest tag `v8.68.1-frey-ap-53-443`.
Lean change.
`List.take 500` of the certified-model
500-lists: `a₅₃(26a1)=0`, `a₅₃(26b1)=12`,
`a₄₄₃(26a1)=21`, `a₄₄₃(26b1)=-39`.
`a53_E_196 = -2` and `a443_E_1500003 = 24`
by point-count `decide` on
`y² = x(x − B⁴)(x + C⁴)`. Both miss the
locked traces at `ℓ = 13`. The placeholder
integer 2 is not used. The `∀` placeholders
stay Props.
The s2_26 pack stays a coefficient
check, not Ribet.
`kraus_elimination_q_13_level_26` stays
a Prop. `B > 2000000` Bugeaud `P(Φ₁₃) > C`
and `rad > √13 C⁶` stay Props, so
`S_has_prime_with_exp_one_when_C_ge_B_plus_3`
stays a Prop. The Hensel ∀ stays a Prop.
The Ljunggren ∀ stays a Prop.
No new Beal `∀`.
Still not Full Mathlib `∀`.

# FINAL v8.68.0 — displayed a53 miss (arrow stays a Prop)

Latest tag `v8.68.0-kraus-elim-53-443`.
Lean change.
Locked ledger `a₅₃(26a1)=0`, `a₅₃(26b1)=12`
from `List.take 100`. Index 443 is out of
range. `hasSmallZsigWitness_1500003` by
`decide` on `ZMod 443` / `443*443`.
`level26_a_eliminated_by_53_of_witness` is
displayed `2 ≢ 0 [MOD 13]`, not Frey
`a₅₃`, not Kraus. The `∀` placeholders
stay Props.
The s2_26 pack stays a coefficient
check, not Ribet.
`kraus_elimination_q_13_level_26` stays
a Prop. `B > 2000000` Bugeaud `P(Φ₁₃) > C`
and `rad > √13 C⁶` stay Props, so
`S_has_prime_with_exp_one_when_C_ge_B_plus_3`
stays a Prop. The Hensel ∀ stays a Prop.
The Ljunggren ∀ stays a Prop.
No new Beal `∀`.
Still not Full Mathlib `∀`.

# FINAL v8.67.0 — Level 26 newforms skeleton (arrow stays a Prop)

Latest tag `v8.67.0-level26-newforms-skeleton`.
Lean change.
Displayed ledger prefixes
`newform_26_a_qexp` / `newform_26_b_qexp`
match locked `qExp_26a1` / `qExp_26b1`
(a₃(26a1)=1, a₅(26a1)=-3, a₃(26b1)=-3,
a₅(26b1)=-1). `kraus_primes_26` equals
`smallZsigPrimes`. `zsig_density_links_to_kraus`
is that list equality plus
`4488 + 5 * 299 = 5983`. Dim 2 is
displayed, not Mathlib.
`level26_a_eliminated_by_53`,
`level26_b_eliminated_by_443`, and
`kraus_elimination_q_13_level_26_proof_sketch`
stay Props. A Φ₁₃ hit is not Kraus.
The s2_26 pack stays a coefficient
check, not Ribet.
`kraus_elimination_q_13_level_26` stays
a Prop. `B > 2000000` Bugeaud `P(Φ₁₃) > C`
and `rad > √13 C⁶` stay Props, so
`S_has_prime_with_exp_one_when_C_ge_B_plus_3`
stays a Prop. The Hensel ∀ stays a Prop.
The Ljunggren ∀ stays a Prop.
No new Beal `∀`.
Still not Full Mathlib `∀`.

# FINAL v8.66.0 — B≤2.0M density capstone (arrow stays a Prop)

Latest tag `v8.66.0-B-le-2000k-density-capstone`.
Lean change.
Density capstone records `smallZsigPrimes`,
inhabits `4488 + 5 * 299 = 5983`, and
inhabits `hasSmallZsigWitness_196` by `decide`
on `ZMod 53`. `beal_4_13_13_gap3_B_le_2M_eliminated`
is `Classical.em`, not Kraus and not a Beal `∀`.
The s2_26 pack stays a coefficient
check, not Ribet.
`kraus_elimination_q_13_level_26` stays
a Prop. `B > 2000000` Bugeaud `P(Φ₁₃) > C`
and `rad > √13 C⁶` stay Props, so
`S_has_prime_with_exp_one_when_C_ge_B_plus_3`
stays a Prop. The Hensel ∀ stays a Prop.
The Ljunggren ∀ stays a Prop.
No new Beal `∀`.
Still not Full Mathlib `∀`.

# FINAL v8.65.0 — B≤2.0M 5983 named gap-3 rows (arrow stays a Prop)

Latest tag `v8.65.0-B-le-2000k-5983-rows`.
Lean change.
Step60 inhabits 5983 named `B ≤ 2000000`
gap-3 rows (5684 Step59 including
`(200000,200003)` p=12186951011 plus
299 sampled `(1900000, 2000000]` rows
from a 50325-row p≤547 pool, first
`(1900001,1900004)` p=53, last
`(2000000,2000003)` p=53).
The s2_26 pack stays a coefficient
check, not Ribet.
`kraus_elimination_q_13_level_26` stays
a Prop. `B > 2000000` Bugeaud `P(Φ₁₃) > C`
and `rad > √13 C⁶` stay Props, so
`S_has_prime_with_exp_one_when_C_ge_B_plus_3`
stays a Prop. The Hensel ∀ stays a Prop.
The Ljunggren ∀ stays a Prop.
No new Beal `∀`.
Still not Full Mathlib `∀`.

# FINAL v8.64.0 — B≤1.9M 5684 named gap-3 rows (arrow stays a Prop)

Latest tag `v8.64.0-B-le-1900k-5684-rows`.
Lean change.
Step59 inhabits 5684 named `B ≤ 1900000`
gap-3 rows (5385 Step58 including
`(200000,200003)` p=12186951011 plus
299 sampled `(1800000, 1900000]` rows
from a 50350-row p≤547 pool, first
`(1800004,1800007)` p=53, last
`(1899995,1899998)` p=443).
The s2_26 pack stays a coefficient
check, not Ribet.
`kraus_elimination_q_13_level_26` stays
a Prop. `B > 1900000` Bugeaud `P(Φ₁₃) > C`
and `rad > √13 C⁶` stay Props, so
`S_has_prime_with_exp_one_when_C_ge_B_plus_3`
stays a Prop. The Hensel ∀ stays a Prop.
The Ljunggren ∀ stays a Prop.
No new Beal `∀`.
Still not Full Mathlib `∀`.

# FINAL v8.63.0 — B≤1.8M 5385 named gap-3 rows (arrow stays a Prop)

Latest tag `v8.63.0-B-le-1800k-5385-rows`.
Lean change.
Step58 inhabits 5385 named `B ≤ 1800000`
gap-3 rows (5086 Step57 including
`(200000,200003)` p=12186951011 plus
299 sampled `(1700000, 1800000]` rows
from a 50307-row p≤547 pool, first
`(1700007,1700010)` p=53, last
`(1800000,1800003)` p=79).
The s2_26 pack stays a coefficient
check, not Ribet.
`kraus_elimination_q_13_level_26` stays
a Prop. `B > 1800000` Bugeaud `P(Φ₁₃) > C`
and `rad > √13 C⁶` stay Props, so
`S_has_prime_with_exp_one_when_C_ge_B_plus_3`
stays a Prop. The Hensel ∀ stays a Prop.
The Ljunggren ∀ stays a Prop.
No new Beal `∀`.
Still not Full Mathlib `∀`.

# FINAL v8.62.0 — B≤1.7M 5086 named gap-3 rows (arrow stays a Prop)

Latest tag `v8.62.0-B-le-1700k-5086-rows`.
Lean change.
Step57 inhabits 5086 named `B ≤ 1700000`
gap-3 rows (4787 Step56 including
`(200000,200003)` p=12186951011 plus
299 sampled `(1600000, 1700000]` rows
from a 50323-row p≤547 pool, first
`(1600001,1600004)` p=53, last
`(1700000,1700003)` p=547).
The s2_26 pack stays a coefficient
check, not Ribet.
`kraus_elimination_q_13_level_26` stays
a Prop. `B > 1700000` Bugeaud `P(Φ₁₃) > C`
and `rad > √13 C⁶` stay Props, so
`S_has_prime_with_exp_one_when_C_ge_B_plus_3`
stays a Prop. The Hensel ∀ stays a Prop.
The Ljunggren ∀ stays a Prop.
No new Beal `∀`.
Still not Full Mathlib `∀`.

# FINAL v8.61.0 — B≤1.6M 4787 named gap-3 rows (arrow stays a Prop)

Latest tag `v8.61.0-B-le-1600k-4787-rows`.
Lean change.
Step56 inhabits 4787 named `B ≤ 1600000`
gap-3 rows (4488 Step55 including
`(200000,200003)` p=12186951011 plus
299 sampled `(1500000, 1600000]` rows
from a 50310-row p≤547 pool, first
`(1500003,1500006)` p=443, last
`(1600000,1600003)` p=79).
The s2_26 pack stays a coefficient
check, not Ribet.
`kraus_elimination_q_13_level_26` stays
a Prop. `B > 1600000` Bugeaud `P(Φ₁₃) > C`
and `rad > √13 C⁶` stay Props, so
`S_has_prime_with_exp_one_when_C_ge_B_plus_3`
stays a Prop. The Hensel ∀ stays a Prop.
The Ljunggren ∀ stays a Prop.
No new Beal `∀`.
Still not Full Mathlib `∀`.

# FINAL v8.60.0 — B≤1.5M 4488 named gap-3 rows (arrow stays a Prop)

Latest tag `v8.60.0-B-le-1500k-4488-rows`.
Lean change.
Step55 inhabits 4488 named `B ≤ 1500000`
gap-3 rows (4189 Step54 including
`(200000,200003)` p=12186951011 plus
299 sampled `(1400000, 1500000]` rows
from a 50335-row p≤547 pool, first
`(1400001,1400004)` p=53, last
`(1499999,1500002)` p=53).
The s2_26 pack stays a coefficient
check, not Ribet.
`kraus_elimination_q_13_level_26` stays
a Prop. `B > 1500000` Bugeaud `P(Φ₁₃) > C`
and `rad > √13 C⁶` stay Props, so
`S_has_prime_with_exp_one_when_C_ge_B_plus_3`
stays a Prop. The Hensel ∀ stays a Prop.
The Ljunggren ∀ stays a Prop.
No new Beal `∀`.
Still not Full Mathlib `∀`.

# FINAL v8.59.0 — B≤1.4M 4189 named gap-3 rows (arrow stays a Prop)

Latest tag `v8.59.0-B-le-1400k-4189-rows`.
Lean change.
Step54 inhabits 4189 named `B ≤ 1400000`
gap-3 rows (3890 Step53 including
`(200000,200003)` p=12186951011 plus
299 sampled `(1300000, 1400000]` rows
from a 50314-row p≤547 pool, first
`(1300002,1300005)` p=53, last
`(1400000,1400003)` p=53).
The s2_26 pack stays a coefficient
check, not Ribet.
`kraus_elimination_q_13_level_26` stays
a Prop. `B > 1400000` Bugeaud `P(Φ₁₃) > C`
and `rad > √13 C⁶` stay Props, so
`S_has_prime_with_exp_one_when_C_ge_B_plus_3`
stays a Prop. The Hensel ∀ stays a Prop.
The Ljunggren ∀ stays a Prop.
No new Beal `∀`.
Still not Full Mathlib `∀`.

# FINAL v8.58.0 — B≤1.3M 3890 named gap-3 rows (arrow stays a Prop)

Latest tag `v8.58.0-B-le-1300k-3890-rows`.
Lean change.
Step53 inhabits 3890 named `B ≤ 1300000`
gap-3 rows (3591 Step52 including
`(200000,200003)` p=12186951011 plus
299 sampled `(1200000, 1300000]` rows
from a 50306-row p≤547 pool, first
`(1200001,1200004)` p=157, last
`(1299998,1300001)` p=79).
The s2_26 pack stays a coefficient
check, not Ribet.
`kraus_elimination_q_13_level_26` stays
a Prop. `B > 1300000` Bugeaud `P(Φ₁₃) > C`
and `rad > √13 C⁶` stay Props, so
`S_has_prime_with_exp_one_when_C_ge_B_plus_3`
stays a Prop. The Hensel ∀ stays a Prop.
The Ljunggren ∀ stays a Prop.
No new Beal `∀`.
Still not Full Mathlib `∀`.

# FINAL v8.57.0 — B≤1.2M 3591 named gap-3 rows (arrow stays a Prop)

Latest tag `v8.57.0-B-le-1200k-3591-rows`.
Lean change.
Step52 inhabits 3591 named `B ≤ 1200000`
gap-3 rows (3292 Step51 including
`(200000,200003)` p=12186951011 plus
299 sampled `(1100000, 1200000]` rows
from a 50366-row p≤547 pool, first
`(1100002,1100005)` p=53, last
`(1199998,1200001)` p=131).
The s2_26 pack stays a coefficient
check, not Ribet.
`kraus_elimination_q_13_level_26` stays
a Prop. `B > 1200000` Bugeaud `P(Φ₁₃) > C`
and `rad > √13 C⁶` stay Props, so
`S_has_prime_with_exp_one_when_C_ge_B_plus_3`
stays a Prop. The Hensel ∀ stays a Prop.
The Ljunggren ∀ stays a Prop.
No new Beal `∀`.
Still not Full Mathlib `∀`.

# FINAL v8.56.0 — B≤1.1M 3292 named gap-3 rows (arrow stays a Prop)

Latest tag `v8.56.0-B-le-1100k-3292-rows`.
Lean change.
Step51 inhabits 3292 named `B ≤ 1100000`
gap-3 rows (2993 Step50 including
`(200000,200003)` p=12186951011 plus
299 sampled `(1000000, 1100000]` rows
from a 50322-row p≤547 pool, first
`(1000003,1000006)` p=157, last
`(1099999,1100002)` p=53).
The s2_26 pack stays a coefficient
check, not Ribet.
`kraus_elimination_q_13_level_26` stays
a Prop. `B > 1100000` Bugeaud `P(Φ₁₃) > C`
and `rad > √13 C⁶` stay Props, so
`S_has_prime_with_exp_one_when_C_ge_B_plus_3`
stays a Prop. The Hensel ∀ stays a Prop.
The Ljunggren ∀ stays a Prop.
No new Beal `∀`.
Still not Full Mathlib `∀`.

# FINAL v8.55.0 — B≤1000k 2993 named gap-3 rows (arrow stays a Prop)

Latest tag `v8.55.0-B-le-1000k-2993-rows`.
Lean change.
Step50 inhabits 2993 named `B ≤ 1000000`
gap-3 rows (2694 Step49 including
`(200000,200003)` p=12186951011 plus
299 sampled `(900000, 1000000]` rows
from a 50313-row p≤547 pool, first
`(900002,900005)` p=79, last
`(1000000,1000003)` p=79).
The s2_26 pack stays a coefficient
check, not Ribet.
`kraus_elimination_q_13_level_26` stays
a Prop. `B > 1000000` Bugeaud `P(Φ₁₃) > C`
and `rad > √13 C⁶` stay Props, so
`S_has_prime_with_exp_one_when_C_ge_B_plus_3`
stays a Prop. The Hensel ∀ stays a Prop.
The Ljunggren ∀ stays a Prop.
No new Beal `∀`.
Still not Full Mathlib `∀`.

# FINAL v8.54.0 — B≤900k 2694 named gap-3 rows (arrow stays a Prop)

Latest tag `v8.54.0-B-le-900k-2694-rows`.
Lean change.
Step49 inhabits 2694 named `B ≤ 900000`
gap-3 rows (2395 Step48 including
`(200000,200003)` p=12186951011 plus
299 sampled `(800000, 900000]` rows
from a 50307-row p≤547 pool, first
`(800005,800008)` p=131, last
`(899999,900002)` p=53).
The s2_26 pack stays a coefficient
check, not Ribet.
`kraus_elimination_q_13_level_26` stays
a Prop. `B > 900000` Bugeaud `P(Φ₁₃) > C`
and `rad > √13 C⁶` stay Props, so
`S_has_prime_with_exp_one_when_C_ge_B_plus_3`
stays a Prop. The Hensel ∀ stays a Prop.
The Ljunggren ∀ stays a Prop.
No new Beal `∀`.
Still not Full Mathlib `∀`.

# FINAL v8.53.0 — B≤800k 2395 named gap-3 rows (arrow stays a Prop)

Latest tag `v8.53.0-B-le-800k-2395-rows`.
Lean change.
Step48 inhabits 2395 named `B ≤ 800000`
gap-3 rows (2096 Step47 including
`(200000,200003)` p=12186951011 plus
299 sampled `(700000, 800000]` rows
from a 50350-row p≤547 pool, first
`(700001,700004)` p=131, endpoint
`(800000,800003)` p=53).
The s2_26 pack stays a coefficient
check, not Ribet.
`kraus_elimination_q_13_level_26` stays
a Prop. `B > 800000` Bugeaud `P(Φ₁₃) > C`
and `rad > √13 C⁶` stay Props, so
`S_has_prime_with_exp_one_when_C_ge_B_plus_3`
stays a Prop. The Hensel ∀ stays a Prop.
The Ljunggren ∀ stays a Prop.
No new Beal `∀`.
Still not Full Mathlib `∀`.

# FINAL v8.52.0 — B≤700k 2096 named gap-3 rows (arrow stays a Prop)

Latest tag `v8.52.0-B-le-700k-2096-rows`.
Lean change.
Step47 inhabits 2096 named `B ≤ 700000`
gap-3 rows (1797 Step46 including
`(200000,200003)` p=12186951011 plus
299 sampled `(600000, 700000]` rows
from a 50358-row p≤547 pool, first
`(600001,600004)` p=157, endpoint
`(700000,700003)` p=521).
The s2_26 pack stays a coefficient
check, not Ribet.
`kraus_elimination_q_13_level_26` stays
a Prop. `B > 700000` Bugeaud `P(Φ₁₃) > C`
and `rad > √13 C⁶` stay Props, so
`S_has_prime_with_exp_one_when_C_ge_B_plus_3`
stays a Prop. The Hensel ∀ stays a Prop.
The Ljunggren ∀ stays a Prop.
No new Beal `∀`.
Still not Full Mathlib `∀`.

# FINAL v8.51.0 — B≤600k 1797 named gap-3 rows (arrow stays a Prop)

Latest tag `v8.51.0-B-le-600k-1797-rows`.
Lean change.
Step46 inhabits 1797 named `B ≤ 600000`
gap-3 rows (1498 Step45 including
`(200000,200003)` p=12186951011 plus
299 sampled `(500000, 600000]` rows
from a 50339-row p≤547 pool, first
`(500003,500006)` p=79, endpoint
`(600000,600003)` p=53).
The s2_26 pack stays a coefficient
check, not Ribet.
`kraus_elimination_q_13_level_26` stays
a Prop. `B > 600000` Bugeaud `P(Φ₁₃) > C`
and `rad > √13 C⁶` stay Props, so
`S_has_prime_with_exp_one_when_C_ge_B_plus_3`
stays a Prop. The Hensel ∀ stays a Prop.
The Ljunggren ∀ stays a Prop.
No new Beal `∀`.
Still not Full Mathlib `∀`.

# FINAL v8.50.0 — B≤500k 1498 named gap-3 rows (arrow stays a Prop)

Latest tag `v8.50.0-B-le-500k-1498-rows`.
Lean change.
Step45 inhabits 1498 named `B ≤ 500000`
gap-3 rows (1199 Step44 including
`(200000,200003)` p=12186951011 plus
299 sampled `(400000, 500000]` rows
from a 50313-row p≤547 pool, first
`(400001,400004)` p=53, endpoint
`(500000,500003)` p=547).
The s2_26 pack stays a coefficient
check, not Ribet.
`kraus_elimination_q_13_level_26` stays
a Prop. `B > 500000` Bugeaud `P(Φ₁₃) > C`
and `rad > √13 C⁶` stay Props, so
`S_has_prime_with_exp_one_when_C_ge_B_plus_3`
stays a Prop. The Hensel ∀ stays a Prop.
The Ljunggren ∀ stays a Prop.
No new Beal `∀`.
Still not Full Mathlib `∀`.

# FINAL v8.49.0 — B≤400k 1199 named gap-3 rows (arrow stays a Prop)

Latest tag `v8.49.0-B-le-400k-1199-rows`.
Lean change.
Step44 inhabits 1199 named `B ≤ 400000`
gap-3 rows (900 Step43 including
`(200000,200003)` p=12186951011 plus
the exact 299 `(300000, 400000]` rows,
first `(300003,300006)` p=157, endpoint
`(400000,400003)` p=79).
The s2_26 pack stays a coefficient
check, not Ribet.
`kraus_elimination_q_13_level_26` stays
a Prop. `B > 400000` Bugeaud `P(Φ₁₃) > C`
and `rad > √13 C⁶` stay Props, so
`S_has_prime_with_exp_one_when_C_ge_B_plus_3`
stays a Prop. The Hensel ∀ stays a Prop.
The Ljunggren ∀ stays a Prop.
No new Beal `∀`.
Still not Full Mathlib `∀`.

# FINAL v8.48.0 — B≤300k 900 named gap-3 rows (arrow stays a Prop)

Latest tag `v8.48.0-B-le-300k-900-rows`.
Lean change.
Step43 inhabits 900 named `B ≤ 300000`
gap-3 rows (601 Step42 including
`(200000,200003)` p=12186951011 plus
299 new `200000 < B ≤ 300000` rows,
most p≤547). Named new-window endpoint
`(299999,300002)` p=131.
The s2_26 pack stays a coefficient
check, not Ribet.
`kraus_elimination_q_13_level_26` stays
a Prop. `B > 300000` Bugeaud `P(Φ₁₃) > C`
and `rad > √13 C⁶` stay Props, so
`S_has_prime_with_exp_one_when_C_ge_B_plus_3`
stays a Prop. The Hensel ∀ stays a Prop.
The Ljunggren ∀ stays a Prop.
No new Beal `∀`.
Still not Full Mathlib `∀`.

# FINAL v8.47.0 — B=200k outlier p=12186951011 (arrow stays a Prop)

Latest tag `v8.47.0-B-200k-outlier-12186951011`.
Lean change.
Step42 inhabits `row_200000_200003`
(Pratt prime `p = 12186951011`,
`S` mod p = 0, `S` mod p² ≠ 0).
601 named `B ≤ 200000` gap-3 rows.
The s2_26 pack stays a coefficient
check, not Ribet.
`kraus_elimination_q_13_level_26` stays
a Prop. `B > 200000` Bugeaud `P(Φ₁₃) > C`
and `rad > √13 C⁶` stay Props, so
`S_has_prime_with_exp_one_when_C_ge_B_plus_3`
stays a Prop. The Hensel ∀ stays a Prop.
The Ljunggren ∀ stays a Prop.
No new Beal `∀`.
Still not Full Mathlib `∀`.

# FINAL v8.46.0 — B≤200k 600 named gap-3 rows (arrow stays a Prop)

Latest tag `v8.46.0-B-le-200k-600-rows`.
Lean change.
Step41 inhabits 600 named `B ≤ 200000`
gap-3 rows
(`S_has_prime_with_exp_one_B_le_200000_table_rows`).
Named endpoint `(199996,199999)` p=131.
`(200000,200003)` has no `p ≤ 547`
dividing `S` and stays a Prop.
The s2_26 pack stays a coefficient
check, not Ribet.
`kraus_elimination_q_13_level_26` stays
a Prop. `B > 200000` Bugeaud `P(Φ₁₃) > C`
and `rad > √13 C⁶` stay Props, so
`S_has_prime_with_exp_one_when_C_ge_B_plus_3`
stays a Prop. The Hensel ∀ stays a Prop.
The Ljunggren ∀ stays a Prop.
No new Beal `∀`.
Still not Full Mathlib `∀`.

# FINAL v8.45.0 — displayed 26→2 pack (arrow stays a Prop)

Latest tag `v8.45.0-level-lowering-26-to-2`.
Lean change.
Step40 inhabits `level_lowering_26_to_2_from_no_match`
(displayed level-26 Frey-trace misses plus
displayed `S₂(Γ₀(2)) = 0`).
`kraus_elimination_q_13_level_26` stays
a Prop. `B > 100000` Bugeaud `P(Φ₁₃) > C`
and `rad > √13 C⁶` stay Props, so
`S_has_prime_with_exp_one_when_C_ge_B_plus_3`
stays a Prop. The Hensel ∀ stays a Prop.
The Ljunggren ∀ stays a Prop.
No new Beal `∀`.
Still not Full Mathlib `∀`.

# FINAL v8.44.0 — Kraus p=5 eliminates 26a1 (arrow stays a Prop)

Latest tag `v8.44.0-Kraus-p5-elim-26a1`.
Lean change.
Step39 inhabits `kraus_elimination_26a1`
(ledger `a₅(26a1) = -3` is not a Frey
p=5 trace in `{-4, -2, 0, 2, 4}` nor
`{-2, 0, 2}`).
`kraus_elimination_26b1` stays inhabited.
`kraus_elimination_q_13_level_26` stays
a Prop. `B > 100000` Bugeaud `P(Φ₁₃) > C`
and `rad > √13 C⁶` stay Props, so
`S_has_prime_with_exp_one_when_C_ge_B_plus_3`
stays a Prop. The Hensel ∀ stays a Prop.
The Ljunggren ∀ stays a Prop.
No new Beal `∀`.
Still not Full Mathlib `∀`.

# FINAL v8.43.0 — Kraus p=3 eliminates 26b1 (arrow stays a Prop)

Latest tag `v8.43.0-Kraus-p3-elim-26b1`.
Lean change.
Step38 inhabits `kraus_elimination_26b1`
(ledger `a₃(26b1) = -3` is not a Frey
p=3 trace in `{-2, 0, 2}`).
`kraus_elimination_26a1` stays a Prop.
`kraus_elimination_q_13_level_26` stays
a Prop. `B > 100000` Bugeaud `P(Φ₁₃) > C`
and `rad > √13 C⁶` stay Props, so
`S_has_prime_with_exp_one_when_C_ge_B_plus_3`
stays a Prop. The Hensel ∀ stays a Prop.
The Ljunggren ∀ stays a Prop.
No new Beal `∀`.
Still not Full Mathlib `∀`.

# FINAL v8.42.0 — B ≤ 100k exp-one extension (arrow stays a Prop)

Latest tag `v8.42.0-B-le-100k-extension`.
Lean change.
Step37 inhabits 318 named gap-3 rows
with `B ≤ 100000`:
`S_has_prime_with_exp_one_B_le_100000_table_rows`,
`exists_p_with_order_ne_13_B_le_100000_from_exp_one_table_rows`,
and `S_not_fourth_B_le_100000_from_exp_one_table_rows`.
Not every `B ≤ 100000`. `B > 100000`
Bugeaud `P(Φ₁₃) > C` and
`rad > √13 C⁶` stay Props, so
`S_has_prime_with_exp_one_when_C_ge_B_plus_3`
stays a Prop. Kraus elimination at
`q = 13`, level 26 stays a Prop.
The Hensel ∀ stays a Prop. The
Ljunggren ∀ stays a Prop.
No new Beal `∀`.
Still not Full Mathlib `∀`.

# FINAL v8.41.0 — Kraus X0(26) elimination infrastructure (arrow stays a Prop)

Latest tag `v8.41.0-Kraus-X0-26-elimination`.
Lean change.
Step36 inhabits `ap_bound_level_26`,
`X0_26_Q_displayed_points`,
`level_26_eq_2_mul_13`, and
`S2_level_26_dim_two`.
Kraus elimination at `q = 13`, level 26
stays a Prop. Bugeaud `P(Φ₁₃) > C` and
`rad > √13 C⁶` stay Props, so
`S_has_prime_with_exp_one_when_C_ge_B_plus_3`
stays a Prop. The Hensel ∀
stays a Prop. The Ljunggren ∀
stays a Prop.
No new Beal `∀`.
Still not Full Mathlib `∀`.

# FINAL v8.40.0 — B > 50000 rad bound (arrow stays a Prop)

Latest tag `v8.40.0-B-gt-50000-rad-bound`.
Lean change.
Step35 inhabits `S_le_13_C_pow12`,
`sqrt_S_le_4_C6`,
`rad_le_sqrt_of_squarefull`, and
`rad_gt_C_of_P_phi13_gt_C`.
Bugeaud `P(Φ₁₃) > C` and
`rad > √13 C⁶` stay Props, so
`S_has_prime_with_exp_one_when_C_ge_B_plus_3`
stays a Prop. The Hensel ∀
stays a Prop. The Ljunggren ∀
stays a Prop.
No new Beal `∀`.
Still not Full Mathlib `∀`.

# FINAL v8.39.0 — B ≤ 50000 exp-one real witnesses (arrow stays a Prop)

Latest tag `v8.39.0-B-le-50000-exp-one-real-witnesses`.
Lean change.
Step34 inhabits 188 named gap-3 rows
with `B ≤ 50000`, packed as
`S_has_prime_with_exp_one_B_le_50000_table_rows`
and
`S_not_fourth_B_le_50000_from_exp_one_table_rows`.
Not every `B ≤ 50000`. The Hensel ∀
stays a Prop. `B > 50000` is Bugeaud-type.
The Ljunggren ∀ stays a Prop.
No new Beal `∀`.
Still not Full Mathlib `∀`.

# FINAL v8.38.0 — B ≤ 10000 exp-one extension (arrow stays a Prop)

Latest tag `v8.38.0-B-le-10000-exp-one-extension`.
Lean change.
Step33 inhabits 256 named gap-3 rows
with `B ≤ 10000`, packed as
`S_has_prime_with_exp_one_B_le_10000_table_rows`
and
`S_not_fourth_B_le_10000_from_exp_one_table_rows`.
Not every `B ≤ 10000`. The Hensel ∀
stays a Prop. `B > 10000` is Bugeaud-type.
The Ljunggren ∀ stays a Prop.
No new Beal `∀`.
Still not Full Mathlib `∀`.

# FINAL v8.37.0 — B ≤ 1000 exp-one extension (arrow stays a Prop)

Latest tag `v8.37.0-B-le-1000-exp-one-extension`.
Lean change.
Step32 inhabits 64 named gap-3 rows
with `B ≤ 1000`, packed as
`S_has_prime_with_exp_one_B_le_1000_table_rows`
and
`S_not_fourth_B_le_1000_from_exp_one_table_rows`.
Not every `B ≤ 1000`. The Hensel ∀
stays a Prop. `B > 1000` is Bugeaud-type.
The Ljunggren ∀ stays a Prop.
No new Beal `∀`.
Still not Full Mathlib `∀`.

# FINAL v8.36.0 — B ≤ 100 order ≠ 13 from exp-one (arrow stays a Prop)

Latest tag `v8.36.0-B-le-100-order-ne-13-from-exp-one`.
Lean change.
Step31 inhabits
`exists_p_with_order_ne_13_B_le_100_from_exp_one_table_rows`
and
`S_not_fourth_B_le_100_from_exp_one_table_rows`
via the Step11 dichotomy
(`p² ∤ S` ⇒ order ≠ 13).
Not every `B ≤ 100`. The Hensel ∀
stays a Prop. `B > 100` is Bugeaud-type.
The Ljunggren ∀ and exp-one ∀ stay
Props. No new Beal `∀`.
Still not Full Mathlib `∀`.

# FINAL v8.35.0 — S not proper power B≤100 from exp-one (arrow stays a Prop)

Latest tag `v8.35.0-S-not-proper-power-B-le-100-from-exp-one`.
Lean change.
Step30 inhabits
`not_proper_prime_power_of_has_exp_one`
(`HasPrimeWithExpOne` ⇒ `¬ IsProperPrimePower`)
and eight named rows packed as
`S_not_proper_prime_power_B_le_100_from_exp_one_table_rows`.
Not every `B ≤ 100`. The Ljunggren ∀
stays a Prop. `B > 100` is Bugeaud-type.
The gap-3 exp-one ∀ and `exists_p`
stay Props. No new Beal `∀`.
Still not Full Mathlib `∀`.

# FINAL v8.34.0 — B ≤ 100 exp-one table (arrow stays a Prop)

Latest tag `v8.34.0-B-le-100-exp-one-table`.
Lean change.
Step29 inhabits eight named
`HasPrimeWithExpOne` rows on gap-3
coprime pairs with `B ≤ 100`, packed
as `S_has_prime_with_exp_one_B_le_100_table_rows`.
Not every `B ≤ 100`. The gap-3 ∀
stays a Prop. `B > 100` squarefull
rarity is Bugeaud-type. Glue
`exists_p_with_order_ne_13_of_has_exp_one`
is already inhabited. `exists_p`
stays a Prop. No new Beal `∀`.
Still not Full Mathlib `∀`.

# FINAL v8.33.0 — S has prime with exp one gap3 (arrow stays a Prop)

Latest tag `v8.33.0-S-has-prime-with-exp-one-gap3`.
Lean change.
Step28 inhabits `HasPrimeWithExpOne`
on `S_val 1 5` and the glue
`exists_p_with_order_ne_13_of_has_exp_one`
(Step11 dichotomy backwards). The
gap-3 ∀ stays a Prop. A `B ≤ 100`
table is Step29. No new Beal `∀`.
Still not Full Mathlib `∀`.

# FINAL v8.32.0 — S not proper prime power gap3 (arrow stays a Prop)

Latest tag `v8.32.0-S-not-proper-prime-power-gap3`.
Lean change.
Step27 inhabits
`IsProperPrimePower` (`k ≥ 2`),
`not_isProperPrimePower_of_prime`,
`proper_prime_power_imp_sq_dvd`, and
`S_val_1_5_not_proper_prime_power`.
The pair `B = 1`, `C = 5` is prime
(`k = 1`), so it is not a proper
prime power. The Ljunggren ∀ stays a
Prop. `exists_p` stays a Prop: even
without a proper prime power,
`S = p1² · p2²` would still lift on
every prime. Need an exponent-1
prime. No new Beal `∀`. Still not
Full Mathlib `∀`.

# FINAL v8.31.0 — S not prime power gap3 fast track (arrow stays a Prop)

Latest tag `v8.31.0-S-not-prime-power-gap3-fast-track`.
Lean change.
Step26 inhabits the Pratt prime
`S_val 1 5 = 305175781` and refutes
the sketch forall “if C ≥ B+3 then S
is never a prime power”. The pair
`B = 1`, `C = 5` is a gap-3 coprime
counterexample, so the two-primitive-primes
sketch is also false. The `_fast`
foralls stay Props (known false).
`exists_p` stays a Prop: one pair is
not a forall. The gap-3 `ω ≥ 2` claim
is false, not closed. No new Beal `∀`.
Still not Full Mathlib `∀`.

# FINAL v8.30.0 — Chebotarev lift density plan (arrow stays a Prop)

Latest tag `v8.30.0-Chebotarev-lift-density-plan`.
Lean change.
Step25 inhabits
`primes_eq1_mod13_infinite`,
`density_p_div_S` (support in the
class `p ≡ 1 (mod 13)`, not density
1/13), `thin_set_p_sq_div_S`
(fibre card `p`), and the Step24
wraps. Chebotarev close stays a Prop:
density is not a proof, and Mathlib
4.12 has no effective Chebotarev.
`exists_p` stays a Prop. No new Beal
`∀`. Still not Full Mathlib `∀`.

# FINAL v8.29.0 — Phi13 derivative LTE plan (arrow stays a Prop)

Latest tag `v8.29.0-Phi13-derivative-LTE-plan`.
Lean change.
Step24 inhabits
`phi13_derivative_separable_mod_p`,
`hensel_unique_lift_of_phi13_root`
(unique class in `ZMod (p²)`),
`p_sq_dvd_S_iff_CB_eq_lifted_root`.
A `Φ₁₃`-root modulo `p ≠ 13` is simple.
The square test is the fibre
`C · B⁻¹ ≡ t* (mod p²)`.
`B = 1`, `C = 460`, `p = 53` shows a
lift can succeed. Size does not kill
two lifts. `exists_p` stays a Prop.
No new Beal `∀`. Still not Full Mathlib `∀`.

# FINAL v8.28.0 — Phi13 Zeta13 prime-ideal plan (arrow stays a Prop)

Latest tag `v8.28.0-Phi13-Zeta13-prime-ideal-plan`.
Lean change.
Step23 inhabits
`norm_eq_S`, `zeta13_class_number_one`,
`zeta13_prime_ideal_factorization_exists`,
`S_not_power_of_thirteen_inhabited`.
Displayed `Φ₁₃(C,B)` equals `S_val`.
Class number 1 is recorded, not Mathlib.
One primitive prime of the displayed
norm exists. Two prime ideals stay a
Prop (same lock as two rational primes;
two primes above one `p` still give one
rational prime). Size does not kill two
Hensel lifts.
`S_has_two_distinct_prime_ideals_in_Z_zeta13_when_C_ge_B_plus_3`,
`zeta13_two_prime_ideals_give_two_rational_primes`,
`exists_p_with_order_ne_13_mod_p_sq_inhabited`,
`beal_odd_A_closed_v8_24_0_inhabited`,
`beal_4_13_13_full_closed_mod_modular_v8_24_0_inhabited`,
`beal_4_13_13_Zsigmondy_13_odd_A_closed_for_real`
stay uninhabited.
`ExistsNewformLevel2` stays `0 ≠ 0`.
`beal_from_ribet` stays *from*
`ModularImpliesLevel2Newform`.
Does **not** inhabit
`Beal.BealForall.beal_forall_from_Is13Case_sketch`.
**No `sorry`**, **no `False.elim`**.
Official none-chain build stays **24 modules**.
Latest written mint
[10.5281/zenodo.22654189](https://doi.org/10.5281/zenodo.22654189)
(`v8.19.9-fourth-power-residue` houseclean archive).
Track A none-chain mint stays
[10.5281/zenodo.22635221](https://doi.org/10.5281/zenodo.22635221).
This mint does **not** claim unconditional Beal `∀`.

# FINAL v8.27.0 — two-primitive-primes counting plan (arrow stays a Prop)

Latest tag `v8.27.0-two-primitive-primes-counting-plan`.
Lean change.
Step22 inhabits
`S_not_power_of_thirteen`,
`exists_p_of_two_primes_one_not_square_inhabited`,
`zsigmondy_vp_S_eq_one_of_order_ne_13_inhabited`,
`S_not_fourth_of_order_ne_13_inhabited`.
Zsigmondy gives one primitive prime, not
two. `S` may still be `q^k` for that prime.
Size `S ≤ 13 C¹²` does not rule out two
lifts (`53² · 79²` already sits under that
bound for `C ≥ 4`).
`S_not_prime_power_when_C_ge_B_plus_3`,
`S_has_two_distinct_primitive_primes_when_C_ge_B_plus_3`,
`not_all_p_lift_when_two_primes`,
`exists_p_with_order_ne_13_mod_p_sq_inhabited`,
`beal_odd_A_closed_v8_24_0_inhabited`,
`beal_4_13_13_full_closed_mod_modular_v8_24_0_inhabited`,
`beal_4_13_13_Zsigmondy_13_odd_A_closed_for_real`
stay uninhabited.
`ExistsNewformLevel2` stays `0 ≠ 0`.
`beal_from_ribet` stays *from*
`ModularImpliesLevel2Newform`.
Does **not** inhabit
`Beal.BealForall.beal_forall_from_Is13Case_sketch`.
**No `sorry`**, **no `False.elim`**.
Official none-chain build stays **24 modules**.
Latest written mint
[10.5281/zenodo.22654189](https://doi.org/10.5281/zenodo.22654189)
(`v8.19.9-fourth-power-residue` houseclean archive).
Track A none-chain mint stays
[10.5281/zenodo.22635221](https://doi.org/10.5281/zenodo.22635221).
This mint does **not** claim unconditional Beal `∀`.

# FINAL v8.26.0 — exists-p order-ne-13 plan (arrow stays a Prop)

Latest tag `v8.26.0-exists-p-order-ne-13-plan`.
Lean change.
Step21 inhabits
`p_sq_dvd_S_iff_order_13_mod_p_sq_inhabited`,
`zsigmondy_vp_S_eq_one_of_order_ne_13`,
`exists_p_of_two_primes_one_not_square`.
Zsigmondy gives one primitive prime, not
two. Two Hensel lifts can both succeed.
`S_has_two_distinct_primitive_primes_when_C_ge_B_plus_3`,
`not_all_p_lift_when_two_primes`,
`exists_p_with_order_ne_13_mod_p_sq_inhabited`,
`beal_odd_A_closed_v8_24_0_inhabited`,
`beal_4_13_13_full_closed_mod_modular_v8_24_0_inhabited`,
`beal_4_13_13_Zsigmondy_13_odd_A_closed_for_real`
stay uninhabited.
`ExistsNewformLevel2` stays `0 ≠ 0`.
`beal_from_ribet` stays *from*
`ModularImpliesLevel2Newform`.
Does **not** inhabit
`Beal.BealForall.beal_forall_from_Is13Case_sketch`.
**No `sorry`**, **no `False.elim`**.
Official none-chain build stays **24 modules**.
Latest written mint
[10.5281/zenodo.22654189](https://doi.org/10.5281/zenodo.22654189)
(`v8.19.9-fourth-power-residue` houseclean archive).
Track A none-chain mint stays
[10.5281/zenodo.22635221](https://doi.org/10.5281/zenodo.22635221).
This mint does **not** claim unconditional Beal `∀`.

# FINAL v8.25.0 — Hensel dichotomy S_not_fourth plan (arrow stays a Prop)

Latest tag `v8.25.0-Hensel-dichotomy-S-not-fourth-plan`.
Lean change.
Step20 inhabits
`p_sq_dvd_S_iff_order_13_mod_p_sq`,
`hensel_lift_example_B1_C460_p53`,
`S_not_fourth_of_order_ne_13`,
`beal_odd_A_closed_via_zsig_hensel`
(exists-`p` order hypothesis),
`C_eq_B_plus_1_or_2_closed`.
Unconditional `v_p(S) = 1` is false;
`B=1`, `C=460`, `p=53` lifts (`p² ∣ S`).
`exists_p_with_order_ne_13_mod_p_sq`,
`beal_odd_A_closed_v8_24_0_inhabited`,
`beal_4_13_13_full_closed_mod_modular_v8_24_0_inhabited`,
`beal_4_13_13_Zsigmondy_13_odd_A_closed_for_real`
stay uninhabited.
`ExistsNewformLevel2` stays `0 ≠ 0`.
`beal_from_ribet` stays *from*
`ModularImpliesLevel2Newform`.
Does **not** inhabit
`Beal.BealForall.beal_forall_from_Is13Case_sketch`.
**No `sorry`**, **no `False.elim`**.
Official none-chain build stays **24 modules**.
Latest written mint
[10.5281/zenodo.22654189](https://doi.org/10.5281/zenodo.22654189)
(`v8.19.9-fourth-power-residue` houseclean archive).
Track A none-chain mint stays
[10.5281/zenodo.22635221](https://doi.org/10.5281/zenodo.22635221).
This mint does **not** claim unconditional Beal `∀`.

# FINAL v8.24.1 — odd A closed for real via Hensel glue (arrow stays a Prop)

Latest tag `v8.24.1-odd-A-closed-for-real`.
Lean change.
Step19 inhabits
`primitive_prime_not_dvd_bases`,
`beal_odd_A_ge3_closed_of_vp1_inhabited`,
`beal_odd_A_closed_via_zsig_hensel`,
`beal_4_13_13_Zsigmondy_13_odd_A_closed_for_real_of_hensel`.
The glue needs the Step11 order in
`(ℤ/p²)ˣ` not equal to 13
(**not** `hPrimOrder : True`).
`beal_odd_A_closed_v8_24_0_inhabited`,
`beal_4_13_13_full_closed_mod_modular_v8_24_0_inhabited`,
`beal_4_13_13_Zsigmondy_13_odd_A_closed_for_real`
stay uninhabited.
Unconditional `¬ p² ∣ S` is false
(Hensel).
v8.24.0 primitive / `of_vp1` stay.
v8.23.1 S-bounds / k-shape stay.
`ExistsNewformLevel2` stays `0 ≠ 0`.
`beal_from_ribet` stays *from*
`ModularImpliesLevel2Newform`.
Does **not** inhabit
`Beal.BealForall.beal_forall_from_Is13Case_sketch`.
**No `sorry`**, **no `False.elim`**.
Official none-chain build stays **24 modules**.
Latest written mint
[10.5281/zenodo.22654189](https://doi.org/10.5281/zenodo.22654189)
(`v8.19.9-fourth-power-residue` houseclean archive).
Track A none-chain mint stays
[10.5281/zenodo.22635221](https://doi.org/10.5281/zenodo.22635221).
This mint does **not** claim unconditional Beal `∀`.

# FINAL v8.24.0 — Zsigmondy primitive vp1 inhabited; odd A≥3 closes from real v_p=1 (arrow stays a Prop)

Latest tag `v8.24.0-Zsigmondy-primitive-vp1-inhabited`.
Lean change.
Step18 inhabits
`zsigmondy_exists_primitive_inhabited`,
`zsig_p_not_dvd_k_of_gcd_inhabited`,
`S_times_g_not_fourth_of_vp1_inhabited`,
`beal_odd_A_ge3_closed_of_vp1`.
`zsigmondy_vp_S_eq_one_inhabited` is
Hensel-conditional (order in
`(ℤ/p²)ˣ` is not 13; not `hPrim : True`).
`zsigmondy_vp_S_eq_one_unconditional`,
`beal_odd_A_ge3_B_le_100_closed`,
`beal_odd_A_ge3_B_gt_100_closed_via_zsig_inhabited`,
`beal_odd_A_closed_v8_24_0`,
`beal_4_13_13_full_closed_mod_modular_v8_24_0`,
`beal_4_13_13_Zsigmondy_13_Zsig_primitive_vp1_inhabited_plan`
stay uninhabited.
Unconditional `¬ p² ∣ S` is false
(Hensel).
v8.23.1 S-bounds / k-shape stay.
v8.22.1 `oddPart_rec` / `2q` stay.
`ExistsNewformLevel2` stays `0 ≠ 0`.
`beal_from_ribet` stays *from*
`ModularImpliesLevel2Newform`.
Does **not** inhabit
`Beal.BealForall.beal_forall_from_Is13Case_sketch`.
**No `sorry`**, **no `False.elim`**.
Official none-chain build stays **24 modules**.
Latest written mint
[10.5281/zenodo.22654189](https://doi.org/10.5281/zenodo.22654189)
(`v8.19.9-fourth-power-residue` houseclean archive).
Track A none-chain mint stays
[10.5281/zenodo.22635221](https://doi.org/10.5281/zenodo.22635221).
This mint does **not** claim unconditional Beal `∀`.

# FINAL v8.23.1 — Zsigmondy S vp1 plan for the last odd lock (arrow stays a Prop)

Latest tag `v8.23.1-Zsigmondy-S-vp1-plan`.
Lean change.
Step17 inhabits
`S_val`, `S_bounds`,
`thirteen_dvd_S_of_13_nmid_B`,
`gcd_k_S_dvd_13` (honest wrap),
`k_shape_1_13_13cubed`
(`g ∈ {1, 13, 2197}`).
`zsigmondy_exists_primitive`,
`zsigmondy_vp_S_eq_one`,
`zsig_p_not_dvd_k_of_gcd`,
`S_times_g_not_fourth_of_vp1`,
`beal_odd_A_ge3_B_gt_100_closed_via_zsig`,
`beal_odd_A_closed_v8_23_1`,
`beal_4_13_13_full_closed_mod_modular_v8_23_1`,
`beal_4_13_13_Zsigmondy_13_Zsig_S_vp1_plan`
stay uninhabited.
Unconditional `¬ p² ∣ S` is false
(Hensel).
v8.23.0 S-bounds / k-shape stay.
v8.22.1 `oddPart_rec` / `2q` stay.
`ExistsNewformLevel2` stays `0 ≠ 0`.
`beal_from_ribet` stays *from*
`ModularImpliesLevel2Newform`.
Does **not** inhabit
`Beal.BealForall.beal_forall_from_Is13Case_sketch`.
**No `sorry`**, **no `False.elim`**.
Official none-chain build stays **24 modules**.
Latest written mint
[10.5281/zenodo.22654189](https://doi.org/10.5281/zenodo.22654189)
(`v8.19.9-fourth-power-residue` houseclean archive).
Track A none-chain mint stays
[10.5281/zenodo.22635221](https://doi.org/10.5281/zenodo.22635221).
This mint does **not** claim unconditional Beal `∀`.

# FINAL v8.23.0 — odd A closure plan for the last odd branch (arrow stays a Prop)

Latest tag `v8.23.0-odd-A-closure-plan`.
Lean change.
Step16 inhabits
`S_bounds_13_B12_le_S_le_13_C12`,
`k_almost_fourth_power_shape`
(`k = u⁴` or `13 u⁴` or `13³ u⁴`),
`k_le_A4_div_13_B12`,
`B_gt_100_k_bounded`,
`k_ge_B_imp_A_ge_9B3`.
`zsigmondy_prime_S`,
`zsig_p_not_dvd_k`,
`S_not_fourth_power_of_zsig`,
`S_times_g_not_fourth`,
`beal_odd_A_ge3_B_gt_100_closed`,
`beal_odd_A_closed_v8_23_0`,
`beal_4_13_13_full_closed_mod_modular`,
`beal_4_13_13_Zsigmondy_13_odd_A_closure_plan`
stay uninhabited.
v8.22.1 `oddPart_rec` / `2q` stay.
`ExistsNewformLevel2` stays `0 ≠ 0`.
`beal_from_ribet` stays *from*
`ModularImpliesLevel2Newform`.
Does **not** inhabit
`Beal.BealForall.beal_forall_from_Is13Case_sketch`.
**No `sorry`**, **no `False.elim`**.
Official none-chain build stays **24 modules**.
Latest written mint
[10.5281/zenodo.22654189](https://doi.org/10.5281/zenodo.22654189)
(`v8.19.9-fourth-power-residue` houseclean archive).
Track A none-chain mint stays
[10.5281/zenodo.22635221](https://doi.org/10.5281/zenodo.22635221).
This mint does **not** claim unconditional Beal `∀`.

# FINAL v8.22.1 — X₀(2q) Darmon–Merel plan for even not-pow2 A, q≠13 (arrow stays a Prop)

Latest tag `v8.22.1-X0-2q-Darmon-Merel-plan`.
Lean change.
Step15 inhabits
`oddPart_rec`, `rad`, `oddPart_def`,
`rad_dvd_pow`,
`even_not_pow2_has_odd_prime_q`,
`level_2q_of_odd_prime_dvd_A`
(`N' = 2 q` divides `2 · rad(oddPart_rec A)`).
`kraus_criterion_q_ne_13`,
`X0_2q_no_Frey_match`,
`beal_even_not_pow2_general_q_False`,
`beal_even_not_pow2_closed_v8_22_1`,
`beal_even_A_closed_v8_22_1`,
`beal_4_13_13_odd_only_remaining`,
`beal_4_13_13_X0_2q_Darmon_Merel_plan`
stay uninhabited.
v8.22.0 radical `N'` stays.
`ExistsNewformLevel2` stays `0 ≠ 0`.
`beal_from_ribet` stays *from*
`ModularImpliesLevel2Newform`.
Does **not** inhabit
`Beal.BealForall.beal_forall_from_Is13Case_sketch`.
**No `sorry`**, **no `False.elim`**.
Official none-chain build stays **24 modules**.
Latest written mint
[10.5281/zenodo.22654189](https://doi.org/10.5281/zenodo.22654189)
(`v8.19.9-fourth-power-residue` houseclean archive).
Track A none-chain mint stays
[10.5281/zenodo.22635221](https://doi.org/10.5281/zenodo.22635221).
This mint does **not** claim unconditional Beal `∀`.

# FINAL v8.22.0 — X₀(26) RibetMazur plan for even not-pow2 A (arrow stays a Prop)

Latest tag `v8.22.0-X0-26-RibetMazur-plan`.
Lean change.
Step14 inhabits
`even_not_pow2_has_odd_prime`,
`frey_conductor_even_A`
(`rad A = 2 · rad(oddPart A)`),
`minimal_level_26_of_13_dvd_A`,
`level_at_least_6_of_even_not_pow2`.
`ribet_level_lowering_to_Nprime`,
`X0_26_no_matching_newform`,
`conductor_26_elliptic_curves_list`,
`beal_even_not_pow2_implies_level_26_newform`,
`beal_even_not_pow2_13dvdA_False`,
`beal_even_not_pow2_general_False`,
`beal_even_A_closed`,
`beal_4_13_13_X0_26_RibetMazur_plan`
stay uninhabited.
v8.21.1 `frey_curve_conductor` stays.
`ExistsNewformLevel2` stays `0 ≠ 0`.
`beal_from_ribet` stays *from*
`ModularImpliesLevel2Newform`.
Does **not** inhabit
`Beal.BealForall.beal_forall_from_Is13Case_sketch`.
**No `sorry`**, **no `False.elim`**.
Official none-chain build stays **24 modules**.
Latest written mint
[10.5281/zenodo.22654189](https://doi.org/10.5281/zenodo.22654189)
(`v8.19.9-fourth-power-residue` houseclean archive).
Track A none-chain mint stays
[10.5281/zenodo.22635221](https://doi.org/10.5281/zenodo.22635221).
This mint does **not** claim unconditional Beal `∀`.

# FINAL v8.21.1 — Modular W lift last lock (arrow stays a Prop)

Latest tag `v8.21.1-Modular-W-lift-last-lock`.
Lean change.
Step13 inhabits `frey_curve_conductor`
(`A = 2^r`, `B,C` odd → even radical `2`).
`modular_W_lift`,
`ribet_level_lowering_to_2`,
`X0_2_no_newforms` stay uninhabited
(`ExistsNewformLevel2` is `0 ≠ 0`).
`beal_mixed_pow2_implies_level_2_newform`,
`beal_4_13_13_final_closed`,
`beal_from_ribet_upside_down`,
`beal_4_13_13_size` stay uninhabited.
v8.21.0 `A_ge_53_of_S_prime`,
`k_le_A_pow4_div_13_B_pow12`,
`B_gt_100_imp_k_bounded_by_A`,
`k_ge_B_imp_A_large` (`k ≥ B` → `A ≥ 9 B³`),
`k_lt_B_imp_S_between` stay.
Closing `B > 100` stays uninhabited
(`S_not_fourth_power` is a Hensel
hypothesis; `ExistsNewformLevel2` is
`0 ≠ 0`).
v8.20.1 packages `B ≤ 100` for odd `A ≥ 3`.
`C = B+1` is the Size_Table.
`C = B+2` is Size_C_ge_B_plus_2.
`C ≥ B+3` is `k_almost_fourth_power`
plus `S_not_fourth_power`.
A primitive Zsigmondy prime divides `S`.
The `(ℤ/p²)ˣ` order-13 dichotomy is
`v_p_S_eq_one` (`order ≠ 13 → ¬ p² ∣ S`).
Unconditional `¬ p² ∣ S` is false
(Hensel lifts exist).
v8.20.0 `gcd(k,S) ∣ 13` /
`k` is `u⁴` or `13 u⁴` or `13³ u⁴` stay.
v8.19.9 residue `k % 4 = 1` /
`k % 8 = 1` stay.
v8.19.8 `k` odd / coprime /
`A⁴ ≡ k¹³` stay.
v8.19.7 `A⁴ ≥ 13 k B¹²` / `39 B¹²`
and `A ≥ 2 B³ + 1` stay.
v8.19.6 `B ≤ 100` with `C = B+1` and
`C = B+2` stays closed.
`zsigmondy_13` stays inhabited.
The general `beal_4_13_13_size` stays
uninhabited.
`ExistsNewformLevel2` stays `0 ≠ 0`.
`beal_from_ribet` stays *from*
`ModularImpliesLevel2Newform`.
Does **not** inhabit
`Beal.BealForall.beal_forall_from_Is13Case_sketch`.
**No `sorry`**, **no `False.elim`**.
Official none-chain build stays **24 modules**.
Latest written mint
[10.5281/zenodo.22654189](https://doi.org/10.5281/zenodo.22654189)
(`v8.19.9-fourth-power-residue` houseclean archive).
Track A none-chain mint stays
[10.5281/zenodo.22635221](https://doi.org/10.5281/zenodo.22635221).
This mint does **not** claim unconditional Beal `∀`.
Three JPEG plates stay in `docs/assets/v6.7.0/`.
Hook `22379293`.  `IsVersionOf` `22272382` metadata only.
Original-family latest remains `22322627`.

# FINAL v8.21.0 — B>100 bounded k via A≥53 (close stays uninhabited)

Latest tag `v8.21.0-B-gt-100-bounded-k`.
Lean change.
Plans a `B > 100` bound on `k = C − B`
from `A ≥ 53` and `A⁴ = k · S`,
`S ≥ 13 B¹²`.
`A_ge_53_of_S_prime`,
`k_le_A_pow4_div_13_B_pow12`,
`B_gt_100_imp_k_bounded_by_A`,
`k_ge_B_imp_A_large` (`k ≥ B` → `A ≥ 9 B³`),
`k_lt_B_imp_S_between` are inhabited.
Closing `B > 100` stays uninhabited
(`S_not_fourth_power` is a Hensel
hypothesis; `ExistsNewformLevel2` is
`0 ≠ 0`).
v8.20.1 packages `B ≤ 100` for odd `A ≥ 3`.
`C = B+1` is the Size_Table.
`C = B+2` is Size_C_ge_B_plus_2.
`C ≥ B+3` is `k_almost_fourth_power`
plus `S_not_fourth_power`.
A primitive Zsigmondy prime divides `S`.
The `(ℤ/p²)ˣ` order-13 dichotomy is
`v_p_S_eq_one` (`order ≠ 13 → ¬ p² ∣ S`).
Unconditional `¬ p² ∣ S` is false
(Hensel lifts exist).
v8.20.0 `gcd(k,S) ∣ 13` /
`k` is `u⁴` or `13 u⁴` or `13³ u⁴` stay.
v8.19.9 residue `k % 4 = 1` /
`k % 8 = 1` stay.
v8.19.8 `k` odd / coprime /
`A⁴ ≡ k¹³` stay.
v8.19.7 `A⁴ ≥ 13 k B¹²` / `39 B¹²`
and `A ≥ 2 B³ + 1` stay.
v8.19.6 `B ≤ 100` with `C = B+1` and
`C = B+2` stays closed.
`zsigmondy_13` stays inhabited.
The general `beal_4_13_13_size` stays
uninhabited.
`ExistsNewformLevel2` stays `0 ≠ 0`.
`beal_from_ribet` stays *from*
`ModularImpliesLevel2Newform`.
Does **not** inhabit
`Beal.BealForall.beal_forall_from_Is13Case_sketch`.
**No `sorry`**, **no `False.elim`**.
Official none-chain build stays **24 modules**.
Latest written mint
[10.5281/zenodo.22654189](https://doi.org/10.5281/zenodo.22654189)
(`v8.19.9-fourth-power-residue` houseclean archive).
Track A none-chain mint stays
[10.5281/zenodo.22635221](https://doi.org/10.5281/zenodo.22635221).
This mint does **not** claim unconditional Beal `∀`.
Three JPEG plates stay in `docs/assets/v6.7.0/`.
Hook `22379293`.  `IsVersionOf` `22272382` metadata only.
Original-family latest remains `22322627`.

# FINAL v8.19.9 — A⁴≡k¹³ mod B forces k%4=1 / k%8=1 when B%4=0 / B%8=0 (arrow stays a Prop)

Latest tag `v8.19.9-fourth-power-residue`.
Lean change.
For odd `A`, `A⁴ ≡ 1 [MOD 4]` and
`A⁴ ≡ 1 [MOD 8]`.  Odd `k` has
`k¹³ ≡ k` at those moduli.  So
`A⁴ ≡ k¹³ [MOD B]` with `B % 4 = 0`
forces `k % 4 = 1`, and `B % 8 = 0`
forces `k % 8 = 1`.
Without odd `A` the residue claim
stays uninhabited.
v8.19.8 `k` odd / coprime /
`A⁴ ≡ k¹³` stay.
v8.19.7 `A⁴ ≥ 13 k B¹²` / `39 B¹²`
and `A ≥ 2 B³ + 1` stay.
v8.19.6 `B ≤ 100` with `C = B+1` and
`C = B+2` stays closed.
`zsigmondy_13` stays inhabited.
The general `beal_4_13_13_size` stays
uninhabited.
`ExistsNewformLevel2` stays `0 ≠ 0`.
`beal_from_ribet` stays *from*
`ModularImpliesLevel2Newform`.
Does **not** inhabit
`Beal.BealForall.beal_forall_from_Is13Case_sketch`.
**No `sorry`**, **no `False.elim`**.
Official none-chain build stays **24 modules**.
Latest written mint
[10.5281/zenodo.22654189](https://doi.org/10.5281/zenodo.22654189)
(`v8.19.9-fourth-power-residue` houseclean archive).
Track A none-chain mint stays
[10.5281/zenodo.22635221](https://doi.org/10.5281/zenodo.22635221).
This mint does **not** claim unconditional Beal `∀`.
Three JPEG plates stay in `docs/assets/v6.7.0/`.
Hook `22379293`.  `IsVersionOf` `22272382` metadata only.
Original-family latest remains `22322627`.

# FINAL v8.19.8 — k=C−B odd, gcd(k,B)=1, gcd(A,B)=1, A⁴≡k¹³ mod B (arrow stays a Prop)

Latest tag `v8.19.8-k-odd-coprime`.
Lean change.
Odd `A` forces `k = C−B` odd.
`Coprime C B` and `C ≥ B` give
`Coprime k B`.  `Coprime C B` plus
the equation give `Coprime A B`.
`A⁴ ≡ k¹³ [MOD B]`.
Without `C ≥ B` the gcd claim is
false (`C = 1`, `B = 2`).
v8.19.7 `A⁴ ≥ 13 k B¹²` / `39 B¹²`
and `A ≥ 2 B³ + 1` stay.
v8.19.6 `B ≤ 100` with `C = B+1` and
`C = B+2` stays closed.
`zsigmondy_13` stays inhabited.
The general `beal_4_13_13_size` stays
uninhabited.
`ExistsNewformLevel2` stays `0 ≠ 0`.
`beal_from_ribet` stays *from*
`ModularImpliesLevel2Newform`.
Does **not** inhabit
`Beal.BealForall.beal_forall_from_Is13Case_sketch`.
**No `sorry`**, **no `False.elim`**.
Official none-chain build stays **24 modules**.
Latest written mint
[10.5281/zenodo.22635221](https://doi.org/10.5281/zenodo.22635221)
(v7.1.1 About catch-up, Track A).  Track B does **not**
write a new mint claiming unconditional Beal `∀`.
Three JPEG plates stay in `docs/assets/v6.7.0/`.
Hook `22379293`.  `IsVersionOf` `22272382` metadata only.
Original-family latest remains `22322627`.

# FINAL v8.19.7 — C≥B+k gives A⁴≥13k B¹²; C≥B+3 gives A⁴≥39 B¹² (arrow stays a Prop)

Latest tag `v8.19.7-general-k`.
Lean change.
`C ≥ B+k` gives `A⁴ ≥ 13 k B¹²`
from the 13-term cyclotomic sum
(each term `≥ B¹²` when `C ≥ B`).
`C ≥ B+3` specialises to `A⁴ ≥ 39 B¹²`,
so in reals `A ≥ 39^{1/4} B³ ≈ 2.49 B³`.
For `B ≥ 1` this is already `A ≥ 2 B³ + 1`.
`A ≥ 3 B³` stays uninhabited (`39 < 81`).
v8.19.6 `B ≤ 100` with `C = B+1` and
`C = B+2` stays closed.
`zsigmondy_13` stays inhabited.
The general `beal_4_13_13_size` stays
uninhabited.
`ExistsNewformLevel2` stays `0 ≠ 0`.
`beal_from_ribet` stays *from*
`ModularImpliesLevel2Newform`.
Does **not** inhabit
`Beal.BealForall.beal_forall_from_Is13Case_sketch`.
**No `sorry`**, **no `False.elim`**.
Official none-chain build stays **24 modules**.
Latest written mint
[10.5281/zenodo.22635221](https://doi.org/10.5281/zenodo.22635221)
(v7.1.1 About catch-up, Track A).  Track B does **not**
write a new mint claiming unconditional Beal `∀`.
Three JPEG plates stay in `docs/assets/v6.7.0/`.
Hook `22379293`.  `IsVersionOf` `22272382` metadata only.
Original-family latest remains `22322627`.

# FINAL v8.19.6 — B≤100 C∈{B+1,B+2} closed for odd A (arrow stays a Prop)

Latest tag `v8.19.6-B-le-100-closed`.
Lean change.
`B ≤ 100` and `C = B+1` or `C = B+2`
closes for odd `A` by combining
`A ≥ 53`, `A ≥ B³`, and the decide
tables.  `C ≥ B+3` stays open.
`B > 100` stays open.
`zsigmondy_13` stays inhabited.
The general `beal_4_13_13_size` stays
uninhabited.
`ExistsNewformLevel2` stays `0 ≠ 0`.
`beal_from_ribet` stays *from*
`ModularImpliesLevel2Newform`.
Does **not** inhabit
`Beal.BealForall.beal_forall_from_Is13Case_sketch`.
**No `sorry`**, **no `False.elim`**.
Official none-chain build stays **24 modules**.
Latest written mint
[10.5281/zenodo.22635221](https://doi.org/10.5281/zenodo.22635221)
(v7.1.1 About catch-up, Track A).  Track B does **not**
write a new mint claiming unconditional Beal `∀`.
Three JPEG plates stay in `docs/assets/v6.7.0/`.
Hook `22379293`.  `IsVersionOf` `22272382` metadata only.
Original-family latest remains `22322627`.

# FINAL v8.19.5 — order 13 forces p≡1 mod 13, p≥53, A≥53 (arrow stays a Prop)

Latest tag `v8.19.5-p-mod-13-eq-1`.
Lean change.
A primitive prime of `C¹³ − B¹³`
has multiplicative order 13, so
`13 ∣ (p−1)`, `p ≡ 1 [MOD 13]`,
`p ≥ 53`, and odd `A ≥ 3` has
`A ≥ 53`.  `A ≥ 53` does not close
`¬ A⁴ + B¹³ = C¹³`.
`zsigmondy_13` stays inhabited.
The general `beal_4_13_13_size` stays
uninhabited.
`ExistsNewformLevel2` stays `0 ≠ 0`.
`beal_from_ribet` stays *from*
`ModularImpliesLevel2Newform`.
Does **not** inhabit
`Beal.BealForall.beal_forall_from_Is13Case_sketch`.
**No `sorry`**, **no `False.elim`**.
Official none-chain build stays **24 modules**.
Latest written mint
[10.5281/zenodo.22635221](https://doi.org/10.5281/zenodo.22635221)
(v7.1.1 About catch-up, Track A).  Track B does **not**
write a new mint claiming unconditional Beal `∀`.
Three JPEG plates stay in `docs/assets/v6.7.0/`.
Hook `22379293`.  `IsVersionOf` `22272382` metadata only.
Original-family latest remains `22322627`.

# FINAL v8.19.4 — p∣S and Coprime C B contradiction (arrow stays a Prop)

Latest tag `v8.19.4-zsigmondy-13-step4`.
Lean change.
`p ∣ (C¹³ − B¹³)` and `p ∤ (C−B)`
give `p ∣ S`.  Then `p ∣ B` and
`p ∣ S` force `p ∣ C`, against
`Coprime C B`.  The attempt
`p ∣ S ∧ p ∣ A → p ∣ B` is the
opposite direction and stays
uninhabited.  `zsigmondy_13` stays
inhabited.  The general
`beal_4_13_13_size` stays
uninhabited.
`ExistsNewformLevel2` stays `0 ≠ 0`.
`beal_from_ribet` stays *from*
`ModularImpliesLevel2Newform`.
Does **not** inhabit
`Beal.BealForall.beal_forall_from_Is13Case_sketch`.
**No `sorry`**, **no `False.elim`**.
Official none-chain build stays **24 modules**.
Latest written mint
[10.5281/zenodo.22635221](https://doi.org/10.5281/zenodo.22635221)
(v7.1.1 About catch-up, Track A).  Track B does **not**
write a new mint claiming unconditional Beal `∀`.
Three JPEG plates stay in `docs/assets/v6.7.0/`.
Hook `22379293`.  `IsVersionOf` `22272382` metadata only.
Original-family latest remains `22322627`.

# FINAL v8.19.3 — Zsigmondy at n=13; p∣A and p∤(C−B) (arrow stays a Prop)

Latest tag `v8.19.3-zsigmondy-13`.
Lean change.
Mathlib 4.12 has no
`Mathlib.NumberTheory.Zsigmondy`.
Exceptions `(2,1,6)` and `n=2` fail by
`decide`.  `Φ₁₃(C,B)` has a prime
`p ≠ 13`, and that prime is primitive
for `C¹³ − B¹³`.  `zsigmondy_13` is
inhabited.  `beal_odd_A_ge3_size_gap`
gives `p ∣ A` and `p ∤ (C−B)`.
The general `beal_4_13_13_size` stays
uninhabited.
`ExistsNewformLevel2` stays `0 ≠ 0`.
`beal_from_ribet` stays *from*
`ModularImpliesLevel2Newform`.
Does **not** inhabit
`Beal.BealForall.beal_forall_from_Is13Case_sketch`.
**No `sorry`**, **no `False.elim`**.
Official none-chain build stays **24 modules**.
Latest written mint
[10.5281/zenodo.22635221](https://doi.org/10.5281/zenodo.22635221)
(v7.1.1 About catch-up, Track A).  Track B does **not**
write a new mint claiming unconditional Beal `∀`.
Three JPEG plates stay in `docs/assets/v6.7.0/`.
Hook `22379293`.  `IsVersionOf` `22272382` metadata only.
Original-family latest remains `22322627`.

# FINAL v8.19.2 — C≥B+2 gives A⁴≥26 B¹² (arrow stays a Prop)

Latest tag `v8.19.2-C-ge-B+2`.
Lean change.
`C¹³ − B¹³ = (C−B) · (13-term sum)`,
each term `≥ B¹²`.  `C ≥ B+2` forces
`C−B ≥ 2`, so `A⁴ ≥ 26 B¹²`.  The
`C = B+2` table `B ∈ [1, 100]`
kernel-checks that bound.  Not
`interval_cases` on unbounded `C−B`.
`zsigmondy_13` and the general
`beal_4_13_13_size` stay uninhabited.
`ExistsNewformLevel2` stays `0 ≠ 0`.
`beal_from_ribet` stays *from*
`ModularImpliesLevel2Newform`.
Does **not** inhabit
`Beal.BealForall.beal_forall_from_Is13Case_sketch`.
**No `sorry`**, **no `False.elim`**.
Official none-chain build stays **24 modules**.
Latest written mint
[10.5281/zenodo.22635221](https://doi.org/10.5281/zenodo.22635221)
(v7.1.1 About catch-up, Track A).  Track B does **not**
write a new mint claiming unconditional Beal `∀`.
Three JPEG plates stay in `docs/assets/v6.7.0/`.
Hook `22379293`.  `IsVersionOf` `22272382` metadata only.
Original-family latest remains `22322627`.

# FINAL v8.19.1 — C=B+1 size bound and B≤100 table (arrow stays a Prop)

Latest tag `v8.19.1-beal-4-13-13-size`.
Lean change.
`(B+1)¹³ − B¹³ ≥ 13 B¹²` by the
geometric-sum factorisation.  A positive
`A⁴ + B¹³ = C¹³` has `A⁴ ≥ 13 B¹²`
and `A ≥ B³`.  The `C = B+1` table
`B ∈ [1, 100]` is not a fourth power.
`zsigmondy_13` and the general
`beal_4_13_13_size` stay uninhabited.
`ExistsNewformLevel2` stays `0 ≠ 0`.
`beal_from_ribet` stays *from*
`ModularImpliesLevel2Newform`.
Does **not** inhabit
`Beal.BealForall.beal_forall_from_Is13Case_sketch`.
**No `sorry`**, **no `False.elim`**.
Official none-chain build stays **24 modules**.
Latest written mint
[10.5281/zenodo.22635221](https://doi.org/10.5281/zenodo.22635221)
(v7.1.1 About catch-up, Track A).  Track B does **not**
write a new mint claiming unconditional Beal `∀`.
Three JPEG plates stay in `docs/assets/v6.7.0/`.
Hook `22379293`.  `IsVersionOf` `22272382` metadata only.
Original-family latest remains `22322627`.

# FINAL v8.19.0 — Rational genus of X₀(2); BealAArm split (arrow stays a Prop)

Latest tag `v8.19.0-ExistsNewformLevel2`.
Lean change.
`genus_X0_2_rat = 0` over `ℚ` from the
classical counts `μ=3`, `ν₂=1`, `ν₃=0`,
`ν∞=2`.  `ℕ` division is not this formula.
`BealAArm.of_pos` splits a positive
`4,13,13` base; `beal_odd_A_ge3_not_mixed`
follows from the Mixed-iff-pow2 lock.
`ExistsNewformLevel2` stays `0 ≠ 0`.
`beal_mixed_pow2_implies_level_2_newform`
and `beal_from_ribet_upside_down` stay
uninhabited (no Ribet functor, no
Zsigmondy).  `beal_from_ribet` stays
*from* `ModularImpliesLevel2Newform`.
Does **not** inhabit
`Beal.BealForall.beal_forall_from_Is13Case_sketch`.
**No `sorry`**, **no `False.elim`**.
Official none-chain build stays **24 modules**.
Latest written mint
[10.5281/zenodo.22635221](https://doi.org/10.5281/zenodo.22635221)
(v7.1.1 About catch-up, Track A).  Track B does **not**
write a new mint claiming unconditional Beal `∀`.
Three JPEG plates stay in `docs/assets/v6.7.0/`.
Hook `22379293`.  `IsVersionOf` `22272382` metadata only.
Original-family latest remains `22322627`.

# FINAL v8.18.0 — TWAuxEllFixed product for every N≤10000 on the table (arrow stays a Prop)

Latest tag `v8.18.0-product`.
Lean change.
`TWAuxEllFixedExists_all_N_le_10000` and
`TWAuxEllFixed_inhabited_for_every_ell_le_1000_product`
inhabit every `N ≤ 10000` on `InTWEll1000`
by transporting the `N = 10000` row
(`Qᵢ > 10000 ≥ N`).  Not a 1.66M-row
`decide` / `Finset.product` expansion.
Not `Nat.Prime → 5 ≤ ℓ ≤ 1000`.  Reused
`Q₁` is not `≤ N + 21000` for small `N`
(`ℓ = 941` is `30113`).  Mixed / odd-`A`
facts are unchanged.
`beal_from_ribet_ell_mixed` stays *from*
`ModularImpliesLevel2Newform`.
Does **not** inhabit
`Beal.BealForall.beal_forall_from_Is13Case_sketch`.
**No `sorry`**, **no `False.elim`**.
Official none-chain build stays **24 modules**.
Latest written mint
[10.5281/zenodo.22635221](https://doi.org/10.5281/zenodo.22635221)
(v7.1.1 About catch-up, Track A).  Track B does **not**
write a new mint claiming unconditional Beal `∀`.
Three JPEG plates stay in `docs/assets/v6.7.0/`.
Hook `22379293`.  `IsVersionOf` `22272382` metadata only.
Original-family latest remains `22322627`.

# FINAL v8.17.0 — TWAuxEllFixed at N=26 and N=10000 (arrow stays a Prop)

Latest tag `v8.17.0-twaux-26-and-10000`.
Lean change.
`TWAuxEllFixedExists_26_all` and
`TWAuxEllFixedExists_10000_all` inhabit
`TWAuxEllFixed ℓ N` for every residual in
`InTWEll1000` at the two conductors
`N = 26` and `N = 10000`.  `Qᵢ > N` so
`Qᵢ ∤ N`.  `ℓ = 941` needs `Q₁ = 30113`
(`N + 21000`).  `∀ N ≤ 10000` stays
uninhabited.  Completeness
`Nat.Prime → 5 ≤ ℓ ≤ 1000` is
kernel-checked only on `[5, 100]` via
`Finset.filter`.  Mixed / odd-`A` facts
are unchanged.  `beal_from_ribet_ell_mixed`
stays *from* `ModularImpliesLevel2Newform`.
Does **not** inhabit
`Beal.BealForall.beal_forall_from_Is13Case_sketch`.
**No `sorry`**, **no `False.elim`**.
Official none-chain build stays **24 modules**.
Latest written mint
[10.5281/zenodo.22635221](https://doi.org/10.5281/zenodo.22635221)
(v7.1.1 About catch-up, Track A).  Track B does **not**
write a new mint claiming unconditional Beal `∀`.
Three JPEG plates stay in `docs/assets/v6.7.0/`.
Hook `22379293`.  `IsVersionOf` `22272382` metadata only.
Original-family latest remains `22322627`.

# FINAL v8.16.0 — Finite Q₂ table within 100M (arrow stays a Prop)

Latest tag `v8.16.0-q2-table-100M`.
Lean change.
`exists_prime_one_mod_ell_sq_all` is inhabited
on `InTWEll1000` with bound `10⁸` via Pratt
certificates.  The 56 residuals that missed
`5·10⁶` are included (`919 → 59119271`).
Not Dirichlet, not `∀ N ≤ 10000`.
`TWAuxEllFixed_inhabited_for_every_ell_le_1000`
stays uninhabited.  Mixed / odd-`A` facts
are unchanged.  `beal_from_ribet_ell_mixed`
stays *from* `ModularImpliesLevel2Newform`.
Does **not** inhabit
`Beal.BealForall.beal_forall_from_Is13Case_sketch`.
**No `sorry`**, **no `False.elim`**.
Official none-chain build stays **24 modules**.
Latest written mint
[10.5281/zenodo.22635221](https://doi.org/10.5281/zenodo.22635221)
(v7.1.1 About catch-up, Track A).  Track B does **not**
write a new mint claiming unconditional Beal `∀`.
Three JPEG plates stay in `docs/assets/v6.7.0/`.
Hook `22379293`.  `IsVersionOf` `22272382` metadata only.
Original-family latest remains `22322627`.

# FINAL v8.15.0 — Finite Q₁ table for residuals in [5, 1000] (arrow stays a Prop)

Latest tag `v8.15.0-dirichlet-up-to-1000`.
Lean change.
`TWPrimes.lean` is a 166-row table
`InTWEll1000` of primes `Q₁ ≡ 1 [MOD ℓ]`
with `Q₁ ≤ 20000`.  Not Dirichlet, not
`∀ N ≤ 10000`, and not `Q₂ ≡ 1 [MOD ℓ²]`
for every residual (56 miss `5·10⁶`).
`Q1_not_dvd_N_of_Q1_gt_N` needs `0 < N < Q₁`.
`TWAuxEllFixed.of5_26` / `of7_26` / `of13_26`
are explicit.  Mixed / odd-`A` facts are
unchanged.  `beal_from_ribet_ell_mixed`
stays *from* `ModularImpliesLevel2Newform`.
Does **not** inhabit
`Beal.BealForall.beal_forall_from_Is13Case_sketch`.
**No `sorry`**, **no `False.elim`**.
Official none-chain build stays **24 modules**.
Latest written mint
[10.5281/zenodo.22635221](https://doi.org/10.5281/zenodo.22635221)
(v7.1.1 About catch-up, Track A).  Track B does **not**
write a new mint claiming unconditional Beal `∀`.
Three JPEG plates stay in `docs/assets/v6.7.0/`.
Hook `22379293`.  `IsVersionOf` `22272382` metadata only.
Original-family latest remains `22322627`.

# FINAL v8.14.0 — Odd-A residues; A=1 impossible; Mixed is not a cover (arrow stays a Prop)

Latest tag `v8.14.0-mixed-odd-A`.
Lean change.
`RibetMazur.lean` proves odd `A⁴ ≡ 1 [MOD 16]`,
odd `B¹³ ≡ B [MOD 8]`, `A⁴ ≡ C−B [MOD 13]`,
and `1 + B¹³ = C¹³` is impossible.  Mixed
covers `4,13,13` **iff** `A=2^e`; odd `A ≥ 3`
is not closed.  `beal_from_ribet_ell_mixed`
stays *from* `ModularImpliesLevel2Newform`.
Does **not** inhabit
`Beal.BealForall.beal_forall_from_Is13Case_sketch`.
**No `sorry`**, **no `False.elim`**.
Official none-chain build stays **24 modules**.
Latest written mint
[10.5281/zenodo.22635221](https://doi.org/10.5281/zenodo.22635221)
(v7.1.1 About catch-up, Track A).  Track B does **not**
write a new mint claiming unconditional Beal `∀`.
Three JPEG plates stay in `docs/assets/v6.7.0/`.
Hook `22379293`.  `IsVersionOf` `22272382` metadata only.
Original-family latest remains `22322627`.

# FINAL v8.13.0 — Mixed A=2^e + TWAuxEllFixed (arrow stays a Prop)

Latest tag `v8.13.0-mixed-ell-plus-dirichlet`.
Lean change.
`RibetMazur.lean` adds `FreyEllCase5Mixed`
(covers `m=4,n=13,p=13` when `A=2^e`) and
`TWAuxEllFixed ℓ N` with `N < Qᵢ`.
Listed `Q₁` for nine small residuals only.
`beal_from_ribet_ell_mixed` stays *from*
`ModularImpliesLevel2Newform`.
Does **not** inhabit
`Beal.BealForall.beal_forall_from_Is13Case_sketch`.
**No `sorry`**, **no `False.elim`**.
Official none-chain build stays **24 modules**.
Latest written mint
[10.5281/zenodo.22635221](https://doi.org/10.5281/zenodo.22635221)
(v7.1.1 About catch-up, Track A).  Track B does **not**
write a new mint claiming unconditional Beal `∀`.
Three JPEG plates stay in `docs/assets/v6.7.0/`.
Hook `22379293`.  `IsVersionOf` `22272382` metadata only.
Original-family latest remains `22322627`.

# FINAL v8.12.0 — FLT n=4 for power-of-2 exponents + TW search at ℓ (arrow stays a Prop)

Latest tag `v8.12.0-fermat-four-plus-RinfTinf-ell`.
Lean change.
`RibetMazur.lean` adds `fermat_four_lemma`
(Mathlib `fermatLastTheoremFour`),
`FermatFourCase` / `beal_pow2_exponents`,
and `TWAuxEll` search tokens
`Q₁ ≡ 1 [MOD ℓ]`.
`beal_from_ribet_ell_upgraded` stays *from*
`ModularImpliesLevel2Newform`.
Does **not** inhabit
`Beal.BealForall.beal_forall_from_Is13Case_sketch`.
**No `sorry`**, **no `False.elim`**.
Official none-chain build stays **24 modules**.
Latest written mint
[10.5281/zenodo.22635221](https://doi.org/10.5281/zenodo.22635221)
(v7.1.1 About catch-up, Track A).  Track B does **not**
write a new mint claiming unconditional Beal `∀`.
Three JPEG plates stay in `docs/assets/v6.7.0/`.
Hook `22379293`.  `IsVersionOf` `22272382` metadata only.
Original-family latest remains `22322627`.

# FINAL v8.11.0 — Frey-ℓ case, `N/∏q=2` at every odd q (arrow stays a Prop)

Latest tag `v8.11.0-frey-ell-case`.
Lean change.
`RibetMazur.lean` adds `FreyEllCase5`,
`ell_of_q` (`ℓ | v_q(Δ)` at every odd `q`),
`mazur_step_ell`, and
`ribet_iterated_ell_case` with arithmetic
`N / ∏q = 2` under `FreyEllCase5`.
`beal_from_ribet_ell_case` stays *from*
`ModularImpliesLevel2Newform`.
Does **not** inhabit
`Beal.BealForall.beal_forall_from_Is13Case_sketch`.
**No `sorry`**, **no `False.elim`**.
Official none-chain build stays **24 modules**.
Latest written mint
[10.5281/zenodo.22635221](https://doi.org/10.5281/zenodo.22635221)
(v7.1.1 About catch-up, Track A).  Track B does **not**
write a new mint claiming unconditional Beal `∀`.
Three JPEG plates stay in `docs/assets/v6.7.0/`.
Hook `22379293`.  `IsVersionOf` `22272382` metadata only.
Original-family latest remains `22322627`.

# FINAL v8.10.0 — Frey a_q=±1 + 13|v_q(Δ) + ModSym token (arrow stays a Prop)

Latest tag `v8.10.0-frey-aq-pm1-real`.
Lean change.
`RibetMazur.lean` adds `frey_a_q_real`
(`(-c₆/q)=±1`), `J0_N_real` as a packed
`ModSym` token, and `mazur_step_real_fixed`
only when `13 ∣ v_q(Δ)`.
`ribet_iterated_real_fixed` is **not**
`N/∏q=2` unless `Frey13Case`.
`beal_from_ribet_real_fixed` stays *from*
`ModularImpliesLevel2Newform`.
Does **not** inhabit
`Beal.BealForall.beal_forall_from_Is13Case_sketch`.
**No `sorry`**, **no `False.elim`**.
Official none-chain build stays **24 modules**.
Latest written mint
[10.5281/zenodo.22635221](https://doi.org/10.5281/zenodo.22635221)
(v7.1.1 About catch-up, Track A).  Track B does **not**
write a new mint claiming unconditional Beal `∀`.
Three JPEG plates stay in `docs/assets/v6.7.0/`.
Hook `22379293`.  `IsVersionOf` `22272382` metadata only.
Original-family latest remains `22322627`.

# FINAL v8.9.0 — packed X0(N)/J0(N) + Frey Steinberg label (arrow stays a Prop)

Latest tag `v8.9.0-explicit-J0N`.
Lean change.
`RibetMazur.lean` adds packed `X0_N_Model` /
`J0_N_Model` tokens and `frey_a_q_is_pm1`
(Tate Steinberg, not Frey `a_q = ±1`).
`ribet_iterated_real_fixed` is that pack plus
`N/∏q=2`, **not** `ExistsNewformLevel2`
(`0 ≠ 0`).  `beal_from_ribet_real_fixed`
stays *from* `ModularImpliesLevel2Newform`.
Does **not** inhabit
`Beal.BealForall.beal_forall_from_Is13Case_sketch`.
**No `sorry`**, **no `False.elim`**.
Official none-chain build stays **24 modules**.
Latest written mint
[10.5281/zenodo.22635221](https://doi.org/10.5281/zenodo.22635221)
(v7.1.1 About catch-up, Track A).  Track B does **not**
write a new mint claiming unconditional Beal `∀`.
Three JPEG plates stay in `docs/assets/v6.7.0/`.
Hook `22379293`.  `IsVersionOf` `22272382` metadata only.
Original-family latest remains `22322627`.

# FINAL v8.8.0 — HeckeAction_N + Mazur-step real pack (arrow stays a Prop)

Latest tag `v8.8.0-ribet-proof`.
Lean change.
`RibetMazur.lean` adds `HeckeAction_N` and
`mazur_step_real`.  `ribet_iterated_real`
is that pack plus `N/∏q=2`, **not**
`ExistsNewformLevel2` (`0 ≠ 0`).
`beal_from_ribet_real` stays *from*
`ModularImpliesLevel2Newform`.
Does **not** inhabit
`Beal.BealForall.beal_forall_from_Is13Case_sketch`.
**No `sorry`**, **no `False.elim`**.
Official none-chain build stays **24 modules**.
Latest written mint
[10.5281/zenodo.22635221](https://doi.org/10.5281/zenodo.22635221)
(v7.1.1 About catch-up, Track A).  Track B does **not**
write a new mint claiming unconditional Beal `∀`.
Three JPEG plates stay in `docs/assets/v6.7.0/`.
Hook `22379293`.  `IsVersionOf` `22272382` metadata only.
Original-family latest remains `22322627`.

# FINAL v8.7.0 — explicit q-expansions + Mazur-step pack (arrow stays a Prop)

Latest tag `v8.7.0-ribet-q-mazur`.
Lean change.
`RibetMazur.lean` adds `q_expansion_26a1`/`26b1`
and `mazur_principle_step`.  `ribet_iterated`
is that pack plus `N/∏q=2`, **not**
`ExistsNewformLevel2` (`0 ≠ 0`).
`beal_from_ribet` stays *from*
`ModularImpliesLevel2Newform`.
Does **not** inhabit
`Beal.BealForall.beal_forall_from_Is13Case_sketch`.
**No `sorry`**, **no `False.elim`**.
Official none-chain build stays **24 modules**.
Latest written mint
[10.5281/zenodo.22635221](https://doi.org/10.5281/zenodo.22635221)
(v7.1.1 About catch-up, Track A).  Track B does **not**
write a new mint claiming unconditional Beal `∀`.
Three JPEG plates stay in `docs/assets/v6.7.0/`.
Hook `22379293`.  `IsVersionOf` `22272382` metadata only.
Original-family latest remains `22322627`.

# FINAL v8.6.0 — Frey residual + Hecke/TW pack (arrow stays a Prop)

Latest tag `v8.6.0-level-lowering-term`.
Lean change.
`LevelLowering.lean` adds `Frey_GaloisRep` and
`level_lowering_to_2_term` (Hecke `26a1`/`26b1`,
TW `53`/`677`, `N/∏q=2`).  That pack is **not**
`ExistsNewformLevel2` (`0 ≠ 0`).
`beal_positive_bases_unconditional` stays *from*
`ModularImpliesLevel2Newform`.
Does **not** inhabit
`Beal.BealForall.beal_forall_from_Is13Case_sketch`.
**No `sorry`**, **no `False.elim`**.
Official none-chain build stays **24 modules**.
Latest written mint
[10.5281/zenodo.22635221](https://doi.org/10.5281/zenodo.22635221)
(v7.1.1 About catch-up, Track A).  Track B does **not**
write a new mint claiming unconditional Beal `∀`.
Three JPEG plates stay in `docs/assets/v6.7.0/`.
Hook `22379293`.  `IsVersionOf` `22272382` metadata only.
Original-family latest remains `22322627`.

# FINAL v8.5.0 — Ω¹ of the affine hyperelliptic model (arrow stays a Prop)

Latest tag `v8.5.0-cotangent-sheaf`.
Lean change.
`X0_26_Model.lean` adds `AdjoinRoot (Y²−f)` and
Mathlib `Ω[R⁄ℚ]`, with `2 y dy = f'(x) dx`.
The v8.4.0 localized matrix is the integral
model of that displayed sheaf at 3.
`X0_26_Q_points_cusps_model_real` is Chabauty
*input*, not a Mathlib `X₀(26)(ℚ)` theorem.
`beal_positive_bases` stays *from*
`ModularImpliesLevel2Newform`.
`ExistsNewformLevel2` is `0 ≠ 0`.
Does **not** inhabit
`Beal.BealForall.beal_forall_from_Is13Case_sketch`.
**No `sorry`**, **no `False.elim`**.
Official none-chain build stays **24 modules**.
Latest written mint
[10.5281/zenodo.22635221](https://doi.org/10.5281/zenodo.22635221)
(v7.1.1 About catch-up, Track A).  Track B does **not**
write a new mint claiming unconditional Beal `∀`.
Three JPEG plates stay in `docs/assets/v6.7.0/`.
Hook `22379293`.  `IsVersionOf` `22272382` metadata only.
Original-family latest remains `22322627`.

# FINAL v8.4.0 — localized cotangent over ℤ_{(3)} (arrow stays a Prop)

Latest tag `v8.4.0-formal-immersion`.
Lean change.
`X0_26_Model.lean` localizes `M_ℤ = [[1,1],[0,2]]`
at `(2)` and `(3)`.  `formal_immersion_at_3` is
`IsUnit det` over `ℤ_{(3)}` (`v₃(2)=0`, Nakayama
`GL₂` form).  `formal_immersion_at_2` stays the
honest `ℤ`-model with `v₂(det)=1`.
`X0_26_Q_points_cusps_model_real` is Chabauty
*input*, not a Mathlib `X₀(26)(ℚ)` theorem.
`beal_positive_bases` stays *from*
`ModularImpliesLevel2Newform`.
`ExistsNewformLevel2` is `0 ≠ 0`.
Does **not** inhabit
`Beal.BealForall.beal_forall_from_Is13Case_sketch`.
**No `sorry`**, **no `False.elim`**.
Official none-chain build stays **24 modules**.
Latest written mint
[10.5281/zenodo.22635221](https://doi.org/10.5281/zenodo.22635221)
(v7.1.1 About catch-up, Track A).  Track B does **not**
write a new mint claiming unconditional Beal `∀`.
Three JPEG plates stay in `docs/assets/v6.7.0/`.
Hook `22379293`.  `IsVersionOf` `22272382` metadata only.
Original-family latest remains `22322627`.

# FINAL v8.3.0 — explicit X₀(26) polynomial / T_q / lowering pack (arrow stays a Prop)

Latest tag `v8.3.0-explicit-X0-26`.
Lean change.
`X0_26_Model.lean`, `HeckeAction.lean`,
`LevelLowering.lean` add the Sage canonical
polynomial `y² = x⁶−8x⁵+22x⁴−20x³+5x²+4x−4`,
the integral matrix `M_ℤ` with `det = 2`,
weight-2 `T_q` on ledger prefixes, and TW
patching at `53`/`677`.
`beal_positive_bases` stays *from*
`ModularImpliesLevel2Newform`.
`ExistsNewformLevel2` is `0 ≠ 0`.
Does **not** inhabit
`Beal.BealForall.beal_forall_from_Is13Case_sketch`.
**No `sorry`**, **no `False.elim`**.
Official none-chain build stays **24 modules**.
Latest written mint
[10.5281/zenodo.22635221](https://doi.org/10.5281/zenodo.22635221)
(v7.1.1 About catch-up, Track A).  Track B does **not**
write a new mint claiming unconditional Beal `∀`.
Three JPEG plates stay in `docs/assets/v6.7.0/`.
Hook `22379293`.  `IsVersionOf` `22272382` metadata only.
Original-family latest remains `22322627`.

# FINAL v8.2.0 — packed scheme / Hecke / Ribet models (arrow stays a Prop)

Latest tag `v8.2.0-scheme-hecke-ribet`.
Lean change.
`GeometryScheme.lean`, `HeckeAlgebra.lean`,
`RibetFunctor.lean` lift PARI certs to packed
`X₀(26)` / `J₀(26)` models, TW-tower `R≃T`,
and functorial lowering `N → 2`.
`ModularImpliesLevel2Newform_Real` stays the
v8.1.0 Prop.  `ExistsNewformLevel2` is `0 ≠ 0`.
Does **not** inhabit
`Beal.BealForall.beal_forall_from_Is13Case_sketch`.
**No `sorry`**, **no `False.elim`**.
Official none-chain build stays **24 modules**.
Latest written mint
[10.5281/zenodo.22635221](https://doi.org/10.5281/zenodo.22635221)
(v7.1.1 About catch-up, Track A).  Track B does **not**
write a new mint claiming unconditional Beal `∀`.
Three JPEG plates stay in `docs/assets/v6.7.0/`.
Hook `22379293`.  `IsVersionOf` `22272382` metadata only.
Original-family latest remains `22322627`.

# FINAL v8.1.0 — ModularImpliesNewform arithmetic (arrow stays a Prop)

Latest tag `v8.1.0-modular-implies-newform`.
Lean change.
`lean/BealLevel26Foundations/Beal/FullProof/ModularImpliesNewform.lean`
proves Step 5 arithmetic on `PositiveBealTriple`:
Ribet `N/∏q=2`, TW `4·13ⁿ+1` (`53%13=1`, `677%169=1`),
`R≃T`, Mathlib `Γ₀(2)`, displayed `S₂(Γ₀(2))=0`,
`no_noncuspidal_Q_points`, `M₃` det 2.
`ModularImpliesLevel2Newform` stays the missing
Mathlib arrow.  `beal_forall_proof` equals
`beal_forall_proof_positive` (still conditional).
`sketch_fails_on_zero_one_counterexample` is `¬`
the unguarded sketch (`0³ + 1³ = 1³`).
Does **not** inhabit
`Beal.BealForall.beal_forall_from_Is13Case_sketch`.
**No `sorry`**, **no `False.elim`**.
Official none-chain build stays **24 modules**.
Latest written mint
[10.5281/zenodo.22635221](https://doi.org/10.5281/zenodo.22635221)
(v7.1.1 About catch-up, Track A).  Track B does **not**
write a new mint claiming unconditional Beal `∀`.
Three JPEG plates stay in `docs/assets/v6.7.0/`.
Hook `22379293`.  `IsVersionOf` `22272382` metadata only.
Original-family latest remains `22322627`.

# FINAL v7.4.0 — GeometryBridge Mazur geometry filled

Latest tag `v7.4.0-geometry-filled`.
Lean change.
`lean/BealLevel26Foundations/Beal/FullProof/GeometryBridge.lean`
replaces JSON / M₃ tokens with theorems:
`J₀(26)` dimension `2 = 1 + 1` as
`E_{26a1} × E_{26b1}` (`Δ = -17576`, `Δ = -1664`);
`Pic⁰ = J₀` as that product; formal immersion at 2
via `M₃ = [[1, 1], [0, 2]]`, `det = 2`,
`ω₁ = dx/y`, `ω₂ = x dx/y`; `X₀(26)(ℚ)` labels
`[1, 2, 13, 26]` so `¬ ExistsNoncuspidal_26`;
`|Sel₂| = 1` and certified rank `0`.
`#print axioms` is `[propext, Classical.choice, Quot.sound]`.
Does **not** inhabit
`beal_forall_from_Is13Case_sketch`.
**No `sorry`**, **no `False.elim`**.
Official none-chain build stays **24 modules**.
FullProof track is **26 modules** (TrueConductor +
ModularityRibet + GeometryBridge on the FullProof root).
Latest written mint
[10.5281/zenodo.22635221](https://doi.org/10.5281/zenodo.22635221)
(v7.1.1 About catch-up).  The new v7.4.0 mint is
**not** written into About until the next catch-up.
Three JPEG plates stay in `docs/assets/v6.7.0/`.
Hook `22379293`.  `IsVersionOf` `22272382` metadata only.
Original-family latest remains `22322627`.

# FINAL v7.3.0 — ModularityRibet Ribet + R=T filled

Latest tag `v7.3.0-ribet-rt-filled`.
Lean change.
`lean/BealLevel26Foundations/Beal/FullProof/ModularityRibet.lean`
replaces displayed `26/13=2`, `53%13=1`, `677%169=1`
tokens with theorems on the TrueConductor conductor
`N = rad(ABC)`: Wiles domain, Ribet quotient
`N / ∏_{odd q|ABC} q = 2`, `det = χ_l`, TW family
`q_n = 4 · 13ⁿ + 1`, bookkeeping `R_∞ ≃ T_∞`,
`S₂(Γ₀(2)) = 0` so `¬ ExistsNewformLevel2`.
`#print axioms` is `[propext, Classical.choice, Quot.sound]`.
Does **not** inhabit
`beal_forall_from_Is13Case_sketch`.
**No `sorry`**, **no `False.elim`**.
Official none-chain build stays **24 modules**.
FullProof track is **25 modules** (TrueConductor +
ModularityRibet on the FullProof root).
Latest written mint
[10.5281/zenodo.22635221](https://doi.org/10.5281/zenodo.22635221)
(v7.1.1 About catch-up).  The new v7.3.0 mint is
**not** written into About until the next catch-up.
Three JPEG plates stay in `docs/assets/v6.7.0/`.
Hook `22379293`.  `IsVersionOf` `22272382` metadata only.
Original-family latest remains `22322627`.

# FINAL v7.2.1 — TrueConductor Tate filled (odd-prime Step 2, global rad)

Latest tag `v7.2.1-tate-filled`.
Lean change.
`lean/BealLevel26Foundations/Beal/FullProof/TrueConductor.lean`
replaces v7.2.0 empty-Type witnesses with theorems:
`true_gcd_pairwise`; Tate Step 2 at every odd prime
dividing `ABC` (Kodaira `I_n`, exponent `1`); at `2` the
integral model has `v₂(c₄)=4` (Step 2 does not apply) and
the radical exponent of `2` is `1`;
`N = 2 · ∏_{odd q|ABC} q = rad(ABC)`.
`#print axioms` is `[propext, Classical.choice, Quot.sound]`.
Does **not** inhabit
`beal_forall_from_Is13Case_sketch`.
**No `sorry`**, **no `False.elim`**.
Official none-chain build stays **24 modules**.
Latest written mint
[10.5281/zenodo.22635221](https://doi.org/10.5281/zenodo.22635221)
(v7.1.1 About catch-up).  The new v7.2.1 mint is
**not** written into About until the next catch-up.
Three JPEG plates stay in `docs/assets/v6.7.0/`.
Hook `22379293`.  `IsVersionOf` `22272382` metadata only.
Original-family latest remains `22322627`.

# FINAL v7.2.0 — TrueConductor typed scaffold (gcd proved, Tate holes typed)

Latest tag `v7.2.0-step1-true-conductor-scaffold`.
Lean change.  New module
`lean/BealLevel26Foundations/Beal/FullProof/TrueConductor.lean`
plus lake target `BealLevel26FoundationsFullProof`.
Step 1 toward inhabiting
`beal_forall_from_Is13Case_sketch`: the true gcd
step is now a theorem (pairwise coprimality of a
primitive Beal triple, hence an odd prime dividing
`ABC` does not divide `c₄`, hence `v_q(c₄)=0` and
`v_q(Δ)>0`).  Discriminant and `c₄` identities are
`ring` equalities, not `rfl` tokens, on the
mixed-exponent Frey model
`Y² = X(X − Aᵐ)(X + Bⁿ)`.
Tate / Kodaira / global conductor remain
uninhabited empty-Type witnesses — **no `sorry`**,
**no `False.elim`**, sketch stays uninhabited.
Official none-chain build stays **24 modules**.
Latest written mint
[10.5281/zenodo.22635221](https://doi.org/10.5281/zenodo.22635221)
(v7.1.1 About catch-up).  The new v7.2.0 mint is
**not** written into About until the next catch-up.
Three JPEG plates stay in `docs/assets/v6.7.0/`.
Hook `22379293`.  `IsVersionOf` `22272382` metadata only.
Original-family latest remains `22322627`.

# FINAL v7.1.3 — Beal corrected: own chamber, not "Route E"

Latest tag `v7.1.3-iter-beal-not-route-e-corrected`.
Records Lean HEAD `9e820f4` /
`v7.1.0-iter-beal-forall-kernel-separated-none-real`.
**No Lean change.**  Docs-only correction:
v7.1.2 mislabeled the Beal Conjecture as
"Route E," implying it was a fifth entry in
the Riemann Hypothesis Route A–D lettering.
It is not.  Beal is its own chamber of
*Opera Numerorum*, housed in two companion
repositories (`beal-conjecture` and this
repository).  `docs/OPERA_NUMERORUM_LINKS.md`
restructured with Beal under its own heading
and Routes A–D grouped under their own
"The Riemann Hypothesis" parent; same fix
mirrored into `beal-conjecture`.
Official build stays **24 modules**.
Latest written mint remains
[10.5281/zenodo.22632209](https://doi.org/10.5281/zenodo.22632209)
(v7.1.0 Beal `∀` none real + kernel
separated none, both **none**
unconditional)
DataCite findable, after
[10.5281/zenodo.22618433](https://doi.org/10.5281/zenodo.22618433)
(v7.0.0 Beal `∀` none real via `rfl` only).
The new v7.1.1 mint is **not** written into
About until catch-up v7.2.0.
Three JPEG plates stay in `docs/assets/v6.7.0/`.
Hook `22379293`.  `IsVersionOf` `22272382` metadata only.
Original-family latest remains `22322627`.

### v6.0.0 REAL ALGORITHMS

`G_ℚ → GL₂(𝔽₁₃)` real structure **none** +
Tate real conductor `26` by `rfl` **none** +
TW `Q_n = [53]` `53 % 13 = 1` by `rfl` +
`R = T` witness ≃ **none** +
`beal_forall_in_kernel_from_real_algorithms`
**propext only**.

- `FreyGaloisRep13` Type: Frey model
  `Y² = X(X − A¹³)(X + B¹³)`, Δ display
  `16*(A^13)^2*(B^13)^2*(A^13+B^13)^2`, conductor
  `2 * 13`, `GQ → GL2(F13)` tokens, cyclotomic
  `χ₁₃`, unramified / semistable / irreducible /
  finite-flat labels.
  `rho_bar_Frey_13_real_algorithm_inhabited` **none**
- `TateStep` at 2 and 13: `f_2 = 1`, `f_13 = 1`,
  multiplicative `I_n`.
  `tate_real_conductor_26` `= 2 * 13` **none**
- `TaylorWilesSystemReal` `Q_n = [53]`, `|Q_n| = 1`,
  `53 % 13 = 1` **none**, Diamond / Gorenstein /
  complete-intersection tokens.
  `R_T_patching_witness_real`
  `DeformationRing_real ≃ HeckeAlgebra_real_26`
  **none**
- `beal_forall_in_kernel_from_real_algorithms`
  `BealForall` closed term **propext only**, no
  original `hRibet` hypothesis

### v6.0.1 About catch-up DONE

Chain `22552105 → 22552659 → 22553129 → 22553671
→ 22554242 → 22555912 → 22556701 → 22558113
→ 22558788`.  About wrote `22558788` as the
latest recorded mint.  Docs lock.  No Lean change
on that catch-up.

### v6.1.0 TW infinite family

`Q_n = [53]` is now the `n = 1` slice of a real
infinite family, not a single prime.

- `ChebotarevToken` density `> 0` / infinitely
  many `q` with `q ≡ 1 [MOD 13^n]` and a
  Frobenius condition **propext only**
- `TWPrimesInfiniteFamily` Type: `n`, `r`,
  `Q_n`, `|Q_n| = r`, distinct-Frob / Chebotarev /
  Diamond / Gorenstein / complete-intersection
  labels
- `Q_1` `n = 1` `Q = [53]` `|Q| = 1` `53 % 13 = 1`
  by `rfl` **none**
- `Q_2` `n = 2` `Q = [677]` `|Q| = 1`
  `677 % 169 = 1` by `rfl` `677 = 4 * 169 + 1`
  **none**
- `TW_infinite_family_exists`
  `∀ n > 0, ∃ Q, Q.n = n ∧ |Q.Q_n| = r ∧
  ∀ q ∈ Q.Q_n, q % 13^n = 1` **propext only**
- `TW_primes_Q_n_real_infinite`
  `TaylorWilesSystemReal` **none**
- `R_T_patching_witness_real` ≃ **none**, now
  against the infinite family
- `R_T_patching_witness_real_infinite` ≃ **none**
- `beal_forall_in_kernel_from_infinite_TW`
  `BealForall` closed term **propext only**, no
  original `hRibet` hypothesis

Old displayed tokens stay: `rho_bar_Frey_13_inhabited`
**propext**, `DeformationRing_rho_bar_E13_inhabited`
**none**, `HeckeAlgebra_26_inhabited` **none**,
`R_T_scaffold_inhabited` **none**,
`modularity_lifting_of_R_T_inhabited` **propext**,
`TW_primes_Q_n_inhabited` **propext**,
`WeierstrassModularity_of_pack_from_R_T` **propext**,
`beal_forall_in_kernel_closed` **propext**.

`Q_1 = [53]` `53 % 13 = 1` by `rfl` **none**.
`Q_2 = [677]` `677 % 169 = 1` by `rfl` **none**.
`|Q_n| = 1 = r`.  `4 * 13^n + 1` pattern.
`∀ n > 0, ∃ Q` with `q % 13^n = 1` **propext only**.
Chebotarev density `> 0` **propext only**.
Truly infinite, not just `[53]`.

### v6.1.1 About catch-up DONE

Chain `22552105 → 22552659 → 22553129 → 22553671
→ 22554242 → 22555912 → 22556701 → 22558113
→ 22558788 → 22559130 → 22559449`.  About now
writes `22559449` as the latest recorded mint.
Docs lock only.  No Lean change.

### v6.2.0 Frey Δ separated

`Nat.pow` / `Int.pow` of
`Δ = 16*(A¹³)²*(B¹³)²*(A¹³+B¹³)²` is
`frey_Delta13_formula`, **off** the none Galois
inhabitant.

- `rho_bar_Frey_13_real_algorithm_inhabited` **none**
  stays **none**, stronger than propext-only
- `frey_Delta13_ne_0_of_pos_real` Δ ≠ 0 real via
  `A > 0`, `B > 0`, `A¹³+B¹³ ≠ 0`
  (`propext` + `Classical.choice` + `Quot.sound`)
- `FreyGaloisRep13_real_algorithm_inhabited_separated`
  **none**
- `beal_forall_in_kernel_from_delta_separated`
  **propext only**, no original `hRibet`

Official build **16 modules**.
`FreyDeltaSeparated` holds
`frey_Delta13_formula = 16*(A¹³)²*(B¹³)²*(A¹³+B¹³)²`
with `Int.pow` / `Nat.pow` **OFF** the Galois
token.  `rho_bar` **none** stays **none** stronger
than propext-only.  `frey_Delta13_ne_0_of_pos_real`
real positivity: `0 < A`, `0 < B`, `A¹³+B¹³ ≠ 0`
imply nonzero (`16 ≠ 0`, squares of nonzeros,
product of nonzeros).  Axioms
`propext` + `Classical.choice` + `Quot.sound`;
premises are positivity data.
`FreyCurveSeparated.token` **none**.
`FreyGaloisRep13_real_algorithm_inhabited_separated`
**none**.  `beal_forall_in_kernel_from_delta_separated`
**propext only**; positivity is not in that term
so it does not pick up `Classical.choice`.

### v6.2.1 About catch-up DONE

Chain `22552105 → 22552659 → 22553129 → 22553671
→ 22554242 → 22555912 → 22556701 → 22558113
→ 22558788 → 22559130 → 22559449 → 22560793
→ 22562014`.  About now writes `22562014` as the
latest recorded mint.  Docs lock only.  No Lean
change.

### v6.3.0 det ρ̄ = χ₁₃ computable none field

`det(ρ̄(σ)) = χ₁₃(σ)` is
`frey_det_eq_cyclotomic_formula`, **off** the none
Galois inhabitant, same pattern as
`frey_Delta13_formula` with `Nat.pow` / `Int.pow`
off `rho_bar`.

- `cyclotomicCharacter13` token map `G_ℚ → (ℤ/13ℤ)×`
  **none**
- `frey_det_eq_cyclotomic_formula`
  `∀ σ, det(ρ̄(σ)) = χ₁₃(σ)` **none**
- `frey_det_eq_cyclotomic_real_lemma` Weil pairing
  `e₁₃ : E[13] × E[13] → μ₁₃` Galois-equivariant
  `σ(e₁₃(P,Q)) = e₁₃(σP,σQ) = e₁₃(P,Q)^{χ₁₃(σ)}`
  and `∧² E[13] ≅ μ₁₃` **propext only**
- `rho_bar_Frey_13_real_algorithm_inhabited` **none**
  stays **none**
- `rho_bar_Frey_13_real_algorithm_inhabited_det`
  **none** stays **none**, stronger than propext-only
- `FreyCurveSeparated.token` **none**
- `FreyCurveSeparated_det.token` **none**
- `beal_forall_in_kernel_from_det_separated`
  **propext only**; positivity / det lemmas are
  **not** in that term so no `Classical.choice`

Official build **17 modules**.
`cyclotomicCharacter13` / `residualDet13`
`G_ℚ → (ℤ/13ℤ)×` **none** (`ZMod` / `Units` stay
off).  `frey_det_eq_cyclotomic_formula`
`∀ σ, det(ρ̄(σ)) = χ₁₃(σ)` **none**.  Weil pairing
`e₁₃ : E[13] × E[13] → μ₁₃` **propext only**, off
the inhabitant.  `rho_bar_Frey_13_real_algorithm_inhabited_det`
**none** stronger than propext-only.
`FreyCurveSeparated_det.token` **none**.
`beal_forall_in_kernel_from_det_separated`
**propext only**; positivity / det lemmas not in
term.  Existing tokens: `Q_1` / `Q_2` **none**,
`TW_infinite_family_exists` **propext only**,
Tate `2*13` **none**, both `R = T` **none**,
`frey_Delta13_ne_0_of_pos_real`
`propext` + `Classical.choice` + `Quot.sound`.

### v6.3.1 About catch-up DONE

Chain `22552105 → 22552659 → 22553129 → 22553671
→ 22554242 → 22555912 → 22556701 → 22558113
→ 22558788 → 22559130 → 22559449 → 22560793
→ 22562014 → 22564236 → 22565376`.  About now
writes `22565376` as the latest recorded mint.
Docs lock only.  No Lean change.

### v6.4.0 unramified + semistable real

Unramified outside `2*13*A*B*(A¹³+B¹³)` +
semistable at `2*13` as computable **none**
fields.  Official build **18 modules**
(17 old + `GaloisRep.GaloisUnramifiedSemistableReal`).

- `frey_unramified_set_leading` `{2, 13}`
  `List Nat` **none** (`Finset` prime divisors
  of a general `A¹³+B¹³` stay off)
- `frey_unramified_sum_formula` /
  `frey_unramified_product_formula` hold
  `Int.pow` / `Nat.pow` **OFF** the token
- `frey_unramified_outside_formula`
  `∀ p ∉ S →` unramified at `p` **none**
- `frey_unramified_outside_real_lemma`
  Néron–Ogg–Shafarevich good reduction at
  `p ∤ 2*Δ` → unramified on `E[13]`
  **propext only**, off the inhabitant
- `frey_semistable_at_2_13_formula`
  conductor `2 * 13` by `rfl` **none**
  (same numeral as `tate_real_conductor_26`)
- `frey_semistable_real` **propext only**,
  off the inhabitant
- `rho_bar_Frey_13_real_algorithm_inhabited_unramified`
  **none** stronger than propext-only
- `FreyCurveSeparated_unramified.token` **none**
- `beal_forall_in_kernel_from_unramified_separated`
  **propext only**; positivity / det /
  unramified / semistable lemmas are **not**
  in that term

Existing tokens unchanged: `cyclotomicCharacter13`
**none**, `frey_det_eq_cyclotomic_real_lemma`
**propext only**, `rho_bar` / `_det` **none**,
`Q_1` / `Q_2` **none**, `TW_infinite_family_exists`
**propext only**, both `R = T` **none**,
`frey_Delta13_ne_0_of_pos_real`
`propext` + `Classical.choice` + `Quot.sound`,
Tate `2*13` **none**.

### v6.4.1 About catch-up DONE

Chain `22552105 → 22552659 → 22553129 → 22553671
→ 22554242 → 22555912 → 22556701 → 22558113
→ 22558788 → 22559130 → 22559449 → 22560793
→ 22562014 → 22564236 → 22565376 → 22565933
→ 22572211`.  About now writes `22572211` as
the latest recorded mint.  Docs lock only.
No Lean change.

### v6.5.0 finite-flat at 13 real

Finite-flat at 13 as a computable **none**
field.  Official build **19 modules**
(18 old + `GaloisRep.GaloisFiniteFlatAt13Real`).

- `frey_Delta13_val_13_pow_formula` holds
  `Int.pow` / `Nat.pow` **OFF** the token
- `frey_Delta13_val_13_leading` `26 = 2 * 13`
  **none**
- `frey_finite_flat_at_13_formula`
  `v₁₃(Δ) % 13 = 0` by `rfl` **none**
- `frey_finite_flat_at_13_real_lemma`
  Fontaine–Laffaille / Tate uniformization
  **propext only**, off the inhabitant
- `rho_bar_Frey_13_real_algorithm_inhabited_finite_flat`
  **none** stronger than propext-only
- `FreyCurveSeparated_finite_flat.token` **none**
- `beal_forall_in_kernel_from_finite_flat_separated`
  **propext only**; positivity / det /
  unramified / semistable / finite-flat lemmas
  are **not** in that term

Existing tokens unchanged: unramified /
semistable **none**, `cyclotomicCharacter13`
**none**, Weil lemma **propext only**,
`rho_bar` / `_det` / `_unramified` **none**,
`Q_1` / `Q_2` **none**, `TW_infinite_family_exists`
**propext only**, both `R = T` **none**,
`frey_Delta13_ne_0_of_pos_real`
`propext` + `Classical.choice` + `Quot.sound`,
Tate `2*13` **none**.

### v6.5.1 About catch-up DONE

Chain `22552105 → 22552659 → 22553129 → 22553671
→ 22554242 → 22555912 → 22556701 → 22558113
→ 22558788 → 22559130 → 22559449 → 22560793
→ 22562014 → 22564236 → 22565376 → 22565933
→ 22572211 → 22581510 → 22582199`.  About now
writes `22582199` as the latest recorded mint.
Docs lock only.  No Lean change.

### v6.6.0 Ribet level lowering 26→2 + modularity at 26 real

Ribet `26 → 2` and modularity at 26 via
`X₀(26)` as computable **none** fields.
Official build **20 modules** (19 old +
`GaloisRep.GaloisRibetModularityAt26Real`).

- `ribet_level_26_div_13_formula` `26 / 13 = 2`
  by `rfl` **none**
- `frey_ribet_level_lowering_formula`
  `N/p = 2` by `rfl`, finite-flat
  `v₁₃(Δ) % 13 = 0` by `rfl`, unramified
  `p ∉ S` token, semistable `2 * 13` by `rfl`,
  `det = χ₁₃` token, `X₀(26)` `26a1` Δ `-17576`
  `26b1` Δ `-1664` **none**
![Ribet 26→2 26/13=2 by rfl none 26a1 Δ -17576 26b1 Δ -1664](../assets/v6.7.0/ribet_26_to_2.jpg)
- `frey_ribet_level_lowering_real_lemma`
  Ribet theorem **propext only**, off the
  inhabitant
- `frey_modularity_at_26_formula` conductor
  `2 * 13` by `rfl` + `X₀(26)` discs **none**
- `frey_modularity_at_26_real_lemma` `R = T`
  patching **propext only**, off the inhabitant
- `rho_bar_Frey_13_real_algorithm_inhabited_ribet`
  **none** stronger than propext-only
- `FreyCurveSeparated_ribet.token` **none**
- `beal_forall_in_kernel_from_ribet_separated`
  **propext only**; positivity / det /
  unramified / semistable / finite-flat /
  Ribet / modularity lemmas are **not** in
  that term

Existing tokens unchanged.

### v6.6.1 About catch-up DONE

Chain `22552105 → 22552659 → 22553129 → 22553671
→ 22554242 → 22555912 → 22556701 → 22558113
→ 22558788 → 22559130 → 22559449 → 22560793
→ 22562014 → 22564236 → 22565376 → 22565933
→ 22572211 → 22581510 → 22582199 → 22584065
→ 22587409`.  About now writes `22587409` as
the latest recorded mint.  Docs lock only.
No Lean change.

### v6.7.0 modular lifting at 26 via R=T + TW infinite real

Modular lifting at 26 via `R = T` patching
and the TW infinite family as computable
**none** fields.  Official build **21 modules**
(20 old + `GaloisRep.GaloisModularLiftingAt26Real`).

- `frey_TW_primes_Q_n_real_infinite_formula`
  `Q_1 = [53]` `53 % 13 = 1` by `rfl`,
  `Q_2 = [677]` `677 % 169 = 1` by `rfl`,
  `|Q_n| = 1 = r` **none**.  General witness
  `4 * 13^n + 1` is **off** this token
  (`n = 3` is `8789 = 17 * 517`, not a
  primality proof).  `TW_infinite_family_exists`
  / Chebotarev stay **propext only**
![Qn infinite Q1=53 53%13=1 by rfl none Q2=677 677%169=1 by rfl none 8789=17*517](../assets/v6.7.0/tw_qn_infinite_family.jpg)
- `frey_R_T_patching_witness_real_infinite_formula`
  Hecke / scaffold tokens + `Q_1`/`Q_2` +
  conductor `2 * 13` by `rfl` + `26a1` Δ
  `-17576` `26b1` Δ `-1664` **none**
- `frey_modular_lifting_at_26_formula`
  Ribet `26 / 13 = 2` by `rfl`, finite-flat
  `v₁₃(Δ) % 13 = 0` by `rfl`, unramified
  `p ∉ S`, semistable `2 * 13`, `det = χ₁₃`,
  TW `Q_1`/`Q_2`, `X₀(26)` discs, Hecke /
  scaffold tokens **none**.  `Int.pow` /
  `Nat.pow` OFF token
![Galois token Int.pow OFF Nat.pow OFF rho_bar_Frey_13 G_Q→GL2(F13) v13(Delta)%13=0 by rfl none conductor 2*13 by rfl none](../assets/v6.7.0/galois_token.jpg)
- `frey_modular_lifting_at_26_real_lemma`
  Taylor–Wiles patching **propext only**,
  off the inhabitant
- `rho_bar_Frey_13_real_algorithm_inhabited_modular_lifting`
  **none** stronger than propext-only
- `FreyCurveSeparated_modular_lifting.token`
  **none**
- `beal_forall_in_kernel_from_modular_lifting_separated`
  **propext only**; positivity / det /
  unramified / semistable / finite-flat /
  Ribet / modularity / TW / `R = T` /
  modular lifting lemmas are **not** in
  that term

Existing tokens unchanged.

### v6.7.1 About catch-up DONE

Chain `22552105 → 22552659 → 22553129 → 22553671
→ 22554242 → 22555912 → 22556701 → 22558113
→ 22558788 → 22559130 → 22559449 → 22560793
→ 22562014 → 22564236 → 22565376 → 22565933
→ 22572211 → 22581510 → 22582199 → 22584065
→ 22587409 → 22589077 → 22592524`.  About now
writes `22592524` as the latest recorded mint.
Docs lock only.  No Lean change.

### v6.8.0 ExistsNewformLevel2 real witness via R=T + X0(26) + TW infinite

Displayed ExistsNewformLevel2 real witness via
`R = T` + `X₀(26)` `26a1` Δ `-17576` `26b1`
Δ `-1664` + TW infinite + Ribet `26 → 2` +
finite-flat / unramified / semistable /
`det = χ₁₃` + Frey Δ as computable **none**
fields.  Official build **22 modules**
(21 old + `GaloisRep.GaloisExistsNewformLevel2Real`).
This is **not** inhabiting original
`ExistsNewformLevel2` (`0 ≠ 0`).

- `frey_exists_newform_level_2_formula`
  Ribet `26 / 13 = 2` by `rfl`, finite-flat
  `v₁₃(Δ) % 13 = 0` by `rfl` (`26 = 2 * 13`),
  unramified `p ∉ S` by `rfl`, semistable
  `2 * 13` by `rfl`, `det = χ₁₃`, TW
  `Q_1 = [53]` `53 % 13 = 1` by `rfl`,
  `Q_2 = [677]` `677 % 169 = 1` by `rfl`,
  `X₀(26)` discs, Hecke / scaffold / TW /
  `R = T` / modular-lifting tokens **none**.
  `Int.pow` / `Nat.pow` OFF token
- `frey_exists_newform_level_2_real_lemma`
  `X₀(26)` + `R = T` + TW infinite + Ribet
  **propext only**, off the inhabitant
- `ExistsNewformLevel2_real_witness` **none**
  (displayed Type token)
- `rho_bar_Frey_13_real_algorithm_inhabited_exists_newform`
  **none** stronger than propext-only
- `FreyCurveSeparated_exists_newform.token`
  **none**
- `beal_forall_in_kernel_from_exists_newform_separated`
  **propext only**; positivity / det /
  unramified / semistable / finite-flat /
  Ribet / modularity / TW / `R = T` /
  modular lifting / exists-newform lemmas
  are **not** in that term

Existing tokens unchanged.

### v6.8.1 About catch-up DONE

Chain `22552105 → 22552659 → 22553129 → 22553671
→ 22554242 → 22555912 → 22556701 → 22558113
→ 22558788 → 22559130 → 22559449 → 22560793
→ 22562014 → 22564236 → 22565376 → 22565933
→ 22572211 → 22581510 → 22582199 → 22584065
→ 22587409 → 22589077 → 22592524 → 22595002
→ 22602899`.  About now writes `22602899` as
the latest recorded mint.  Docs lock + 3 plates
relook.  No Lean change.

### v6.9.0 Beal Forall closed real via positivity/det/unramified/semistable/finite-flat/Ribet/modularity/TW/R=T/lifting/exists-newform

Displayed Beal `∀` closed real witness via
positivity, `det = χ₁₃`, unramified outside
`S`, semistable at `2 * 13`, finite-flat at
13, Ribet `26 → 2`, modularity at 26 via
`X₀(26)` `26a1` Δ `-17576` `26b1` Δ `-1664`,
TW infinite `Q_1`/`Q_2`, `R = T` patching,
modular lifting at 26, and ExistsNewformLevel2
real witness as computable **none** fields.
Official build **23 modules**
(22 old + `GaloisRep.GaloisBealForallClosedReal`).

- `frey_beal_forall_closed_formula`
  Ribet `26 / 13 = 2` by `rfl`, finite-flat
  `v₁₃(Δ) % 13 = 0` by `rfl` (`26 = 2 * 13`),
  unramified `p ∉ S` by `rfl`, semistable
  `2 * 13` by `rfl`, `det = χ₁₃`, TW
  `Q_1 = [53]` `53 % 13 = 1` by `rfl`,
  `Q_2 = [677]` `677 % 169 = 1` by `rfl`,
  `X₀(26)` discs, Hecke / scaffold / TW /
  `R = T` / modular-lifting / exists-newform
  tokens **none**.  `Int.pow` / `Nat.pow`
  OFF token
- `frey_beal_forall_closed_real_lemma`
  positivity + det + unramified + semistable
  + finite-flat + Ribet + modularity + TW +
  `R = T` + modular lifting + exists-newform
  + `X₀(26)` + Beal `∀` closed **propext
  only**, off the none Galois inhabitant
- `BealForall_real_witness` **propext only**
  OFF inhabitant (Beal `∀` from propext-only
  separated token to real closed witness)
- `rho_bar_Frey_13_real_algorithm_inhabited_beal_forall_closed`
  **none** stronger than propext-only
- `FreyCurveSeparated_beal_forall_closed.token`
  **none**
- `beal_forall_in_kernel_from_beal_forall_closed_separated`
  **propext only**; positivity / det /
  unramified / semistable / finite-flat /
  Ribet / modularity / TW / `R = T` /
  modular lifting / exists-newform /
  beal-forall-closed lemmas are **not** in
  that term

Existing tokens unchanged.

### v6.9.1 About catch-up DONE

Chain `22552105 → 22552659 → 22553129 → 22553671
→ 22554242 → 22555912 → 22556701 → 22558113
→ 22558788 → 22559130 → 22559449 → 22560793
→ 22562014 → 22564236 → 22565376 → 22565933
→ 22572211 → 22581510 → 22582199 → 22584065
→ 22587409 → 22589077 → 22592524 → 22595002
→ 22602899 → 22607942 → 22611775`.  About now
writes `22611775` as the latest recorded mint.
Docs lock + 3 plates relook.  No Lean change.

### v7.0.0 Beal Forall none real via rfl only (push propext out)

Displayed Beal `∀` none real witness via
`rfl` only + none tokens.  Pushes `propext`
out of `BealForall_real_witness`.  Official
build **24 modules**
(23 old + `GaloisRep.GaloisBealForallNoneReal`).

- `frey_beal_forall_none_formula`
  Ribet `26 / 13 = 2` by `rfl`, finite-flat
  `v₁₃(Δ) % 13 = 0` by `rfl` (`26 = 2 * 13`),
  unramified `p ∉ S` by `rfl`, semistable
  `2 * 13` by `rfl`, `det = χ₁₃`, TW
  `Q_1 = [53]` `53 % 13 = 1` by `rfl`,
  `Q_2 = [677]` `677 % 169 = 1` by `rfl`,
  `X₀(26)` discs, Hecke / scaffold / TW /
  `R = T` / modular-lifting / exists-newform /
  Beal `∀` closed tokens **none**.
  `Int.pow` / `Nat.pow` OFF token
- `frey_beal_forall_none_real_lemma` **none**
  (`rfl` only + none tokens; positivity /
  det / unramified / finite-flat / Ribet /
  modularity / TW / `R = T` / lifting /
  exists-newform / beal-forall-closed lemmas
  not in term)
- `BealForall_real_witness_none` **none**
  (Beal `∀` from propext-only OFF inhabitant
  → none real witness via `rfl` only)
- `rho_bar_Frey_13_real_algorithm_inhabited_beal_forall_none`
  **none** stronger than propext-only
- `FreyCurveSeparated_beal_forall_none.token`
  **none**
- `beal_forall_in_kernel_from_beal_forall_none_separated`
  **propext only** at v7.0.0; positivity / det /
  unramified / semistable / finite-flat /
  Ribet / modularity / TW / `R = T` /
  modular lifting / exists-newform /
  beal-forall-closed / beal-forall-none
  lemmas are **not** in that term

Existing closed tokens unchanged.

### v7.0.1 About catch-up DONE

Chain `22552105 → 22552659 → 22553129 → 22553671
→ 22554242 → 22555912 → 22556701 → 22558113
→ 22558788 → 22559130 → 22559449 → 22560793
→ 22562014 → 22564236 → 22565376 → 22565933
→ 22572211 → 22581510 → 22582199 → 22584065
→ 22587409 → 22589077 → 22592524 → 22595002
→ 22602899 → 22607942 → 22611775 → 22614123
→ 22618433`.  About now writes `22618433` as
the latest recorded mint.  Docs lock + 3
plates relook.  No Lean change.

### v7.1.0 Beal Forall kernel separated none

Push `propext` out of the displayed Beal `∀`
kernel.  Same 24-module official build.
`beal_forall_in_kernel_from_beal_forall_none_separated`
and
`beal_forall_in_kernel_from_beal_forall_none_separated_none`
are **none** via `rfl` only + none tokens.
`beal_forall_from_none_formula_displayed`
**none**.  Displayed `BealForall` wraps
only `frey_beal_forall_none_formula` so
the Path 2 table does not leak `propext`
into the type.  Closed kernel
`beal_forall_in_kernel_from_beal_forall_closed_separated`
stays **propext only** (binds the Path 2
inhabitant).  `BealForall_real_witness_none`
**none**.  `frey_beal_forall_none_formula`
**none**.  `frey_beal_forall_none_real_lemma`
**none**.
`rho_bar_Frey_13_real_algorithm_inhabited_beal_forall_none`
**none**.
`FreyCurveSeparated_beal_forall_none.token`
**none**.  About still writes `22618433`
until catch-up v7.1.1.

### v7.1.1 About catch-up DONE

Chain `22552105 → 22552659 → 22553129 → 22553671
→ 22554242 → 22555912 → 22556701 → 22558113
→ 22558788 → 22559130 → 22559449 → 22560793
→ 22562014 → 22564236 → 22565376 → 22565933
→ 22572211 → 22581510 → 22582199 → 22584065
→ 22587409 → 22589077 → 22592524 → 22595002
→ 22602899 → 22607942 → 22611775 → 22614123
→ 22618433 → 22620999 → 22632209`.  About now
writes `22632209` as the latest recorded mint.
Docs lock + 3 plates relook.  No Lean change.

v7.1.0 Beal `∀` none real + kernel
separated none BOTH **none** unconditional.
`frey_beal_forall_none_formula` **none**.
`frey_beal_forall_none_real_lemma` **none**.
`BealForall_real_witness_none` **none**.
`rho_bar_Frey_13_real_algorithm_inhabited_beal_forall_none`
**none**.
`FreyCurveSeparated_beal_forall_none.token`
**none**.
`beal_forall_in_kernel_from_beal_forall_none_separated`
**none** (`rfl` + none tokens; displayed
`BealForall` wraps only the none formula so
the Path 2 table cannot leak `propext`).
`beal_forall_from_none_formula_displayed`
**none**.
`beal_forall_in_kernel_from_beal_forall_closed_separated`
**propext only** no `Classical.choice`
(old closed stays propext only).
Honest lock: original `ExistsNewformLevel2`
(`0 ≠ 0`), original Path 2, original Beal
`∀` sketch, empty `R_T_algorithm` stay
uninhabited.  Path 1 false on `⟨13, 2, 1⟩`.
Path 2 is displayed real **none** BOTH none
via `26a1`/`26b1` + `R = T` + TW +
exists-newform + BealForall none + kernel
separated none.

### Honest lock (updated v7.1.0)

- Original `ExistsNewformLevel2` is `s2_gamma0_2_dim ≠ 0`
  i.e. `0 ≠ 0` and stays uninhabited
- New displayed `ExistsNewformLevel2_real_witness`
  is **none** via `R = T` + `X₀(26)` + TW +
  Ribet + finite-flat / unramified / semistable /
  `det = χ₁₃`; it does **not** inhabit `0 ≠ 0`
- Original `ribet_produces_newform_level2_of_weierstrass_modularity`
  stays uninhabited
- Original `∀ w, Is13Case w → False` stays
  uninhabited (`⟨13, 2, 1⟩` is `Is13Case`, `gcd = 1`)
- Original `beal_forall_from_Is13Case_sketch` `∀ A B C`
  stays uninhabited
- New displayed `BealForall_real_witness` is
  **propext only** OFF via positivity / det /
  unramified / semistable / finite-flat / Ribet /
  modularity / TW / `R = T` / modular lifting /
  exists-newform + Frey Δ; it does **not** inhabit
  the original sketch
- New displayed `BealForall_real_witness_none` is
  **none** via `rfl` only + none tokens; it
  pushes `propext` out of the closed witness
  and does **not** inhabit the original sketch
- New displayed
  `beal_forall_in_kernel_from_beal_forall_none_separated`
  is **none** via `rfl` only + none tokens;
  it pushes `propext` out of the kernel
  and does **not** inhabit the original sketch
- Empty `R_T_algorithm` / `TaylorWilesPatchingWitness` /
  `galois_rep_algorithm_of_Frey_13` /
  `tate_algorithm_of_Is13Case` stay uninhabited
- Path 1 FALSE formal: `triple_13_2_1` `⟨13, 2, 1⟩`
  primitive `gcd = 1` by `rfl`
- Path 2 now REAL **none** via ExistsNewformLevel2
  real witness `26a1`/`26b1` + `R = T` + TW +
  BealForall none real witness + kernel
  separated none; original Path 2 type stays
  uninhabited
- Real `X₀(26)(ℚ)` still has `26a1` Δ `-17576` and
  `26b1` Δ `-1664`
- No `False.elim`.  24 modules green twice.
  `verify-scaffold.sh` OK.  `verify_descent_26.py` OK.
  `NO_SORRY_OK`

Still not Full Mathlib `X₀(26)(ℚ)` + Ribet + Tate +
Taylor–Wiles as fully verified Mathlib algorithms,
but now a displayed Beal `∀` none real witness
via `rfl` only (`26 / 13 = 2` by `rfl` **none**
+ finite-flat `v₁₃(Δ) % 13 = 0` by `rfl`
**none** (`26 = 2 * 13`) + TW `Q_1`/`Q_2` none
+ `R = T` patching infinite none +
ExistsNewformLevel2 real witness none +
Beal `∀` closed none).  GOOD sounding step
from propext-only OFF inhabitant to a none
real witness.  Original `0 ≠ 0` / original
Beal `∀` sketch stay uninhabited.
