"""
Unit tests for scripts/write_beat_summary.py — the beat-rate job-summary card.

These tests exercise the failure path (shortfall message) and the pass path
without requiring a live server, a Playwright browser, or any GitHub secrets.
They run in CI alongside the rest of the unit tests.
"""

import json
import os
import sys
import tempfile

import pytest

# Make sure the script module is importable from the repo root.
sys.path.insert(0, os.path.join(os.path.dirname(__file__), ".."))
from scripts.write_beat_summary import build_card, build_background_tab_card  # noqa: E402


# ---------------------------------------------------------------------------
# Helpers
# ---------------------------------------------------------------------------

def _make_report(
    outcome: str,
    ticks_fired: int | None = None,
    tick_start: int | None = None,
    tick_end: int | None = None,
    obs_window: int = 2,
    required: int = 5,
    longrepr: str = "",
) -> str:
    """Return a path to a temporary pytest-json-report JSON file."""
    user_properties = []
    if ticks_fired is not None:
        user_properties.append(["ticks_fired", ticks_fired])
    if tick_start is not None:
        user_properties.append(["tick_start", tick_start])
    if tick_end is not None:
        user_properties.append(["tick_end", tick_end])
    user_properties.append(["observation_window_s", obs_window])
    user_properties.append(["required_ticks", required])

    call_block = {}
    if longrepr:
        call_block["longrepr"] = longrepr

    report = {
        "tests": [
            {
                "nodeid": "tests/test_heartbeat_playwright.py::test_beat_fires_at_200ms_rate_cold_start",
                "outcome": outcome,
                "user_properties": user_properties,
                **({"call": call_block} if call_block else {}),
            }
        ]
    }

    tmp = tempfile.NamedTemporaryFile(
        mode="w", suffix=".json", delete=False
    )
    json.dump(report, tmp)
    tmp.close()
    return tmp.name


# ---------------------------------------------------------------------------
# Failure path — ticks_fired via user_properties
# ---------------------------------------------------------------------------

class TestFailureCardViaUserProperties:
    """Summary card when the test fails and record_property() populated ticks_fired."""

    def setup_method(self):
        self.report = _make_report(
            outcome="failed",
            ticks_fired=3,
            tick_start=0,
            tick_end=3,
            obs_window=2,
            required=5,
        )

    def teardown_method(self):
        os.unlink(self.report)

    def test_heading_shows_failed(self):
        card = build_card(self.report)
        assert "FAILED" in card

    def test_status_icon_is_red_cross(self):
        card = build_card(self.report)
        assert "❌" in card

    def test_ticks_display_shows_fired_over_required(self):
        card = build_card(self.report)
        assert "3 / 5 required" in card

    def test_tick_counter_range_is_shown(self):
        """tick counter: 0 → 3 should appear in the Ticks fired row."""
        card = build_card(self.report)
        assert "tick counter: 0 → 3" in card

    def test_shortfall_blockquote_is_present(self):
        card = build_card(self.report)
        assert "**Shortfall:**" in card

    def test_shortfall_message_contains_exact_fraction(self):
        card = build_card(self.report)
        assert "`3/5` required ticks fired" in card

    def test_observation_window_mentioned_in_shortfall(self):
        card = build_card(self.report)
        assert "2-second" in card

    def test_custom_heading_propagates(self):
        card = build_card(self.report, heading="EKG Beat-Rate")
        assert "EKG Beat-Rate" in card
        assert "FAILED" in card


# ---------------------------------------------------------------------------
# Failure path — ticks_fired via longrepr fallback (record_property not reached)
# ---------------------------------------------------------------------------

