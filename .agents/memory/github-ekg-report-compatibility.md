---
name: GitHub EKG report compatibility
description: Compatibility rules learned from the GitHub Actions EKG Playwright run.
---

Treat the real GitHub Actions artifact as the authority for `pytest-json-report`
property encoding: `record_property()` values arrive as a list of one-key
objects, while existing local fixtures may use key/value pairs.  Also pass
Playwright `wait_for_function` data with the keyword-only `arg` parameter.

**Why:** The local fixtures can make both assumptions look valid, but the
runner's installed plugin and browser bindings exposed the incompatible forms
only in the end-to-end workflow.

**How to apply:** When parsing pytest JSON reports, normalize both object and
pair property encodings.  When changing browser waits, use the current
keyword-only Playwright call shape and confirm it with the Actions workflow.