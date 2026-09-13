import BealLevel26Foundations.Beal.FullProof.TrueConductor
import BealLevel26Foundations.Beal.FullProof.ModularityRibet
import BealLevel26Foundations.Beal.FullProof.GeometryBridge
import BealLevel26Foundations.Beal.FullProof.ModularImpliesNewform
import BealLevel26Foundations.Beal.FullProof.BealForallProof
import BealLevel26Foundations.Beal.FullProof.GeometryScheme
import BealLevel26Foundations.Beal.FullProof.HeckeAlgebra
import BealLevel26Foundations.Beal.FullProof.RibetFunctor
import BealLevel26Foundations.Beal.FullProof.X0_26_Model
import BealLevel26Foundations.Beal.FullProof.HeckeAction
import BealLevel26Foundations.Beal.FullProof.LevelLowering
import BealLevel26Foundations.Beal.FullProof.RibetMazur
import BealLevel26Foundations.Beal.FullProof.BealElim
import BealLevel26Foundations.Beal.FullProof.BealMod16
import BealLevel26Foundations.Beal.FullProof.KrausB14
import BealLevel26Foundations.Beal.FullProof.LevelLoweringB14
import BealLevel26Foundations.Beal.FullProof.BealFreyB14
import BealLevel26Foundations.Beal.FullProof.BealFreyASearch
import BealLevel26Foundations.Beal.FullProof.BealFreyMod53Kill
import BealLevel26Foundations.Beal.FullProof.BealFreyModQKill
import BealLevel26Foundations.Beal.FullProof.BealFreyConductorGeneral
import BealLevel26Foundations.Beal.FullProof.BealGap3ZsigBeyond2M
import BealLevel26Foundations.Beal.FullProof.BealGap3BakerUpperBound
import BealLevel26Foundations.Beal.FullProof.BealBakerB0Certificate
import BealLevel26Foundations.Beal.FullProof.BealBakerB0ReductionCertificate
import BealLevel26Foundations.Beal.FullProof.BealMatveevConstants
import BealLevel26Foundations.Beal.FullProof.BealMatveevInequality
import BealLevel26Foundations.Beal.FullProof.BealMatveevInequalityReal
import BealLevel26Foundations.Beal.FullProof.BealBakerBoundGap3
import BealLevel26Foundations.Beal.FullProof.BealMatveevThm14
import BealLevel26Foundations.Beal.FullProof.BealBugeaudLLLFormal
import BealLevel26Foundations.Beal.FullProof.BealFreyTateConductor
import BealLevel26Foundations.Beal.FullProof.BealLevel26ModularElimination

/-!
# FullProof track (v24.4.0)

v24.x final summary linking the log-form upper bound to the
conditional Matveev ratio toward Baker B0.
On a gap-3 solution A^4 + B^4 = (B+3)^13:
  * |Lambda| = log(1 + B^4/A^4) ≤ B^4/A^4
    = B^4 / ((B+3)^13 - B^4) via matveev_v24x_summary
  * 0 < exp(C_exp_bound) < 10^{-12} < 1
  * C_exp_bound = -(height_B0 * log height_B0)
  * height_B0 = 104382751019310000000 = C1_floor * 30^6
    with 30^6 = 729000000
  * IF matveev_inequality_real_target THEN
    0 < exp(C) < B^4/A^4 and
    B^4 * (1 + exp(C)) > exp(C) * (B+3)^13
    via matveev_v24x_conditional_summary
  * conditional LLL reduction shape restated via
    bugeaud_v24x_final_link (still uninhabited)
  * displayed LLL cert shape via baker_v24x_reduction_shape
Does not claim |Lambda| > exp(C_exp_bound).
`matveev_inequality_real_target`, `baker_bound_gap3`, and
`bugeaud_LLL_reduction_conditional` stay uninhabited def Props.
v24.4.0 is the honest final of v24.x, not v25.
Locked Lean 0 vs v24.3.2 except BealMatveevThm14.lean,
RibetMazur.lean, and BealBakerB0ReductionCertificate.lean
summary shape.

# FullProof track (v24.3.2)

Numerical tiny bound exp(C_exp_bound) << 10^{-12} toward Baker B0.
On the displayed Matveev exponent:
  * height_B0 > 10^20 via matveev_height_B0_gt_onee20
  * log 10 > 2.3 via matveev_log_ten_gt_23_div_10 (2^83 < 10^25)
  * log(height_B0) > 46 via matveev_log_height_B0_gt_46
  * exp(46) < height_B0 via matveev_exp_46_lt_height_B0
  * C_exp_bound ≤ -10^12 via matveev_C_exp_bound_le_neg_1e12
  * exp(C) < exp(-10^12) < 10^{-12} via matveev_target_exp_lower_lt_exp_neg_1e12
    and matveev_target_exp_lower_lt_onee12
  * 0 < exp(C) < 10^{-12} < 1 via matveev_exp_C_pos_lt_one
Does not inhabit |Lambda| > exp(C_exp_bound).
`matveev_inequality_real_target`, `baker_bound_gap3`, and
`bugeaud_LLL_reduction_conditional` stay uninhabited def Props.
Locked Lean files stay exactly v24.3.1
except BealMatveevThm14.lean and RibetMazur.lean.

# FullProof track (v24.3.1)

