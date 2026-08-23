"""
Playwright browser tests for the /brain/heartbeat EKG canvas page.

These tests load the page in a real Chromium browser and verify:
  - The <canvas id="c"> element has non-zero rendered width and height.
  - No JavaScript console errors are thrown within the first 3 seconds
    (the time required for at least one full beat cycle to fire).

Run locally against a live server:
    PLAYWRIGHT_BASE_URL=http://localhost:8000 pytest tests/test_heartbeat_playwright.py -v

Run against production:
    PLAYWRIGHT_BASE_URL=https://zerobeacon.ai pytest tests/test_heartbeat_playwright.py -v

In CI the workflow starts a local uvicorn server and sets PLAYWRIGHT_BASE_URL
automatically, so all checks run without requiring a deployed instance.

Skipped entirely when PLAYWRIGHT_BASE_URL is not set (safe for dev environments
that do not have Playwright browsers installed).
"""

import os
import time
import pytest

_base_url = os.getenv("PLAYWRIGHT_BASE_URL", "").rstrip("/")
_skip = pytest.mark.skipif(
    not _base_url,
    reason="PLAYWRIGHT_BASE_URL not set — skipping Playwright EKG canvas tests",
)


# ---------------------------------------------------------------------------
# Helpers
# ---------------------------------------------------------------------------

def _heartbeat_url() -> str:
    return f"{_base_url}/brain/heartbeat"


# ---------------------------------------------------------------------------
# Canvas geometry — non-zero width and height
# ---------------------------------------------------------------------------

@_skip
def test_canvas_nonzero_width(page):  # page fixture from pytest-playwright
    """Canvas must have a rendered width > 0 in a real browser."""
    page.goto(_heartbeat_url(), wait_until="networkidle")
    # Allow the beat loop one full cycle (200 ms) to start and resize the canvas.
    page.wait_for_timeout(400)
    rect = page.evaluate(
        """() => {
            const c = document.getElementById('c');
            if (!c) return null;
            return c.getBoundingClientRect();
        }"""
    )
    assert rect is not None, (
        "/brain/heartbeat: canvas#c not found in the live DOM"
    )
    assert rect["width"] > 0, (
        f"/brain/heartbeat: canvas rendered width is {rect['width']} — "
        "canvas is not visible or has zero width (layout/CSS regression?)"
    )


@_skip
def test_canvas_nonzero_height(page):
    """Canvas must have a rendered height > 0 in a real browser."""
    page.goto(_heartbeat_url(), wait_until="networkidle")
    page.wait_for_timeout(400)
    rect = page.evaluate(
        """() => {
            const c = document.getElementById('c');
            if (!c) return null;
            return c.getBoundingClientRect();
        }"""
    )
    assert rect is not None, (
        "/brain/heartbeat: canvas#c not found in the live DOM"
    )
    assert rect["height"] > 0, (
        f"/brain/heartbeat: canvas rendered height is {rect['height']} — "
        "canvas is not visible or has zero height (layout/CSS regression?)"
    )


@_skip
def test_canvas_pixel_buffer_nonzero(page):
    """canvas.width and canvas.height (pixel buffer) must both be > 0 after DPR scaling."""
    page.goto(_heartbeat_url(), wait_until="networkidle")
    # resizeCanvas() fires synchronously on load; wait one beat for good measure.
    page.wait_for_timeout(400)
    dims = page.evaluate(
        """() => {
            const c = document.getElementById('c');
            if (!c) return null;
            return { width: c.width, height: c.height };
        }"""
    )
    assert dims is not None, (
        "/brain/heartbeat: canvas#c not found in the live DOM"
    )
    assert dims["width"] > 0, (
        f"/brain/heartbeat: canvas.width (pixel buffer) = {dims['width']} — "
        "resizeCanvas() may not have fired or DPR scaling produced 0"
    )
    assert dims["height"] > 0, (
        f"/brain/heartbeat: canvas.height (pixel buffer) = {dims['height']} — "
        "resizeCanvas() may not have fired or DPR scaling produced 0"
    )


# ---------------------------------------------------------------------------
# No JS console errors within the first 3 seconds
# ---------------------------------------------------------------------------

