import Mathlib.AlgebraicGeometry.EllipticCurve.Weierstrass
import Mathlib.Data.Nat.Squarefree

namespace Beal17Mazur.Jacobian

open WeierstrassCurve

/-!
# The two elliptic factors associated with `J₀(26)`

This file records the LMFDB/Cremona models appearing in the proposed
decomposition

`J₀(26) ∼ E26a1 × E26b1`

over `ℚ`.  The second model is the one printed by the supplied Sage transcript,
namely `[1, 0, 1, -5, -8]`; the different tuple
`[1, -1, 1, -21, -61]` has different invariants and is not silently substituted.

Mathlib 4.12 supplies elliptic curves and their point groups, but not a
Mordell--Weil rank, 2-Selmer group, local-solubility API, or 2-descent
soundness theorem.  Consequently the finite quartics copied from mwrank below
are certified only as transcript data.  No theorem turns those rows into rank
zero without an explicit soundness hypothesis.
-/

private def E26a1Weierstrass : WeierstrassCurve ℚ where
  a₁ := 1
  a₂ := -1
  a₃ := 1
  a₄ := -3
  a₆ := 3

private def E26b1Weierstrass : WeierstrassCurve ℚ where
  a₁ := 1
  a₂ := 0
  a₃ := 1
  a₄ := -5
  a₆ := -8

theorem E26a1Weierstrass_discriminant :
    E26a1Weierstrass.Δ = (-1664 : ℚ) := by
  norm_num [E26a1Weierstrass, WeierstrassCurve.Δ,
    WeierstrassCurve.b₂, WeierstrassCurve.b₄,
    WeierstrassCurve.b₆, WeierstrassCurve.b₈]

theorem E26b1Weierstrass_discriminant :
    E26b1Weierstrass.Δ = (-17576 : ℚ) := by
  norm_num [E26b1Weierstrass, WeierstrassCurve.Δ,
    WeierstrassCurve.b₂, WeierstrassCurve.b₄,
    WeierstrassCurve.b₆, WeierstrassCurve.b₈]

noncomputable def E26a1 : EllipticCurve ℚ :=
  ⟨E26a1Weierstrass, Units.mk0 (-1664 : ℚ) (by norm_num),
    E26a1Weierstrass_discriminant.symm⟩

noncomputable def E26b1 : EllipticCurve ℚ :=
  ⟨E26b1Weierstrass, Units.mk0 (-17576 : ℚ) (by norm_num),
    E26b1Weierstrass_discriminant.symm⟩

theorem E26a1_discriminant :
    E26a1.toWeierstrassCurve.Δ = (-1664 : ℚ) :=
  E26a1Weierstrass_discriminant

theorem E26b1_discriminant :
    E26b1.toWeierstrassCurve.Δ = (-17576 : ℚ) :=
  E26b1Weierstrass_discriminant

theorem E26a1_c4 : E26a1.c₄ = (129 : ℚ) := by
  norm_num [E26a1, E26a1Weierstrass, WeierstrassCurve.c₄,
    WeierstrassCurve.b₂, WeierstrassCurve.b₄]

theorem E26b1_c4 : E26b1.c₄ = (217 : ℚ) := by
  norm_num [E26b1, E26b1Weierstrass, WeierstrassCurve.c₄,
    WeierstrassCurve.b₂, WeierstrassCurve.b₄]

theorem E26a1_j :
    E26a1.j = (-2146689 / 1664 : ℚ) := by
  rw [EllipticCurve.j, E26a1_c4]
  norm_num [E26a1]

theorem E26b1_j :
    E26b1.j = (-10218313 / 17576 : ℚ) := by
  rw [EllipticCurve.j, E26b1_c4]
  norm_num [E26b1]

/-- Signed squarefree representatives supported at `{2,13}`.

This is the finite `S`-unit search space suggested by the Sage computation.
It is not definitionally identified with either curve's 2-Selmer group.
-/
def Q_S2_13 : List Int := [1, -1, 2, -2, 13, -13, 26, -26]

theorem Q_S2_13_count : Q_S2_13.length = 8 := by decide

theorem Q_S2_13_nodup : Q_S2_13.Nodup := by decide

