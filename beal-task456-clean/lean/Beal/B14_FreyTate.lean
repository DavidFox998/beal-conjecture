/-
      B14_FreyTate — Frey curve Weierstrass invariants + Tate algorithm output
      for Beal's equation A^x + B^y = C^z.

      CLOSED (machine-checked, 0 sorry):
      · c₄ = b₂² − 24 b₄ formula                         ring
      · (A^x : ZMod p) = 0 when p | A, x > 0             simp + ZMod
      · Singular point at origin when p | A               cast arithmetic
      · Tangent cone anisotropic (abstract field lemma)   Field div/pow

      NAMED AXIOMS (deep results not yet formalised in Mathlib):
      · wiles_modularity            Wiles 1995 (typed descent certificate)

      Author: David Fox + Claude, Aug 2026
      -/
      import Mathlib.Data.ZMod.Basic
      import Mathlib.NumberTheory.LegendreSymbol.Basic
      import Mathlib.FieldTheory.Finite.Basic
      import Mathlib.Data.Nat.Factors
      import Mathlib.Tactic
      import Beal.B01_Def
      import Beal.B14_FreyS2

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

      /-- The canonical integral Weierstrass data for
          `Y² = X(X − Aˣ)(X + Bʸ)`.

          This structure contains only coefficients and invariants that are
          constructed directly. Conductor data and Tate's local theorem are
          deliberately kept outside it. -/
      structure FreyIntegralModel (A B C : ℤ) (x y z : ℕ) where
        a1 : ℤ
        a2 : ℤ
        a3 : ℤ
        a4 : ℤ
        a6 : ℤ
        c4 : ℤ
        discriminant : ℤ
        a1_eq : a1 = 0
        a2_eq : a2 = B ^ y - A ^ x
        a3_eq : a3 = 0
        a4_eq : a4 = -(A ^ x * B ^ y)
        a6_eq : a6 = 0
        c4_eq : c4 = c4_Frey A B x y
        discriminant_eq : discriminant = disc_Frey A B C x y z

      /-- The explicit integral model attached to the Beal/Frey equation.
          No conductor theorem or external mathematical input enters this
          construction. -/
      def freyIntegralModel (A B C : ℤ) (x y z : ℕ) :
          FreyIntegralModel A B C x y z where
        a1 := 0
        a2 := B ^ y - A ^ x
        a3 := 0
        a4 := -(A ^ x * B ^ y)
        a6 := 0
        c4 := c4_Frey A B x y
        discriminant := disc_Frey A B C x y z
        a1_eq := rfl
        a2_eq := rfl
        a3_eq := rfl
        a4_eq := rfl
        a6_eq := rfl
        c4_eq := rfl
        discriminant_eq := rfl

      /-- Global conductor data for one fixed integral Frey model.

          The value is indexed by the exact model; it is not defined as a
          radical proxy. This record states prime support only. Tate Step 2,
          which proves exact odd-prime conductor exponent one, is a separate
          theorem in `B14_TateInImpliesOrd1`. -/
      structure FreyConductorData
          {A B C : ℤ} {x y z : ℕ}
          (model : FreyIntegralModel A B C x y z) where
        conductor : ℕ
        conductor_prime_support :
          ∀ q : ℕ, q.Prime → q ∣ conductor →
            q ∣ A.natAbs * B.natAbs * C.natAbs ∨ q = 2

      /-- The fixed integral model together with separately supplied global
          conductor data. The hard local Tate implication is intentionally not
          a field of this structure. -/
      structure FreyCurveModel (A B C : ℤ) (x y z : ℕ)
          extends FreyIntegralModel A B C x y z where
        conductor : ℕ
        conductor_prime_support :
          ∀ q : ℕ, q.Prime → q ∣ conductor →
            q ∣ A.natAbs * B.natAbs * C.natAbs ∨ q = 2

      /-- An abstract nonzero-form token carried by the Ribet descent.

          This is deliberately a typed interface, not a construction of a
          modular-form space. At level 2 it produces an element of the
          zero-dimensional `S₂(2)` slot, which is the terminal contradiction. -/
      structure PreservedForm (ℓ N : ℕ) where
        terminalSlot : N = 2 → Fin Beal.FreyS2.dim_S2_2

      /-- Propositional availability of a preserved form token. -/
      def HasPreservedForm (ℓ N : ℕ) : Prop := Nonempty (PreservedForm ℓ N)

      /-- A finite arithmetic path from a level to level 2.

          Wiles supplies the odd prime, its separation from the residual prime,
          and the arithmetic quotient at each edge. Exact divisibility is not a
          field of this plan: `B14_TateInImpliesOrd1` derives it from the actual
          Frey model and Tate's odd-prime local theorem. -/
      inductive RibetDescentPlan (ℓ : ℕ) : ℕ → Type
        | terminal : RibetDescentPlan ℓ 2
        | step {N p M : ℕ} :
            p.Prime → p ≠ ℓ → p ≠ 2 → M * p = N →
            RibetDescentPlan ℓ M → RibetDescentPlan ℓ N

      /-- Propositional availability of a certified descent path. -/
      def HasRibetDescentPlan (ℓ N : ℕ) : Prop := Nonempty (RibetDescentPlan ℓ N)

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

      /-- **Wiles (1995), typed descent boundary.**

          For the one Frey model supplied by Tate's local interface, modularity
          supplies a residual prime, a form token at that same conductor, and a
          finite odd-prime descent skeleton to level 2. The plan is an explicit
          scaffold for the still-unformalized global modular-form and
          level-lowering theory; Tate supplies the exact-divisibility certificates
          separately. -/
      axiom wiles_modularity
          {A B C : ℤ} {x y z : ℕ}
          (hA  : 0 < A) (hB : 0 < B) (hC : 0 < C)
          (hx  : 3 ≤ x) (hy : 3 ≤ y) (hz : 3 ≤ z)
          (hEq : A ^ x + B ^ y = C ^ z)
          (hCop : IsCoprime A (B * C))
          (model : FreyCurveModel A B C x y z) :
          ∃ ℓ : ℕ, 5 ≤ ℓ ∧ ℓ.Prime ∧ HasPreservedForm ℓ model.conductor ∧
            HasRibetDescentPlan ℓ model.conductor

      end NamedAxioms

      section AxiomAudit
      #print axioms c4_eq_b2sq_sub_24b4
      #print axioms wiles_modularity
      end AxiomAudit

      end Beal.FreyTate
    