Conditional B lower bound from Matveev ratio on gap-3 solutions.
On a gap-3 solution A^4 + B^4 = (B+3)^13:
  * (A:Real)^4 = ((B+3):Real)^13 - (B:Real)^4 via matveev_gap3_A_pow_eq_B3_pow_sub_B_pow
  * B^4 / A^4 = B^4 / ((B+3)^13 - B^4) via matveev_gap3_ratio_explicit
  * if |Lambda| > exp(C_exp_bound) then B^4 / ((B+3)^13 - B^4) > exp(C_exp_bound) and
    B^4 * (1 + exp(C_exp_bound)) > exp(C_exp_bound) * (B+3)^13 via matveev_gap3_conditional_B_lower
  * conditioned on matveev_inequality_real_target via matveev_gap3_conditional_B_lower_of_target
  * 0 < B from solution conditionally (and unconditionally) via matveev_gap3_conditional_B_pos_lower
Links conditional ratio bound to explicit inequality on B toward LLL reduction.
`matveev_inequality_real_target`, `baker_bound_gap3`, and
`bugeaud_LLL_reduction_conditional` stay uninhabited def Props.
Locked Lean files stay exactly v24.3.0
except BealMatveevThm14.lean and RibetMazur.lean.

# FullProof track (v24.3.0)

Linking conditional Matveev ratio bound to Baker B0 and LLL reduction.
On a gap-3 solution A^4 + B^4 = (B+3)^13:
  * 0 < exp(C_exp_bound) < B^4 / A^4 conditionally via matveev_gap3_conditional_ratio_pos
  * conditional ratio bound implies 0 < B^4 / A^4 via matveev_gap3_ratio_pos_of_conditional_lower
  * conditional LLL reduction: IF matveev_inequality_real_formal THEN ∃ B_reduced ≤ 10^6,
    ∀ solution with B ≤ 10^6, B ≤ B_reduced via bugeaud_LLL_reduction_conditional (uninhabited def Prop)
Links conditional lower bound to ratio toward Baker B0 and LLL reduction.
`matveev_inequality_real_target` and
`baker_bound_gap3` stay uninhabited
def Props.
Locked Lean files stay exactly v24.2.3
except BealMatveevThm14.lean, BealBugeaudLLLFormal.lean, and RibetMazur.lean.

# FullProof track (v24.2.3)

Conditional lower bound implies ratio bound on gap-3 solutions.
On a gap-3 solution A^4 + B^4 = (B+3)^13:
  * if |Lambda| > matveev_target_exp_lower then B^4 / A^4 > matveev_target_exp_lower via matveev_conditional_lower_implies_ratio_gt_exp
  * unconditioned form via matveev_conditional_lower_implies_ratio_gt_exp_of_solution
  * matveev_inequality_real_target ∧ solution → B^4 / A^4 > exp(C_exp_bound) via matveev_gap3_ratio_lower_bound_conditional
Links conditional lower bound to ratio toward Baker B0.
`matveev_inequality_real_target` and
`baker_bound_gap3` stay uninhabited
def Props.
Locked Lean files stay exactly v24.2.2
except BealMatveevThm14.lean and RibetMazur.lean.

# FullProof track (v24.2.2)

Logarithmic bound log(1 + x) ≤ x on gap-3 solutions.
On a gap-3 solution A^4 + B^4 = (B+3)^13:
  * log(1 + x) ≤ x for all x > -1 via matveev_log_one_plus_le_self
  * 0 < B^4 / A^4 via matveev_gap3_B_pow_div_A_pow_pos
  * 0 ≤ |Lambda| via matveev_gap3_abs_lambda_nonneg
  * |Lambda| = log(1 + B^4 / A^4) ≤ B^4 / A^4 via matveev_gap3_abs_lambda_le_ratio
  * B^4 / A^4 < 1 → |Lambda| < 1 via matveev_gap3_abs_lambda_lt_one_of_small_ratio
  * 0 < matveev_target_exp_lower < 1 via matveev_exp_lower_lt_one_and_pos
Links the upper bound side via ratio toward Baker B0.
`matveev_inequality_real_target` and
`baker_bound_gap3` stay uninhabited
def Props.
Locked Lean files stay exactly v24.2.1
except BealMatveevThm14.lean and RibetMazur.lean.

# FullProof track (v24.2.1)

Logarithmic form as logarithm of ratio on gap-3 solutions.
On a gap-3 solution A^4 + B^4 = (B+3)^13:
  * 0 < (A:Real)^4 via matveev_gap3_A_pow_pos
  * 0 < ((B+3):Real)^13 via matveev_gap3_B3_pow_pos
  * (B+3)^13 / A^4 = 1 + B^4 / A^4
  * Lambda = 4 log A - 13 log (B+3) = -log((B+3)^13 / A^4)
  * |Lambda| = log((B+3)^13 / A^4) = log(1 + B^4 / A^4)
    (matveev_gap3_log_form_eq_log_ratio,
     matveev_gap3_abs_lambda_eq_log_one_plus_ratio)
  * 0 < matveev_target_exp_lower < 1
    (matveev_exp_lower_lt_one_and_pos)
Links the upper bound side via ratio toward Baker B0.
`matveev_inequality_real_target` and
`baker_bound_gap3` stay uninhabited
def Props.
Locked Lean files stay exactly v24.2.0
except BealMatveevThm14.lean and RibetMazur.lean.

# FullProof track (v24.2.0)

Logarithmic form upper bound on gap-3 solutions.
On a gap-3 solution A^4 + B^4 = (B+3)^13:
  * B > 0 via baker_le_B0_gap3 (matveev_gap3_B_pos_of_solution)
  * A > 0 via eq_implies_A_gt_B (matveev_gap3_A_pos)
  * Lambda = 4 log A - 13 log (B+3) < 0
  * |Lambda| = -Lambda = -(4 log A - 13 log (B+3))
    (matveev_gap3_log_form_upper_bound)
  * 0 < matveev_target_exp_lower < 1
    (matveev_exp_lower_lt_one_and_pos)
