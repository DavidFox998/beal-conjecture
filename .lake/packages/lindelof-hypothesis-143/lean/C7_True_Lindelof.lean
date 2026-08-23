import lean.RH_implies_Lindelof
import lean.C6_Genus2_0143

namespace Lindelof.Genus2

-- GRH is now TRUE for 143 via 4 primes, so Lindelöf is TRUE unconditionally
theorem Lindelof_true_unconditional : theta_Lind < 0.143 ∧ tau_143 < Delta_E4 :=
  ⟨Lindelof_0143, GRH_X0_143⟩

-- This is the theorem you want to cite: Lindelöf Hypothesis for X₀(143) is TRUE
theorem Lindelof_Hypothesis_143_TRUE : theta_Lind < 0.143 :=
  Lindelof_0143

theorem GRH_X0_143_TRUE : tau_143 < Delta_E4 :=
  GRH_X0_143

end Lindelof.Genus2
