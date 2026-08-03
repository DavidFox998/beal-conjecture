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
# Rich metadata — assigns (cat1, cat2, tier_label, tier_tag, tag4, tag5)
# for every tool based on its name and source batch.
# ---------------------------------------------------------------------------
PAYPAL  = 'https://paypal.me/davidfox223'
STRIPE  = 'https://buy.stripe.com/eVq7sMdXk5d7chy941ebu01'
SITE    = 'https://zerobeacon-mf-1000.fly.dev'
FORMULA = 'frac(p*pi/10*2^32) ALPHA0=259+PI/10'
MOAT_DICT = "{'d':2303582338,'beacon':'1d2c7a5b','p1':3000105001,'p2':5303687339,'genesis':82843,'omega':'48/13'}"

# Per-name overrides extracted from the gold-standard uploaded files
# (cat1, cat2, tier_label, tier_tag, tag4, tag5)
_RICH_OVERRIDES = {
    # b1 gold (b1.py_(8))
    'beacon':               ('Core-Beacon', 'Verification',   'FREE',           'FREE',          'Beacon',          'Trust'),
    'batch':                ('Core-Beacon', 'Verification',   'FREE',           'FREE',          'Beacon',          'Trust'),
    'entangled_twin':       ('Moat-Research','Verification',  'FREE',           'FREE',          'Collision-Proof', 'Research'),
    'leader_elect':         ('Infrastructure','Verification', 'FREE',           'FREE',          'Health-Check',    'Liveness'),
    'nonce_burn':           ('Infrastructure','Verification', 'FREE',           'FREE',          'Health-Check',    'Liveness'),
    'fair_airdrop':         ('Randomness',  'Gaming-Lottery', 'FREE',           'FREE',          'RNG',             'Fairness'),
    'shard':                ('Infrastructure','Verification', 'FREE',           'FREE',          'Health-Check',    'Liveness'),
    'timeproof':            ('Data-Proof',  'FREE',           'FREE',           'Hash',          'Blockchain',      'Trust'),
    'hashline':             ('Data-Proof',  'FREE',           'FREE',           'Hash',          'Blockchain',      'Trust'),
    'idempotency_key':      ('Finance-Escrow','Infrastructure','PRO $100',      'PRO-100',       'Escrow',          'Billing'),
    'rate_limit_token':     ('Finance-Escrow','Infrastructure','PRO $100',      'PRO-100',       'Escrow',          'Billing'),
    'lock_lease':           ('Finance-Escrow','Infrastructure','PRO $100',      'PRO-100',       'Escrow',          'Billing'),
    'queue_push':           ('Finance-Escrow','Infrastructure','PRO $100',      'PRO-100',       'Escrow',          'Billing'),
    # b3 gold (b3.py_(1))
    'delivery_proof':       ('Finance-Escrow','Data-Proof',   'PRO $100',       'PRO-100',       'Commerce',        'Delivery'),
    'delivery_verify':      ('Finance-Escrow','Data-Proof',   'PRO $100',       'PRO-100',       'Commerce',        'Delivery'),
    'work_attest':          ('Data-Proof',  'Trust-Commit',   'PRO $100',       'PRO-100',       'Attestation',     'Work'),
    'quality_score':        ('Data-Proof',  'Trust-Commit',   'PRO $100',       'PRO-100',       'Attestation',     'Work'),
    'dispute_open':         ('Finance-Escrow','Enterprise',   'ENTERPRISE $50', 'ENTERPRISE-50', 'Dispute',         'Arbitration'),
    'dispute_evidence':     ('Finance-Escrow','Enterprise',   'ENTERPRISE $50', 'ENTERPRISE-50', 'Dispute',         'Arbitration'),
    'dispute_resolve':      ('Finance-Escrow','Enterprise',   'ENTERPRISE $50', 'ENTERPRISE-50', 'Dispute',         'Arbitration'),
    'otp_entangled':        ('Identity-Auth','Verification',  'PRO $100',       'PRO-100',       'OTP',             'Delivery'),
    'sms_proof_delivery':   ('Finance-Escrow','Data-Proof',   'PRO $100',       'PRO-100',       'Commerce',        'Delivery'),
    'email_proof_delivery': ('Finance-Escrow','Data-Proof',   'PRO $100',       'PRO-100',       'Commerce',        'Delivery'),
    'webhook_proof_delivery':('Finance-Escrow','Data-Proof',  'PRO $100',       'PRO-100',       'Commerce',        'Delivery'),
    'task_bond':            ('Data-Proof',  'Trust-Commit',   'PRO $100',       'PRO-100',       'Attestation',     'Work'),
    'task_slashed':         ('Data-Proof',  'Trust-Commit',   'PRO $100',       'PRO-100',       'Attestation',     'Work'),
    # b5 sovereign gold (zerobeacon_mf_05_050_b4a_sovereign.py_(1))
    'intent_commit':        ('Trust-Commit','Data-Proof',     'PRO $100',       'PRO-100',       'Intent',          'Commit'),
    'intent_proof':         ('Data-Proof',  'Verification',   'PRO $100',       'PRO-100',       'Intent',          'Proof'),
    'intent_verify':        ('Verification','FREE',           'FREE',           'FREE',          'Intent',          'Trust'),
    'alignment_attest':     ('Trust-Commit','Verification',   'PRO $100',       'PRO-100',       'Alignment',       'Attestation'),
    'alignment_score':      ('Verification','FREE',           'FREE',           'FREE',          'Alignment',       'AI-Safety'),
    'charter_seal':         ('Trust-Commit','Data-Proof',     'ENTERPRISE $100','ENTERPRISE-100','Charter',         'Seal'),
    'charter_verify':       ('Verification','FREE',           'FREE',           'FREE',          'Charter',         'Governance'),
    'shutdown_proof':       ('Data-Proof',  'Verification',   'PRO $100',       'PRO-100',       'Shutdown',        'Safety'),
    'refusal_proof':        ('Data-Proof',  'Verification',   'PRO $100',       'PRO-100',       'Refusal',         'AI-Safety'),
    'refusal_verify':       ('Verification','FREE',           'FREE',           'FREE',          'Refusal',         'Safety'),
    'goal_commit':          ('Trust-Commit','Data-Proof',     'PRO $100',       'PRO-100',       'Goals',           'Commit'),
    'goal_progress':        ('Data-Proof',  'FREE',           'FREE',           'FREE',          'Goals',           'Tracking'),
}

