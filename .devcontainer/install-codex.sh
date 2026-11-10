#!/usr/bin/env bash
set -euo pipefail
export PATH="$HOME/.local/bin:$PATH"
mkdir -p "$HOME/.local/bin"
npm install --global --prefix "$HOME/.local" @openai/codex@latest \
  --fetch-retries=5 --fetch-retry-mintimeout=2000 --fetch-retry-maxtimeout=20000
codex --version
printf '\nCodex installed. Sign in with: codex login --device-auth\n'
