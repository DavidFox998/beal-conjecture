/-
  Mathlib415QExpansionProbe

  This module exists only on the beal-4.15-experimental branch.  It records
  the upstream q-expansion API that was verified against Lean/Mathlib 4.15.
  It is not a proof of the Beal project's mod-l degeneracy or Ihara boundary.
-/
import Mathlib.NumberTheory.ModularForms.QExpansion

#check SlashInvariantFormClass.cuspFunction
#check SlashInvariantFormClass.eq_cuspFunction
#check ModularFormClass.differentiableAt_cuspFunction
#check ModularFormClass.analyticAt_cuspFunction_zero
#check CuspFormClass.cuspFunction_apply_zero
#check CuspFormClass.exp_decay_atImInfty
