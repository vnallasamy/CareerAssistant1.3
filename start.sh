#!/usr/bin/env bash
# start.sh - launch script for Railway / buildpacks
# Run from repo root; ensures backend/server.js is started.
set -euo pipefail
cd "$(dirname "$0")"
echo "Starting CareerAssistant (backend/server.js)..."
node backend/server.js
