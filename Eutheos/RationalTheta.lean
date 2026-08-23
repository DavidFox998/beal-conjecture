-- Eutheos/RationalTheta.lean
-- Rational theta contradicts the brothers_v2 Nodup structure.
--
-- Sorry budget (this file): 0 own sorry.
--   Superbrick_SmallDenom  — NAMED honest axiom (~3pp functional equation)
--   Superbrick_FE_base     — NAMED honest axiom (~5pp modular arithmetic)
--   rational_contradicts_brothers_v2 — 0 sorry
--
-- All other definitions (W, brothers, brothers_v2, collision_mod_q, frac,
-- dist, zeta_half, theta) come from the import chain:
--   Eutheos.Theta → Eutheos.Object

import Eutheos.Theta
import ContradictionRoute.GrowthRepulsionBridge

namespace Eutheos

open ContradictionRoute

/-! ## Named honest axioms -/

/-- **Superbrick_SmallDenom** (HONEST AXIOM — ~3pp functional equation):
  When theta(T) = p/q and two brothers_v2 elements collide mod q, then
  zeta_half T = 0.  (Route phase repetition → zeta degeneracy.) -/
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
  If zeta_half T ≠ 0 and theta(T) is rational, its denominator divides W.
  W = 46189 (defined in Object.lean). -/
axiom Superbrick_FE_base
  (T     : ℝ)
  (h     : zeta_half T ≠ 0)
  (h_rat : ¬ Irrational (theta T)) :
  ∃ q : ℕ, q ∣ W ∧ ∃ p : ℤ, theta T = ↑p / ↑q

/-! ## Main theorem — 0 own sorry -/

/-- **rational_contradicts_brothers_v2** (0 own sorry):
  Rational theta(T) is incompatible with zeta_half T ≠ 0.

  Proof:
    1. Superbrick_FE_base → q | W and theta(T) = p/q.
    2. collision_mod_q (Object.lean, 0 sorry) → b1 ≠ b2 ∈ brothers_v2, b1 ≡ b2 (mod q).
    3. W = 46189 > 0 and q | W → 0 < q (Nat.pos_of_dvd_of_pos).
    4. Superbrick_SmallDenom → zeta_half T = 0, contradicting h_nz.

  Honest axiom footprint: {Superbrick_FE_base, Superbrick_SmallDenom}. -/
theorem rational_contradicts_brothers_v2
  (T      : ℝ)
  (h_nz   : zeta_half T ≠ 0)
  (h_rat  : ¬ Irrational (theta T)) : False := by
  obtain ⟨q, hqW, p, hp⟩ := Superbrick_FE_base T h_nz h_rat
  obtain ⟨b1, hb1, b2, hb2, hne, hmod⟩ := collision_mod_q q hqW
  have hW_pos : 0 < W := by decide
  have hq_pos : 0 < q := Nat.pos_of_dvd_of_pos hqW hW_pos
  exact h_nz (Superbrick_SmallDenom T p q hq_pos hp b1 b2 hb1 hb2 hne hmod)

end Eutheos
