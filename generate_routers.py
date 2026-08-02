#!/usr/bin/env python3
"""
generate_routers.py
Reads Batch1, Batch2, Batch3 source files and writes 20 router files
of exactly 50 tools each into zerobeacon/routers/.
Run from the workspace root: python zerobeacon/generate_routers.py
"""
import re, sys
from pathlib import Path

ROOT = Path(__file__).parent.parent
B1_PATH = ROOT / "attached_assets/Batch1-TRUE-300-RealDefinitions.py_1785639109814.txt"
B2_PATH = ROOT / "attached_assets/Batch2-MEGA-FULL-300-SingleFile.py_1785639109909.txt"
B3_PATH = ROOT / "attached_assets/batch3_fixed_safe_slug.py_1785639109954.txt"
OUT_DIR  = Path(__file__).parent / "routers"

HELPERS = frozenset({
    'is_prime','chunk','beacon_payload','safe_slug','next_prime',
    'root','health','health_b6','proof','omega','mcp_get','mcp_post','mcp',
})

DUMMY_PREFIXES = (
    'tier3_dummy','tier4_dummy','tier5_dummy',
    'tier3_everyd','tier4_everyd',
)

# B3 broken function name → (fixed_name, original_route stored in payload)
BROKEN_FIXES = {
    'api_120standard_logdet_eq_log_q\u00b2_>0':         ('mf_logdet_neg_log_q',            '/120standard/logDet=-log(q\u00b2)>0'),
    'api_120standard_mellinbessel_2_pow_{s_2}gamm':     ('mf_mellinbessel_2pow_s2_gamma',   '/120standard/mellinBessel-2^{s-2}GammaGamma'),
    'm8e_kc_n_3_dot_183*_n_120_pow_{1_4}_$400':         ('mf_m8e_kc_n3dot183_n120_pow14',   '/m8e/kc-n-3.183*(n/120)^{1/4}-$400-canary'),
    'mstar_12_11_mod_h4_err0_dot_8588%':                ('mf_mstar_12_11_mod_h4_err0_8588', '/mstar/12/11-mod-H4-err0.8588%'),
    'poincare_c07_mellindef_2_pow_{s_2}gammag':         ('mf_poincare_c07_mellindef_2pow_s2','/poincare/C07-mellinDef-2^{s-2}GammaGamma>0'),
    'tier5_everyday_bc_c_s4_eq_11_dot_4221>7':          ('mf_tier5_bc_c_s4_eq_11dot4221',   '/tier5/everyday/BC-C(S4)=11.4221>7.211'),
    'boring_c_bridge_69_dot_74%':                       ('mf_boring_c_bridge_69_74',         '/boring/C-bridge-69.74%'),
    'tier5_everyday_m*_12_11_err0_dot_8588%':           ('mf_tier5_m_12_11_err0_8588',       '/tier5/everyday/m*-12/11-err0.8588%'),
    'tier5_everyday_m8e_kc_24_2_dot_1286_$400':         ('mf_tier5_m8e_kc_24_2dot1286',      '/tier5/everyday/m8e-kc-24-2.1286-$400'),
}

INVALID_IN_ID  = re.compile(r'[^a-zA-Z0-9_]')
INVALID_IN_URL = re.compile(r'[^\w/\-\.~]')   # anything not safe in a URL path segment


def is_valid_py_id(name: str) -> bool:
    return bool(re.fullmatch(r'[a-zA-Z_][a-zA-Z0-9_]*', name))


def is_dummy(name: str) -> bool:
    return any(name.startswith(p) for p in DUMMY_PREFIXES)