class TestFailureCardViaLongreprFallback:
    """Summary card when the test crashes before record_property() runs.

    In this scenario user_properties are empty and ticks_fired must be
    recovered from the assertion longrepr via the regex fallback.
    """

    def setup_method(self):
        crash_repr = (
            "AssertionError: /brain/heartbeat: only 2 beat(s) fired in 2 s "
            "after cold start (expected ≥5 at 200 ms each). "
            "tick at load=0, tick after 2 s=2."
        )
        # Build report without ticks_fired in user_properties
        report = {
            "tests": [
                {
                    "nodeid": "tests/test_heartbeat_playwright.py::test_beat_fires_at_200ms_rate_cold_start",
                    "outcome": "failed",
                    "user_properties": [
                        ["observation_window_s", 2],
                        ["required_ticks", 5],
                    ],
                    "call": {"longrepr": crash_repr},
                }
            ]
        }
        tmp = tempfile.NamedTemporaryFile(
            mode="w", suffix=".json", delete=False
        )
        json.dump(report, tmp)
        tmp.close()
        self.report = tmp.name

    def teardown_method(self):
        os.unlink(self.report)

    def test_ticks_extracted_from_longrepr(self):
        card = build_card(self.report)
        assert "2 / 5 required" in card

    def test_shortfall_message_present(self):
        card = build_card(self.report)
        assert "**Shortfall:**" in card

    def test_shortfall_shows_longrepr_count(self):
        card = build_card(self.report)
        assert "`2/5` required ticks fired" in card


# ---------------------------------------------------------------------------
# Failure path — ticks_fired completely unknown (no user_properties, no match)
# ---------------------------------------------------------------------------

class TestFailureCardTicksUnknown:
    """When neither user_properties nor longrepr yield a tick count."""

    def setup_method(self):
        report = {
            "tests": [
                {
                    "nodeid": "tests/test_heartbeat_playwright.py::test_beat_fires_at_200ms_rate_cold_start",
                    "outcome": "failed",
                    "user_properties": [],
                }
            ]
        }
        tmp = tempfile.NamedTemporaryFile(
            mode="w", suffix=".json", delete=False
        )
        json.dump(report, tmp)
        tmp.close()
        self.report = tmp.name

    def teardown_method(self):
        os.unlink(self.report)

    def test_ticks_display_is_unknown(self):
        card = build_card(self.report)
        assert "unknown" in card

    def test_no_shortfall_block_when_ticks_unknown(self):
        """Shortfall blockquote only appears when ticks_fired is known."""
        card = build_card(self.report)
        assert "**Shortfall:**" not in card

    def test_still_shows_failed(self):
        card = build_card(self.report)
        assert "FAILED" in card


# ---------------------------------------------------------------------------
# Pass path
# ---------------------------------------------------------------------------

class TestPassCard:
    """Summary card when the test passes (the happy path)."""

    def setup_method(self):
        self.report = _make_report(
            outcome="passed",
            ticks_fired=9,
            tick_start=1,
            tick_end=10,
            obs_window=2,
            required=5,
        )

    def teardown_method(self):
        os.unlink(self.report)

    def test_heading_shows_passed(self):
        card = build_card(self.report)
        assert "PASSED" in card

    def test_status_icon_is_green_check(self):
        card = build_card(self.report)
        assert "✅" in card

    def test_ticks_display_shows_fired_over_required(self):
        card = build_card(self.report)
        assert "9 / 5 required" in card

    def test_no_shortfall_message_on_pass(self):
        card = build_card(self.report)
        assert "**Shortfall:**" not in card


# ---------------------------------------------------------------------------
# Edge cases — missing or corrupt report
# ---------------------------------------------------------------------------

class TestEdgeCases:
    """Summary card gracefully handles missing / corrupt / incomplete reports."""

    def test_missing_report_file(self):
        card = build_card("/tmp/nonexistent-beat-report-284.json")
        assert "Report Unavailable" in card

    def test_test_not_found_in_report(self):
        report = {"tests": [{"nodeid": "tests/other_test.py::test_something", "outcome": "passed"}]}
        tmp = tempfile.NamedTemporaryFile(
            mode="w", suffix=".json", delete=False
        )
        json.dump(report, tmp)
        tmp.close()
        try:
            card = build_card(tmp.name)
            assert "Test Not Found" in card
        finally:
            os.unlink(tmp.name)

    def test_corrupt_json(self):
        tmp = tempfile.NamedTemporaryFile(
            mode="w", suffix=".json", delete=False
        )
        tmp.write("{ this is not valid json }")
        tmp.close()
        try:
            card = build_card(tmp.name)
            assert "Report Unavailable" in card
        finally:
            os.unlink(tmp.name)

    def test_live_heartbeat_url_always_present(self):
        """The live URL is a navigation aid and must appear regardless of outcome."""
        report = _make_report(outcome="failed", ticks_fired=1)
        try:
            card = build_card(report)
            assert "https://zerobeacon.ai/brain/heartbeat" in card
        finally:
            os.unlink(report)


