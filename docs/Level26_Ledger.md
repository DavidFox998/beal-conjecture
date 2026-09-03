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

The remaining geometric obligation is to prove that this recorded matrix is
the differential of the actual Abel--Jacobi map at the cusp \(\infty\), and
then apply the formal-immersion criterion on the corresponding mod-\(3\)
residue disk.

## Current proof boundary

The finite \(S_2(26)\) dimension and q-expansion ledger, displayed \(M_3\)
determinant, and coefficient evidence are checked. The actual Jacobian
isogeny, genuine Selmer identification, Jacobian torsion, Abel--Jacobi
cotangent identification, and residue-disk injectivity remain mathematical
bridges rather than consequences of the finite tables alone.