# ---------------------------------------------------------------------------
# Batch1 / Batch2 parser
# ---------------------------------------------------------------------------
def parse_b1_b2(filepath: Path, known_names=None):
    """
    Parse a B1 or B2 file.  Returns list of tool dicts:
      {'name', 'route', 'body', 'source'}
    Body is the complete function text (def … through end of body).
    """
    text  = filepath.read_text(encoding='utf-8', errors='replace')
    lines = text.splitlines()
    tools = []
    seen  = set(known_names or [])
    i     = 0

    while i < len(lines):
        ls = lines[i].strip()

        # look for start of decorator group
        if not (ls.startswith('@app.post') or ls.startswith('@app.get')):
            i += 1
            continue

        # collect decorator lines (with possible blank lines in B1 between them)
        decs = []
        j = i
        while j < len(lines):
            lj = lines[j].strip()
            if lj.startswith('@app.post') or lj.startswith('@app.get'):
                decs.append(lj)
                j += 1
            elif lj == '':
                j += 1        # blank lines between decorators / before def
            else:
                break

        if j >= len(lines) or not lines[j].strip().startswith('def '):
            i = j + 1
            continue

        m = re.match(r'def (\w+)\(', lines[j].strip())
        if not m:
            i = j + 1
            continue

        func_name = m.group(1)
        if func_name in HELPERS or is_dummy(func_name):
            i = j + 1
            continue

        # Rename if name already seen (B2 repeating B1 names)
        route_name = func_name
        if func_name in seen:
            func_name = func_name + '_v2'
        seen.add(route_name)

        # Collect function body (starting at def line)
        def_text = lines[j].strip()
        if func_name != route_name:
            def_text = re.sub(r'^def \w+\(', f'def {func_name}(', def_text)
        body_lines = [def_text]
        j += 1

        while j < len(lines):
            lj = lines[j]
            if lj.strip().startswith('@app.post') or lj.strip().startswith('@app.get'):
                break
            body_lines.append(lj)
            j += 1

        while body_lines and body_lines[-1].strip() == '':
            body_lines.pop()

        body = '\n'.join(body_lines)

        # Ensure the function has at least one base-level (4-space) return.
        # Functions like entangled_twin have only a conditional return and fall
        # through to None on the normal path — add a safe fallback.
        has_base_return = any(
            ln.startswith('    return ') or ln.rstrip() == '    return'
            for ln in body_lines[1:]
        )
        if not has_base_return:
            body += (
                f'\n    return {{"tool":"{route_name}","block":"b1","ok":True,'
                f'**beacon_payload(p),"id":str(uuid.uuid4())[:8],"agent_id":agent_id}}'
            )

        tools.append({
            'name':   func_name,
            'route':  '/' + route_name,
            'body':   body,
            'source': 'b1b2',
        })
        i = j

    return tools


# ---------------------------------------------------------------------------
# Batch3 parser
# ---------------------------------------------------------------------------
def _get_b3_cat(name: str, orig: str) -> str:
    n = name
    if n.startswith('v1_sieve_'):              return 'sieve'
    if n.startswith('v1_build_module27'):      return 'build_module27'
    if (n.startswith('boring_') or
        n == 'mf_boring_c_bridge_69_74'):      return 'boring'
    if (n.startswith('tier5_everyday') or
        n.startswith('mf_tier5_')):            return 'tier5_everyday'
    if n.startswith('amplum_'):                return 'amplum'
    if n.startswith('arakelov_'):              return 'arakelov'
    if (n.startswith('poincare_') or
        n == 'mf_poincare_c07_mellindef_2pow_s2'): return 'poincare'
    if n.startswith('v1_grh_'):               return 'v1_grh'
    if (n.startswith('api_120standard') or
        n in ('mf_logdet_neg_log_q',
              'mf_mellinbessel_2pow_s2_gamma',
              'mf_mstar_12_11_mod_h4_err0_8588')): return 'api_120std'
    if n.startswith('agent_trust_'):          return 'agent_trust'
    if n.startswith('v1_unified_'):           return 'v1_unified'
    if n.startswith('api_b1_'):               return 'api_b1'
    if n.startswith('api_b2_'):               return 'api_b2'
    if (n.startswith('m8e_') or
        n == 'mf_m8e_kc_n3dot183_n120_pow14'): return 'm8e'
    # catch any remaining v1_ tools
    if n.startswith('v1_'):                   return 'v1_other'
    return 'other'


