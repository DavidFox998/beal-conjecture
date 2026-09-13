import BealLevel26Foundations.CoefficientLedger_26
import BealLevel26Foundations.M3_Explicit
import BealLevel26Foundations.FiniteChecks_26
import Beal.Foundations

namespace BealLevel26Foundations

/-!
# Beal Level-26 Foundations

This is the zero-assumption compilation anchor for the foundations repository.
It imports the 101-coefficient ledger, the derived mod-3 matrix, and the finite
checks at 2 and 13. No unfinished claim is represented here as an axiom or
placeholder proof.
-/

def release : String :=
  "v1.3.0"

theorem release_is_computable :
    release = "v1.3.0" := by
  rfl

end BealLevel26Foundations