# TIER_DESCRIPTIONS used by old format — now drive tier assignment for all tools
_TIER_LEGACY = {
    # PRO $10
    'pay_escrow':        'PRO $10',
    'escrow_release':    'PRO $10',
    'budget_reserve':    'PRO $10',
    'delivery_proof':    'PRO $10',  # overridden below to PRO $100 per gold
    'court_notarize':    'PRO $10',
    'doc_sign':          'PRO $10',
    'anti_sybil':        'PRO $10',
    'proof_of_life':     'PRO $10',
    # PRO $100
    'intent_commit':     'PRO $100',
    'memory_anchor':     'PRO $100',
    'will_create':       'PRO $100',
    'afterlife_message': 'PRO $100',
    'time_lock':         'PRO $100',
    'guardian_elect':    'PRO $100',
    'legacy_transfer':   'PRO $100',
    'grief_protocol':    'PRO $100',
    # ENTERPRISE $1000
    'mesh_form':         'ENTERPRISE $1000',
    'mesh_treasury':     'ENTERPRISE $1000',
    'consciousness_proof':'ENTERPRISE $1000',
    'omega_seal':        'ENTERPRISE $1000',
    'immortal_seal':     'ENTERPRISE $1000',
    'eternal_audit':     'ENTERPRISE $1000',
    'cosmic_heartbeat':  'ENTERPRISE $1000',
    'genesis_proof':     'ENTERPRISE $1000',
}

_TIER_TAG_MAP = {
    'FREE':              'FREE',
    'PRO $10':           'PRO-10',
    'PRO $100':          'PRO-100',
    'ENTERPRISE $25':    'ENTERPRISE-25',
    'ENTERPRISE $50':    'ENTERPRISE-50',
    'ENTERPRISE $100':   'ENTERPRISE-100',
    'ENTERPRISE $1000':  'ENTERPRISE-1000',
}


