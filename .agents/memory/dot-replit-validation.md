---
name: Validated .replit updates
description: Replit configuration files require schema-validated replacement instead of direct edits.
---

Direct edits to `.replit` are rejected by the workspace. Write the complete intended TOML to a temporary workspace file and use the validated replacement flow so schema checks run before the file is swapped.

**Why:** The workspace protects Replit configuration from malformed or unsupported workflow and port settings.

**How to apply:** For future `.replit` changes, preserve unrelated content, write a temporary full-file copy, and submit it through the validator rather than editing `.replit` in place.