# ---------------------------------------------------------------------------
# Helpers for background-tab card tests
# ---------------------------------------------------------------------------

def _make_bg_tab_report(
    outcome: str,
    bg_ticks: int | None = None,
    bg_start: int | None = None,
    bg_end: int | None = None,
    fg_ticks: int | None = None,
    fg_start: int | None = None,
    fg_end: int | None = None,
    bg_window: int = 2,
    fg_window: int = 1,
    bg_required: int = 5,
    fg_required: int = 3,
    longrepr: str = "",
) -> str:
    """Return a path to a temporary JSON report containing test_beat_survives_background_tab."""
    user_properties = []
    if bg_ticks is not None:
        user_properties.append(["bg_ticks_fired", bg_ticks])
    if bg_start is not None:
        user_properties.append(["bg_tick_start", bg_start])
    if bg_end is not None:
        user_properties.append(["bg_tick_end", bg_end])
    if fg_ticks is not None:
        user_properties.append(["fg_ticks_fired", fg_ticks])
    if fg_start is not None:
        user_properties.append(["fg_tick_start", fg_start])
    if fg_end is not None:
        user_properties.append(["fg_tick_end", fg_end])
    user_properties.append(["bg_observation_window_s", bg_window])
    user_properties.append(["fg_observation_window_s", fg_window])
    user_properties.append(["bg_required_ticks", bg_required])
    user_properties.append(["fg_required_ticks", fg_required])

    call_block = {}
    if longrepr:
        call_block["longrepr"] = longrepr

    report = {
        "tests": [
            {
                "nodeid": "tests/test_heartbeat_playwright.py::test_beat_survives_background_tab",
                "outcome": outcome,
                "user_properties": user_properties,
                **({"call": call_block} if call_block else {}),
            }
        ]
    }

    tmp = tempfile.NamedTemporaryFile(mode="w", suffix=".json", delete=False)
    json.dump(report, tmp)
    tmp.close()
    return tmp.name


def _make_focus_restore_report(
    outcome: str,
    resume_ticks: int | None = None,
    resume_start: int | None = None,
    resume_end: int | None = None,
    window: int = 2,
    required: int = 5,
    longrepr: str = "",
) -> str:
    """Return a path to a temporary JSON report containing test_beat_resumes_after_focus_restore."""
    user_properties = []
    if resume_ticks is not None:
        user_properties.append(["resume_ticks_fired", resume_ticks])
    if resume_start is not None:
        user_properties.append(["resume_tick_start", resume_start])
    if resume_end is not None:
        user_properties.append(["resume_tick_end", resume_end])
    user_properties.append(["resume_observation_window_s", window])
    user_properties.append(["resume_required_ticks", required])

    call_block = {}
    if longrepr:
        call_block["longrepr"] = longrepr

    report = {
        "tests": [
            {
                "nodeid": "tests/test_heartbeat_playwright.py::test_beat_resumes_after_focus_restore",
                "outcome": outcome,
                "user_properties": user_properties,
                **({"call": call_block} if call_block else {}),
            }
        ]
    }

    tmp = tempfile.NamedTemporaryFile(mode="w", suffix=".json", delete=False)
    json.dump(report, tmp)
    tmp.close()
    return tmp.name


# ---------------------------------------------------------------------------
# Background-tab card — tests absent (no section emitted)
# ---------------------------------------------------------------------------

