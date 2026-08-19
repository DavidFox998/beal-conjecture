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
      have hPrimitive : PrimitiveTripleCore a b c := by
        intro d hda hdb hdc
        rcases hda with ⟨qa, hqa⟩
        rcases hdb with ⟨qb, hqb⟩
        rcases hdc with ⟨qc, hqc⟩
        have hda' : d ∣ a := ⟨qa, hqa⟩
        have hdb' : d ∣ b := ⟨qb, hqb⟩
        have hdc' : d ∣ c := ⟨qc, hqc⟩
        have hdbc : d ∣ Nat.gcd b c := Nat.dvd_gcd hdb' hdc'
        have hdabc : d ∣ Nat.gcd a (Nat.gcd b c) := Nat.dvd_gcd hda' hdbc
        have hd1 : d ∣ 1 := by simpa [hcop] using hdabc
        exact Nat.dvd_one.mp hd1
      have hSol : IsBealSolution a b c n n n :=
        ⟨ha, hb, hc, hn, hn, hn, heq, hPrimitive⟩
      exact hBeal a b c n n n hSol

#print axioms beal_implies_fermat
#print axioms beal_implies_fermat_full

end Beal21Fermat
