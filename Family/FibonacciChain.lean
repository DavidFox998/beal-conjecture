import Mathlib.Data.Nat.Fib.Basic

namespace Eutheos

def weyl_phase (k : ℕ) : ℕ := (k * 610) % 987

def weyl_points (N : ℕ) : List ℕ :=
  (List.range N |>.map weyl_phase).mergeSort (· ≤ ·)

def weyl_gaps (N : ℕ) : List ℕ :=
  let pts := weyl_points N
  match pts with
  | [] => []
  | _ :: _ =>
    let rec go : List ℕ → List ℕ
      | [] => []
      | [_] => []
      | a :: b :: t => (b - a) :: go (b :: t)
    go pts ++ [987 - pts.getLastD 0 + pts.headD 0]

end Eutheos