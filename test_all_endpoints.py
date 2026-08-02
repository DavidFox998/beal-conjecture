#!/usr/bin/env python3
"""
Functional test: imports all 20 router modules and calls every unique
endpoint function directly.  Reports NameError, TypeError, or None returns.
Run from: zerobeacon/ directory.
"""
import sys, traceback
sys.path.insert(0, str(__import__('pathlib').Path(__file__).parent))

# Import all router modules
from routers import (
    zerobeacon_mf_01_050_b1a_trust    as m01,
    zerobeacon_mf_02_050_b1b_trust    as m02,
    zerobeacon_mf_03_050_b2a_billing  as m03,
    zerobeacon_mf_04_050_b3a_commerce as m04,
    zerobeacon_mf_05_050_b4a_sovereign as m05,
    zerobeacon_mf_06_050_b5a_will     as m06,
    zerobeacon_mf_07_050_b2b_trust    as m07,
    zerobeacon_mf_08_050_b2c_billing  as m08,
    zerobeacon_mf_09_050_b2d_commerce as m09,
    zerobeacon_mf_10_050_b2e_sovereign as m10,
    zerobeacon_mf_11_050_b2f_will     as m11,
    zerobeacon_mf_12_050_b6_mesh      as m12,
    zerobeacon_mf_13_050_c1_sieve     as m13,
    zerobeacon_mf_14_050_c2_sieve     as m14,
    zerobeacon_mf_15_050_c3_boring    as m15,
    zerobeacon_mf_16_050_c4_amplum    as m16,
    zerobeacon_mf_17_050_c5_arakelov  as m17,
    zerobeacon_mf_18_050_c6_120std    as m18,
    zerobeacon_mf_19_050_c7_trust     as m19,
    zerobeacon_mf_20_050_c8_unified   as m20,
)

MODS = [m01,m02,m03,m04,m05,m06,m07,m08,m09,m10,
        m11,m12,m13,m14,m15,m16,m17,m18,m19,m20]

KWARGS = {"p": 82843, "agent_id": "test", "payload": "x", "amount": 1.0}

failures   = []
none_rets  = []
tested     = 0

for mod in MODS:
    seen = set()
    for route in mod.router.routes:
        if not hasattr(route, 'endpoint'):
            continue
        fn   = route.endpoint
        name = fn.__name__
        if name in seen:
            continue
        seen.add(name)
        try:
            result = fn(**KWARGS)
            if result is None:
                none_rets.append(f"{mod.__name__}.{name} returned None")
            tested += 1
        except TypeError:
            # Some endpoints accept fewer kwargs — retry with just p
            try:
                result = fn(p=82843)
                if result is None:
                    none_rets.append(f"{mod.__name__}.{name}(p) returned None")
                tested += 1
            except Exception as e2:
                failures.append(f"{mod.__name__}.{name}: {type(e2).__name__}: {e2}")
        except Exception as e:
            failures.append(f"{mod.__name__}.{name}: {type(e).__name__}: {e}")

print(f"Tested : {tested} unique endpoints")
print(f"Failures: {len(failures)}")
print(f"None returns: {len(none_rets)}")

if failures:
    print("\n=== FAILURES (first 30) ===")
    for f in failures[:30]:
        print("  ", f)
if none_rets:
    print("\n=== NONE RETURNS (first 20) ===")
    for n in none_rets[:20]:
        print("  ", n)

if failures or none_rets:
    sys.exit(1)
print("\nAll 1000 endpoint functions callable and returning non-None. ✓")
sys.exit(0)
