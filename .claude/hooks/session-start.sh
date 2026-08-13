#!/bin/bash
set -euo pipefail

if [ "${CLAUDE_CODE_REMOTE:-}" != "true" ]; then
  exit 0
fi

mkdir -p "$HOME/.claude/agents"
cp -f "$CLAUDE_PROJECT_DIR"/.claude/agents/*.md "$HOME/.claude/agents/" 2>/dev/null || true