class TestBackgroundTabCardAbsent:
    """build_background_tab_card returns empty string when neither test is present."""

    def test_returns_empty_when_no_bg_tests(self):
        report = _make_report(outcome="passed", ticks_fired=9)
        try:
            card = build_background_tab_card(report)
            assert card == ""
        finally:
            os.unlink(report)


# ---------------------------------------------------------------------------
# Background-tab card — pass path
# ---------------------------------------------------------------------------

class TestBackgroundTabCardPass:
    """Summary card when test_beat_survives_background_tab passes."""

    def setup_method(self):
        self.report = _make_bg_tab_report(
            outcome="passed",
            bg_ticks=10,
            bg_start=5,
            bg_end=15,
            fg_ticks=5,
            fg_start=15,
            fg_end=20,
        )

    def teardown_method(self):
        os.unlink(self.report)

    def test_heading_shows_passed(self):
        card = build_background_tab_card(self.report)
        assert "Background-Tab Beat" in card
        assert "PASSED" in card

    def test_status_icon_is_green_check(self):
        card = build_background_tab_card(self.report)
        assert "✅" in card

    def test_bg_ticks_shown(self):
        card = build_background_tab_card(self.report)
        assert "10 / 5 required" in card

    def test_fg_ticks_shown(self):
        card = build_background_tab_card(self.report)
        assert "5 / 3 required" in card

    def test_tick_counter_range_shown(self):
        card = build_background_tab_card(self.report)
        assert "tick counter: 5 → 15" in card
        assert "tick counter: 15 → 20" in card

    def test_no_shortfall_on_pass(self):
        card = build_background_tab_card(self.report)
        assert "**Shortfall" not in card


# ---------------------------------------------------------------------------
# Background-tab card — failure path (hidden phase shortfall)
# ---------------------------------------------------------------------------

class TestBackgroundTabCardHiddenShortfall:
    """Card when ticks-while-backgrounded is below threshold."""

    def setup_method(self):
        self.report = _make_bg_tab_report(
            outcome="failed",
            bg_ticks=2,
            bg_start=0,
            bg_end=2,
            fg_ticks=4,
            fg_start=2,
            fg_end=6,
        )

    def teardown_method(self):
        os.unlink(self.report)

    def test_heading_shows_failed(self):
        card = build_background_tab_card(self.report)
        assert "FAILED" in card

    def test_status_icon_is_red_cross(self):
        card = build_background_tab_card(self.report)
        assert "❌" in card

    def test_bg_shortfall_message_present(self):
        card = build_background_tab_card(self.report)
        assert "**Shortfall (hidden phase):**" in card

    def test_bg_shortfall_fraction_correct(self):
        card = build_background_tab_card(self.report)
        assert "`2/5` ticks fired" in card

    def test_fg_shortfall_not_emitted_when_fg_passes(self):
        """fg_ticks=4 >= fg_required=3, so the focus-restore shortfall must not appear."""
        card = build_background_tab_card(self.report)
        assert "focus-restore phase" not in card


# ---------------------------------------------------------------------------
# Background-tab card — failure path (focus-restore phase shortfall)
# ---------------------------------------------------------------------------

class TestBackgroundTabCardFgShortfall:
    """Card when ticks-after-focus-restore is below threshold."""

    def setup_method(self):
        self.report = _make_bg_tab_report(
            outcome="failed",
            bg_ticks=8,
            bg_start=0,
            bg_end=8,
            fg_ticks=1,
            fg_start=8,
            fg_end=9,
        )

    def teardown_method(self):
        os.unlink(self.report)

    def test_fg_shortfall_message_present(self):
        card = build_background_tab_card(self.report)
        assert "**Shortfall (focus-restore phase):**" in card

    def test_fg_shortfall_fraction_correct(self):
        card = build_background_tab_card(self.report)
        assert "`1/3` ticks fired" in card

    def test_bg_shortfall_not_emitted_when_bg_passes(self):
        """bg_ticks=8 >= bg_required=5, so the hidden-phase shortfall must not appear."""
        card = build_background_tab_card(self.report)
        assert "hidden phase" not in card


# ---------------------------------------------------------------------------
# Background-tab card — failure via longrepr fallback
# ---------------------------------------------------------------------------

