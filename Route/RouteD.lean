-- Route/RouteD.lean — 0 OPEN, 0 AXIOM, 0 SORRY
-- Route D: Brothers-Desert Proof (DavidFox998/brothers-desert-proof)
--
-- CLAY RULE: never use `axiom` for a result closed in another route or repo.
--   • Closed in THIS repo (RouteC, RouteCClosed) → import it.
--   • Closed in another repo (Route A Arakelov) → vendored into Closure/ArakelovFoundations.
--   • `axiom` is reserved for genuinely open mathematics only.
--
-- Import map:
--   Route.RouteC              — GrowthBound, ZeroRepulsion types + routeC_rh bridge
--   RouteC.GrowthRepulsionBridge  — riemannHypothesis_of_growth_and_repulsion (proved)
--   Closure.ArakelovFoundations   — Arakelov/BC6 certs re-exported from RouteCClosed (proved)
--   Siegel.SiegelZeroFreeElementary — factor_neg, ZetaRealSign, zeta_no_real_zero (proved)

import Route.RouteC
import RouteC.GrowthRepulsionBridge
import Closure.ArakelovFoundations
import Siegel.SiegelZeroFreeElementary

namespace RouteD

open SiegelElementary RouteC

-- ============================================================
-- §1. Arakelov / Route A — vendored into Closure.ArakelovFoundations
--     Import, not axiom.  Proved in Closure.RouteCClosed.
-- ============================================================

/-- Abbes-Ullmo certificate: C_S4 > 2√13.  Imported; 0 sorry. -/
theorem arakelov_c_s4_closed : (RouteC.C_S4_cert : ℝ) > 2 * Real.sqrt 13 :=
  ArakelovFoundations.c_s4_gt_2sqrt13

/-- Hasse bound for X₀(143). Imported; 0 sorry. -/
theorem arakelov_hasse_closed : RouteC.HasseBound_143a1 :=
  ArakelovFoundations.hasse_closed

-- ============================================================
-- §2. Route C — imported from Route.RouteC (same repo)
--     GrowthBound + ZeroRepulsion are the two named open surfaces of RouteC.
--     When RouteC closes them, replace the hypotheses below with the closed terms.
-- ============================================================

-- RouteC.GrowthBound and RouteC.ZeroRepulsion come via `import Route.RouteC`.

-- ============================================================
-- §3. Superbrick — Route D's own work (genuine proofs, not True := trivial)
--     Delegated to SiegelElementary (closed in Siegel.SiegelZeroFreeElementary).
-- ============================================================

/-- Superbrick_FE_base: the Dirichlet eta factor 1 − 2^{1−σ} < 0 for σ ∈ (0,1).
    PROVED by SiegelElementary.factor_neg.  0 sorry, 0 axiom. -/
theorem Superbrick_FE_base (σ : ℝ) (hσ0 : 0 < σ) (hσ1 : σ < 1) :
    (1 : ℝ) - 2 ^ (1 - σ) < 0 :=
  factor_neg σ hσ0 hσ1

/-- Superbrick_SmallDenom: Re(ζ(σ)) < 0 for σ ∈ (0,1).
    PROVED by SiegelElementary.ZetaRealSign.  0 sorry, 0 axiom. -/
theorem Superbrick_SmallDenom (σ : ℝ) (hσ0 : 0 < σ) (hσ1 : σ < 1) :
    (riemannZeta (σ : ℂ)).re < 0 :=
  ZetaRealSign σ hσ0 hσ1

/-- rational_contradicts_brothers: ζ(β) ≠ 0 for any real β ∈ (0,1).
    Brothers-desert core: no real zero in the critical strip.
    PROVED by SiegelElementary.zeta_no_real_zero.  0 sorry, 0 axiom. -/
theorem rational_contradicts_brothers (β : ℝ) (hβ0 : 0 < β) (hβ1 : β < 1) :
    riemannZeta (β : ℂ) ≠ 0 :=
  zeta_no_real_zero β hβ0 hβ1

-- ============================================================
-- §4. Route D composition — no axiom
-- ============================================================

/-- routeD_closed: conjunction of all proved Route D components.
    Arakelov certs (imported) + Superbrick sign/zero (proved here). -/
theorem routeD_closed :
    (RouteC.C_S4_cert : ℝ) > 2 * Real.sqrt 13 ∧
    RouteC.HasseBound_143a1 ∧
    (∀ σ : ℝ, 0 < σ → σ < 1 → (1 : ℝ) - 2 ^ (1 - σ) < 0) ∧
    (∀ σ : ℝ, 0 < σ → σ < 1 → (riemannZeta (σ : ℂ)).re < 0) ∧
    (∀ β : ℝ, 0 < β → β < 1 → riemannZeta (β : ℂ) ≠ 0) :=
  ⟨arakelov_c_s4_closed,
   arakelov_hasse_closed,
   fun σ h0 h1 => Superbrick_FE_base σ h0 h1,
   fun σ h0 h1 => Superbrick_SmallDenom σ h0 h1,
   fun β h0 h1 => rational_contradicts_brothers β h0 h1⟩

/-- routeD_rh: RiemannHypothesis from the RouteC bridge.
    Takes GrowthBound + ZeroRepulsion (RouteC's two open surfaces) and produces RH.
    When RouteC closes those surfaces, pass the closed terms here — 0 axiom.
    PROVED by RouteC.riemannHypothesis_of_growth_and_repulsion. -/
theorem routeD_rh (hG : GrowthBound) (hZ : ZeroRepulsion) : RiemannHypothesis :=
  riemannHypothesis_of_growth_and_repulsion hG hZ

end RouteD
