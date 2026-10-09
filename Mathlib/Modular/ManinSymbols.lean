import Init

/-!
# Manin symbols for `Γ₀(N)`, weight 2, plus space

`ℙ¹(ℤ/Nℤ)` is the set of Manin symbols. The plus modular-symbol space is
the quotient by

```text
(c, d) + (d, -c) = 0
(c, d) + (d, -c-d) + (-c-d, c) = 0
(c, d) - (-c, d) = 0
```

The last line is the star involution. `relationRank` is the rank of that
relation matrix over `ℚ`, computed by reduced row echelon form.
`plusDim N = |ℙ¹(ℤ/Nℤ)| - relationRank N`.

`windingElement N` is the class of `{0, ∞}`, the Manin symbol `(0, 1)`,
in the free basis of that quotient. `heckeMatrix N 5` is `T_5` on the
same basis, summed over the Cremona–Heilbronn matrices of determinant `5`.

`e32`, `e64`, `T5_32`, and `T5_64` are those general definitions at
levels `32` and `64`.
-/

/-- A reduced rational `num / den` with `den > 0`. -/
structure Q where
  num : Int
  den : Nat
  deriving Repr, DecidableEq, Inhabited

def Q.mk' (n : Int) (d : Nat) : Q :=
  if d = 0 then ⟨0, 1⟩
  else
    let g := Nat.gcd n.natAbs d
    ⟨n / (g : Int), d / g⟩

def Q.ofInt (n : Int) : Q :=
  ⟨n, 1⟩

def Q.neg (a : Q) : Q :=
  ⟨-a.num, a.den⟩

def Q.add (a b : Q) : Q :=
  Q.mk' (a.num * (b.den : Int) + b.num * (a.den : Int)) (a.den * b.den)

def Q.sub (a b : Q) : Q :=
  a.add b.neg

def Q.mul (a b : Q) : Q :=
  Q.mk' (a.num * b.num) (a.den * b.den)