theorem Q_S2_13_supported_and_squarefree :
    ∀ d ∈ Q_S2_13, d.natAbs ∣ 26 ∧ Squarefree d.natAbs := by
  have h1 : Squarefree (1 : Nat) := squarefree_one
  have h2 : Squarefree (2 : Nat) := Nat.prime_two.squarefree
  have h13 : Squarefree (13 : Nat) :=
    (by decide : Nat.Prime 13).squarefree
  have h26 : Squarefree (26 : Nat) := by
    rw [show 26 = 2 * 13 by norm_num,
      Nat.squarefree_mul (by decide : Nat.Coprime 2 13)]
    exact ⟨h2, h13⟩
  intro d hd
  simp only [Q_S2_13, List.mem_cons, List.mem_singleton,
    List.not_mem_nil, or_false] at hd
  rcases hd with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl
  · exact ⟨by norm_num, h1⟩
  · exact ⟨by norm_num, h1⟩
  · exact ⟨by norm_num, h2⟩
  · exact ⟨by norm_num, h2⟩
  · exact ⟨by norm_num, h13⟩
  · exact ⟨by norm_num, h13⟩
  · exact ⟨by norm_num, h26⟩
  · exact ⟨by norm_num, h26⟩

/-- A binary quartic row `(a,b,c,d,e)` printed by mwrank. -/
structure BinaryQuartic where
  a : Int
  b : Int
  c : Int
  d : Int
  e : Int
  deriving DecidableEq, Repr

/-- Rows printed for `26a1`.  “Trivial” is transcript metadata, not a Lean
proof of local or global solubility. -/
def E26a1MwrankQuartics : List BinaryQuartic :=
  [⟨1, 2, -15, 16, 0⟩, ⟨1, 2, -3, 4, 12⟩,
    ⟨1, 2, 9, 24, 16⟩, ⟨3, 2, -3, 4, 4⟩]

/-- Rows printed for `26b1`. -/
def E26b1MwrankQuartics : List BinaryQuartic :=
  [⟨1, 2, -23, 28, -12⟩, ⟨-1, 0, -5, 26, -16⟩,
    ⟨-1, 2, -11, 36, -26⟩, ⟨-1, 2, 13, 12, -10⟩,
    ⟨-3, -2, 1, 12, -4⟩, ⟨-4, -3, 10, 13, 0⟩]

theorem E26a1MwrankQuartics_count :
    E26a1MwrankQuartics.length = 4 := by decide

theorem E26b1MwrankQuartics_count :
    E26b1MwrankQuartics.length = 6 := by decide

/-- A semantic rank function is deliberately supplied by a future
Mordell--Weil development rather than defined from transcript data. -/
abbrev RankFunction := EllipticCurve ℚ → Nat

def E26FactorsRankZero (rank : RankFunction) : Prop :=
  rank E26a1 = 0 ∧ rank E26b1 = 0

/-- Missing theorem connecting a complete, independently checked full
2-descent certificate to the semantic ranks of the two curves.

The mwrank lists above are not arguments to this proposition: before this wall
can be discharged, Lean must define the relevant 2-coverings, prove the global
enumeration complete, verify every local condition, and prove the Selmer bound
on Mordell--Weil rank.
-/
def FullTwoDescentSoundnessWall (rank : RankFunction) : Prop :=
  E26FactorsRankZero rank

theorem E26_factors_rank_zero_of_full_two_descent
    (rank : RankFunction)
    (hDescent : FullTwoDescentSoundnessWall rank) :
    E26FactorsRankZero rank :=
  hDescent

/-- The second missing theorem is the arithmetic transport across the
`ℚ`-isogeny `J₀(26) ∼ E26a1 × E26b1`. -/
def J0_26ProductRankWall
    (rank : RankFunction) (J0_26_rank : Nat) : Prop :=
  E26FactorsRankZero rank → J0_26_rank = 0

theorem J0_26_rank_zero_of_elliptic_factors
    (rank : RankFunction)
    (J0_26_rank : Nat)
    (hDescent : FullTwoDescentSoundnessWall rank)
    (hProduct : J0_26ProductRankWall rank J0_26_rank) :
    J0_26_rank = 0 :=
  hProduct (E26_factors_rank_zero_of_full_two_descent rank hDescent)

#print axioms E26a1_discriminant
#print axioms E26b1_discriminant
#print axioms E26a1_j
#print axioms E26b1_j
#print axioms Q_S2_13_supported_and_squarefree
#print axioms E26a1MwrankQuartics_count
#print axioms E26b1MwrankQuartics_count
#print axioms J0_26_rank_zero_of_elliptic_factors

end Beal17Mazur.Jacobian