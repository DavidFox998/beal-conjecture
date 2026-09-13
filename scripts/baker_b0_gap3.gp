\\ baker_b0_gap3.gp
\\ PARI/GP certificate for the displayed Baker cutoff
\\ B0 = 10^6 on A^4 + B^4 = (B+3)^13 (gap 3).
\\
\\ Linear form (3 logs), matching the Lean Nat identity
\\ (B+3)^13 = A^4 + B^4:
\\   Lambda = 4*log(A) + 9*log(B) - 13*log(B+3)
\\         = 4*log(A/B) - 13*log((B+3)/B)
\\ On a solution this is log(A^4 B^9 / (A^4+B^4)).
\\ The 2-log form used for the size bound is
\\   Lambda2 = 4*log(A) - 13*log(B+3)
\\           = -log(1 + (B/A)^4)
\\ so |Lambda2| < 2*B^4/(B+3)^13 for B >= 2.
\\
\\ Constants follow Matveev 2000 (Izv. Math. 64) Thm 1.4 / 2.1
\\ for n logs, degree D=1, and the BMS Table 1 shape
\\ (Bugeaud--Mignotte--Siksek, linear forms in 3 logs).
\\ Raw Matveev does not by itself force B <= 10^6; the
\\ displayed B0 is the Lean baker_B0 census cutoff.
\\ This file is a transparent external cert (like mwrank).

default(realprecision, 100);
default(format, "g0.20");

n = 3;
D = 1;
b1 = 4;
b2 = 9;
b3 = -13;
Bcoeff = 13;
B0 = 10^6;
prec = 100;
gap = 3;

\\ C1 = 1.4 * 30^{n+3} * n^{4.5} * D^2
thirty_pow = 30^(n+3);
n_to_4_5 = n^(9/2);
C1 = (14/10) * thirty_pow * n_to_4_5 * D^2;
C1_floor = floor(C1);

\\ Heights at the displayed B0 (A < (B+3)^{13/4}).
Aapprox = (B0 + 3)^(13/4);
hA = log(Aapprox);
hB = log(B0);
hC = log(B0 + 3);
A1 = max(max(D*hA, abs(hA)), 16/100);
A2 = max(max(D*hB, abs(hB)), 16/100);
A3 = max(max(D*hC, abs(hC)), 16/100);
Omega = A1 * A2 * A3;
logBterm = 1 + log(Bcoeff);
logDterm = 1 + log(D);
llow = -C1 * logDterm * logBterm * Omega;

\\ Upper bound log|Lambda2| < log(2) + 4 log B - 13 log(B+3)
ulog = log(2) + 4*log(B0) - 13*log(B0 + 3);
gap_ulog_minus_llow = ulog - llow;
\\ Need gap < 0 for a raw-Matveev cutoff at this B0.
raw_matveev_kills_at_B0 = gap_ulog_minus_llow < 0;

ver = version();
pari_major = ver[1];
pari_minor = ver[2];
pari_patch = ver[3];

A1_milli = floor(A1 * 1000);
A2_milli = floor(A2 * 1000);
A3_milli = floor(A3 * 1000);
ulog_milli = floor(ulog * 1000);
llow_milli = floor(llow / 10^6);

print("B0=", B0);
print("gap=", gap);
print("precision=", prec);
print("pari_version=", pari_major, ".", pari_minor, ".", pari_patch);
print("C1_floor=", C1_floor);
print("thirty_pow=", thirty_pow);
print("raw_matveev_kills_at_B0=", raw_matveev_kills_at_B0);
print("TRACE=[", n, ",", D, ",", b1, ",", b2, ",", b3, ",", Bcoeff, ",", B0, ",", prec, ",", 14, ",", 10, ",", 30, ",", n+3, ",", thirty_pow, ",", C1_floor, ",", pari_major, ",", pari_minor, ",", pari_patch, ",", A1_milli, ",", A2_milli, ",", A3_milli, ",", ulog_milli, ",", llow_milli, "]");

js = Str("{\"B0\":", B0, ",\"gap\":", gap, ",\"theorem\":\"Matveev explicit\",\"precision\":", prec, ",\"pari_version\":\"", pari_major, ".", pari_minor, ".", pari_patch, "\",\"linear_form\":\"4*log(A/B) - 13*log((B+3)/B)\",\"n_logs\":", n, ",\"field_degree_D\":", D, ",\"coefficients\":[", b1, ",", b2, ",", b3, "],\"B0_role\":\"Lean baker_B0 census cutoff (25 chunks). Raw Matveev 2000 Thm 1.4 does not by itself force B<=1e6.\",\"raw_matveev_kills_at_B0\":false,\"bounds\":{\"C1_floor\":", C1_floor, ",\"thirty_pow_n_plus_3\":", thirty_pow, ",\"A1_milli\":", A1_milli, ",\"A2_milli\":", A2_milli, ",\"A3_milli\":", A3_milli, ",\"ulog_milli\":", ulog_milli, ",\"llow_milli\":", llow_milli, "},\"trace\":[", n, ",", D, ",", b1, ",", b2, ",", b3, ",", Bcoeff, ",", B0, ",", prec, ",", 14, ",", 10, ",", 30, ",", n+3, ",", thirty_pow, ",", C1_floor, ",", pari_major, ",", pari_minor, ",", pari_patch, ",", A1_milli, ",", A2_milli, ",", A3_milli, ",", ulog_milli, ",", llow_milli, "]}");
system("rm -f scripts/baker_B0_certificate.json baker_B0_certificate.json");
f1 = fileopen("scripts/baker_B0_certificate.json", "w");
filewrite(f1, js);
fileclose(f1);
f2 = fileopen("baker_B0_certificate.json", "w");
filewrite(f2, js);
fileclose(f2);
print("wrote scripts/baker_B0_certificate.json");
print("wrote baker_B0_certificate.json");
quit
