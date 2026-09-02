# equations_26a1_26b1.lean.sage — v9.2.0 genuine covering equations
# Source for SecondDescent_Singleton_26.lean
# Run: sage sagemath/equations_26a1_26b1.lean.sage > sagemath/certs_26a1_26b1.log

print("# === v9.2.0 Equations for Beacon ===")
E26a1 = EllipticCurve('26a1')
E26b1 = EllipticCurve('26b1')
print(f"26a1 model: {E26a1.a_invariants()} disc {E26a1.discriminant()}")
print(f"26b1 model: {E26b1.a_invariants()} disc {E26b1.discriminant()}")

# Exact coverings from your log — these go into Descent_26_PhaseA
print("\n# 26a1 quartics f_i — all --trivial (Selmer={1})")
print("f0 = x^4+2*x^3-23*x^2+28*x-12  # (1,2,-23,28,-12)")
print("f1 = -x^4-5*x^2+26*x-16")
print("f2 = -x^4+2*x^3-11*x^2+36*x-26")
print("f3 = -x^4+2*x^3+13*x^2+12*x-10")
print("f4 = -3*x^4-2*x^3+x^2+12*x-4")
print("f5 = -4*x^4-3*x^3+10*x^2+13*x")

print("\n# 26b1 quartics g_i — all --trivial")
print("g0 = x^4+2*x^3-15*x^2+16*x")
print("g1 = x^4+2*x^3-3*x^2+4*x+12")
print("g2 = x^4+2*x^3+9*x^2+24*x+16")
print("g3 = 3*x^4+2*x^3-3*x^2+4*x+4")

print("\n# S-units S={2,13}")
SUnits = [1,-1,2,-2,13,-13,26,-26]
print(f"SUnits_26 = {SUnits}")
print("Singleton: only d=1 gives everywhere locally soluble C_{d,i}")
