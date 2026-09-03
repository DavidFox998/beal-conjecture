# Level-26 evidence ledger

This ledger distinguishes finite checks from the geometric and arithmetic
theorems still required for the unconditional level-26 argument.

## Formal immersion at the cusp infinity

- **Reduction prime:** \(p=3\). Since \(26=2\cdot13\), the prime \(3\) is a
  good-reduction prime for \(X_0(26)\).
- **Point of immersion:** the rational cusp \(\infty\).
- **Cotangent basis:** the two-dimensional basis obtained from
  `ModularSymbols(26)`.
- **Recorded matrix:**

  \[
  M_3=
  \begin{pmatrix}
  1&1\\
  0&2
  \end{pmatrix}
  \quad\text{over }\mathbf F_3.
  \]

- **Checked determinant:** \(\det(M_3)=2\ne0\pmod3\), so \(M_3\) has rank
  \(2\) modulo \(3\).

The kernel-checked finite certificate is
`Beal17Mazur.Gates.FormalImmersion26Cert.M3_det_nonzero`.

This matrix is not the former placeholder
`[[1,0,1,0,1,1],[0,1,1,1,0,1]]`, and the claim is not “rank two modulo
two.” The remaining geometric obligation is to prove that this recorded
matrix is the differential of the actual Abel--Jacobi map at the cusp
\(\infty\), and then apply the formal-immersion criterion on the corresponding
mod-\(3\) residue disk.

## Current proof boundary

The following finite statements are checked:

1. the displayed \(M_3\) determinant is nonzero modulo \(3\);
2. the finite \(S_2(26)\) dimension and q-expansion tables have been replayed;
3. the level-26 coefficient ledger and bad-prime witness searches are
   reproducible.

The following conclusions require their genuine mathematical bridges before
they can be called complete:

1. \(J_0(26)\) is isogenous to the product of the two level-26 elliptic
   factors;
2. the coefficient ledger computes the genuine \(2\)-Selmer groups;
3. \(J_0(26)(\mathbf Q)\) has rank zero and the stated torsion subgroup;
4. \(M_3\) is the actual Abel--Jacobi cotangent map at \(\infty\);
5. the resulting residue-disk injectivity exhausts
   \(X_0(26)(\mathbf Q)\).