#!/usr/bin/env python3
"""Parse a pytest-json-report file for heartbeat EKG tests and emit
GitHub Actions job-summary Markdown cards.

Usage:
    python3 scripts/write_beat_summary.py <report_path> [--heading <title>]

Arguments:
    report_path   Path to the pytest JSON report produced with
                  `--json-report --json-report-file=<path>`.
    --heading     Card heading prefix for the cold-start section
                  (default: "Cold-Start Beat-Rate").

Environment:
    GITHUB_STEP_SUMMARY   When set (as in a GHA runner), the cards are also
                          appended to the step-summary file.

Exit codes:
    0   Always (the step runs with `if: always()` and must not block CI
        just because a summary cannot be written).
"""

import argparse
import json
import os
import re
import sys


HEARTBEAT_URL = "https://zerobeacon.ai/brain/heartbeat"


def _user_properties_as_dict(raw_properties: object) -> dict:
    """Normalize pytest-json-report property encodings without raising.

    pytest-json-report serializes ``record_property`` values as a list of
    one-key dictionaries.  Older fixtures in this project use the equivalent
    ``[[key, value], ...]`` representation, so accept both forms.
    """
    if isinstance(raw_properties, dict):
        return raw_properties
    if not isinstance(raw_properties, list):
        return {}

    properties = {}
    for item in raw_properties:
        if isinstance(item, dict):
            properties.update(item)
        elif isinstance(item, (list, tuple)) and len(item) == 2:
            key, value = item
            properties[key] = value
    return properties


def build_card(report_path: str, heading: str = "Cold-Start Beat-Rate") -> str:
    """Return a Markdown summary card string.  Never raises."""
    try:
        with open(report_path) as f:
            report = json.load(f)
    except Exception as e:  # noqa: BLE001
        return (
            f"## ⚠️ {heading} — Report Unavailable\n\n"
            f"Could not read `{report_path}`: {e}\n"
        )

    tests = report.get("tests", [])
    target = next(
        (t for t in tests if "cold_start" in t.get("nodeid", "")), None
    )

    if target is None:
        return (
            f"## ⚠️ {heading} — Test Not Found\n\n"
            "The `test_beat_fires_at_200ms_rate_cold_start` test was not "
            "found in the JSON report.\n"
        )

    passed = target.get("outcome") == "passed"

    # Structured measurements emitted via record_property().
    # pytest-json-report stores them as [[key, value], ...] in user_properties.
    props = _user_properties_as_dict(target.get("user_properties"))
    ticks_fired = props.get("ticks_fired")
    tick_start  = props.get("tick_start")
    tick_end    = props.get("tick_end")
    obs_window  = props.get("observation_window_s", 2)
    required    = props.get("required_ticks", 5)

    # Fallback: if the test crashed before record_property ran, parse longrepr.
    if ticks_fired is None and not passed and "call" in target:
        longrepr = str(target["call"].get("longrepr", ""))
        m = re.search(r"only (\d+) beat", longrepr)
        if m:
            ticks_fired = int(m.group(1))

    status_icon = "✅" if passed else "❌"
    status_text = "PASSED" if passed else "FAILED"

    if ticks_fired is not None:
        ticks_display = f"{ticks_fired} / {required} required"
    else:
        ticks_display = "unknown"

    tick_detail = ""
    if tick_start is not None and tick_end is not None:
        tick_detail = f" (tick counter: {tick_start} → {tick_end})"

    lines = [
        f"## {status_icon} {heading} — {status_text}",
        "",
        "| Metric | Value |",
        "| --- | --- |",
        f"| Ticks fired | `{ticks_display}`{tick_detail} |",
        f"| Observation window | `{obs_window} seconds` |",
        f"| Required rate | `≥{required} ticks at 200 ms intervals` |",
        f"| Live heartbeat | [{HEARTBEAT_URL}]({HEARTBEAT_URL}) |",
        "",
    ]

    if not passed and ticks_fired is not None:
        lines.append(
            f"> **Shortfall:** only `{ticks_fired}/{required}` required ticks fired "
            f"in the {obs_window}-second cold-start window. "
            "The 200 ms `setInterval` beat loop may have regressed or the VM "
            "is waking too slowly after `auto_stop`."
        )
        lines.append("")

    return "\n".join(lines)