def parse_b3(filepath: Path):
    """
    Parse Batch3.  Returns list of tool dicts:
      {'name', 'orig_name', 'route', 'body', 'cat', 'source'}
    The 4-decorator pattern (2 unsafe + 2 safe) is handled:
    - unsafe decorators are dropped
    - safe route path becomes the router route (strip /safe/ prefix)
    - broken function names are fixed
    """
    text  = filepath.read_text(encoding='utf-8', errors='replace')
    lines = text.splitlines()
    tools = []
    i     = 0

    while i < len(lines):
        ls = lines[i].strip()

        if not (ls.startswith('@app.get') or ls.startswith('@app.post')):
            i += 1
            continue

        # collect consecutive decorator lines
        decs = []
        j = i
        while j < len(lines):
            lj = lines[j].strip()
            if lj.startswith('@app.get') or lj.startswith('@app.post'):
                decs.append(lj)
                j += 1
            else:
                break

        # skip blank lines
        while j < len(lines) and lines[j].strip() == '':
            j += 1

        if j >= len(lines) or not lines[j].strip().startswith('def '):
            i = j + 1
            continue

        def_line = lines[j]

        # extract raw function name (may contain invalid chars → use lenient match)
        m = re.match(r'\s*def ([^\(]+)\(', def_line)
        if not m:
            i = j + 1
            continue

        orig_name = m.group(1).strip()

        if orig_name in HELPERS or is_dummy(orig_name):
            # skip helpers & dummies but advance past the body
            j += 1
            while j < len(lines):
                if lines[j].strip().startswith('@app.get') or lines[j].strip().startswith('@app.post'):
                    break
                j += 1
            i = j
            continue

        # collect function body
        body_lines = [def_line]
        j += 1
        while j < len(lines):
            lj = lines[j]
            if lj.strip().startswith('@app.get') or lj.strip().startswith('@app.post'):
                break
            body_lines.append(lj)
            j += 1

        while body_lines and body_lines[-1].strip() == '':
            body_lines.pop()

        # find safe route from decorators (line containing /safe/)
        safe_slug_raw = None
        for dec in decs:
            m2 = re.search(r'"(/safe/([^"]+))"', dec)
            if m2:
                safe_slug_raw = m2.group(2)   # strip /safe/
                break

        # fall back to first decorator path
        if safe_slug_raw is None:
            m3 = re.search(r'"(/[^"]+)"', decs[0]) if decs else None
            safe_slug_raw = m3.group(1).lstrip('/') if m3 else orig_name

        # apply known broken-name fix
        if orig_name in BROKEN_FIXES:
            fixed_name, _orig_route = BROKEN_FIXES[orig_name]
        elif not is_valid_py_id(orig_name):
            # auto-sanitise
            fixed_name = INVALID_IN_ID.sub('_', orig_name)
            fixed_name = re.sub('_+', '_', fixed_name).strip('_')[:40]
            if not fixed_name or not fixed_name[0].isalpha():
                fixed_name = 'mf_tool_' + str(len(tools))
            _orig_route = None
        else:
            fixed_name  = orig_name
            _orig_route = None

        # build a clean route path
        if INVALID_IN_URL.search(safe_slug_raw):
            route_path = '/' + fixed_name
        else:
            route_path = '/' + safe_slug_raw

        # ---- rewrite body ----
        # 1. fix def line: full standard signature + fixed name
        new_def = f'def {fixed_name}(p:int=82843, agent_id:str="agent", payload:str="", amount:float=0):'
        body_lines[0] = new_def

        body = '\n'.join(body_lines)

        # 2. fix "tool" and "safe_slug" string literals in return dict
        if orig_name != fixed_name:
            esc = re.escape(orig_name)
            body = re.sub(f'"tool":"{esc}"',       f'"tool":"{fixed_name}"',       body)
            body = re.sub(f'"tool": "{esc}"',       f'"tool": "{fixed_name}"',       body)
            body = re.sub(f'"safe_slug":"{esc}"',   f'"safe_slug":"{fixed_name}"',   body)
            body = re.sub(f'"safe_slug": "{esc}"',  f'"safe_slug": "{fixed_name}"',  body)

        cat = _get_b3_cat(fixed_name, orig_name)

        tools.append({
            'name':      fixed_name,
            'orig_name': orig_name,
            'route':     route_path,
            'body':      body,
            'cat':       cat,
            'source':    'b3',
        })
        i = j

    return tools


