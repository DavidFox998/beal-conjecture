"""Regression tests for browser-side Replit hosted analytics events."""

import re

from fastapi.testclient import TestClient

import zerobeacon_mf_1000_main as main


client = TestClient(main.app)


def test_landing_tracks_navigation_and_checkout_without_tracker_config():
    body = client.get("/").text

    assert "window.zeroBeaconAnalytics" in body
    assert 'data-analytics-event="checkout_clicked"' in body
    assert 'data-analytics-provider="stripe"' in body
    assert 'data-analytics-provider="paypal"' in body
    assert 'data-analytics-event="marketplace_clicked"' in body
    assert "website-id" not in body
    assert "data-website-id" not in body


def test_success_events_never_send_session_id_or_api_key():
    body = client.get("/success?session_id=test-session-value").text

    assert "key_lookup_started" in body
    assert "key_lookup_succeeded" in body
    assert "key_lookup_failed" in body
    assert "api_key_copied" in body
    assert "analytics.track('key_lookup_started', {\n    location:" in body
    assert "analytics.track('api_key_copied', {\n        location:" in body
    analytics_calls = re.findall(
        r"analytics\.track\(.+?\}\);",
        body,
        flags=re.DOTALL,
    )
    assert analytics_calls
    assert all(
        re.search(r"(?<![A-Za-z0-9_])session_id\s*:", call) is None
        for call in analytics_calls
    )
    assert all("test-session-value" not in call for call in analytics_calls)
    assert all("data.api_key" not in call for call in analytics_calls)


def test_heartbeat_expands_safe_wrapper_and_tracks_controls():
    body = client.get("/brain/heartbeat").text

    assert "ZERO_BEACON_ANALYTICS" not in body
    assert "window.zeroBeaconAnalytics" in body
    assert "brain_heartbeat_viewed" in body
    assert "brain_fire_clicked" in body
    assert "brain_play_toggled" in body
    assert "brain_threshold_changed" in body
    assert "intent:" not in body.split("analytics.track", 1)[1]


def test_privacy_policy_discloses_hosted_analytics():
    body = client.get("/privacy").text

    assert "Replit-hosted analytics" in body
    assert "aggregate pageviews" in body