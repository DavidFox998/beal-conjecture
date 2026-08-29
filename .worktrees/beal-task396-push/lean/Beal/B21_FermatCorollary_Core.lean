-- B21_FermatCorollary_Core — zero-import primitive-witness Fermat bridge.
def Divides21Core (d n : Nat) : Prop := ∃ q : Nat, n = d * q

def PrimitiveTriple21Core (a b c : Nat) : Prop :=
  ∀ d : Nat, Divides21Core d a → Divides21Core d b → Divides21Core d c → d = 1

def IsBealSolution21Core (a b c n : Nat) : Prop :=
  0 < a ∧ 0 < b ∧ 0 < c ∧ 2 < n ∧
  a ^ n + b ^ n = c ^ n ∧ PrimitiveTriple21Core a b c

def BealConjecture21Core : Prop :=
  ∀ a b c n : Nat, IsBealSolution21Core a b c n → False

def FermatLastTheorem21Core : Prop :=
  ∀ a b c n : Nat, 2 < n → ¬ IsBealSolution21Core a b c n

def FermatFull21Core : Prop :=
  ∀ a b c n : Nat, 0 < a → 0 < b → 0 < c → 2 < n →
    a ^ n + b ^ n = c ^ n → PrimitiveTriple21Core a b c → False

theorem beal_implies_fermat21_core :
  BealConjecture21Core → FermatLastTheorem21Core :=
  fun h a b c n _ hSol => h a b c n hSol

theorem beal_implies_fermat_full21_core :
  BealConjecture21Core → FermatFull21Core :=
  fun h a b c n ha hb hc hn heq hPrimitive =>
    h a b c n ⟨ha, hb, hc, hn, heq, hPrimitive⟩

#print axioms Divides21Core
#print axioms PrimitiveTriple21Core
#print axioms IsBealSolution21Core
#print axioms BealConjecture21Core
#print axioms FermatLastTheorem21Core
#print axioms FermatFull21Core
#print axioms beal_implies_fermat21_core
#print axioms beal_implies_fermat_full21_core