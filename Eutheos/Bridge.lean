-- Eutheos/Bridge.lean

import Eutheos.Theta
import ContradictionRoute.GrowthRepulsionBridge

namespace Eutheos

theorem ThetaRH_implies_RH
  (hG : ContradictionRoute.GrowthBound)
  (hZ : ContradictionRoute.ZeroRepulsion)
  (_ : ThetaSelfSymmetryRH) :
  ContradictionRoute.RiemannHypothesis :=
ContradictionRoute.riemannHypothesis_of_growth_and_repulsion hG hZ

theorem RH_implies_ThetaRH
  (_hrh : ContradictionRoute.RiemannHypothesis)
  (h_irr : ∀ T : ℝ, zeta_half T ≠ 0 → Irrational (theta T)) :
  ThetaSelfSymmetryRH :=
h_irr

theorem bridge_iff
  (hG   : ContradictionRoute.GrowthBound)
  (hZ   : ContradictionRoute.ZeroRepulsion)
  (h_irr : ∀ T : ℝ, zeta_half T ≠ 0 → Irrational (theta T)) :
  ThetaSelfSymmetryRH ↔ ContradictionRoute.RiemannHypothesis :=
⟨ThetaRH_implies_RH hG hZ, fun hrh => RH_implies_ThetaRH hrh h_irr⟩

end Eutheos