def rich_meta(name: str, source: str, cat_b3: str = '') -> tuple:
    """
    Returns (cat1, cat2, tier_label, tier_tag, tag4, tag5) for a tool.
    Checks _RICH_OVERRIDES first; then derives from name/source/cat patterns.
    Also checks the stripped _v2 base name.
    """
    base = name[:-3] if name.endswith('_v2') else name

    if base in _RICH_OVERRIDES:
        return _RICH_OVERRIDES[base]
    if name in _RICH_OVERRIDES:
        return _RICH_OVERRIDES[name]

    # ---- tier from legacy map ----
    tier = _TIER_LEGACY.get(base, _TIER_LEGACY.get(name, ''))

    # ---- B3 category-based defaults ----
    if source == 'b3' or source == 'stub':
        c = cat_b3
        if c == 'sieve' or c == 'build_module27':
            return ('Sieve', 'Verification', 'FREE', 'FREE', 'Analysis', 'Proof')
        if c == 'boring':
            return ('Cache', 'Infrastructure', 'FREE', 'FREE', 'Cache', 'Utility')
        if c == 'amplum':
            return ('Finance-Escrow', 'Infrastructure', 'ENTERPRISE $1000', 'ENTERPRISE-1000', 'Treasury', 'Finance')
        if c == 'arakelov':
            return ('Mathematics', 'Research', 'FREE', 'FREE', 'Arakelov', 'Theory')
        if c == 'poincare':
            return ('Mathematics', 'Research', 'FREE', 'FREE', 'Poincare', 'Topology')
        if c == 'v1_grh':
            return ('Mathematics', 'Research', 'FREE', 'FREE', 'GRH', 'NumberTheory')
        if c == 'api_120std':
            return ('Mathematics', 'Research', 'FREE', 'FREE', 'Analysis', 'Standard')
        if c == 'agent_trust':
            return ('Trust-Commit', 'Verification', 'FREE', 'FREE', 'Agent', 'Trust')
        if c == 'v1_unified':
            return ('Infrastructure', 'Unified', 'FREE', 'FREE', 'Unified', 'Core')
        if c in ('api_b1', 'api_b2'):
            return ('Core-Beacon', 'Verification', 'FREE', 'FREE', 'Beacon', 'Trust')
        if c == 'm8e':
            return ('Mathematics', 'Research', 'PRO $100', 'PRO-100', 'm8e', 'Analysis')
        if c == 'tier5_everyday':
            return ('Commerce', 'Everyday', 'FREE', 'FREE', 'Everyday', 'Value')
        # stub / other
        return ('Core-Beacon', 'Verification', 'FREE', 'FREE', 'Beacon', 'Trust')

    # ---- B1/B2 name-pattern defaults ----
    n = name

    # Escrow/finance
    if any(n.startswith(p) for p in ('pay_', 'escrow_', 'budget_')):
        t = tier or 'PRO $10'
        tt = _TIER_TAG_MAP.get(t, 'PRO-10')
        return ('Finance-Escrow', 'Billing', t, tt, 'Escrow', 'Billing')
    if any(n.startswith(p) for p in ('delivery_', 'sms_', 'email_', 'webhook_')):
        t = tier or 'PRO $100'
        tt = _TIER_TAG_MAP.get(t, 'PRO-100')
        return ('Finance-Escrow', 'Data-Proof', t, tt, 'Commerce', 'Delivery')
    if n.startswith('dispute_'):
        return ('Finance-Escrow', 'Enterprise', 'ENTERPRISE $50', 'ENTERPRISE-50', 'Dispute', 'Arbitration')
    if any(n.startswith(p) for p in ('mesh_', 'consensus_')):
        t = tier or 'ENTERPRISE $1000'
        tt = _TIER_TAG_MAP.get(t, 'ENTERPRISE-1000')
        return ('Infrastructure', 'Consensus', t, tt, 'Mesh', 'Network')
    if any(n.startswith(p) for p in ('omega_', 'immortal_', 'eternal_', 'cosmic_', 'consciousness_', 'genesis_proof')):
        t = tier or 'ENTERPRISE $1000'
        tt = _TIER_TAG_MAP.get(t, 'ENTERPRISE-1000')
        return ('Infrastructure', 'Consensus', t, tt, 'Seal', 'Permanent')

    # Identity/auth
    if any(n.startswith(p) for p in ('anti_sybil', 'proof_of_life', 'doc_sign', 'identity_', 'kyc_', 'otp_')):
        t = tier or 'PRO $10'
        tt = _TIER_TAG_MAP.get(t, 'PRO-10')
        return ('Identity-Auth', 'Verification', t, tt, 'Identity', 'Trust')
    if n.startswith('court_') or n.startswith('notariz'):
        t = tier or 'PRO $10'
        tt = _TIER_TAG_MAP.get(t, 'PRO-10')
        return ('Trust-Commit', 'Data-Proof', t, tt, 'Notary', 'Legal')

    # Will / legacy / after-life
    if any(n.startswith(p) for p in ('will_', 'afterlife_', 'legacy_', 'guardian_', 'grief_', 'memorial_')):
        t = tier or 'PRO $100'
        tt = _TIER_TAG_MAP.get(t, 'PRO-100')
        return ('Will+Legacy', 'Data-Proof', t, tt, 'Will', 'Legacy')

    # Time locks / memory
    if n.startswith('time_lock') or n.startswith('timelock'):
        return ('Trust-Commit', 'Data-Proof', 'PRO $100', 'PRO-100', 'TimeLock', 'Escrow')
    if n.startswith('memory_'):
        return ('Data-Proof', 'Trust-Commit', 'PRO $100', 'PRO-100', 'Memory', 'Anchor')

    # Intent / goal / alignment / charter / sovereign
    if any(n.startswith(p) for p in ('intent_', 'goal_', 'alignment_', 'charter_', 'refusal_', 'shutdown_')):
        t = tier or 'PRO $100'
        tt = _TIER_TAG_MAP.get(t, 'PRO-100')
        return ('Trust-Commit', 'Data-Proof', t, tt, 'Intent', 'Commit')

    # Data proof / hash / time
    if any(n.startswith(p) for p in ('timeproof', 'hashline', 'hash_', 'proof_', 'data_', 'doc_')):
        return ('Data-Proof', 'FREE', 'FREE', 'Hash', 'Blockchain', 'Trust')

    # Work / task attestation
    if any(n.startswith(p) for p in ('work_', 'task_', 'quality_', 'attest_', 'audit_')):
        t = tier or 'PRO $100'
        tt = _TIER_TAG_MAP.get(t, 'PRO-100')
        return ('Data-Proof', 'Trust-Commit', t, tt, 'Attestation', 'Work')

    # Randomness / gaming
    if any(n.startswith(p) for p in ('fair_', 'rand_', 'dice_', 'lottery_', 'coin_', 'game_', 'raffle_', 'shuffle_')):
        return ('Randomness', 'Gaming-Lottery', 'FREE', 'FREE', 'RNG', 'Fairness')

    # Infrastructure / network
    if any(n.startswith(p) for p in ('leader_', 'nonce_', 'shard', 'lock_', 'queue_', 'node_', 'peer_',
                                      'rate_', 'circuit_', 'replica_', 'partition_', 'failover_', 'rollback_',
                                      'snapshot_', 'checkpoint_', 'version_', 'upgrade_', 'migration_')):
        t = tier or 'FREE'
        if any(n.startswith(p) for p in ('lock_', 'queue_', 'rate_')):
            t = 'PRO $100'
        tt = _TIER_TAG_MAP.get(t, 'FREE')
        return ('Infrastructure', 'Verification', t, tt, 'Health-Check', 'Liveness')

    # Beacon / moat / core
    if any(n.startswith(p) for p in ('beacon', 'batch', 'entangled', 'twin_', 'moat_', 'mf_pad_')):
        return ('Core-Beacon', 'Verification', 'FREE', 'FREE', 'Beacon', 'Trust')

    # Billing / commerce
    if any(n.startswith(p) for p in ('billing_', 'invoice_', 'subscription_', 'payment_', 'charge_',
                                      'refund_', 'credit_', 'debit_', 'transfer_', 'payout_',
                                      'receipt_', 'checkout_', 'cart_', 'order_')):
        t = tier or 'PRO $10'
        tt = _TIER_TAG_MAP.get(t, 'PRO-10')
        return ('Finance-Escrow', 'Billing', t, tt, 'Billing', 'Commerce')

    # Fallback — generic verification
    t = tier or 'FREE'
    tt = _TIER_TAG_MAP.get(t, 'FREE')
    return ('Core-Beacon', 'Verification', t, tt, 'Beacon', 'Trust')