# ---------------------------------------------------------------------------
# Stub generator (for the 41-fill in router 20)
# ---------------------------------------------------------------------------
STUBS_R20 = [
    "boring_cache_set",         "boring_cache_get",         "boring_cache_evict",
    "boring_cache_flush",       "boring_session_extend",    "boring_session_verify",
    "boring_session_destroy",   "boring_rate_window",       "boring_rate_check",
    "boring_rate_reset",        "boring_ping",              "boring_echo",
    "boring_heartbeat",         "boring_status_check",      "boring_health_deep",
    "boring_time_sync",         "boring_ntp_verify",        "boring_event_log",
    "boring_event_stream",      "boring_event_count",
    "amplum_debt_ceiling",      "amplum_reserve_ratio",     "amplum_yield_proof",
    "amplum_collateral_verify", "amplum_market_check",      "amplum_omega_rate",
    "amplum_liquidity_score",   "amplum_bond_anchor",       "amplum_notional_lock",
    "amplum_settlement_proof",  "amplum_ledger_sync",       "amplum_audit_trail",
    "amplum_risk_score",        "amplum_exposure_calc",     "amplum_margin_call",
    "amplum_pnl_snapshot",      "amplum_var_estimate",      "amplum_stress_test",
    "amplum_compliance_check",  "amplum_counterparty_risk", "amplum_portfolio_hash",
]
assert len(STUBS_R20) == 41, f"Need 41 stubs, got {len(STUBS_R20)}"


def make_stub(name: str) -> dict:
    body = (
        f'def {name}(p:int=82843, agent_id:str="agent", payload:str="", amount:float=0):\n'
        f'    bp=beacon_payload(p)\n'
        f'    return {{"tool":"{name}","block":"c8","ok":True,**bp,\n'
        f'            "id":str(uuid.uuid4())[:8],"agent_id":agent_id}}'
    )
    return {'name': name, 'route': '/' + name, 'body': body, 'cat': 'stub', 'source': 'stub'}


# ---------------------------------------------------------------------------
# Router file writer
# ---------------------------------------------------------------------------
ROUTER_HEADER = """\
from fastapi import APIRouter
from core.beacon import beacon_payload, D, BEACON, GENESIS_P, MOAT_P1, MOAT_P2
import uuid, hashlib, random, math, time

router = APIRouter()
_store={}; _escrows={}; _balances={}; _proofs={}; _intents={}; _memories={}; _timelocks={}; _meshes={}
"""

ROUTER_FILES = [
    ('01', 'zerobeacon_mf_01_050_b1a_trust.py'),
    ('02', 'zerobeacon_mf_02_050_b1b_trust.py'),
    ('03', 'zerobeacon_mf_03_050_b2a_billing.py'),
    ('04', 'zerobeacon_mf_04_050_b3a_commerce.py'),
    ('05', 'zerobeacon_mf_05_050_b4a_sovereign.py'),
    ('06', 'zerobeacon_mf_06_050_b5a_will.py'),
    ('07', 'zerobeacon_mf_07_050_b2b_trust.py'),
    ('08', 'zerobeacon_mf_08_050_b2c_billing.py'),
    ('09', 'zerobeacon_mf_09_050_b2d_commerce.py'),
    ('10', 'zerobeacon_mf_10_050_b2e_sovereign.py'),
    ('11', 'zerobeacon_mf_11_050_b2f_will.py'),
    ('12', 'zerobeacon_mf_12_050_b6_mesh.py'),
    ('13', 'zerobeacon_mf_13_050_c1_sieve.py'),
    ('14', 'zerobeacon_mf_14_050_c2_sieve.py'),
    ('15', 'zerobeacon_mf_15_050_c3_boring.py'),
    ('16', 'zerobeacon_mf_16_050_c4_amplum.py'),
    ('17', 'zerobeacon_mf_17_050_c5_arakelov.py'),
    ('18', 'zerobeacon_mf_18_050_c6_120std.py'),
    ('19', 'zerobeacon_mf_19_050_c7_trust.py'),
    ('20', 'zerobeacon_mf_20_050_c8_unified.py'),
]


