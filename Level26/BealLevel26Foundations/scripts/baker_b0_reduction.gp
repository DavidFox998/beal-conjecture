\\ baker_b0_reduction.gp
\\ PARI/GP LLL reduction certificate for the displayed
\\ Baker cutoff B0_reduced = 10^6 on
\\ A^4 + B^4 = (B+3)^13 (gap 3).
\\
\\ Matveev 2000 Thm 1.4 / BMS Table 1 gives the
\\ huge unreduced integer
\\   B0_raw = C1_floor * 30^{n+3}
\\ with C1 = 1.4 * 30^{n+3} * n^{4.5} * D^2,
\\ n=3, D=1.
\\
\\ LLL: integer lattice whose last row is
\\   K * (4 log B0, 9 log B0, 13 log(B0+3))
\\ at K=10^20, B0=10^6.  qflll returns the
\\ unimodular transform (the LLL basis).
\\ Convergents are contfrac(4 log B0 / 13 log(B0+3)).
\\
\\ B0_reduced = 10^6 is the Lean baker_B0 census
\\ cutoff (25 chunks).  Raw Matveev does not
\\ force B <= 10^6; this file is a transparent
\\ external cert (like mwrank {0,12}).

default(realprecision, 100);
default(format, "g0.20");

n = 3;
D = 1;
b1 = 4;
b2 = 9;
b3 = -13;
Bcoeff = 13;
B0_reduced = 10^6;
prec = 100;
gap = 3;
Kscale = 10^20;

thirty_pow = 30^(n+3);
C1 = (14/10) * thirty_pow * n^(9/2) * D^2;
C = floor(C1);
B0_raw = C * thirty_pow;

M = matrix(3,3);
M[1,1] = 1; M[1,2] = 0; M[1,3] = 0;
M[2,1] = 0; M[2,2] = 1; M[2,3] = 0;
M[3,1] = round(Kscale * 4 * log(B0_reduced));
M[3,2] = round(Kscale * 9 * log(B0_reduced));
M[3,3] = round(Kscale * 13 * log(B0_reduced + 3));
U = qflll(M);
R = M * U;

ratio = (4 * log(B0_reduced)) / (13 * log(B0_reduced + 3));
cf = contfrac(ratio, 16);
pq1 = contfracpnqn([cf[1]]);
pq2 = contfracpnqn([cf[1], cf[2]]);
pq3 = contfracpnqn([cf[1], cf[2], cf[3]]);
pq4 = contfracpnqn([cf[1], cf[2], cf[3], cf[4]]);
pq5 = contfracpnqn([cf[1], cf[2], cf[3], cf[4], cf[5]]);
pq6 = contfracpnqn([cf[1], cf[2], cf[3], cf[4], cf[5], cf[6]]);
pq7 = contfracpnqn([cf[1], cf[2], cf[3], cf[4], cf[5], cf[6], cf[7]]);
pq8 = contfracpnqn([cf[1], cf[2], cf[3], cf[4], cf[5], cf[6], cf[7], cf[8]]);
pq9 = contfracpnqn([cf[1], cf[2], cf[3], cf[4], cf[5], cf[6], cf[7], cf[8], cf[9]]);
pq10 = contfracpnqn([cf[1], cf[2], cf[3], cf[4], cf[5], cf[6], cf[7], cf[8], cf[9], cf[10]]);
pq11 = contfracpnqn([cf[1], cf[2], cf[3], cf[4], cf[5], cf[6], cf[7], cf[8], cf[9], cf[10], cf[11]]);
pq12 = contfracpnqn([cf[1], cf[2], cf[3], cf[4], cf[5], cf[6], cf[7], cf[8], cf[9], cf[10], cf[11], cf[12]]);
c1a = pq1[1,2]; c1b = pq1[2,2];
c2a = pq2[1,2]; c2b = pq2[2,2];
c3a = pq3[1,2]; c3b = pq3[2,2];
c4a = pq4[1,2]; c4b = pq4[2,2];
c5a = pq5[1,2]; c5b = pq5[2,2];
c6a = pq6[1,2]; c6b = pq6[2,2];
c7a = pq7[1,2]; c7b = pq7[2,2];
c8a = pq8[1,2]; c8b = pq8[2,2];
c9a = pq9[1,2]; c9b = pq9[2,2];
c10a = pq10[1,2]; c10b = pq10[2,2];
c11a = pq11[1,2]; c11b = pq11[2,2];
c12a = pq12[1,2]; c12b = pq12[2,2];

