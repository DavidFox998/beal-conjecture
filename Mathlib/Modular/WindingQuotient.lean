import Mathlib.Modular.ManinSymbols

/-!
# Winding element and the eigenlines at levels 32 and 64

`windingElement N` is `{0, ∞}`. Merel's test at an auxiliary prime `q` is
`(T_q - (q + 1)) {0, ∞}`. For `q = 5` and `p = 13` that vector is nonzero
modulo `13` at levels `32` and `64`.

The same file records the lines on which `T_5` acts by the LMFDB
eigenvalues `a₅(32.2.a.a) = -2` and `a₅(64.2.a.a) = 2`, and checks the
other prime eigenvalues through `19` by the Hecke matrices.
-/

def intDot (row v : List Int) : Int :=
  row.zip v |>.foldl (init := 0) fun s (x, y) => s + x * y

def matVec (rows : List (List Int)) (v : List Int) : List Int :=
  rows.map (intDot · v)

def vecScale (k : Int) (v : List Int) : List Int :=
  v.map (k * ·)

def vecSub (a b : List Int) : List Int :=
  a.zip b |>.map fun (x, y) => x - y

/-- `(T_q - (q + 1)) v`. -/
def tqMinus (q : Nat) (T : List (List Int)) (v : List Int) : List Int :=
  vecSub (matVec T v) (vecScale ((q : Int) + 1) v)

def t5Minus6 (T : List (List Int)) (v : List Int) : List Int :=
  tqMinus 5 T v

/-- True when some coordinate is nonzero modulo `m`. -/
def nonzeroMod (m : Int) (v : List Int) : Bool :=
  v.any fun x => x % m != 0

/-- `(T_5 - 6){0, ∞}` at level `32` is `(0, 0, 4, -4, 0, 0)`. -/
theorem t5_minus6_e32 : t5Minus6 T5_32 e32 = [0, 0, 4, -4, 0, 0] := by
  rw [T5_32_value, e32_value]
  native_decide

/-- `(T_5 - 6){0, ∞}` at level `64` is `(0, 0, 0, 2, 2, -4, 0, 0, 0, 0)`. -/
theorem t5_minus6_e64 : t5Minus6 T5_64 e64 = [0, 0, 0, 2, 2, -4, 0, 0, 0, 0] := by
  rw [T5_64_value, e64_value]
  native_decide

theorem winding_nonzero_mod13_32 : nonzeroMod 13 (t5Minus6 T5_32 e32) = true := by
  rw [t5_minus6_e32]
  native_decide

theorem winding_nonzero_mod13_64 : nonzeroMod 13 (t5Minus6 T5_64 e64) = true := by
  rw [t5_minus6_e64]
  native_decide

/-- Eigenvector for `a₅ = -2` in the level-`32` plus space. -/
def eig32 : List Int :=
  [0, 0, -1, 1, 0, 0]

/-- Eigenvector for `a₅ = 2` in the level-`64` plus space. -/
def eig64 : List Int :=
  [0, 0, 0, -1, 1, 0, 0, 0, 0, 0]

def heckeEigen (N p : Nat) (v : List Int) (lam : Int) : Bool :=
  matVec (heckeMatrix N p) v == vecScale lam v

/-- Prime eigenvalues of `32.2.a.a` on `eig32`, through `19`. -/
def hecke32_ok : Bool :=
  heckeEigen 32 2 eig32 0 && heckeEigen 32 3 eig32 0 && heckeEigen 32 5 eig32 (-2) &&
    heckeEigen 32 7 eig32 0 && heckeEigen 32 11 eig32 0 && heckeEigen 32 13 eig32 6 &&
    heckeEigen 32 17 eig32 2 && heckeEigen 32 19 eig32 0

/-- Prime eigenvalues of `64.2.a.a` on `eig64`, through `19`. -/
def hecke64_ok : Bool :=
  heckeEigen 64 2 eig64 0 && heckeEigen 64 3 eig64 0 && heckeEigen 64 5 eig64 2 &&
    heckeEigen 64 7 eig64 0 && heckeEigen 64 11 eig64 0 && heckeEigen 64 13 eig64 (-6) &&
    heckeEigen 64 17 eig64 2 && heckeEigen 64 19 eig64 0

theorem hecke32_eigenvalues : hecke32_ok = true := by
  native_decide

theorem hecke64_eigenvalues : hecke64_ok = true := by
  native_decide

def subDiag (lam : Int) (rows : List (List Int)) : List (List Int) :=
  let rec goRow (i : Nat) : List (List Int) → List (List Int)
    | [] => []
    | row :: rest =>
      let rec goCol (j : Nat) : List Int → List Int
        | [] => []
        | x :: xs => (if i = j then x - lam else x) :: goCol (j + 1) xs
      goCol 0 row :: goRow (i + 1) rest
  goRow 0 rows

/-- Rank of an integer matrix, viewed as the row space over `ℚ`. -/
def listRank (rows : List (List Int)) : Nat :=
  match rows with
  | [] => 0
  | row0 :: _ =>
    let n := row0.length
    let pivots := rows.foldl (init := Array.replicate n (none : Option (Array Q))) fun piv row =>
      insertRow piv (row.map Q.ofInt).toArray
    countSome pivots

/-- `T_5 + 2` has rank `5` on a `6`-dimensional space, so `a₅ = -2` is a line. -/
theorem eigenline_32_dim : T5_32.length - listRank (subDiag (-2) T5_32) = 1 := by
  rw [T5_32_value]
  native_decide

/-- `T_5 - 2` has rank `9` on a `10`-dimensional space, so `a₅ = 2` is a line. -/
theorem eigenline_64_dim : T5_64.length - listRank (subDiag 2 T5_64) = 1 := by
  rw [T5_64_value]
  native_decide