def Q.inv (a : Q) : Q :=
  if a.num = 0 then ⟨0, 1⟩
  else if a.num > 0 then Q.mk' (a.den : Int) a.num.natAbs
  else (Q.mk' (a.den : Int) a.num.natAbs).neg

def Q.div (a b : Q) : Q :=
  a.mul b.inv

def Q.toInt (a : Q) : Int :=
  if a.den = 0 then 0 else a.num / (a.den : Int)

/-- `s` with `(s * u) % N = Nat.gcd u N`, the smallest such `s < N`. -/
def bezoutMod (u N : Nat) : Nat × Nat :=
  let g := Nat.gcd u N
  let rec find (fuel s : Nat) : Nat :=
    match fuel with
    | 0 => 0
    | fuel + 1 => if (s * u) % N = g then s else find fuel (s + 1)
  (g, find N 0)

/-- Walk `s ↦ s + N/g` until `gcd(s, N) = 1`. -/
def forceCoprime (s N g : Nat) : Nat :=
  let d := if g = 0 then 0 else N / g
  let rec go (fuel s : Nat) : Nat :=
    match fuel with
    | 0 => s
    | fuel + 1 => if Nat.gcd s N = 1 then s else go fuel ((s + d) % N)
  if g = 1 then s else go (g + 1) s

/-- Canonical second coordinate on the `g` associates. -/
def minimizeV (v N g : Nat) : Nat :=
  if g ≤ 1 then v
  else
    let Ng := N / g
    let vNg := (v * Ng) % N
    let rec go (fuel t vv minV : Nat) : Nat :=
      match fuel with
      | 0 => minV
      | fuel + 1 =>
        let vv' := (vv + vNg) % N
        let t' := (t + Ng) % N
        let minV' := if vv' < minV && Nat.gcd t' N = 1 then vv' else minV
        go fuel t' vv' minV'
    go (g - 1) 1 v v

/-- Canonical representative of `(u : v)` in `ℙ¹(ℤ/Nℤ)`.

`none` when `gcd(u, v, N) ≠ 1`.
-/
def p1Normalize (N u v : Nat) : Option (Nat × Nat) :=
  if N = 0 then none
  else
    let u := u % N
    let v := v % N
    if u = 0 then
      if Nat.gcd v N = 1 then some (0, 1) else none
    else
      let (g, s0) := bezoutMod u N
      if Nat.gcd g v ≠ 1 then none
      else
        let s := if g = 1 then s0 else forceCoprime s0 N g
        some (g % N, minimizeV ((s * v) % N) N g)

/-- The set `ℙ¹(ℤ/Nℤ)`, in order of first occurrence. -/
def p1Symbols (N : Nat) : List (Nat × Nat) :=
  (List.range N).foldl (init := []) fun acc u =>
    (List.range N).foldl (init := acc) fun acc v =>
      match p1Normalize N u v with
      | none => acc
      | some r => if acc.contains r then acc else acc ++ [r]

def cardP1 (N : Nat) : Nat :=
  (p1Symbols N).length

def natMod (z : Int) (N : Nat) : Nat :=
  if N = 0 then 0 else (z.emod (N : Int)).toNat

/-- Right action of a matrix on a Manin symbol, or `none` if the image is not in `ℙ¹`. -/
def applyMat? (N : Nat) (uv : Nat × Nat) (m : Int × Int × Int × Int) : Option (Nat × Nat) :=
  let (u, v) := uv
  let (a, b, c, d) := m
  p1Normalize N (natMod (a * (u : Int) + c * (v : Int)) N)
    (natMod (b * (u : Int) + d * (v : Int)) N)

/-- Right action, sending a non-symbol image to `(0, 0)`. -/
def applyMat (N : Nat) (uv : Nat × Nat) (m : Int × Int × Int × Int) : Nat × Nat :=
  match applyMat? N uv m with
  | some r => r
  | none => (0, 0)

def indexOfSym (syms : List (Nat × Nat)) (uv : Nat × Nat) : Nat :=
  let rec go (i : Nat) : List (Nat × Nat) → Nat
    | [] => 0
    | h :: t => if h == uv then i else go (i + 1) t
  go 0 syms

def sMat : Int × Int × Int × Int := (0, -1, 1, 0)

def tMat : Int × Int × Int × Int := (0, -1, 1, -1)

def t2Mat : Int × Int × Int × Int := (-1, 1, -1, 0)

def iotaMat : Int × Int × Int × Int := (-1, 0, 0, 1)

/-- Round `a / b` to the nearest integer, with ties away from zero. -/
def roundDiv (a b : Int) : Int :=
  if b = 0 || a = 0 then 0
  else
    let num := a.natAbs
    let den := b.natAbs
    let q : Int := num / den
    let r := num % den
    let mag := if r * 2 < den then q else q + 1
    if (a ≥ 0) == (b ≥ 0) then mag else -mag

def intRange (lo hi : Int) : List Int :=
  if hi < lo then []
  else
    let rec go (k : Nat) (acc : List Int) : List Int :=
      match k with
      | 0 => acc
      | k + 1 => go k ((lo + (k : Int)) :: acc)
    go ((hi - lo).toNat + 1) []

/-- One Euclidean chain of Cremona–Heilbronn matrices for the residue `r`. -/
def heilbronnGo (fuel : Nat) (x1 x2 y1 y2 a b : Int)
    (acc : List (Int × Int × Int × Int)) : List (Int × Int × Int × Int) :=
  let acc := acc ++ [(x1, x2, y1, y2)]
  match fuel with
  | 0 => acc
  | fuel + 1 =>
    if b = 0 then acc
    else
      let q := roundDiv a b
      let c := a - b * q
      let x3 := q * x2 - x1
      let y3 := q * y2 - y1
      heilbronnGo fuel x2 x3 y2 y3 (-b) c acc

def heilbronnChain (p : Nat) (r : Int) : List (Int × Int × Int × Int) :=
  heilbronnGo (2 * p + 4) (p : Int) (-r) 0 1 (-(p : Int)) r []

/-- Cremona–Heilbronn matrices of prime determinant `p`. -/
def heilbronn (p : Nat) : List (Int × Int × Int × Int) :=
  if p = 2 then
    [(1, 0, 0, 2), (2, 0, 0, 1), (2, 1, 0, 1), (1, 0, 1, 2)]
  else if p ≤ 1 then
    []
  else
    let lo : Int := -((p / 2 : Nat) : Int)
    let hi : Int := (p / 2 : Nat)
    (intRange lo hi).foldl (init := [(1, 0, 0, (p : Int))]) fun acc r =>
      acc ++ heilbronnChain p r

def sparseRow (n : Nat) (pairs : List (Nat × Int)) : Array Q := Id.run do
  let mut row := Array.replicate n (Q.ofInt 0)
  for (j, c) in pairs do
    row := row.set! j ((row[j]!).add (Q.ofInt c))
  return row

def rowCombine (row p : Array Q) (coef : Q) : Array Q :=
  Array.ofFn (n := row.size) fun i => (row[i]!).sub (coef.mul (p[i]!))

/-- Insert one relation into a reduced row echelon basis of the row space.

Existing pivots are cleared first, including those to the right of the new
pivot column. The new row is then zero on every old pivot column.
-/
def insertRow (pivots : Array (Option (Array Q))) (row0 : Array Q) :
    Array (Option (Array Q)) := Id.run do
  let n := pivots.size
  let mut row := row0
  for c in [0:n] do
    match pivots[c]! with
    | some p =>
      let coef := row[c]!
      if coef.num != 0 then
        row := rowCombine row p coef
    | none =>
      pure ()
  for c in [0:n] do
    let coef := row[c]!
    if coef.num != 0 then
      row := row.map (Q.mul coef.inv)
      let mut pivots := pivots
      for k in [0:n] do
        match pivots[k]! with
        | some q =>
          let ck := q[c]!
          if ck.num != 0 then
            pivots := pivots.set! k (some (rowCombine q row ck))
        | none =>
          pure ()
      pivots := pivots.set! c (some row)
      return pivots
  return pivots

/-- RREF pivots of the plus Manin relation matrix at level `N`. -/
def maninRelations (N : Nat) : Array (Option (Array Q)) := Id.run do
  let syms := p1Symbols N
  let n := syms.length
  let mut pivots : Array (Option (Array Q)) := Array.replicate n none
  let mut i : Nat := 0
  for uv in syms do
    let js := indexOfSym syms (applyMat N uv sMat)
    let jt := indexOfSym syms (applyMat N uv tMat)
    let jt2 := indexOfSym syms (applyMat N uv t2Mat)
    let ji := indexOfSym syms (applyMat N uv iotaMat)
    pivots := insertRow pivots (sparseRow n [(i, 1), (js, 1)])
    pivots := insertRow pivots (sparseRow n [(i, 1), (jt, 1), (jt2, 1)])
    pivots := insertRow pivots (sparseRow n [(i, 1), (ji, -1)])
    i := i + 1
  return pivots

def countSome (a : Array (Option α)) : Nat :=
  a.foldl (fun s o => if o.isSome then s + 1 else s) 0

/-- Rank over `ℚ` of the plus Manin relation matrix. -/
def relationRank (N : Nat) : Nat :=
  countSome (maninRelations N)

/-- Dimension of the plus modular symbols at level `N`. -/
def plusDim (N : Nat) : Nat :=
  cardP1 N - relationRank N

def freeCols (pivots : Array (Option (Array Q))) : Array Nat := Id.run do
  let mut free : Array Nat := #[]
  for i in [0:pivots.size] do
    match pivots[i]! with
    | none => free := free.push i
    | some _ => pure ()
  return free

/-- Coordinates of Manin symbol `i` on the free basis. -/
def coordsOf (pivots : Array (Option (Array Q))) (free : Array Nat) (i : Nat) : Array Q :=
  Id.run do
    let mut v := Array.replicate free.size (Q.ofInt 0)
    match pivots[i]! with
    | none =>
      for j in [0:free.size] do
        if free[j]! = i then
          v := v.set! j (Q.ofInt 1)
    | some row =>
      for j in [0:free.size] do
        v := v.set! j ((row[free[j]!]!).neg)
    return v

def qAdd (a b : Array Q) : Array Q :=
  Array.ofFn (n := a.size) fun i => (a[i]!).add (b[i]!)

def heckeOnSymbol (N p : Nat) (syms : List (Nat × Nat))
    (pivots : Array (Option (Array Q))) (free : Array Nat) (uv : Nat × Nat) : Array Q :=
  (heilbronn p).foldl (init := Array.replicate free.size (Q.ofInt 0)) fun acc m =>
    match applyMat? N uv m with
    | none => acc
    | some img => qAdd acc (coordsOf pivots free (indexOfSym syms img))

/-- `T_p` on the plus space, rows indexed by `maninBasis N`. -/
def heckeMatrix (N p : Nat) : List (List Int) :=
  let syms := p1Symbols N
  let pivots := maninRelations N
  let free := freeCols pivots
  let symArr := syms.toArray
  let cols := free.map fun idx => heckeOnSymbol N p syms pivots free (symArr[idx]!)
  (List.range free.size).map fun i =>
    (List.range free.size).map fun j => Q.toInt ((cols[j]!)[i]!)

/-- `{0, ∞}` in the plus basis at level `N`. -/
def windingElement (N : Nat) : List Int :=
  let syms := p1Symbols N
  let pivots := maninRelations N
  let free := freeCols pivots
  (coordsOf pivots free (indexOfSym syms (0, 1))).toList.map Q.toInt

/-- Free Manin symbols at level `N`, in column order. -/
def maninBasis (N : Nat) : List (Nat × Nat) :=
  let syms := (p1Symbols N).toArray
  (freeCols (maninRelations N)).toList.map fun i => syms[i]!

def basis32 : List (Nat × Nat) :=
  maninBasis 32

def basis64 : List (Nat × Nat) :=
  maninBasis 64

def e32 : List Int :=
  windingElement 32

def e64 : List Int :=
  windingElement 64

def T5_32 : List (List Int) :=
  heckeMatrix 32 5

def T5_64 : List (List Int) :=
  heckeMatrix 64 5

theorem p1_normalize_90_7_77 : p1Normalize 90 7 77 = some (1, 11) := by
  native_decide

theorem p1_normalize_90_7_78 : p1Normalize 90 7 78 = some (1, 24) := by
  native_decide

theorem heilbronn_5 :
    heilbronn 5 =
      [(1, 0, 0, 5), (5, 2, 0, 1), (2, 1, 1, 3), (1, 0, 3, 5), (5, 1, 0, 1),
        (1, 0, 1, 5), (5, 0, 0, 1), (5, -1, 0, 1), (-1, 0, 1, -5), (5, -2, 0, 1),
        (-2, 1, 1, -3), (1, 0, -3, 5)] := by
  native_decide

/-- `|ℙ¹(ℤ/32ℤ)| = 48`. -/
theorem card_P1_32 : cardP1 32 = 48 := by
  native_decide

/-- `|ℙ¹(ℤ/64ℤ)| = 96`. -/
theorem card_P1_64 : cardP1 64 = 96 := by
  native_decide

/-- The plus relation matrix at level 32 has rank `42`, so the quotient has dimension `6`. -/
theorem plusDim_32 : cardP1 32 - relationRank 32 = 6 := by
  native_decide

/-- The plus relation matrix at level 64 has rank `86`, so the quotient has dimension `10`. -/
theorem plusDim_64 : cardP1 64 - relationRank 64 = 10 := by
  native_decide

theorem e32_value : e32 = [-1, 0, 0, 0, 0, 0] := by
  native_decide

theorem e64_value : e64 = [-1, 0, 0, 0, 0, 0, 0, 0, 0, 0] := by
  native_decide

theorem basis32_value :
    basis32 = [(1, 0), (2, 15), (4, 5), (4, 7), (8, 3), (16, 1)] := by
  native_decide

theorem basis64_value :
    basis64 =
      [(1, 0), (2, 31), (4, 9), (4, 11), (4, 13), (4, 15), (8, 5), (8, 7),
        (16, 3), (32, 1)] := by
  native_decide

theorem T5_32_value :
    T5_32 = [
      [6, 0, 0, 0, 0, 0],
      [0, 6, 0, 0, 0, 0],
      [-4, 8, 2, 4, 0, -4],
      [4, -8, 4, 2, 0, 4],
      [0, 0, 0, 0, 6, 0],
      [0, 0, 0, 0, 0, 6]
    ] := by
  native_decide

theorem T5_64_value :
    T5_64 = [
      [6, 0, 0, 0, 0, 0, 0, 0, 0, 0],
      [0, 6, 0, 0, 0, 0, 0, 0, 0, 0],
      [0, -4, 0, 2, 2, 2, 1, -1, 2, -4],
      [-2, 0, 0, 2, 0, 4, -1, 1, -2, 2],
      [-2, 8, 4, 0, 2, 0, 1, -1, -2, 2],
      [4, -4, 2, 2, 2, 0, -1, 1, 2, 0],
      [0, 0, 0, 0, 0, 0, 0, 6, 0, 0],
      [0, 0, 0, 0, 0, 0, 6, 0, 0, 0],
      [0, 0, 0, 0, 0, 0, 0, 0, 6, 0],
      [0, 0, 0, 0, 0, 0, 0, 0, 0, 6]
    ] := by
  native_decide

