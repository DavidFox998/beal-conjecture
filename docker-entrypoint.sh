#!/bin/sh
# docker-entrypoint.sh
# Runs as root, fixes permissions on the Fly.io mounted volume, then drops
# privileges to appuser (UID 1001) before exec-ing the main process.
#
# Fly.io volumes are mounted root-owned regardless of the image's USER
# directive, so we must chown at container start before the app attempts
# any writes.  gosu is used for a clean privilege drop that correctly
# propagates signals (SIGTERM etc.) to the child process.
set -e

# Ensure the data directory is writable by appuser.
# Suppress errors if the volume is not mounted (development / CI).
chown -R appuser:appuser /app/data 2>/dev/null || true

# Drop privileges and exec the CMD (uvicorn ...)
exec gosu appuser "$@"
