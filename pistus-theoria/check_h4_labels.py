#!/usr/bin/env python3
"""
check_h4_labels.py — Repeatable label-integrity check for the
pistus-theoria H4 certificate archive.

Checks:
  1. invariants.json is valid JSON.
  2. The H4_invariants data fields contain no bare ambiguous label
     'H4=12/11' where a qualified key is required.
  3. The three distinct H4 quantities are present and correctly labeled:
       - Mstar_ratio  → value "12/11", decimal ≈ 1.0909 (within tolerance)
       - H4_base      → value "120/11", decimal ≈ 10.9091 (within tolerance)
       - H4_coxeter_group_order → integer 14400
  4. Numeric consistency: the stored decimals match their fraction strings
     to within stated tolerances; Mstar_ratio and H4_base have
     arithmetically distinct numerics.
  5. BSD-J0-143.tex defines Mstar_ratio, H4_base, and the group order
     as separate concepts (all three TeX labels present).

Exit 0 on full pass; exit 1 with a descriptive message on any failure.
"""

import json
import re
import sys
from fractions import Fraction
from pathlib import Path

HERE = Path(__file__).parent
INVARIANTS_FILE = HERE / "invariants.json"
BSD_TEX_FILE = HERE / "birch-swinnerton-dyer" / "BSD-J0-143.tex"


# ---------------------------------------------------------------------------
# helpers
# ---------------------------------------------------------------------------

def fail(msg: str) -> None:
    print(f"FAIL: {msg}", file=sys.stderr)
    sys.exit(1)


def ok(msg: str) -> None:
    print(f"PASS: {msg}")


def parse_fraction(s: str) -> float:
    """Parse a fraction string like '12/11' or '120/11' and return float."""
    try:
        return float(Fraction(s))
    except (ValueError, ZeroDivisionError) as exc:
        fail(f"Cannot parse fraction {s!r}: {exc}")


# ---------------------------------------------------------------------------
# check 1 — valid JSON
# ---------------------------------------------------------------------------

def check_valid_json() -> dict:
    if not INVARIANTS_FILE.exists():
        fail(f"{INVARIANTS_FILE} does not exist.")
    try:
        data = json.loads(INVARIANTS_FILE.read_text(encoding="utf-8"))
    except json.JSONDecodeError as exc:
        fail(f"invariants.json is not valid JSON: {exc}")
    ok("invariants.json parses as valid JSON")
    return data


# ---------------------------------------------------------------------------
# check 2 — no ambiguous bare labels in the actual data fields
#
# We walk the parsed H4_invariants object, skipping documentation-only keys
# that are explicitly allowed to mention forbidden pattern strings for
# explanatory purposes.
# ---------------------------------------------------------------------------

_SKIP_KEYS = frozenset({
    "description", "forbidden_patterns", "label_integrity_rules",
    "note", "measured_range",
})

# A "bare H4" key is one whose name is exactly "H4" (case-insensitive),
# i.e. it carries no qualifier suffix (_base, _ratio, _coxeter_group_order…).
_BARE_H4_KEY_RE = re.compile(r'^H4$', re.IGNORECASE)

# Values that look like a protected H4 quantity
_PROTECTED_VALUES_RE = re.compile(
    r'^\s*(12/11|120/11|14400)\s*$', re.IGNORECASE
)

# Bare H4=12/11 in a string value (e.g. in a claim sentence)
_BARE_H4_RATIO_IN_STR_RE = re.compile(
    r'\bH4\b\s*[=:]\s*["\']?\s*12\s*/\s*11', re.IGNORECASE
)


def _iter_bare_h4_keys(obj, path="H4_invariants"):
    """Yield (path, key, value) for every bare 'H4' dict key in *obj*,
    skipping documentation-only sections."""
    if isinstance(obj, dict):
        for k, v in obj.items():
            if k in _SKIP_KEYS:
                continue
            if _BARE_H4_KEY_RE.match(k):
                yield (path, k, v)
            yield from _iter_bare_h4_keys(v, path=f"{path}.{k}")
    elif isinstance(obj, list):
        for i, item in enumerate(obj):
            yield from _iter_bare_h4_keys(item, path=f"{path}[{i}]")


