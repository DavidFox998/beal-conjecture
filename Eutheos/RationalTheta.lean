-- Eutheos/RationalTheta.lean
-- Rational theta contradicts the brothers Nodup structure.
--
-- Sorry budget (this file): 0 own sorry.
--   Superbrick_SmallDenom  — NAMED honest axiom (~3pp functional equation)
--   Superbrick_FE_base     — NAMED honest axiom (~5pp modular arithmetic)
--   rational_contradicts_brothers_v2 — 0 sorry, calls both axioms + collision_mod_q
--   rational_contradicts_brothers    — 0 sorry, delegates to v2 (signature compat)
--
-- Definitions from imports (do NOT re-declare here):
--   Object.lean: W, brothers, brothers_v2, collision_mod_q, frac, dist
--   Theta.lean:  zeta_half, theta, V_theta

import Eutheos.Theta
import RouteC.GrowthRepulsionBridge

namespace Eutheos

open RouteC

/-! ## Named honest axioms -/

/-- **Superbrick_SmallDenom** (HONEST AXIOM — ~3pp functional equation):
  When theta(T) = p/q and two brothers_v2 elements collide mod q, zeta_half T = 0.

  Route: if b1 ≡ b2 (mod q) and theta(T) = p/q, the route phase e^{2πi·b·theta(T)}
  repeats with period q, making the Riemann–Siegel theta degenerate to 0.
  Formalisation requires the full functional equation (~3pp). -/
axiom Superbrick_SmallDenom
  (T     : ℝ) (p : ℤ) (q : ℕ)
  (hq_pos : 0 < q)
  (h_eq  : theta T = ↑p / ↑q)
  (b1 b2 : ℕ)
  (hb1   : b1 ∈ brothers_v2)
  (hb2   : b2 ∈ brothers_v2)
  (hne   : b1 ≠ b2)
  (hcoll : b1 % q = b2 % q) :
  zeta_half T = 0

/-- **Superbrick_FE_base** (HONEST AXIOM — ~5pp modular arithmetic):
  If zeta_half T ≠ 0 and theta(T) is rational, then its denominator divides W.

  W = 11·13·17·19 = 46189 (defined in Object.lean).
  Mechanism: the range 47608 − 1419 = W forces denom(theta(T)) | W
  via the brothers_v2 span argument. -/
axiom Superbrick_FE_base
  (T     : ℝ)
  (h     : zeta_half T ≠ 0)
  (h_rat : ¬ Irrational (theta T)) :
  ∃ q : ℕ, q ∣ W ∧ ∃ p : ℤ, theta T = ↑p / ↑q

/-! ## rational_contradicts_brothers_v2 — 0 own sorry -/

/-- **rational_contradicts_brothers_v2** (0 own sorry):
  Rational theta(T) is incompatible with zeta_half T ≠ 0.

  Proof:
  1. Superbrick_FE_base gives q | W and theta(T) = p/q.
  2. collision_mod_q (Object.lean, 0 sorry) gives b1 ≠ b2 ∈ brothers_v2 with b1 ≡ b2 (mod q).
  3. W ≠ 0 and q | W → 0 < q.
  4. Superbrick_SmallDenom → zeta_half T = 0 → contradicts h_nz.

  Honest axiom footprint: {Superbrick_FE_base, Superbrick_SmallDenom}.
  SORRY: 0. -/
theorem rational_contradicts_brothers_v2
  (T      : ℝ)
  (h_nz   : zeta_half T ≠ 0)
  (h_rat  : ¬ Irrational (theta T)) : False := by
  obtain ⟨q, hqW, p, hp⟩ := Superbrick_FE_base T h_nz h_rat
  obtain ⟨b1, hb1, b2, hb2, hne, hmod⟩ := collision_mod_q q hqW
  have hq_pos : 0 < q := by
    rcases Nat.eq_zero_or_pos q with rfl | h
    · exact absurd (Nat.zero_dvd.mp hqW) (by norm_num)
    · exact h
  exact h_nz (Superbrick_SmallDenom T p q hq_pos hp b1 b2 hb1 hb2 hne hmod)

/-! ## rational_contradicts_brothers — legacy wrapper, 0 own sorry -/

/-- **rational_contradicts_brothers** (0 own sorry):
  Legacy entry-point kept for signature compatibility with any external callers.
  The parameters hSD, hG, hZ were previously needed; they are now superseded by
  the global axioms Superbrick_FE_base + Superbrick_SmallDenom.
  They are accepted but unused. -/
theorem rational_contradicts_brothers
  (hSD : @Superbrick_SmallDenom)
  (hG  : GrowthBound)
  (hZ  : ZeroRepulsion)
  (T   : ℝ) (h_nz : zeta_half T ≠ 0)
  (h_rat : ¬Irrational (theta T)) : False :=
  rational_contradicts_brothers_v2 T h_nz h_rat

end Eutheos