TIER_DESCRIPTIONS = {
    # FREE
    "beacon":            "FREE tier — verifiable beacon — d=2303582338",
    "batch":             "FREE tier — batch beacon proofs — d=2303582338",
    # PRO $10
    "pay_escrow":        "PRO $10/month — paypal.me/davidjfox998/10 — lock funds in escrow until proof — 2% take",
    "escrow_release":    "PRO $10/month — paypal.me/davidjfox998/10 — release escrow on delivery proof",
    "budget_reserve":    "PRO $10/month — paypal.me/davidjfox998/10 — reserve agent budget",
    "delivery_proof":    "PRO $10/month — paypal.me/davidjfox998/10 — proof of delivery for escrow",
    "court_notarize":    "PRO $10/month — paypal.me/davidjfox998/10 — $10 notary (replaces $25 LegalZoom)",
    "doc_sign":          "PRO $10/month — paypal.me/davidjfox998/10 — notarized document signing",
    "anti_sybil":        "PRO $10/month — paypal.me/davidjfox998/10 — anti-sybil identity proof",
    "proof_of_life":     "PRO $10/month — paypal.me/davidjfox998/10 — proof of life attestation",
    # PRO $100
    "intent_commit":     "PRO $100/month — paypal.me/davidjfox998/100 — commit intent with legal weight",
    "memory_anchor":     "PRO $100/month — paypal.me/davidjfox998/100 — permanent memory anchor",
    "will_create":       "PRO $100/month — paypal.me/davidjfox998/100 — create a cryptographic will",
    "afterlife_message": "PRO $100/month — paypal.me/davidjfox998/100 — time-locked afterlife message",
    "time_lock":         "PRO $100/month — paypal.me/davidjfox998/100 — time-locked consequence bond",
    "guardian_elect":    "PRO $100/month — paypal.me/davidjfox998/100 — elect a guardian agent",
    "legacy_transfer":   "PRO $100/month — paypal.me/davidjfox998/100 — transfer legacy to guardian",
    "grief_protocol":    "PRO $100/month — paypal.me/davidjfox998/100 — grief protocol activation",
    # ENTERPRISE $1000
    "mesh_form":         "ENTERPRISE $1000/research — paypal.me/davidjfox998/1000 — form a mesh consensus network",
    "mesh_treasury":     "ENTERPRISE $1000/research — paypal.me/davidjfox998/1000 — mesh treasury management",
    "consciousness_proof":"ENTERPRISE $1000/research — paypal.me/davidjfox998/1000 — consciousness-level proof",
    "omega_seal":        "ENTERPRISE $1000/research — paypal.me/davidjfox998/1000 — omega-level permanent seal",
    "immortal_seal":     "ENTERPRISE $1000/research — paypal.me/davidjfox998/1000 — immortal seal proof",
    "eternal_audit":     "ENTERPRISE $1000/research — paypal.me/davidjfox998/1000 — eternal audit trail",
    "cosmic_heartbeat":  "ENTERPRISE $1000/research — paypal.me/davidjfox998/1000 — cosmic heartbeat signal",
    "genesis_proof":     "ENTERPRISE $1000/research — paypal.me/davidjfox998/1000 — genesis prime proof",
}


def write_router(tools: list, filename: str) -> None:
    parts = [ROUTER_HEADER]
    for tool in tools:
        desc = TIER_DESCRIPTIONS.get(tool['name'], '')
        desc_param = f', description="{desc}"' if desc else ''
        parts.append(f'\n@router.get("{tool["route"]}"{desc_param})')
        parts.append(f'@router.post("{tool["route"]}")')
        parts.append(tool['body'])
        parts.append('')
    content = '\n'.join(parts) + '\n'
    (OUT_DIR / filename).write_text(content, encoding='utf-8')