def _iter_data_strings(obj):
    """Yield string leaf values from *obj*, skipping documentation keys."""
    if isinstance(obj, dict):
        for k, v in obj.items():
            if k in _SKIP_KEYS:
                continue
            yield from _iter_data_strings(v)
    elif isinstance(obj, list):
        for item in obj:
            yield from _iter_data_strings(item)
    elif isinstance(obj, str):
        yield obj


def check_no_ambiguous_labels(data: dict) -> None:
    h4 = data.get("H4_invariants", {})

    # 2a: reject bare "H4" keys at any nesting level
    for path, key, value in _iter_bare_h4_keys(h4):
        fail(
            f"H4_invariants contains a bare unqualified key '{key}' at {path}. "
            f"Value: {value!r}. "
            "Use a qualified key: Mstar_ratio, H4_base, or H4_coxeter_group_order."
        )
    ok("No bare unqualified 'H4' key found anywhere in H4_invariants")

    # 2b: reject ambiguous 'H4=12/11' pattern in string values
    for s in _iter_data_strings(h4):
        if _BARE_H4_RATIO_IN_STR_RE.search(s):
            fail(
                f"H4_invariants data string contains the ambiguous bare label "
                f"'H4=12/11': {s!r}. "
                "Use 'Mstar_ratio' for the ~12/11 ratio and 'H4_base' for 120/11."
            )
    ok("No ambiguous bare 'H4=12/11' form found in H4_invariants string values")


# ---------------------------------------------------------------------------
# self-test fixture: verify the checker itself rejects {"H4": "12/11"}
# ---------------------------------------------------------------------------

def run_self_test() -> None:
    """Inject a known-bad fixture and confirm the checker rejects it.

    stderr is suppressed during the fixture run so no FAIL: lines appear in
    CI output on a successful self-test pass.
    """
    import io

    bad_fixture = {
        "H4_invariants": {
            "H4": "12/11"  # bare ambiguous key — must be caught
        }
    }
    caught = False
    original_exit = sys.exit
    original_stderr = sys.stderr

    class _Caught(SystemExit):
        pass

    def _mock_exit(code):
        raise _Caught(code)

    sys.exit = _mock_exit
    sys.stderr = io.StringIO()   # swallow FAIL: lines during fixture run
    try:
        check_no_ambiguous_labels(bad_fixture)
    except _Caught:
        caught = True
    finally:
        sys.exit = original_exit
        sys.stderr = original_stderr  # restore before any real error output

    if not caught:
        print(
            'FAIL: Self-test fixture {"H4": "12/11"} was NOT rejected — '
            "the checker is broken.",
            file=sys.stderr,
        )
        sys.exit(1)
    ok('Self-test: {"H4": "12/11"} is correctly rejected by check_no_ambiguous_labels')


# ---------------------------------------------------------------------------
# check 3 — distinct labeled quantities present with correct values
# ---------------------------------------------------------------------------