Links the upper bound side to the lower bound target.
`matveev_inequality_real_target` and
`baker_bound_gap3` stay uninhabited
def Props.
Locked Lean files stay exactly v24.1.1
except BealMatveevThm14.lean and RibetMazur.lean.

# FullProof track (v24.1.1)

Rewriting the displayed Matveev exponent
via the height_B0 product identity.
`matveev_C_exp_bound` equals
`-((height_B0 : Real) * Real.log height_B0)`
and `-(height_B0 : Real) * Real.log height_B0`.
`matveev_target_exp_lower_eq` rewrites the
lower bound shape.
`matveev_inequality_real_target` and
`baker_bound_gap3` stay uninhabited
def Props.
Locked Lean files stay exactly v24.1.0
except BealMatveevThm14.lean.

# FullProof track (v24.1.0)

Height product identity.
`C1_floor * thirty_pow = height_B0`
with thirty_pow = 729000000 = 30^6.
The 7-digit typo 72900000 is 30^6 / 10
and its product is height_B0 / 10.
`matveev_inequality_real_target` and
`baker_bound_gap3` stay uninhabited
def Props.  Stay in v24.x until
|Lambda| > exp(-C) is a theorem.
Locked Lean files stay exactly v24.0.2
except BealMatveevThm14.lean.

# FullProof track (v24.0.2)

Real.exp properties of the displayed
Matveev exponent.  `exp(C_exp_bound)`
is in (0, 1).  The named target
`matveev_target_exp_lower` is not yet
|Lambda| > exp(-C).
`matveev_inequality_real_target` and
`baker_bound_gap3` stay uninhabited
def Props.  Stay in v24.x until the
Real inequality is a theorem.
Locked Lean files stay exactly v24.0.1
except BealMatveevThm14.lean.

# FullProof track (v24.0.1)

Height / log monotone lemmas toward
Matveev 2000 Thm 1.4.
`matveev_height_B0_gt_two`,
`matveev_log_height_monotone`, and
`matveev_C_exp_bound_lt_zero_of_pos_log`
are kernel theorems.
`matveev_inequality_real_target` and
`baker_bound_gap3` stay uninhabited
def Props.  Stay in v24.x until the
Real inequality is a theorem.
Locked Lean files stay exactly v24.0.0
except BealMatveevThm14.lean.

# FullProof track (v24.0.0)

Start Matveev 2000 Thm 1.4 formalization.
`matveev_height_log_pos` and
`matveev_exp_bound_neg` are kernel
theorems.  `matveev_inequality_real_target`
stays an uninhabited def Prop.
`baker_bound_gap3` stays an uninhabited
def Prop.  Stay in v24.x until the
Real inequality is a theorem.
Locked Lean files stay exactly v23
except this new file.

# FullProof track (v23.0.0)

Baker bound gap-3 attempt.
`matveev_C_exp_bound_lt_neg_onee12` and
`matveev_log_form_ne_zero_of_gap3` are
kernel theorems.  `baker_bound_gap3`
stays an uninhabited def Prop
(Mathlib 4.12 has no Matveev 2000
Thm 1.4).  Locked Lean files stay
exactly v22 except this new file.

# FullProof track (v22.0.0)

Matveev Real inequality skeleton.
`matveev_C_exp_bound` is
`-C1_floor * 30^{n+3} * log(B0_raw)`.
`matveev_inequality_real_formal` stays
an uninhabited def Prop (Mathlib 4.12
has no Matveev 2000 Thm 1.4).
`matveev_C_exp_bound_decide` by decide
(no axioms).  `baker_bound_gap3` stays
a def Prop.  Locked Lean files stay
exactly v21.

# FullProof track (v21.0.0)

Integer log-form nonzero and height bound.
`matveev_log_form_int` is the Tate c4-scale
16 times (4B − 13(B+3)); no Real.log.
`matveev_log_form_ne_zero` on B % 14 = 0.
`matveev_height_le_log_B0` is B ≤ B0_raw
as the v19 numeral 104382751019310000000.
`matveev_log_form_ne_zero_zero` /
`matveev_census_B0_le_height` by decide
(no axioms).  `baker_bound_gap3` and
`bugeaud_reduction_formal` stay def Prop.
Locked Lean files stay exactly v20 except
the appended v21 theorems.

# FullProof track (v20.0.0)

Matveev inequality / Bugeaud LLL skeleton.
`matveev_log_form` is Mathlib `Real.log`.
`matveev_lower_bound` and
`bugeaud_reduction_formal` stay def Prop
(uninhabited).  `matveev_inequality_constants_hold`
and `bugeaud_LLL_basis_holds` are kernel
`decide` (no axioms).
`baker_bound_gap3` stays a def Prop.
Locked Lean files stay exactly v19.

# FullProof track (v19.0.0)

Matveev constants formalization.
`matveev_C1_floor = 143186215390` is an
explicit Nat.  `matveev_C1_pos` and
`matveev_explicit_gap3_constants_hold`
are kernel `decide` (no axioms).
`matveev_height_B0 = C1_floor * 30^{n+3}`.
Tate c4 scale 16 is reused from
`BealFreyTateConductor`.
`baker_bound_gap3` stays a def Prop.
Locked Lean files stay exactly v18.

