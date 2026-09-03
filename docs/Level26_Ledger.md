# Level-26 evidence ledger

This ledger distinguishes finite checks from the geometric and arithmetic
theorems still required for the unconditional level-26 argument.

## Formal immersion at the cusp infinity

- **Reduction prime:** \(p=3\). Since \(26=2\cdot13\), the prime \(3\) is a
  good-reduction prime for \(X_0(26)\).
- **Point of immersion:** the rational cusp \(\infty\).
- **Eigenform basis:** the separate normalized `26a1` and `26b1` coefficient
  lines recorded through \(a_{100}\).
- **Natural coefficient matrix:** \(a_1=1,1\) and \(a_2=-1,1\) give
  \[
  C_3=\begin{pmatrix}1&1\\2&1\end{pmatrix}
  \quad\text{over }\mathbf F_3.
  \]
- **Target-coordinate change:** applying
  \(P=\begin{pmatrix}1&0\\1&1\end{pmatrix}\), corresponding to
  \((c_1,c_2)\mapsto(c_1,c_1+c_2)\), gives \(P C_3=M_3\).
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
The ledger-to-matrix derivation is
`Beal.Modular.Level26_GeometryBridge.level26_cotangent_matrix_eq_M3`.

## Genus arithmetic port from the RH repositories

The reusable part of the \(X_0(143)\) work is the numerical
Diamond--Shurman/Riemann--Hurwitz pattern. At level \(26\), the checked inputs
are
\[
\mu=42,\qquad \nu_2=2,\qquad \nu_3=0,\qquad \nu_\infty=4,
\]
and therefore
\[
1+\frac{42}{12}-\frac{2}{4}-\frac{0}{3}-\frac{4}{2}=2.
\]
This is formalized by `X0_26_genus_formula_arithmetic` and shown to agree
numerically with the existing nonsingular-sextic genus certificate.

The searched RH repositories do not construct an Abel--Jacobi map, a cusp
completion, a cotangent space, or a q-expansion-to-differential theorem.
Accordingly, the remaining geometric obligation is now stated precisely as
`QExpansionCotangentCompatibilityAtInfinity26`: the actual pullback on
cotangent spaces, in the standard \(q\)-parameter and stated bases, must equal
the ledger-derived coefficient map. From that premise Lean proves
`dAJ_at_infinity_eq_M3_of_qExpansion_compatibility`.

## Current proof boundary

The finite \(S_2(26)\) dimension and q-expansion ledger, displayed \(M_3\)
determinant, and coefficient evidence are checked. The actual Jacobian
isogeny, genuine Selmer identification, Jacobian torsion, Abel--Jacobi
cotangent identification, and residue-disk injectivity remain mathematical
bridges rather than consequences of the finite tables alone.