def check_distinct_quantities(data: dict) -> None:
    h4 = data.get("H4_invariants")
    if not isinstance(h4, dict):
        fail("invariants.json missing top-level 'H4_invariants' object.")

    # --- Mstar_ratio ---
    mstar = h4.get("Mstar_ratio")
    if not isinstance(mstar, dict):
        fail("H4_invariants.Mstar_ratio is missing or not an object.")
    if mstar.get("label") != "Mstar_ratio":
        fail(f"H4_invariants.Mstar_ratio.label should be 'Mstar_ratio', "
             f"got {mstar.get('label')!r}.")
    mstar_val = mstar.get("value")
    if mstar_val != "12/11":
        fail(f"H4_invariants.Mstar_ratio.value should be '12/11', "
             f"got {mstar_val!r}.")
    ok("Mstar_ratio correctly labeled and valued '12/11'")

    # --- H4_base ---
    base = h4.get("H4_base")
    if not isinstance(base, dict):
        fail("H4_invariants.H4_base is missing or not an object.")
    if base.get("label") != "H4_base":
        fail(f"H4_invariants.H4_base.label should be 'H4_base', "
             f"got {base.get('label')!r}.")
    base_val = base.get("value")
    if base_val != "120/11":
        fail(f"H4_invariants.H4_base.value should be '120/11', "
             f"got {base_val!r}.")
    ok("H4_base correctly labeled and valued '120/11'")

    # --- H4_coxeter_group_order ---
    order_entry = h4.get("H4_coxeter_group_order")
    if not isinstance(order_entry, dict):
        fail("H4_invariants.H4_coxeter_group_order is missing or not an object.")
    if order_entry.get("label") != "H4_coxeter_group_order":
        fail(f"H4_invariants.H4_coxeter_group_order.label should be "
             f"'H4_coxeter_group_order', got {order_entry.get('label')!r}.")
    order_val = order_entry.get("value")
    if order_val != 14400:
        fail(f"H4_invariants.H4_coxeter_group_order.value should be 14400, "
             f"got {order_val!r}.")
    ok("H4_coxeter_group_order correctly labeled and valued 14400")

    return mstar, base, order_entry


# ---------------------------------------------------------------------------
# check 4 — numeric consistency
#
# a) stored decimal values match the fraction strings to within tolerance
# b) Mstar_ratio and H4_base are numerically distinct
# c) The arithmetic fact 12/(120/11) = 11/10 ≠ 12/11 is verified so the
#    checker itself documents the relationship correctly
# ---------------------------------------------------------------------------

def check_numeric_consistency(mstar: dict, base: dict) -> None:
    # Verify fraction arithmetic: 12/(120/11) must NOT equal 12/11
    exact_12_over_h4base = float(Fraction(12) / Fraction(120, 11))
    target_12_over_11 = float(Fraction(12, 11))
    if abs(exact_12_over_h4base - 11 / 10) > 1e-12:
        fail("Internal arithmetic check failed: 12/(120/11) should equal 11/10.")
    if abs(exact_12_over_h4base - target_12_over_11) < 1e-6:
        fail(
            "Arithmetic contradiction: 12/(120/11) equals 12/11, which is "
            "impossible. Archive formula is incorrect."
        )
    ok("Arithmetic verified: 12/(120/11) = 11/10 ≠ 12/11 "
       "(Mstar_ratio ≈ 12/11 is a numerical target, not an exact quotient of 12/H4_base)")

    # Check Mstar_ratio.decimal ≈ 12/11 within stated tolerance
    mstar_dec = mstar.get("decimal")
    mstar_tol = mstar.get("decimal_tolerance", 0.02)
    if mstar_dec is None:
        fail("H4_invariants.Mstar_ratio is missing 'decimal' field.")
    expected_mstar = parse_fraction("12/11")
    if abs(float(mstar_dec) - expected_mstar) > float(mstar_tol):
        fail(
            f"Mstar_ratio.decimal ({mstar_dec}) is more than {mstar_tol} "
            f"away from 12/11 = {expected_mstar:.6f}. "
            "Either the stored decimal or the tolerance is wrong."
        )
    ok(f"Mstar_ratio.decimal={mstar_dec} is within tolerance {mstar_tol} of 12/11")

    # Check H4_base.decimal ≈ 120/11 within tight tolerance
    base_dec = base.get("decimal")
    base_tol = base.get("decimal_tolerance", 1e-6)
    if base_dec is None:
        fail("H4_invariants.H4_base is missing 'decimal' field.")
    expected_base = parse_fraction("120/11")
    if abs(float(base_dec) - expected_base) > float(base_tol):
        fail(
            f"H4_base.decimal ({base_dec}) differs from 120/11 = {expected_base:.9f} "
            f"by more than {base_tol}. The stored decimal is inconsistent with the fraction."
        )
    ok(f"H4_base.decimal={base_dec} is consistent with 120/11 to within {base_tol}")

    # Verify the two decimals are numerically distinct
    if abs(float(mstar_dec) - float(base_dec)) < 0.01:
        fail(
            "Mstar_ratio.decimal and H4_base.decimal are suspiciously close — "
            "they represent distinct quantities (≈1.091 vs ≈10.909) and must differ."
        )
    ok("Mstar_ratio.decimal and H4_base.decimal are numerically distinct")