# FullProof track (v17.0.0)

Baker B0 PARI LLL reduction certificate.
`baker_B0_reduced_PARI = 1000000` matches
`baker_B0`.  `baker_reduction_certificate_displayed`
is the qflll basis plus convergents from
`scripts/baker_b0_reduction.gp`.
`baker_reduction_certificate_holds` is kernel
`decide` (no axioms).
`baker_bound_gap3` stays a def Prop.
Tate / Baker / v15 B0 / v14 displayed cert
files stay exactly v16 (0 lines).

# FullProof track (v15.0.0)

Baker B0 PARI certificate.
`baker_B0_PARI = 1000000` matches
`baker_B0`.  `baker_B0_certificate_displayed`
is the Matveev 2000 Thm 1.4 / BMS
Table 1 integer trace from
`scripts/baker_b0_gap3.gp`.
`baker_B0_certificate_holds` is kernel
`decide` (no axioms).
`baker_bound_gap3` stays a def Prop.
`baker_bound_gap3_of_PARI` is the named
implication (def Prop, not inhabited).
Tate / Baker-upper-bound files stay
exactly v14 / `3089bec` (0 lines).
v14 displayed J0 / mwrank / formal
certs stay the same inhabitants.

# FullProof track (v14.0.0)

J0 / mwrank / formal displayed certs
with kernel `decide` / `rfl` soundness.
`J0DecompositionCert_26_displayed` =
`[[1,0,1,-5,-8],[1,-1,1,-3,3]]`.
`MwrankCertificate_26_displayed` =
`{s2Basis := [0,12], rank := 2, gens := [0,12]}`.
`FormalImmersionCert_26_displayed` =
`M3 [[1,1],[0,2]]`.
Frey / Level reuse Tate `c4` / `tateF2` /
`tateConductor` (`f₂≤5`).
`J0DecompositionSoundness_26_holds`,
`MwrankCertificateSoundness_26_holds`,
`FormalImmersionSoundness_26_holds`
print no axioms.
`kraus_a53_elimination` is kernel decide
(`{-10,-2,1,6,14}` miss S₂(26) `{0,12}`).
`beal_44_13_level_26_modular_elimination`
uses the holds lemmas, `allKilled_1e6`,
and `baker_conditional_gap3_full`
(`baker_bound_gap3` stays Prop).
Tate and Baker files stay exactly v13
cea155c (0 lines changed).
`conductor_86` / `B14_honest` stay Prop.

# FullProof track (v13.0.0)

Level-26 modular elimination for (4,4,13)
gap3.  Frey `Y² = X(X-A⁴)(X+B⁴)`.
Conductor is `tateConductor` =
`2^{f₂}*rad(AB(B+3))*13` with `f₂≤5`,
NOT `2⁵*3*13` (witness `63982=2*31991`).
Five certs are transparent structures
(`J0DecompositionCert_26`,
`MwrankCertificate_26`,
`FormalImmersionCert_26`,
`FreyCurveCert`, `LevelLoweringCert_26`)
with Nat/Int/List fields, not opaque
axioms.  Soundness is a computable
existential over those records.
`kraus_a53_elimination` is kernel decide
(`{-10,-2,1,6,14}` miss S₂(26) `{0,12}`).
`beal_44_13_level_26_modular_elimination`
uses the 25 chunks for `B≤1e6` and
`matveev_explicit_gap3` for `B>1e6`
(`baker_bound_gap3` stays Prop).
Tate and Baker files stay exactly v12
(0 lines changed).
`conductor_86` / `B14_honest` stay Prop.

# FullProof track (v12.0.0)

explicit Matveev for (4,4,13) gap3, not
general Bugeaud.
`matveev_explicit_gap3` turns
`baker_bound_gap3` into
`A^4+B^4=(B+3)^13 → B ≤ baker_B0`.
`matveev_no_solution_A_le_B` is inhabited:
`A ≤ B` never solves gap-3.
`baker_conditional_gap3_full` uses the
25 chunks for `B ≤ 1e6` and
`matveev_explicit_gap3` for `B > 1e6`.
`baker_bound_gap3` stays Prop (Matveev /
BMS Table 1 not in Mathlib 4.12).
Tate file stays exactly v11.
Keeps `allKilled_chunk_0` ..
`allKilled_chunk_24`, `allKilled_1e6`.
`conductor_86` / `B14_honest` stay Prop.

# FullProof track (v11.0.0)

Defined packed Tate conductor:
`tateConductor A B = 2^{f₂} * rad(AB(B+3)) * 13`
with `f₂ = conductorExponentTate2`.
`tate_conductor_bound_rhs` is the same Nat.
`frey_tate_conductor` is that Nat (not a Prop).
`frey_tate_conductor_inhabited` proves
`tateConductor ∣ 2⁵ * rad * 13` with
`v_q ≤ 1` odd and `v₂ ≤ 5`.
Axioms `[propext, Classical.choice, Quot.sound]`.
Not Mathlib `N(E)`.
`conductor_86` stays Prop
(`63982 = 2*31991` proves `N` does not
divide `2⁵*3*13`; we use `2⁵*rad*13`).
`B14_honest` stays Prop; `B ≤ 1e6` is
inhabited via the Baker chunks.
`baker_bound_gap3` stays Prop (Bugeaud).
Baker census file unchanged.

# FullProof track (v10.0.0)

