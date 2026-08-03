# pytest configuration for the Zerobeacon test suite
import pytest


def pytest_configure(config):
    config.addinivalue_line(
        "markers",
        "integration: marks tests that make real network calls to external APIs "
        "(skip unless the required env vars are explicitly set)",
    )
