import Siegel.SiegelZeroFreeRe1
import Siegel.SiegelZeroFreeElementary

namespace SiegelZeroFree
open SiegelRe1

-- Keep the qualified name `SiegelZeroFree.SiegelZeroFree` for downstream
-- imports; the scoped suppression documents that the matching namespace and
-- declaration name are an intentional compatibility surface.
set_option linter.dupNamespace false in
def SiegelZeroFree : Prop := SiegelRe1.SiegelZeroFreeRe1
theorem siegel_poussin (θ : ℝ) : 0 ≤ 3 + 4 * Real.cos θ + Real.cos (2 * θ) :=
  poussin_cos_combo_nonneg θ
end SiegelZeroFree