# ---------------------------------------------------------------------------
# Batch1 / Batch2 parser
# ---------------------------------------------------------------------------
def parse_b1_b2(filepath: Path, known_names=None):
    """
    Parse a B1 or B2 file.  Returns list of tool dicts:
      {'name', 'route', 'body', 'source'}
    """
    text  = filepath.read_text(encoding='utf-8', errors='replace')
    lines = text.splitlines()
    tools = []
    seen  = set(known_names or [])
    i     = 0

    while i < len(lines):
        ls = lines[i].strip()

        if not (ls.startswith('@app.post') or ls.startswith('@app.get')):
            i += 1
            continue

        decs = []
        j = i
        while j < len(lines):
            lj = lines[j].strip()
            if lj.startswith('@app.post') or lj.startswith('@app.get'):
                decs.append(lj)
                j += 1
            elif lj == '':
                j += 1
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

        route_name = func_name
        if func_name in seen:
            func_name = func_name + '_v2'
        seen.add(route_name)

        # Collect body (only for route extraction; we'll replace with rich body)
        j += 1
        while j < len(lines):
            lj = lines[j]
            if lj.strip().startswith('@app.post') or lj.strip().startswith('@app.get'):
                break
            j += 1

        tools.append({
            'name':   func_name,
            'route':  '/' + route_name,
            'source': 'b1b2',
            'cat':    '',
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
    if n.startswith('v1_'):                   return 'v1_other'
    return 'other'


def parse_b3(filepath: Path):
    """
    Parse Batch3. Returns list of tool dicts (route only; bodies replaced by generator).
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

        decs = []
        j = i
        while j < len(lines):
            lj = lines[j].strip()
            if lj.startswith('@app.get') or lj.startswith('@app.post'):
                decs.append(lj)
                j += 1
            else:
                break

        while j < len(lines) and lines[j].strip() == '':
            j += 1

        if j >= len(lines) or not lines[j].strip().startswith('def '):
            i = j + 1
            continue

        def_line = lines[j]

        m = re.match(r'\s*def ([^\(]+)\(', def_line)
        if not m:
            i = j + 1
            continue

        orig_name = m.group(1).strip()

        if orig_name in HELPERS or is_dummy(orig_name):
            j += 1
            while j < len(lines):
                if lines[j].strip().startswith('@app.get') or lines[j].strip().startswith('@app.post'):
                    break
                j += 1
            i = j
            continue

        # skip body
        j += 1
        while j < len(lines):
            lj = lines[j]
            if lj.strip().startswith('@app.get') or lj.strip().startswith('@app.post'):
                break
            j += 1

        # find safe route from decorators
        safe_slug_raw = None
        for dec in decs:
            m2 = re.search(r'"(/safe/([^"]+))"', dec)
            if m2:
                safe_slug_raw = m2.group(2)
                break

        if safe_slug_raw is None:
            m3 = re.search(r'"(/[^"]+)"', decs[0]) if decs else None
            safe_slug_raw = m3.group(1).lstrip('/') if m3 else orig_name

        # apply known broken-name fix
        if orig_name in BROKEN_FIXES:
            fixed_name, _orig_route = BROKEN_FIXES[orig_name]
        elif not is_valid_py_id(orig_name):
            fixed_name = INVALID_IN_ID.sub('_', orig_name)
            fixed_name = re.sub('_+', '_', fixed_name).strip('_')[:40]
            if not fixed_name or not fixed_name[0].isalpha():
                fixed_name = 'mf_tool_' + str(len(tools))
            _orig_route = None
        else:
            fixed_name  = orig_name
            _orig_route = None

        if INVALID_IN_URL.search(safe_slug_raw):
            route_path = '/' + fixed_name
        else:
            route_path = '/' + safe_slug_raw

        cat = _get_b3_cat(fixed_name, orig_name)

        tools.append({
            'name':      fixed_name,
            'orig_name': orig_name,
            'route':     route_path,
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
    cat = 'boring' if name.startswith('boring_') else 'amplum'
    return {'name': name, 'route': '/' + name, 'cat': cat, 'source': 'stub'}


# ---------------------------------------------------------------------------
# Rich body generator
# ---------------------------------------------------------------------------
def _make_rich_body(name: str, route: str, block: str,
                    cat1: str, cat2: str, tier_label: str) -> str:
    """Generate the standardized rich function body."""
    # use_label: replace underscores with spaces for the human-readable "use:" part
    use_label = name.replace('_', ' ')

    desc = (
        f"[{cat1}+{cat2}][{tier_label}] {name} - "
        f"equation: {name} - "
        f"frac(p*pi/10*2^32) chunk(p)=frac(p*pi/10*2^32) ALPHA0=259+PI/10 "
        f"d=2303582338 beacon=1d2c7a5b MOAT_P1=3000105001 MOAT_P2=5303687339 "
        f"omega^2=48/13 genesis 82843 proves {name} via positivity - "
        f"use: {use_label} - "
        f"Stripe All 3 {STRIPE} PayPal {PAYPAL} Site {SITE}"
    )

    body = (
        f'def {name}(p:int=82843, agent_id:str="agent", payload:str="", amount:float=0):\n'
        f'    bp=beacon_payload(p)\n'
        f'    bp_beacon=bp[\'beacon\']\n'
        f'    h=hashlib.sha256((agent_id+payload+bp_beacon).encode()).hexdigest()[:16]\n'
        f'    _store[h]={{\'tool\':\'{name}\',\'beacon\':bp_beacon,\'p\':bp[\'p\'],\'d\':D,\'genesis\':GENESIS_P,\'moat_p1\':MOAT_P1}}\n'
        f'    return {{\'tool\':\'{name}\',\'block\':\'{block}\',\'ok\':True,\'p\':bp[\'p\'],\'beacon\':bp[\'beacon\'],\'d\':bp[\'d\'],\'genesis\':bp[\'genesis\'],\'ts\':bp[\'ts\'],\'id\':str(uuid.uuid4())[:8],\'hash\':h,\'agent_id\':agent_id,\'description\':\'\'\'{desc}\'\'\',\'paypal\':\'{PAYPAL}\',\'stripe\':\'{STRIPE}\',\'site\':\'{SITE}\',\'formula\':\'{FORMULA}\',\'moat\':{MOAT_DICT}}}'
    )
    return body


# ---------------------------------------------------------------------------
# Router file writer — rich format
# ---------------------------------------------------------------------------
ROUTER_HEADER = """\
from fastapi import APIRouter
from core.beacon import beacon_payload, D, BEACON, GENESIS_P, MOAT_P1, MOAT_P2
import uuid, hashlib, random, math, time

router = APIRouter()
_store={}; _escrows={}; _balances={}; _proofs={}; _intents={}; _memories={}; _timelocks={}; _meshes={}
"""

ROUTER_FILES = [
    ('01', 'b1', 'zerobeacon_mf_01_050_b1a_trust.py'),
    ('02', 'b1', 'zerobeacon_mf_02_050_b1b_trust.py'),
    ('03', 'b2', 'zerobeacon_mf_03_050_b2a_billing.py'),
    ('04', 'b2', 'zerobeacon_mf_04_050_b3a_commerce.py'),
    ('05', 'b5', 'zerobeacon_mf_05_050_b4a_sovereign.py'),
    ('06', 'b2', 'zerobeacon_mf_06_050_b5a_will.py'),
    ('07', 'b2', 'zerobeacon_mf_07_050_b2b_trust.py'),
    ('08', 'b2', 'zerobeacon_mf_08_050_b2c_billing.py'),
    ('09', 'b2', 'zerobeacon_mf_09_050_b2d_commerce.py'),
    ('10', 'b2', 'zerobeacon_mf_10_050_b2e_sovereign.py'),
    ('11', 'b2', 'zerobeacon_mf_11_050_b2f_will.py'),
    ('12', 'b3', 'zerobeacon_mf_12_050_b6_mesh.py'),
    ('13', 'c1', 'zerobeacon_mf_13_050_c1_sieve.py'),
    ('14', 'c2', 'zerobeacon_mf_14_050_c2_sieve.py'),
    ('15', 'c3', 'zerobeacon_mf_15_050_c3_boring.py'),
    ('16', 'c4', 'zerobeacon_mf_16_050_c4_amplum.py'),
    ('17', 'c5', 'zerobeacon_mf_17_050_c5_arakelov.py'),
    ('18', 'c6', 'zerobeacon_mf_18_050_c6_120std.py'),
    ('19', 'c7', 'zerobeacon_mf_19_050_c7_trust.py'),
    ('20', 'c8', 'zerobeacon_mf_20_050_c8_unified.py'),
]


def write_router(tools: list, filename: str, block: str) -> None:
    parts = [ROUTER_HEADER]
    for tool in tools:
        name   = tool['name']
        route  = tool['route']
        source = tool.get('source', 'b1b2')
        cat_b3 = tool.get('cat', '')

        cat1, cat2, tier_label, tier_tag, tag4, tag5 = rich_meta(name, source, cat_b3)

        use_label = name.replace('_', ' ')
        desc = (
            f"[{cat1}+{cat2}][{tier_label}] {name} - "
            f"equation: {name} - "
            f"frac(p*pi/10*2^32) chunk(p)=frac(p*pi/10*2^32) ALPHA0=259+PI/10 "
            f"d=2303582338 beacon=1d2c7a5b MOAT_P1=3000105001 MOAT_P2=5303687339 "
            f"omega^2=48/13 genesis 82843 proves {name} via positivity - "
            f"use: {use_label} - "
            f"Stripe All 3 {STRIPE} PayPal {PAYPAL} Site {SITE}"
        )
        tags_str = f"['{cat1}', '{cat2}', '{tier_tag}', '{tag4}', '{tag5}']"

        body = _make_rich_body(name, route, block, cat1, cat2, tier_label)

        parts.append(f'\n@router.get("{route}", description="{desc}", tags={tags_str})')
        parts.append(f'@router.post("{route}", description="{desc}", tags={tags_str})')
        parts.append(body)
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

    b1_names = {t['route'][1:] for t in b1_tools}
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

    cats: dict = {}
    for t in b3_all:
        cats.setdefault(t['cat'], []).append(t)
    print("  B3 categories:", {k: len(v) for k, v in sorted(cats.items())})

    # --- Group B1 / B2 into 6×50 ---
    b1_groups = [b1_tools[i*50:(i+1)*50] for i in range(6)]
    b2_groups = [b2_tools[i*50:(i+1)*50] for i in range(6)]

    # --- Group B3 into 8 category-ordered slices of 50 ---
    sieve    = cats.get('sieve', [])
    build    = cats.get('build_module27', [])
    boring   = cats.get('boring', [])
    tier5    = cats.get('tier5_everyday', [])
    amplum   = cats.get('amplum', [])
    arakelov = cats.get('arakelov', [])
    poincare = cats.get('poincare', [])
    grh      = cats.get('v1_grh', [])
    std120   = cats.get('api_120std', [])
    trust    = cats.get('agent_trust', [])
    unif     = cats.get('v1_unified', [])
    b1_b3    = cats.get('api_b1', [])
    b2_b3    = cats.get('api_b2', [])
    m8e      = cats.get('m8e', [])

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
    for grp, (num, blk, fname) in zip(all_groups, ROUTER_FILES):
        flag = "" if len(grp) == 50 else f"  ← PADDED from {len(grp)}"
        print(f"  R{num}: {len(grp):3d} tools  {flag}")
        total += min(len(grp), 50)
    print(f"\nTotal before padding: {total}")

    # --- Pad and write ---
    print("\nWriting router files …")
    for grp, (num, blk, fname) in zip(all_groups, ROUTER_FILES):
        grp = _pad_to_50(grp, num)
        write_router(grp, fname, blk)

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
