/-
  Galois/07c_Ihara — coefficient-level boundary for the mod-ℓ Ihara map

  This file deliberately contains no modular-form imports. Its only ambient
  space is `CoefficientSequence ℓ = ℕ → ZMod ℓ`.

  The raw map `(a, b) ↦ B₁ a + Bp b` has a cancellation kernel on unrestricted
  coefficient sequences. A genuine Ihara theorem must restrict to the actual
  level-M modular-form subspace and supply local geometric/Hecke input.
-/
import Beal.Galois.«05_Hecke»

namespace Beal.Galois

/-- The first coefficient-level degeneracy map. -/
def B₁ (ℓ : ℕ) :
    CoefficientSequence ℓ →ₗ[ZMod ℓ] CoefficientSequence ℓ :=
  { toFun := fun a => a
    map_add' := by intro a b; rfl
    map_smul' := by intro c a; rfl }

/-- The coefficient-level `B_p` degeneracy map. -/
def BpCoeff (p : ℕ) {ℓ : ℕ} (a : CoefficientSequence ℓ) (n : ℕ) :
    ZMod ℓ :=
  if p ∣ n then a (n / p) else 0

def Bp (p ℓ : ℕ) :
    CoefficientSequence ℓ →ₗ[ZMod ℓ] CoefficientSequence ℓ :=
  { toFun := BpCoeff p
    map_add' := by
      intro a b
      funext n
      by_cases hpn : p ∣ n <;> simp [BpCoeff, hpn, add_assoc]
    map_smul' := by
      intro c a
      funext n
      by_cases hpn : p ∣ n <;> simp [BpCoeff, hpn] }

/-- The coefficient-only analogue of `(B₁, B_p)`. -/
def IharaMap (p ℓ : ℕ) :
    (CoefficientSequence ℓ × CoefficientSequence ℓ) →ₗ[ZMod ℓ]
      CoefficientSequence ℓ :=
  { toFun := fun v => B₁ ℓ v.1 + Bp p ℓ v.2
    map_add' := by
      rintro ⟨a, b⟩ ⟨c, d⟩
      funext n
      by_cases hpn : p ∣ n
      · simp [B₁, Bp, BpCoeff, hpn, add_assoc, add_left_comm, add_comm]
      · simp [B₁, Bp, BpCoeff, hpn]
    map_smul' := by
      intro c v
      funext n
      simp [B₁, Bp, BpCoeff, mul_add, add_assoc, add_left_comm, add_comm] }

/-- The desired local Ihara assertion, stated literally as `ker = 0`. -/
def IharaKernelZero (p ℓ : ℕ) : Prop :=
  LinearMap.ker (IharaMap p ℓ) = ⊥

/-- The raw coefficient-sequence map has a formal cancellation kernel. -/
theorem iharaMap_has_coefficient_kernel
    {p ℓ : ℕ} [Nontrivial (ZMod ℓ)] :
    ∃ v : CoefficientSequence ℓ × CoefficientSequence ℓ,
      v ≠ 0 ∧ IharaMap p ℓ v = 0 := by
  let oneSeq : CoefficientSequence ℓ := 1
  let v : CoefficientSequence ℓ × CoefficientSequence ℓ :=
    (-Bp p ℓ oneSeq, oneSeq)
  refine ⟨v, ?_, ?_⟩
  · intro hv
    have hOne : oneSeq = 0 := congrArg Prod.snd hv
    have hOneAtZero : (1 : ZMod ℓ) = 0 := by
      simpa [oneSeq] using congrFun hOne 0
    exact one_ne_zero hOneAtZero
  · ext n
    simp [v, IharaMap, B₁, Bp, BpCoeff, add_assoc]

-- MISSING: proving `IharaKernelZero` requires the actual level-M form
-- subspace and the local Ihara geometric input.

#print axioms B₁
#print axioms Bp
#print axioms IharaMap
#print axioms IharaKernelZero
#print axioms iharaMap_has_coefficient_kernel

end Beal.Galois