def _build_bg_tab_section(test: dict) -> str:
    """Return a Markdown section for the background-tab visibility test."""
    passed = test.get("outcome") == "passed"
    props = _user_properties_as_dict(test.get("user_properties"))

    bg_ticks   = props.get("bg_ticks_fired")
    bg_start   = props.get("bg_tick_start")
    bg_end     = props.get("bg_tick_end")
    bg_window  = props.get("bg_observation_window_s", 2)
    bg_req     = props.get("bg_required_ticks", 5)

    fg_ticks   = props.get("fg_ticks_fired")
    fg_start   = props.get("fg_tick_start")
    fg_end     = props.get("fg_tick_end")
    fg_window  = props.get("fg_observation_window_s", 1)
    fg_req     = props.get("fg_required_ticks", 3)

    # Fallback: extract background tick count from assertion longrepr.
    if bg_ticks is None and not passed and "call" in test:
        longrepr = str(test["call"].get("longrepr", ""))
        m = re.search(r"only (\d+) beat\(s\) fired in \d+ s while the tab", longrepr)
        if m:
            bg_ticks = int(m.group(1))

    status_icon = "✅" if passed else "❌"
    status_text = "PASSED" if passed else "FAILED"

    bg_display = (
        f"{bg_ticks} / {bg_req} required" if bg_ticks is not None else "unknown"
    )
    fg_display = (
        f"{fg_ticks} / {fg_req} required" if fg_ticks is not None else "unknown"
    )
    bg_detail = (
        f" (tick counter: {bg_start} → {bg_end})"
        if bg_start is not None and bg_end is not None
        else ""
    )
    fg_detail = (
        f" (tick counter: {fg_start} → {fg_end})"
        if fg_start is not None and fg_end is not None
        else ""
    )

    lines = [
        f"## {status_icon} Background-Tab Beat — {status_text}",
        "",
        "| Phase | Ticks | Window | Required |",
        "| --- | --- | --- | --- |",
        f"| Hidden (backgrounded) | `{bg_display}`{bg_detail} | `{bg_window} s` | `≥{bg_req}` |",
        f"| Visible (after focus restore) | `{fg_display}`{fg_detail} | `{fg_window} s` | `≥{fg_req}` |",
        "",
    ]

    if not passed:
        if bg_ticks is not None and bg_ticks < bg_req:
            lines.append(
                f"> **Shortfall (hidden phase):** only `{bg_ticks}/{bg_req}` ticks fired "
                f"in the {bg_window}-second background window. "
                "A visibilitychange listener may have cancelled the interval when "
                "the tab became hidden."
            )
            lines.append("")
        if fg_ticks is not None and fg_ticks < fg_req:
            lines.append(
                f"> **Shortfall (focus-restore phase):** only `{fg_ticks}/{fg_req}` ticks fired "
                f"in the {fg_window}-second foreground window. "
                "The beat loop may not resume correctly after tab focus is restored."
            )
            lines.append("")

    return "\n".join(lines)


def _build_focus_restore_section(test: dict) -> str:
    """Return a Markdown section for the focus-restore rate test."""
    passed = test.get("outcome") == "passed"
    props = _user_properties_as_dict(test.get("user_properties"))

    ticks      = props.get("resume_ticks_fired")
    tick_start = props.get("resume_tick_start")
    tick_end   = props.get("resume_tick_end")
    window     = props.get("resume_observation_window_s", 2)
    required   = props.get("resume_required_ticks", 5)

    # Fallback: extract count from assertion longrepr.
    if ticks is None and not passed and "call" in test:
        longrepr = str(test["call"].get("longrepr", ""))
        m = re.search(r"only (\d+) beat\(s\) fired in 2 s after", longrepr)
        if m:
            ticks = int(m.group(1))

    status_icon = "✅" if passed else "❌"
    status_text = "PASSED" if passed else "FAILED"

    ticks_display = (
        f"{ticks} / {required} required" if ticks is not None else "unknown"
    )
    tick_detail = (
        f" (tick counter: {tick_start} → {tick_end})"
        if tick_start is not None and tick_end is not None
        else ""
    )

    lines = [
        f"## {status_icon} Focus-Restore Beat — {status_text}",
        "",
        "| Metric | Value |",
        "| --- | --- |",
        f"| Ticks after focus restore | `{ticks_display}`{tick_detail} |",
        f"| Observation window | `{window} seconds` |",
        f"| Required rate | `≥{required} ticks at 200 ms intervals` |",
        "",
    ]

    if not passed and ticks is not None and ticks < required:
        lines.append(
            f"> **Shortfall:** only `{ticks}/{required}` ticks fired in the "
            f"{window}-second post-focus window. "
            "The beat loop may not resume immediately after visibility is restored."
        )
        lines.append("")

    return "\n".join(lines)


def build_background_tab_card(report_path: str) -> str:
    """Return Markdown summary sections for background-tab / focus-restore tests.

    Returns an empty string when neither test is present in the report (e.g.
    a selective cold-start-only run).  Never raises.
    """
    try:
        with open(report_path) as f:
            report = json.load(f)
    except Exception as e:  # noqa: BLE001
        return (
            "## ⚠️ Background-Tab Beat — Report Unavailable\n\n"
            f"Could not read `{report_path}`: {e}\n"
        )

    tests = report.get("tests", [])
    bg_test = next(
        (t for t in tests if "background_tab" in t.get("nodeid", "")), None
    )
    resume_test = next(
        (t for t in tests if "focus_restore" in t.get("nodeid", "")), None
    )

    # Neither test present — not an error; just nothing to emit.
    if bg_test is None and resume_test is None:
        return ""

    sections = []
    if bg_test is not None:
        sections.append(_build_bg_tab_section(bg_test))
    if resume_test is not None:
        sections.append(_build_focus_restore_section(resume_test))

    return "\n".join(sections)


def main() -> None:
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("report_path", help="Path to pytest JSON report")
    parser.add_argument(
        "--heading",
        default="Cold-Start Beat-Rate",
        help="Card heading prefix (default: 'Cold-Start Beat-Rate')",
    )
    args = parser.parse_args()

    cold_start_card = build_card(args.report_path, heading=args.heading)
    bg_tab_card = build_background_tab_card(args.report_path)

    output = cold_start_card
    if bg_tab_card:
        output = output + "\n" + bg_tab_card

    print(output)

    summary_file = os.environ.get("GITHUB_STEP_SUMMARY", "")
    if summary_file:
        with open(summary_file, "a") as fh:
            fh.write(output)


if __name__ == "__main__":
    main()