# ---------------------------------------------------------------------------
# check 5 — BSD-J0-143.tex separates M* normalization from base and order
# ---------------------------------------------------------------------------

_MSTAR_LABEL  = re.compile(r"def:mstar.ratio|Mstar.ratio|M\*[\s_]*normalization", re.IGNORECASE)
_H4BASE_LABEL = re.compile(r"def:h4.base|H4.base|\\texttt\{H4_base\}", re.IGNORECASE)
_ORDER_LABEL  = re.compile(r"def:h4.order|group.order|14400", re.IGNORECASE)

# Match bare H4=12/11 in TeX, including:
#   H4=12/11          H4 = 12/11
#   H4\;=\;12/11      H4\,=\,12/11   (TeX math spacing)
#   H4 $= 12/11$      H4$=12/11$     (inline math delimiters)
_TEX_SPACE = r"(?:\s|\\[,;!\s]|\$)*"
_TEX_BARE_RE = re.compile(
    r"\bH4\b" + _TEX_SPACE + r"=?" + _TEX_SPACE + r"\$?" + _TEX_SPACE
    + r"=\s*(?:\$)?" + _TEX_SPACE + r"12\s*/\s*11",
    re.IGNORECASE,
)
# Simpler fallback: also catch H4 ... = ... 12/11 with any TeX between
_TEX_BARE_RE2 = re.compile(
    r"\bH4\b"                   # bare H4 word
    r"(?:[^a-zA-Z0-9\n]{0,12})" # up to 12 non-alphanum chars (TeX spacing, $, etc.)
    r"="                        # equals sign
    r"(?:[^a-zA-Z0-9\n]{0,12})" # more spacing
    r"12/11",
    re.IGNORECASE,
)


def check_tex_labels() -> None:
    if not BSD_TEX_FILE.exists():
        fail(f"{BSD_TEX_FILE} does not exist.")
    text = BSD_TEX_FILE.read_text(encoding="utf-8")

    if not _MSTAR_LABEL.search(text):
        fail(
            "BSD-J0-143.tex does not contain a label for the M* normalization "
            "ratio (expected 'def:mstar-ratio', 'Mstar_ratio', or "
            "'M* normalization')."
        )
    ok("BSD-J0-143.tex defines the M* normalization ratio separately")

    if not _H4BASE_LABEL.search(text):
        fail(
            "BSD-J0-143.tex does not contain a label for the H4 base "
            "(expected 'def:h4-base' or 'H4_base')."
        )
    ok("BSD-J0-143.tex defines H4_base separately")

    if not _ORDER_LABEL.search(text):
        fail(
            "BSD-J0-143.tex does not contain a label for the Coxeter-group "
            "order 14400 (expected 'def:h4-order' or '14400')."
        )
    ok("BSD-J0-143.tex defines the Coxeter-group order separately")

    bare_match = _TEX_BARE_RE.search(text) or _TEX_BARE_RE2.search(text)
    if bare_match:
        fail(
            f"BSD-J0-143.tex contains an ambiguous bare form near: "
            f"{bare_match.group()!r}. "
            "Use the qualified label Mstar_ratio with explicit ≈ notation "
            "rather than a bare H4=12/11 assignment."
        )
    ok("BSD-J0-143.tex contains no bare unqualified 'H4=12/11' form")


# ---------------------------------------------------------------------------
# main
# ---------------------------------------------------------------------------

def main() -> None:
    print("=== pistus-theoria H4 label integrity check ===\n")

    # Self-test: confirm the checker rejects known-bad fixture before
    # inspecting the real files.
    run_self_test()

    data = check_valid_json()
    check_no_ambiguous_labels(data)
    mstar, base, _order = check_distinct_quantities(data)
    check_numeric_consistency(mstar, base)
    check_tex_labels()

    print("\n=== ALL CHECKS PASSED ===")


if __name__ == "__main__":
    main()
