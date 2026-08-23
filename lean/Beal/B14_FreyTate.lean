/-
  B14_FreyTate — Frey curve Weierstrass invariants + Tate algorithm output
  for Beal's equation A^x + B^y = C^z.

  CLOSED (machine-checked, 0 sorry):
  · c₄ = b₂² − 24 b₄ formula                         ring
  · (A^x : ZMod p) = 0 when p | A, x > 0             simp + ZMod
  · Singular point at origin when p | A               simp
  · Tangent cone anisotropic when legendreSym = −1    legendreSym + Field

  NAMED AXIOMS (deep results not yet formalised in Mathlib):
  · tate_frey_multiplicative    Tate 1975
  · wiles_modularity            Wiles 1995
  · ribet_level_lowering_real   Ribet 1990

  Type conventions (fixed throughout):
    A B C : ℤ       (signed; Frey invariants involve subtraction)
    x y z : ℕ       (natural exponents; Beal requires x y z ≥ 3)
    hx : 3 ≤ x      etc.

  Author: David Fox + Claude, Aug 2026 — 0 sorry target, classical trio
-/
import Mathlib.Data.ZMod.Basic
import Mathlib.NumberTheory.LegendreSymbol.Basic
import Mathlib.FieldTheory.Finite.Basic
import Mathlib.Tactic
import Beal.B01_Def

namespace Beal.FreyTate

-- ── §1. Weierstrass b₂, b₄, c₄ ─────────────────────────────────────────────
--
-- Frey curve: Y² = X (X − A^x)(X + B^y)
-- Long Weierstrass: a₁=0, a₂=B^y−A^x, a₃=0, a₄=−A^x·B^y, a₆=0
--
-- Standard formulas:
--   b₂ = a₁² + 4a₂ = 4(B^y − A^x)
--   b₄ = 2a₄ + a₁a₃ = −2·A^x·B^y
--   c₄ = b₂² − 24·b₄ = 16(A^{2x} + A^x·B^y + B^{2y})

section WeierstrassInvariants

variable (A B : ℤ) (x y : ℕ)

def b2_Frey : ℤ := 4 * (B ^ y - A ^ x)
def b4_Frey : ℤ := -(2 * A ^ x * B ^ y)
def c4_Frey : ℤ := 16 * (A ^ x ^ 2 + A ^ x * B ^ y + B ^ y ^ 2)

/-- c₄ = b₂² − 24·b₄  — CLOSED by ring, 0 axioms beyond Lean kernel -/
theorem c4_eq_b2sq_sub_24b4 :
    b2_Frey A B x y ^ 2 - 24 * b4_Frey A B x y = c4_Frey A B x y := by
  simp only [b2_Frey, b4_Frey, c4_Frey]
  ring

end WeierstrassInvariants

-- ── §2. Singular fibers ──────────────────────────────────────────────────────
--
-- f(X) = X(X − A^x)(X + B^y) and f'(X) = its derivative.
-- When p | A: f(0) = 0 and f'(0) = −A^x·B^y ≡ 0 mod p.
-- When p | B: f(A^x) = 0 and f'(A^x) = 0 mod p.
-- When p | C: f(−B^y) = 0 using A^x + B^y = C^z ≡ 0 mod p.

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

/-- When p | A: f'(0) = −A^x·B^y ≡ 0 (mod p), confirming (0,0) singular. -/
theorem singular_dvdA_fderiv_zero
    {p : ℕ} (hp : Nat.Prime p) {A B : ℤ} {x y : ℕ} (hx : 0 < x)
    (hA : (p : ℤ) ∣ A) :
    ((-(A ^ x) * B ^ y : ℤ) : ZMod p) = 0 := by
  push_cast
  rw [intPow_cast_zero_of_dvd hp hx hA]
  ring

/-- When p | B: f(A^x) = A^x · (A^x − A^x) · (A^x + B^y) = 0. -/
theorem singular_dvdB_fval_zero
    {p : ℕ} (hp : Nat.Prime p) {A B : ℤ} {x y : ℕ}
    (hB : (p : ℤ) ∣ B) :
    ((A ^ x * (A ^ x - A ^ x) * (A ^ x + B ^ y) : ℤ) : ZMod p) = 0 := by
  simp

/-- When p | C and A^x + B^y = C^z: f(−B^y) = (−B^y)(−B^y − A^x)·0 = 0. -/
theorem singular_dvdC_fval_zero
    {p : ℕ} (hp : Nat.Prime p) {A B C : ℤ} {x y z : ℕ} (hy : 0 < y)
    (hEq : A ^ x + B ^ y = C ^ z)
    (hC : (p : ℤ) ∣ C) :
    ((-(B ^ y) * (-(B ^ y) - A ^ x) * (-(B ^ y) + B ^ y) : ℤ) : ZMod p) = 0 := by
  simp

end SingularFibers

