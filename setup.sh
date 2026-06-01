#!/usr/bin/env bash
# setup.sh — First-run permission and directory setup for The Ledger OJS instance.
# Run once on the host before `docker compose up`.

set -euo pipefail

echo "==> The Ledger — OJS first-run setup"

# ── 1. Ensure required volume directories exist ───────────────────────────────
DIRS=(
  volumes/db
  volumes/public
  volumes/private
  volumes/logs
)

for dir in "${DIRS[@]}"; do
  if [ ! -d "$dir" ]; then
    mkdir -p "$dir"
    echo "    created: $dir"
  else
    echo "    exists:  $dir"
  fi
done

# ── 2. Set ownership to www-data (UID 33) so the OJS container can write ──────
# On Linux hosts, chown directly. On macOS/Windows (Docker Desktop) the
# bind-mount layer handles permissions, so this step is a no-op.
if [ "$(uname -s)" = "Linux" ]; then
  echo "==> Fixing ownership → www-data (uid 33) on Linux host"
  sudo chown -R 33:33 volumes/public volumes/private volumes/logs
fi

# ── 3. Remind operator to set real secrets ────────────────────────────────────
echo ""
echo "==> IMPORTANT: edit .env and replace every CHANGE_ME_* value before"
echo "    running docker compose up for the first time."
echo ""
echo "==> Then start the stack with:"
echo "    docker compose up -d"
echo ""
echo "==> OJS setup wizard will be available at: http://localhost:\${HTTP_PORT:-8080}"
echo ""
echo "Done."