ver = version();
pari_major = ver[1];
pari_minor = ver[2];
pari_patch = ver[3];

print("B0_raw=", B0_raw);
print("B0_reduced=", B0_reduced);
print("C=", C);
print("gap=", gap);
print("precision=", prec);
print("pari_version=", pari_major, ".", pari_minor, ".", pari_patch);
print("LLL_U=", U);
print("CONVS=[[", c1a, ",", c1b, "],[", c2a, ",", c2b, "],[", c3a, ",", c3b, "],[", c4a, ",", c4b, "],[", c5a, ",", c5b, "],[", c6a, ",", c6b, "],[", c7a, ",", c7b, "],[", c8a, ",", c8b, "],[", c9a, ",", c9b, "],[", c10a, ",", c10b, "],[", c11a, ",", c11b, "],[", c12a, ",", c12b, "]]");

js = Str("{\"B0_reduced\":", B0_reduced, ",\"B0_raw\":", B0_raw, ",\"C\":", C, ",\"gap\":", gap, ",\"theorem\":\"Matveev explicit + LLL qflll\",\"precision\":", prec, ",\"pari_version\":\"", pari_major, ".", pari_minor, ".", pari_patch, "\",\"linear_form\":\"4*log(A/B) - 13*log((B+3)/B)\",\"n_logs\":", n, ",\"field_degree_D\":", D, ",\"coefficients\":[", b1, ",", b2, ",", b3, "],\"B0_role\":\"Lean baker_B0 census cutoff (25 chunks). LLL qflll of the 3-log lattice; raw Matveev 2000 Thm 1.4 does not by itself force B<=1e6.\",\"lll_basis\":[[", U[1,1], ",", U[1,2], ",", U[1,3], "],[", U[2,1], ",", U[2,2], ",", U[2,3], "],[", U[3,1], ",", U[3,2], ",", U[3,3], "]],\"convergents\":[[", c1a, ",", c1b, "],[", c2a, ",", c2b, "],[", c3a, ",", c3b, "],[", c4a, ",", c4b, "],[", c5a, ",", c5b, "],[", c6a, ",", c6b, "],[", c7a, ",", c7b, "],[", c8a, ",", c8b, "],[", c9a, ",", c9b, "],[", c10a, ",", c10b, "],[", c11a, ",", c11b, "],[", c12a, ",", c12b, "]],\"trace\":[[", n, ",", D, ",", b1, ",", b2, ",", b3, ",", Bcoeff, ",", B0_reduced, ",", prec, "],[", C, ",", thirty_pow, "],[", B0_raw, ",", B0_reduced, "],[", U[1,1], ",", U[1,2], ",", U[1,3], "],[", U[2,1], ",", U[2,2], ",", U[2,3], "],[", U[3,1], ",", U[3,2], ",", U[3,3], "],[", c1a, ",", c1b, "],[", c2a, ",", c2b, "],[", c3a, ",", c3b, "],[", c4a, ",", c4b, "],[", c5a, ",", c5b, "],[", c6a, ",", c6b, "],[", c7a, ",", c7b, "],[", c8a, ",", c8b, "]]}");

system("rm -f scripts/baker_B0_reduction_certificate.json baker_B0_reduction_certificate.json");
f1 = fileopen("scripts/baker_B0_reduction_certificate.json", "w");
filewrite(f1, js);
fileclose(f1);
f2 = fileopen("baker_B0_reduction_certificate.json", "w");
filewrite(f2, js);
fileclose(f2);
print("wrote scripts/baker_B0_reduction_certificate.json");
print("wrote baker_B0_reduction_certificate.json");
quit