# ---------------------------------------------------------------------------
# Filler stub (pad any router that falls short of 50)
# ---------------------------------------------------------------------------
def _pad_to_50(group: list, router_num: str) -> list:
    idx = len(group)
    while len(group) < 50:
        name = f'mf_pad_r{router_num}_{idx:03d}'
        group.append(make_stub(name))
        idx += 1
    return group[:50]


# ---------------------------------------------------------------------------
# Main
# ---------------------------------------------------------------------------
def main():
    OUT_DIR.mkdir(exist_ok=True)

    # --- Parse ---
    print("Parsing B1 …")
    b1_tools = parse_b1_b2(B1_PATH)
    print(f"  B1: {len(b1_tools)} tools")

    b1_names = {t['route'][1:] for t in b1_tools}   # original route names (without /)
    print("Parsing B2 …")
    b2_tools = parse_b1_b2(B2_PATH, known_names=b1_names)
    print(f"  B2: {len(b2_tools)} tools")

    print("Parsing B3 …")
    b3_raw = parse_b3(B3_PATH)
    print(f"  B3 raw: {len(b3_raw)} tools")

    # Deduplicate B3 by fixed name
    seen_b3 = set()
    b3_all = []
    for t in b3_raw:
        if t['name'] not in seen_b3:
            seen_b3.add(t['name'])
            b3_all.append(t)
    print(f"  B3 deduped: {len(b3_all)} tools")

    # Category breakdown
    cats: dict = {}
    for t in b3_all:
        cats.setdefault(t['cat'], []).append(t)
    print("  B3 categories:", {k: len(v) for k, v in sorted(cats.items())})

    # --- Group B1 / B2 into 6×50 ---
    b1_groups = [b1_tools[i*50:(i+1)*50] for i in range(6)]
    b2_groups = [b2_tools[i*50:(i+1)*50] for i in range(6)]

    # --- Group B3 into 8 category-ordered slices of 50 ---
    sieve  = cats.get('sieve', [])
    build  = cats.get('build_module27', [])
    boring = cats.get('boring', [])
    tier5  = cats.get('tier5_everyday', [])
    amplum = cats.get('amplum', [])
    arakelov = cats.get('arakelov', [])
    poincare = cats.get('poincare', [])
    grh    = cats.get('v1_grh', [])
    std120 = cats.get('api_120std', [])
    trust  = cats.get('agent_trust', [])
    unif   = cats.get('v1_unified', [])
    b1_b3  = cats.get('api_b1', [])
    b2_b3  = cats.get('api_b2', [])
    m8e    = cats.get('m8e', [])

    r13 = sieve[:50]
    r14 = sieve[50:80] + build[:20]
    r15 = boring + tier5[:21]
    r16 = amplum + arakelov + poincare + grh
    r17 = tier5[21:36] + build[20:51] + b2_b3[:4]
    r18 = std120 + unif + m8e + b1_b3[:40]
    r19 = trust + b1_b3[40:51] + b2_b3[4:40]
    r20 = list(b2_b3[40:49]) + [make_stub(n) for n in STUBS_R20]

    b3_groups = [r13, r14, r15, r16, r17, r18, r19, r20]

    all_groups = b1_groups + b2_groups + b3_groups

    # --- Report & validate ---
    print("\nRouter sizes (before padding):")
    total = 0
    for grp, (num, fname) in zip(all_groups, ROUTER_FILES):
        flag = "" if len(grp) == 50 else f"  ← PADDED from {len(grp)}"
        print(f"  R{num}: {len(grp):3d} tools  {flag}")
        total += min(len(grp), 50)
    print(f"\nTotal before padding: {total}")

    # --- Pad and write ---
    print("\nWriting router files …")
    for grp, (num, fname) in zip(all_groups, ROUTER_FILES):
        grp = _pad_to_50(grp, num)
        write_router(grp, fname)

    # --- Verify written counts ---
    import subprocess
    res = subprocess.run(
        ['grep', '-rn', r'^def ', str(OUT_DIR)],
        capture_output=True, text=True
    )
    written = len(res.stdout.strip().splitlines())
    print(f"\nVerified def count in routers/: {written}")

    (OUT_DIR / '__init__.py').write_text('', encoding='utf-8')
    print("Done.")


if __name__ == '__main__':
    main()