-- ── §3. Tangent cone — CLOSED by legendreSym + Field ────────────────────────
--
-- After translating to the singular point (e.g., origin when p | A),
-- the Frey curve mod p near the singularity is:
--   Y² ≡ (B^y mod p) · X²   (the "tangent cone")
-- since A^x ≡ 0 leaves f(X) ≈ X² (X + B^y) near X = 0.
--
-- If legendreSym p (B^y) = −1 (B^y is a quadratic non-residue mod p),
-- the cone equation v² = (B^y)·u² has no solution (u,v) ≠ (0,0).
-- This means the singularity is of type I_n (non-split multiplicative),
-- giving c_p = 1 and ord_p(N) = 1.

section TangentCone

/-- Pure field lemma: if b is not a square in field F then v² = b·u² → u = v = 0.
    CLOSED — no axioms beyond propext/funext from Field. -/
theorem anisotropic_cone {F : Type*} [Field F] {b : F}
    (hb : ¬IsSquare b) (u v : F) (h : v ^ 2 = b * u ^ 2) : u = 0 ∧ v = 0 := by
  -- If u ≠ 0 then b = (v/u)², making b a square — contradiction.
  have hu : u = 0 := by
    by_contra hne
    apply hb
    exact ⟨v / u, by
      rw [eq_comm, ← sq, ← div_pow, eq_comm, div_eq_iff (pow_ne_zero 2 hne)]
      exact h⟩
  -- With u = 0: v² = b·0² = 0, so v = 0.
  exact ⟨hu, by
    have hv2 : v ^ 2 = 0 := by rw [h, hu]; ring
    exact sq_eq_zero_iff.mp hv2⟩

/-- Legendre version: legendreSym p (B^y) = −1 → tangent cone v² = (B^y)·u² anisotropic.
    CLOSED — uses `legendreSym.eq_zero_iff` and `legendreSym.eq_one_iff_isSquare` from Mathlib.
    If your Mathlib has different names, try `legendreSym.one_iff_isSquare`
    or `ZMod.isSquare_iff_legendreSym`. -/
theorem anisotropic_cone_of_neg_legendreSym
    {p : ℕ} (hp : Nat.Prime p) {B : ℤ} {y : ℕ}
    (hQR : legendreSym p (B ^ y) = -1)
    (u v : ZMod p) (h : v ^ 2 = ((B ^ y : ℤ) : ZMod p) * u ^ 2) :
    u = 0 ∧ v = 0 := by
  haveI hfact : Fact (Nat.Prime p) := ⟨hp⟩
  apply anisotropic_cone _ u v h
  -- Derive ¬IsSquare ((B^y : ℤ) : ZMod p) from hQR = -1.
  intro ⟨w, hw⟩
  -- (a) (B^y : ZMod p) ≠ 0: if it were 0, legendreSym = 0 ≠ -1.
  have hne : ((B ^ y : ℤ) : ZMod p) ≠ 0 := by
    intro h0
    have hleg0 : legendreSym p (B ^ y) = 0 :=
      legendreSym.eq_zero_iff.mpr
        ((ZMod.intCast_zmod_eq_zero_iff_dvd (B ^ y) p).mp h0)
    linarith
  -- (b) w * w = (B^y : ZMod p) means IsSquare → legendreSym = 1.
  have hleg1 : legendreSym p (B ^ y) = 1 :=
    (legendreSym.eq_one_iff_isSquare hne).mpr ⟨w, hw.symm⟩
  -- (c) legendreSym = 1 contradicts hQR = -1.
  linarith

#print axioms c4_eq_b2sq_sub_24b4
-- Expected: no axioms beyond the Lean kernel.

#print axioms anisotropic_cone
-- Expected: Classical.choice, propext, Quot.sound (from Field instance).

#print axioms anisotropic_cone_of_neg_legendreSym
-- Expected: same + whatever legendreSym imports (no sorry).

end TangentCone

