import Mathlib.RingTheory.Noetherian
import Mathlib.RingTheory.Nilpotent.Lemmas
import Mathlib.RingTheory.LocalRing.MaximalIdeal.Basic
import Mathlib.RingTheory.Ideal.MinimalPrime
import Mathlib.RingTheory.Artinian
import Mathlib.LinearAlgebra.FiniteDimensional
import Mathlib.Algebra.Module.Torsion

/-!
Elementary Noetherian local dimension prerequisites. These lemmas do not
assert the principal ideal theorem or a bound on the height of a prime.
-/

namespace Beal.General

open FiniteDimensional

/-- Finite-dimensional vector spaces are Artinian modules. The pinned
library supplies strict monotonicity of finrank but not this instance. -/
theorem finiteDimensional_isArtinian
    {K V : Type*} [Field K] [AddCommGroup V] [Module K V]
    [FiniteDimensional K V] : IsArtinian K V := by
  refine ⟨Subrelation.wf (fun {A B : Submodule K V} (h : A < B) =>
    Submodule.finrank_strictMono h) ?_⟩
  exact InvImage.wf (fun S : Submodule K V => finrank K S) Nat.lt_wfRel.wf

set_option maxHeartbeats 1000000 in
/-- A finite module annihilated by a maximal ideal is Artinian, since it
is finite-dimensional over the residue field. -/
theorem isArtinian_of_finite_of_maximal_annihilates
    {R M : Type*} [CommRing R] [AddCommGroup M] [Module R M]
    [Module.Finite R M] (I : Ideal R) (hI : I.IsMaximal)
    (h : Module.IsTorsionBySet R M I) : IsArtinian R M := by
  letI : Field (R ⧸ I) := Ideal.Quotient.field I
  letI : Module (R ⧸ I) M := h.module
  letI : IsScalarTower R (R ⧸ I) M := h.isScalarTower
  haveI : Module.Finite (R ⧸ I) M := by
    obtain ⟨s, hs⟩ := (Module.Finite.out : (⊤ : Submodule R M).FG)
    have hle : Submodule.span R (↑s : Set M) ≤
        (Submodule.span (R ⧸ I) (↑s : Set M)).restrictScalars R :=
      Submodule.span_le.mpr (by
        intro x hx
        change x ∈ Submodule.span (R ⧸ I) (↑s : Set M)
        exact Submodule.subset_span hx)
    refine ⟨⟨s, eq_top_iff.mpr (fun x _ => ?_)⟩⟩
    exact hle (by rw [hs]; trivial)
  have hk : IsArtinian (R ⧸ I) M := finiteDimensional_isArtinian
  let lift (p : Submodule R M) : Submodule (R ⧸ I) M :=
    { carrier := p
      zero_mem' := p.zero_mem
      add_mem' := fun ha hb => p.add_mem ha hb
      smul_mem' := by rintro ⟨b⟩ x hx; exact p.smul_mem b hx }
  have hstrict : StrictMono lift := by
    intro a b hab
    change a < b
    exact hab
  exact ⟨Subrelation.wf (fun {a b : Submodule R M} (hab : a < b) =>
    hstrict hab) (InvImage.wf lift hk.wf)⟩

set_option maxHeartbeats 1000000 in
/-- A finite module killed by a power of the maximal ideal of a
Noetherian local ring is Artinian. The proof uses the successive
quotients by the maximal-ideal filtration. -/
theorem isArtinian_of_maximal_pow_smul_eq_bot
    {R : Type*} [CommRing R] [LocalRing R] [IsNoetherianRing R]
    (n : ℕ) : ∀ (M : Type*) [AddCommGroup M] [Module R M] [Module.Finite R M],
      (LocalRing.maximalIdeal R) ^ n • (⊤ : Submodule R M) = ⊥ →
        IsArtinian R M := by
  let I := LocalRing.maximalIdeal R
  induction n with
  | zero =>
    intro M _ _ _ h
    have htop : (⊤ : Submodule R M) = ⊥ := by simpa [I] using h
    haveI : Subsingleton M := ⟨by
      intro x y
      have hx : x ∈ (⊤ : Submodule R M) := Submodule.mem_top
      have hy : y ∈ (⊤ : Submodule R M) := Submodule.mem_top
      rw [htop] at hx hy
      have hx0 : x = 0 := by simpa using hx
      have hy0 : y = 0 := by simpa using hy
      exact hx0.trans hy0.symm⟩
    infer_instance
  | succ n ih =>
    intro M _ _ _ h
    haveI : IsNoetherian R M := inferInstance
    let N : Submodule R M := I • (⊤ : Submodule R M)
    haveI : Module.Finite R N := inferInstance
    have hAnnN : Module.IsTorsionBySet R N (↑(I ^ n) : Set R) := by
      intro x a
      rcases x with ⟨v, hv⟩
      apply Subtype.ext
      change (a : R) • v = 0
      change v ∈ I • (⊤ : Submodule R M) at hv
      refine Submodule.smul_induction_on (p := fun t => (a : R) • t = 0)
        hv ?_ ?_
      · intro b hb w _
        have hab : (a : R) * b ∈ I ^ (n + 1) := by
          rw [pow_succ]
          exact Ideal.mul_mem_mul a.property hb
        have hz : ((a : R) * b) • w ∈
            I ^ (n + 1) • (⊤ : Submodule R M) :=
          Submodule.smul_mem_smul hab Submodule.mem_top
        rw [h] at hz
        simpa only [mul_smul] using (by simpa using hz : ((a : R) * b) • w = 0)
      · intro v w hv hw
        simp [smul_add, hv, hw]
    have hNpow : I ^ n • (⊤ : Submodule R N) = ⊥ := by
      apply eq_bot_iff.mpr
      apply Submodule.smul_le.mpr
      intro a ha x _
      have hz : a • x = 0 := hAnnN (x := x) (a := ⟨a, ha⟩)
      simpa [hz]
    haveI : IsArtinian R N := ih N hNpow
    haveI : IsArtinian R (M ⧸ N) :=
      isArtinian_of_finite_of_maximal_annihilates I
        (LocalRing.maximalIdeal.isMaximal R)
        (Module.isTorsionBySet_quotient_ideal_smul M I)
    exact isArtinian_of_range_eq_ker N.subtype N.mkQ
      Subtype.val_injective N.mkQ_surjective (by
        rw [Submodule.range_subtype, Submodule.ker_mkQ])

/-- If a commutative ring has exactly one prime ideal, its nilradical is
that prime ideal. -/
theorem nilradical_eq_unique_prime {R : Type*} [CommRing R]
    (P : Ideal R) (hP : P.IsPrime)
    (hunique : ∀ Q : Ideal R, Q.IsPrime → Q = P) :
    nilradical R = P := by
  ext x
  rw [mem_nilradical, nilpotent_iff_mem_prime]
  constructor
  · intro hx
    exact hx P hP
  · intro hx Q hQ
    rwa [hunique Q hQ]

/-- A Noetherian local ring with only its maximal prime has nilpotent
maximal ideal. A separate finite-length argument is needed to deduce
that the ring is Artinian. -/
theorem noetherian_local_unique_prime_maximal_nilpotent
    {R : Type*} [CommRing R] [LocalRing R] [IsNoetherianRing R]
    (hunique : ∀ P : Ideal R, P.IsPrime →
      P = LocalRing.maximalIdeal R) :
    IsNilpotent (LocalRing.maximalIdeal R) := by
  have hrad : nilradical R = LocalRing.maximalIdeal R :=
    nilradical_eq_unique_prime _ (LocalRing.maximalIdeal.isMaximal R).isPrime hunique
  rw [← hrad]
  exact IsNoetherianRing.isNilpotent_nilradical R

/-- A Noetherian local ring with nilpotent maximal ideal is Artinian. -/
theorem noetherian_local_isArtinian_of_nilpotent_maximal
    {R : Type*} [CommRing R] [LocalRing R] [IsNoetherianRing R]
    (h : IsNilpotent (LocalRing.maximalIdeal R)) : IsArtinianRing R := by
  obtain ⟨n, hn⟩ := h
  apply isArtinian_of_maximal_pow_smul_eq_bot n R
  rw [hn]
  simp

/-- Noetherian local dimension zero implies Artinianity in the
single-prime case, without importing later Mathlib infrastructure. -/
theorem noetherian_local_unique_prime_isArtinian
    {R : Type*} [CommRing R] [LocalRing R] [IsNoetherianRing R]
    (hunique : ∀ P : Ideal R, P.IsPrime →
      P = LocalRing.maximalIdeal R) : IsArtinianRing R :=
  noetherian_local_isArtinian_of_nilpotent_maximal
    (noetherian_local_unique_prime_maximal_nilpotent hunique)

/-- If the maximal ideal is minimal over an ideal in a local ring, it is
the radical of that ideal. -/
theorem radical_eq_maximal_of_minimal_prime
    {R : Type*} [CommRing R] [LocalRing R]
    (I : Ideal R)
    (hmin : LocalRing.maximalIdeal R ∈ I.minimalPrimes) :
    I.radical = LocalRing.maximalIdeal R := by
  apply le_antisymm
  · exact hmin.1.1.radical_le_iff.mpr hmin.1.2
  · rw [Ideal.radical_eq_sInf]
    apply le_sInf
    intro J hJ
    exact hmin.2 ⟨hJ.2, hJ.1⟩ (LocalRing.le_maximalIdeal hJ.2.ne_top)

/-- In the Noetherian case, a power of the maximal ideal is contained
in every ideal over which it is a minimal prime. This is the
nilpotence statement for the corresponding local quotient. -/
theorem maximal_pow_le_of_minimal_prime
    {R : Type*} [CommRing R] [LocalRing R] [IsNoetherianRing R]
    (I : Ideal R)
    (hmin : LocalRing.maximalIdeal R ∈ I.minimalPrimes) :
    ∃ n : ℕ, (LocalRing.maximalIdeal R) ^ n ≤ I := by
  have hfg : I.radical.FG := IsNoetherian.noetherian _
  obtain ⟨n, hn⟩ := Ideal.exists_radical_pow_le_of_fg I hfg
  rw [radical_eq_maximal_of_minimal_prime I hmin] at hn
  exact ⟨n, hn⟩

/-- A quotient of a Noetherian local ring by an ideal whose minimal
prime is maximal is Artinian. The proof uses the maximal-ideal power
bound directly, avoiding a quotient-local-ring instance. -/
theorem quotient_isArtinian_of_maximal_minimal_prime
    {R : Type*} [CommRing R] [LocalRing R] [IsNoetherianRing R]
    (I : Ideal R)
    (hmin : LocalRing.maximalIdeal R ∈ I.minimalPrimes) :
    IsArtinianRing (R ⧸ I) := by
  obtain ⟨n, hn⟩ := maximal_pow_le_of_minimal_prime I hmin
  haveI : IsNoetherian R (R ⧸ I) := inferInstance
  haveI : Module.Finite R (R ⧸ I) := inferInstance
  have hkill : (LocalRing.maximalIdeal R) ^ n •
      (⊤ : Submodule R (R ⧸ I)) = ⊥ := by
    apply eq_bot_iff.mpr
    apply Submodule.smul_le.mpr
    intro r hr x _
    have hr0 : (Ideal.Quotient.mk I r : R ⧸ I) = 0 :=
      Ideal.Quotient.eq_zero_iff_mem.mpr (hn hr)
    change (Ideal.Quotient.mk I r) * x ∈ (⊥ : Submodule R (R ⧸ I))
    simp [hr0]
  have hArt : IsArtinian R (R ⧸ I) :=
    isArtinian_of_maximal_pow_smul_eq_bot n (R ⧸ I) hkill
  exact isArtinian_of_tower R hArt

#print axioms finiteDimensional_isArtinian
#print axioms isArtinian_of_finite_of_maximal_annihilates
#print axioms isArtinian_of_maximal_pow_smul_eq_bot
#print axioms nilradical_eq_unique_prime
#print axioms noetherian_local_unique_prime_maximal_nilpotent
#print axioms noetherian_local_isArtinian_of_nilpotent_maximal
#print axioms noetherian_local_unique_prime_isArtinian
#print axioms radical_eq_maximal_of_minimal_prime
#print axioms maximal_pow_le_of_minimal_prime
#print axioms quotient_isArtinian_of_maximal_minimal_prime

end Beal.General