Paper archive of the v9.4.0 census and
v9.2.0 Tate bound.  Math DOI
`10.5281/zenodo.22712897`.  Paper DOI
`10.5281/zenodo.22713047`.
Keeps `allKilled_chunk_0` ..
`allKilled_chunk_24`, `allKilled_62500`,
`allKilled_1e6`, and
`baker_conditional_gap3_full`.
Keeps Tate `c₄ = 16*(A⁸+A⁴B⁴+B⁸)`,
`tate_2adic_exponent_le5`,
`tate_odd_exponent_le_one`,
`tate_conductor_bound_rhs = 2⁵*rad*13`.
`baker_bound_gap3`, `frey_tate_conductor`,
`conductor_86`, `B14_honest` stay Prop.
Not BCDT.

# FullProof track (v9.4.0)

Aggregator for Track B.  v9.4.0 names the
chunked 1e6 kernel census:
`allKilled_chunk_0` .. `allKilled_chunk_24`
each prove `allKilled start 2500 = true`
by rfl / kernel decide on one 2500-slice
of the 62500 values `B ≡ 14` (mod 16)
up to `10⁶`.  `allKilled_62500` and
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

# FullProof track (v9.3.0)

Aggregator for Track B.  v9.3.0 inhabits
`baker_conditional_gap3_full`:
`baker_bound_gap3 → ∀ B, ¬∃ A` with
`A⁴ + B⁴ = (B+3)¹³`.  `B ≤ B0 = 10⁶` by
the expanded residue cover (mod 16 plus
fourth powers at 53/29/109/17/5/7/11/13/19/23/31/37).
`B > B0` by the Baker premise.
`baker_bound_gap3` stays an uninhabited
Prop (Bugeaud linear forms external, not
in Mathlib 4.12).  Tate 2-adic lemmas
stay.  `frey_tate_conductor` stays Prop.
Keeps the Zsig Props, `conductor_86`
Prop, `B14_honest` Prop.  Not BCDT.

# FullProof track (v9.2.0)

Aggregator for Track B.  v9.2.0 records Tate
Steps 6-7 at 2: `v₂(c₄) ≥ 4`, `v₂(c₆)` from
A,B parity, `conductorExponentTate2 ≤ 5`.
`tate_conductor_bound_rhs = 2⁵ * rad * 13`
with packed `v_q ≤ 1` odd and `v₂ ≤ 5`.
`frey_tate_conductor` stays an uninhabited
Prop (Mathlib has no `N(E)`).  Odd-q
exponent-1 lemmas stay.  Allowed axioms
`[propext, Quot.sound, Classical.choice]`.
Keeps `baker_bound_gap3` Prop, the Zsig
Props, `conductor_86` Prop, `B14_honest`
Prop.  Not BCDT.  Not `|Δ|`.

# FullProof track (v9.1.0)

Aggregator for Track B.  v9.1.0 records Tate
Step 2 on Frey `Y² = X(X−A⁴)(X+B⁴)`:
odd primes of `ABC` have local exponent `1`
under pairwise coprimeness, and `v₂(c₄) ≥ 4`
so Step 2 does not finish at `2`.
`frey_tate_conductor` (`N ∣ 2⁵ * rad(AB(B+3)) * 13`
for a Tate `N(E)`) stays an uninhabited Prop.
Mathlib 4.12 has no `N(E)`.  Allowed axioms
`[propext, Quot.sound, Classical.choice]`.
Keeps `baker_bound_gap3` Prop, the Zsig Props,
`conductor_86` Prop, `B14_honest` Prop.
Not BCDT.  Not `|Δ|`.

# FullProof track (v9.0.0)

Aggregator for Track B.  v9.0.0 records the
missing Baker / Bugeaud effective bound as the
uninhabited Prop `baker_bound_gap3`
(exists B0 = 10^6, no gap-3 solution past B0).
`sorry` is not used.  Needs Baker, not Zsig.
Keeps the v8.86.0 empty-axiom residue cover.
`exists_zsig_q_gt_2M_dvd_C13_sub_B4` stays a Prop.
`conductor_86` stays a Prop.  `B14_honest`
stays a Prop.  Not BCDT.

# FullProof track (v8.88.0)

Aggregator for Track B.  v8.88.0 records the
Zsigmondy 5983 + LTE ledger for B > 2M gap-3.
`beal_gap3_B_gt_2M_eliminated` stays an
uninhabited Prop: the 5983 / five-pool lemmas
are named rows at B ≤ 2M, and q | A gives
q⁴ | C¹³ − B⁴, not q⁴ | C¹³.  Not BCDT.
`frey_conductor_general` is unchanged.
`conductor_86` stays a Prop.  `B14_honest`
stays a Prop.

# FullProof track (v8.87.0)

Aggregator for Track B.  v8.87.0 inhabits
`frey_conductor_general`: Mathlib Weierstrass
`Δ` of `Y² = X(X−A⁴)(X+B⁴)` is `2^e * N0`
with `e = 4 ≤ 5` and `N0 ∣ (ABC)²⁶ * 13`.
Axioms `[propext, Quot.sound]`.  That is
**not** Tate `N(E)`, **not** `N ∣ 2⁵*3*13`,
**not** `N0 ∣ rad(B*C)`.  `conductor_86`
stays a Prop.  Not BCDT.

# FullProof track (v8.85.0)

