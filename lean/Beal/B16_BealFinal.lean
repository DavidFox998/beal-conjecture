/-
    B16_BealFinal — Wiles + Tate + Ribet → False.
    Replaces the Prop := True stubs with real calls to the three named axioms from B14.
    Author: David Fox + Claude, Aug 2026
    -/
    import Beal.B15_RibetIterate

    set_option linter.unusedVariables false

    namespace Beal16Final

    /-- Given a primitive Beal triple satisfying Wiles and Tate hypotheses,
      the typed Tate/Wiles/Ribet descent gives False. -/
    theorem beal_if_wiles_tate_ribet
      {A B C : ℤ} {x y z : ℕ}
      (hA : 0 < A) (hB : 0 < B) (hC : 0 < C)
      (hx : 3 ≤ x) (hy : 3 ≤ y) (hz : 3 ≤ z)
      (hEq : A ^ x + B ^ y = C ^ z)
      (hCop : IsCoprime A (B * C)) :
      False :=
    Beal.RibetIterate.ribet_iteration_gives_False hA hB hC hx hy hz hEq hCop

    #print axioms beal_if_wiles_tate_ribet
    -- Expected: Tate, Wiles, and ribet_single_step

    end Beal16Final
    