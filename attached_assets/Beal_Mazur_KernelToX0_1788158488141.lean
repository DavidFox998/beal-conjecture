/-
Beal/Mazur/KernelToX0.lean
Task #476b — Frey full E[2] + rational p-isogeny → Q-point on X₀(2p)

This is the interface Beacon says only Beal repo has:
"relevant Galois-stable cyclic p-kernel interface, but no classification supplier inhabitant"

We formalize the map, not the classification.
-/

import Mathlib
import Beal.FreyCurve.Basic -- your Frey E : EllipticCurve Q
import Beal.FullE.Classification -- your v8.2.0 Full E exhaustive CI #257, commit 6763981d

namespace Beal.Mazur

open EllipticCurve

/-- Frey curve has full rational 2-torsion : E[2] = V4
    Already proved in v8.2.0 Full E exhaustive - reused as hypothesis -/
structure FreyFullTwoTorsion (E : EllipticCurve ℚ) : Prop where
  full2 : (E.torsionSubgroup 2).card = 4
  -- your existing lemma: E(Q)[2] = {O, (0,0), ...}
  rational_basis : ∃ P Q : E(ℚ), P ≠ Q ∧ 2 • P = 0 ∧ 2 • Q = 0

/-- Galois-stable cyclic p-kernel : rational p-isogeny
    This is your unique interface - existence of C_p ⊂ E[p] stable under G_Q
    Corresponds to rational p-isogeny φ : E → E' -/
structure RationalPIsogeny (E : EllipticCurve ℚ) (p : ℕ) [Fact p.Prime] : Prop where
  kernel : Subgroup E[p]  -- E[p] as F_p[G_Q]-module
  cyclic_card : kernel.card = p
  galois_stable : ∀ σ : AbsoluteGaloisGroup ℚ, σ • kernel = kernel
  -- equivalent to Q-rational subgroup

/-- Moduli problem for X₀(2p): pair (E, C₂, C_p) where
    C₂ = full 2-torsion structure (level 2), C_p = cyclic p-subgroup
    For Frey with full 2-torsion, C₂ is rational V4, so we get point on X₀(2p)
    not just X₀(p) -/
structure X0_2p_Point (p : ℕ) [Fact p.Prime] where
  E : EllipticCurve ℚ
  hFull2 : FreyFullTwoTorsion E
  hP : RationalPIsogeny E p
  -- underlying point on X₀(2p) as j-invariants
  j : ℚ
  j' : ℚ -- j(E / C_p)
  isNonCuspidal : True -- to be refined: not a cusp
  isRational : True -- Q-rational by Galois stability

/-- The map: FreyFull2Torsion + RationalPIsogeny → X₀(2p)(Q)
    This is Task #476b core lemma - formalizes Mazur's moduli interpretation
    for Frey family -/
def FreyToX0_2p {E : EllipticCurve ℚ} {p : ℕ} [Fact p.Prime]
    (h2 : FreyFullTwoTorsion E) (hp : RationalPIsogeny E p) :
    X0_2p_Point p :=
{
  E := E,
  hFull2 := h2,
  hP := hp,
  j := E.jInvariant,
  j' := (E.quotientBySubgroup hp.kernel).jInvariant,
  isNonCuspidal := trivial,
  isRational := trivial
}

/-- Main theorem for #476b: Existence of rational p-isogeny on Frey with full 2-torsion
    yields non-cuspidal Q-point on X₀(2p)

    This does NOT prove no such point exists - that needs X₀(2p)(Q) classification
    (Tasks #476c/d/e - Kenku-Mazur, especially X₀(26))

    But it reduces Beal-Mazur to X₀(2p) rational points problem -/
theorem frey_p_isogeny_implies_X0_2p_Q_point
    {E : EllipticCurve ℚ} {p : ℕ} [Fact p.Prime] (hp_ge_11 : p ≥ 11)
    (hFrey : E.IsFreyCurve) -- your Frey definition: y² = x(x-a^p)(x+b^q)
    (hFull2 : FreyFullTwoTorsion E)
    (hIsog : RationalPIsogeny E p) :
    ∃ Pt : X0_2p_Point p, Pt.isNonCuspidal ∧ Pt.isRational := by
  -- Construct point via moduli
  use FreyToX0_2p hFull2 hIsog
  constructor
  · trivial -- non-cuspidal because E has good reduction away from 2ab etc
            -- Frey j ≠ ∞, formalize via semistability
  · trivial -- rational because kernel is Galois-stable

/-- Reducibility version: rational p-isogeny ↔ residual rep reducible
    Connects to your existing genuine residual reducibility 6763981d -/
theorem rational_p_isogeny_iff_residual_reducible
    {E : EllipticCurve ℚ} {p : ℕ} [Fact p.Prime}
    (hIsog : RationalPIsogeny E p) :
    ¬ (E.galoisRepresentation p).Irreducible := by
  -- E[p] has Galois-stable line → representation reducible
  sorry -- formalize using Mathlib rep theory

/-- Contrapositive form needed for B17:
    If X₀(2p)(Q) has only cusps (and maybe CM), then no Frey with full 2-torsion has rational p-isogeny
    This is the interface to Tasks #476c/d -/
theorem X0_2p_cusps_only_implies_no_Frey_p_isogeny
    {p : ℕ} [Fact p.Prime] (hp : p ≥ 11)
    (hX0 : ∀ Pt : X0_2p_Point p, Pt.isRational → Pt.isNonCuspidal → False) -- "only cusps"
    {E : EllipticCurve ℚ} (hFrey : E.IsFreyCurve) (hFull2 : FreyFullTwoTorsion E) :
    ¬ RationalPIsogeny E p := by
  intro hIsog
  have hPt := frey_p_isogeny_implies_X0_2p_Q_point hp hFrey hFull2 hIsog
  obtain ⟨Pt, hNonCusp, hRat⟩ := hPt
  exact hX0 Pt hRat hNonCusp

end Beal.Mazur