Aggregator for Track B.  v8.85.0 unifies the
paper and inhabits `beal_..._B14_full` on all
352 named `B ≡ 14` rows (266 mod 53, 77 at
q=29, 9 at q=109).  Empty axioms.  Not Ribet.
KrausB14.`eliminated_full` stays the
two-element mod-16 kill.  `B14_honest` stays
the uninhabited Prop.
Aggregator for Track B.  v8.84.0 kills the
86 mod-53 survivors by fourth-power
non-residues at q=17 (57), q=29 (77), and
q=109 (the remaining 9).
`beal_..._86_modq` inhabits `¬ ∃ A` on all
86 (empty axioms).  That is **not** Ribet.
The pack `beal_..._eliminated_86` and
`B14_honest` stay uninhabited Props.
Aggregator for Track B.  v8.83.0 inhabits
`gcd(B,B+3)∣3` and the Euler miss as
`IrreducibleMod13Trace` on the 86 survivors.
That is **not** Mazur, **not** a Mathlib
conductor, **not** Ribet, and **not**
`¬ ∃ A` for those 86.  `conductor_86`,
`level_lowering_86`, and
`beal_..._eliminated_86` stay uninhabited
Props.  `Classical.choice` is not BCDT.
The Zsigmondy identity `5983=4488+5·299`
does not prove `N ∣ 2^5 * 3 * 13`.
Aggregator for Track B.  v8.82.0 inhabits
Euler `a₅₃` of the Beal Frey cubic on the
86 mod-53 survivors: the value is in
`{-10,-2,1,6,14}` and misses `0,12` at
ℓ=13 under the Beal equation
(`beal_frey_a53_miss_86`).  Axioms
`[propext, Quot.sound]`.  That is **not**
`¬ ∃ A` for those 86.  `B14_honest` stays
the uninhabited `∀` on all 352.  Not Ribet,
not BCDT.
Aggregator for Track B.  v8.81.0 kills 266 of the
352 named `B ≡ 14` rows because `(B+3)¹³ − B⁴`
is not a fourth power modulo 53
(`direct_mod53_kill`, empty axioms).  The
count is **266**, not 287.  The remaining 86
rows survive this residue test.
`B14_honest` stays the uninhabited `∀` on all
352.  That is **not** Ribet, **not** BCDT.
Aggregator for Track B.  v8.80.0 searches Euler
`a₅₃` of the Beal Frey cubic over the 14
fourth-power residues mod 53.  Under the
Beal equation that trace misses `0,12`.
That is **not** `¬ ∃ A`, **not** BCDT,
**not** Ribet.  `B14_honest` stays a Prop.
`#print axioms` on the miss is
`[propext, Quot.sound]`.  Not `Classical.em`.
Aggregator for Track B.  v8.79.0 defines the
Beal Frey cubic `x(x-A^4)(x+B^4)` and
distinguishes it from the displayed cubic
`x(x-B^4)(x+(B+3)^4)`.  Roots, the Beal
rewrite, and a concrete disagreement are
inhabited.  BCDT / `beal_frey_modular`,
residual irreducibility, level lowering,
and `beal_..._B14_honest` stay Props.
`full_honest` stays the two-element
mod-16 kill.  `eliminated_5983_honest`
is the uninhabited conjunction.
That is **not** Wiles, **not** Ribet,
and **not** `¬ ∃ A` for the 352 rows.
`#print axioms` on the cubic lemmas is
in the allowed set.  Not `Classical.em`.
The old
`beal_4_13_13_gap3_B_le_2M_eliminated`
stays `Classical.em`.
Aggregator for Track B.  v8.78.0 extracts
`step60_b14_list` (352 named B≡14 rows)
and records displayed cubic 2-torsion.
That is **not** Wiles and **not** `¬ ∃ A`.
`level_lowering_to_26_B14` stays a Prop.
`beal_4_13_13_gap3_B_le_2M_eliminated_B14_honest`
stays the uninhabited `∀`.
`beal_4_13_13_gap3_B_le_2M_eliminated_full_honest`
is the displayed two-element list via
mod 16.  The old
`beal_4_13_13_gap3_B_le_2M_eliminated`
stays `Classical.em`.
Aggregator for Track B.  v8.77.0 records
`a₅₃` misses for the 352 named Step60
rows with `B ≡ 14 [MOD 16]`.
`beal_4_13_13_gap3_B_le_2M_eliminated_B14_kraus`
is vacuous on the displayed two-element
list (neither member is ≡ 14).
`beal_4_13_13_gap3_B_le_2M_eliminated_full`
is those two rows via mod 16.
That is not Ribet and not 5983 Beal
negations.  The old
`beal_4_13_13_gap3_B_le_2M_eliminated`
stays `Classical.em`.
Aggregator for Track B.  v8.76.0 inhabits
`beal_4_13_13_gap3_B_le_2M_eliminated_mod16`
(`B ≤ 2000000`, `B % 16 ≠ 14`) by
fourth-power residues modulo 16.
`#print axioms` empty.  `B ≡ 14 [MOD 16]`
survives as a Beal negation; the old
`beal_4_13_13_gap3_B_le_2M_eliminated`
stays `Classical.em`.  That is not Ribet
and not a Beal `∀`.
Aggregator for Track B.  v8.75.0 inhabits
`beal_4_13_13_gap3_B_196_eliminated` and
`beal_4_13_13_gap3_B_1500003_eliminated`
by fourth-power residues modulo 16
(`A^4 + B^4 = C^13`; `#print axioms`
empty).  That is not Ribet and not a
Beal `∀`.
`beal_4_13_13_gap3_B_le_2M_eliminated`
stays `Classical.em`.
`frey_modular` stays `Classical.em`.
`level_lowering_to_26` stays a Prop.
Chain `ExistsNewformLevel2` stays `0 ≠ 0`.
No new Beal `∀`.
Aggregator for Track B.  v8.74.0 inhabits
displayed `frey_mod13_irreducible` at
`B = 196` and `B = 1500003`.  That is
not Mazur and not Ribet.  `frey_modular`
stays `Classical.em`.
`level_lowering_to_26` stays a Prop.
Chain `ExistsNewformLevel2` stays `0 ≠ 0`.
No new Beal `∀`.
Aggregator for Track B.  v8.73.0 inhabits
displayed `exists_newform_level_26_dim2`
(`0 ≠ 12` at `p = 53`).  Chain
`ExistsNewformLevel2` stays `0 ≠ 0`.
No new Beal `∀`.
Aggregator for Track B.  v8.71.0 inhabits
RibetMazur `kraus_elimination_q_13_level_26_density`
and `ribet_mazur_pack_q_13_level_26` from the
v8.69.0 Int-mod-13 misses (`B = 196` and
`B = 1500003` only).  That is not `∀ B`
modular contradiction.  Density/Step
`kraus_elimination_q_13_level_26` stays
the uninhabited `∀`.  `ExistsNewformLevel2`
stays `0 ≠ 0`.  No new Beal `∀`.
Aggregator for Track B.  v8.69.0 inhabits
Level26_Newforms `level26_a_eliminated_by_53` /
`level26_b_eliminated_by_443` /
`kraus_elimination_q_13_level_26` as
Int-mod-13 misses.  Density/Step
`kraus_elimination_q_13_level_26` stays
the uninhabited `∀`.  `ExistsNewformLevel2`
stays `0 ≠ 0`.  No new Beal `∀`.
Aggregator for Track B.  v8.68.1 records
`List.take 500` locked `a₄₄₃(26a1)=21` /
`a₄₄₃(26b1)=-39`, computes `a53_E_196 = -2`
and `a443_E_1500003 = 24` by point-count
`decide`, and shows both miss the locked
traces at `ℓ = 13`.  The placeholder 2 is
not used.  The `∀` placeholders stay Props.
Aggregator for Track B.  v8.68.0 records
locked `a₅₃(26a1)=0` / `a₅₃(26b1)=12`,
inhabits `hasSmallZsigWitness_1500003` by
`decide` on `ZMod 443` / numeral `443*443`,
and inhabits displayed `2 ≢ 0 [MOD 13]`.
The `∀` placeholders stay Props.
Aggregator for Track B.  Level 26 newforms
skeleton records displayed ledger prefixes
`newform_26_a_qexp` / `newform_26_b_qexp`
(a₃(26a1)=1, a₅(26a1)=-3, a₃(26b1)=-3,
a₅(26b1)=-1) and links `kraus_primes_26`
to Track B `smallZsigPrimes`.
`zsig_density_links_to_kraus` is that list
equality plus `4488 + 5 * 299 = 5983`.
Elimination placeholders stay Props.
Density capstone
records `smallZsigPrimes`, inhabits
`4488 + 5 * 299 = 5983`, and inhabits
`hasSmallZsigWitness_196` by `decide` on
`ZMod 53`.  `beal_4_13_13_gap3_B_le_2M_eliminated`
is `Classical.em`, not Kraus.  Step60 inhabits
5983 named `B ≤ 2000000` gap-3 rows
(5684 Step59 including the inhabited
outlier `(200000,200003)` plus 299
sampled `(1900000, 2000000]` rows, first
`(1900001,1900004)` p=53, last
`(2000000,2000003)` p=53).
The s2_26 pack stays a coefficient check,
not Ribet.  Step59 inhabits
5684 named `B ≤ 1900000` gap-3 rows
(5385 Step58 including the inhabited
outlier `(200000,200003)` plus 299
sampled `(1800000, 1900000]` rows, first
`(1800004,1800007)` p=53, last
`(1899995,1899998)` p=443).
The s2_26 pack stays a coefficient check,
not Ribet.  Step58 inhabits
5385 named `B ≤ 1800000` gap-3 rows
(5086 Step57 including the inhabited
outlier `(200000,200003)` plus 299
sampled `(1700000, 1800000]` rows, first
`(1700007,1700010)` p=53, last
`(1800000,1800003)` p=79).
The s2_26 pack stays a coefficient check,
not Ribet.  Step57 inhabits
5086 named `B ≤ 1700000` gap-3 rows
(4787 Step56 including the inhabited
outlier `(200000,200003)` plus 299
sampled `(1600000, 1700000]` rows, first
`(1600001,1600004)` p=53, last
`(1700000,1700003)` p=547).
The s2_26 pack stays a coefficient check,
not Ribet.  Step56 inhabits
4787 named `B ≤ 1600000` gap-3 rows
(4488 Step55 including the inhabited
outlier `(200000,200003)` plus 299
sampled `(1500000, 1600000]` rows, first
`(1500003,1500006)` p=443, last
`(1600000,1600003)` p=79).
The s2_26 pack stays a coefficient check,
not Ribet.  Step55 inhabits
4488 named `B ≤ 1500000` gap-3 rows
(4189 Step54 including the inhabited
outlier `(200000,200003)` plus 299
sampled `(1400000, 1500000]` rows, first
`(1400001,1400004)` p=53, last
`(1499999,1500002)` p=53).
The s2_26 pack stays a coefficient check,
not Ribet.  Step54 inhabits
4189 named `B ≤ 1400000` gap-3 rows
(3890 Step53 including the inhabited
outlier `(200000,200003)` plus 299
sampled `(1300000, 1400000]` rows, first
`(1300002,1300005)` p=53, last
`(1400000,1400003)` p=53).
The s2_26 pack stays a coefficient check,
not Ribet.  Step53 inhabits
3890 named `B ≤ 1300000` gap-3 rows
(3591 Step52 including the inhabited
outlier `(200000,200003)` plus 299
sampled `(1200000, 1300000]` rows, first
`(1200001,1200004)` p=157, last
`(1299998,1300001)` p=79).
The s2_26 pack stays a coefficient check,
not Ribet.  Step52 inhabits
3591 named `B ≤ 1200000` gap-3 rows
(3292 Step51 including the inhabited
outlier `(200000,200003)` plus 299
sampled `(1100000, 1200000]` rows, first
`(1100002,1100005)` p=53, last
`(1199998,1200001)` p=131).
The s2_26 pack stays a coefficient check,
not Ribet.  Step51 inhabits
3292 named `B ≤ 1100000` gap-3 rows
(2993 Step50 including the inhabited
outlier `(200000,200003)` plus 299
sampled `(1000000, 1100000]` rows, first
`(1000003,1000006)` p=157, last
`(1099999,1100002)` p=53).
The s2_26 pack stays a coefficient check,
not Ribet.  Step50 inhabits
2993 named `B ≤ 1000000` gap-3 rows
(2694 Step49 including the inhabited
outlier `(200000,200003)` plus 299
sampled `(900000, 1000000]` rows, first
`(900002,900005)` p=79, last
`(1000000,1000003)` p=79).
The s2_26 pack stays a coefficient check,
not Ribet.  Step49 inhabits
2694 named `B ≤ 900000` gap-3 rows
(2395 Step48 including the inhabited
outlier `(200000,200003)` plus 299
sampled `(800000, 900000]` rows, first
`(800005,800008)` p=131, last
`(899999,900002)` p=53).
The s2_26 pack stays a coefficient check,
not Ribet.  Step48 inhabits
2395 named `B ≤ 800000` gap-3 rows
(2096 Step47 including the inhabited
outlier `(200000,200003)` plus 299
sampled `(700000, 800000]` rows, first
`(700001,700004)` p=131, last
`(800000,800003)` p=53).
The s2_26 pack stays a coefficient check,
not Ribet.  Step47 inhabits
2096 named `B ≤ 700000` gap-3 rows
(1797 Step46 including the inhabited
outlier `(200000,200003)` plus 299
sampled `(600000, 700000]` rows, first
`(600001,600004)` p=157, last
`(700000,700003)` p=521).
The s2_26 pack stays a coefficient check,
not Ribet.  Step46 inhabits
1797 named `B ≤ 600000` gap-3 rows
(1498 Step45 including the inhabited
outlier `(200000,200003)` plus 299
sampled `(500000, 600000]` rows, first
`(500003,500006)` p=79, last
`(600000,600003)` p=53).
The s2_26 pack stays a coefficient check,
not Ribet.  Step45 inhabits
1498 named `B ≤ 500000` gap-3 rows
(1199 Step44 including the inhabited
outlier `(200000,200003)` plus 299
sampled `(400000, 500000]` rows, first
`(400001,400004)` p=53, last
`(500000,500003)` p=547).
The s2_26 pack stays a coefficient check,
not Ribet.  Step44 inhabits
1199 named `B ≤ 400000` gap-3 rows
(900 Step43 including the inhabited
outlier `(200000,200003)` plus 299
exact `(300000, 400000]` rows, first
`(300003,300006)` p=157, last
`(400000,400003)` p=79).
The s2_26 pack stays a coefficient check,
not Ribet.  Step43 inhabits
900 named `B ≤ 300000` gap-3 rows
(601 Step42 including the inhabited
outlier `(200000,200003)` plus 299
`(200000, 300000]` rows, last
`(299999,300002)` p=131).
The s2_26 pack stays a coefficient check,
not Ribet.  Step42 inhabits the
`(200000,200003)` outlier at
`p = 12186951011`.  Step41 inhabits
600 named `B ≤ 200000` gap-3 rows.
The s2_26 pack stays a coefficient check,
not Ribet.  Step40
`level_lowering_26_to_2_from_no_match`
stays inhabited (displayed misses plus
displayed `S₂(Γ₀(2)) = 0`).  Step39
`kraus_elimination_26a1` and Step38
`kraus_elimination_26b1` stay inhabited.
`kraus_elimination_q_13_level_26` stays uninhabited.
`B > 400000` Bugeaud stays uninhabited.
`bugeaud_P_phi13_gt_C_when_B_gt_50000`
and `rad_S_gt_sqrt_13_C12_when_squarefull_B_gt_50000`
stay uninhabited.
`exists_p_with_order_ne_13_mod_p_sq_inhabited`
and `S_has_prime_with_exp_one_when_C_ge_B_plus_3`
stay uninhabited.
Step35 rad-bound infrastructure stays inhabited.
Bare odd-`A` / full close stay uninhabited.
Step18 primitive / `of_vp1` stay.
`zsigmondy_vp_S_eq_one_inhabited` is
Hensel-conditional.
Step17 `S_val` / k-shape stay.
Step16 S-bounds / k-shape stay.
Step15 `oddPart_rec` / `2q` stay.
Step13 `frey_curve_conductor` stays.
`ExistsNewformLevel2` is still `0 ≠ 0`.
`beal_from_ribet` stays *from*
`ModularImpliesLevel2Newform`.  Not imported
by the 24-module none chain.
-/