@_skip
def test_no_js_console_errors_in_first_3s(page):
    """No JS console errors (level='error') must appear within the first 3 seconds.

    A syntax error, bad selector, or uncaught exception in draw()/beat() would
    surface here and fail the test before it reaches users.
    """
    errors: list[str] = []

    def _capture(msg):
        if msg.type == "error":
            errors.append(msg.text)

    page.on("console", _capture)

    # Also catch uncaught page exceptions (unhandled promise rejections, etc.)
    uncaught: list[str] = []

    def _capture_exc(exc):
        uncaught.append(str(exc))

    page.on("pageerror", _capture_exc)

    page.goto(_heartbeat_url(), wait_until="domcontentloaded")

    # Wait 3 seconds — enough for ≥15 beat() cycles (200 ms each).
    page.wait_for_timeout(3000)

    assert not errors, (
        f"/brain/heartbeat produced {len(errors)} JS console error(s) within 3 s:\n"
        + "\n".join(f"  • {e}" for e in errors)
    )
    assert not uncaught, (
        f"/brain/heartbeat produced {len(uncaught)} uncaught JS exception(s) within 3 s:\n"
        + "\n".join(f"  • {e}" for e in uncaught)
    )


# ---------------------------------------------------------------------------
# Beat loop is actually firing (not silently frozen)
# ---------------------------------------------------------------------------

@_skip
def test_beat_loop_advances_tick(page):
    """The internal tick counter must increase after 1 second, proving setInterval runs."""
    page.goto(_heartbeat_url(), wait_until="domcontentloaded")
    tick_before = page.evaluate("() => typeof tick !== 'undefined' ? tick : -1")
    page.wait_for_timeout(1200)
    tick_after = page.evaluate("() => typeof tick !== 'undefined' ? tick : -1")
    assert tick_after > tick_before, (
        f"/brain/heartbeat: tick counter did not advance after 1.2 s "
        f"(before={tick_before}, after={tick_after}) — beat loop may be frozen"
    )


# ---------------------------------------------------------------------------
# Cold-start beat rate — at least 5 ticks in 2 seconds @ 200 ms each
# ---------------------------------------------------------------------------

@_skip
def test_beat_fires_at_200ms_rate_cold_start(page, record_property):
    """After a cold start, the 200 ms setInterval must fire ≥5 times within 2 seconds.

    At 200 ms per beat, 2 seconds should yield ~10 ticks.  We require only 5
    to give ample headroom for cold-start VM wake latency (Fly.io auto-stop),
    GC pauses, and browser timer coalescing, while still catching a completely
    frozen or drastically slowed beat loop.

    No browser console errors must appear during the observation window.
    """
    errors: list[str] = []

    def _capture(msg):
        if msg.type == "error":
            errors.append(msg.text)

    uncaught: list[str] = []

    def _capture_exc(exc):
        uncaught.append(str(exc))

    page.on("console", _capture)
    page.on("pageerror", _capture_exc)

    # Navigate fresh (simulates a cold-start user hitting the page for the first time).
    page.goto(_heartbeat_url(), wait_until="domcontentloaded")

    # Sample the tick counter immediately after load.
    tick_start = page.evaluate("() => typeof tick !== 'undefined' ? tick : null")

    # Wait 2 seconds — the full observation window.
    page.wait_for_timeout(2000)

    tick_end = page.evaluate("() => typeof tick !== 'undefined' ? tick : null")

    # ── tick counter must be accessible ──────────────────────────────────────
    assert tick_start is not None, (
        "/brain/heartbeat: 'tick' variable is not exposed in global scope — "
        "cannot verify beat rate; add `window.tick = tick` or confirm variable name"
    )
    assert tick_end is not None, (
        "/brain/heartbeat: 'tick' variable disappeared after 2 s observation"
    )

    ticks_fired = tick_end - tick_start

    # Emit structured measurement so the CI job summary can show the exact count
    # whether the test passes or fails (read via pytest-json-report user_properties).
    record_property("ticks_fired", ticks_fired)
    record_property("tick_start", tick_start)
    record_property("tick_end", tick_end)
    record_property("observation_window_s", 2)
    record_property("required_ticks", 5)

    # ── at least 5 beats must have fired ─────────────────────────────────────
    assert ticks_fired >= 5, (
        f"/brain/heartbeat: only {ticks_fired} beat(s) fired in 2 s after cold start "
        f"(expected ≥5 at 200 ms each). "
        f"tick at load={tick_start}, tick after 2 s={tick_end}. "
        "The beat loop may be paused, throttled, or the Fly.io VM did not wake in time."
    )

    # ── no console errors during the observation window ───────────────────────
    assert not errors, (
        f"/brain/heartbeat produced {len(errors)} JS console error(s) during the "
        "2-second cold-start observation window:\n"
        + "\n".join(f"  • {e}" for e in errors)
    )
    assert not uncaught, (
        f"/brain/heartbeat produced {len(uncaught)} uncaught JS exception(s) during the "
        "2-second cold-start observation window:\n"
        + "\n".join(f"  • {e}" for e in uncaught)
    )


