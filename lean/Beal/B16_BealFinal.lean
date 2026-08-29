/-
    B16_BealFinal — conditional Wiles/Ribet descent → False.
    The canonical Frey model uses separately supplied global conductor data.
    The Wiles plan already carries exact-divisibility edge proofs, so this
    theorem does not invoke the independent local Tate Step 2 theorem.
    Author: David Fox + Claude, Aug 2026
    -/
    import Beal.B15_RibetIterate

    set_option linter.unusedVariables false

    namespace Beal16Final

    /-- Given a primitive Beal triple and an enriched edge supplier, the typed
      conductor/Wiles/Ribet descent gives False. -/
    theorem beal_if_wiles_tate_ribet
      (supplier : Beal.RibetIterate.EnrichedPlanSupplier)
      {A B C : ℤ} {x y z : ℕ}
      (hA : 0 < A) (hB : 0 < B) (hC : 0 < C)
      (hx : 3 ≤ x) (hy : 3 ≤ y) (hz : 3 ≤ z)
      (hEq : A ^ x + B ^ y = C ^ z)
      (hCop : IsCoprime A (B * C)) :
      False :=
    Beal.RibetIterate.ribet_iteration_gives_False
      supplier hA hB hC hx hy hz hEq hCop

    #print axioms beal_if_wiles_tate_ribet
    -- Expected named axioms: frey_conductor_data and wiles_modularity only;
    -- the enriched-plan supplier is explicit.

    end Beal16Final
    