class TestBackgroundTabCardLongreprFallback:
    """Card extracts bg tick count from longrepr when user_properties is sparse."""

    def setup_method(self):
        crash_repr = (
            "AssertionError: /brain/heartbeat: only 3 beat(s) fired in 2 s while the tab "
            "was backgrounded (expected ≥5 at 200 ms each)."
        )
        report = {
            "tests": [
                {
                    "nodeid": "tests/test_heartbeat_playwright.py::test_beat_survives_background_tab",
                    "outcome": "failed",
                    "user_properties": [
                        ["bg_observation_window_s", 2],
                        ["fg_observation_window_s", 1],
                        ["bg_required_ticks", 5],
                        ["fg_required_ticks", 3],
                    ],
                    "call": {"longrepr": crash_repr},
                }
            ]
        }
        tmp = tempfile.NamedTemporaryFile(mode="w", suffix=".json", delete=False)
        json.dump(report, tmp)
        tmp.close()
        self.report = tmp.name

    def teardown_method(self):
        os.unlink(self.report)

    def test_bg_ticks_extracted_from_longrepr(self):
        card = build_background_tab_card(self.report)
        assert "3 / 5 required" in card

    def test_shortfall_message_present(self):
        card = build_background_tab_card(self.report)
        assert "**Shortfall (hidden phase):**" in card


# ---------------------------------------------------------------------------
# Focus-restore card — pass path
# ---------------------------------------------------------------------------

class TestFocusRestoreCardPass:
    """Summary card when test_beat_resumes_after_focus_restore passes."""

    def setup_method(self):
        self.report = _make_focus_restore_report(
            outcome="passed",
            resume_ticks=8,
            resume_start=10,
            resume_end=18,
        )

    def teardown_method(self):
        os.unlink(self.report)

    def test_heading_shows_passed(self):
        card = build_background_tab_card(self.report)
        assert "Focus-Restore Beat" in card
        assert "PASSED" in card

    def test_ticks_shown(self):
        card = build_background_tab_card(self.report)
        assert "8 / 5 required" in card

    def test_tick_counter_range_shown(self):
        card = build_background_tab_card(self.report)
        assert "tick counter: 10 → 18" in card

    def test_no_shortfall_on_pass(self):
        card = build_background_tab_card(self.report)
        assert "**Shortfall:**" not in card


# ---------------------------------------------------------------------------
# Focus-restore card — failure path
# ---------------------------------------------------------------------------

class TestFocusRestoreCardFailure:
    """Card when ticks-after-focus-restore is below threshold."""

    def setup_method(self):
        self.report = _make_focus_restore_report(
            outcome="failed",
            resume_ticks=2,
            resume_start=5,
            resume_end=7,
        )

    def teardown_method(self):
        os.unlink(self.report)

    def test_heading_shows_failed(self):
        card = build_background_tab_card(self.report)
        assert "FAILED" in card

    def test_shortfall_message_present(self):
        card = build_background_tab_card(self.report)
        assert "**Shortfall:**" in card

    def test_shortfall_fraction_correct(self):
        card = build_background_tab_card(self.report)
        assert "`2/5` ticks fired" in card

    def test_tick_counter_range_shown(self):
        card = build_background_tab_card(self.report)
        assert "tick counter: 5 → 7" in card


# ---------------------------------------------------------------------------
# Background-tab card — missing/corrupt report
# ---------------------------------------------------------------------------

class TestBackgroundTabCardEdgeCases:
    """build_background_tab_card handles missing/corrupt reports gracefully."""

    def test_missing_report_file(self):
        card = build_background_tab_card("/tmp/nonexistent-bg-tab-report-314.json")
        assert "Report Unavailable" in card

    def test_corrupt_json(self):
        tmp = tempfile.NamedTemporaryFile(mode="w", suffix=".json", delete=False)
        tmp.write("{ not valid json }")
        tmp.close()
        try:
            card = build_background_tab_card(tmp.name)
            assert "Report Unavailable" in card
        finally:
            os.unlink(tmp.name)