# ---------------------------------------------------------------------------
# Background-tab throttling — beat loop must survive a hidden visibilityState
# ---------------------------------------------------------------------------

@_skip
def test_beat_survives_background_tab(page, record_property):
    """Beat loop must not freeze when the tab is backgrounded, and must resume on focus.

    Two-phase browser-native scenario that mirrors a real user switching away from
    the heartbeat tab and switching back:

    Phase 1 — background (2 s):
      A second browser tab is opened in the same context via page.context.new_page(),
      pushing the heartbeat page to an inactive position.  document.visibilityState
      is overridden to 'hidden' and document.hidden to True, and a visibilitychange
      event is dispatched so the page JS reacts exactly as in a real tab-switch.
      The tick counter must advance ≥5 times in 2 s.

      Note: headless Chromium does not throttle background setInterval timers —
      timer throttling requires an OS-level focus change that headless mode does not
      produce — so the full 200 ms rate continues.  ≥5 / 2 s is the same bar as
      the cold-start test and confirms that no visibilitychange handler in the page
      JS inadvertently cancels the interval when the tab is hidden.

    Phase 2 — foreground resume (1 s):
      The second tab is closed and page.bring_to_front() restores the heartbeat
      page to the active position.  visibilityState is restored to 'visible' and
      another visibilitychange event fires.  At least 3 beats must fire in 1 s,
      confirming the interval is still alive and any resume path runs correctly.
      (≥3, not 5, leaves headroom for the first timer-fire to align after the
      transition.)

    No JS console errors or uncaught page exceptions are permitted during either phase.
    """
    errors: list[str] = []
    uncaught: list[str] = []

    def _capture(msg):
        if msg.type == "error":
            errors.append(msg.text)

    def _capture_exc(exc):
        uncaught.append(str(exc))

    page.on("console", _capture)
    page.on("pageerror", _capture_exc)

    page.goto(_heartbeat_url(), wait_until="domcontentloaded")

    # Allow two full beat cycles so the interval is warm before we background it.
    page.wait_for_timeout(500)

    # ── Phase 1: push heartbeat tab to background ─────────────────────────────
    # Open a second tab — a browser-native multi-tab transition — so the heartbeat
    # page becomes inactive in the browser context.
    second_page = page.context.new_page()
    second_page.goto("about:blank")

    # Report 'hidden' to the heartbeat page JS, exactly as the browser would.
    page.evaluate(
        """() => {
            Object.defineProperty(document, 'visibilityState', {
                configurable: true,
                get: () => 'hidden',
            });
            Object.defineProperty(document, 'hidden', {
                configurable: true,
                get: () => true,
            });
            document.dispatchEvent(new Event('visibilitychange'));
        }"""
    )

    tick_bg_start = page.evaluate(
        "() => typeof tick !== 'undefined' ? tick : null"
    )

    # Observe 2 s with the tab backgrounded.
    page.wait_for_timeout(2000)

    tick_bg_end = page.evaluate(
        "() => typeof tick !== 'undefined' ? tick : null"
    )

    # ── Phase 2: restore heartbeat tab to foreground ──────────────────────────
    second_page.close()
    page.bring_to_front()

    # Report 'visible' to the heartbeat page JS as the browser would on focus restore.
    page.evaluate(
        """() => {
            Object.defineProperty(document, 'visibilityState', {
                configurable: true,
                get: () => 'visible',
            });
            Object.defineProperty(document, 'hidden', {
                configurable: true,
                get: () => false,
            });
            document.dispatchEvent(new Event('visibilitychange'));
        }"""
    )

    tick_fg_start = page.evaluate(
        "() => typeof tick !== 'undefined' ? tick : null"
    )

    # Wait 1 s — at 200 ms per beat this yields ~5 ticks; we require ≥3.
    page.wait_for_timeout(1000)

    tick_fg_end = page.evaluate(
        "() => typeof tick !== 'undefined' ? tick : null"
    )

    # ── tick counter must be accessible throughout ────────────────────────────
    assert tick_bg_start is not None, (
        "/brain/heartbeat: 'tick' not found before backgrounding the tab — "
        "ensure 'tick' is declared as a global (not block-scoped) variable in the page JS"
    )
    assert tick_bg_end is not None, (
        "/brain/heartbeat: 'tick' disappeared during the 2 s background window"
    )
    assert tick_fg_start is not None, (
        "/brain/heartbeat: 'tick' not found after restoring foreground focus"
    )
    assert tick_fg_end is not None, (
        "/brain/heartbeat: 'tick' disappeared during the 1 s post-focus window"
    )

    ticks_while_bg = tick_bg_end - tick_bg_start
    ticks_after_fg = tick_fg_end - tick_fg_start

    # Emit structured measurements so the CI job summary can show exact counts.
    record_property("bg_ticks_fired", ticks_while_bg)
    record_property("bg_tick_start", tick_bg_start)
    record_property("bg_tick_end", tick_bg_end)
    record_property("bg_observation_window_s", 2)
    record_property("bg_required_ticks", 5)
    record_property("fg_ticks_fired", ticks_after_fg)
    record_property("fg_tick_start", tick_fg_start)
    record_property("fg_tick_end", tick_fg_end)
    record_property("fg_observation_window_s", 1)
    record_property("fg_required_ticks", 3)

    # ── Phase 1: ≥5 ticks while backgrounded ─────────────────────────────────
    # Confirms setInterval was not cancelled by a visibilitychange handler.
    # Headless Chromium does not throttle timers, so the full 200 ms rate applies.
    assert ticks_while_bg >= 5, (
        f"/brain/heartbeat: only {ticks_while_bg} beat(s) fired in 2 s while the tab "
        f"was backgrounded (expected ≥5 at 200 ms each). "
        f"tick at hide={tick_bg_start}, tick after 2 s={tick_bg_end}. "
        "A visibilitychange listener may have called clearInterval when the tab became "
        "hidden without restarting it on focus restore — or the beat loop was never started."
    )

    # ── Phase 2: ≥3 ticks after focus restore ────────────────────────────────
    # Confirms the interval is still alive and any resume path executes correctly.
    assert ticks_after_fg >= 3, (
        f"/brain/heartbeat: only {ticks_after_fg} beat(s) fired in 1 s after the tab "
        f"was brought to the foreground (expected ≥3 at 200 ms each). "
        f"tick at focus-restore={tick_fg_start}, tick 1 s later={tick_fg_end}. "
        "The beat loop is not resuming correctly after tab focus is restored."
    )

    # ── No console errors during any phase ────────────────────────────────────
    assert not errors, (
        f"/brain/heartbeat produced {len(errors)} JS console error(s) during the "
        "background-tab test:\n"
        + "\n".join(f"  • {e}" for e in errors)
    )
    assert not uncaught, (
        f"/brain/heartbeat produced {len(uncaught)} uncaught JS exception(s) during the "
        "background-tab test:\n"
        + "\n".join(f"  • {e}" for e in uncaught)
    )


