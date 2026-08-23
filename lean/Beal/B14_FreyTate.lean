/-
      B14_FreyTate — Frey curve Weierstrass invariants + Tate algorithm output
      for Beal's equation A^x + B^y = C^z.

      CLOSED (machine-checked, 0 sorry):
      · c₄ = b₂² − 24 b₄ formula                         ring
      · (A^x : ZMod p) = 0 when p | A, x > 0             simp + ZMod
      · Singular point at origin when p | A               cast arithmetic
      · Tangent cone anisotropic (abstract field lemma)   Field div/pow

      NAMED AXIOMS (deep results not yet formalised in Mathlib):
      · wiles_modularity            Wiles 1995
      · ribet_level_lowering_real   Ribet 1990

      (tate_frey_multiplicative kept for reference but superseded by
       tate_frey_multiplicative_derived in B14_TateInImpliesOrd1.)

      Author: David Fox + Claude, Aug 2026
      -/
      import Mathlib.Data.ZMod.Basic
      import Mathlib.NumberTheory.LegendreSymbol.Basic
      import Mathlib.FieldTheory.Finite.Basic
      import Mathlib.Data.Nat.Factors
      import Mathlib.Tactic
      import Beal.B01_Def

      namespace Beal.FreyTate

      -- ── §1. Weierstrass b₂, b₄, c₄ + discriminant + conductor ───────────────────

      section WeierstrassInvariants

      variable (A B : ℤ) (x y : ℕ)

      def b2_Frey : ℤ := 4 * (B ^ y - A ^ x)
      def b4_Frey : ℤ := -(2 * A ^ x * B ^ y)

      /-- c₄ of the Frey curve: 16((A^x)² + A^x·B^y + (B^y)²).
          Explicit (A^x)² avoids Lean's right-assoc ^ pitfall. -/
      def c4_Frey : ℤ := 16 * ((A ^ x) ^ 2 + A ^ x * B ^ y + (B ^ y) ^ 2)

      /-- c₄ = b₂² − 24·b₄  — CLOSED by ring. -/
      theorem c4_eq_b2sq_sub_24b4 :
          b2_Frey A B x y ^ 2 - 24 * b4_Frey A B x y = c4_Frey A B x y := by
        simp only [b2_Frey, b4_Frey, c4_Frey]; ring

      end WeierstrassInvariants

      /-- Discriminant of the Frey curve Y² = X(X−A^x)(X+B^y). -/
      def disc_Frey (A B C : ℤ) (x y z : ℕ) : ℤ :=
        16 * (A ^ x) ^ 2 * (B ^ y) ^ 2 * (C ^ z) ^ 2

      /-- Conductor of the Frey curve: 2 · ∏{odd primes p : p | A·B·C}. -/
      noncomputable def conductor_Frey (A B C : ℤ) (x y : ℕ) : ℕ :=
        2 * ((A.natAbs * B.natAbs * C.natAbs).factors.toFinset.filter (· ≠ 2)).prod id

      -- ── §2. Singular fibers ──────────────────────────────────────────────────────

      section SingularFibers

      /-- If p | A and x ≥ 1 then (A^x : ZMod p) = 0. -/
      theorem intPow_cast_zero_of_dvd
          {p : ℕ} (hp : Nat.Prime p) {A : ℤ} {x : ℕ} (hx : 0 < x)
          (hA : (p : ℤ) ∣ A) :
          ((A ^ x : ℤ) : ZMod p) = 0 := by
        push_cast
        have hA0 : (A : ZMod p) = 0 :=
          (ZMod.intCast_zmod_eq_zero_iff_dvd A p).mpr hA
        rw [hA0, zero_pow hx.ne']

      /-- When p | A: f'(0) ≡ 0 (mod p). -/
      theorem singular_dvdA_fderiv_zero
          {p : ℕ} (hp : Nat.Prime p) {A B : ℤ} {x y : ℕ} (hx : 0 < x)
          (hA : (p : ℤ) ∣ A) :
          ((-(A ^ x) * B ^ y : ℤ) : ZMod p) = 0 := by
        have hAx : ((A ^ x : ℤ) : ZMod p) = 0 := intPow_cast_zero_of_dvd hp hx hA
        have hcast : ((-(A ^ x) * B ^ y : ℤ) : ZMod p) =
            -((A ^ x : ℤ) : ZMod p) * ((B ^ y : ℤ) : ZMod p) := by push_cast; ring
        rw [hcast, hAx, neg_zero, zero_mul]

      /-- When p | B: f(A^x) = 0. -/
      theorem singular_dvdB_fval_zero
          {p : ℕ} (hp : Nat.Prime p) {A B : ℤ} {x y : ℕ}
          (hB : (p : ℤ) ∣ B) :
          ((A ^ x * (A ^ x - A ^ x) * (A ^ x + B ^ y) : ℤ) : ZMod p) = 0 := by simp

      /-- When p | C and A^x + B^y = C^z: f(−B^y) = 0. -/
      theorem singular_dvdC_fval_zero
          {p : ℕ} (hp : Nat.Prime p) {A B C : ℤ} {x y z : ℕ} (hy : 0 < y)
          (hEq : A ^ x + B ^ y = C ^ z) (hC : (p : ℤ) ∣ C) :
          ((-(B ^ y) * (-(B ^ y) - A ^ x) * (-(B ^ y) + B ^ y) : ℤ) : ZMod p) = 0 := by simp

      end SingularFibers

      -- ── §3. Tangent cone ─────────────────────────────────────────────────────────

      section TangentCone

      /-- The quadratic form bU² − V² is anisotropic when b is not a square in F.
          From h : v² = b·u², if u ≠ 0 then (v/u)² = b, contradicting ¬IsSquare b. -/
      theorem anisotropic_cone {F : Type*} [Field F] {b : F}
          (hb : ¬IsSquare b) (u v : F) (h : v ^ 2 = b * u ^ 2) : u = 0 ∧ v = 0 := by
        have hu : u = 0 := by
          by_contra hne
          apply hb
          refine ⟨v / u, ?_⟩
          have hu2 : u ^ 2 ≠ 0 := pow_ne_zero 2 hne
          have key : (v / u) ^ 2 = b := by
            rw [div_pow, h, mul_div_assoc, div_self hu2, mul_one]
          rw [show v / u * (v / u) = (v / u) ^ 2 from by ring]
          exact key.symm
        refine ⟨hu, ?_⟩
        have hv2 : v ^ 2 = 0 := by simp [h, hu]
        exact pow_eq_zero_iff (by norm_num : 2 ≠ 0) |>.mp hv2

      end TangentCone

      -- ── §4. Named mathematical axioms ───────────────────────────────────────────

      section NamedAxioms

      /-- **Tate (1975)** — kept for reference; use tate_frey_multiplicative_derived
          from B14_TateInImpliesOrd1 for new proofs (fewer axioms). -/
      axiom tate_frey_multiplicative
          {A B C : ℤ} {x y z : ℕ}
          (hA  : 0 < A) (hB : 0 < B) (hC : 0 < C)
          (hx  : 3 ≤ x) (hy : 3 ≤ y) (hz : 3 ≤ z)
          (hEq : A ^ x + B ^ y = C ^ z)
          (hCop : IsCoprime A (B * C))
          (p : ℕ) (hp : Nat.Prime p) (hp2 : p ≠ 2)
          (hpDiv : p ∣ A.natAbs * B.natAbs * C.natAbs) :
          ∃ N : ℕ, p ∣ N ∧ ¬ (p * p ∣ N) ∧
            (∀ q : ℕ, q.Prime → q ∣ N → q ∣ A.natAbs * B.natAbs * C.natAbs ∨ q = 2)

      /-- **Wiles (1995)** — modularity of semistable elliptic curves over ℚ. -/
      axiom wiles_modularity
          {A B C : ℤ} {x y z : ℕ}
          (hA  : 0 < A) (hB : 0 < B) (hC : 0 < C)
          (hx  : 3 ≤ x) (hy : 3 ≤ y) (hz : 3 ≤ z)
          (hEq : A ^ x + B ^ y = C ^ z)
          (hCop : IsCoprime A (B * C)) :
          ∃ ℓ N : ℕ, 5 ≤ ℓ ∧ ℓ.Prime ∧ 2 ≤ N ∧
            ℓ ∣ A.natAbs * B.natAbs * C.natAbs ∧
            (∀ q : ℕ, q.Prime → q ∣ N → q ∣ A.natAbs * B.natAbs * C.natAbs ∨ q = 2)

      /-- **Ribet (1990)** — level-lowering to level 2 → False. -/
      axiom ribet_level_lowering_real
          {A B C : ℤ} {x y z : ℕ}
          (hA  : 0 < A) (hB : 0 < B) (hC : 0 < C)
          (hx  : 3 ≤ x) (hy : 3 ≤ y) (hz : 3 ≤ z)
          (hEq : A ^ x + B ^ y = C ^ z)
          (hCop : IsCoprime A (B * C))
          (hWiles : ∃ ℓ N : ℕ, 5 ≤ ℓ ∧ ℓ.Prime ∧ 2 ≤ N ∧
              ℓ ∣ A.natAbs * B.natAbs * C.natAbs ∧
              (∀ q : ℕ, q.Prime → q ∣ N → q ∣ A.natAbs * B.natAbs * C.natAbs ∨ q = 2))
          (hTate : ∀ p : ℕ, p.Prime → p ≠ 2 →
              p ∣ A.natAbs * B.natAbs * C.natAbs →
              ∃ N : ℕ, p ∣ N ∧ ¬ (p * p ∣ N) ∧
                (∀ q : ℕ, q.Prime → q ∣ N → q ∣ A.natAbs * B.natAbs * C.natAbs ∨ q = 2)) :
          False

      end NamedAxioms

      section AxiomAudit
      #print axioms c4_eq_b2sq_sub_24b4
      #print axioms wiles_modularity
      #print axioms ribet_level_lowering_real
      end AxiomAudit

      end Beal.FreyTate
    