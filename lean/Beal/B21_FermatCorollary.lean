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

-- Full FLT statement (with positivity) as corollary — same proof
def FermatFull : Prop :=
  ∀ a b c n : Nat,
    0 < a → 0 < b → 0 < c → 2 < n →
    a ^ n + b ^ n = c ^ n →
    Nat.gcd a (Nat.gcd b c) ≠ 1

theorem beal_implies_fermat_full :
  _root_.BealConjecture → FermatFull :=
  fun hBeal a b c n ha hb hc hn heq hcop =>
    by
      have hSol : IsBealSolution a b c n n n :=
        ⟨ha, hb, hc, hn, hn, hn, heq, hcop⟩
      exact hBeal a b c n n n hSol

#print axioms beal_implies_fermat
#print axioms beal_implies_fermat_full

end Beal21Fermat