@_skip
def test_beat_resumes_after_focus_restore(page, record_property):
    """Beat loop must resume at the normal rate after visibility is restored.

    A second browser tab backgrounds the heartbeat page for one second.  When it
    is closed, bring_to_front() restores the heartbeat page before its visible
    visibilitychange event is dispatched.  A first beat must then arrive within
    500 ms, followed by at least five new ticks over two seconds.
    """
    errors: list[str] = []
    uncaught: list[str] = []

    def _capture(msg):
        if msg.type == "error":
            errors.append(msg.text)

    def _capture_exc(exc):
        uncaught.append(str(exc))

    page.on("console", _capture)
    page.on("pageerror", _capture_exc)

    page.goto(_heartbeat_url(), wait_until="domcontentloaded")

    # Warm up the page so the initial beat and canvas setup are complete.
    page.wait_for_timeout(500)

    # Open a real second tab before reporting the heartbeat tab as hidden.
    second_page = page.context.new_page()
    second_page.goto("about:blank")
    page.evaluate(
        """() => {
            Object.defineProperty(document, 'visibilityState', {
                configurable: true,
                get: () => 'hidden',
            });
            Object.defineProperty(document, 'hidden', {
                configurable: true,
                get: () => true,
            });
            document.dispatchEvent(new Event('visibilitychange'));
        }"""
    )
    page.wait_for_timeout(1000)

    # Restore browser focus before reporting that the page is visible again.
    second_page.close()
    page.bring_to_front()
    tick_at_restore = page.evaluate(
        """() => {
            Object.defineProperty(document, 'visibilityState', {
                configurable: true,
                get: () => 'visible',
            });
            Object.defineProperty(document, 'hidden', {
                configurable: true,
                get: () => false,
            });
            document.dispatchEvent(new Event('visibilitychange'));
            return typeof tick !== 'undefined' ? tick : null;
        }"""
    )

    assert tick_at_restore is not None, (
        "/brain/heartbeat: 'tick' not found when focus was restored — "
        "cannot verify beat-loop resumption"
    )

    # At 200 ms per beat, the first post-focus tick must arrive promptly.  The
    # 500 ms ceiling allows scheduling jitter without admitting a visibly frozen
    # EKG that resumes only after an extended delay.
    try:
        page.wait_for_function(
            """tickAtRestore =>
                typeof tick !== 'undefined' && tick > tickAtRestore""",
            tick_at_restore,
            timeout=500,
        )
    except Exception as exc:
        pytest.fail(
            "/brain/heartbeat: no new beat arrived within 500 ms of restoring "
            f"focus (tick at focus-restore={tick_at_restore}). "
            f"The beat loop did not resume immediately: {exc}"
        )

    tick_visible_start = tick_at_restore
    page.wait_for_timeout(2000)
    tick_visible_end = page.evaluate(
        "() => typeof tick !== 'undefined' ? tick : null"
    )

    assert tick_visible_end is not None, (
        "/brain/heartbeat: 'tick' disappeared during the post-focus observation"
    )

    ticks_after_focus = tick_visible_end - tick_visible_start

    # Emit structured measurements for the CI job summary card.
    record_property("resume_ticks_fired", ticks_after_focus)
    record_property("resume_tick_start", tick_visible_start)
    record_property("resume_tick_end", tick_visible_end)
    record_property("resume_observation_window_s", 2)
    record_property("resume_required_ticks", 5)

    assert ticks_after_focus >= 5, (
        f"/brain/heartbeat: only {ticks_after_focus} beat(s) fired in 2 s after "
        f"focus was restored (expected ≥5 at 200 ms each). "
        f"tick at focus-restore={tick_visible_start}, "
        f"tick after 2 s={tick_visible_end}. "
        "The beat loop may not resume after a visibilitychange to visible."
    )

    assert not errors, (
        f"/brain/heartbeat produced {len(errors)} JS console error(s) during the "
        "focus-restore observation window:\n"
        + "\n".join(f"  • {e}" for e in errors)
    )
    assert not uncaught, (
        f"/brain/heartbeat produced {len(uncaught)} uncaught JS exception(s) during "
        "the focus-restore observation window:\n"
        + "\n".join(f"  • {e}" for e in uncaught)
    )
