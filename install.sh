#!/usr/bin/env bash
set -euo pipefail
command -v node >/dev/null || { echo "Node.js 20+ is required"; exit 1; }
command -v pnpm >/dev/null || { echo "pnpm is required"; exit 1; }
pnpm install
pnpm run build
mkdir -p data
printf "Installed. Run: pnpm doctor && pnpm dev\n"
