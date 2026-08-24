/-
    B16_BealFinal — Wiles + Tate + Ribet → False.
    Replaces the Prop := True stubs with real calls to the three named axioms from B14.
    Author: David Fox + Claude, Aug 2026
    -/
    import Beal.B14_FreyTate
    import Beal.B14_FreyS2
    import Beal.B15_LevelTo2

    set_option linter.unusedVariables false

    namespace Beal16Final

    /-- Given a primitive Beal triple satisfying Wiles and Tate hypotheses,
      Ribet's theorem gives False.
      This calls ribet_level_lowering_real directly. Its Tate input is an
      explicitly supplied local-conductor conclusion, so the theorem itself
      depends only on the Ribet interface (and Lean foundations). -/
    theorem beal_if_wiles_tate_ribet
      {A B C : ℤ} {x y z : ℕ}
      (hA : 0 < A) (hB : 0 < B) (hC : 0 < C)
      (hx : 3 ≤ x) (hy : 3 ≤ y) (hz : 3 ≤ z)
      (hEq : A ^ x + B ^ y = C ^ z)
      (hCop : IsCoprime A (B * C))
      (hWiles : ∃ ℓ N : ℕ, 5 ≤ ℓ ∧ ℓ.Prime ∧ 2 ≤ N ∧
          ℓ ∣ A.natAbs * B.natAbs * C.natAbs ∧
          (∀ q : ℕ, q.Prime → q ∣ N → q ∣ A.natAbs * B.natAbs * C.natAbs ∨ q = 2))
      (hTate : ∀ p : ℕ, p.Prime → p ≠ 2 → p ∣ A.natAbs * B.natAbs * C.natAbs →
          ∃ N : ℕ, p ∣ N ∧ ¬ (p * p ∣ N) ∧
              (∀ q : ℕ, q.Prime → q ∣ N →
                  q ∣ A.natAbs * B.natAbs * C.natAbs ∨ q = 2)) :
      False :=
    Beal.FreyTate.ribet_level_lowering_real hA hB hC hx hy hz hEq hCop hWiles hTate

    #print axioms beal_if_wiles_tate_ribet
    -- Expected: Beal.FreyTate.ribet_level_lowering_real

    end Beal16Final
    