import Beal.B21_FermatCorollary_Core
import Beal.B20_BealConjectureDone
import Beal.B01_Def

set_option linter.unusedVariables false

namespace Beal21Fermat

-- Fermat with gcd=1 condition — the hard core
-- If a^n + b^n = c^n with n>2 and coprime, it's a Beal solution with x=y=z=n
def FermatLastTheorem : Prop :=
  ∀ a b c n : Nat,
    2 < n → ¬ IsBealSolution a b c n n n

-- Beal => Fermat in ONE line — no sorry, no Classical
-- Because IsBealSolution a b c n n n is exactly the Fermat equation + gcd=1 + n>2
theorem beal_implies_fermat :
  _root_.BealConjecture → FermatLastTheorem :=
  fun hBeal a b c n _hn hSol =>
    hBeal a b c n n n hSol

-- The core statement records primitivity with explicit common-divisor
-- witnesses.  This wrapper bridge preserves the conventional API while
-- keeping `Nat.gcd` out of the import-free B21 core.
theorem beal_conjecture_to_21_core :
  _root_.BealConjecture → BealConjecture21Core :=
  fun hBeal a b c n hSol =>
    by
      rcases hSol with ⟨ha, hb, hc, hn, heq, hPrimitive⟩
      apply hBeal a b c n n n
      apply isBealSolutionCore_to_wrapper
      refine ⟨ha, hb, hc, hn, hn, hn, heq, ?_⟩
      intro d hda hdb hdc
      apply hPrimitive d
      · rcases hda with ⟨qa, hqa⟩
        exact ⟨qa, hqa⟩
      · rcases hdb with ⟨qb, hqb⟩
        exact ⟨qb, hqb⟩
      · rcases hdc with ⟨qc, hqc⟩
        exact ⟨qc, hqc⟩

theorem beal_implies_fermat_full_core :
  _root_.BealConjecture → FermatFull21Core :=
  fun hBeal =>
    beal_implies_fermat_full21_core (beal_conjecture_to_21_core hBeal)

-- Full FLT statement (with positivity) as corollary — same proof
def FermatFull : Prop :=
  ∀ a b c n : Nat,
    0 < a → 0 < b → 0 < c → 2 < n →
    a ^ n + b ^ n = c ^ n →
    Nat.gcd a (Nat.gcd b c) ≠ 1

theorem beal_implies_fermat_full :
  _root_.BealConjecture → FermatFull :=
  fun hBeal a b c n ha hb hc hn heq hcop =>
    hBeal a b c n n n ⟨ha, hb, hc, hn, hn, hn, heq, hcop⟩

#print axioms beal_implies_fermat
#print axioms beal_conjecture_to_21_core
#print axioms beal_implies_fermat_full_core
#print axioms beal_implies_fermat_full

end Beal21Fermat
