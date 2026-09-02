/-
  Patching/Depth — auditable depth bookkeeping for the patched tower

  Mathlib 4.12 does not provide the complete commutative-algebraic
  Taylor–Wiles/Auslander–Buchsbaum pipeline needed here.  This module therefore
  records the numerical depth equalities a genuine construction must prove and
  derives only their elementary consequence.  It does not advertise these
  fields as a proof of maximal Cohen–Macaulayness.
-/
import Beal.Patching.PatchedModule

namespace Beal.Patching

universe u v

/-- Explicit depth equalities associated with a patched module. -/
structure PatchedDepthData
    {R : Type u} {N : Type v}
    [Semiring R] [AddCommMonoid N] [Module R N]
    (_D : PatchedModuleData R N) where
  ringDepth : ℕ
  moduleDepth : ℕ
  regularDimension : ℕ
  ring_regular : ringDepth = regularDimension
  maximalCM : moduleDepth = ringDepth

/-- The recorded maximal-Cohen–Macaulay equality implies the requested depth
    inequality. -/
theorem depth_module_ge_ring
    {R : Type u} {N : Type v}
    [Semiring R] [AddCommMonoid N] [Module R N]
    {D : PatchedModuleData R N}
    (h : PatchedDepthData D) :
    h.moduleDepth ≥ h.ringDepth := by
  rw [h.maximalCM]

#print axioms PatchedDepthData
#print axioms depth_module_ge_ring
-- Expected foundational dependencies: none beyond the structure fields.

end Beal.Patching