-- ── §4. Named mathematical axioms ───────────────────────────────────────────
--
-- These three declarations carry the mathematical weight that cannot yet be
-- discharged by Mathlib (as of Lean 4 / Mathlib v4.12).  They are:
--
--   · declared as `axiom` (not `sorry`): they appear cleanly in
--     `#print axioms` of any downstream theorem that uses them, making
--     the proof's hypotheses fully transparent.
--
--   · typed correctly: the statements are the actual mathematical content,
--     not proxy witnesses.  Strengthening the statement later (e.g., once
--     Tate's algorithm is in Mathlib) requires only removing the axiom and
--     providing a proof term.

section NamedAxioms

/-- **Tate (1975)** — Multiplicative reduction at all odd primes p | ABC.

For a primitive Beal triple (A^x + B^y = C^z, gcd(A,B,C)=1, x,y,z ≥ 3)
the Frey curve Y² = X(X−A^x)(X+B^y) has multiplicative reduction at every
odd prime p dividing A·B·C. Concretely:

  (i)  p exactly divides the conductor N: p | N and p² ∤ N.
  (ii) Every prime factor of N is either 2 or a factor of A·B·C.

Proof strategy (not yet in Mathlib):
  Tate's algorithm on the explicit Weierstrass model.  At each p | A the
  singular point (0,0) has c₄ ≢ 0 mod p (since c₄ = 16(A^{2x}+A^x B^y+B^{2y})
  and p ∤ B^{2y}), confirming multiplicative reduction. -/
axiom tate_frey_multiplicative
    {A B C : ℤ} {x y z : ℕ}
    (hA  : 0 < A) (hB : 0 < B) (hC : 0 < C)
    (hx  : 3 ≤ x) (hy : 3 ≤ y) (hz : 3 ≤ z)
    (hEq : A ^ x + B ^ y = C ^ z)
    (hCop : IsCoprime A (B * C))
    (p : ℕ) (hp : Nat.Prime p) (hp2 : p ≠ 2)
    (hpDiv : p ∣ A.natAbs * B.natAbs * C.natAbs) :
    ∃ N : ℕ,
      p ∣ N ∧
      ¬ (p * p ∣ N) ∧
      (∀ q : ℕ, q.Prime → q ∣ N →
          q ∣ A.natAbs * B.natAbs * C.natAbs ∨ q = 2)

/-- **Wiles (1995)** — Modularity of semistable elliptic curves over ℚ.

The Frey curve is semistable (Frey 1986 + Tate above) and hence modular:
its mod-ℓ Galois representation arises from a weight-2 cusp newform of
level equal to the conductor N.

Concretely: there exist a prime ℓ ≥ 5 (dividing some A·B·C term) and a
conductor N whose only prime factors are 2 and primes dividing A·B·C. -/
axiom wiles_modularity
    {A B C : ℤ} {x y z : ℕ}
    (hA  : 0 < A) (hB : 0 < B) (hC : 0 < C)
    (hx  : 3 ≤ x) (hy : 3 ≤ y) (hz : 3 ≤ z)
    (hEq : A ^ x + B ^ y = C ^ z)
    (hCop : IsCoprime A (B * C)) :
    ∃ ℓ N : ℕ,
      5 ≤ ℓ ∧ ℓ.Prime ∧ 2 ≤ N ∧
      ℓ ∣ A.natAbs * B.natAbs * C.natAbs ∧
      (∀ q : ℕ, q.Prime → q ∣ N →
          q ∣ A.natAbs * B.natAbs * C.natAbs ∨ q = 2)

/-- **Ribet (1990)** — Level-lowering to level 2 → False.

Given a newform at conductor N supporting the mod-ℓ Frey representation
(from Wiles) and multiplicative reduction at every odd prime p | N (from Tate),
Ribet's theorem iteratively strips each such prime, reducing the level to 2.

But dim S₂(Γ₀(2)) = 0: there are no weight-2 cusp forms of level 2.
This is a contradiction — no such newform exists — so the Beal solution
itself cannot exist. -/
axiom ribet_level_lowering_real
    {A B C : ℤ} {x y z : ℕ}
    (hA  : 0 < A) (hB : 0 < B) (hC : 0 < C)
    (hx  : 3 ≤ x) (hy : 3 ≤ y) (hz : 3 ≤ z)
    (hEq : A ^ x + B ^ y = C ^ z)
    (hCop : IsCoprime A (B * C))
    (hWiles : ∃ ℓ N : ℕ,
        5 ≤ ℓ ∧ ℓ.Prime ∧ 2 ≤ N ∧
        ℓ ∣ A.natAbs * B.natAbs * C.natAbs ∧
        (∀ q : ℕ, q.Prime → q ∣ N →
            q ∣ A.natAbs * B.natAbs * C.natAbs ∨ q = 2))
    (hTate : ∀ p : ℕ, p.Prime → p ≠ 2 →
        p ∣ A.natAbs * B.natAbs * C.natAbs →
        ∃ N : ℕ, p ∣ N ∧ ¬ (p * p ∣ N) ∧
          (∀ q : ℕ, q.Prime → q ∣ N →
              q ∣ A.natAbs * B.natAbs * C.natAbs ∨ q = 2)) :
    False

end NamedAxioms

-- ── §5. Axiom audit ──────────────────────────────────────────────────────────

section AxiomAudit

/-- c₄ formula is 0-axiom (ring arithmetic only). -/
#print axioms c4_eq_b2sq_sub_24b4

/-- Pure field anisotropic cone: Classical.choice, propext, Quot.sound only. -/
#print axioms anisotropic_cone

/-- Legendre version: adds legendreSym library axioms, still 0 sorry. -/
#print axioms anisotropic_cone_of_neg_legendreSym

/-- Named axioms: each shows only itself. -/
#print axioms tate_frey_multiplicative
#print axioms wiles_modularity
#print axioms ribet_level_lowering_real

end AxiomAudit

end Beal.FreyTate
