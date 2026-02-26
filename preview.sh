#!/usr/bin/env bash
set -euo pipefail

PORT="${1:-4173}"
HOST="${2:-127.0.0.1}"

echo "[preview] starting static server..."
echo "[preview] url: http://${HOST}:${PORT}"
echo "[preview] press Ctrl+C to stop"

python3 -m http.server "${PORT}" --bind "${HOST}"
