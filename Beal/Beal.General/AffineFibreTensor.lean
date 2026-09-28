import Beal.«Beal.General».ProjectiveBaseMorphism
import Mathlib.LinearAlgebra.TensorProduct.RightExactness

/-!
The affine algebra needed on each chart of a scheme-theoretic fibre:
tensoring an algebra with a quotient of the base agrees with the
quotient by the extended base ideal. This does not yet identify the
quotient of a homogeneous localization with the localization of
the graded coordinate quotient.
-/

namespace Beal.General

open scoped TensorProduct

variable {R S : Type*} [CommRing R] [CommRing S] [Algebra R S]

noncomputable def affineFibreTensorAlgHom (I : Ideal R) :
    S ⊗[R] (R ⧸ I) →ₐ[R]
      S ⧸ Ideal.map (algebraMap R S) I := by
  let J : Ideal S := Ideal.map (algebraMap R S) I
  let g : R ⧸ I →ₐ[R] S ⧸ J :=
    Ideal.Quotient.liftₐ I (Algebra.ofId R (S ⧸ J)) (by
      intro a ha
      change Ideal.Quotient.mk J (algebraMap R S a) = 0
      exact Ideal.Quotient.eq_zero_iff_mem.mpr
        (Ideal.mem_map_of_mem (algebraMap R S) ha))
  exact Algebra.TensorProduct.lift (S := R)
    (Ideal.Quotient.mkₐ R J) g (fun _ _ => Commute.all _ _)

/-- The underlying linear equivalence supplied by tensor-product
right exactness, with its target written as an ideal quotient. -/
noncomputable def affineFibreTensorLinearEquiv (I : Ideal R) :
    S ⊗[R] (R ⧸ I) ≃ₗ[R]
      S ⧸ Ideal.map (algebraMap R S) I := by
  exact (tensorQuotEquivQuotSMul S I).trans
    (Submodule.quotEquivOfEq
      (I • (⊤ : Submodule R S))
      ((Ideal.map (algebraMap R S) I).restrictScalars R)
      (Ideal.smul_top_eq_map I))

/-- The tensor-product algebra map agrees with the right-exactness
linear equivalence on pure tensors, hence everywhere. -/
theorem affineFibreTensorAlgHom_toLinearMap_eq (I : Ideal R) :
    (affineFibreTensorAlgHom (S := S) I).toLinearMap =
      (affineFibreTensorLinearEquiv (S := S) I).toLinearMap := by
  apply TensorProduct.ext'
  intro s q
  obtain ⟨r, rfl⟩ := Ideal.Quotient.mk_surjective q
  have hright :
      (affineFibreTensorLinearEquiv (S := S) I)
          (s ⊗ₜ[R] Ideal.Quotient.mk I r) =
        Ideal.Quotient.mk (Ideal.map (algebraMap R S) I) (r • s) := by
    simp only [affineFibreTensorLinearEquiv, LinearEquiv.trans_apply,
      tensorQuotEquivQuotSMul_tmul_mk, Submodule.quotEquivOfEq_mk]
    rfl
  change (affineFibreTensorAlgHom (S := S) I)
      (s ⊗ₜ[R] Ideal.Quotient.mk I r) =
    (affineFibreTensorLinearEquiv (S := S) I)
      (s ⊗ₜ[R] Ideal.Quotient.mk I r)
  rw [hright]
  simp [affineFibreTensorAlgHom, Algebra.smul_def, Algebra.ofId_apply,
    mul_comm]

/-- An affine base change along a quotient of the base is the
quotient by the extended ideal, as a ring isomorphism. -/
noncomputable def affineFibreTensorRingEquiv (I : Ideal R) :
    S ⊗[R] (R ⧸ I) ≃+*
      S ⧸ Ideal.map (algebraMap R S) I := by
  let F := affineFibreTensorAlgHom (S := S) I
  let E := affineFibreTensorLinearEquiv (S := S) I
  have h (x : S ⊗[R] (R ⧸ I)) : F x = E x :=
    LinearMap.congr_fun (affineFibreTensorAlgHom_toLinearMap_eq (S := S) I) x
  refine RingEquiv.ofBijective F.toRingHom ⟨?_, ?_⟩
  · intro x y hxy
    apply E.injective
    calc
      E x = F x := (h x).symm
      _ = F y := hxy
      _ = E y := h y
  · intro y
    obtain ⟨x, hx⟩ := E.surjective y
    exact ⟨x, (h x).trans hx⟩

end Beal.General